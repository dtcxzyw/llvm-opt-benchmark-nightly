inline.NumInlined: 184
inline.NumDeleted: 156
loop-unroll.NumUnrolled: 4
begin_hunk_0
@qsig_mcr_MCAlertingArg_sequence = internal constant [3 x { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcr_correlation, i8 0, [3 x i8] zeroinitializer, i32 16, i32 4, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcr_Correlation }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcr_extensions, i8 99, [3 x i8] zeroinitializer, i32 -1, i32 13, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcr_MCRExtensions }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } zeroinitializer], align 16
@qsig_mcm_MCMNewMsgArg_sequence = internal constant [9 x { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcm_servedUserNr, i8 99, [3 x i8] zeroinitializer, i32 -1, i32 4, [4 x i8] zeroinitializer, ptr @dissect_qsig_PartyNumber }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcm_specificMessageType, i8 0, [3 x i8] zeroinitializer, i32 10, i32 4, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_MessageType }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcm_msgCentreId, i8 99, [3 x i8] zeroinitializer, i32 -1, i32 13, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_MsgCentreId }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcm_nrOfMessages, i8 2, [3 x i8] zeroinitializer, i32 3, i32 3, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_NrOfMessages }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcm_originatingNr, i8 2, [3 x i8] zeroinitializer, i32 4, i32 1, [4 x i8] zeroinitializer, ptr @dissect_qsig_PartyNumber }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcm_timestamp, i8 0, [3 x i8] zeroinitializer, i32 24, i32 5, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_TimeStamp }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcm_priority, i8 2, [3 x i8] zeroinitializer, i32 5, i32 3, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_INTEGER_0_9 }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcm_argumentExtMCMNew, i8 99, [3 x i8] zeroinitializer, i32 -1, i32 13, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_MCMNewArgumentExt }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } zeroinitializer], align 16
@qsig_mcm_MsgCentreId_choice = internal constant [4 x { i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @hf_qsig_mcm_integer, i8 2, [3 x i8] zeroinitializer, i32 0, i32 2, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_INTEGER_0_65535 }, { i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @hf_qsig_mcm_partyNumber, i8 2, [3 x i8] zeroinitializer, i32 1, i32 0, [4 x i8] zeroinitializer, ptr @dissect_qsig_PartyNumber }, { i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @hf_qsig_mcm_numericString, i8 2, [3 x i8] zeroinitializer, i32 2, i32 2, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_NumericString_SIZE_1_10 }, { i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } zeroinitializer], align 16
@qsig_mcm_MCMNewArgumentExt_choice = internal constant [3 x { i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @hf_qsig_mcm_extension, i8 2, [3 x i8] zeroinitializer, i32 6, i32 2, [4 x i8] zeroinitializer, ptr @dissect_qsig_Extension }, { i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @hf_qsig_mcm_multipleExtension, i8 2, [3 x i8] zeroinitializer, i32 7, i32 2, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_SEQUENCE_OF_Extension }, { i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } zeroinitializer], align 16
@qsig_mcm_SEQUENCE_OF_Extension_sequence_of = internal constant [1 x { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcm_multipleExtension_item, i8 0, [3 x i8] zeroinitializer, i32 16, i32 4, [4 x i8] zeroinitializer, ptr @dissect_qsig_Extension }], align 16
@qsig_mcm_MCMExtensions_choice = internal constant [4 x { i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @hf_qsig_mcm_none, i8 0, [3 x i8] zeroinitializer, i32 5, i32 4, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_NULL }, { i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @hf_qsig_mcm_extension, i8 2, [3 x i8] zeroinitializer, i32 1, i32 2, [4 x i8] zeroinitializer, ptr @dissect_qsig_Extension }, { i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @hf_qsig_mcm_multipleExtension, i8 2, [3 x i8] zeroinitializer, i32 2, i32 2, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_SEQUENCE_OF_Extension }, { i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } zeroinitializer], align 16
@qsig_mcm_MCMNoNewMsgArg_sequence = internal constant [5 x { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcm_servedUserNr, i8 99, [3 x i8] zeroinitializer, i32 -1, i32 4, [4 x i8] zeroinitializer, ptr @dissect_qsig_PartyNumber }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcm_specificMessageType, i8 0, [3 x i8] zeroinitializer, i32 10, i32 4, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_MessageType }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcm_msgCentreId, i8 99, [3 x i8] zeroinitializer, i32 -1, i32 13, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_MsgCentreId }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcm_argumentExtMCMNoNew, i8 99, [3 x i8] zeroinitializer, i32 -1, i32 13, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_MCMNoNewArgumentExt }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } zeroinitializer], align 16
@qsig_mcm_MCMNoNewArgumentExt_choice = internal constant [3 x { i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @hf_qsig_mcm_extension, i8 2, [3 x i8] zeroinitializer, i32 3, i32 2, [4 x i8] zeroinitializer, ptr @dissect_qsig_Extension }, { i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @hf_qsig_mcm_multipleExtension, i8 2, [3 x i8] zeroinitializer, i32 4, i32 2, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_SEQUENCE_OF_Extension }, { i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } zeroinitializer], align 16
@qsig_mcm_MCMUpdateArg_sequence = internal constant [6 x { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcm_partyInfo, i8 0, [3 x i8] zeroinitializer, i32 16, i32 4, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_PartyInfo }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcm_messageType, i8 0, [3 x i8] zeroinitializer, i32 10, i32 4, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_MessageType }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcm_updateInfo, i8 99, [3 x i8] zeroinitializer, i32 -1, i32 12, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_UpdateInfo }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcm_moreInfoFollows, i8 0, [3 x i8] zeroinitializer, i32 1, i32 5, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_BOOLEAN }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcm_extensions, i8 99, [3 x i8] zeroinitializer, i32 -1, i32 13, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_MCMExtensions }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } zeroinitializer], align 16
@qsig_mcm_PartyInfo_sequence = internal constant [3 x { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcm_servedUserNr, i8 99, [3 x i8] zeroinitializer, i32 -1, i32 4, [4 x i8] zeroinitializer, ptr @dissect_qsig_PartyNumber }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcm_messageCentreID, i8 99, [3 x i8] zeroinitializer, i32 -1, i32 12, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_MsgCentreId }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } zeroinitializer], align 16
@qsig_mcm_UpdateInfo_choice = internal constant [4 x { i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @hf_qsig_mcm_newMsgInfoOnly, i8 2, [3 x i8] zeroinitializer, i32 1, i32 0, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_MessageInfo }, { i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @hf_qsig_mcm_retrievedMsgInfoOnly, i8 2, [3 x i8] zeroinitializer, i32 2, i32 0, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_MessageInfo }, { i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @hf_qsig_mcm_allMsgInfo, i8 0, [3 x i8] zeroinitializer, i32 16, i32 4, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_AllMsgInfo }, { i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } zeroinitializer], align 16
@qsig_mcm_MessageInfo_choice = internal constant [4 x { i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @hf_qsig_mcm_completeInfo, i8 2, [3 x i8] zeroinitializer, i32 1, i32 2, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_CompleteInfo }, { i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @hf_qsig_mcm_compressedInfo, i8 2, [3 x i8] zeroinitializer, i32 2, i32 2, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_CompressedInfo }, { i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @hf_qsig_mcm_noMsgsOfMsgType, i8 0, [3 x i8] zeroinitializer, i32 5, i32 4, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_NULL }, { i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } zeroinitializer], align 16
@qsig_mcm_CompleteInfo_sequence_of = internal constant [1 x { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcm_CompleteInfo_item, i8 0, [3 x i8] zeroinitializer, i32 16, i32 4, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_AddressHeader }], align 16
@qsig_mcm_AddressHeader_sequence = internal constant [4 x { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcm_originatorNr, i8 99, [3 x i8] zeroinitializer, i32 -1, i32 4, [4 x i8] zeroinitializer, ptr @dissect_qsig_PartyNumber }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcm_timeStamp, i8 2, [3 x i8] zeroinitializer, i32 1, i32 3, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_TimeStamp }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcm_ahpriority, i8 2, [3 x i8] zeroinitializer, i32 2, i32 3, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_Priority }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } zeroinitializer], align 16
@qsig_mcm_CompressedInfo_sequence = internal constant [4 x { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcm_nrOfMessages, i8 0, [3 x i8] zeroinitializer, i32 2, i32 4, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_NrOfMessages }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcm_lastTimeStamp, i8 0, [3 x i8] zeroinitializer, i32 24, i32 5, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_TimeStamp }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcm_highestPriority, i8 0, [3 x i8] zeroinitializer, i32 2, i32 5, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_Priority }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } zeroinitializer], align 16
@qsig_mcm_AllMsgInfo_sequence = internal constant [3 x { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcm_newMsgInfo, i8 99, [3 x i8] zeroinitializer, i32 -1, i32 12, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_MessageInfo }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcm_retrievedMsgInfo, i8 99, [3 x i8] zeroinitializer, i32 -1, i32 12, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_MessageInfo }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } zeroinitializer], align 16
@qsig_mcm_MCMUpdateReqArg_sequence = internal constant [5 x { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcm_servedUserNr, i8 99, [3 x i8] zeroinitializer, i32 -1, i32 4, [4 x i8] zeroinitializer, ptr @dissect_qsig_PartyNumber }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcm_specificMessageType, i8 0, [3 x i8] zeroinitializer, i32 10, i32 4, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_MessageType }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcm_msgCentreId, i8 99, [3 x i8] zeroinitializer, i32 -1, i32 13, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_MsgCentreId }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcm_argumentExtMCMUpdArg, i8 99, [3 x i8] zeroinitializer, i32 -1, i32 13, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_MCMUpdArgArgumentExt }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } zeroinitializer], align 16
@qsig_mcm_MCMUpdArgArgumentExt_choice = internal constant [3 x { i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @hf_qsig_mcm_extension, i8 2, [3 x i8] zeroinitializer, i32 3, i32 2, [4 x i8] zeroinitializer, ptr @dissect_qsig_Extension }, { i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @hf_qsig_mcm_multipleExtension, i8 2, [3 x i8] zeroinitializer, i32 4, i32 2, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_SEQUENCE_OF_Extension }, { i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } zeroinitializer], align 16
@qsig_mcm_MCMUpdateReqRes_sequence_of = internal constant [1 x { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcm_MCMUpdateReqRes_item, i8 0, [3 x i8] zeroinitializer, i32 16, i32 4, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_MCMUpdateReqResElt }], align 16
@qsig_mcm_MCMUpdateReqResElt_sequence = internal constant [8 x { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcm_specificMessageType, i8 0, [3 x i8] zeroinitializer, i32 10, i32 4, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_MessageType }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcm_msgCentreId, i8 99, [3 x i8] zeroinitializer, i32 -1, i32 13, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_MsgCentreId }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcm_nrOfMessages, i8 2, [3 x i8] zeroinitializer, i32 3, i32 3, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_NrOfMessages }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcm_originatingNr, i8 2, [3 x i8] zeroinitializer, i32 4, i32 1, [4 x i8] zeroinitializer, ptr @dissect_qsig_PartyNumber }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcm_timestamp, i8 0, [3 x i8] zeroinitializer, i32 24, i32 5, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_TimeStamp }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcm_priority, i8 2, [3 x i8] zeroinitializer, i32 5, i32 3, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_INTEGER_0_9 }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcm_argumentExtMCMUpdRes, i8 99, [3 x i8] zeroinitializer, i32 -1, i32 13, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_MCMUpdResArgumentExt }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } zeroinitializer], align 16
@qsig_mcm_MCMUpdResArgumentExt_choice = internal constant [3 x { i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @hf_qsig_mcm_extension, i8 2, [3 x i8] zeroinitializer, i32 6, i32 2, [4 x i8] zeroinitializer, ptr @dissect_qsig_Extension }, { i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @hf_qsig_mcm_multipleExtension, i8 2, [3 x i8] zeroinitializer, i32 7, i32 2, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_SEQUENCE_OF_Extension }, { i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } zeroinitializer], align 16
@qsig_mcm_MCMServiceArg_sequence = internal constant [4 x { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcm_partyInfo, i8 0, [3 x i8] zeroinitializer, i32 16, i32 4, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_PartyInfo }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcm_mCMChange, i8 99, [3 x i8] zeroinitializer, i32 -1, i32 12, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_MCMChange }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcm_extensions, i8 99, [3 x i8] zeroinitializer, i32 -1, i32 13, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_MCMExtensions }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } zeroinitializer], align 16
@qsig_mcm_MCMChange_choice = internal constant [4 x { i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @hf_qsig_mcm_activateMCM, i8 2, [3 x i8] zeroinitializer, i32 1, i32 2, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_SEQUENCE_OF_MCMServiceInfo }, { i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @hf_qsig_mcm_deactivateMCM, i8 2, [3 x i8] zeroinitializer, i32 2, i32 2, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_SEQUENCE_OF_MessageType }, { i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @hf_qsig_mcm_setToDefaultValues, i8 0, [3 x i8] zeroinitializer, i32 5, i32 4, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_NULL }, { i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } zeroinitializer], align 16
@qsig_mcm_SEQUENCE_OF_MCMServiceInfo_sequence_of = internal constant [1 x { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcm_activateMCM_item, i8 0, [3 x i8] zeroinitializer, i32 16, i32 4, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_MCMServiceInfo }], align 16
@qsig_mcm_MCMServiceInfo_sequence = internal constant [4 x { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcm_messageType, i8 0, [3 x i8] zeroinitializer, i32 10, i32 4, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_MessageType }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcm_mCMModeNew, i8 2, [3 x i8] zeroinitializer, i32 1, i32 3, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_MCMMode }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcm_mCMModeRetrieved, i8 2, [3 x i8] zeroinitializer, i32 2, i32 3, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_MCMMode }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } zeroinitializer], align 16
@qsig_mcm_SEQUENCE_OF_MessageType_sequence_of = internal constant [1 x { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcm_deactivateMCM_item, i8 0, [3 x i8] zeroinitializer, i32 10, i32 4, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_MessageType }], align 16
@qsig_mcm_MCMInterrogateArg_sequence = internal constant [4 x { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcm_partyInfo, i8 0, [3 x i8] zeroinitializer, i32 16, i32 4, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_PartyInfo }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcm_interrogateInfo, i8 0, [3 x i8] zeroinitializer, i32 16, i32 4, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_SEQUENCE_OF_MessageType }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcm_extensions, i8 99, [3 x i8] zeroinitializer, i32 -1, i32 13, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_MCMExtensions }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } zeroinitializer], align 16
@qsig_mcm_MCMInterrogateRes_sequence = internal constant [3 x { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcm_interrogateResult, i8 0, [3 x i8] zeroinitializer, i32 16, i32 4, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_SEQUENCE_OF_MCMServiceInfo }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcm_extensions, i8 99, [3 x i8] zeroinitializer, i32 -1, i32 13, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_MCMExtensions }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } zeroinitializer], align 16
@qsig_mcm_MCMailboxFullArg_sequence = internal constant [4 x { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcm_partyInfo, i8 0, [3 x i8] zeroinitializer, i32 16, i32 4, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_PartyInfo }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcm_mailboxFullFor, i8 0, [3 x i8] zeroinitializer, i32 16, i32 4, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_MailboxFullFor }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcm_extensions, i8 99, [3 x i8] zeroinitializer, i32 -1, i32 13, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_MCMExtensions }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } zeroinitializer], align 16
@qsig_mcm_MailboxFullFor_sequence_of = internal constant [1 x { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcm_MailboxFullFor_item, i8 0, [3 x i8] zeroinitializer, i32 16, i32 4, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_MailboxFullPar }], align 16
@qsig_mcm_MailboxFullPar_sequence = internal constant [3 x { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcm_messageType, i8 0, [3 x i8] zeroinitializer, i32 10, i32 4, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_MessageType }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mcm_capacityReached, i8 0, [3 x i8] zeroinitializer, i32 2, i32 5, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_INTEGER_0_100 }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } zeroinitializer], align 16
@qsig_mid_MIDMailboxAuthArg_sequence = internal constant [6 x { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mid_partyInfo, i8 0, [3 x i8] zeroinitializer, i32 16, i32 4, [4 x i8] zeroinitializer, ptr @dissect_qsig_mid_PartyInfo }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mid_servedUserName, i8 99, [3 x i8] zeroinitializer, i32 -1, i32 5, [4 x i8] zeroinitializer, ptr @dissect_qsig_na_Name }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mid_mailBox, i8 2, [3 x i8] zeroinitializer, i32 8, i32 9, [4 x i8] zeroinitializer, ptr @dissect_qsig_mid_String }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mid_password, i8 99, [3 x i8] zeroinitializer, i32 -1, i32 12, [4 x i8] zeroinitializer, ptr @dissect_qsig_mid_String }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mid_extensions, i8 99, [3 x i8] zeroinitializer, i32 -1, i32 13, [4 x i8] zeroinitializer, ptr @dissect_qsig_mid_MIDExtensions }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } zeroinitializer], align 16
@qsig_mid_PartyInfo_sequence = internal constant [4 x { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mid_servedUserNr, i8 99, [3 x i8] zeroinitializer, i32 -1, i32 4, [4 x i8] zeroinitializer, ptr @dissect_qsig_PresentedAddressUnscreened }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mid_messageType, i8 0, [3 x i8] zeroinitializer, i32 10, i32 5, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_MessageType }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mid_messageCentreID, i8 99, [3 x i8] zeroinitializer, i32 -1, i32 4, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_MsgCentreId }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } zeroinitializer], align 16
@qsig_mid_String_choice = internal constant [3 x { i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @hf_qsig_mid_stringBmp, i8 0, [3 x i8] zeroinitializer, i32 30, i32 4, [4 x i8] zeroinitializer, ptr @dissect_qsig_mid_BMPString }, { i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @hf_qsig_mid_stringUtf8, i8 0, [3 x i8] zeroinitializer, i32 12, i32 4, [4 x i8] zeroinitializer, ptr @dissect_qsig_mid_UTF8String }, { i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } zeroinitializer], align 16
@qsig_mid_MIDExtensions_choice = internal constant [4 x { i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @hf_qsig_mid_none, i8 0, [3 x i8] zeroinitializer, i32 5, i32 4, [4 x i8] zeroinitializer, ptr @dissect_qsig_mid_NULL }, { i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @hf_qsig_mid_extension, i8 2, [3 x i8] zeroinitializer, i32 1, i32 2, [4 x i8] zeroinitializer, ptr @dissect_qsig_Extension }, { i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @hf_qsig_mid_multipleExtension, i8 2, [3 x i8] zeroinitializer, i32 2, i32 2, [4 x i8] zeroinitializer, ptr @dissect_qsig_mid_SEQUENCE_OF_Extension }, { i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } zeroinitializer], align 16
@qsig_mid_SEQUENCE_OF_Extension_sequence_of = internal constant [1 x { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mid_multipleExtension_item, i8 0, [3 x i8] zeroinitializer, i32 16, i32 4, [4 x i8] zeroinitializer, ptr @dissect_qsig_Extension }], align 16
@qsig_mid_MIDMailboxIDArg_sequence = internal constant [5 x { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mid_partyInfo, i8 0, [3 x i8] zeroinitializer, i32 16, i32 4, [4 x i8] zeroinitializer, ptr @dissect_qsig_mid_PartyInfo }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mid_servedUserName, i8 99, [3 x i8] zeroinitializer, i32 -1, i32 5, [4 x i8] zeroinitializer, ptr @dissect_qsig_na_Name }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mid_mailBox, i8 99, [3 x i8] zeroinitializer, i32 -1, i32 12, [4 x i8] zeroinitializer, ptr @dissect_qsig_mid_String }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_mid_extensions, i8 99, [3 x i8] zeroinitializer, i32 -1, i32 13, [4 x i8] zeroinitializer, ptr @dissect_qsig_mid_MIDExtensions }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } zeroinitializer], align 16
@qsig_err_tab = internal constant [91 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 9, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 10, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 11, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 25, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 43, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 12, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 14, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 15, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 24, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 1000, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 1007, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 1008, [4 x i8] zeroinitializer, ptr @dissect_qsig_cf_Extension_PDU }, { i32, [4 x i8], ptr } { i32 1000, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 1001, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 1002, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 1003, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 1004, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 1005, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 1006, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 1008, [4 x i8] zeroinitializer, ptr @dissect_qsig_pr_Extension_PDU }, { i32, [4 x i8], ptr } { i32 1008, [4 x i8] zeroinitializer, ptr @dissect_qsig_ct_Extension_PDU }, { i32, [4 x i8], ptr } { i32 1004, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 1005, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 1006, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 1008, [4 x i8] zeroinitializer, ptr @dissect_qsig_cc_Extension_PDU }, { i32, [4 x i8], ptr } { i32 1010, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 1011, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 1012, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 1013, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 1014, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 1009, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 1000, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 1008, [4 x i8] zeroinitializer, ptr @dissect_qsig_co_Extension_PDU }, { i32, [4 x i8], ptr } { i32 1000, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 1008, [4 x i8] zeroinitializer, ptr @dissect_qsig_dnd_Extension_PDU }, { i32, [4 x i8], ptr } { i32 1009, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 1000, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 1007, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 1008, [4 x i8] zeroinitializer, ptr @dissect_qsig_ci_Extension_PDU }, { i32, [4 x i8], ptr } { i32 1008, [4 x i8] zeroinitializer, ptr @dissect_qsig_aoc_Extension_PDU }, { i32, [4 x i8], ptr } { i32 1016, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 1008, [4 x i8] zeroinitializer, ptr @dissect_qsig_sync_Extension_PDU }, { i32, [4 x i8], ptr } { i32 1008, [4 x i8] zeroinitializer, ptr @dissect_qsig_pumr_Extension_PDU }, { i32, [4 x i8], ptr } { i32 1007, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 1000, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 1019, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 1020, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 1021, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 1022, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 1015, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 1008, [4 x i8] zeroinitializer, ptr @dissect_qsig_pumch_Extension_PDU }, { i32, [4 x i8], ptr } { i32 1008, [4 x i8] zeroinitializer, ptr @dissect_qsig_ssct_Extension_PDU }, { i32, [4 x i8], ptr } { i32 1007, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 1000, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 1008, [4 x i8] zeroinitializer, ptr @dissect_qsig_wtmlr_Extension_PDU }, { i32, [4 x i8], ptr } { i32 1008, [4 x i8] zeroinitializer, ptr @dissect_qsig_wtmch_Extension_PDU }, { i32, [4 x i8], ptr } { i32 1015, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 1007, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 1017, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 1000, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 1008, [4 x i8] zeroinitializer, ptr @dissect_qsig_wtmau_Extension_PDU }, { i32, [4 x i8], ptr } { i32 1008, [4 x i8] zeroinitializer, ptr @dissect_qsig_sd_Extension_PDU }, { i32, [4 x i8], ptr } { i32 1023, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 1024, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 1025, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 1026, [4 x i8] zeroinitializer, ptr @dissect_qsig_sms_PAR_smsDeliverError_PDU }, { i32, [4 x i8], ptr } { i32 1027, [4 x i8] zeroinitializer, ptr @dissect_qsig_sms_PAR_smsSubmitError_PDU }, { i32, [4 x i8], ptr } { i32 1028, [4 x i8] zeroinitializer, ptr @dissect_qsig_sms_PAR_smsStatusReportError_PDU }, { i32, [4 x i8], ptr } { i32 1029, [4 x i8] zeroinitializer, ptr @dissect_qsig_sms_PAR_smsCommandError_PDU }, { i32, [4 x i8], ptr } { i32 1008, [4 x i8] zeroinitializer, ptr @dissect_qsig_sms_SmsExtension_PDU }, { i32, [4 x i8], ptr } { i32 1030, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 1031, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 1032, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 1033, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 1034, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 1035, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 1036, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 1008, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcr_Extension_PDU }, { i32, [4 x i8], ptr } { i32 1037, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 1008, [4 x i8] zeroinitializer, ptr @dissect_qsig_mcm_Extension_PDU }, { i32, [4 x i8], ptr } { i32 1039, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 1040, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr } { i32 1008, [4 x i8] zeroinitializer, ptr @dissect_qsig_mid_Extension_PDU }], align 16
@qsig_sms_PAR_smsDeliverError_sequence = internal constant [5 x { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_sms_failureCause, i8 0, [3 x i8] zeroinitializer, i32 2, i32 4, [4 x i8] zeroinitializer, ptr @dissect_qsig_sms_FailureCause }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_sms_protocolIdentifier, i8 2, [3 x i8] zeroinitializer, i32 0, i32 3, [4 x i8] zeroinitializer, ptr @dissect_qsig_sms_ProtocolIdentifier }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_sms_userData, i8 2, [3 x i8] zeroinitializer, i32 1, i32 3, [4 x i8] zeroinitializer, ptr @dissect_qsig_sms_UserData }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_sms_scAddressSaved, i8 2, [3 x i8] zeroinitializer, i32 2, i32 3, [4 x i8] zeroinitializer, ptr @dissect_qsig_sms_BOOLEAN }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } zeroinitializer], align 16
@qsig_sms_PAR_smsSubmitError_sequence = internal constant [5 x { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_sms_failureCause, i8 0, [3 x i8] zeroinitializer, i32 2, i32 4, [4 x i8] zeroinitializer, ptr @dissect_qsig_sms_FailureCause }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_sms_serviceCentreTimeStamp, i8 0, [3 x i8] zeroinitializer, i32 24, i32 4, [4 x i8] zeroinitializer, ptr @dissect_qsig_sms_ServiceCentreTimeStamp }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_sms_protocolIdentifier, i8 2, [3 x i8] zeroinitializer, i32 0, i32 3, [4 x i8] zeroinitializer, ptr @dissect_qsig_sms_ProtocolIdentifier }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_sms_userData, i8 2, [3 x i8] zeroinitializer, i32 1, i32 3, [4 x i8] zeroinitializer, ptr @dissect_qsig_sms_UserData }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } zeroinitializer], align 16
@qsig_sms_PAR_smsStatusReportError_sequence = internal constant [5 x { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_sms_failureCause, i8 0, [3 x i8] zeroinitializer, i32 2, i32 4, [4 x i8] zeroinitializer, ptr @dissect_qsig_sms_FailureCause }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_sms_protocolIdentifier, i8 2, [3 x i8] zeroinitializer, i32 0, i32 3, [4 x i8] zeroinitializer, ptr @dissect_qsig_sms_ProtocolIdentifier }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_sms_userData, i8 2, [3 x i8] zeroinitializer, i32 1, i32 3, [4 x i8] zeroinitializer, ptr @dissect_qsig_sms_UserData }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_sms_scAddressSaved, i8 2, [3 x i8] zeroinitializer, i32 2, i32 3, [4 x i8] zeroinitializer, ptr @dissect_qsig_sms_BOOLEAN }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } zeroinitializer], align 16
@qsig_sms_PAR_smsCommandError_sequence = internal constant [5 x { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_sms_failureCause, i8 0, [3 x i8] zeroinitializer, i32 2, i32 4, [4 x i8] zeroinitializer, ptr @dissect_qsig_sms_FailureCause }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_sms_serviceCentreTimeStamp, i8 0, [3 x i8] zeroinitializer, i32 24, i32 4, [4 x i8] zeroinitializer, ptr @dissect_qsig_sms_ServiceCentreTimeStamp }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_sms_protocolIdentifier, i8 2, [3 x i8] zeroinitializer, i32 0, i32 3, [4 x i8] zeroinitializer, ptr @dissect_qsig_sms_ProtocolIdentifier }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_qsig_sms_userData, i8 2, [3 x i8] zeroinitializer, i32 1, i32 3, [4 x i8] zeroinitializer, ptr @dissect_qsig_sms_UserData }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } zeroinitializer], align 16

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define i32 @dissect_qsig_Extension(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  store ptr null, ptr @extension_oid, align 8
  %i.a = load i32, ptr @ett_qsig_Extension, align 4
  %i.b = tail call i32 @dissect_ber_sequence(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @qsig_Extension_sequence, i32 noundef %5, i32 noundef %i.a)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid
declare i32 @dissect_ber_sequence(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define i32 @dissect_qsig_PSS1InformationElement(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = tail call i32 @dissect_ber_tagged_type(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef %5, i8 noundef signext 1, i32 noundef 0, i1 noundef zeroext true, ptr noundef nonnull @dissect_qsig_PSS1InformationElement_U)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid
declare i32 @dissect_ber_tagged_type(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef signext, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_qsig_PSS1InformationElement_U(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store ptr null, ptr %i.a, align 8
  %i.b = call i32 @dissect_ber_octet_string(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef %5, ptr noundef nonnull %i.a)
  %i.c = getelementptr i8, ptr %3, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load i32, ptr @ett_cnq_PSS1InformationElement, align 4
  %i.f = call ptr @proto_item_add_subtree(ptr noundef %i.d, i32 noundef %i.e)
  %i.g = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = call i32 @tvb_reported_length(ptr noundef nonnull %i.g)
  %i.i = icmp ne i32 %i.h, 0
  %i.j = load ptr, ptr @q931_ie_handle, align 8   ; 2 uses
  %i.k = icmp ne ptr %i.j, null
  %or.cond = select i1 %i.i, i1 %i.k, i1 false
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.a, align 8
  %i.m = getelementptr i8, ptr %3, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call i32 @call_dissector(ptr noundef nonnull %i.j, ptr noundef %i.l, ptr noundef %i.n, ptr noundef %i.f) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define i32 @dissect_qsig_na_Name(i1 zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = load i32, ptr @ett_qsig_na_Name, align 4
  %i.b = tail call i32 @dissect_ber_choice(ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @qsig_na_Name_choice, i32 noundef %5, i32 noundef %i.a, ptr noundef null)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid
declare i32 @dissect_ber_choice(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_qsig() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef nonnull @.str.1441, ptr noundef nonnull @.str.1441, ptr noundef nonnull @.str.1442) ; 2 uses
  store i32 %i.a, ptr @proto_qsig, align 4
  tail call void @proto_register_field_array(i32 noundef %i.a, ptr noundef nonnull @proto_register_qsig.hf, i32 noundef 805)
  tail call void @proto_register_subtree_array(ptr noundef nonnull @proto_register_qsig.ett, i32 noundef 361)
  %i.b = load i32, ptr @proto_qsig, align 4
  %i.c = tail call ptr @expert_register_protocol(i32 noundef %i.b)
  tail call void @expert_register_field_array(ptr noundef %i.c, ptr noundef nonnull @proto_register_qsig.ei, i32 noundef 2)
  %i.d = load i32, ptr @proto_qsig, align 4
  %i.e = tail call ptr @register_dissector(ptr noundef nonnull @.str.1443, ptr noundef nonnull @dissect_qsig_arg, i32 noundef %i.d)
  store ptr %i.e, ptr @qsig_arg_handle, align 8
  %i.f = load i32, ptr @proto_qsig, align 4
  %i.g = tail call ptr @register_dissector(ptr noundef nonnull @.str.1444, ptr noundef nonnull @dissect_qsig_res, i32 noundef %i.f)
  store ptr %i.g, ptr @qsig_res_handle, align 8
  %i.h = load i32, ptr @proto_qsig, align 4
  %i.i = tail call ptr @register_dissector(ptr noundef nonnull @.str.1445, ptr noundef nonnull @dissect_qsig_err, i32 noundef %i.h)
  store ptr %i.i, ptr @qsig_err_handle, align 8
  %i.j = load i32, ptr @proto_qsig, align 4
  %i.k = tail call ptr @register_dissector(ptr noundef nonnull @.str.1446, ptr noundef nonnull @dissect_qsig_ie_cs4, i32 noundef %i.j)
  store ptr %i.k, ptr @qsig_ie4_handle, align 8
  %i.l = load i32, ptr @proto_qsig, align 4
  %i.m = tail call ptr @register_dissector(ptr noundef nonnull @.str.1447, ptr noundef nonnull @dissect_qsig_ie_cs5, i32 noundef %i.l)
  store ptr %i.m, ptr @qsig_ie5_handle, align 8
  %i.n = load i32, ptr @proto_qsig, align 4
  %i.o = tail call ptr @register_dissector_table(ptr noundef nonnull @.str.1448, ptr noundef nonnull @.str.1449, i32 noundef %i.n, i32 noundef 26, i32 noundef 0)
  store ptr %i.o, ptr @extension_dissector_table, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: null_pointer_is_valid
declare i32 @proto_register_protocol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_register_field_array(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_register_subtree_array(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @expert_register_protocol(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @expert_register_field_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_qsig_arg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = icmp eq ptr %3, null
  br i1 %i.b, label %get_op.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @get_rose_ctx(ptr noundef nonnull %3) ; 7 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.2039, ptr noundef nonnull @.str.2040, i32 noundef 12364, ptr noundef nonnull @.str.2041) #5
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %i.c, i64 80
  %i.e = load i32, ptr %i.d, align 8
  %.not68 = icmp eq i32 %i.e, 1
  br i1 %.not68, label %bb.e, label %get_op.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr i8, ptr %i.c, i64 84
  %i.g = load i32, ptr %i.f, align 4
  switch i32 %i.g, label %get_op.exit.thread [
    i32 0, label %bb.f
    i32 1, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr i8, ptr %i.c, i64 88
  %i.i = load i32, ptr %i.h, align 8              ; 3 uses
  br label %bb.i

bb.g:                                             ; preds = %bb.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %i.j = getelementptr [24 x i8], ptr @qsig_op_tab, i64 %indvars.iv.next.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = icmp eq i32 %i.k, %i.i
  br i1 %i.l, label %get_op.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2
  %.not.i.1 = icmp eq i64 %indvars.iv.next.i, 0
  br i1 %.not.i.1, label %get_op.exit.thread, label %bb.i, !llvm.loop !6

bb.i:                                             ; preds = %bb.h, %bb.f
  %indvars.iv.i = phi i64 [ 121, %bb.f ], [ %indvars.iv.next.i.1, %bb.h ] ; 4 uses
  %i.m = getelementptr [24 x i8], ptr @qsig_op_tab, i64 %indvars.iv.i ; 2 uses
  %i.n = load i32, ptr %i.m, align 8
  %i.o = icmp eq i32 %i.n, %i.i
  br i1 %i.o, label %get_op.exit, label %bb.g

bb.j:                                             ; preds = %bb.e
  %i.p = getelementptr i8, ptr %i.c, i64 96
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call ptr @g_strrstr(ptr noundef %i.q, ptr noundef nonnull @.str.2042) ; 2 uses
  %.not69 = icmp eq ptr %i.r, null
  br i1 %.not69, label %get_op.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr i8, ptr %i.r, i64 1
  %i.t = call zeroext i1 @ws_strtou32(ptr noundef %i.s, ptr noundef null, ptr noundef nonnull %i.a)
  br i1 %i.t, label %bb.l, label %get_op.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.u = load i32, ptr %i.a, align 4              ; 3 uses
  br label %bb.o

bb.m:                                             ; preds = %bb.o
  %indvars.iv.next.i77 = add nsw i64 %indvars.iv.i76, -1 ; 3 uses
  %i.v = getelementptr [24 x i8], ptr @qsig_op_tab, i64 %indvars.iv.next.i77 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8
  %i.x = icmp eq i32 %i.w, %i.u
  br i1 %i.x, label %get_op.exit79, label %bb.n

bb.n:                                             ; preds = %bb.m
  %indvars.iv.next.i77.1 = add nsw i64 %indvars.iv.i76, -2
  %.not.i77.1 = icmp eq i64 %indvars.iv.next.i77, 0
  br i1 %.not.i77.1, label %get_op.exit.thread, label %bb.o, !llvm.loop !6

bb.o:                                             ; preds = %bb.n, %bb.l
  %indvars.iv.i76 = phi i64 [ 121, %bb.l ], [ %indvars.iv.next.i77.1, %bb.n ] ; 4 uses
  %i.y = getelementptr [24 x i8], ptr @qsig_op_tab, i64 %indvars.iv.i76 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = icmp eq i32 %i.z, %i.u
  br i1 %i.aa, label %get_op.exit79, label %bb.m

get_op.exit79:                                    ; preds = %bb.m, %bb.o
  %.lcssa135 = phi i64 [ %indvars.iv.i76, %bb.o ], [ %indvars.iv.next.i77, %bb.m ]
  %.lcssa133 = phi ptr [ %i.y, %bb.o ], [ %i.v, %bb.m ]
  %.not70 = icmp eq ptr %.lcssa133, null
  br i1 %.not70, label %get_op.exit.thread, label %get_op.exit.thread85

get_op.exit:                                      ; preds = %bb.g, %bb.i
  %.lcssa130 = phi i64 [ %indvars.iv.i, %bb.i ], [ %indvars.iv.next.i, %bb.g ]
  %.lcssa = phi ptr [ %i.m, %bb.i ], [ %i.j, %bb.g ]
  %.not71 = icmp eq ptr %.lcssa, null
  br i1 %.not71, label %get_op.exit.thread, label %get_op.exit.thread85

get_op.exit.thread85:                             ; preds = %get_op.exit79, %get_op.exit
  %i.ab = phi i64 [ %.lcssa130, %get_op.exit ], [ %.lcssa135, %get_op.exit79 ]
  %.05889 = phi i32 [ %i.i, %get_op.exit ], [ %i.u, %get_op.exit79 ] ; 4 uses
  %i.ac = icmp ugt i32 %.05889, 120
  br i1 %i.ac, label %get_service.exit, label %bb.p

bb.p:                                             ; preds = %get_op.exit.thread85
  %i.ad = zext nneg i32 %.05889 to i64
  %i.ae = getelementptr [4 x i8], ptr @op2srv_tab, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4
  br label %get_service.exit

get_service.exit:                                 ; preds = %get_op.exit.thread85, %bb.p
  %.0.i = phi i32 [ %i.af, %bb.p ], [ -1, %get_op.exit.thread85 ] ; 2 uses
  %i.ag = load i32, ptr @proto_qsig, align 4
  %i.ah = call i32 @tvb_captured_length(ptr noundef %0)
  %i.ai = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ag, ptr noundef %0, i32 noundef 0, i32 noundef %i.ah, i32 noundef 0) ; 2 uses
  %i.aj = load i32, ptr @ett_qsig, align 4
  %i.ak = call ptr @proto_item_add_subtree(ptr noundef %i.ai, i32 noundef %i.aj) ; 3 uses
  %i.al = load i32, ptr @hf_qsig_operation, align 4
  %i.am = call ptr @proto_tree_add_uint(ptr noundef %i.ak, i32 noundef %i.al, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %.05889) ; 0 uses
  %i.an = call ptr @try_val_to_str(i32 noundef %.05889, ptr noundef nonnull @qsig_str_operation) ; 4 uses
  %.not72 = icmp eq ptr %i.an, null
  br i1 %.not72, label %bb.s, label %bb.q

bb.q:                                             ; preds = %get_service.exit
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ai, ptr noundef nonnull @.str.2043, ptr noundef nonnull %i.an)
  %i.ao = getelementptr i8, ptr %i.c, i64 104
  %i.ap = load ptr, ptr %i.ao, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ap, ptr noundef nonnull @.str.2044, ptr noundef nonnull %i.an)
  %i.aq = getelementptr i8, ptr %i.c, i64 56      ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = icmp sgt i32 %i.ar, -1
  br i1 %i.as, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.at = call ptr @proto_tree_get_parent(ptr noundef %2)
  %i.au = load i32, ptr %i.aq, align 8
  %i.av = call ptr @proto_item_get_parent_nth(ptr noundef %i.at, i32 noundef %i.au)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.av, ptr noundef nonnull @.str.2045, ptr noundef nonnull %i.an)
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %get_service.exit
  %i.aw = load i32, ptr @hf_qsig_service, align 4
  %i.ax = call ptr @proto_tree_add_uint(ptr noundef %i.ak, i32 noundef %i.aw, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %.0.i)
  %i.ay = call ptr @try_val_to_str(i32 noundef %.0.i, ptr noundef nonnull @qsig_str_service_name) ; 2 uses
  %.not73 = icmp eq ptr %i.ay, null
  br i1 %.not73, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ax, ptr noundef nonnull @.str.2044, ptr noundef nonnull %i.ay)
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.az = getelementptr [24 x i8], ptr @qsig_op_tab, i64 %i.ab
  %i.ba = getelementptr i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = call i32 %i.bb(ptr noundef %0, ptr noundef %1, ptr noundef %i.ak, ptr noundef null)
  br label %get_op.exit.thread

get_op.exit.thread:                               ; preds = %bb.n, %bb.h, %bb.k, %bb.j, %get_op.exit79, %bb.u, %get_op.exit, %bb.e, %bb.d, %bb.a
  %.060 = phi i32 [ 0, %bb.d ], [ 0, %bb.a ], [ 0, %get_op.exit ], [ 0, %bb.e ], [ %i.bc, %bb.u ], [ 0, %bb.k ], [ 0, %bb.h ], [ 0, %get_op.exit79 ], [ 0, %bb.j ], [ 0, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.060
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_qsig_res(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = icmp eq ptr %3, null
  br i1 %i.a, label %get_op.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @get_rose_ctx(ptr noundef nonnull %3) ; 6 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.2039, ptr noundef nonnull @.str.2040, i32 noundef 12428, ptr noundef nonnull @.str.2041) #5
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %i.b, i64 80
  %i.d = load i32, ptr %i.c, align 8
  %.not59 = icmp eq i32 %i.d, 2
  br i1 %.not59, label %bb.e, label %get_op.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr i8, ptr %i.b, i64 84
  %i.f = load i32, ptr %i.e, align 4
  %.not60 = icmp eq i32 %i.f, 0
  br i1 %.not60, label %bb.f, label %get_op.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr i8, ptr %i.b, i64 88
  %i.h = load i32, ptr %i.g, align 8              ; 6 uses
  br label %bb.i

bb.g:                                             ; preds = %bb.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.i = getelementptr [24 x i8], ptr @qsig_op_tab, i64 %indvars.iv.next.i ; 2 uses
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp eq i32 %i.j, %i.h
  br i1 %i.k, label %get_op.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2
  %.not.i.1 = icmp eq i64 %indvars.iv.next.i, 0
  br i1 %.not.i.1, label %get_op.exit.thread, label %bb.i, !llvm.loop !6

bb.i:                                             ; preds = %bb.h, %bb.f
  %indvars.iv.i = phi i64 [ 121, %bb.f ], [ %indvars.iv.next.i.1, %bb.h ] ; 3 uses
  %i.l = getelementptr [24 x i8], ptr @qsig_op_tab, i64 %indvars.iv.i ; 2 uses
  %i.m = load i32, ptr %i.l, align 8
  %i.n = icmp eq i32 %i.m, %i.h
  br i1 %i.n, label %get_op.exit, label %bb.g

get_op.exit:                                      ; preds = %bb.g, %bb.i
  %.lcssa = phi ptr [ %i.l, %bb.i ], [ %i.i, %bb.g ] ; 2 uses
  %.not61 = icmp eq ptr %.lcssa, null
  br i1 %.not61, label %get_op.exit.thread, label %bb.j

bb.j:                                             ; preds = %get_op.exit
  %i.o = icmp ugt i32 %i.h, 120
  br i1 %i.o, label %get_service.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = zext nneg i32 %i.h to i64
  %i.q = getelementptr [4 x i8], ptr @op2srv_tab, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4
  br label %get_service.exit

get_service.exit:                                 ; preds = %bb.j, %bb.k
  %.0.i = phi i32 [ %i.r, %bb.k ], [ -1, %bb.j ]  ; 2 uses
  %i.s = load i32, ptr @proto_qsig, align 4
  %i.t = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.u = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.s, ptr noundef %0, i32 noundef 0, i32 noundef %i.t, i32 noundef 0) ; 2 uses
  %i.v = load i32, ptr @ett_qsig, align 4
  %i.w = tail call ptr @proto_item_add_subtree(ptr noundef %i.u, i32 noundef %i.v) ; 3 uses
  %i.x = load i32, ptr @hf_qsig_operation, align 4
  %i.y = tail call ptr @proto_tree_add_uint(ptr noundef %i.w, i32 noundef %i.x, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.h) ; 0 uses
  %i.z = tail call ptr @try_val_to_str(i32 noundef %i.h, ptr noundef nonnull @qsig_str_operation) ; 4 uses
  %.not62 = icmp eq ptr %i.z, null
  br i1 %.not62, label %bb.n, label %bb.l

bb.l:                                             ; preds = %get_service.exit
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.u, ptr noundef nonnull @.str.2043, ptr noundef nonnull %i.z)
  %i.aa = getelementptr i8, ptr %i.b, i64 104
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ab, ptr noundef nonnull @.str.2044, ptr noundef nonnull %i.z)
  %i.ac = getelementptr i8, ptr %i.b, i64 56      ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = icmp sgt i32 %i.ad, -1
  br i1 %i.ae, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.af = tail call ptr @proto_tree_get_parent(ptr noundef %2)
  %i.ag = load i32, ptr %i.ac, align 8
  %i.ah = tail call ptr @proto_item_get_parent_nth(ptr noundef %i.af, i32 noundef %i.ag)
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ah, ptr noundef nonnull @.str.2045, ptr noundef nonnull %i.z)
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %get_service.exit
  %i.ai = load i32, ptr @hf_qsig_service, align 4
  %i.aj = tail call ptr @proto_tree_add_uint(ptr noundef %i.w, i32 noundef %i.ai, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %.0.i)
  %i.ak = tail call ptr @try_val_to_str(i32 noundef %.0.i, ptr noundef nonnull @qsig_str_service_name) ; 2 uses
  %.not63 = icmp eq ptr %i.ak, null
  br i1 %.not63, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.aj, ptr noundef nonnull @.str.2044, ptr noundef nonnull %i.ak)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.al = getelementptr i8, ptr %.lcssa, i64 16
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %.not64 = icmp eq ptr %i.am, null
  br i1 %.not64, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.an = tail call i32 %i.am(ptr noundef %0, ptr noundef %1, ptr noundef %i.w, ptr noundef null)
  br label %get_op.exit.thread

bb.r:                                             ; preds = %bb.p
  %i.ao = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 0)
  %.not65 = icmp eq i32 %i.ao, 0
  br i1 %.not65, label %get_op.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ap = tail call ptr @proto_tree_add_expert_remaining(ptr noundef %2, ptr noundef %1, ptr noundef nonnull @ei_qsig_unsupported_result_type, ptr noundef %0, i32 noundef 0) ; 0 uses
  %i.aq = tail call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef 0)
  br label %get_op.exit.thread

get_op.exit.thread:                               ; preds = %bb.h, %bb.q, %bb.s, %bb.r, %get_op.exit, %bb.e, %bb.d, %bb.a
  %.052 = phi i32 [ 0, %bb.e ], [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %get_op.exit ], [ %i.an, %bb.q ], [ %i.aq, %bb.s ], [ 0, %bb.r ], [ 0, %bb.h ]
  ret i32 %.052
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_qsig_err(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = icmp eq ptr %3, null
  br i1 %i.a, label %get_err.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @get_rose_ctx(ptr noundef nonnull %3) ; 6 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.2039, ptr noundef nonnull @.str.2040, i32 noundef 12482, ptr noundef nonnull @.str.2041) #5
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %i.b, i64 80
  %i.d = load i32, ptr %i.c, align 8
  %.not50 = icmp eq i32 %i.d, 3
  br i1 %.not50, label %bb.e, label %get_err.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr i8, ptr %i.b, i64 84
  %i.f = load i32, ptr %i.e, align 4
  %.not51 = icmp eq i32 %i.f, 0
  br i1 %.not51, label %bb.f, label %get_err.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr i8, ptr %i.b, i64 88
  %i.h = load i32, ptr %i.g, align 8              ; 6 uses
  br label %bb.l

bb.g:                                             ; preds = %bb.l
  %i.i = getelementptr [16 x i8], ptr @qsig_err_tab, i64 %indvars.iv.i ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -16
  %i.k = load i32, ptr %i.j, align 16
  %i.l = icmp eq i32 %i.k, %i.h
  br i1 %i.l, label %get_err.exit.split.loop.exit70, label %bb.h

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %i.m = getelementptr [16 x i8], ptr @qsig_err_tab, i64 %indvars.iv.next.i.1 ; 2 uses
  %i.n = load i32, ptr %i.m, align 16
  %i.o = icmp eq i32 %i.n, %i.h
  br i1 %i.o, label %get_err.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i.2 = icmp eq i64 %indvars.iv.next.i.1, 0
  br i1 %.not.i.2, label %get_err.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr [16 x i8], ptr @qsig_err_tab, i64 %indvars.iv.i ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 -48
  %i.r = load i32, ptr %i.q, align 16
  %i.s = icmp eq i32 %i.r, %i.h
  br i1 %i.s, label %get_err.exit.split.loop.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, -4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %indvars.iv.i = phi i64 [ 90, %bb.f ], [ %indvars.iv.next.i.3, %bb.k ] ; 5 uses
  %i.t = getelementptr [16 x i8], ptr @qsig_err_tab, i64 %indvars.iv.i ; 2 uses
  %i.u = load i32, ptr %i.t, align 16
  %i.v = icmp eq i32 %i.u, %i.h
  br i1 %i.v, label %get_err.exit, label %bb.g

get_err.exit.split.loop.exit:                     ; preds = %bb.j
  %i.w = getelementptr i8, ptr %i.p, i64 -48
  br label %get_err.exit

get_err.exit.split.loop.exit70:                   ; preds = %bb.g
  %i.x = getelementptr i8, ptr %i.i, i64 -16
  br label %get_err.exit

get_err.exit:                                     ; preds = %bb.l, %bb.h, %get_err.exit.split.loop.exit70, %get_err.exit.split.loop.exit
  %.lcssa = phi ptr [ %i.x, %get_err.exit.split.loop.exit70 ], [ %i.m, %bb.h ], [ %i.w, %get_err.exit.split.loop.exit ], [ %i.t, %bb.l ] ; 2 uses
  %.not52 = icmp eq ptr %.lcssa, null
  br i1 %.not52, label %get_err.exit.thread, label %bb.m

bb.m:                                             ; preds = %get_err.exit
  %i.y = load i32, ptr @proto_qsig, align 4
  %i.z = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.aa = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.y, ptr noundef %0, i32 noundef 0, i32 noundef %i.z, i32 noundef 0) ; 2 uses
  %i.ab = load i32, ptr @ett_qsig, align 4
  %i.ac = tail call ptr @proto_item_add_subtree(ptr noundef %i.aa, i32 noundef %i.ab) ; 2 uses
  %i.ad = load i32, ptr @hf_qsig_error, align 4
  %i.ae = tail call ptr @proto_tree_add_uint(ptr noundef %i.ac, i32 noundef %i.ad, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.h) ; 0 uses
  %i.af = tail call ptr @try_val_to_str(i32 noundef %i.h, ptr noundef nonnull @qsig_str_error) ; 4 uses
  %.not53 = icmp eq ptr %i.af, null
  br i1 %.not53, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.aa, ptr noundef nonnull @.str.2043, ptr noundef nonnull %i.af)
  %i.ag = getelementptr i8, ptr %i.b, i64 104
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ah, ptr noundef nonnull @.str.2044, ptr noundef nonnull %i.af)
  %i.ai = getelementptr i8, ptr %i.b, i64 56      ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = icmp sgt i32 %i.aj, -1
  br i1 %i.ak, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.al = tail call ptr @proto_tree_get_parent(ptr noundef %2)
  %i.am = load i32, ptr %i.ai, align 8
  %i.an = tail call ptr @proto_item_get_parent_nth(ptr noundef %i.al, i32 noundef %i.am)
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.an, ptr noundef nonnull @.str.2045, ptr noundef nonnull %i.af)
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.m
  %i.ao = getelementptr i8, ptr %.lcssa, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %.not54 = icmp eq ptr %i.ap, null
  br i1 %.not54, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aq = tail call i32 %i.ap(ptr noundef %0, ptr noundef %1, ptr noundef %i.ac, ptr noundef null)
  br label %get_err.exit.thread

bb.r:                                             ; preds = %bb.p
  %i.ar = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 0)
  %.not55 = icmp eq i32 %i.ar, 0
  br i1 %.not55, label %get_err.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.as = tail call ptr @proto_tree_add_expert_remaining(ptr noundef %2, ptr noundef %1, ptr noundef nonnull @ei_qsig_unsupported_error_type, ptr noundef %0, i32 noundef 0) ; 0 uses
  %i.at = tail call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef 0)
  br label %get_err.exit.thread

get_err.exit.thread:                              ; preds = %bb.i, %bb.q, %bb.s, %bb.r, %get_err.exit, %bb.e, %bb.d, %bb.a
  %.044 = phi i32 [ 0, %bb.e ], [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %get_err.exit ], [ %i.aq, %bb.q ], [ %i.at, %bb.s ], [ 0, %bb.r ], [ 0, %bb.i ]
  ret i32 %.044
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_qsig_ie_cs4(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  tail call fastcc void @dissect_qsig_ie(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 4)
  %i.a = tail call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_qsig_ie_cs5(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  tail call fastcc void @dissect_qsig_ie(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 5)
  %i.a = tail call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector_table(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_qsig() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @proto_qsig, align 4
  %i.b = tail call ptr @find_dissector_add_dependency(ptr noundef nonnull @.str.1450, i32 noundef %i.a)
  %i.c = load i32, ptr @proto_qsig, align 4
  %i.d = tail call ptr @find_dissector_add_dependency(ptr noundef nonnull @.str.1451, i32 noundef %i.c)
  store ptr %i.d, ptr @q931_ie_handle, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.e = getelementptr [24 x i8], ptr @qsig_op_tab, i64 %indvars.iv
  %i.f = load i32, ptr %i.e, align 8              ; 3 uses
  %i.g = load ptr, ptr @qsig_arg_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.1452, i32 noundef %i.f, ptr noundef %i.g)
  %i.h = load ptr, ptr @qsig_res_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.1453, i32 noundef %i.f, ptr noundef %i.h)
  %i.i = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.1454, i32 noundef %i.f) ; 3 uses
  %i.j = load ptr, ptr @qsig_arg_handle, align 8
  tail call void @dissector_add_string(ptr noundef nonnull @.str.1455, ptr noundef %i.i, ptr noundef %i.j)
  %i.k = load ptr, ptr @qsig_res_handle, align 8
  tail call void @dissector_add_string(ptr noundef nonnull @.str.1456, ptr noundef %i.i, ptr noundef %i.k)
  tail call void @wmem_free(ptr noundef null, ptr noundef %i.i)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 122
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !8

.preheader:                                       ; preds = %bb.b, %.preheader
  %indvars.iv14 = phi i64 [ %indvars.iv.next15, %.preheader ], [ 0, %bb.b ] ; 2 uses
  %i.l = getelementptr [16 x i8], ptr @qsig_err_tab, i64 %indvars.iv14
  %i.m = load i32, ptr %i.l, align 16
  %i.n = load ptr, ptr @qsig_err_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.1457, i32 noundef %i.m, ptr noundef %i.n)
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1 ; 2 uses
  %exitcond17.not = icmp eq i64 %indvars.iv.next15, 91
  br i1 %exitcond17.not, label %bb.c, label %.preheader, !llvm.loop !9

bb.c:                                             ; preds = %.preheader
  %i.o = load ptr, ptr @qsig_ie4_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.1451, i32 noundef 1073, ptr noundef %i.o)
  %i.p = load ptr, ptr @qsig_ie5_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.1451, i32 noundef 1330, ptr noundef %i.p)
  tail call void @dissector_add_string(ptr noundef nonnull @.str.1458, ptr noundef nonnull @.str.1459, ptr noundef %i.b)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @find_dissector_add_dependency(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noalias ptr @wmem_strdup_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @wmem_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_qsig_T_extensionId(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = tail call i32 @dissect_ber_object_identifier_str(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef %5, ptr noundef nonnull @extension_oid)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_qsig_T_extensionArgument(i1 zeroext %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, i32 %5) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %3, i64 16         ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @increment_dissection_depth_by_n(ptr noundef %i.b, i32 noundef 1)
  %i.c = tail call ptr @tvb_new_subset_remaining(ptr noundef %1, i32 noundef %2) ; 3 uses
  %i.d = load ptr, ptr @extension_dissector_table, align 8
  %i.e = load ptr, ptr @extension_oid, align 8
  %i.f = load ptr, ptr %i.a, align 8
  %i.g = tail call i32 @dissector_try_string_with_data(ptr noundef %i.d, ptr noundef %i.e, ptr noundef %i.c, ptr noundef %i.f, ptr noundef %4, i1 noundef zeroext false, ptr noundef null)
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr @ett_qsig_unknown_extension, align 4
  %i.i = load ptr, ptr @extension_oid, align 8
  %i.j = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %4, ptr noundef %i.c, i32 noundef 0, i32 noundef -1, i32 noundef %i.h, ptr noundef null, ptr noundef nonnull @.str.1461, ptr noundef %i.i)
  %i.k = load ptr, ptr %i.a, align 8
  %i.l = tail call i32 @dissect_unknown_ber(ptr noundef %i.k, ptr noundef %i.c, i32 noundef %2, ptr noundef %i.j) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = tail call i32 @tvb_reported_length_remaining(ptr noundef %1, i32 noundef %2)
  %i.n = add i32 %i.m, %2
  %i.o = load ptr, ptr %i.a, align 8
  tail call void @decrement_dissection_depth_by_n(ptr noundef %i.o, i32 noundef 1)
  ret i32 %i.n
}

; Function Attrs: null_pointer_is_valid
declare i32 @dissect_ber_object_identifier_str(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @increment_dissection_depth_by_n(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_remaining(ptr noundef, i32 noundef) local_unnamed_addr #1
end_hunk_0
