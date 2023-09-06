import * as admin from "firebase-admin";
import * as onUserCreate from "./auth/onUserCreate";
import * as onTaskCreated from "./firestore/onTaskCreated";
import * as onTaskDeleted from "./firestore/onTaskDeleted";

admin.initializeApp();

export {
    onUserCreate,
    onTaskCreated,
    onTaskDeleted,
};

