const functions = require("firebase-functions");
const admin = require("firebase-admin");

exports.resetinweek = functions
  .region("australia-southeast1")
  .pubsub.schedule("every 2 minutes")
  .onRun(async (context) => {
    // Get the reference to the collection
    const collectionRef = admin.firestore().collection("Comments");

    // Get all documents in the collection
    const snapshot = await collectionRef.get();

    // Iterate over each document
    snapshot.docs.forEach(async (doc) => {
      // Get the document ID
      const docId = doc.id;

      // Reset the specific fields of the document
      await collectionRef.doc(docId).update({
        Content: "this message is from cloud", // Set to null or any value you desire
        //field2: null, // Set to null or any value you desire
        // Add more fields to reset if needed
      });
    });

    // Return a success message
    console.log("Fields reset for all documents in the collection.");
  });
