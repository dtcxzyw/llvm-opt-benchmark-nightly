Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/ctrl?download=true
inline.NumInlined: 1462
inline.NumDeleted: 388
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 12
begin_hunk_0
@.str.417 = private unnamed_addr constant [10 x i8] c"namespace\00", align 1
@nvme_vmstate_ns = external constant %struct.VMStateDescription, align 8
@.str.418 = private unnamed_addr constant [3 x i8] c"sq\00", align 1
@.str.419 = private unnamed_addr constant [3 x i8] c"cq\00", align 1
@.str.420 = private unnamed_addr constant [24 x i8] c"features.temp_thresh_hi\00", align 1
@.str.421 = private unnamed_addr constant [25 x i8] c"features.temp_thresh_low\00", align 1
@.str.422 = private unnamed_addr constant [22 x i8] c"features.async_config\00", align 1
@.str.423 = private unnamed_addr constant [13 x i8] c"features.hbs\00", align 1
@.str.424 = private unnamed_addr constant [3 x i8] c"dn\00", align 1
@.str.425 = private unnamed_addr constant [7 x i8] c"atomic\00", align 1
@.compoundliteral.426 = internal constant [35 x { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr }] [{ ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.394, i64 0, i64 2768, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr null, i32 8, [4 x i8] zeroinitializer, ptr @vmstate_pci_device, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.394, i64 0, i64 2768, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr null, i32 8, [4 x i8] zeroinitializer, ptr @vmstate_msix, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.395, i64 3312, i64 4096, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr null, i32 8, [4 x i8] zeroinitializer, ptr @nvme_vmstate_bar, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.396, i64 7618, i64 1, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_bool, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.397, i64 7620, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.398, i64 7624, i64 2, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint16, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.399, i64 7626, i64 2, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint16, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.400, i64 7628, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.401, i64 7632, i64 1, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint8, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.402, i64 7636, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.403, i64 7640, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_int32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.404, i64 7648, i64 8, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint64, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.405, i64 7656, i64 8, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint64, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.406, i64 7664, i64 8, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint64, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.407, i64 7672, i64 2, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint16, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.45, i64 7674, i64 1, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint8, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.408, i64 7676, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.409, i64 7680, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.410, i64 7688, i64 8, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint64, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.411, i64 7696, i64 8, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint64, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.412, i64 7704, i64 1, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_bool, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.413, i64 11112, i64 1, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint8, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.414, i64 11120, i64 216, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 7632, ptr null, i32 66634, [4 x i8] zeroinitializer, ptr @nvme_vmstate_request, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.415, i64 11128, i64 24, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_qtailq, i32 0, [4 x i8] zeroinitializer, ptr @nvme_vmstate_async_event, i32 1, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.416, i64 11144, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_int32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.417, i64 11200, i64 12992, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr null, i32 8, [4 x i8] zeroinitializer, ptr @nvme_vmstate_ns, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.418, i64 26256, i64 128, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 26248, ptr null, i32 67658, [4 x i8] zeroinitializer, ptr @nvme_vmstate_squeue, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.419, i64 26264, i64 112, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 26248, ptr null, i32 67658, [4 x i8] zeroinitializer, ptr @nvme_vmstate_cqueue, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.420, i64 30608, i64 2, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint16, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.421, i64 30610, i64 2, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint16, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.422, i64 30612, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.423, i64 30616, i64 512, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr null, i32 8, [4 x i8] zeroinitializer, ptr @nvme_vmstate_hbs, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.424, i64 35244, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.425, i64 35248, i64 32, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr null, i32 8, [4 x i8] zeroinitializer, ptr @nvme_vmstate_atomic, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr null, i64 0, i64 0, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr null, i32 131072, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }], align 8
@nvme_vmstate = internal constant { ptr, i8, i8, [2 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.39, i8 0, i8 0, [2 x i8] zeroinitializer, i32 1, i32 1, i32 0, ptr null, ptr null, ptr null, ptr @nvme_ctrl_post_load, ptr null, ptr @nvme_ctrl_pre_save, ptr null, ptr null, ptr null, ptr @.compoundliteral.426, ptr null }, align 8
@__func__.nvme_ctrl_post_load = private unnamed_addr constant [20 x i8] c"nvme_ctrl_post_load\00", align 1
@.str.428 = private unnamed_addr constant [46 x i8] c"inconsistent migration stream (cq->cqid != i)\00", align 1
@.str.429 = private unnamed_addr constant [46 x i8] c"inconsistent migration stream (sq->sqid != i)\00", align 1
@.str.430 = private unnamed_addr constant [56 x i8] c"inconsistent migration stream (n->cq[sq->cqid] is NULL)\00", align 1
@.str.431 = private unnamed_addr constant [26 x i8] c"!nvme_check_sqid(n, sqid)\00", align 1
@__PRETTY_FUNCTION__.nvme_ctrl_post_load = private unnamed_addr constant [49 x i8] c"_Bool nvme_ctrl_post_load(void *, int, Error **)\00", align 1
@_TRACE_PCI_NVME_POST_LOAD_ENTER_DSTATE = external local_unnamed_addr global i16, align 2
@.str.432 = private unnamed_addr constant [31 x i8] c"pci_nvme_post_load_enter n=%p\0A\00", align 1
@_TRACE_PCI_NVME_POST_LOAD_RESTORE_CQ_DSTATE = external local_unnamed_addr global i16, align 2
@.str.433 = private unnamed_addr constant [71 x i8] c"pci_nvme_post_load_restore_cq n=%p i=%d head=0x%x tail=0x%x size=0x%x\0A\00", align 1
@_TRACE_PCI_NVME_POST_LOAD_RESTORE_SQ_DSTATE = external local_unnamed_addr global i16, align 2
@.str.434 = private unnamed_addr constant [71 x i8] c"pci_nvme_post_load_restore_sq n=%p i=%d head=0x%x tail=0x%x size=0x%x\0A\00", align 1
@_TRACE_PCI_NVME_POST_LOAD_AER_DSTATE = external local_unnamed_addr global i16, align 2
@.str.435 = private unnamed_addr constant [53 x i8] c"pci_nvme_post_load_aer type 0x%x info 0x%x lid 0x%x\0A\00", align 1
@__PRETTY_FUNCTION__.nvme_ctrl_pre_save = private unnamed_addr constant [43 x i8] c"_Bool nvme_ctrl_pre_save(void *, Error **)\00", align 1
@.str.436 = private unnamed_addr constant [45 x i8] c"req->cmd.opcode == NVME_ADM_CMD_ASYNC_EV_REQ\00", align 1
@.str.437 = private unnamed_addr constant [17 x i8] c"nvme_cq_full(cq)\00", align 1
@__func__.nvme_ctrl_pre_save = private unnamed_addr constant [19 x i8] c"nvme_ctrl_pre_save\00", align 1
@.str.438 = private unnamed_addr constant [51 x i8] c"only one NVMe namespace is supported for migration\00", align 1
@_TRACE_PCI_NVME_PRE_SAVE_ENTER_DSTATE = external local_unnamed_addr global i16, align 2
@.str.439 = private unnamed_addr constant [30 x i8] c"pci_nvme_pre_save_enter n=%p\0A\00", align 1
@_TRACE_PCI_NVME_PRE_SAVE_NS_DRAIN_DSTATE = external local_unnamed_addr global i16, align 2
@.str.440 = private unnamed_addr constant [38 x i8] c"pci_nvme_pre_save_ns_drain n=%p i=%d\0A\00", align 1
@_TRACE_PCI_NVME_PRE_SAVE_AER_DSTATE = external local_unnamed_addr global i16, align 2
@.str.441 = private unnamed_addr constant [52 x i8] c"pci_nvme_pre_save_aer type 0x%x info 0x%x lid 0x%x\0A\00", align 1
@__func__.pre_save_validate_aer_req = private unnamed_addr constant [26 x i8] c"pre_save_validate_aer_req\00", align 1
@.str.442 = private unnamed_addr constant [50 x i8] c"req->cmd.opcode (%u) != NVME_ADM_CMD_ASYNC_EV_REQ\00", align 1
@.str.443 = private unnamed_addr constant [16 x i8] c"req->ns != NULL\00", align 1
@.str.444 = private unnamed_addr constant [36 x i8] c"req->sq != &req->sq->ctrl->admin_sq\00", align 1
@.str.445 = private unnamed_addr constant [19 x i8] c"req->aiocb != NULL\00", align 1
@.str.446 = private unnamed_addr constant [20 x i8] c"req->opaque != NULL\00", align 1
@.str.447 = private unnamed_addr constant [27 x i8] c"req->atomic_write != false\00", align 1
@.str.448 = private unnamed_addr constant [47 x i8] c"unexpected NVME_SG_ALLOC flag in req->sg.flags\00", align 1
@_TRACE_PCI_NVME_PRE_SAVE_SQ_OUT_REQ_CHECK_DSTATE = external local_unnamed_addr global i16, align 2
@.str.449 = private unnamed_addr constant [76 x i8] c"pci_nvme_pre_save_sq_out_req_check n=%p i=%d head=0x%x tail=0x%x size=0x%x\0A\00", align 1
@_TRACE_PCI_NVME_PRE_SAVE_CQ_REQ_CHECK_DSTATE = external local_unnamed_addr global i16, align 2
@.str.450 = private unnamed_addr constant [72 x i8] c"pci_nvme_pre_save_cq_req_check n=%p i=%d head=0x%x tail=0x%x size=0x%x\0A\00", align 1
@_TRACE_PCI_NVME_PRE_SAVE_CQ_UNPOSTED_CQE_DSTATE = external local_unnamed_addr global i16, align 2
@.str.451 = private unnamed_addr constant [99 x i8] c"pci_nvme_pre_save_cq_unposted_cqe n=%p i=%d cid %u nsid %u dw0 0x%x dw1 0x%x status 0x%x opc 0x%x\0A\00", align 1
@__func__.pre_save_validate_cq_req = private unnamed_addr constant [25 x i8] c"pre_save_validate_cq_req\00", align 1
@.str.452 = private unnamed_addr constant [9 x i8] c"nvme-bar\00", align 1
@.str.453 = private unnamed_addr constant [4 x i8] c"cap\00", align 1
@.str.454 = private unnamed_addr constant [3 x i8] c"vs\00", align 1
@.str.455 = private unnamed_addr constant [6 x i8] c"intms\00", align 1
@.str.456 = private unnamed_addr constant [6 x i8] c"intmc\00", align 1
@.str.457 = private unnamed_addr constant [3 x i8] c"cc\00", align 1
@.str.458 = private unnamed_addr constant [7 x i8] c"rsvd24\00", align 1
@.str.459 = private unnamed_addr constant [5 x i8] c"csts\00", align 1
@.str.460 = private unnamed_addr constant [5 x i8] c"nssr\00", align 1
@.str.461 = private unnamed_addr constant [4 x i8] c"aqa\00", align 1
@.str.462 = private unnamed_addr constant [4 x i8] c"asq\00", align 1
@.str.463 = private unnamed_addr constant [4 x i8] c"acq\00", align 1
@.str.464 = private unnamed_addr constant [7 x i8] c"cmbloc\00", align 1
@.str.465 = private unnamed_addr constant [6 x i8] c"cmbsz\00", align 1
@.str.466 = private unnamed_addr constant [7 x i8] c"bpinfo\00", align 1
@.str.467 = private unnamed_addr constant [7 x i8] c"bprsel\00", align 1
@.str.468 = private unnamed_addr constant [6 x i8] c"bpmbl\00", align 1
@.str.469 = private unnamed_addr constant [7 x i8] c"cmbmsc\00", align 1
@.str.470 = private unnamed_addr constant [7 x i8] c"cmbsts\00", align 1
@.str.471 = private unnamed_addr constant [7 x i8] c"rsvd92\00", align 1
@.str.472 = private unnamed_addr constant [7 x i8] c"pmrcap\00", align 1
@.str.473 = private unnamed_addr constant [7 x i8] c"pmrctl\00", align 1
@.str.474 = private unnamed_addr constant [7 x i8] c"pmrsts\00", align 1
@.str.475 = private unnamed_addr constant [7 x i8] c"pmrebs\00", align 1
@.str.476 = private unnamed_addr constant [8 x i8] c"pmrswtp\00", align 1
@.str.477 = private unnamed_addr constant [8 x i8] c"pmrmscl\00", align 1
@.str.478 = private unnamed_addr constant [8 x i8] c"pmrmscu\00", align 1
@.str.479 = private unnamed_addr constant [4 x i8] c"css\00", align 1
@.compoundliteral.480 = internal constant [28 x { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr }] [{ ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.453, i64 0, i64 8, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint64, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.454, i64 8, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.455, i64 12, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.456, i64 16, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.457, i64 20, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.458, i64 24, i64 1, i64 0, i64 0, i32 4, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint8, i32 4, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.459, i64 28, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.460, i64 32, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.461, i64 36, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.462, i64 40, i64 8, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint64, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.463, i64 48, i64 8, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint64, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.464, i64 56, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.465, i64 60, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.466, i64 64, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.467, i64 68, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.468, i64 72, i64 8, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint64, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.469, i64 80, i64 8, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint64, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.470, i64 88, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.471, i64 92, i64 1, i64 0, i64 0, i32 3492, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint8, i32 4, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.472, i64 3584, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.473, i64 3588, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.474, i64 3592, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.475, i64 3596, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.476, i64 3600, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.477, i64 3604, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.478, i64 3608, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.479, i64 3612, i64 1, i64 0, i64 0, i32 484, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint8, i32 4, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr null, i64 0, i64 0, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr null, i32 131072, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }], align 8
@nvme_vmstate_bar = internal constant { ptr, i8, i8, [2 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.452, i8 0, i8 0, [2 x i8] zeroinitializer, i32 1, i32 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.compoundliteral.480, ptr null }, align 8
@.str.482 = private unnamed_addr constant [13 x i8] c"nvme-request\00", align 1
@.str.483 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.484 = private unnamed_addr constant [4 x i8] c"cqe\00", align 1
@.str.485 = private unnamed_addr constant [4 x i8] c"cmd\00", align 1
@.compoundliteral.486 = internal constant [4 x { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr }] [{ ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.483, i64 24, i64 2, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint16, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.484, i64 40, i64 16, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr null, i32 8, [4 x i8] zeroinitializer, ptr @nvme_vmstate_cqe, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.485, i64 56, i64 64, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr null, i32 8, [4 x i8] zeroinitializer, ptr @nvme_vmstate_cmd, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr null, i64 0, i64 0, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr null, i32 131072, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }], align 8
@nvme_vmstate_request = internal constant { ptr, i8, i8, [2 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.482, i8 0, i8 0, [2 x i8] zeroinitializer, i32 1, i32 1, i32 0, ptr null, ptr @nvme_req_pre_load, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.compoundliteral.486, ptr null }, align 8
@.str.488 = private unnamed_addr constant [9 x i8] c"nvme-cqe\00", align 1
@.str.489 = private unnamed_addr constant [7 x i8] c"result\00", align 1
@.str.490 = private unnamed_addr constant [4 x i8] c"dw1\00", align 1
@.str.491 = private unnamed_addr constant [8 x i8] c"sq_head\00", align 1
@.str.492 = private unnamed_addr constant [6 x i8] c"sq_id\00", align 1
@.str.493 = private unnamed_addr constant [4 x i8] c"cid\00", align 1
@.compoundliteral.494 = internal constant [7 x { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr }] [{ ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.489, i64 0, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.490, i64 4, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.491, i64 8, i64 2, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint16, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.492, i64 10, i64 2, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint16, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.493, i64 12, i64 2, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint16, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.483, i64 14, i64 2, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint16, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr null, i64 0, i64 0, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr null, i32 131072, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }], align 8
@nvme_vmstate_cqe = internal constant { ptr, i8, i8, [2 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.488, i8 0, i8 0, [2 x i8] zeroinitializer, i32 1, i32 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.compoundliteral.494, ptr null }, align 8
@.str.496 = private unnamed_addr constant [17 x i8] c"nvme-request-cmd\00", align 1
@.str.497 = private unnamed_addr constant [7 x i8] c"opcode\00", align 1
@.str.498 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.499 = private unnamed_addr constant [5 x i8] c"nsid\00", align 1
@.str.500 = private unnamed_addr constant [5 x i8] c"res1\00", align 1
@.str.501 = private unnamed_addr constant [5 x i8] c"mptr\00", align 1
@.str.502 = private unnamed_addr constant [5 x i8] c"dptr\00", align 1
@.str.503 = private unnamed_addr constant [6 x i8] c"cdw10\00", align 1
@.str.504 = private unnamed_addr constant [6 x i8] c"cdw11\00", align 1
@.str.505 = private unnamed_addr constant [6 x i8] c"cdw12\00", align 1
@.str.506 = private unnamed_addr constant [6 x i8] c"cdw13\00", align 1
@.str.507 = private unnamed_addr constant [6 x i8] c"cdw14\00", align 1
@.str.508 = private unnamed_addr constant [6 x i8] c"cdw15\00", align 1
@.compoundliteral.509 = internal constant [14 x { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr }] [{ ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.497, i64 0, i64 1, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint8, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.498, i64 1, i64 1, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint8, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.493, i64 2, i64 2, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint16, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.499, i64 4, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.500, i64 8, i64 8, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint64, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.501, i64 16, i64 8, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint64, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.502, i64 24, i64 16, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr null, i32 8, [4 x i8] zeroinitializer, ptr @nvme_vmstate_cmd_dptr, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.503, i64 40, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.504, i64 44, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.505, i64 48, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.506, i64 52, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.507, i64 56, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.508, i64 60, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr null, i64 0, i64 0, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr null, i32 131072, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }], align 8
@nvme_vmstate_cmd = internal constant { ptr, i8, i8, [2 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.496, i8 0, i8 0, [2 x i8] zeroinitializer, i32 1, i32 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.compoundliteral.509, ptr null }, align 8
@.str.511 = private unnamed_addr constant [22 x i8] c"nvme-request-cmd-dptr\00", align 1
@.str.512 = private unnamed_addr constant [5 x i8] c"prp1\00", align 1
@.str.513 = private unnamed_addr constant [5 x i8] c"prp2\00", align 1
@.str.514 = private unnamed_addr constant [4 x i8] c"sgl\00", align 1
@.compoundliteral.515 = internal constant [4 x { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr }] [{ ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.512, i64 0, i64 8, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint64, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.513, i64 8, i64 8, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint64, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.514, i64 0, i64 16, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr null, i32 8, [4 x i8] zeroinitializer, ptr @nvme_vmstate_cmd_dptr_sgl, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr null, i64 0, i64 0, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr null, i32 131072, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }], align 8
@nvme_vmstate_cmd_dptr = internal constant { ptr, i8, i8, [2 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.511, i8 0, i8 0, [2 x i8] zeroinitializer, i32 1, i32 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.compoundliteral.515, ptr null }, align 8
@.str.517 = private unnamed_addr constant [26 x i8] c"nvme-request-cmd-dptr-sgl\00", align 1
@.str.518 = private unnamed_addr constant [5 x i8] c"addr\00", align 1
@.str.519 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.520 = private unnamed_addr constant [5 x i8] c"rsvd\00", align 1
@.str.521 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.compoundliteral.522 = internal constant [5 x { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr }] [{ ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.518, i64 0, i64 8, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint64, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.519, i64 8, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.520, i64 12, i64 1, i64 0, i64 0, i32 3, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint8, i32 4, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.521, i64 15, i64 1, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint8, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr null, i64 0, i64 0, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr null, i32 131072, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }], align 8
@nvme_vmstate_cmd_dptr_sgl = internal constant { ptr, i8, i8, [2 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.517, i8 0, i8 0, [2 x i8] zeroinitializer, i32 1, i32 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.compoundliteral.522, ptr null }, align 8
@.str.524 = private unnamed_addr constant [17 x i8] c"nvme-async-event\00", align 1
@.compoundliteral.525 = internal constant [2 x { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr }] [{ ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.489, i64 16, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr null, i32 8, [4 x i8] zeroinitializer, ptr @nvme_vmstate_async_event_result, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr null, i64 0, i64 0, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr null, i32 131072, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }], align 8
@nvme_vmstate_async_event = internal constant { ptr, i8, i8, [2 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.524, i8 0, i8 0, [2 x i8] zeroinitializer, i32 1, i32 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.compoundliteral.525, ptr null }, align 8
@.str.527 = private unnamed_addr constant [24 x i8] c"nvme-async-event-result\00", align 1
@.str.528 = private unnamed_addr constant [11 x i8] c"event_type\00", align 1
@.str.529 = private unnamed_addr constant [11 x i8] c"event_info\00", align 1
@.str.530 = private unnamed_addr constant [9 x i8] c"log_page\00", align 1
@.str.531 = private unnamed_addr constant [5 x i8] c"resv\00", align 1
@.compoundliteral.532 = internal constant [5 x { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr }] [{ ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.528, i64 0, i64 1, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint8, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.529, i64 1, i64 1, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint8, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.530, i64 2, i64 1, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint8, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.531, i64 3, i64 1, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint8, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr null, i64 0, i64 0, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr null, i32 131072, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }], align 8
@nvme_vmstate_async_event_result = internal constant { ptr, i8, i8, [2 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.527, i8 0, i8 0, [2 x i8] zeroinitializer, i32 1, i32 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.compoundliteral.532, ptr null }, align 8
@.str.534 = private unnamed_addr constant [8 x i8] c"nvme-sq\00", align 1
@.str.535 = private unnamed_addr constant [5 x i8] c"sqid\00", align 1
@.str.536 = private unnamed_addr constant [5 x i8] c"cqid\00", align 1
@.str.537 = private unnamed_addr constant [5 x i8] c"head\00", align 1
@.str.538 = private unnamed_addr constant [5 x i8] c"tail\00", align 1
@.str.539 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.540 = private unnamed_addr constant [9 x i8] c"dma_addr\00", align 1
@.compoundliteral.541 = internal constant [7 x { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr }] [{ ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.535, i64 8, i64 2, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint16, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.536, i64 10, i64 2, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint16, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.537, i64 12, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.538, i64 16, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.539, i64 20, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.540, i64 24, i64 8, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint64, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr null, i64 0, i64 0, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr null, i32 131072, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }], align 8
@nvme_vmstate_squeue = internal constant { ptr, i8, i8, [2 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.534, i8 0, i8 0, [2 x i8] zeroinitializer, i32 1, i32 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.compoundliteral.541, ptr null }, align 8
@.str.543 = private unnamed_addr constant [8 x i8] c"nvme-cq\00", align 1
@.str.544 = private unnamed_addr constant [6 x i8] c"phase\00", align 1
@.str.545 = private unnamed_addr constant [12 x i8] c"irq_enabled\00", align 1
@.str.546 = private unnamed_addr constant [7 x i8] c"vector\00", align 1
@.str.547 = private unnamed_addr constant [9 x i8] c"req_list\00", align 1
@.compoundliteral.548 = internal constant [10 x { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr }] [{ ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.544, i64 8, i64 1, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint8, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.536, i64 10, i64 2, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint16, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.545, i64 12, i64 2, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint16, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.537, i64 16, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.538, i64 20, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.546, i64 24, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.539, i64 28, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.540, i64 32, i64 8, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint64, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.547, i64 96, i64 216, i64 0, i64 200, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_qtailq, i32 0, [4 x i8] zeroinitializer, ptr @nvme_vmstate_request, i32 1, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr null, i64 0, i64 0, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr null, i32 131072, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }], align 8
@nvme_vmstate_cqueue = internal constant { ptr, i8, i8, [2 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.543, i8 0, i8 0, [2 x i8] zeroinitializer, i32 1, i32 1, i32 0, ptr null, ptr @nvme_cqueue_pre_load, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.compoundliteral.548, ptr null }, align 8
@.str.550 = private unnamed_addr constant [9 x i8] c"nvme-hbs\00", align 1
@.str.551 = private unnamed_addr constant [5 x i8] c"acre\00", align 1
@.str.552 = private unnamed_addr constant [6 x i8] c"etdas\00", align 1
@.str.553 = private unnamed_addr constant [7 x i8] c"lbafee\00", align 1
@.str.554 = private unnamed_addr constant [6 x i8] c"rsvd3\00", align 1
@.str.555 = private unnamed_addr constant [5 x i8] c"cdfe\00", align 1
@.str.556 = private unnamed_addr constant [6 x i8] c"rsvd6\00", align 1
@.compoundliteral.557 = internal constant [7 x { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr }] [{ ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.551, i64 0, i64 1, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint8, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.552, i64 1, i64 1, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint8, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.553, i64 2, i64 1, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint8, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.554, i64 3, i64 1, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint8, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.555, i64 4, i64 2, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint16, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.556, i64 6, i64 1, i64 0, i64 0, i32 506, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint8, i32 4, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr null, i64 0, i64 0, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr null, i32 131072, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }], align 8
@nvme_vmstate_hbs = internal constant { ptr, i8, i8, [2 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.550, i8 0, i8 0, [2 x i8] zeroinitializer, i32 1, i32 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.compoundliteral.557, ptr null }, align 8
@__func__.nvme_pci_reset = private unnamed_addr constant [15 x i8] c"nvme_pci_reset\00", align 1
@_TRACE_PCI_NVME_PCI_RESET_DSTATE = external local_unnamed_addr global i16, align 2
@.str.559 = private unnamed_addr constant [45 x i8] c"pci_nvme_pci_reset PCI Function Level Reset\0A\00", align 1
@.str.560 = private unnamed_addr constant [16 x i8] c"hotplug-handler\00", align 1
@.compoundliteral.561 = internal constant [2 x %struct.InterfaceInfo] [%struct.InterfaceInfo { ptr @.str.560 }, %struct.InterfaceInfo zeroinitializer], align 8
@nvme_bus_info = internal constant { ptr, ptr, i64, i64, ptr, ptr, ptr, i8, [7 x i8], i64, ptr, ptr, ptr, ptr } { ptr @.str.55, ptr @.str.81, i64 120, i64 0, ptr null, ptr null, ptr null, i8 0, [7 x i8] zeroinitializer, i64 0, ptr @nvme_bus_class_init, ptr null, ptr null, ptr @.compoundliteral.561 }, align 8
@.str.563 = private unnamed_addr constant [52 x i8] c"/opt-bench/work/qemu/qemu/include/hw/core/hotplug.h\00", align 1
@__func__.HOTPLUG_HANDLER_CLASS = private unnamed_addr constant [22 x i8] c"HOTPLUG_HANDLER_CLASS\00", align 1
@.str.564 = private unnamed_addr constant [8 x i8] c"nvme-ns\00", align 1
@__func__.nvme_ns_hot_plug = private unnamed_addr constant [17 x i8] c"nvme_ns_hot_plug\00", align 1
@__func__.nvme_ns_hot_unplug = private unnamed_addr constant [19 x i8] c"nvme_ns_hot_unplug\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @do_qemu_init_nvme_register_types, ptr null }]
@.str.565 = private unnamed_addr constant [16 x i8] c"no_coroutine_fn\00", section "llvm.metadata"
@.str.566 = private unnamed_addr constant [51 x i8] c"/opt-bench/work/qemu/qemu/include/block/block-io.h\00", section "llvm.metadata"
@.str.567 = private unnamed_addr constant [19 x i8] c"coroutine_mixed_fn\00", section "llvm.metadata"
@.str.568 = private unnamed_addr constant [60 x i8] c"/opt-bench/work/qemu/qemu/include/system/block-backend-io.h\00", section "llvm.metadata"
@llvm.global.annotations = appending global [4 x { ptr, ptr, ptr, i32, ptr }] [{ ptr, ptr, ptr, i32, ptr } { ptr @bdrv_block_status, ptr @.str.565, ptr @.str.566, i32 136, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_block_status, ptr @.str.567, ptr @.str.566, i32 136, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @blk_flush, ptr @.str.565, ptr @.str.568, i32 225, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @blk_flush, ptr @.str.567, ptr @.str.568, i32 225, ptr null }], section "llvm.metadata"

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext range(i16 0, 16404) i16 @nvme_map_dptr(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.b = load i8, ptr %i.a, align 1
  %i.c = lshr i8 %i.b, 6
  switch i8 %i.c, label %default.unreachable37 [
    i8 0, label %bb.b
    i8 1, label %bb.al
    i8 2, label %bb.al
    i8 3, label %nvme_map_prp.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.e = load i64, ptr %i.d, align 1              ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.g = load i64, ptr %i.f, align 1              ; 7 uses
  %i.h = trunc i64 %2 to i32                      ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 7620 ; 5 uses
  %i.j = load i32, ptr %i.i, align 4
  %i.k = zext i32 %i.j to i64                     ; 2 uses
  %i.l = urem i64 %i.e, %i.k
  %i.m = sub nsw i64 %i.k, %i.l
  %i.n = and i64 %2, 4294967295
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.n) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 7624 ; 2 uses
  %i.q = load i16, ptr %i.p, align 8
  %i.r = zext nneg i16 %i.q to i32
  %i.s = lshr i32 %i.h, %i.r
  %i.t = add i32 %i.s, 1
  %i.u = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i, label %trace_pci_nvme_map_prp.exit.i, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.v = load i16, ptr @_TRACE_PCI_NVME_MAP_PRP_DSTATE, align 2
  %.not5.i.i = icmp eq i16 %i.v, 0
  br i1 %.not5.i.i, label %trace_pci_nvme_map_prp.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr @qemu_loglevel, align 4
  %i.x = and i32 %i.w, 32768
  %.not6.i.i = icmp eq i32 %i.x, 0
  br i1 %.not6.i.i, label %trace_pci_nvme_map_prp.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.8, i64 noundef range(i64 -4294967294, 4294967296) %i.o, i32 noundef %i.h, i64 noundef %i.e, i64 noundef %i.g, i32 noundef %i.t) #23
  br label %trace_pci_nvme_map_prp.exit.i

trace_pci_nvme_map_prp.exit.i:                    ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 11064
  %i.z = load i8, ptr %i.y, align 8, !range !8, !noundef !9
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.f, label %nvme_addr_is_cmb.exit.thread.i.i

bb.f:                                             ; preds = %trace_pci_nvme_map_prp.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 10896
  %i.ac = load i128, ptr %i.ab, align 16          ; 2 uses
  %i.ad = icmp ult i128 %i.ac, 18446744073709551616
  br i1 %i.ad, label %nvme_addr_is_cmb.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 31, ptr noundef nonnull @__PRETTY_FUNCTION__.int128_get64) #24
  unreachable

nvme_addr_is_cmb.exit.i.i:                        ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 7461
  %i.af = load i8, ptr %i.ae, align 1, !range !8, !noundef !9
  %i.ag = trunc nuw i8 %i.af to i1
  %.in.v.i.i.i = select i1 %i.ag, i64 10912, i64 11072
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v.i.i.i
  %i.ah = load i64, ptr %.in.i.i.i, align 16      ; 2 uses
  %i.ai = trunc nuw i128 %i.ac to i64
  %i.aj = add i64 %i.ah, %i.ai
  %i.ak = icmp uge i64 %i.e, %i.ah
  %i.al = icmp ult i64 %i.e, %i.aj
  %i.am = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %i.am, label %nvme_addr_is_dma.exit.thread154.i, label %nvme_addr_is_cmb.exit.thread.i.i

nvme_addr_is_dma.exit.thread154.i:                ; preds = %nvme_addr_is_cmb.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.k

nvme_addr_is_cmb.exit.thread.i.i:                 ; preds = %nvme_addr_is_cmb.exit.i.i, %trace_pci_nvme_map_prp.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 11096
  %i.ap = load i8, ptr %i.ao, align 8, !range !8, !noundef !9
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.h, label %nvme_addr_is_dma.exit.thread.i

nvme_addr_is_dma.exit.thread.i:                   ; preds = %nvme_addr_is_cmb.exit.thread.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.j

bb.h:                                             ; preds = %nvme_addr_is_cmb.exit.thread.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 11088
  %i.at = load ptr, ptr %i.as, align 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 224
  %i.av = load i128, ptr %i.au, align 16          ; 2 uses
  %i.aw = icmp ult i128 %i.av, 18446744073709551616
  br i1 %i.aw, label %nvme_addr_is_dma.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 31, ptr noundef nonnull @__PRETTY_FUNCTION__.int128_get64) #24
  unreachable

nvme_addr_is_dma.exit.i:                          ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 11104
  %i.ay = load i64, ptr %i.ax, align 16           ; 2 uses
  %i.az = trunc nuw i128 %i.av to i64
  %i.ba = add i64 %i.ay, %i.az
  %i.bb = icmp ult i64 %i.e, %i.ay
  %i.bc = icmp uge i64 %i.e, %i.ba
  %.not7.i.i = select i1 %i.bb, i1 true, i1 %i.bc
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %.not7.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %nvme_addr_is_dma.exit.i, %nvme_addr_is_dma.exit.thread.i
  %i.be = phi ptr [ %i.ar, %nvme_addr_is_dma.exit.thread.i ], [ %i.bd, %nvme_addr_is_dma.exit.i ] ; 2 uses
  %i.bf = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %0, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 12, ptr noundef nonnull @__func__.PCI_DEVICE) #23 ; 2 uses
  %i.bg = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.bf, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #23
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 576
  tail call void @qemu_sglist_init(ptr noundef nonnull %i.be, ptr noundef %i.bg, i32 noundef 0, ptr noundef nonnull %i.bh) #23
  br label %nvme_sg_init.exit.i

bb.k:                                             ; preds = %nvme_addr_is_dma.exit.i, %nvme_addr_is_dma.exit.thread154.i
  %i.bi = phi ptr [ %i.an, %nvme_addr_is_dma.exit.thread154.i ], [ %i.bd, %nvme_addr_is_dma.exit.i ] ; 2 uses
  tail call void @qemu_iovec_init(ptr noundef nonnull %i.bi, i32 noundef 0) #23
  %.pre.i.i = load i32, ptr %1, align 8
  %i.bj = or i32 %.pre.i.i, 1
  br label %nvme_sg_init.exit.i

nvme_sg_init.exit.i:                              ; preds = %bb.k, %bb.j
  %i.bk = phi ptr [ %i.bi, %bb.k ], [ %i.be, %bb.j ] ; 2 uses
  %i.bl = phi i32 [ %i.bj, %bb.k ], [ 3, %bb.j ]
  store i32 %i.bl, ptr %1, align 8
  %i.bm = tail call fastcc zeroext i16 @nvme_map_addr(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %i.e, i64 noundef %i.o) ; 2 uses
  %.not.i = icmp eq i16 %i.bm, 0
  br i1 %.not.i, label %bb.l, label %bb.ag

bb.l:                                             ; preds = %nvme_sg_init.exit.i
  %i.bn = trunc nuw i64 %i.o to i32
  %i.bo = sub i32 %i.h, %i.bn                     ; 4 uses
  %.not136.i = icmp eq i32 %i.bo, 0
  br i1 %.not136.i, label %nvme_map_prp.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = load i32, ptr %i.i, align 4             ; 2 uses
  %i.bq = icmp ugt i32 %i.bo, %i.bp
  br i1 %i.bq, label %bb.n, label %bb.ad

bb.n:                                             ; preds = %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 7626 ; 3 uses
  %i.bs = load i16, ptr %i.br, align 2
  %i.bt = zext i16 %i.bs to i64
  %i.bu = tail call noalias ptr @g_malloc_n(i64 noundef %i.bt, i64 noundef 8) #25 ; 6 uses
  %i.bv = load i32, ptr %i.i, align 4             ; 2 uses
  %i.bw = zext i32 %i.bv to i64
  %i.bx = add i32 %i.bv, -1
  %i.by = zext i32 %i.bx to i64
  %i.bz = and i64 %i.g, %i.by
  %i.ca = sub nsw i64 %i.bw, %i.bz
  %i.cb = lshr i64 %i.ca, 3
  %i.cc = trunc i64 %i.cb to i32                  ; 2 uses
  %i.cd = load i16, ptr %i.br, align 2
  %i.ce = zext i16 %i.cd to i32
  %i.cf = tail call i32 @llvm.umin.i32(i32 %i.ce, i32 %i.cc)
  %i.cg = shl nuw nsw i32 %i.cf, 3
  %i.ch = tail call fastcc i32 @nvme_addr_read(ptr noundef nonnull %0, i64 noundef %i.g, ptr noundef %i.bu, i32 noundef %i.cg)
  %.not139.i = icmp eq i32 %i.ch, 0
  br i1 %.not139.i, label %.preheader.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ci = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i145.i = icmp eq i32 %i.ci, 0
  br i1 %.not.i145.i, label %trace_pci_nvme_err_addr_read.exit.thread.i, label %bb.p, !prof !7

bb.p:                                             ; preds = %bb.o
  %i.cj = load i16, ptr @_TRACE_PCI_NVME_ERR_ADDR_READ_DSTATE, align 2
  %.not1.i.i = icmp eq i16 %i.cj, 0
  br i1 %.not1.i.i, label %trace_pci_nvme_err_addr_read.exit.thread.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ck = load i32, ptr @qemu_loglevel, align 4
  %i.cl = and i32 %i.ck, 32768
  %.not2.i.i = icmp eq i32 %i.cl, 0
  br i1 %.not2.i.i, label %trace_pci_nvme_err_addr_read.exit.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.19, i64 noundef %i.g) #23
  br label %trace_pci_nvme_err_addr_read.exit.thread.i

.preheader.i:                                     ; preds = %bb.n, %trace_pci_nvme_err_addr_read.exit149.i
  %.0116170.i = phi i32 [ %i.dq, %trace_pci_nvme_err_addr_read.exit149.i ], [ %i.bo, %bb.n ] ; 4 uses
  %.0122169.i = phi i32 [ %i.dr, %trace_pci_nvme_err_addr_read.exit149.i ], [ 0, %bb.n ] ; 3 uses
  %.0125168.i = phi i32 [ %.1126.i, %trace_pci_nvme_err_addr_read.exit149.i ], [ %i.cc, %bb.n ] ; 2 uses
  %i.cm = sext i32 %.0122169.i to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8            ; 5 uses
  %i.cp = add i32 %.0125168.i, -1
  %i.cq = icmp eq i32 %.0122169.i, %i.cp
  %.pre179.i = load i32, ptr %i.i, align 4        ; 3 uses
  %i.cr = icmp ugt i32 %.0116170.i, %.pre179.i
  %or.cond.i = select i1 %i.cq, i1 %i.cr, i1 false
  br i1 %or.cond.i, label %bb.s, label %bb.aa

bb.s:                                             ; preds = %.preheader.i
  %i.cs = add i32 %.pre179.i, -1                  ; 2 uses
  %i.ct = zext i32 %i.cs to i64
  %i.cu = and i64 %i.co, %i.ct
  %.not141.i = icmp eq i64 %i.cu, 0
  br i1 %.not141.i, label %bb.u, label %bb.t, !prof !7

bb.t:                                             ; preds = %bb.s
  tail call fastcc void @trace_pci_nvme_err_invalid_prplist_ent(i64 noundef %i.co)
  br label %trace_pci_nvme_err_addr_read.exit.thread.i

bb.u:                                             ; preds = %bb.s
  %i.cv = add i32 %i.cs, %.0116170.i
  %i.cw = load i16, ptr %i.p, align 8
  %i.cx = zext nneg i16 %i.cw to i32
  %i.cy = lshr i32 %i.cv, %i.cx
  %i.cz = load i16, ptr %i.br, align 2
  %i.da = zext i16 %i.cz to i32
  %i.db = tail call i32 @llvm.umin.i32(i32 %i.cy, i32 %i.da) ; 2 uses
  %i.dc = shl nuw nsw i32 %i.db, 3
  %i.dd = tail call fastcc i32 @nvme_addr_read(ptr noundef nonnull %0, i64 noundef %i.co, ptr noundef nonnull %i.bu, i32 noundef %i.dc)
  %.not142.i = icmp eq i32 %i.dd, 0
  br i1 %.not142.i, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.de = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i146.i = icmp eq i32 %i.de, 0
  br i1 %.not.i146.i, label %trace_pci_nvme_err_addr_read.exit.thread.i, label %bb.w, !prof !7

bb.w:                                             ; preds = %bb.v
  %i.df = load i16, ptr @_TRACE_PCI_NVME_ERR_ADDR_READ_DSTATE, align 2
  %.not1.i147.i = icmp eq i16 %i.df, 0
  br i1 %.not1.i147.i, label %trace_pci_nvme_err_addr_read.exit.thread.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dg = load i32, ptr @qemu_loglevel, align 4
  %i.dh = and i32 %i.dg, 32768
  %.not2.i148.i = icmp eq i32 %i.dh, 0
  br i1 %.not2.i148.i, label %trace_pci_nvme_err_addr_read.exit.thread.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.19, i64 noundef %i.co) #23
  br label %trace_pci_nvme_err_addr_read.exit.thread.i

bb.z:                                             ; preds = %bb.u
  %i.di = load i64, ptr %i.bu, align 8
  %.pre.i = load i32, ptr %i.i, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.preheader.i
  %i.dj = phi i32 [ %.pre.i, %bb.z ], [ %.pre179.i, %.preheader.i ] ; 2 uses
  %.1126.i = phi i32 [ %i.db, %bb.z ], [ %.0125168.i, %.preheader.i ]
  %.1123.i = phi i32 [ 0, %bb.z ], [ %.0122169.i, %.preheader.i ]
  %.0120.i = phi i64 [ %i.di, %bb.z ], [ %i.co, %.preheader.i ] ; 3 uses
  %i.dk = add i32 %i.dj, -1
  %i.dl = zext i32 %i.dk to i64
  %i.dm = and i64 %.0120.i, %i.dl
  %.not143.i = icmp eq i64 %i.dm, 0
  br i1 %.not143.i, label %bb.ac, label %bb.ab, !prof !7

bb.ab:                                            ; preds = %bb.aa
  tail call fastcc void @trace_pci_nvme_err_invalid_prplist_ent(i64 noundef %.0120.i)
  br label %trace_pci_nvme_err_addr_read.exit.thread.i

bb.ac:                                            ; preds = %bb.aa
  %i.dn = tail call i32 @llvm.umin.i32(i32 %.0116170.i, i32 %i.dj) ; 2 uses
  %i.do = zext i32 %i.dn to i64
  %i.dp = tail call fastcc zeroext i16 @nvme_map_addr(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %.0120.i, i64 noundef %i.do) ; 2 uses
  %.not144.i = icmp eq i16 %i.dp, 0
  br i1 %.not144.i, label %trace_pci_nvme_err_addr_read.exit149.i, label %trace_pci_nvme_err_addr_read.exit.thread.i

trace_pci_nvme_err_addr_read.exit149.i:           ; preds = %bb.ac
  %i.dq = sub i32 %.0116170.i, %i.dn              ; 2 uses
  %i.dr = add i32 %.1123.i, 1
  %.not140.i = icmp eq i32 %i.dq, 0
  br i1 %.not140.i, label %trace_pci_nvme_err_addr_read.exit.i, label %.preheader.i, !llvm.loop !10

trace_pci_nvme_err_addr_read.exit.thread.i:       ; preds = %bb.ac, %bb.ab, %bb.y, %bb.x, %bb.w, %bb.v, %bb.t, %bb.r, %bb.q, %bb.p, %bb.o
  %.2.ph.i = phi i16 [ 4, %bb.r ], [ 4, %bb.q ], [ 4, %bb.p ], [ 4, %bb.o ], [ 4, %bb.y ], [ 4, %bb.x ], [ 4, %bb.w ], [ 4, %bb.v ], [ 16403, %bb.ab ], [ 16403, %bb.t ], [ %i.dp, %bb.ac ]
  tail call void @g_free(ptr noundef %i.bu) #23
  br label %bb.ag

trace_pci_nvme_err_addr_read.exit.i:              ; preds = %trace_pci_nvme_err_addr_read.exit149.i
  tail call void @g_free(ptr noundef nonnull %i.bu) #23
  br label %nvme_map_prp.exit

bb.ad:                                            ; preds = %bb.m
  %i.ds = add i32 %i.bp, -1
  %i.dt = zext i32 %i.ds to i64
  %i.du = and i64 %i.g, %i.dt
  %.not137.i = icmp eq i64 %i.du, 0
  br i1 %.not137.i, label %bb.af, label %bb.ae, !prof !7

bb.ae:                                            ; preds = %bb.ad
  tail call fastcc void @trace_pci_nvme_err_invalid_prp2_align(i64 noundef %i.g)
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.dv = zext i32 %i.bo to i64
  %i.dw = tail call fastcc zeroext i16 @nvme_map_addr(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %i.g, i64 noundef %i.dv) ; 2 uses
  %.not138.i = icmp eq i16 %i.dw, 0
  br i1 %.not138.i, label %nvme_map_prp.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %trace_pci_nvme_err_addr_read.exit.thread.i, %nvme_sg_init.exit.i
  %.3.i = phi i16 [ %i.bm, %nvme_sg_init.exit.i ], [ %.2.ph.i, %trace_pci_nvme_err_addr_read.exit.thread.i ], [ 16403, %bb.ae ], [ %i.dw, %bb.af ] ; 2 uses
  %i.dx = load i32, ptr %1, align 8               ; 2 uses
  %i.dy = and i32 %i.dx, 1
  %.not.i150.i = icmp eq i32 %i.dy, 0
  br i1 %.not.i150.i, label %nvme_map_prp.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dz = and i32 %i.dx, 2
  %.not5.i151.i = icmp eq i32 %i.dz, 0
  br i1 %.not5.i151.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @qemu_sglist_destroy(ptr noundef nonnull %i.bk) #23
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  tail call void @qemu_iovec_destroy(ptr noundef nonnull %i.bk) #23
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, i8 noundef 0, i64 noundef 48, i1 noundef false) #23
  br label %nvme_map_prp.exit

bb.al:                                            ; preds = %bb.a, %bb.a
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.eb = load i64, ptr %i.ea, align 1
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ed = load i64, ptr %i.ec, align 1
  %i.ee = tail call fastcc zeroext i16 @nvme_map_sgl(ptr noundef %0, ptr noundef %1, i64 %i.eb, i64 %i.ed, i64 noundef %2)
  br label %nvme_map_prp.exit

default.unreachable37:                            ; preds = %bb.a
  unreachable

nvme_map_prp.exit:                                ; preds = %bb.ak, %bb.ag, %bb.af, %trace_pci_nvme_err_addr_read.exit.i, %bb.l, %bb.a, %bb.al
  %.0 = phi i16 [ 2, %bb.a ], [ %i.ee, %bb.al ], [ 0, %bb.l ], [ 0, %trace_pci_nvme_err_addr_read.exit.i ], [ 0, %bb.af ], [ %.3.i, %bb.ag ], [ %.3.i, %bb.ak ]
  ret i16 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext range(i16 0, 16403) i16 @nvme_map_sgl(ptr noundef %0, ptr noundef %1, i64 %2, i64 %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.NvmeSglDescriptor, align 8  ; 3 uses
  %i.a = alloca i64, align 8                      ; 11 uses
  %6 = alloca [256 x %struct.NvmeSglDescriptor], align 16 ; 8 uses
  store i64 %2, ptr %5, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %3, ptr %i.b, align 8
  store i64 %4, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %sum.shift = lshr i64 %3, 60                    ; 2 uses
  %i.c = trunc nuw nsw i64 %sum.shift to i8
  %i.d = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.d, 0
  %i.e = trunc i64 %3 to i32                      ; 2 uses
  br i1 %.not.i, label %trace_pci_nvme_map_sgl.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.f = load i16, ptr @_TRACE_PCI_NVME_MAP_SGL_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.f, 0
  br i1 %.not2.i, label %trace_pci_nvme_map_sgl.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr @qemu_loglevel, align 4
  %i.h = and i32 %i.g, 32768
  %.not3.i = icmp eq i32 %i.h, 0
  br i1 %.not3.i, label %trace_pci_nvme_map_sgl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = trunc nuw nsw i64 %sum.shift to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.22, i32 noundef %i.i, i64 noundef %4) #23
  br label %trace_pci_nvme_map_sgl.exit

trace_pci_nvme_map_sgl.exit:                      ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 11064
  %i.k = load i8, ptr %i.j, align 8, !range !8, !noundef !9
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.e, label %nvme_addr_is_cmb.exit.thread.i

bb.e:                                             ; preds = %trace_pci_nvme_map_sgl.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 10896
  %i.n = load i128, ptr %i.m, align 16            ; 2 uses
  %i.o = icmp ult i128 %i.n, 18446744073709551616
  br i1 %i.o, label %nvme_addr_is_cmb.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 31, ptr noundef nonnull @__PRETTY_FUNCTION__.int128_get64) #24
  unreachable

nvme_addr_is_cmb.exit.i:                          ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 7461
  %i.q = load i8, ptr %i.p, align 1, !range !8, !noundef !9
  %i.r = trunc nuw i8 %i.q to i1
  %.in.v.i.i = select i1 %i.r, i64 10912, i64 11072
  %.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v.i.i
  %i.s = load i64, ptr %.in.i.i, align 16         ; 2 uses
  %i.t = trunc nuw i128 %i.n to i64
  %i.u = add i64 %i.s, %i.t
  %i.v = icmp uge i64 %2, %i.s
  %i.w = icmp ult i64 %2, %i.u
  %i.x = select i1 %i.v, i1 %i.w, i1 false
  br i1 %i.x, label %nvme_addr_is_dma.exit.thread1, label %nvme_addr_is_cmb.exit.thread.i

nvme_addr_is_dma.exit.thread1:                    ; preds = %nvme_addr_is_cmb.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.j

nvme_addr_is_cmb.exit.thread.i:                   ; preds = %nvme_addr_is_cmb.exit.i, %trace_pci_nvme_map_sgl.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 11096
  %i.aa = load i8, ptr %i.z, align 8, !range !8, !noundef !9
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.g, label %nvme_addr_is_dma.exit.thread

nvme_addr_is_dma.exit.thread:                     ; preds = %nvme_addr_is_cmb.exit.thread.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.i

bb.g:                                             ; preds = %nvme_addr_is_cmb.exit.thread.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 11088
  %i.ae = load ptr, ptr %i.ad, align 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 224
  %i.ag = load i128, ptr %i.af, align 16          ; 2 uses
  %i.ah = icmp ult i128 %i.ag, 18446744073709551616
  br i1 %i.ah, label %nvme_addr_is_dma.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 31, ptr noundef nonnull @__PRETTY_FUNCTION__.int128_get64) #24
  unreachable

nvme_addr_is_dma.exit:                            ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 11104
  %i.aj = load i64, ptr %i.ai, align 16           ; 2 uses
  %i.ak = trunc nuw i128 %i.ag to i64
  %i.al = add i64 %i.aj, %i.ak
  %i.am = icmp ult i64 %2, %i.aj
  %i.an = icmp uge i64 %2, %i.al
  %.not7.i = select i1 %i.am, i1 true, i1 %i.an
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %.not7.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %nvme_addr_is_dma.exit.thread, %nvme_addr_is_dma.exit
  %i.ap = phi ptr [ %i.ac, %nvme_addr_is_dma.exit.thread ], [ %i.ao, %nvme_addr_is_dma.exit ] ; 2 uses
  %i.aq = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %0, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 12, ptr noundef nonnull @__func__.PCI_DEVICE) #23 ; 2 uses
  %i.ar = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.aq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #23
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 576
  tail call void @qemu_sglist_init(ptr noundef nonnull %i.ap, ptr noundef %i.ar, i32 noundef 0, ptr noundef nonnull %i.as) #23
  br label %nvme_sg_init.exit

bb.j:                                             ; preds = %nvme_addr_is_dma.exit.thread1, %nvme_addr_is_dma.exit
  %i.at = phi ptr [ %i.y, %nvme_addr_is_dma.exit.thread1 ], [ %i.ao, %nvme_addr_is_dma.exit ] ; 2 uses
  tail call void @qemu_iovec_init(ptr noundef nonnull %i.at, i32 noundef 0) #23
  %.pre.i = load i32, ptr %1, align 8
  %i.au = or i32 %.pre.i, 1
  br label %nvme_sg_init.exit

nvme_sg_init.exit:                                ; preds = %bb.i, %bb.j
  %i.av = phi ptr [ %i.at, %bb.j ], [ %i.ap, %bb.i ] ; 2 uses
  %i.aw = phi i32 [ %i.au, %bb.j ], [ 3, %bb.i ]
  store i32 %i.aw, ptr %1, align 8
  %i.ax = icmp ult i64 %3, 1152921504606846976
  br i1 %i.ax, label %.lr.ph.i, label %trace_pci_nvme_err_addr_read.exit.preheader

trace_pci_nvme_err_addr_read.exit.preheader:      ; preds = %nvme_sg_init.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 27048
  br label %trace_pci_nvme_err_addr_read.exit

.lr.ph.i:                                         ; preds = %nvme_sg_init.exit
  switch i8 %i.c, label %nvme_map_sgl_data.exit.thread [
    i8 0, label %bb.k
    i8 2, label %.thread.loopexit.i
    i8 3, label %.thread.loopexit.i
  ]

bb.k:                                             ; preds = %.lr.ph.i
  %.not.i79 = icmp eq i32 %i.e, 0
  br i1 %.not.i79, label %nvme_map_sgl_data.exit, label %bb.l, !llvm.loop !12

bb.l:                                             ; preds = %bb.k
  %i.az = icmp eq i64 %4, 0
  br i1 %i.az, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 27048
  %i.bb = load i32, ptr %i.ba, align 8
  %i.bc = and i32 %i.bb, 262144
  %.not43.i = icmp eq i32 %i.bc, 0
  br i1 %.not43.i, label %bb.n, label %nvme_sg_unmap.exit

bb.n:                                             ; preds = %bb.m
  %i.bd = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i, label %nvme_map_sgl_data.exit.thread, label %bb.o, !prof !7

bb.o:                                             ; preds = %bb.n
  %i.be = load i16, ptr @_TRACE_PCI_NVME_ERR_INVALID_SGL_EXCESS_LENGTH_DSTATE, align 2
  %.not1.i.i = icmp eq i16 %i.be, 0
  br i1 %.not1.i.i, label %nvme_map_sgl_data.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bf = load i32, ptr @qemu_loglevel, align 4
  %i.bg = and i32 %i.bf, 32768
  %.not2.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not2.i.i, label %nvme_map_sgl_data.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.23, i32 noundef range(i32 1, 0) %i.e) #23
  br label %nvme_map_sgl_data.exit.thread

bb.r:                                             ; preds = %bb.l
  %i.bh = and i64 %3, 4294967295                  ; 2 uses
  %i.bi = tail call i64 @llvm.umin.i64(i64 %4, i64 %i.bh) ; 2 uses
  %i.bj = xor i64 %2, -1
  %i.bk = icmp ugt i64 %i.bh, %i.bj
  br i1 %i.bk, label %nvme_map_sgl_data.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bl = tail call fastcc zeroext i16 @nvme_map_addr(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef %i.bi) ; 2 uses
  %.not42.i = icmp eq i16 %i.bl, 0
  br i1 %.not42.i, label %bb.t, label %nvme_map_sgl_data.exit.thread

bb.t:                                             ; preds = %bb.s
  %i.bm = sub i64 %4, %i.bi                       ; 2 uses
  store i64 %i.bm, ptr %i.a, align 8
  br label %nvme_map_sgl_data.exit, !llvm.loop !12

.thread.loopexit.i:                               ; preds = %.lr.ph.i, %.lr.ph.i
  br label %nvme_map_sgl_data.exit.thread

trace_pci_nvme_err_addr_read.exit:                ; preds = %trace_pci_nvme_err_addr_read.exit.preheader, %bb.at
  %.promoted43 = phi i64 [ %i.ds, %bb.at ], [ %4, %trace_pci_nvme_err_addr_read.exit.preheader ] ; 3 uses
  %.055 = phi ptr [ %i.dj, %bb.at ], [ %5, %trace_pci_nvme_err_addr_read.exit.preheader ] ; 2 uses
  %.050 = phi i64 [ %i.dq, %bb.at ], [ %2, %trace_pci_nvme_err_addr_read.exit.preheader ] ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.055, i64 15 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = and i8 %i.bo, -32
  %switch = icmp eq i8 %i.bp, 32
  br i1 %switch, label %bb.u, label %nvme_sg_unmap.exit

bb.u:                                             ; preds = %trace_pci_nvme_err_addr_read.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %.055, i64 8
  %i.br = load i32, ptr %i.bq, align 1            ; 4 uses
  %.not = icmp ne i32 %i.br, 0
  %i.bs = and i32 %i.br, 15
  %.not68 = icmp eq i32 %i.bs, 0
  %or.cond = and i1 %.not, %.not68
  br i1 %or.cond, label %bb.v, label %nvme_sg_unmap.exit

bb.v:                                             ; preds = %bb.u
  %i.bt = xor i64 %.050, -1
  %i.bu = zext i32 %i.br to i64                   ; 2 uses
  %i.bv = icmp ult i64 %i.bt, %i.bu
  br i1 %i.bv, label %nvme_sg_unmap.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bw = lshr exact i64 %i.bu, 4                 ; 2 uses
  %i.bx = icmp ugt i32 %i.br, 4096
  br i1 %i.bx, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.w, %nvme_map_sgl_data.exit92
  %.151 = phi i64 [ %i.da, %nvme_map_sgl_data.exit92 ], [ %.050, %bb.w ] ; 3 uses
  %.05450 = phi i64 [ %i.cz, %nvme_map_sgl_data.exit92 ], [ %i.bw, %bb.w ]
  %.lcssa424449 = phi i64 [ %.lcssa4245, %nvme_map_sgl_data.exit92 ], [ %.promoted43, %bb.w ] ; 2 uses
  %i.by = call fastcc i32 @nvme_addr_read(ptr noundef %0, i64 noundef %.151, ptr noundef nonnull %6, i32 noundef 4096)
  %.not72 = icmp eq i32 %i.by, 0
  br i1 %.not72, label %.lr.ph.i82, label %bb.x

bb.x:                                             ; preds = %.lr.ph
  store i64 %.lcssa424449, ptr %i.a, align 8
  %i.bz = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i80 = icmp eq i32 %i.bz, 0
  br i1 %.not.i80, label %nvme_map_sgl_data.exit.thread, label %bb.y, !prof !7

bb.y:                                             ; preds = %bb.x
  %i.ca = load i16, ptr @_TRACE_PCI_NVME_ERR_ADDR_READ_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.ca, 0
  br i1 %.not1.i, label %nvme_map_sgl_data.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cb = load i32, ptr @qemu_loglevel, align 4
  %i.cc = and i32 %i.cb, 32768
  %.not2.i81 = icmp eq i32 %i.cc, 0
  br i1 %.not2.i81, label %nvme_map_sgl_data.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.19, i64 noundef %.151) #23
  br label %nvme_map_sgl_data.exit.thread

.lr.ph.i82:                                       ; preds = %.lr.ph, %trace_pci_nvme_err_invalid_sgl_excess_length.exit.i87
  %indvars.iv = phi i64 [ %indvars.iv.next, %trace_pci_nvme_err_invalid_sgl_excess_length.exit.i87 ], [ 0, %.lr.ph ] ; 2 uses
  %i.cd = phi i64 [ %i.cy, %trace_pci_nvme_err_invalid_sgl_excess_length.exit.i87 ], [ %.lcssa424449, %.lr.ph ] ; 6 uses
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %indvars.iv ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 15
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = lshr i8 %i.cg, 4
  switch i8 %i.ch, label %nvme_map_sgl_data.exit.thread.loopexit [
    i8 0, label %bb.ab
    i8 2, label %.thread.loopexit.i84
    i8 3, label %.thread.loopexit.i84
  ]

bb.ab:                                            ; preds = %.lr.ph.i82
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cj = load i32, ptr %i.ci, align 8            ; 3 uses
  %.not.i85 = icmp eq i32 %i.cj, 0
  br i1 %.not.i85, label %trace_pci_nvme_err_invalid_sgl_excess_length.exit.i87, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ck = icmp eq i64 %i.cd, 0
  br i1 %i.ck, label %bb.ad, label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  %i.cl = load i32, ptr %i.ay, align 8
  %i.cm = and i32 %i.cl, 262144
  %.not43.i88 = icmp eq i32 %i.cm, 0
  br i1 %.not43.i88, label %bb.ae, label %nvme_map_sgl_data.exit92

bb.ae:                                            ; preds = %bb.ad
  store i64 0, ptr %i.a, align 8
  %i.cn = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i89 = icmp eq i32 %i.cn, 0
  br i1 %.not.i.i89, label %nvme_map_sgl_data.exit.thread, label %bb.af, !prof !7

bb.af:                                            ; preds = %bb.ae
  %i.co = load i16, ptr @_TRACE_PCI_NVME_ERR_INVALID_SGL_EXCESS_LENGTH_DSTATE, align 2
  %.not1.i.i90 = icmp eq i16 %i.co, 0
  br i1 %.not1.i.i90, label %nvme_map_sgl_data.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cp = load i32, ptr @qemu_loglevel, align 4
  %i.cq = and i32 %i.cp, 32768
  %.not2.i.i91 = icmp eq i32 %i.cq, 0
  br i1 %.not2.i.i91, label %nvme_map_sgl_data.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.23, i32 noundef range(i32 1, 0) %i.cj) #23
  br label %nvme_map_sgl_data.exit.thread

bb.ai:                                            ; preds = %bb.ac
  %i.cr = zext i32 %i.cj to i64                   ; 2 uses
  %i.cs = call i64 @llvm.umin.i64(i64 %i.cd, i64 %i.cr) ; 2 uses
  %i.ct = load i64, ptr %i.ce, align 16           ; 2 uses
  %i.cu = xor i64 %i.ct, -1
  %i.cv = icmp ult i64 %i.cu, %i.cr
  br i1 %i.cv, label %nvme_map_sgl_data.exit.thread.loopexit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cw = call fastcc zeroext i16 @nvme_map_addr(ptr noundef readonly %0, ptr noundef nonnull %1, i64 noundef %i.ct, i64 noundef %i.cs) ; 2 uses
  %.not42.i86 = icmp eq i16 %i.cw, 0
  br i1 %.not42.i86, label %bb.ak, label %nvme_map_sgl_data.exit.thread.loopexit

bb.ak:                                            ; preds = %bb.aj
  %i.cx = sub i64 %i.cd, %i.cs
  br label %trace_pci_nvme_err_invalid_sgl_excess_length.exit.i87

trace_pci_nvme_err_invalid_sgl_excess_length.exit.i87: ; preds = %bb.ak, %bb.ab
  %i.cy = phi i64 [ %i.cx, %bb.ak ], [ %i.cd, %bb.ab ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond.not, label %nvme_map_sgl_data.exit92, label %.lr.ph.i82, !llvm.loop !12

.thread.loopexit.i84:                             ; preds = %.lr.ph.i82, %.lr.ph.i82
  store i64 %i.cd, ptr %i.a, align 8
  br label %nvme_map_sgl_data.exit.thread

nvme_map_sgl_data.exit92:                         ; preds = %trace_pci_nvme_err_invalid_sgl_excess_length.exit.i87, %bb.ad
  %.lcssa4245 = phi i64 [ 0, %bb.ad ], [ %i.cy, %trace_pci_nvme_err_invalid_sgl_excess_length.exit.i87 ] ; 2 uses
  %i.cz = add nsw i64 %.05450, -256               ; 3 uses
  %i.da = add i64 %.151, 4096                     ; 2 uses
  %i.db = icmp ugt i64 %i.cz, 256
  br i1 %i.db, label %.lr.ph, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %nvme_map_sgl_data.exit92, %bb.w
  %.lcssa4244.lcssa = phi i64 [ %.promoted43, %bb.w ], [ %.lcssa4245, %nvme_map_sgl_data.exit92 ]
  %.054.lcssa = phi i64 [ %i.bw, %bb.w ], [ %i.cz, %nvme_map_sgl_data.exit92 ] ; 3 uses
  %.1.lcssa = phi i64 [ %.050, %bb.w ], [ %i.da, %nvme_map_sgl_data.exit92 ] ; 2 uses
  store i64 %.lcssa4244.lcssa, ptr %i.a, align 8
  %.054.tr = trunc nuw nsw i64 %.054.lcssa to i32
  %i.dc = shl nuw nsw i32 %.054.tr, 4
  %i.dd = call fastcc i32 @nvme_addr_read(ptr noundef %0, i64 noundef %.1.lcssa, ptr noundef nonnull %6, i32 noundef %i.dc)
  %.not69 = icmp eq i32 %i.dd, 0
  br i1 %.not69, label %bb.ap, label %bb.al

bb.al:                                            ; preds = %._crit_edge
  %i.de = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i93 = icmp eq i32 %i.de, 0
  br i1 %.not.i93, label %nvme_map_sgl_data.exit.thread, label %bb.am, !prof !7

bb.am:                                            ; preds = %bb.al
  %i.df = load i16, ptr @_TRACE_PCI_NVME_ERR_ADDR_READ_DSTATE, align 2
  %.not1.i94 = icmp eq i16 %i.df, 0
  br i1 %.not1.i94, label %nvme_map_sgl_data.exit.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dg = load i32, ptr @qemu_loglevel, align 4
  %i.dh = and i32 %i.dg, 32768
  %.not2.i95 = icmp eq i32 %i.dh, 0
  br i1 %.not2.i95, label %nvme_map_sgl_data.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.19, i64 noundef %.1.lcssa) #23
  br label %nvme_map_sgl_data.exit.thread

bb.ap:                                            ; preds = %._crit_edge
  %i.di = add nsw i64 %.054.lcssa, -1             ; 2 uses
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %i.di ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 15
  %i.dl = load i8, ptr %i.dk, align 1
  %i.dm = icmp ult i8 %i.dl, 16
  br i1 %i.dm, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.dn = call fastcc zeroext i16 @nvme_map_sgl_data(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %6, i64 noundef %.054.lcssa, ptr noundef %i.a) ; 2 uses
  %.not71 = icmp eq i16 %i.dn, 0
  br i1 %.not71, label %.nvme_map_sgl_data.exit_crit_edge, label %nvme_map_sgl_data.exit.thread

.nvme_map_sgl_data.exit_crit_edge:                ; preds = %bb.aq
  %.pre = load i64, ptr %i.a, align 8
  br label %nvme_map_sgl_data.exit

bb.ar:                                            ; preds = %bb.ap
  %i.do = load i8, ptr %i.bn, align 1
  %.mask = and i8 %i.do, -16
  %i.dp = icmp eq i8 %.mask, 48
  br i1 %i.dp, label %nvme_map_sgl_data.exit.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dq = load i64, ptr %i.dj, align 16
  %i.dr = call fastcc zeroext i16 @nvme_map_sgl_data(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %6, i64 noundef %i.di, ptr noundef %i.a) ; 2 uses
  %.not70 = icmp eq i16 %i.dr, 0
  br i1 %.not70, label %bb.at, label %nvme_map_sgl_data.exit.thread

bb.at:                                            ; preds = %bb.as
  %i.ds = load i64, ptr %i.a, align 8             ; 2 uses
  %i.dt = icmp eq i64 %i.ds, %.promoted43
  br i1 %i.dt, label %nvme_map_sgl_data.exit.thread, label %trace_pci_nvme_err_addr_read.exit

nvme_map_sgl_data.exit:                           ; preds = %.nvme_map_sgl_data.exit_crit_edge, %bb.k, %bb.t
  %i.du = phi i64 [ %.pre, %.nvme_map_sgl_data.exit_crit_edge ], [ %4, %bb.k ], [ %i.bm, %bb.t ]
  %.not75 = icmp eq i64 %i.du, 0
  br i1 %.not75, label %nvme_sg_unmap.exit, label %nvme_map_sgl_data.exit.thread

nvme_map_sgl_data.exit.thread.loopexit:           ; preds = %.lr.ph.i82, %bb.ai, %bb.aj
  %.253.ph = phi i16 [ 16401, %.lr.ph.i82 ], [ 16399, %bb.ai ], [ %i.cw, %bb.aj ]
  store i64 %i.cd, ptr %i.a, align 8
  br label %nvme_map_sgl_data.exit.thread

nvme_map_sgl_data.exit.thread:                    ; preds = %bb.at, %bb.ar, %bb.as, %nvme_map_sgl_data.exit.thread.loopexit, %bb.ag, %bb.af, %bb.ae, %.thread.loopexit.i84, %bb.ah, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.z, %bb.y, %bb.x, %bb.aq, %bb.aa, %bb.s, %bb.r, %.lr.ph.i, %bb.p, %bb.o, %bb.n, %.thread.loopexit.i, %bb.q, %nvme_map_sgl_data.exit
  %.253 = phi i16 [ 16399, %nvme_map_sgl_data.exit ], [ 16399, %bb.q ], [ %i.bl, %bb.s ], [ 16399, %bb.r ], [ 16401, %.lr.ph.i ], [ 16399, %bb.p ], [ 16399, %bb.o ], [ 16399, %bb.n ], [ 16398, %.thread.loopexit.i ], [ 16399, %bb.ah ], [ 4, %bb.ao ], [ 4, %bb.an ], [ 4, %bb.am ], [ 4, %bb.al ], [ 4, %bb.z ], [ 4, %bb.y ], [ 4, %bb.x ], [ 16399, %bb.ag ], [ %i.dn, %bb.aq ], [ 4, %bb.aa ], [ 16399, %bb.af ], [ 16399, %bb.ae ], [ 16398, %.thread.loopexit.i84 ], [ %.253.ph, %nvme_map_sgl_data.exit.thread.loopexit ], [ 16397, %bb.at ], [ 16397, %bb.ar ], [ %i.dr, %bb.as ] ; 2 uses
  %i.dv = load i32, ptr %1, align 8               ; 2 uses
  %i.dw = and i32 %i.dv, 1
  %.not.i97 = icmp eq i32 %i.dw, 0
  br i1 %.not.i97, label %nvme_sg_unmap.exit, label %bb.au

bb.au:                                            ; preds = %nvme_map_sgl_data.exit.thread
  %i.dx = and i32 %i.dv, 2
  %.not5.i = icmp eq i32 %i.dx, 0
  br i1 %.not5.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @qemu_sglist_destroy(ptr noundef nonnull %i.av) #23
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  call void @qemu_iovec_destroy(ptr noundef nonnull %i.av) #23
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, i8 noundef 0, i64 noundef 48, i1 noundef false) #23
  br label %nvme_sg_unmap.exit

nvme_sg_unmap.exit:                               ; preds = %bb.v, %bb.u, %trace_pci_nvme_err_addr_read.exit, %bb.m, %bb.ax, %nvme_map_sgl_data.exit.thread, %nvme_map_sgl_data.exit
  %.259 = phi i16 [ 0, %nvme_map_sgl_data.exit ], [ %.253, %bb.ax ], [ %.253, %nvme_map_sgl_data.exit.thread ], [ 0, %bb.m ], [ 16397, %bb.u ], [ 16399, %bb.v ], [ 16397, %trace_pci_nvme_err_addr_read.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  ret i16 %.259
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext range(i16 0, 16387) i16 @nvme_bounce_data(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr i8, ptr %i.b, i64 322
  %.val = load i8, ptr %i.c, align 2
  %i.d = and i8 %.val, 16
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 106
  %i.f = load i16, ptr %i.e, align 2
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 325
  %i.h = load i8, ptr %i.g, align 1
  %i.i = and i16 %i.f, 8192
  %i.j = icmp ne i16 %i.i, 0
  %i.k = and i8 %i.h, 7
  %i.l = icmp ne i8 %i.k, 0
  %or.cond = select i1 %i.l, i1 %i.j, i1 false
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 12584
  %i.n = load i16, ptr %i.m, align 8              ; 2 uses
  br i1 %or.cond, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.o = zext i16 %i.n to i64
  %i.p = getelementptr i8, ptr %i.b, i64 12608
  %.val22 = load i8, ptr %i.p, align 8
  %.not.i = icmp eq i8 %.val22, 0
  %i.q = select i1 %.not.i, i64 8, i64 16
  %i.r = icmp eq i64 %i.q, %i.o
  br i1 %i.r, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 12592
  %i.u = load i64, ptr %i.t, align 8
  %i.v = trunc i64 %i.u to i32
  %i.w = zext i16 %i.n to i32
  %i.x = tail call fastcc zeroext i16 @nvme_tx_interleaved(ptr noundef %0, ptr noundef nonnull %i.s, ptr noundef %1, i32 noundef %2, i32 noundef %i.v, i32 noundef %i.w, i64 noundef 0, i32 noundef %3)
  br label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.z = tail call fastcc zeroext i16 @nvme_tx(ptr noundef nonnull %i.y, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %.0 = phi i16 [ %i.z, %bb.d ], [ %i.x, %._crit_edge ]
  ret i16 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext range(i16 0, 5) i16 @nvme_tx_interleaved(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i64 noundef %6, i32 noundef %7) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %1, align 8                ; 2 uses
  %i.b = and i32 %i.a, 2
  %.not = icmp eq i32 %i.b, 0                     ; 2 uses
  %i.c = and i32 %i.a, 1
  %.not71 = icmp eq i32 %i.c, 0
  br i1 %.not71, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not72109 = icmp eq i32 %3, 0
  br i1 %.not72109, label %nvme_addr_write.exit.thread76, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = icmp eq i32 %7, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3372
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 11064
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 10896
end_hunk_0
begin_hunk_1_@nvme_do_write:bb.a
bb.ac:                                            ; preds = %nvme_get_zone_by_slba.exit
  br i1 %2, label %bb.ad, label %trace_pci_nvme_err_zasl.exit.thread174

bb.ad:                                            ; preds = %bb.ac
  %i.cc = and i16 %i.k, 512
  %.not136 = icmp eq i16 %i.cc, 0                 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  %i.ce = load i8, ptr %i.cd, align 2
  %i.cf = and i8 %i.ce, 8
  %.not137 = icmp eq i8 %i.cf, 0
  br i1 %.not137, label %bb.ae, label %trace_pci_nvme_err_zasl.exit.thread, !prof !7

bb.ae:                                            ; preds = %bb.ad
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8            ; 2 uses
  %.not138 = icmp eq i64 %i.e, %i.ch
  br i1 %.not138, label %bb.af, label %trace_pci_nvme_err_zasl.exit, !prof !7

bb.af:                                            ; preds = %bb.ae
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 7459
  %i.cj = load i8, ptr %i.ci, align 1             ; 2 uses
  %.not139 = icmp eq i8 %i.cj, 0
  br i1 %.not139, label %bb.al, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 7620
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = zext i32 %i.cl to i64
  %i.cn = zext nneg i8 %i.cj to i64
  %i.co = shl i64 %i.cm, %i.cn
  %i.cp = icmp ugt i64 %i.o, %i.co
  br i1 %i.cp, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %i.cq = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i162 = icmp eq i32 %i.cq, 0
  br i1 %.not.i162, label %trace_pci_nvme_err_zasl.exit.thread, label %bb.ai, !prof !7

bb.ai:                                            ; preds = %bb.ah
  %i.cr = load i16, ptr @_TRACE_PCI_NVME_ERR_ZASL_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.cr, 0
  br i1 %.not1.i, label %trace_pci_nvme_err_zasl.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cs = load i32, ptr @qemu_loglevel, align 4
  %i.ct = and i32 %i.cs, 32768
  %.not2.i = icmp eq i32 %i.ct, 0
  br i1 %.not2.i, label %trace_pci_nvme_err_zasl.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.161, i64 noundef %i.o) #23
  br label %trace_pci_nvme_err_zasl.exit.thread

bb.al:                                            ; preds = %bb.ag, %bb.af
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cb, i64 64
  %i.cv = load i64, ptr %i.cu, align 8            ; 7 uses
  store i64 %i.cv, ptr %i.d, align 8
  store i64 %i.cv, ptr %i.p, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.c, i64 325
  %i.cx = load i8, ptr %i.cw, align 1
  %i.cy = and i8 %i.cx, 7
  switch i8 %i.cy, label %trace_pci_nvme_err_zasl.exit.thread174 [
    i8 1, label %bb.am
    i8 2, label %bb.an
    i8 3, label %bb.ao
  ]

bb.am:                                            ; preds = %bb.al
  br i1 %.not136, label %trace_pci_nvme_err_zasl.exit.thread, label %.critedge

bb.an:                                            ; preds = %bb.al
  br i1 %.not136, label %trace_pci_nvme_err_zasl.exit.thread174, label %.critedge

.critedge:                                        ; preds = %bb.am, %bb.an
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 8
  %i.db = load i64, ptr %i.cg, align 8
  %i.dc = sub i64 %i.cv, %i.db
  %i.dd = trunc i64 %i.dc to i32
  %i.de = add i32 %i.da, %i.dd
  store i32 %i.de, ptr %i.cz, align 8
  br label %trace_pci_nvme_err_zasl.exit.thread174

bb.ao:                                            ; preds = %bb.al
  br i1 %.not136, label %trace_pci_nvme_err_zasl.exit.thread174, label %trace_pci_nvme_err_zasl.exit.thread

trace_pci_nvme_err_zasl.exit:                     ; preds = %bb.ae
  tail call fastcc void @trace_pci_nvme_err_append_not_at_start(i64 noundef %i.e, i64 noundef %i.ch)
  br label %nvme_check_mdts.exit.thread

trace_pci_nvme_err_zasl.exit.thread174:           ; preds = %bb.ao, %bb.an, %.critedge, %bb.al, %bb.ac
  %.1116 = phi i64 [ %i.e, %bb.ac ], [ %i.cv, %bb.al ], [ %i.cv, %.critedge ], [ %i.cv, %bb.an ], [ %i.cv, %bb.ao ] ; 3 uses
  %i.df = tail call fastcc zeroext i16 @nvme_check_zone_write(ptr noundef nonnull %i.c, ptr noundef nonnull %i.cb, i64 noundef %.1116, i32 noundef %i.i) ; 2 uses
  %.not140 = icmp eq i16 %i.df, 0
  br i1 %.not140, label %bb.ap, label %nvme_check_mdts.exit.thread

bb.ap:                                            ; preds = %trace_pci_nvme_err_zasl.exit.thread174
  %i.dg = tail call fastcc zeroext range(i16 0, 16831) i16 @nvme_zrm_open_flags(ptr noundef readonly %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.cb, i32 noundef 1) ; 2 uses
  %.not141 = icmp eq i16 %i.dg, 0
  br i1 %.not141, label %bb.aq, label %nvme_check_mdts.exit.thread

bb.aq:                                            ; preds = %bb.ap
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  %i.di = load i8, ptr %i.dh, align 2
  %i.dj = and i8 %i.di, 8
  %.not142 = icmp eq i8 %i.dj, 0
  br i1 %.not142, label %bb.ar, label %nvme_do_write_fdp.exit

bb.ar:                                            ; preds = %bb.aq
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cb, i64 64 ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8
  %i.dm = add i64 %i.dl, %i.l
  store i64 %i.dm, ptr %i.dk, align 8
  br label %nvme_do_write_fdp.exit

bb.as:                                            ; preds = %bb.y
  %i.dn = getelementptr inbounds nuw i8, ptr %i.c, i64 12920
  %i.do = load ptr, ptr %i.dn, align 8            ; 2 uses
  %.not134 = icmp eq ptr %i.do, null
  br i1 %.not134, label %nvme_do_write_fdp.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8136
  %i.dq = load i8, ptr %i.dp, align 8, !range !8, !noundef !9
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %bb.au, label %nvme_do_write_fdp.exit

bb.au:                                            ; preds = %bb.at
  %i.ds = load ptr, ptr %i.b, align 8             ; 5 uses
  %i.dt = getelementptr i8, ptr %i.ds, i64 12586
  %.val.i = load i8, ptr %i.dt, align 2
  %i.du = zext nneg i8 %.val.i to i64
  %i.dv = shl i64 %i.l, %i.du                     ; 2 uses
  %i.dw = load i32, ptr %i.f, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 110
  %i.dy = load i16, ptr %i.dx, align 2            ; 3 uses
  %i.dz = and i32 %i.dw, 15728640
  %.not.i163 = icmp eq i32 %i.dz, 2097152
  %i.ea = getelementptr i8, ptr %i.ds, i64 12920  ; 2 uses
  %.val.i.i = load ptr, ptr %i.ea, align 8        ; 4 uses
  br i1 %.not.i163, label %bb.av, label %.nvme_parse_pid.exit.thread_crit_edge.i

bb.av:                                            ; preds = %bb.au
  %i.eb = getelementptr i8, ptr %.val.i.i, i64 8100
  %.val.val.i.i = load i8, ptr %i.eb, align 4     ; 2 uses
  %.not.i.i.i = icmp eq i8 %.val.val.i.i, 0       ; 2 uses
  %i.ec = zext i8 %.val.val.i.i to i32            ; 2 uses
  %i.ed = sub nsw i32 15, %i.ec
  %notmask.i.i.i = shl nsw i32 -1, %i.ed
  %i.ee = trunc i32 %notmask.i.i.i to i16
  %i.ef = xor i16 %i.ee, -1
  %i.eg = select i1 %.not.i.i.i, i16 -1, i16 %i.ef
  %.0.i13.i.i = and i16 %i.eg, %i.dy              ; 2 uses
  %i.eh = getelementptr i8, ptr %i.ds, i64 12944
  %.val10.i.i = load i16, ptr %i.eh, align 8
  %i.ei = icmp ult i16 %.0.i13.i.i, %.val10.i.i
  br i1 %i.ei, label %nvme_parse_pid.exit.i, label %.nvme_parse_pid.exit.thread_crit_edge.i

nvme_parse_pid.exit.i:                            ; preds = %bb.av
  %i.ej = zext i16 %i.dy to i32
  %i.ek = sub nsw i32 16, %i.ec
  %i.el = lshr i32 %i.ej, %i.ek
  %i.em = trunc nuw i32 %i.el to i16
  %.0.i.i.i = select i1 %.not.i.i.i, i16 0, i16 %i.em ; 2 uses
  %i.en = getelementptr i8, ptr %.val.i.i, i64 8098
  %.val11.i.i = load i16, ptr %i.en, align 2
  %i.eo = icmp ult i16 %.0.i.i.i, %.val11.i.i     ; 2 uses
  %spec.select.i = select i1 %i.eo, i16 %.0.i13.i.i, i16 0
  %spec.select45.i = select i1 %i.eo, i16 %.0.i.i.i, i16 0
  %i.ep = zext i16 %spec.select.i to i64
  %i.eq = zext i16 %spec.select45.i to i64
  br label %.nvme_parse_pid.exit.thread_crit_edge.i

.nvme_parse_pid.exit.thread_crit_edge.i:          ; preds = %nvme_parse_pid.exit.i, %bb.av, %bb.au
  %.033.i = phi i64 [ %i.ep, %nvme_parse_pid.exit.i ], [ 0, %bb.au ], [ 0, %bb.av ]
  %.032.i = phi i64 [ %i.eq, %nvme_parse_pid.exit.i ], [ 0, %bb.au ], [ 0, %bb.av ]
  %i.er = getelementptr inbounds nuw i8, ptr %i.ds, i64 12952
  %i.es = load ptr, ptr %i.er, align 8
  %i.et = getelementptr inbounds nuw [2 x i8], ptr %i.es, i64 %.033.i
  %i.eu = load i16, ptr %i.et, align 2
  %i.ev = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8144
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = zext i16 %i.eu to i64
  %i.ey = getelementptr inbounds nuw [40 x i8], ptr %i.ew, i64 %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 32
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %.032.i ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8112 ; 2 uses
  %i.fd = load i64, ptr %i.fc, align 8
  %i.fe = tail call i64 @llvm.uadd.sat.i64(i64 %i.fd, i64 %i.dv)
  store i64 %i.fe, ptr %i.fc, align 8
  %i.ff = load ptr, ptr %i.ea, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8120 ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8
  %i.fi = tail call i64 @llvm.uadd.sat.i64(i64 %i.fh, i64 %i.dv)
  store i64 %i.fi, ptr %i.fg, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ay, %.nvme_parse_pid.exit.thread_crit_edge.i
  %.035.i = phi i32 [ %i.i, %.nvme_parse_pid.exit.thread_crit_edge.i ], [ %i.fo, %bb.ay ] ; 2 uses
  %i.fj = zext i32 %.035.i to i64                 ; 2 uses
  %i.fk = load i64, ptr %i.fb, align 8            ; 3 uses
  %i.fl = icmp ugt i64 %i.fk, %i.fj
  br i1 %i.fl, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.fm = sub nuw i64 %i.fk, %i.fj
  store i64 %i.fm, ptr %i.fb, align 8
  br label %nvme_do_write_fdp.exit

bb.ay:                                            ; preds = %bb.aw
  %i.fn = trunc nuw i64 %i.fk to i32
  %i.fo = sub i32 %.035.i, %i.fn                  ; 2 uses
  %i.fp = tail call fastcc zeroext i1 @nvme_update_ruh(ptr noundef readonly %0, ptr noundef %i.ds, i16 noundef zeroext %i.dy) ; 0 uses
  %.not29.i = icmp eq i32 %i.fo, 0
  br i1 %.not29.i, label %nvme_do_write_fdp.exit, label %bb.aw, !llvm.loop !62

nvme_do_write_fdp.exit:                           ; preds = %bb.ay, %bb.ax, %bb.as, %bb.at, %bb.aq, %bb.ar
  %.2 = phi i64 [ %.1116, %bb.aq ], [ %.1116, %bb.ar ], [ %i.e, %bb.as ], [ %i.e, %bb.at ], [ %i.e, %bb.ax ], [ %i.e, %bb.ay ]
  %.val146 = load i8, ptr %i.m, align 2
  %i.fq = zext nneg i8 %.val146 to i64
  %i.fr = shl i64 %.2, %i.fq                      ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.c, i64 325
  %i.ft = load i8, ptr %i.fs, align 1
  %i.fu = and i8 %i.ft, 7
  %.not143 = icmp eq i8 %i.fu, 0
  br i1 %.not143, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %nvme_do_write_fdp.exit
  %i.fv = tail call zeroext i16 @nvme_dif_rw(ptr noundef %0, ptr noundef %1) #23
  br label %trace_pci_nvme_err_zasl.exit.thread

bb.ba:                                            ; preds = %nvme_do_write_fdp.exit
  br i1 %3, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fw = tail call fastcc zeroext i16 @nvme_map_data(ptr noundef %0, i32 noundef %i.i, ptr noundef %1) ; 2 uses
  %.not144 = icmp eq i16 %i.fw, 0
  br i1 %.not144, label %bb.bc, label %nvme_check_mdts.exit.thread

bb.bc:                                            ; preds = %bb.bb
  %i.fx = tail call ptr @blk_get_stats(ptr noundef %i.r) #23
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 120
  tail call void @block_acct_start(ptr noundef %i.fx, ptr noundef nonnull %i.fy, i64 noundef %i.o, i32 noundef 2) #23
  tail call fastcc void @nvme_blk_write(ptr noundef %i.r, i64 noundef %i.fr, i32 noundef 512, ptr noundef nonnull @nvme_rw_cb, ptr noundef %1)
  br label %trace_pci_nvme_err_zasl.exit.thread

bb.bd:                                            ; preds = %bb.ba
  %i.fz = tail call ptr @blk_aio_pwrite_zeroes(ptr noundef %i.r, i64 noundef %i.fr, i64 noundef %i.o, i32 noundef 4, ptr noundef nonnull @nvme_rw_cb, ptr noundef %1) #23
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.fz, ptr %i.ga, align 8
  br label %trace_pci_nvme_err_zasl.exit.thread

nvme_check_mdts.exit.thread:                      ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %trace_pci_nvme_err_zasl.exit, %nvme_check_bounds.exit, %bb.bb, %bb.ap, %trace_pci_nvme_err_zasl.exit.thread174
  %.1112 = phi i16 [ 16512, %nvme_check_bounds.exit ], [ %i.df, %trace_pci_nvme_err_zasl.exit.thread174 ], [ %i.dg, %bb.ap ], [ %i.fw, %bb.bb ], [ 2, %trace_pci_nvme_err_zasl.exit ], [ 16386, %bb.u ], [ 16386, %bb.v ], [ 16386, %bb.w ], [ 16386, %bb.x ]
  %i.gb = tail call ptr @blk_get_stats(ptr noundef %i.r) #23
  tail call void @block_acct_invalid(ptr noundef %i.gb, i32 noundef 2) #23
  %i.gc = or i16 %.1112, 16384
  br label %trace_pci_nvme_err_zasl.exit.thread

trace_pci_nvme_err_zasl.exit.thread:              ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ad, %bb.ao, %bb.am, %bb.bc, %bb.bd, %nvme_check_mdts.exit.thread, %bb.az
  %.1 = phi i16 [ %i.gc, %nvme_check_mdts.exit.thread ], [ -1, %bb.bc ], [ %i.fv, %bb.az ], [ -1, %bb.bd ], [ 16386, %bb.ak ], [ 16386, %bb.aj ], [ 16386, %bb.ai ], [ 16386, %bb.ah ], [ 16822, %bb.ad ], [ 16769, %bb.ao ], [ 16769, %bb.am ]
  ret i16 %.1
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @trace_pci_nvme_err_append_not_at_start(i64 noundef %0, i64 noundef %1) unnamed_addr #8 {
bb.a:
  %i.a = load i32, ptr @trace_events_enabled_count, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr @_TRACE_PCI_NVME_ERR_APPEND_NOT_AT_START_DSTATE, align 2
  %.not2 = icmp eq i16 %i.b, 0
  br i1 %.not2, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr @qemu_loglevel, align 4
  %i.d = and i32 %i.c, 32768
  %.not3 = icmp eq i32 %i.d, 0
  br i1 %.not3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.160, i64 noundef %0, i64 noundef %1) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext range(i16 0, 445) i16 @nvme_check_zone_write(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val = load i64, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %1, i64 16
  %.val34 = load i64, ptr %i.b, align 8           ; 3 uses
  %i.c = add i64 %.val34, %.val                   ; 2 uses
  %i.d = getelementptr i8, ptr %1, i64 1
  %.val35 = load i8, ptr %i.d, align 1
  %i.e = lshr i8 %.val35, 4
  switch i8 %i.e, label %bb.k [
    i8 1, label %nvme_check_zone_state_for_write.exit
    i8 2, label %nvme_check_zone_state_for_write.exit
    i8 3, label %nvme_check_zone_state_for_write.exit
    i8 4, label %nvme_check_zone_state_for_write.exit
    i8 14, label %bb.b
    i8 15, label %bb.e
    i8 13, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %trace_pci_nvme_err_zone_invalid_write.exit, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.g = load i16, ptr @_TRACE_PCI_NVME_ERR_ZONE_IS_FULL_DSTATE, align 2
  %.not1.i.i = icmp eq i16 %i.g, 0
  br i1 %.not1.i.i, label %trace_pci_nvme_err_zone_invalid_write.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr @qemu_loglevel, align 4
  %i.i = and i32 %i.h, 32768
  %.not2.i.i = icmp eq i32 %i.i, 0
  br i1 %.not2.i.i, label %trace_pci_nvme_err_zone_invalid_write.exit, label %trace_pci_nvme_err_zone_is_full.exit.sink.split.i

bb.e:                                             ; preds = %bb.a
  %i.j = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i5.i = icmp eq i32 %i.j, 0
  br i1 %.not.i5.i, label %trace_pci_nvme_err_zone_invalid_write.exit, label %bb.f, !prof !7

bb.f:                                             ; preds = %bb.e
  %i.k = load i16, ptr @_TRACE_PCI_NVME_ERR_ZONE_IS_OFFLINE_DSTATE, align 2
  %.not1.i6.i = icmp eq i16 %i.k, 0
  br i1 %.not1.i6.i, label %trace_pci_nvme_err_zone_invalid_write.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = load i32, ptr @qemu_loglevel, align 4
  %i.m = and i32 %i.l, 32768
  %.not2.i7.i = icmp eq i32 %i.m, 0
  br i1 %.not2.i7.i, label %trace_pci_nvme_err_zone_invalid_write.exit, label %trace_pci_nvme_err_zone_is_full.exit.sink.split.i

bb.h:                                             ; preds = %bb.a
  %i.n = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i8.i = icmp eq i32 %i.n, 0
  br i1 %.not.i8.i, label %trace_pci_nvme_err_zone_invalid_write.exit, label %bb.i, !prof !7

bb.i:                                             ; preds = %bb.h
  %i.o = load i16, ptr @_TRACE_PCI_NVME_ERR_ZONE_IS_READ_ONLY_DSTATE, align 2
  %.not1.i9.i = icmp eq i16 %i.o, 0
  br i1 %.not1.i9.i, label %trace_pci_nvme_err_zone_invalid_write.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = load i32, ptr @qemu_loglevel, align 4
  %i.q = and i32 %i.p, 32768
  %.not2.i10.i = icmp eq i32 %i.q, 0
  br i1 %.not2.i10.i, label %trace_pci_nvme_err_zone_invalid_write.exit, label %trace_pci_nvme_err_zone_is_full.exit.sink.split.i

bb.k:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 1836, ptr noundef nonnull @__func__.nvme_check_zone_state_for_write, ptr noundef null) #24
  unreachable

trace_pci_nvme_err_zone_is_full.exit.sink.split.i: ; preds = %bb.j, %bb.g, %bb.d
  %.str.164.sink.i = phi ptr [ @.str.163, %bb.g ], [ @.str.162, %bb.d ], [ @.str.164, %bb.j ]
  %.0.ph.i = phi i16 [ 443, %bb.g ], [ 441, %bb.d ], [ 442, %bb.j ]
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull %.str.164.sink.i, i64 noundef %.val34) #23
  br label %trace_pci_nvme_err_zone_invalid_write.exit

nvme_check_zone_state_for_write.exit:             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.s = load i8, ptr %i.r, align 2
  %i.t = and i8 %i.s, 8
  %.not32 = icmp eq i8 %i.t, 0
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.v = load i64, ptr %i.u, align 8              ; 5 uses
  br i1 %.not32, label %bb.q, label %bb.l

bb.l:                                             ; preds = %nvme_check_zone_state_for_write.exit
  %i.w = icmp ult i64 %2, %i.v
  br i1 %i.w, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12612
  %i.y = load i16, ptr %i.x, align 4
  %i.z = zext i16 %i.y to i64
  %i.aa = shl nuw nsw i64 %i.z, 1
  %i.ab = add i64 %i.aa, %i.v
  %i.ac = zext i32 %3 to i64
  %i.ad = add i64 %2, %i.ac                       ; 2 uses
  %i.ae = icmp ugt i64 %i.ad, %i.ab
  br i1 %i.ae, label %.critedge, label %bb.s

.critedge:                                        ; preds = %bb.m, %bb.l
  %i.af = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.af, 0
  br i1 %.not.i, label %trace_pci_nvme_err_zone_invalid_write.exit, label %bb.n, !prof !7

bb.n:                                             ; preds = %.critedge
  %i.ag = load i16, ptr @_TRACE_PCI_NVME_ERR_ZONE_INVALID_WRITE_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.ag, 0
  br i1 %.not2.i, label %trace_pci_nvme_err_zone_invalid_write.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = load i32, ptr @qemu_loglevel, align 4
  %i.ai = and i32 %i.ah, 32768
  %.not3.i = icmp eq i32 %i.ai, 0
  br i1 %.not3.i, label %trace_pci_nvme_err_zone_invalid_write.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.165, i64 noundef %2, i64 noundef %i.v) #23
  br label %trace_pci_nvme_err_zone_invalid_write.exit
end_hunk_1
begin_hunk_2_@nvme_identify:bb.a
  br i1 %.not.i, label %nvme_cid.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.m = load i16, ptr %i.l, align 4
  %i.n = zext i16 %i.m to i32
  br label %nvme_cid.exit

nvme_cid.exit:                                    ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.n, %bb.b ], [ 65535, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1               ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 98 ; 2 uses
  %i.r = load i16, ptr %i.q, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 103 ; 3 uses
  %i.t = load i8, ptr %i.s, align 1
  %i.u = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i45 = icmp eq i32 %i.u, 0
  br i1 %.not.i45, label %trace_pci_nvme_identify.exit, label %bb.c, !prof !7

bb.c:                                             ; preds = %nvme_cid.exit
  %i.v = load i16, ptr @_TRACE_PCI_NVME_IDENTIFY_DSTATE, align 2
  %.not4.i = icmp eq i16 %i.v, 0
  br i1 %.not4.i, label %trace_pci_nvme_identify.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr @qemu_loglevel, align 4
  %i.x = and i32 %i.w, 32768
  %.not5.i = icmp eq i32 %i.x, 0
  br i1 %.not5.i, label %trace_pci_nvme_identify.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = zext i8 %i.p to i32
  %i.z = zext i16 %i.r to i32
  %i.aa = zext i8 %i.t to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.254, i32 noundef %.0.i, i32 noundef %i.y, i32 noundef %i.z, i32 noundef %i.aa) #23
  %.pre = load i8, ptr %i.o, align 1
  br label %trace_pci_nvme_identify.exit

trace_pci_nvme_identify.exit:                     ; preds = %nvme_cid.exit, %bb.c, %bb.d, %bb.e
  %i.ab = phi i8 [ %i.p, %nvme_cid.exit ], [ %i.p, %bb.c ], [ %i.p, %bb.d ], [ %.pre, %bb.e ] ; 2 uses
  switch i8 %i.ab, label %bb.da [
    i8 0, label %bb.f
    i8 17, label %bb.g
    i8 18, label %bb.h
    i8 19, label %bb.i
    i8 20, label %bb.j
    i8 21, label %bb.u
    i8 5, label %bb.ag
    i8 8, label %bb.ah
    i8 31, label %bb.ai
    i8 27, label %bb.aj
    i8 1, label %bb.ak
    i8 6, label %bb.av
    i8 2, label %bb.bj
    i8 16, label %bb.bk
    i8 7, label %bb.bl
    i8 25, label %bb.bm
    i8 26, label %bb.bw
    i8 3, label %bb.bx
    i8 28, label %bb.cp
  ]

bb.f:                                             ; preds = %trace_pci_nvme_identify.exit
  %i.ac = tail call fastcc zeroext i16 @nvme_identify_ns(ptr noundef %0, ptr noundef nonnull %1, i1 noundef zeroext true)
  br label %nvme_identify_pri_ctrl_cap.exit

bb.g:                                             ; preds = %trace_pci_nvme_identify.exit
  %i.ad = tail call fastcc zeroext i16 @nvme_identify_ns(ptr noundef %0, ptr noundef nonnull %1, i1 noundef zeroext false)
  br label %nvme_identify_pri_ctrl_cap.exit

bb.h:                                             ; preds = %trace_pci_nvme_identify.exit
  %i.ae = tail call fastcc zeroext i16 @nvme_identify_ctrl_list(ptr noundef %0, ptr noundef nonnull %1, i1 noundef zeroext true)
  br label %nvme_identify_pri_ctrl_cap.exit

bb.i:                                             ; preds = %trace_pci_nvme_identify.exit
  %i.af = tail call fastcc zeroext i16 @nvme_identify_ctrl_list(ptr noundef %0, ptr noundef nonnull %1, i1 noundef zeroext false)
  br label %nvme_identify_pri_ctrl_cap.exit

bb.j:                                             ; preds = %trace_pci_nvme_identify.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 31128 ; 3 uses
  %i.ah = load i16, ptr %i.ag, align 8
  %i.ai = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i, label %trace_pci_nvme_identify_pri_ctrl_cap.exit.i, label %bb.k, !prof !7

bb.k:                                             ; preds = %bb.j
  %i.aj = load i16, ptr @_TRACE_PCI_NVME_IDENTIFY_PRI_CTRL_CAP_DSTATE, align 2
  %.not1.i.i = icmp eq i16 %i.aj, 0
  br i1 %.not1.i.i, label %trace_pci_nvme_identify_pri_ctrl_cap.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = load i32, ptr @qemu_loglevel, align 4
  %i.al = and i32 %i.ak, 32768
  %.not2.i.i = icmp eq i32 %i.al, 0
  br i1 %.not2.i.i, label %trace_pci_nvme_identify_pri_ctrl_cap.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = zext i16 %i.ah to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.257, i32 noundef %i.am) #23
  br label %trace_pci_nvme_identify_pri_ctrl_cap.exit.i

trace_pci_nvme_identify_pri_ctrl_cap.exit.i:      ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ap = tail call zeroext i16 @nvme_map_dptr(ptr noundef nonnull %0, ptr noundef nonnull %i.an, i64 noundef 4096, ptr noundef nonnull %i.ao) ; 2 uses
  %.not.i4.i = icmp eq i16 %i.ap, 0
  br i1 %.not.i4.i, label %bb.n, label %nvme_identify_pri_ctrl_cap.exit

bb.n:                                             ; preds = %trace_pci_nvme_identify_pri_ctrl_cap.exit.i
  %i.aq = load i32, ptr %i.an, align 8            ; 2 uses
  %i.ar = and i32 %i.aq, 1
  %.not.i.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @__assert_fail(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str, i32 noundef 1377, ptr noundef nonnull @__PRETTY_FUNCTION__.nvme_tx) #24
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.as = and i32 %i.aq, 2
  %.not24.i.i.i = icmp eq i32 %i.as, 0
  br i1 %.not24.i.i.i, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #23
  store i64 0, ptr %i.k, align 8, !annotation !16
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.au = call i32 @dma_buf_read(ptr noundef nonnull %i.ag, i64 noundef 4096, ptr noundef nonnull %i.k, ptr noundef nonnull %i.at, i64 4294967296) #23 ; 0 uses
  %i.av = load i64, ptr %i.k, align 8
  %.not26.not.i.i.i = icmp eq i64 %i.av, 0
  br i1 %.not26.not.i.i.i, label %.thread.i.i.i, label %bb.r, !prof !7

.thread.i.i.i:                                    ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #23
  br label %nvme_identify_pri_ctrl_cap.exit

bb.r:                                             ; preds = %bb.q
  call fastcc void @trace_pci_nvme_err_invalid_dma()
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #23
  br label %nvme_identify_pri_ctrl_cap.exit

bb.s:                                             ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ax = tail call i64 @qemu_iovec_from_buf(ptr noundef nonnull %i.aw, i64 noundef 0, ptr noundef nonnull %i.ag, i64 noundef 4096) #23
  %.not25.not.i.i.i = icmp eq i64 %i.ax, 4096
  br i1 %.not25.not.i.i.i, label %nvme_identify_pri_ctrl_cap.exit, label %bb.t, !prof !7

bb.t:                                             ; preds = %bb.s
  tail call fastcc void @trace_pci_nvme_err_invalid_dma()
  br label %nvme_identify_pri_ctrl_cap.exit

bb.u:                                             ; preds = %trace_pci_nvme_identify.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 31128
  %i.az = load i16, ptr %i.ay, align 8
  %i.ba = load i16, ptr %i.q, align 1             ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 35224
  %i.bc = load i32, ptr %i.bb, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4096) %2, i8 0, i64 4096, i1 false)
  %i.bd = and i32 %i.bc, 255                      ; 2 uses
  %.not29.i = icmp eq i32 %i.bd, 0
  br i1 %.not29.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.u
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 35232
  %i.bf = load ptr, ptr %i.be, align 16           ; 3 uses
  %i.bg = load i16, ptr %i.bf, align 1
  %.not.i46104 = icmp ult i16 %i.bg, %i.ba
  br i1 %.not.i46104, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph.i
  %i.bh = add i32 %i.bc, 255
  %i.bi = and i32 %i.bh, 255                      ; 2 uses
  %wide.trip.count = zext nneg i32 %i.bi to i64
  %exitcond.not124 = icmp eq i32 %i.bi, 0
  br i1 %exitcond.not124, label %.loopexit.i, label %.lr.ph126, !llvm.loop !80

.lr.ph126:                                        ; preds = %.lr.ph.preheader
  br label %bb.v, !llvm.loop !80

.lr.ph:                                           ; preds = %bb.v
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph..loopexit.i.loopexit_crit_edge, label %bb.v, !llvm.loop !80

bb.v:                                             ; preds = %.lr.ph126, %.lr.ph
  %indvars.iv125 = phi i64 [ 0, %.lr.ph126 ], [ %indvars.iv.next, %.lr.ph ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv125, 1 ; 4 uses
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %i.bf, i64 %indvars.iv.next ; 2 uses
  %i.bk = load i16, ptr %i.bj, align 1
  %.not.i46 = icmp ult i16 %i.bk, %i.ba
  br i1 %.not.i46, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !80

._crit_edge.loopexit:                             ; preds = %bb.v
  %i.bl = trunc nuw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph.i
  %.lcssa102 = phi i32 [ 0, %.lr.ph.i ], [ %i.bl, %._crit_edge.loopexit ]
  %.lcssa = phi ptr [ %i.bf, %.lr.ph.i ], [ %i.bj, %._crit_edge.loopexit ]
  %i.bm = sub nsw i32 %i.bd, %.lcssa102
  %i.bn = tail call i32 @llvm.smin.i32(i32 %i.bm, i32 127) ; 3 uses
  %i.bo = trunc i32 %i.bn to i8
  store i8 %i.bo, ptr %2, align 1
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.mask.i = shl nsw i32 %i.bn, 5
  %3 = and i32 %.mask.i, 8160
  %i.bq = zext nneg i32 %3 to i64
  %i.br = call ptr @__memcpy_chk(ptr noundef nonnull %i.bp, ptr noundef nonnull %.lcssa, i64 noundef %i.bq, i64 noundef 4064) #23, !alias.scope !81 ; 0 uses
  %4 = and i32 %i.bn, 255
  br label %.loopexit.i

.lr.ph..loopexit.i.loopexit_crit_edge:            ; preds = %.lr.ph
  br label %.loopexit.i, !llvm.loop !80

.loopexit.i:                                      ; preds = %.lr.ph.preheader, %.lr.ph..loopexit.i.loopexit_crit_edge, %._crit_edge, %bb.u
  %i.bs = phi i32 [ %4, %._crit_edge ], [ 0, %bb.u ], [ 0, %.lr.ph..loopexit.i.loopexit_crit_edge ], [ 0, %.lr.ph.preheader ]
  %i.bt = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i47 = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i47, label %trace_pci_nvme_identify_sec_ctrl_list.exit.i, label %bb.w, !prof !7

bb.w:                                             ; preds = %.loopexit.i
  %i.bu = load i16, ptr @_TRACE_PCI_NVME_IDENTIFY_SEC_CTRL_LIST_DSTATE, align 2
  %.not2.i.i48 = icmp eq i16 %i.bu, 0
  br i1 %.not2.i.i48, label %trace_pci_nvme_identify_sec_ctrl_list.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bv = load i32, ptr @qemu_loglevel, align 4
  %i.bw = and i32 %i.bv, 32768
  %.not3.i.i = icmp eq i32 %i.bw, 0
  br i1 %.not3.i.i, label %trace_pci_nvme_identify_sec_ctrl_list.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bx = zext i16 %i.az to i32
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.258, i32 noundef %i.bx, i32 noundef %i.bs) #23
  br label %trace_pci_nvme_identify_sec_ctrl_list.exit.i

trace_pci_nvme_identify_sec_ctrl_list.exit.i:     ; preds = %bb.y, %bb.x, %bb.w, %.loopexit.i
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ca = call zeroext i16 @nvme_map_dptr(ptr noundef %0, ptr noundef nonnull %i.by, i64 noundef 4096, ptr noundef nonnull %i.bz) ; 2 uses
  %.not.i23.i = icmp eq i16 %i.ca, 0
  br i1 %.not.i23.i, label %bb.z, label %nvme_identify_sec_ctrl_list.exit

bb.z:                                             ; preds = %trace_pci_nvme_identify_sec_ctrl_list.exit.i
  %i.cb = load i32, ptr %i.by, align 8            ; 2 uses
  %i.cc = and i32 %i.cb, 1
  %.not.i.i.i50 = icmp eq i32 %i.cc, 0
  br i1 %.not.i.i.i50, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @__assert_fail(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str, i32 noundef 1377, ptr noundef nonnull @__PRETTY_FUNCTION__.nvme_tx) #24
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.cd = and i32 %i.cb, 2
  %.not24.i.i.i51 = icmp eq i32 %i.cd, 0
  br i1 %.not24.i.i.i51, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #23
  store i64 0, ptr %i.j, align 8, !annotation !16
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.cf = call i32 @dma_buf_read(ptr noundef nonnull %2, i64 noundef 4096, ptr noundef nonnull %i.j, ptr noundef nonnull %i.ce, i64 4294967296) #23 ; 0 uses
  %i.cg = load i64, ptr %i.j, align 8
  %.not26.not.i.i.i52 = icmp eq i64 %i.cg, 0
  br i1 %.not26.not.i.i.i52, label %.thread.i.i.i53, label %bb.ad, !prof !7

.thread.i.i.i53:                                  ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #23
  br label %nvme_identify_sec_ctrl_list.exit

bb.ad:                                            ; preds = %bb.ac
  call fastcc void @trace_pci_nvme_err_invalid_dma()
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #23
  br label %nvme_identify_sec_ctrl_list.exit

bb.ae:                                            ; preds = %bb.ab
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ci = call i64 @qemu_iovec_from_buf(ptr noundef nonnull %i.ch, i64 noundef 0, ptr noundef nonnull %2, i64 noundef 4096) #23
  %.not25.not.i.i.i54 = icmp eq i64 %i.ci, 4096
  br i1 %.not25.not.i.i.i54, label %nvme_identify_sec_ctrl_list.exit, label %bb.af, !prof !7

bb.af:                                            ; preds = %bb.ae
  call fastcc void @trace_pci_nvme_err_invalid_dma()
  br label %nvme_identify_sec_ctrl_list.exit

nvme_identify_sec_ctrl_list.exit:                 ; preds = %trace_pci_nvme_identify_sec_ctrl_list.exit.i, %.thread.i.i.i53, %bb.ad, %bb.ae, %bb.af
  %.0.i.i49 = phi i16 [ %i.ca, %trace_pci_nvme_identify_sec_ctrl_list.exit.i ], [ 16386, %bb.af ], [ 16386, %bb.ad ], [ 0, %.thread.i.i.i53 ], [ 0, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %nvme_identify_pri_ctrl_cap.exit

bb.ag:                                            ; preds = %trace_pci_nvme_identify.exit
  %i.cj = tail call fastcc zeroext i16 @nvme_identify_ns_csi(ptr noundef %0, ptr noundef nonnull %1, i1 noundef zeroext true)
  br label %nvme_identify_pri_ctrl_cap.exit

bb.ah:                                            ; preds = %trace_pci_nvme_identify.exit
  %i.ck = tail call fastcc zeroext i16 @nvme_identify_ns_ind(ptr noundef %0, ptr noundef nonnull %1, i1 noundef zeroext false)
  br label %nvme_identify_pri_ctrl_cap.exit

bb.ai:                                            ; preds = %trace_pci_nvme_identify.exit
  %i.cl = tail call fastcc zeroext i16 @nvme_identify_ns_ind(ptr noundef %0, ptr noundef nonnull %1, i1 noundef zeroext true)
  br label %nvme_identify_pri_ctrl_cap.exit

bb.aj:                                            ; preds = %trace_pci_nvme_identify.exit
  %i.cm = tail call fastcc zeroext i16 @nvme_identify_ns_csi(ptr noundef %0, ptr noundef nonnull %1, i1 noundef zeroext false)
  br label %nvme_identify_pri_ctrl_cap.exit

bb.ak:                                            ; preds = %trace_pci_nvme_identify.exit
  %i.cn = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i55 = icmp eq i32 %i.cn, 0
  br i1 %.not.i.i55, label %trace_pci_nvme_identify_ctrl.exit.i, label %bb.al, !prof !7

bb.al:                                            ; preds = %bb.ak
  %i.co = load i16, ptr @_TRACE_PCI_NVME_IDENTIFY_CTRL_DSTATE, align 2
  %.not1.i.i56 = icmp eq i16 %i.co, 0
  br i1 %.not1.i.i56, label %trace_pci_nvme_identify_ctrl.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cp = load i32, ptr @qemu_loglevel, align 4
  %i.cq = and i32 %i.cp, 32768
  %.not2.i.i57 = icmp eq i32 %i.cq, 0
  br i1 %.not2.i.i57, label %trace_pci_nvme_identify_ctrl.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.261) #23
  br label %trace_pci_nvme_identify_ctrl.exit.i

trace_pci_nvme_identify_ctrl.exit.i:              ; preds = %bb.an, %bb.am, %bb.al, %bb.ak
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 26512 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cu = tail call zeroext i16 @nvme_map_dptr(ptr noundef %0, ptr noundef nonnull %i.cs, i64 noundef 4096, ptr noundef nonnull %i.ct) ; 2 uses
  %.not.i3.i = icmp eq i16 %i.cu, 0
  br i1 %.not.i3.i, label %bb.ao, label %nvme_identify_pri_ctrl_cap.exit

bb.ao:                                            ; preds = %trace_pci_nvme_identify_ctrl.exit.i
  %i.cv = load i32, ptr %i.cs, align 8            ; 2 uses
  %i.cw = and i32 %i.cv, 1
  %.not.i.i.i59 = icmp eq i32 %i.cw, 0
  br i1 %.not.i.i.i59, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  tail call void @__assert_fail(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str, i32 noundef 1377, ptr noundef nonnull @__PRETTY_FUNCTION__.nvme_tx) #24
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.cx = and i32 %i.cv, 2
  %.not24.i.i.i60 = icmp eq i32 %i.cx, 0
  br i1 %.not24.i.i.i60, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #23
  store i64 0, ptr %i.i, align 8, !annotation !16
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.cz = call i32 @dma_buf_read(ptr noundef nonnull %i.cr, i64 noundef 4096, ptr noundef nonnull %i.i, ptr noundef nonnull %i.cy, i64 4294967296) #23 ; 0 uses
  %i.da = load i64, ptr %i.i, align 8
  %.not26.not.i.i.i61 = icmp eq i64 %i.da, 0
  br i1 %.not26.not.i.i.i61, label %.thread.i.i.i62, label %bb.as, !prof !7

.thread.i.i.i62:                                  ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #23
  br label %nvme_identify_pri_ctrl_cap.exit

bb.as:                                            ; preds = %bb.ar
  call fastcc void @trace_pci_nvme_err_invalid_dma()
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #23
  br label %nvme_identify_pri_ctrl_cap.exit

bb.at:                                            ; preds = %bb.aq
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.dc = tail call i64 @qemu_iovec_from_buf(ptr noundef nonnull %i.db, i64 noundef 0, ptr noundef nonnull %i.cr, i64 noundef 4096) #23
  %.not25.not.i.i.i63 = icmp eq i64 %i.dc, 4096
  br i1 %.not25.not.i.i.i63, label %nvme_identify_pri_ctrl_cap.exit, label %bb.au, !prof !7

bb.au:                                            ; preds = %bb.at
  tail call fastcc void @trace_pci_nvme_err_invalid_dma()
  br label %nvme_identify_pri_ctrl_cap.exit

bb.av:                                            ; preds = %trace_pci_nvme_identify.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.h, i8 0, i64 4096, i1 false)
  %i.dd = load i8, ptr %i.s, align 1              ; 4 uses
  %i.de = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i64 = icmp eq i32 %i.de, 0
  br i1 %.not.i.i64, label %trace_pci_nvme_identify_ctrl_csi.exit.i, label %bb.aw, !prof !7

bb.aw:                                            ; preds = %bb.av
  %i.df = load i16, ptr @_TRACE_PCI_NVME_IDENTIFY_CTRL_CSI_DSTATE, align 2
  %.not1.i.i65 = icmp eq i16 %i.df, 0
  br i1 %.not1.i.i65, label %trace_pci_nvme_identify_ctrl_csi.exit.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dg = load i32, ptr @qemu_loglevel, align 4
  %i.dh = and i32 %i.dg, 32768
  %.not2.i.i66 = icmp eq i32 %i.dh, 0
  br i1 %.not2.i.i66, label %trace_pci_nvme_identify_ctrl_csi.exit.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.di = zext i8 %i.dd to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.262, i32 noundef %i.di) #23
  %.pr.pre.i = load i8, ptr %i.s, align 1
  br label %trace_pci_nvme_identify_ctrl_csi.exit.i

trace_pci_nvme_identify_ctrl_csi.exit.i:          ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.av
  %i.dj = phi i8 [ %i.dd, %bb.av ], [ %.pr.pre.i, %bb.ay ], [ %i.dd, %bb.ax ], [ %i.dd, %bb.aw ]
  switch i8 %i.dj, label %nvme_identify_ctrl_csi.exit [
    i8 0, label %bb.az
    i8 2, label %bb.ba
  ]

bb.az:                                            ; preds = %trace_pci_nvme_identify_ctrl_csi.exit.i
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 7457
  %i.dl = load i8, ptr %i.dk, align 1
  store i8 %i.dl, ptr %i.h, align 16
  %i.dm = getelementptr inbounds nuw i8, ptr %i.h, i64 3
  store i8 -1, ptr %i.dm, align 1
end_hunk_2
