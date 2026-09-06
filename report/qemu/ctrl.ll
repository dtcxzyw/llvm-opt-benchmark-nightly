Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/ctrl?download=true
inline.NumInlined: 1462
inline.NumDeleted: 388
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 12
begin_hunk_0
@.str.397 = private unnamed_addr constant [10 x i8] c"page_size\00", align 1
@.str.398 = private unnamed_addr constant [10 x i8] c"page_bits\00", align 1
@vmstate_info_uint16 = external constant %struct.VMStateInfo, align 8
@.str.399 = private unnamed_addr constant [13 x i8] c"max_prp_ents\00", align 1
@.str.400 = private unnamed_addr constant [11 x i8] c"max_q_ents\00", align 1
@.str.401 = private unnamed_addr constant [17 x i8] c"outstanding_aers\00", align 1
@vmstate_info_uint8 = external constant %struct.VMStateInfo, align 8
@.str.402 = private unnamed_addr constant [11 x i8] c"irq_status\00", align 1
@.str.403 = private unnamed_addr constant [11 x i8] c"cq_pending\00", align 1
@vmstate_info_int32 = external constant %struct.VMStateInfo, align 8
@.str.404 = private unnamed_addr constant [15 x i8] c"host_timestamp\00", align 1
@.str.405 = private unnamed_addr constant [28 x i8] c"timestamp_set_qemu_clock_ms\00", align 1
@.str.406 = private unnamed_addr constant [13 x i8] c"starttime_ms\00", align 1
@.str.407 = private unnamed_addr constant [12 x i8] c"temperature\00", align 1
@.str.408 = private unnamed_addr constant [16 x i8] c"conf_msix_qsize\00", align 1
@.str.409 = private unnamed_addr constant [14 x i8] c"conf_ioqpairs\00", align 1
@.str.410 = private unnamed_addr constant [10 x i8] c"dbbuf_dbs\00", align 1
@.str.411 = private unnamed_addr constant [10 x i8] c"dbbuf_eis\00", align 1
@.str.412 = private unnamed_addr constant [14 x i8] c"dbbuf_enabled\00", align 1
@.str.413 = private unnamed_addr constant [9 x i8] c"aer_mask\00", align 1
@.str.414 = private unnamed_addr constant [9 x i8] c"aer_reqs\00", align 1
@.str.415 = private unnamed_addr constant [10 x i8] c"aer_queue\00", align 1
@vmstate_info_qtailq = external constant %struct.VMStateInfo, align 8
@.str.416 = private unnamed_addr constant [11 x i8] c"aer_queued\00", align 1
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
@switch.table.nvme_process_sq = private unnamed_addr constant [131 x ptr] [ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.228, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.228, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.228, ptr @.str.219, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.220, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.221, ptr @.str.223, ptr @.str.228, ptr @.str.222, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.224, ptr @.str.228, ptr @.str.228, ptr @.str.228, ptr @.str.225, ptr @.str.226, ptr @.str.227], align 8

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
  %i.m = sub nuw nsw i64 %i.k, %i.l
  %i.n = and i64 %2, 4294967295
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.n) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 7624 ; 2 uses
  %i.q = load i16, ptr %i.p, align 8
  %i.r = zext nneg i16 %i.q to i32
  %i.s = lshr i32 %i.h, %i.r
  %i.t = add i32 %i.s, 1
  %i.u = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i, label %trace_pci_nvme_map_prp.exit.i, label %bb.c, !prof !17

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
  %i.z = load i8, ptr %i.y, align 8, !range !18, !noundef !19
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
  %i.af = load i8, ptr %i.ae, align 1, !range !18, !noundef !19
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
  %i.ap = load i8, ptr %i.ao, align 8, !range !18, !noundef !19
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
  br i1 %.not.i145.i, label %trace_pci_nvme_err_addr_read.exit.thread.i, label %bb.p, !prof !17

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
end_hunk_0
begin_hunk_1_@nvme_process_sq:bb.a

.split134.us.i.i.i:                               ; preds = %.lr.ph152.split.us.split.i.i.i
  %i.sr = icmp eq i8 %i.so, 14
  br i1 %i.sr, label %nvme_zone_matches_filter.exit108.thread.us.i.i.i, label %bb.fu

.split135.us.i.i.i:                               ; preds = %.lr.ph152.split.us.split.i.i.i
  %i.ss = icmp eq i8 %i.so, 4
  br i1 %i.ss, label %nvme_zone_matches_filter.exit108.thread.us.i.i.i, label %bb.fu

.split136.us.i.i.i:                               ; preds = %.lr.ph152.split.us.split.i.i.i
  %i.st = icmp eq i8 %i.so, 3
  br i1 %i.st, label %nvme_zone_matches_filter.exit108.thread.us.i.i.i, label %bb.fu

.split137.us.i.i.i:                               ; preds = %.lr.ph152.split.us.split.i.i.i
  %i.su = icmp eq i8 %i.so, 2
  br i1 %i.su, label %nvme_zone_matches_filter.exit108.thread.us.i.i.i, label %bb.fu

.split138.us.i.i.i:                               ; preds = %.lr.ph152.split.us.split.i.i.i
  %i.sv = icmp eq i8 %i.so, 1
  br i1 %i.sv, label %nvme_zone_matches_filter.exit108.thread.us.i.i.i, label %bb.fu

nvme_zone_matches_filter.exit108.thread.us.i.i.i: ; preds = %.split138.us.i.i.i, %.split137.us.i.i.i, %.split136.us.i.i.i, %.split135.us.i.i.i, %.split134.us.i.i.i, %nvme_zone_matches_filter.exit108.us.i.i.i, %.split133.us.i.i.i, %.lr.ph152.split.us.split.i.i.i
  %i.sw = getelementptr inbounds nuw i8, ptr %.079150.us.i.i.i, i64 64 ; 2 uses
  %i.sx = load i8, ptr %i.sm, align 8
  store i8 %i.sx, ptr %.079150.us.i.i.i, align 1
  %i.sy = load i8, ptr %i.sn, align 1
  %i.sz = getelementptr inbounds nuw i8, ptr %.079150.us.i.i.i, i64 1
  store i8 %i.sy, ptr %i.sz, align 1
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sm, i64 8
  %i.tb = load i64, ptr %i.ta, align 8
  %i.tc = getelementptr inbounds nuw i8, ptr %.079150.us.i.i.i, i64 8
  store i64 %i.tb, ptr %i.tc, align 1
  %i.td = getelementptr inbounds nuw i8, ptr %i.sm, i64 16
  %i.te = load i64, ptr %i.td, align 8
  %i.tf = getelementptr inbounds nuw i8, ptr %.079150.us.i.i.i, i64 16
  store i64 %i.te, ptr %i.tf, align 1
  %i.tg = getelementptr inbounds nuw i8, ptr %i.sm, i64 2 ; 2 uses
  %i.th = load i8, ptr %i.tg, align 2
  %i.ti = getelementptr inbounds nuw i8, ptr %.079150.us.i.i.i, i64 2
  store i8 %i.th, ptr %i.ti, align 1
  %.val99.us.i.i.i = load i8, ptr %i.sn, align 1
  %i.tj = icmp ult i8 %.val99.us.i.i.i, -48
  br i1 %i.tj, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %nvme_zone_matches_filter.exit108.thread.us.i.i.i
  %i.tk = getelementptr inbounds nuw i8, ptr %i.sm, i64 24
  %i.tl = load i64, ptr %i.tk, align 8
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %nvme_zone_matches_filter.exit108.thread.us.i.i.i
  %.sink.i.i.i = phi i64 [ %i.tl, %bb.fq ], [ -1, %nvme_zone_matches_filter.exit108.thread.us.i.i.i ]
  %i.tm = getelementptr inbounds nuw i8, ptr %.079150.us.i.i.i, i64 24
  store i64 %.sink.i.i.i, ptr %i.tm, align 1
  %i.tn = load i8, ptr %i.tg, align 2
  %.not95.us.i.i.i = icmp sgt i8 %i.tn, -1
  br i1 %.not95.us.i.i.i, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %.val.us.i.i.i = load ptr, ptr %i.si, align 8
  %.val97.us.i.i.i = load i32, ptr %i.sj, align 8 ; 2 uses
  %i.to = trunc nuw i64 %indvars.iv161.i.i.i to i32
  %i.tp = mul i32 %.val97.us.i.i.i, %i.to
  %i.tq = zext i32 %i.tp to i64
  %i.tr = getelementptr inbounds nuw i8, ptr %.val.us.i.i.i, i64 %i.tq
  %i.ts = zext i32 %.val97.us.i.i.i to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.sw, ptr noundef nonnull align 1 %i.tr, i64 noundef %i.ts, i1 noundef false) #23
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fr
  %i.tt = load i32, ptr %i.sj, align 8
  %i.tu = zext i32 %i.tt to i64
  %i.tv = getelementptr inbounds nuw i8, ptr %i.sw, i64 %i.tu
  %i.tw = add nsw i64 %.083149.us.i.i.i, -1
  %.pre165.i.i.i = load i32, ptr %i.py, align 8
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %.split138.us.i.i.i, %.split137.us.i.i.i, %.split136.us.i.i.i, %.split135.us.i.i.i, %.split134.us.i.i.i, %nvme_zone_matches_filter.exit108.us.i.i.i, %.split133.us.i.i.i
  %i.tx = phi i32 [ %.pre165.i.i.i, %bb.ft ], [ %i.sk, %nvme_zone_matches_filter.exit108.us.i.i.i ], [ %i.sk, %.split133.us.i.i.i ], [ %i.sk, %.split134.us.i.i.i ], [ %i.sk, %.split135.us.i.i.i ], [ %i.sk, %.split136.us.i.i.i ], [ %i.sk, %.split137.us.i.i.i ], [ %i.sk, %.split138.us.i.i.i ] ; 2 uses
  %.184.us.i.i.i = phi i64 [ %i.tw, %bb.ft ], [ %.083149.us.i.i.i, %nvme_zone_matches_filter.exit108.us.i.i.i ], [ %.083149.us.i.i.i, %.split133.us.i.i.i ], [ %.083149.us.i.i.i, %.split134.us.i.i.i ], [ %.083149.us.i.i.i, %.split135.us.i.i.i ], [ %.083149.us.i.i.i, %.split136.us.i.i.i ], [ %.083149.us.i.i.i, %.split137.us.i.i.i ], [ %.083149.us.i.i.i, %.split138.us.i.i.i ] ; 2 uses
  %.2.us.i.i.i = phi ptr [ %i.tv, %bb.ft ], [ %.079150.us.i.i.i, %nvme_zone_matches_filter.exit108.us.i.i.i ], [ %.079150.us.i.i.i, %.split133.us.i.i.i ], [ %.079150.us.i.i.i, %.split134.us.i.i.i ], [ %.079150.us.i.i.i, %.split135.us.i.i.i ], [ %.079150.us.i.i.i, %.split136.us.i.i.i ], [ %.079150.us.i.i.i, %.split137.us.i.i.i ], [ %.079150.us.i.i.i, %.split138.us.i.i.i ]
  %indvars.iv.next162.i.i.i = add nuw nsw i64 %indvars.iv161.i.i.i, 1 ; 2 uses
  %i.ty = zext i32 %i.tx to i64
  %i.tz = icmp samesign ult i64 %indvars.iv.next162.i.i.i, %i.ty
  %i.ua = icmp ne i64 %.184.us.i.i.i, 0
  %i.ub = select i1 %i.tz, i1 %i.ua, i1 false
  br i1 %i.ub, label %.lr.ph152.split.us.split.i.i.i, label %._crit_edge153.i.i.i, !llvm.loop !58

.lr.ph152.split.split.i.i.i:                      ; preds = %.lr.ph152.i.i.i, %bb.fx
  %i.uc = phi i32 [ %i.vg, %bb.fx ], [ %i.rc, %.lr.ph152.i.i.i ] ; 7 uses
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.fx ], [ %i.rb, %.lr.ph152.i.i.i ] ; 2 uses
  %.079150.i.i.i = phi ptr [ %.2.i.i.i, %bb.fx ], [ %i.sh, %.lr.ph152.i.i.i ] ; 14 uses
  %.083149.i.i.i = phi i64 [ %.184.i.i.i, %bb.fx ], [ %i.qy, %.lr.ph152.i.i.i ] ; 8 uses
  %i.ud = load ptr, ptr %i.ra, align 8
  %i.ue = getelementptr inbounds nuw [88 x i8], ptr %i.ud, i64 %indvars.iv.i.i.i ; 6 uses
  %i.uf = getelementptr i8, ptr %i.ue, i64 1      ; 3 uses
  %.val98.i.i.i = load i8, ptr %i.uf, align 1
  %i.ug = lshr i8 %.val98.i.i.i, 4                ; 7 uses
  switch i32 %i.qg, label %.split133.i.i.i [
    i32 0, label %nvme_zone_matches_filter.exit108.thread.i.i.i
    i32 1, label %.split138.i.i.i
    i32 2, label %.split137.i.i.i
    i32 3, label %.split136.i.i.i
    i32 4, label %.split135.i.i.i
    i32 5, label %.split134.i.i.i
    i32 6, label %nvme_zone_matches_filter.exit108.i.i.i
  ]

.split138.i.i.i:                                  ; preds = %.lr.ph152.split.split.i.i.i
  %i.uh = icmp eq i8 %i.ug, 1
  br i1 %i.uh, label %nvme_zone_matches_filter.exit108.thread.i.i.i, label %bb.fx

.split137.i.i.i:                                  ; preds = %.lr.ph152.split.split.i.i.i
  %i.ui = icmp eq i8 %i.ug, 2
  br i1 %i.ui, label %nvme_zone_matches_filter.exit108.thread.i.i.i, label %bb.fx

.split136.i.i.i:                                  ; preds = %.lr.ph152.split.split.i.i.i
  %i.uj = icmp eq i8 %i.ug, 3
  br i1 %i.uj, label %nvme_zone_matches_filter.exit108.thread.i.i.i, label %bb.fx

.split135.i.i.i:                                  ; preds = %.lr.ph152.split.split.i.i.i
  %i.uk = icmp eq i8 %i.ug, 4
  br i1 %i.uk, label %nvme_zone_matches_filter.exit108.thread.i.i.i, label %bb.fx

.split134.i.i.i:                                  ; preds = %.lr.ph152.split.split.i.i.i
  %i.ul = icmp eq i8 %i.ug, 14
  br i1 %i.ul, label %nvme_zone_matches_filter.exit108.thread.i.i.i, label %bb.fx

.split133.i.i.i:                                  ; preds = %.lr.ph152.split.split.i.i.i
  %i.um = icmp eq i8 %i.ug, 15
  br i1 %i.um, label %nvme_zone_matches_filter.exit108.thread.i.i.i, label %bb.fx

nvme_zone_matches_filter.exit108.i.i.i:           ; preds = %.lr.ph152.split.split.i.i.i
  %i.un = icmp eq i8 %i.ug, 13
  br i1 %i.un, label %nvme_zone_matches_filter.exit108.thread.i.i.i, label %bb.fx

nvme_zone_matches_filter.exit108.thread.i.i.i:    ; preds = %nvme_zone_matches_filter.exit108.i.i.i, %.split133.i.i.i, %.split134.i.i.i, %.split135.i.i.i, %.split136.i.i.i, %.split137.i.i.i, %.split138.i.i.i, %.lr.ph152.split.split.i.i.i
  %i.uo = getelementptr inbounds nuw i8, ptr %.079150.i.i.i, i64 64
  %i.up = load i8, ptr %i.ue, align 8
  store i8 %i.up, ptr %.079150.i.i.i, align 1
  %i.uq = load i8, ptr %i.uf, align 1
  %i.ur = getelementptr inbounds nuw i8, ptr %.079150.i.i.i, i64 1
  store i8 %i.uq, ptr %i.ur, align 1
  %i.us = getelementptr inbounds nuw i8, ptr %i.ue, i64 8
  %i.ut = load i64, ptr %i.us, align 8
  %i.uu = getelementptr inbounds nuw i8, ptr %.079150.i.i.i, i64 8
  store i64 %i.ut, ptr %i.uu, align 1
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ue, i64 16
  %i.uw = load i64, ptr %i.uv, align 8
  %i.ux = getelementptr inbounds nuw i8, ptr %.079150.i.i.i, i64 16
  store i64 %i.uw, ptr %i.ux, align 1
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ue, i64 2
  %i.uz = load i8, ptr %i.uy, align 2
  %i.va = getelementptr inbounds nuw i8, ptr %.079150.i.i.i, i64 2
  store i8 %i.uz, ptr %i.va, align 1
  %.val99.i.i.i = load i8, ptr %i.uf, align 1
  %i.vb = icmp ult i8 %.val99.i.i.i, -48
  br i1 %i.vb, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %nvme_zone_matches_filter.exit108.thread.i.i.i
  %i.vc = getelementptr inbounds nuw i8, ptr %i.ue, i64 24
  %i.vd = load i64, ptr %i.vc, align 8
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %nvme_zone_matches_filter.exit108.thread.i.i.i
  %.sink164.i.i.i = phi i64 [ %i.vd, %bb.fv ], [ -1, %nvme_zone_matches_filter.exit108.thread.i.i.i ]
  %i.ve = getelementptr inbounds nuw i8, ptr %.079150.i.i.i, i64 24
  store i64 %.sink164.i.i.i, ptr %i.ve, align 1
  %i.vf = add nsw i64 %.083149.i.i.i, -1
  %.pre.i.i.i = load i32, ptr %i.py, align 8
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %nvme_zone_matches_filter.exit108.i.i.i, %.split133.i.i.i, %.split134.i.i.i, %.split135.i.i.i, %.split136.i.i.i, %.split137.i.i.i, %.split138.i.i.i
  %i.vg = phi i32 [ %.pre.i.i.i, %bb.fw ], [ %i.uc, %nvme_zone_matches_filter.exit108.i.i.i ], [ %i.uc, %.split133.i.i.i ], [ %i.uc, %.split134.i.i.i ], [ %i.uc, %.split135.i.i.i ], [ %i.uc, %.split136.i.i.i ], [ %i.uc, %.split137.i.i.i ], [ %i.uc, %.split138.i.i.i ] ; 2 uses
  %.184.i.i.i = phi i64 [ %i.vf, %bb.fw ], [ %.083149.i.i.i, %nvme_zone_matches_filter.exit108.i.i.i ], [ %.083149.i.i.i, %.split133.i.i.i ], [ %.083149.i.i.i, %.split134.i.i.i ], [ %.083149.i.i.i, %.split135.i.i.i ], [ %.083149.i.i.i, %.split136.i.i.i ], [ %.083149.i.i.i, %.split137.i.i.i ], [ %.083149.i.i.i, %.split138.i.i.i ] ; 2 uses
  %.2.i.i.i = phi ptr [ %i.uo, %bb.fw ], [ %.079150.i.i.i, %nvme_zone_matches_filter.exit108.i.i.i ], [ %.079150.i.i.i, %.split133.i.i.i ], [ %.079150.i.i.i, %.split134.i.i.i ], [ %.079150.i.i.i, %.split135.i.i.i ], [ %.079150.i.i.i, %.split136.i.i.i ], [ %.079150.i.i.i, %.split137.i.i.i ], [ %.079150.i.i.i, %.split138.i.i.i ]
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.vh = zext i32 %i.vg to i64
  %i.vi = icmp samesign ult i64 %indvars.iv.next.i.i.i, %i.vh
  %i.vj = icmp ne i64 %.184.i.i.i, 0
  %i.vk = select i1 %i.vi, i1 %i.vj, i1 false
  br i1 %i.vk, label %.lr.ph152.split.split.i.i.i, label %._crit_edge153.i.i.i, !llvm.loop !58

._crit_edge153.i.i.i:                             ; preds = %bb.fx, %bb.fu, %._crit_edge.i.i.i, %._crit_edge.thread.i.i.i
  %i.vl = call fastcc zeroext i16 @nvme_c2h(ptr noundef %i.b, ptr noundef nonnull %i.qz, i32 noundef %i.pb, ptr noundef %i.eu)
  call void @g_free(ptr noundef nonnull %i.qz) #23
  br label %nvme_io_cmd.exit.thread

bb.fy:                                            ; preds = %bb.br
  %i.vm = call fastcc zeroext i16 @__nvme_io_cmd_nvm(ptr noundef nonnull %i.b, ptr noundef nonnull %i.eu)
  br label %nvme_io_cmd.exit

bb.fz:                                            ; preds = %bb.bf
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 4758, ptr noundef nonnull @__func__.nvme_io_cmd, ptr noundef null) #24
  unreachable

nvme_cid.exit.i:                                  ; preds = %bb.ah
  %i.vn = zext i16 %i.fj to i32
  %.val.i88 = load ptr, ptr %i.eu, align 8
  %i.vo = getelementptr i8, ptr %.val.i88, i64 8
  %.val.val.i89 = load i16, ptr %i.vo, align 8
  %i.vp = load i8, ptr %i.fl, align 8             ; 6 uses
  %2 = icmp ult i8 %i.vp, -125
  br i1 %2, label %bb.ga, label %nvme_adm_opc_str.exit.i

bb.ga:                                            ; preds = %nvme_cid.exit.i
  %3 = zext i8 %i.vp to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.nvme_process_sq, i64 %3
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %nvme_adm_opc_str.exit.i

nvme_adm_opc_str.exit.i:                          ; preds = %nvme_cid.exit.i, %bb.ga
  %.0.i50.i = phi ptr [ %switch.load, %bb.ga ], [ @.str.228, %nvme_cid.exit.i ]
  %i.vq = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i51.i = icmp eq i32 %i.vq, 0
  br i1 %.not.i51.i, label %trace_pci_nvme_admin_cmd.exit.i, label %bb.gb, !prof !17

bb.gb:                                            ; preds = %nvme_adm_opc_str.exit.i
  %i.vr = load i16, ptr @_TRACE_PCI_NVME_ADMIN_CMD_DSTATE, align 2
  %.not3.i.i90 = icmp eq i16 %i.vr, 0
  br i1 %.not3.i.i90, label %trace_pci_nvme_admin_cmd.exit.i, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.vs = load i32, ptr @qemu_loglevel, align 4
  %i.vt = and i32 %i.vs, 32768
  %.not4.i.i91 = icmp eq i32 %i.vt, 0
  br i1 %.not4.i.i91, label %trace_pci_nvme_admin_cmd.exit.i, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.vu = zext i16 %.val.val.i89 to i32
  %i.vv = zext i8 %i.vp to i32
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.209, i32 noundef %i.vn, i32 noundef %i.vu, i32 noundef %i.vv, ptr noundef nonnull %.0.i50.i) #23, !inline_history !59
  %.pre.i92 = load i8, ptr %i.fl, align 8
  br label %trace_pci_nvme_admin_cmd.exit.i

trace_pci_nvme_admin_cmd.exit.i:                  ; preds = %bb.gd, %bb.gc, %bb.gb, %nvme_adm_opc_str.exit.i
  %i.vw = phi i8 [ %i.vp, %nvme_adm_opc_str.exit.i ], [ %i.vp, %bb.gb ], [ %i.vp, %bb.gc ], [ %.pre.i92, %bb.gd ] ; 3 uses
  %i.vx = zext i8 %i.vw to i64
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.vx
  %i.vz = load i32, ptr %i.vy, align 4
  %i.wa = and i32 %i.vz, 1
  %.not.i93 = icmp eq i32 %i.wa, 0
  br i1 %.not.i93, label %bb.ge, label %bb.gi

bb.ge:                                            ; preds = %trace_pci_nvme_admin_cmd.exit.i
  %i.wb = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i52.i = icmp eq i32 %i.wb, 0
  br i1 %.not.i52.i, label %nvme_io_cmd.exit.thread, label %bb.gf, !prof !17

bb.gf:                                            ; preds = %bb.ge
  %i.wc = load i16, ptr @_TRACE_PCI_NVME_ERR_INVALID_ADMIN_OPC_DSTATE, align 2
  %.not1.i.i = icmp eq i16 %i.wc, 0
  br i1 %.not1.i.i, label %nvme_io_cmd.exit.thread, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.wd = load i32, ptr @qemu_loglevel, align 4
  %i.we = and i32 %i.wd, 32768
  %.not2.i.i95 = icmp eq i32 %i.we, 0
  br i1 %.not2.i.i95, label %nvme_io_cmd.exit.thread, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.wf = zext i8 %i.vw to i32
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.229, i32 noundef %i.wf) #23, !inline_history !59
  br label %nvme_io_cmd.exit.thread

bb.gi:                                            ; preds = %trace_pci_nvme_admin_cmd.exit.i
  %i.wg = getelementptr inbounds nuw i8, ptr %i.eu, i64 57
  %i.wh = load i8, ptr %i.wg, align 1             ; 2 uses
  %.not46.i = icmp ult i8 %i.wh, 64
  br i1 %.not46.i, label %bb.gj, label %nvme_io_cmd.exit.thread

bb.gj:                                            ; preds = %bb.gi
  %i.wi = and i8 %i.wh, 3
  %.not47.i = icmp eq i8 %i.wi, 0
  br i1 %.not47.i, label %bb.gk, label %nvme_io_cmd.exit.thread

bb.gk:                                            ; preds = %bb.gj
  switch i8 %i.vw, label %bb.hc [
    i8 0, label %bb.gl
    i8 1, label %bb.gm
    i8 2, label %bb.gn
    i8 4, label %bb.go
    i8 5, label %bb.gp
    i8 6, label %bb.gq
    i8 8, label %bb.gr
    i8 9, label %bb.gs
    i8 10, label %bb.gt
    i8 12, label %bb.gu
    i8 21, label %bb.gv
    i8 28, label %bb.gw
    i8 124, label %bb.gx
    i8 -128, label %bb.gy
    i8 25, label %nvme_io_cmd.exit.thread
    i8 26, label %bb.gz
    i8 -127, label %bb.ha
    i8 -126, label %bb.hb
  ]

bb.gl:                                            ; preds = %bb.gk
  %i.wj = getelementptr i8, ptr %i.eu, i64 96
  %.val48.i = load i16, ptr %i.wj, align 8
  %i.wk = call fastcc zeroext i16 @nvme_del_sq(ptr noundef nonnull %i.b, i16 %.val48.i), !inline_history !59
  br label %nvme_io_cmd.exit.thread

bb.gm:                                            ; preds = %bb.gk
  %i.wl = call fastcc zeroext i16 @nvme_create_sq(ptr noundef nonnull %i.b, ptr noundef nonnull %i.eu), !inline_history !59
  br label %nvme_io_cmd.exit.thread

bb.gn:                                            ; preds = %bb.gk
  %i.wm = call fastcc zeroext i16 @nvme_get_log(ptr noundef nonnull %i.b, ptr noundef nonnull %i.eu), !inline_history !59
  br label %nvme_io_cmd.exit.thread

bb.go:                                            ; preds = %bb.gk
  %i.wn = getelementptr i8, ptr %i.eu, i64 96
  %.val49.i = load i16, ptr %i.wn, align 8
  %i.wo = call fastcc zeroext i16 @nvme_del_cq(ptr noundef nonnull %i.b, i16 %.val49.i), !inline_history !59
  br label %nvme_io_cmd.exit.thread

bb.gp:                                            ; preds = %bb.gk
  %i.wp = call fastcc zeroext i16 @nvme_create_cq(ptr noundef nonnull %i.b, ptr noundef nonnull %i.eu), !inline_history !59
  br label %nvme_io_cmd.exit.thread

bb.gq:                                            ; preds = %bb.gk
  %i.wq = call fastcc zeroext i16 @nvme_identify(ptr noundef nonnull %i.b, ptr noundef nonnull %i.eu), !inline_history !59
  br label %nvme_io_cmd.exit.thread

bb.gr:                                            ; preds = %bb.gk
  %i.wr = call fastcc zeroext i16 @nvme_abort(ptr noundef nonnull %i.b, ptr noundef nonnull %i.eu), !inline_history !59
  br label %nvme_io_cmd.exit.thread

bb.gs:                                            ; preds = %bb.gk
  %i.ws = call fastcc zeroext i16 @nvme_set_feature(ptr noundef nonnull %i.b, ptr noundef nonnull %i.eu), !inline_history !59
  br label %nvme_io_cmd.exit.thread

bb.gt:                                            ; preds = %bb.gk
  %i.wt = call fastcc zeroext i16 @nvme_get_feature(ptr noundef nonnull %i.b, ptr noundef nonnull %i.eu), !inline_history !59
  br label %nvme_io_cmd.exit.thread

bb.gu:                                            ; preds = %bb.gk
  %i.wu = call fastcc zeroext i16 @nvme_aer(ptr noundef nonnull %i.b, ptr noundef nonnull %i.eu), !inline_history !59
  br label %nvme_io_cmd.exit

bb.gv:                                            ; preds = %bb.gk
  %i.wv = call fastcc zeroext i16 @nvme_ns_attachment(ptr noundef nonnull %i.b, ptr noundef nonnull %i.eu), !inline_history !59
  br label %nvme_io_cmd.exit.thread

bb.gw:                                            ; preds = %bb.gk
  %i.ww = call fastcc zeroext i16 @nvme_virt_mngmt(ptr noundef nonnull %i.b, ptr noundef nonnull %i.eu), !inline_history !59
  br label %nvme_io_cmd.exit

bb.gx:                                            ; preds = %bb.gk
  %i.wx = call fastcc zeroext i16 @nvme_dbbuf_config(ptr noundef nonnull %i.b, ptr noundef nonnull %i.eu), !inline_history !59
  br label %nvme_io_cmd.exit.thread

bb.gy:                                            ; preds = %bb.gk
  %i.wy = call fastcc zeroext i16 @nvme_format(ptr noundef nonnull %i.b, ptr noundef nonnull %i.eu), !inline_history !59
  br label %nvme_io_cmd.exit

bb.gz:                                            ; preds = %bb.gk
  %i.wz = call fastcc zeroext i16 @nvme_directive_receive(ptr noundef nonnull %i.b, ptr noundef nonnull %i.eu), !inline_history !59
  br label %nvme_io_cmd.exit.thread

bb.ha:                                            ; preds = %bb.gk
  %i.xa = call fastcc zeroext i16 @nvme_security_send(ptr noundef nonnull %i.b, ptr noundef nonnull %i.eu), !inline_history !59
  br label %nvme_io_cmd.exit

bb.hb:                                            ; preds = %bb.gk
  %i.xb = call fastcc zeroext i16 @nvme_security_receive(ptr noundef nonnull %i.b, ptr noundef nonnull %i.eu), !inline_history !59
  br label %nvme_io_cmd.exit

bb.hc:                                            ; preds = %bb.gk
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 7764, ptr noundef nonnull @__func__.nvme_admin_cmd, ptr noundef null) #24, !inline_history !59
  unreachable

nvme_io_cmd.exit:                                 ; preds = %bb.hb, %bb.ha, %bb.gy, %bb.gw, %bb.gu, %bb.fy, %trace_pci_nvme_err_invalid_zone_state_transition.exit.i.i.i, %bb.bs, %bb.bl, %bb.bd
  %.in = phi i16 [ %i.ww, %bb.gw ], [ %i.vm, %bb.fy ], [ %i.hw, %bb.bs ], [ %i.wu, %bb.gu ], [ %i.ox, %trace_pci_nvme_err_invalid_zone_state_transition.exit.i.i.i ], [ %i.gx, %bb.bd ], [ %i.xb, %bb.hb ], [ %i.xa, %bb.ha ], [ %i.wy, %bb.gy ], [ %i.hm, %bb.bl ] ; 2 uses
  %.not73 = icmp eq i16 %.in, -1
  br i1 %.not73, label %nvme_io_cmd.exit.thread118, label %nvme_io_cmd.exit.thread

nvme_io_cmd.exit.thread:                          ; preds = %nvme_bulk_proc_zone.exit108.thread.i126.i.i.i, %nvme_bulk_proc_zone.exit108.thread.i.i.i.i, %bb.gk, %bb.gg, %bb.gf, %bb.ge, %bb.gz, %bb.gh, %bb.gx, %bb.gv, %bb.gt, %bb.gs, %bb.gr, %bb.gq, %bb.gp, %bb.go, %bb.gn, %bb.gm, %bb.gl, %bb.gi, %bb.gj, %bb.fi, %bb.fh, %bb.er, %bb.es, %bb.et, %bb.eu, %._crit_edge153.i.i.i, %bb.fe, %bb.fd, %bb.fc, %bb.ew, %nvme_get_mgmt_zone_slba_idx.exit.i19.i.i, %.critedge.i.i.i.i, %.critedge4.i119.i.i.i, %.critedge4.i.i.i.i, %bb.fk, %bb.bv, %bb.bw, %bb.bx, %bb.by, %bb.eh, %bb.eg, %bb.ed, %bb.ea, %bb.ef, %bb.ee, %bb.ec, %bb.eb, %bb.ch, %bb.cg, %bb.cf, %bb.du, %bb.ci, %trace_pci_nvme_set_descriptor_extension.exit.i.i.i, %bb.dy, %bb.dw, %bb.ca, %bb.dz, %nvme_do_zone_op.exit.i.i.i, %bb.bp, %bb.bo, %bb.bn, %bb.bq, %bb.bj, %bb.bi, %bb.bh, %bb.bb, %bb.fj, %nvme_ns.exit.i85, %bb.bc, %bb.bk, %bb.be, %nvme_io_cmd.exit
  %.in116 = phi i16 [ %.in, %nvme_io_cmd.exit ], [ 16386, %bb.gk ], [ 16385, %bb.gg ], [ 16385, %bb.gf ], [ 16385, %bb.ge ], [ %i.wz, %bb.gz ], [ 16385, %bb.gh ], [ %i.wx, %bb.gx ], [ %i.wv, %bb.gv ], [ %i.wt, %bb.gt ], [ %i.ws, %bb.gs ], [ %i.wr, %bb.gr ], [ %i.wq, %bb.gq ], [ %i.wp, %bb.gp ], [ %i.wo, %bb.go ], [ %i.wm, %bb.gn ], [ %i.wl, %bb.gm ], [ %i.wk, %bb.gl ], [ 16386, %bb.gi ], [ 2, %bb.gj ], [ 16386, %bb.fi ], [ 16386, %bb.fh ], [ 16385, %bb.er ], [ 16385, %bb.es ], [ 16385, %bb.et ], [ 16385, %bb.eu ], [ %i.vl, %._crit_edge153.i.i.i ], [ 16386, %bb.fe ], [ 16386, %bb.fd ], [ 16386, %bb.fc ], [ 16512, %bb.ew ], [ 16386, %nvme_get_mgmt_zone_slba_idx.exit.i19.i.i ], [ 0, %.critedge.i.i.i.i ], [ 0, %.critedge4.i119.i.i.i ], [ 0, %.critedge4.i.i.i.i ], [ 16386, %bb.fk ], [ 16385, %bb.bv ], [ 16385, %bb.bw ], [ 16385, %bb.bx ], [ 16385, %bb.by ], [ 0, %bb.eh ], [ 0, %bb.eg ], [ 16824, %bb.ed ], [ 16822, %bb.ea ], [ %i.nz, %bb.ef ], [ 16386, %bb.ee ], [ 16824, %bb.ec ], [ 16386, %bb.eb ], [ 16386, %bb.ch ], [ 16386, %bb.cg ], [ 16386, %bb.cf ], [ 16386, %bb.du ], [ 16386, %bb.ci ], [ 16386, %trace_pci_nvme_set_descriptor_extension.exit.i.i.i ], [ 0, %bb.dy ], [ %i.mz, %bb.dw ], [ 16512, %bb.ca ], [ 16386, %bb.dz ], [ %.079.i.i.i, %nvme_do_zone_op.exit.i.i.i ], [ 16385, %bb.bp ], [ 16385, %bb.bo ], [ 16385, %bb.bn ], [ 0, %nvme_bulk_proc_zone.exit108.thread.i.i.i.i ], [ 16385, %bb.bq ], [ 16385, %bb.bj ], [ 16385, %bb.bi ], [ 16385, %bb.bh ], [ %.0.i33.i, %bb.bb ], [ 16386, %bb.fj ], [ 16386, %nvme_ns.exit.i85 ], [ 16395, %bb.bc ], [ 16385, %bb.bk ], [ 2, %bb.be ], [ 0, %nvme_bulk_proc_zone.exit108.thread.i126.i.i.i ]
  store i16 %.in116, ptr %i.fg, align 8
  call fastcc void @nvme_enqueue_req_completion(ptr noundef %i.i, ptr noundef %i.eu)
  br label %nvme_io_cmd.exit.thread118

nvme_io_cmd.exit.thread118:                       ; preds = %bb.ba, %trace_pci_nvme_reset_zone.exit.i.i.i, %nvme_io_cmd.exit.thread, %nvme_io_cmd.exit
  %i.xc = load i8, ptr %i.k, align 8, !range !18, !noundef !19
  %i.xd = trunc nuw i8 %i.xc to i1
  %.val75.pre175 = load i32, ptr %i.ae, align 8   ; 2 uses
  br i1 %i.xd, label %bb.hd, label %nvme_update_sq_tail.exit102

bb.hd:                                            ; preds = %nvme_io_cmd.exit.thread118
  %i.xe = load i16, ptr %i.al, align 8
  %i.xf = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i96 = icmp eq i32 %i.xf, 0
  br i1 %.not.i.i96, label %nvme_update_sq_eventidx.exit, label %bb.he, !prof !17

bb.he:                                            ; preds = %bb.hd
  %i.xg = load i16, ptr @_TRACE_PCI_NVME_UPDATE_SQ_EVENTIDX_DSTATE, align 2
  %.not2.i.i97 = icmp eq i16 %i.xg, 0
  br i1 %.not2.i.i97, label %nvme_update_sq_eventidx.exit, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.xh = load i32, ptr @qemu_loglevel, align 4
  %i.xi = and i32 %i.xh, 32768
  %.not3.i.i98 = icmp eq i32 %i.xi, 0
  br i1 %.not3.i.i98, label %nvme_update_sq_eventidx.exit, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.xj = zext i16 %i.xe to i32
  %i.xk = and i32 %.val75.pre175, 65535
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.290, i32 noundef %i.xj, i32 noundef %i.xk) #23
  br label %nvme_update_sq_eventidx.exit
end_hunk_1
