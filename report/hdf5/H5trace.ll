Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5trace?download=true
inline.NumInlined: 15
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
@.str.406 = private unnamed_addr constant [24 x i8] c"H5VL_DATASET_SET_EXTENT\00", align 1
@.str.407 = private unnamed_addr constant [19 x i8] c"H5VL_DATASET_FLUSH\00", align 1
@.str.408 = private unnamed_addr constant [21 x i8] c"H5VL_DATASET_REFRESH\00", align 1
@.str.409 = private unnamed_addr constant [30 x i8] c"H5VL_DATATYPE_GET_BINARY_SIZE\00", align 1
@.str.410 = private unnamed_addr constant [25 x i8] c"H5VL_DATATYPE_GET_BINARY\00", align 1
@.str.411 = private unnamed_addr constant [23 x i8] c"H5VL_DATATYPE_GET_TCPL\00", align 1
@.str.412 = private unnamed_addr constant [20 x i8] c"H5VL_DATATYPE_FLUSH\00", align 1
@.str.413 = private unnamed_addr constant [22 x i8] c"H5VL_DATATYPE_REFRESH\00", align 1
@.str.414 = private unnamed_addr constant [24 x i8] c"H5VL_FILE_GET_CONT_INFO\00", align 1
@.str.415 = private unnamed_addr constant [19 x i8] c"H5VL_FILE_GET_FAPL\00", align 1
@.str.416 = private unnamed_addr constant [19 x i8] c"H5VL_FILE_GET_FCPL\00", align 1
@.str.417 = private unnamed_addr constant [21 x i8] c"H5VL_FILE_GET_FILENO\00", align 1
@.str.418 = private unnamed_addr constant [21 x i8] c"H5VL_FILE_GET_INTENT\00", align 1
@.str.419 = private unnamed_addr constant [19 x i8] c"H5VL_FILE_GET_NAME\00", align 1
@.str.420 = private unnamed_addr constant [24 x i8] c"H5VL_FILE_GET_OBJ_COUNT\00", align 1
@.str.421 = private unnamed_addr constant [22 x i8] c"H5VL_FILE_GET_OBJ_IDS\00", align 1
@.str.422 = private unnamed_addr constant [16 x i8] c"H5VL_FILE_FLUSH\00", align 1
@.str.423 = private unnamed_addr constant [17 x i8] c"H5VL_FILE_REOPEN\00", align 1
@.str.424 = private unnamed_addr constant [24 x i8] c"H5VL_FILE_IS_ACCESSIBLE\00", align 1
@.str.425 = private unnamed_addr constant [17 x i8] c"H5VL_FILE_DELETE\00", align 1
@.str.426 = private unnamed_addr constant [19 x i8] c"H5VL_FILE_IS_EQUAL\00", align 1
@.str.427 = private unnamed_addr constant [20 x i8] c"H5VL_GROUP_GET_GCPL\00", align 1
@.str.428 = private unnamed_addr constant [20 x i8] c"H5VL_GROUP_GET_INFO\00", align 1
@.str.429 = private unnamed_addr constant [17 x i8] c"H5VL_GROUP_MOUNT\00", align 1
@.str.430 = private unnamed_addr constant [19 x i8] c"H5VL_GROUP_UNMOUNT\00", align 1
@.str.431 = private unnamed_addr constant [17 x i8] c"H5VL_GROUP_FLUSH\00", align 1
@.str.432 = private unnamed_addr constant [19 x i8] c"H5VL_GROUP_REFRESH\00", align 1
@.str.433 = private unnamed_addr constant [22 x i8] c"H5VL_LINK_CREATE_HARD\00", align 1
@.str.434 = private unnamed_addr constant [22 x i8] c"H5VL_LINK_CREATE_SOFT\00", align 1
@.str.435 = private unnamed_addr constant [20 x i8] c"H5VL_LINK_CREATE_UD\00", align 1
@.str.436 = private unnamed_addr constant [19 x i8] c"H5VL_LINK_GET_INFO\00", align 1
@.str.437 = private unnamed_addr constant [19 x i8] c"H5VL_LINK_GET_NAME\00", align 1
@.str.438 = private unnamed_addr constant [18 x i8] c"H5VL_LINK_GET_VAL\00", align 1
@.str.439 = private unnamed_addr constant [23 x i8] c"H5VL_GET_CONN_LVL_CURR\00", align 1
@.str.440 = private unnamed_addr constant [23 x i8] c"H5VL_GET_CONN_LVL_TERM\00", align 1
@.str.441 = private unnamed_addr constant [17 x i8] c"H5VL_LINK_DELETE\00", align 1
@.str.442 = private unnamed_addr constant [17 x i8] c"H5VL_LINK_EXISTS\00", align 1
@.str.443 = private unnamed_addr constant [15 x i8] c"H5VL_LINK_ITER\00", align 1
@.str.444 = private unnamed_addr constant [21 x i8] c"H5VL_OBJECT_GET_FILE\00", align 1
@.str.445 = private unnamed_addr constant [21 x i8] c"H5VL_OBJECT_GET_NAME\00", align 1
@.str.446 = private unnamed_addr constant [21 x i8] c"H5VL_OBJECT_GET_TYPE\00", align 1
@.str.447 = private unnamed_addr constant [21 x i8] c"H5VL_OBJECT_GET_INFO\00", align 1
@.str.448 = private unnamed_addr constant [29 x i8] c"H5VL_OBJECT_CHANGE_REF_COUNT\00", align 1
@.str.449 = private unnamed_addr constant [19 x i8] c"H5VL_OBJECT_EXISTS\00", align 1
@.str.450 = private unnamed_addr constant [19 x i8] c"H5VL_OBJECT_LOOKUP\00", align 1
@.str.451 = private unnamed_addr constant [18 x i8] c"H5VL_OBJECT_VISIT\00", align 1
@.str.452 = private unnamed_addr constant [18 x i8] c"H5VL_OBJECT_FLUSH\00", align 1
@.str.453 = private unnamed_addr constant [20 x i8] c"H5VL_OBJECT_REFRESH\00", align 1
@.str.454 = private unnamed_addr constant [27 x i8] c"H5VL_REQUEST_GET_ERR_STACK\00", align 1
@.str.455 = private unnamed_addr constant [27 x i8] c"H5VL_REQUEST_GET_EXEC_TIME\00", align 1
@.str.456 = private unnamed_addr constant [29 x i8] c"H5VL_NATIVE_ATTR_ITERATE_OLD\00", align 1
@.str.457 = private unnamed_addr constant [17 x i8] c"H5VL_SUBCLS_NONE\00", align 1
@.str.458 = private unnamed_addr constant [17 x i8] c"H5VL_SUBCLS_INFO\00", align 1
@.str.459 = private unnamed_addr constant [17 x i8] c"H5VL_SUBCLS_WRAP\00", align 1
@.str.460 = private unnamed_addr constant [17 x i8] c"H5VL_SUBCLS_ATTR\00", align 1
@.str.461 = private unnamed_addr constant [20 x i8] c"H5VL_SUBCLS_DATASET\00", align 1
@.str.462 = private unnamed_addr constant [21 x i8] c"H5VL_SUBCLS_DATATYPE\00", align 1
@.str.463 = private unnamed_addr constant [17 x i8] c"H5VL_SUBCLS_FILE\00", align 1
@.str.464 = private unnamed_addr constant [18 x i8] c"H5VL_SUBCLS_GROUP\00", align 1
@.str.465 = private unnamed_addr constant [17 x i8] c"H5VL_SUBCLS_LINK\00", align 1
@.str.466 = private unnamed_addr constant [19 x i8] c"H5VL_SUBCLS_OBJECT\00", align 1
@.str.467 = private unnamed_addr constant [20 x i8] c"H5VL_SUBCLS_REQUEST\00", align 1
@.str.468 = private unnamed_addr constant [17 x i8] c"H5VL_SUBCLS_BLOB\00", align 1
@.str.469 = private unnamed_addr constant [18 x i8] c"H5VL_SUBCLS_TOKEN\00", align 1
@.str.470 = private unnamed_addr constant [35 x i8] c"H5VL_NATIVE_DATASET_FORMAT_CONVERT\00", align 1
@.str.471 = private unnamed_addr constant [41 x i8] c"H5VL_NATIVE_DATASET_GET_CHUNK_INDEX_TYPE\00", align 1
@.str.472 = private unnamed_addr constant [43 x i8] c"H5VL_NATIVE_DATASET_GET_CHUNK_STORAGE_SIZE\00", align 1
@.str.473 = private unnamed_addr constant [35 x i8] c"H5VL_NATIVE_DATASET_GET_NUM_CHUNKS\00", align 1
@.str.474 = private unnamed_addr constant [42 x i8] c"H5VL_NATIVE_DATASET_GET_CHUNK_INFO_BY_IDX\00", align 1
@.str.475 = private unnamed_addr constant [44 x i8] c"H5VL_NATIVE_DATASET_GET_CHUNK_INFO_BY_COORD\00", align 1
@.str.476 = private unnamed_addr constant [31 x i8] c"H5VL_NATIVE_DATASET_CHUNK_READ\00", align 1
@.str.477 = private unnamed_addr constant [32 x i8] c"H5VL_NATIVE_DATASET_CHUNK_WRITE\00", align 1
@.str.478 = private unnamed_addr constant [38 x i8] c"H5VL_NATIVE_DATASET_GET_VLEN_BUF_SIZE\00", align 1
@.str.479 = private unnamed_addr constant [31 x i8] c"H5VL_NATIVE_DATASET_GET_OFFSET\00", align 1
@.str.480 = private unnamed_addr constant [35 x i8] c"H5VL_NATIVE_FILE_CLEAR_ELINK_CACHE\00", align 1
@.str.481 = private unnamed_addr constant [32 x i8] c"H5VL_NATIVE_FILE_GET_FILE_IMAGE\00", align 1
@.str.482 = private unnamed_addr constant [35 x i8] c"H5VL_NATIVE_FILE_GET_FREE_SECTIONS\00", align 1
@.str.483 = private unnamed_addr constant [32 x i8] c"H5VL_NATIVE_FILE_GET_FREE_SPACE\00", align 1
@.str.484 = private unnamed_addr constant [26 x i8] c"H5VL_NATIVE_FILE_GET_INFO\00", align 1
@.str.485 = private unnamed_addr constant [30 x i8] c"H5VL_NATIVE_FILE_GET_MDC_CONF\00", align 1
@.str.486 = private unnamed_addr constant [28 x i8] c"H5VL_NATIVE_FILE_GET_MDC_HR\00", align 1
@.str.487 = private unnamed_addr constant [30 x i8] c"H5VL_NATIVE_FILE_GET_MDC_SIZE\00", align 1
@.str.488 = private unnamed_addr constant [26 x i8] c"H5VL_NATIVE_FILE_GET_SIZE\00", align 1
@.str.489 = private unnamed_addr constant [32 x i8] c"H5VL_NATIVE_FILE_GET_VFD_HANDLE\00", align 1
@.str.490 = private unnamed_addr constant [36 x i8] c"H5VL_NATIVE_FILE_RESET_MDC_HIT_RATE\00", align 1
@.str.491 = private unnamed_addr constant [32 x i8] c"H5VL_NATIVE_FILE_SET_MDC_CONFIG\00", align 1
@.str.492 = private unnamed_addr constant [46 x i8] c"H5VL_NATIVE_FILE_GET_METADATA_READ_RETRY_INFO\00", align 1
@.str.493 = private unnamed_addr constant [34 x i8] c"H5VL_NATIVE_FILE_START_SWMR_WRITE\00", align 1
@.str.494 = private unnamed_addr constant [35 x i8] c"H5VL_NATIVE_FILE_START_MDC_LOGGING\00", align 1
@.str.495 = private unnamed_addr constant [34 x i8] c"H5VL_NATIVE_FILE_STOP_MDC_LOGGING\00", align 1
@.str.496 = private unnamed_addr constant [40 x i8] c"H5VL_NATIVE_FILE_GET_MDC_LOGGING_STATUS\00", align 1
@.str.497 = private unnamed_addr constant [32 x i8] c"H5VL_NATIVE_FILE_FORMAT_CONVERT\00", align 1
@.str.498 = private unnamed_addr constant [44 x i8] c"H5VL_NATIVE_FILE_RESET_PAGE_BUFFERING_STATS\00", align 1
@.str.499 = private unnamed_addr constant [42 x i8] c"H5VL_NATIVE_FILE_GET_PAGE_BUFFERING_STATS\00", align 1
@.str.500 = private unnamed_addr constant [36 x i8] c"H5VL_NATIVE_FILE_GET_MDC_IMAGE_INFO\00", align 1
@.str.501 = private unnamed_addr constant [25 x i8] c"H5VL_NATIVE_FILE_GET_EOA\00", align 1
@.str.502 = private unnamed_addr constant [31 x i8] c"H5VL_NATIVE_FILE_INCR_FILESIZE\00", align 1
@.str.503 = private unnamed_addr constant [35 x i8] c"H5VL_NATIVE_FILE_SET_LIBVER_BOUNDS\00", align 1
@.str.504 = private unnamed_addr constant [40 x i8] c"H5VL_NATIVE_FILE_GET_MIN_DSET_OHDR_FLAG\00", align 1
@.str.505 = private unnamed_addr constant [40 x i8] c"H5VL_NATIVE_FILE_SET_MIN_DSET_OHDR_FLAG\00", align 1
@.str.506 = private unnamed_addr constant [27 x i8] c"H5VL_NATIVE_FILE_POST_OPEN\00", align 1
@.str.507 = private unnamed_addr constant [30 x i8] c"H5VL_NATIVE_GROUP_ITERATE_OLD\00", align 1
@.str.508 = private unnamed_addr constant [30 x i8] c"H5VL_NATIVE_GROUP_GET_OBJINFO\00", align 1
@.str.509 = private unnamed_addr constant [31 x i8] c"H5VL_NATIVE_OBJECT_GET_COMMENT\00", align 1
@.str.510 = private unnamed_addr constant [31 x i8] c"H5VL_NATIVE_OBJECT_SET_COMMENT\00", align 1
@.str.511 = private unnamed_addr constant [39 x i8] c"H5VL_NATIVE_OBJECT_DISABLE_MDC_FLUSHES\00", align 1
@.str.512 = private unnamed_addr constant [38 x i8] c"H5VL_NATIVE_OBJECT_ENABLE_MDC_FLUSHES\00", align 1
@.str.513 = private unnamed_addr constant [44 x i8] c"H5VL_NATIVE_OBJECT_ARE_MDC_FLUSHES_DISABLED\00", align 1
@.str.514 = private unnamed_addr constant [35 x i8] c"H5VL_NATIVE_OBJECT_GET_NATIVE_INFO\00", align 1
@.str.515 = private unnamed_addr constant [13 x i8] c"BADTYPE(Z%c)\00", align 1
@.str.516 = private unnamed_addr constant [4 x i8] c"%zu\00", align 1
@.str.517 = private unnamed_addr constant [20 x i8] c"H5Z_SO_FLOAT_DSCALE\00", align 1
@.str.518 = private unnamed_addr constant [20 x i8] c"H5Z_SO_FLOAT_ESCALE\00", align 1
@.str.519 = private unnamed_addr constant [11 x i8] c"H5Z_SO_INT\00", align 1
@.str.520 = private unnamed_addr constant [16 x i8] c"H5Z_DISABLE_EDC\00", align 1
@.str.521 = private unnamed_addr constant [15 x i8] c"H5Z_ENABLE_EDC\00", align 1
@.str.522 = private unnamed_addr constant [16 x i8] c"H5Z_FILTER_NONE\00", align 1
@.str.523 = private unnamed_addr constant [19 x i8] c"H5Z_FILTER_DEFLATE\00", align 1
@.str.524 = private unnamed_addr constant [19 x i8] c"H5Z_FILTER_SHUFFLE\00", align 1
@.str.525 = private unnamed_addr constant [22 x i8] c"H5Z_FILTER_FLETCHER32\00", align 1
@.str.526 = private unnamed_addr constant [16 x i8] c"H5Z_FILTER_SZIP\00", align 1
@.str.527 = private unnamed_addr constant [16 x i8] c"H5Z_FILTER_NBIT\00", align 1
@.str.528 = private unnamed_addr constant [23 x i8] c"H5Z_FILTER_SCALEOFFSET\00", align 1
@.str.529 = private unnamed_addr constant [4 x i8] c"%zd\00", align 1
@.str.530 = private unnamed_addr constant [34 x i8] c"Unsupported type slipped through!\00", align 1
@.str.531 = private unnamed_addr constant [30 x i8] c"Unknown type slipped through!\00", align 1
@.str.532 = private unnamed_addr constant [14 x i8] c"BADTYPE(%c%c)\00", align 1
@.str.533 = private unnamed_addr constant [12 x i8] c"BADTYPE(%c)\00", align 1
@H5_debug_g = external local_unnamed_addr global %struct.H5_debug_t, align 8
@H5_trace.is_first_invocation = internal unnamed_addr global i1 false, align 1
@H5_trace.running_timer = internal global %struct.H5_timer_t zeroinitializer, align 8
@H5_trace.current_depth = internal unnamed_addr global i32 0, align 4
@H5_trace.last_call_depth = internal unnamed_addr global i32 0, align 4
@.str.534 = private unnamed_addr constant [5 x i8] c"%.6f\00", align 1
@.str.535 = private unnamed_addr constant [6 x i8] c" %*s \00", align 1
@.str.536 = private unnamed_addr constant [9 x i8] c"%*s%s = \00", align 1
@.str.537 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.538 = private unnamed_addr constant [14 x i8] c" = <delayed>\0A\00", align 1
@.str.539 = private unnamed_addr constant [7 x i8] c"@%.6f \00", align 1
@.str.540 = private unnamed_addr constant [7 x i8] c"%*s%s(\00", align 1
@.str.541 = private unnamed_addr constant [17 x i8] c" @%.6f [dt=%.6f]\00", align 1
@.str.542 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@.str.543 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.545 = private unnamed_addr constant [15 x i8] c"H5T_CSET_ERROR\00", align 1
@.str.546 = private unnamed_addr constant [15 x i8] c"H5T_CSET_ASCII\00", align 1
@.str.547 = private unnamed_addr constant [14 x i8] c"H5T_CSET_UTF8\00", align 1
@.str.548 = private unnamed_addr constant [22 x i8] c"H5T_CSET_RESERVED_%ld\00", align 1
@.str.549 = private unnamed_addr constant [18 x i8] c"H5F_CLOSE_DEFAULT\00", align 1
@.str.550 = private unnamed_addr constant [15 x i8] c"H5F_CLOSE_WEAK\00", align 1
@.str.551 = private unnamed_addr constant [15 x i8] c"H5F_CLOSE_SEMI\00", align 1
@.str.552 = private unnamed_addr constant [17 x i8] c"H5F_CLOSE_STRONG\00", align 1

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5_trace_args(ptr noundef %0, ptr noundef %1, ptr nofree noundef %2) local_unnamed_addr #0 {
.preheader1658:
  %i.a = alloca [16 x i64], align 16              ; 21 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %struct.H5AC_cache_config_t, align 8 ; 33 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 -1, i64 128, i1 false), !tbaa !28
  %i.c = load i8, ptr %1, align 1, !tbaa !29      ; 2 uses
  %.not1776 = icmp eq i8 %i.c, 0
  br i1 %.not1776, label %.loopexit1659, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader1658
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 296 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 142 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 7
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 1032
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 1033
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 1040
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 1048
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 1056
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 1064
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 1072
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 1080
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 1088
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 1096
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 1104
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 1112
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 1120
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 1128
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 1136
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 1144
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 1152
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 1160
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 1168
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 1176
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 1184
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 1188
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 1192
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 1200
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 1208
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %H5_trace_args_close_degree.exit1654
  %4 = phi i8 [ %i.c, %.preheader.lr.ph ], [ %i.czn, %H5_trace_args_close_degree.exit1654 ]
  %.014351778 = phi ptr [ %1, %.preheader.lr.ph ], [ %i.czm, %H5_trace_args_close_degree.exit1654 ]
  %.014361777 = phi i32 [ 0, %.preheader.lr.ph ], [ %14, %H5_trace_args_close_degree.exit1654 ] ; 11 uses
  br label %bb.a

bb.a:                                             ; preds = %.preheader, %bb.b
  %i.aj = phi i8 [ %.pr, %bb.b ], [ %4, %.preheader ]
  %.01437 = phi i32 [ %i.ak, %bb.b ], [ 0, %.preheader ] ; 3 uses
  %.1 = phi ptr [ %i.al, %bb.b ], [ %.014351778, %.preheader ] ; 5 uses
  switch i8 %i.aj, label %.loopexit [
    i8 42, label %bb.b
    i8 91, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.ak = add nuw nsw i32 %.01437, 1
  %i.al = getelementptr inbounds nuw i8, ptr %.1, i64 1 ; 2 uses
  %.pr = load i8, ptr %i.al, align 1, !tbaa !29
  br label %bb.a, !llvm.loop !16

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.am = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !29
  %i.ao = icmp eq i8 %i.an, 97
  br i1 %i.ao, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %.1, i64 2
  %i.aq = call i64 @__isoc23_strtol(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.b, i32 noundef 10) #10
  %i.ar = trunc i64 %i.aq to i32
  %i.as = load ptr, ptr %i.b, align 8, !tbaa !31
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.at = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.1, i32 noundef 93) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.01438 = phi i32 [ %i.ar, %bb.d ], [ -1, %bb.e ]
  %.pn = phi ptr [ %i.as, %bb.d ], [ %i.at, %bb.e ]
  %.2 = getelementptr inbounds nuw i8, ptr %.pn, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %bb.f
  %.11439 = phi i32 [ %.01438, %bb.f ], [ -1, %bb.a ] ; 18 uses
  %.3 = phi ptr [ %.2, %bb.f ], [ %.1, %bb.a ]    ; 27 uses
  %i.au = load i32, ptr %2, align 8               ; 3 uses
  %i.av = icmp ult i32 %i.au, 41
  br i1 %i.av, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.loopexit
  %i.aw = load ptr, ptr %i.e, align 8
  %i.ax = zext nneg i32 %i.au to i64
  %i.ay = getelementptr i8, ptr %i.aw, i64 %i.ax
  %i.az = add nuw nsw i32 %i.au, 8
  store i32 %i.az, ptr %2, align 8
  br label %bb.i

bb.h:                                             ; preds = %.loopexit
  %i.ba = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 8
  store ptr %i.bb, ptr %i.d, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bc = phi ptr [ %i.ay, %bb.g ], [ %i.ba, %bb.h ]
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !31 ; 2 uses
  %.not1612 = icmp eq ptr %i.bd, null
  br i1 %.not1612, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not1613 = icmp eq i32 %.014361777, 0
  %i.be = select i1 %.not1613, ptr @.str.2, ptr @.str.1
  %i.bf = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull %i.be, ptr noundef nonnull %i.bd) #10 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.not1614 = icmp eq i32 %.01437, 0
  br i1 %.not1614, label %bb.bk, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bg = load i32, ptr %2, align 8               ; 3 uses
  %i.bh = icmp ult i32 %i.bg, 41
  br i1 %i.bh, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bi = load ptr, ptr %i.e, align 8
  %i.bj = zext nneg i32 %i.bg to i64
  %i.bk = getelementptr i8, ptr %i.bi, i64 %i.bj
  %i.bl = add nuw nsw i32 %i.bg, 8
  store i32 %i.bl, ptr %2, align 8
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bm = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 8
  store ptr %i.bn, ptr %i.d, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bo = phi ptr [ %i.bk, %bb.m ], [ %i.bm, %bb.n ]
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !32 ; 29 uses
  %.not1628 = icmp eq ptr %i.bp, null
  br i1 %.not1628, label %bb.bj, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bq = load i8, ptr %.3, align 1, !tbaa !29
  switch i8 %i.bq, label %bb.bi [
    i8 104, label %bb.q
    i8 72, label %bb.z
    i8 73, label %bb.ac
    i8 115, label %bb.aj
    i8 85, label %bb.am
    i8 120, label %bb.at
    i8 122, label %bb.bc
    i8 90, label %bb.bf
  ]

bb.q:                                             ; preds = %bb.p
  %i.br = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.bp) #10 ; 0 uses
  %i.bs = icmp sgt i32 %.11439, -1
  br i1 %i.bs, label %bb.r, label %H5_trace_args_close_degree.exit1654

bb.r:                                             ; preds = %bb.q
  %i.bt = zext nneg i32 %.11439 to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !28 ; 4 uses
  %i.bw = icmp sgt i64 %i.bv, -1
  br i1 %i.bw, label %bb.s, label %H5_trace_args_close_degree.exit1654

bb.s:                                             ; preds = %bb.r
  %i.bx = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.4) #10 ; 0 uses
  %.not1789 = icmp eq i64 %i.bv, 0
  br i1 %.not1789, label %._crit_edge1773, label %.lr.ph1772.preheader

.lr.ph1772.preheader:                             ; preds = %bb.s
  %i.by = load i64, ptr %i.bp, align 8, !tbaa !28 ; 2 uses
  %i.bz = icmp eq i64 %i.by, -1
  br i1 %i.bz, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph1772.preheader
  %i.ca = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i64 noundef %i.by) #10 ; 0 uses
  br label %bb.v

bb.u:                                             ; preds = %.lr.ph1772.preheader
  %i.cb = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #10 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %exitcond1866.peel.not = icmp eq i64 %i.bv, 1
  br i1 %exitcond1866.peel.not, label %._crit_edge1773, label %.lr.ph1772

.lr.ph1772:                                       ; preds = %bb.v, %bb.y
  %.114411770 = phi i64 [ %i.ch, %bb.y ], [ 1, %bb.v ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.114411770
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !28 ; 2 uses
  %i.ce = icmp eq i64 %i.cd, -1
  br i1 %i.ce, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph1772
  %i.cf = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1) #10 ; 0 uses
  br label %bb.y

bb.x:                                             ; preds = %.lr.ph1772
  %i.cg = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i64 noundef %i.cd) #10 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.ch = add nuw nsw i64 %.114411770, 1          ; 2 uses
  %exitcond1866.not = icmp eq i64 %i.ch, %i.bv
  br i1 %exitcond1866.not, label %._crit_edge1773, label %.lr.ph1772, !llvm.loop !17

._crit_edge1773:                                  ; preds = %bb.y, %bb.v, %bb.s
  %i.ci = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.7) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.z:                                             ; preds = %bb.p
  %i.cj = getelementptr inbounds nuw i8, ptr %.3, i64 1
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !29
  %i.cl = icmp eq i8 %i.ck, 115
  %i.cm = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.bp) #10 ; 0 uses
  %i.cn = icmp sgt i32 %.11439, -1
  %or.cond = select i1 %i.cl, i1 %i.cn, i1 false
  br i1 %or.cond, label %bb.aa, label %H5_trace_args_close_degree.exit1654

bb.aa:                                            ; preds = %bb.z
  %i.co = zext nneg i32 %.11439 to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.co
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !28 ; 4 uses
  %i.cr = icmp sgt i64 %i.cq, -1
  br i1 %i.cr, label %bb.ab, label %H5_trace_args_close_degree.exit1654

bb.ab:                                            ; preds = %bb.aa
  %i.cs = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.4) #10 ; 0 uses
  %.not1788 = icmp eq i64 %i.cq, 0
  br i1 %.not1788, label %._crit_edge1769, label %.lr.ph1768.preheader

.lr.ph1768.preheader:                             ; preds = %bb.ab
  %i.ct = load i64, ptr %i.bp, align 8, !tbaa !28
  %i.cu = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2, i64 noundef %i.ct) #10 ; 0 uses
  %exitcond1864.peel.not = icmp eq i64 %i.cq, 1
  br i1 %exitcond1864.peel.not, label %._crit_edge1769, label %.lr.ph1768

.lr.ph1768:                                       ; preds = %.lr.ph1768.preheader, %.lr.ph1768
  %.214421766 = phi i64 [ %i.cy, %.lr.ph1768 ], [ 1, %.lr.ph1768.preheader ] ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.214421766
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !28
  %i.cx = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i64 noundef %i.cw) #10 ; 0 uses
  %i.cy = add nuw nsw i64 %.214421766, 1          ; 2 uses
  %exitcond1864.not = icmp eq i64 %i.cy, %i.cq
  br i1 %exitcond1864.not, label %._crit_edge1769, label %.lr.ph1768, !llvm.loop !18

._crit_edge1769:                                  ; preds = %.lr.ph1768, %.lr.ph1768.preheader, %bb.ab
  %i.cz = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.7) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.ac:                                            ; preds = %bb.p
  %i.da = getelementptr inbounds nuw i8, ptr %.3, i64 1
  %i.db = load i8, ptr %i.da, align 1, !tbaa !29
  %i.dc = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.bp) #10 ; 0 uses
  switch i8 %i.db, label %H5_trace_args_close_degree.exit1654 [
    i8 115, label %bb.ad
    i8 117, label %bb.ag
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.dd = icmp sgt i32 %.11439, -1
  br i1 %i.dd, label %bb.ae, label %H5_trace_args_close_degree.exit1654

bb.ae:                                            ; preds = %bb.ad
  %i.de = zext nneg i32 %.11439 to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.de
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !28 ; 4 uses
  %i.dh = icmp sgt i64 %i.dg, -1
  br i1 %i.dh, label %bb.af, label %H5_trace_args_close_degree.exit1654

bb.af:                                            ; preds = %bb.ae
  %i.di = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.4) #10 ; 0 uses
  %.not1787 = icmp eq i64 %i.dg, 0
  br i1 %.not1787, label %._crit_edge1765, label %.lr.ph1764.preheader

.lr.ph1764.preheader:                             ; preds = %bb.af
  %i.dj = load i32, ptr %i.bp, align 4, !tbaa !10
  %i.dk = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.2, i32 noundef %i.dj) #10 ; 0 uses
  %exitcond1862.peel.not = icmp eq i64 %i.dg, 1
  br i1 %exitcond1862.peel.not, label %._crit_edge1765, label %.lr.ph1764

.lr.ph1764:                                       ; preds = %.lr.ph1764.preheader, %.lr.ph1764
  %.314431762 = phi i64 [ %i.do, %.lr.ph1764 ], [ 1, %.lr.ph1764.preheader ] ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %.314431762
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !10
  %i.dn = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef %i.dm) #10 ; 0 uses
  %i.do = add nuw nsw i64 %.314431762, 1          ; 2 uses
  %exitcond1862.not = icmp eq i64 %i.do, %i.dg
  br i1 %exitcond1862.not, label %._crit_edge1765, label %.lr.ph1764, !llvm.loop !19

._crit_edge1765:                                  ; preds = %.lr.ph1764, %.lr.ph1764.preheader, %bb.af
  %i.dp = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.7) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.ag:                                            ; preds = %bb.ac
  %i.dq = icmp sgt i32 %.11439, -1
  br i1 %i.dq, label %bb.ah, label %H5_trace_args_close_degree.exit1654

bb.ah:                                            ; preds = %bb.ag
  %i.dr = zext nneg i32 %.11439 to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.dr
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !28 ; 4 uses
  %i.du = icmp sgt i64 %i.dt, -1
  br i1 %i.du, label %bb.ai, label %H5_trace_args_close_degree.exit1654

bb.ai:                                            ; preds = %bb.ah
end_hunk_0
begin_hunk_1_@H5_trace_args:.preheader1658
  br i1 %i.aju, label %bb.oi, label %bb.oj

bb.oi:                                            ; preds = %bb.oh
  %i.ajv = load ptr, ptr %i.e, align 8
  %i.ajw = zext nneg i32 %i.ajt to i64
  %i.ajx = getelementptr i8, ptr %i.ajv, i64 %i.ajw
  %i.ajy = add nuw nsw i32 %i.ajt, 8
  store i32 %i.ajy, ptr %2, align 8
  br label %bb.ok

bb.oj:                                            ; preds = %bb.oh
  %i.ajz = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.aka = getelementptr i8, ptr %i.ajz, i64 8
  store ptr %i.aka, ptr %i.d, align 8
  br label %bb.ok

bb.ok:                                            ; preds = %bb.oj, %bb.oi
  %i.akb = phi ptr [ %i.ajx, %bb.oi ], [ %i.ajz, %bb.oj ]
  %i.akc = load ptr, ptr %i.akb, align 8, !tbaa !32
  %i.akd = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %i.akc) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.ol:                                            ; preds = %bb.og
  %i.ake = load ptr, ptr %i.d, align 8            ; 5 uses
  %i.akf = getelementptr i8, ptr %i.ake, i64 32
  store ptr %i.akf, ptr %i.d, align 8
  %.sroa.0.0.copyload = load i32, ptr %i.ake, align 8, !tbaa !10 ; 2 uses
  %.sroa.5255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ake, i64 8
  %.sroa.5255.0.copyload = load i64, ptr %.sroa.5255.0..sroa_idx, align 8, !tbaa !28
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ake, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !28
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ake, i64 24
  %.sroa.7.0.copyload = load i8, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !36
  %i.akg = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.20) #10 ; 0 uses
  switch i32 %.sroa.0.0.copyload, label %bb.oq [
    i32 -1, label %bb.om
    i32 0, label %bb.on
    i32 1, label %bb.oo
    i32 2, label %bb.op
  ]

bb.om:                                            ; preds = %bb.ol
  %i.akh = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.159) #10 ; 0 uses
  br label %bb.or

bb.on:                                            ; preds = %bb.ol
  %i.aki = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.160) #10 ; 0 uses
  br label %bb.or

bb.oo:                                            ; preds = %bb.ol
  %i.akj = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.161) #10 ; 0 uses
  br label %bb.or

bb.op:                                            ; preds = %bb.ol
  %i.akk = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.162) #10 ; 0 uses
  br label %bb.or

bb.oq:                                            ; preds = %bb.ol
  %i.akl = sext i32 %.sroa.0.0.copyload to i64
  %i.akm = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.32, i64 noundef %i.akl) #10 ; 0 uses
  br label %bb.or

bb.or:                                            ; preds = %bb.oq, %bb.op, %bb.oo, %bb.on, %bb.om
  %i.akn = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.1) #10 ; 0 uses
  %i.ako = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.163, i64 noundef %.sroa.5255.0.copyload) #10 ; 0 uses
  %i.akp = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.29, i64 noundef %.sroa.6.0.copyload) #10 ; 0 uses
  %i.akq = trunc i8 %.sroa.7.0.copyload to i1
  %.str.335..str.336.i1655 = select i1 %i.akq, ptr @.str.335, ptr @.str.336
  %i.akr = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull %.str.335..str.336.i1655) #10 ; 0 uses
  %i.aks = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.7) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.os:                                            ; preds = %bb.og
  %i.akt = load i32, ptr %2, align 8              ; 3 uses
  %i.aku = icmp ult i32 %i.akt, 41
  br i1 %i.aku, label %bb.ot, label %bb.ou

bb.ot:                                            ; preds = %bb.os
  %i.akv = load ptr, ptr %i.e, align 8
  %i.akw = zext nneg i32 %i.akt to i64
  %i.akx = getelementptr i8, ptr %i.akv, i64 %i.akw
  %i.aky = add nuw nsw i32 %i.akt, 8
  store i32 %i.aky, ptr %2, align 8
  br label %bb.ov

bb.ou:                                            ; preds = %bb.os
  %i.akz = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.ala = getelementptr i8, ptr %i.akz, i64 8
  store ptr %i.ala, ptr %i.d, align 8
  br label %bb.ov

bb.ov:                                            ; preds = %bb.ou, %bb.ot
  %i.alb = phi ptr [ %i.akx, %bb.ot ], [ %i.akz, %bb.ou ]
  %i.alc = load i32, ptr %i.alb, align 4, !tbaa !10 ; 3 uses
  switch i32 %i.alc, label %bb.pd [
    i32 -1, label %bb.ow
    i32 0, label %bb.ox
    i32 1, label %bb.oy
    i32 2, label %bb.oz
    i32 3, label %bb.pa
    i32 4, label %bb.pb
    i32 5, label %bb.pc
    i32 6, label %bb.pc
    i32 7, label %bb.pc
  ]

bb.ow:                                            ; preds = %bb.ov
  %i.ald = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.164) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.ox:                                            ; preds = %bb.ov
  %i.ale = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.165) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.oy:                                            ; preds = %bb.ov
  %i.alf = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.166) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.oz:                                            ; preds = %bb.ov
  %i.alg = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.167) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.pa:                                            ; preds = %bb.ov
  %i.alh = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.168) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.pb:                                            ; preds = %bb.ov
  %i.ali = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.169) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.pc:                                            ; preds = %bb.ov, %bb.ov, %bb.ov
  %i.alj = zext nneg i32 %i.alc to i64
  %i.alk = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.170, i64 noundef %i.alj) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.pd:                                            ; preds = %bb.ov
  %i.all = sext i32 %i.alc to i64
  %i.alm = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.32, i64 noundef %i.all) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.pe:                                            ; preds = %bb.og
  %i.aln = load i32, ptr %2, align 8              ; 3 uses
  %i.alo = icmp ult i32 %i.aln, 41
  br i1 %i.alo, label %bb.pf, label %bb.pg

bb.pf:                                            ; preds = %bb.pe
  %i.alp = load ptr, ptr %i.e, align 8
  %i.alq = zext nneg i32 %i.aln to i64
  %i.alr = getelementptr i8, ptr %i.alp, i64 %i.alq
  %i.als = add nuw nsw i32 %i.aln, 8
  store i32 %i.als, ptr %2, align 8
  br label %bb.ph

bb.pg:                                            ; preds = %bb.pe
  %i.alt = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.alu = getelementptr i8, ptr %i.alt, i64 8
  store ptr %i.alu, ptr %i.d, align 8
  br label %bb.ph

bb.ph:                                            ; preds = %bb.pg, %bb.pf
  %i.alv = phi ptr [ %i.alr, %bb.pf ], [ %i.alt, %bb.pg ]
  %i.alw = load ptr, ptr %i.alv, align 8, !tbaa !71
  %i.alx = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %i.alw) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.pi:                                            ; preds = %bb.og
  %i.aly = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.171, i32 noundef %i.ajq) #10 ; 0 uses
  br label %.loopexit1659

bb.pj:                                            ; preds = %bb.bk
  %i.alz = load i32, ptr %2, align 8              ; 3 uses
  %i.ama = icmp ult i32 %i.alz, 41
  br i1 %i.ama, label %bb.pk, label %bb.pl

bb.pk:                                            ; preds = %bb.pj
  %i.amb = load ptr, ptr %i.e, align 8
  %i.amc = zext nneg i32 %i.alz to i64
  %i.amd = getelementptr i8, ptr %i.amb, i64 %i.amc
  %i.ame = add nuw nsw i32 %i.alz, 8
  store i32 %i.ame, ptr %2, align 8
  br label %bb.pm

bb.pl:                                            ; preds = %bb.pj
  %i.amf = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.amg = getelementptr i8, ptr %i.amf, i64 8
  store ptr %i.amg, ptr %i.d, align 8
  br label %bb.pm

bb.pm:                                            ; preds = %bb.pl, %bb.pk
  %i.amh = phi ptr [ %i.amd, %bb.pk ], [ %i.amf, %bb.pl ]
  %i.ami = load i64, ptr %i.amh, align 8, !tbaa !28 ; 3 uses
  %i.amj = icmp eq i64 %i.ami, -1
  br i1 %i.amj, label %bb.pn, label %bb.po

bb.pn:                                            ; preds = %bb.pm
  %i.amk = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.172) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.po:                                            ; preds = %bb.pm
  %i.aml = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.18, i64 noundef %i.ami) #10 ; 0 uses
  %5 = zext nneg i32 %.014361777 to i64
  %i.amm = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %5
  store i64 %i.ami, ptr %i.amm, align 8, !tbaa !28
  br label %H5_trace_args_close_degree.exit1654

bb.pp:                                            ; preds = %bb.bk
  %i.amn = getelementptr inbounds nuw i8, ptr %.3, i64 1
  %i.amo = load i8, ptr %i.amn, align 1, !tbaa !29 ; 2 uses
  switch i8 %i.amo, label %bb.py [
    i8 99, label %bb.pq
    i8 115, label %bb.pu
  ]

bb.pq:                                            ; preds = %bb.pp
  %i.amp = load i32, ptr %2, align 8              ; 3 uses
  %i.amq = icmp ult i32 %i.amp, 41
  br i1 %i.amq, label %bb.pr, label %bb.ps

bb.pr:                                            ; preds = %bb.pq
  %i.amr = load ptr, ptr %i.e, align 8
  %i.ams = zext nneg i32 %i.amp to i64
  %i.amt = getelementptr i8, ptr %i.amr, i64 %i.ams
  %i.amu = add nuw nsw i32 %i.amp, 8
  store i32 %i.amu, ptr %2, align 8
  br label %bb.pt

bb.ps:                                            ; preds = %bb.pq
  %i.amv = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.amw = getelementptr i8, ptr %i.amv, i64 8
  store ptr %i.amw, ptr %i.d, align 8
  br label %bb.pt

bb.pt:                                            ; preds = %bb.ps, %bb.pr
  %i.amx = phi ptr [ %i.amt, %bb.pr ], [ %i.amv, %bb.ps ]
  %i.amy = load ptr, ptr %i.amx, align 8, !tbaa !32
  %i.amz = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %i.amy) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.pu:                                            ; preds = %bb.pp
  %i.ana = load i32, ptr %2, align 8              ; 3 uses
  %i.anb = icmp ult i32 %i.ana, 41
  br i1 %i.anb, label %bb.pv, label %bb.pw

bb.pv:                                            ; preds = %bb.pu
  %i.anc = load ptr, ptr %i.e, align 8
  %i.and = zext nneg i32 %i.ana to i64
  %i.ane = getelementptr i8, ptr %i.anc, i64 %i.and
  %i.anf = add nuw nsw i32 %i.ana, 8
  store i32 %i.anf, ptr %2, align 8
  br label %bb.px

bb.pw:                                            ; preds = %bb.pu
  %i.ang = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.anh = getelementptr i8, ptr %i.ang, i64 8
  store ptr %i.anh, ptr %i.d, align 8
  br label %bb.px

bb.px:                                            ; preds = %bb.pw, %bb.pv
  %i.ani = phi ptr [ %i.ane, %bb.pv ], [ %i.ang, %bb.pw ]
  %i.anj = load i64, ptr %i.ani, align 8, !tbaa !28 ; 2 uses
  %i.ank = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.32, i64 noundef %i.anj) #10 ; 0 uses
  %6 = zext nneg i32 %.014361777 to i64
  %i.anl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %6
  store i64 %i.anj, ptr %i.anl, align 8, !tbaa !28
  br label %H5_trace_args_close_degree.exit1654

bb.py:                                            ; preds = %bb.pp
  %i.anm = sext i8 %i.amo to i32
  %i.ann = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.173, i32 noundef %i.anm) #10 ; 0 uses
  br label %.loopexit1659

bb.pz:                                            ; preds = %bb.bk
  %i.ano = load i32, ptr %2, align 8              ; 3 uses
  %i.anp = icmp ult i32 %i.ano, 41
  br i1 %i.anp, label %bb.qa, label %bb.qb

bb.qa:                                            ; preds = %bb.pz
  %i.anq = load ptr, ptr %i.e, align 8
  %i.anr = zext nneg i32 %i.ano to i64
  %i.ans = getelementptr i8, ptr %i.anq, i64 %i.anr
  %i.ant = add nuw nsw i32 %i.ano, 8
  store i32 %i.ant, ptr %2, align 8
  br label %bb.qc

bb.qb:                                            ; preds = %bb.pz
  %i.anu = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.anv = getelementptr i8, ptr %i.anu, i64 8
  store ptr %i.anv, ptr %i.d, align 8
  br label %bb.qc

bb.qc:                                            ; preds = %bb.qb, %bb.qa
  %i.anw = phi ptr [ %i.ans, %bb.qa ], [ %i.anu, %bb.qb ]
  %i.anx = load i64, ptr %i.anw, align 8, !tbaa !28 ; 84 uses
  %i.any = icmp eq i64 %i.anx, 0
  br i1 %i.any, label %bb.qd, label %bb.qe

bb.qd:                                            ; preds = %bb.qc
  %i.anz = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.174) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.qe:                                            ; preds = %bb.qc
  %i.aoa = icmp slt i64 %i.anx, 0
  br i1 %i.aoa, label %bb.qf, label %bb.qg

bb.qf:                                            ; preds = %bb.qe
  %i.aob = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.118) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.qg:                                            ; preds = %bb.qe
  %i.aoc = lshr i64 %i.anx, 56
  %i.aod = trunc nuw nsw i64 %i.aoc to i32
  switch i32 %i.aod, label %bb.vu [
    i32 17, label %bb.vt
    i32 16, label %bb.vs
    i32 1, label %bb.qh
    i32 2, label %bb.qi
    i32 3, label %bb.qj
    i32 4, label %bb.ve
    i32 5, label %bb.vh
    i32 7, label %bb.vi
    i32 6, label %bb.vj
    i32 8, label %bb.vk
    i32 9, label %bb.vl
    i32 10, label %bb.vm
    i32 11, label %bb.vn
    i32 12, label %bb.vo
    i32 13, label %bb.vp
    i32 14, label %bb.vq
    i32 15, label %bb.vr
  ]

bb.qh:                                            ; preds = %bb.qg
  %i.aoe = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.177, i64 noundef %i.anx) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.qi:                                            ; preds = %bb.qg
  %i.aof = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.178, i64 noundef %i.anx) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.qj:                                            ; preds = %bb.qg
  %i.aog = load i64, ptr @H5T_NATIVE_SCHAR_g, align 8, !tbaa !28
  %i.aoh = icmp eq i64 %i.anx, %i.aog
  br i1 %i.aoh, label %bb.qk, label %bb.ql

bb.qk:                                            ; preds = %bb.qj
  %i.aoi = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.179) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.ql:                                            ; preds = %bb.qj
  %i.aoj = load i64, ptr @H5T_NATIVE_UCHAR_g, align 8, !tbaa !28
  %i.aok = icmp eq i64 %i.anx, %i.aoj
  br i1 %i.aok, label %bb.qm, label %bb.qn

bb.qm:                                            ; preds = %bb.ql
  %i.aol = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.180) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.qn:                                            ; preds = %bb.ql
  %i.aom = load i64, ptr @H5T_NATIVE_SHORT_g, align 8, !tbaa !28
  %i.aon = icmp eq i64 %i.anx, %i.aom
  br i1 %i.aon, label %bb.qo, label %bb.qp

bb.qo:                                            ; preds = %bb.qn
  %i.aoo = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.181) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.qp:                                            ; preds = %bb.qn
  %i.aop = load i64, ptr @H5T_NATIVE_USHORT_g, align 8, !tbaa !28
  %i.aoq = icmp eq i64 %i.anx, %i.aop
  br i1 %i.aoq, label %bb.qq, label %bb.qr

bb.qq:                                            ; preds = %bb.qp
  %i.aor = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.182) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.qr:                                            ; preds = %bb.qp
  %i.aos = load i64, ptr @H5T_NATIVE_INT_g, align 8, !tbaa !28
  %i.aot = icmp eq i64 %i.anx, %i.aos
  br i1 %i.aot, label %bb.qs, label %bb.qt

bb.qs:                                            ; preds = %bb.qr
  %i.aou = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.183) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.qt:                                            ; preds = %bb.qr
  %i.aov = load i64, ptr @H5T_NATIVE_UINT_g, align 8, !tbaa !28
  %i.aow = icmp eq i64 %i.anx, %i.aov
  br i1 %i.aow, label %bb.qu, label %bb.qv

bb.qu:                                            ; preds = %bb.qt
  %i.aox = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.184) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.qv:                                            ; preds = %bb.qt
  %i.aoy = load i64, ptr @H5T_NATIVE_LONG_g, align 8, !tbaa !28
  %i.aoz = icmp eq i64 %i.anx, %i.aoy
  br i1 %i.aoz, label %bb.qw, label %bb.qx

bb.qw:                                            ; preds = %bb.qv
  %i.apa = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.185) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.qx:                                            ; preds = %bb.qv
  %i.apb = load i64, ptr @H5T_NATIVE_ULONG_g, align 8, !tbaa !28
  %i.apc = icmp eq i64 %i.anx, %i.apb
  br i1 %i.apc, label %bb.qy, label %bb.qz

bb.qy:                                            ; preds = %bb.qx
  %i.apd = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.186) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.qz:                                            ; preds = %bb.qx
  %i.ape = load i64, ptr @H5T_NATIVE_LLONG_g, align 8, !tbaa !28
  %i.apf = icmp eq i64 %i.anx, %i.ape
  br i1 %i.apf, label %bb.ra, label %bb.rb

bb.ra:                                            ; preds = %bb.qz
  %i.apg = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.187) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.rb:                                            ; preds = %bb.qz
  %i.aph = load i64, ptr @H5T_NATIVE_ULLONG_g, align 8, !tbaa !28
  %i.api = icmp eq i64 %i.anx, %i.aph
  br i1 %i.api, label %bb.rc, label %bb.rd

bb.rc:                                            ; preds = %bb.rb
  %i.apj = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.188) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.rd:                                            ; preds = %bb.rb
  %i.apk = load i64, ptr @H5T_NATIVE_FLOAT16_g, align 8, !tbaa !28
  %i.apl = icmp eq i64 %i.anx, %i.apk
  br i1 %i.apl, label %bb.re, label %bb.rf

bb.re:                                            ; preds = %bb.rd
  %i.apm = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.189) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.rf:                                            ; preds = %bb.rd
  %i.apn = load i64, ptr @H5T_NATIVE_FLOAT_g, align 8, !tbaa !28
  %i.apo = icmp eq i64 %i.anx, %i.apn
  br i1 %i.apo, label %bb.rg, label %bb.rh

bb.rg:                                            ; preds = %bb.rf
  %i.app = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.190) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.rh:                                            ; preds = %bb.rf
  %i.apq = load i64, ptr @H5T_NATIVE_DOUBLE_g, align 8, !tbaa !28
  %i.apr = icmp eq i64 %i.anx, %i.apq
  br i1 %i.apr, label %bb.ri, label %bb.rj

bb.ri:                                            ; preds = %bb.rh
  %i.aps = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.191) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.rj:                                            ; preds = %bb.rh
  %i.apt = load i64, ptr @H5T_NATIVE_LDOUBLE_g, align 8, !tbaa !28
  %i.apu = icmp eq i64 %i.anx, %i.apt
  br i1 %i.apu, label %bb.rk, label %bb.rl

bb.rk:                                            ; preds = %bb.rj
  %i.apv = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.192) #10 ; 0 uses
end_hunk_1
begin_hunk_2_@H5_trace_args:.preheader1658
  br label %H5_trace_args_close_degree.exit1654

bb.tp:                                            ; preds = %bb.tn
  %i.atc = load i64, ptr @H5T_STD_I64BE_g, align 8, !tbaa !28
  %i.atd = icmp eq i64 %i.anx, %i.atc
  br i1 %i.atd, label %bb.tq, label %bb.tr

bb.tq:                                            ; preds = %bb.tp
  %i.ate = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.221) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.tr:                                            ; preds = %bb.tp
  %i.atf = load i64, ptr @H5T_STD_I64LE_g, align 8, !tbaa !28
  %i.atg = icmp eq i64 %i.anx, %i.atf
  br i1 %i.atg, label %bb.ts, label %bb.tt

bb.ts:                                            ; preds = %bb.tr
  %i.ath = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.222) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.tt:                                            ; preds = %bb.tr
  %i.ati = load i64, ptr @H5T_STD_U8BE_g, align 8, !tbaa !28
  %i.atj = icmp eq i64 %i.anx, %i.ati
  br i1 %i.atj, label %bb.tu, label %bb.tv

bb.tu:                                            ; preds = %bb.tt
  %i.atk = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.223) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.tv:                                            ; preds = %bb.tt
  %i.atl = load i64, ptr @H5T_STD_U8LE_g, align 8, !tbaa !28
  %i.atm = icmp eq i64 %i.anx, %i.atl
  br i1 %i.atm, label %bb.tw, label %bb.tx

bb.tw:                                            ; preds = %bb.tv
  %i.atn = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.224) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.tx:                                            ; preds = %bb.tv
  %i.ato = load i64, ptr @H5T_STD_U16BE_g, align 8, !tbaa !28
  %i.atp = icmp eq i64 %i.anx, %i.ato
  br i1 %i.atp, label %bb.ty, label %bb.tz

bb.ty:                                            ; preds = %bb.tx
  %i.atq = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.225) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.tz:                                            ; preds = %bb.tx
  %i.atr = load i64, ptr @H5T_STD_U16LE_g, align 8, !tbaa !28
  %i.ats = icmp eq i64 %i.anx, %i.atr
  br i1 %i.ats, label %bb.ua, label %bb.ub

bb.ua:                                            ; preds = %bb.tz
  %i.att = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.226) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.ub:                                            ; preds = %bb.tz
  %i.atu = load i64, ptr @H5T_STD_U32BE_g, align 8, !tbaa !28
  %i.atv = icmp eq i64 %i.anx, %i.atu
  br i1 %i.atv, label %bb.uc, label %bb.ud

bb.uc:                                            ; preds = %bb.ub
  %i.atw = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.227) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.ud:                                            ; preds = %bb.ub
  %i.atx = load i64, ptr @H5T_STD_U32LE_g, align 8, !tbaa !28
  %i.aty = icmp eq i64 %i.anx, %i.atx
  br i1 %i.aty, label %bb.ue, label %bb.uf

bb.ue:                                            ; preds = %bb.ud
  %i.atz = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.228) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.uf:                                            ; preds = %bb.ud
  %i.aua = load i64, ptr @H5T_STD_U64BE_g, align 8, !tbaa !28
  %i.aub = icmp eq i64 %i.anx, %i.aua
  br i1 %i.aub, label %bb.ug, label %bb.uh

bb.ug:                                            ; preds = %bb.uf
  %i.auc = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.229) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.uh:                                            ; preds = %bb.uf
  %i.aud = load i64, ptr @H5T_STD_U64LE_g, align 8, !tbaa !28
  %i.aue = icmp eq i64 %i.anx, %i.aud
  br i1 %i.aue, label %bb.ui, label %bb.uj

bb.ui:                                            ; preds = %bb.uh
  %i.auf = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.230) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.uj:                                            ; preds = %bb.uh
  %i.aug = load i64, ptr @H5T_STD_B8BE_g, align 8, !tbaa !28
  %i.auh = icmp eq i64 %i.anx, %i.aug
  br i1 %i.auh, label %bb.uk, label %bb.ul

bb.uk:                                            ; preds = %bb.uj
  %i.aui = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.231) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.ul:                                            ; preds = %bb.uj
  %i.auj = load i64, ptr @H5T_STD_B8LE_g, align 8, !tbaa !28
  %i.auk = icmp eq i64 %i.anx, %i.auj
  br i1 %i.auk, label %bb.um, label %bb.un

bb.um:                                            ; preds = %bb.ul
  %i.aul = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.232) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.un:                                            ; preds = %bb.ul
  %i.aum = load i64, ptr @H5T_STD_B16BE_g, align 8, !tbaa !28
  %i.aun = icmp eq i64 %i.anx, %i.aum
  br i1 %i.aun, label %bb.uo, label %bb.up

bb.uo:                                            ; preds = %bb.un
  %i.auo = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.233) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.up:                                            ; preds = %bb.un
  %i.aup = load i64, ptr @H5T_STD_B16LE_g, align 8, !tbaa !28
  %i.auq = icmp eq i64 %i.anx, %i.aup
  br i1 %i.auq, label %bb.uq, label %bb.ur

bb.uq:                                            ; preds = %bb.up
  %i.aur = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.234) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.ur:                                            ; preds = %bb.up
  %i.aus = load i64, ptr @H5T_STD_B32BE_g, align 8, !tbaa !28
  %i.aut = icmp eq i64 %i.anx, %i.aus
  br i1 %i.aut, label %bb.us, label %bb.ut

bb.us:                                            ; preds = %bb.ur
  %i.auu = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.235) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.ut:                                            ; preds = %bb.ur
  %i.auv = load i64, ptr @H5T_STD_B32LE_g, align 8, !tbaa !28
  %i.auw = icmp eq i64 %i.anx, %i.auv
  br i1 %i.auw, label %bb.uu, label %bb.uv

bb.uu:                                            ; preds = %bb.ut
  %i.aux = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.236) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.uv:                                            ; preds = %bb.ut
  %i.auy = load i64, ptr @H5T_STD_B64BE_g, align 8, !tbaa !28
  %i.auz = icmp eq i64 %i.anx, %i.auy
  br i1 %i.auz, label %bb.uw, label %bb.ux

bb.uw:                                            ; preds = %bb.uv
  %i.ava = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.237) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.ux:                                            ; preds = %bb.uv
  %i.avb = load i64, ptr @H5T_STD_B64LE_g, align 8, !tbaa !28
  %i.avc = icmp eq i64 %i.anx, %i.avb
  br i1 %i.avc, label %bb.uy, label %bb.uz

bb.uy:                                            ; preds = %bb.ux
  %i.avd = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.238) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.uz:                                            ; preds = %bb.ux
  %i.ave = load i64, ptr @H5T_C_S1_g, align 8, !tbaa !28
  %i.avf = icmp eq i64 %i.anx, %i.ave
  br i1 %i.avf, label %bb.va, label %bb.vb

bb.va:                                            ; preds = %bb.uz
  %i.avg = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.239) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.vb:                                            ; preds = %bb.uz
  %i.avh = load i64, ptr @H5T_FORTRAN_S1_g, align 8, !tbaa !28
  %i.avi = icmp eq i64 %i.anx, %i.avh
  br i1 %i.avi, label %bb.vc, label %bb.vd

bb.vc:                                            ; preds = %bb.vb
  %i.avj = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.240) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.vd:                                            ; preds = %bb.vb
  %i.avk = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.241, i64 noundef %i.anx) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.ve:                                            ; preds = %bb.qg
  %i.avl = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.242, i64 noundef %i.anx) #10 ; 0 uses
  %i.avm = call ptr @H5I_object(i64 noundef %i.anx) #10 ; 3 uses
  %.not1619 = icmp eq ptr %i.avm, null
  br i1 %.not1619, label %H5_trace_args_close_degree.exit1654, label %bb.vf

bb.vf:                                            ; preds = %bb.ve
  %i.avn = call i32 @H5S_get_simple_extent_type(ptr noundef nonnull %i.avm) #10
  %i.avo = icmp eq i32 %i.avn, 1
  br i1 %i.avo, label %bb.vg, label %H5_trace_args_close_degree.exit1654

bb.vg:                                            ; preds = %bb.vf
  %i.avp = call i32 @H5S_get_simple_extent_ndims(ptr noundef nonnull %i.avm) #10
  %i.avq = sext i32 %i.avp to i64
  %7 = zext nneg i32 %.014361777 to i64
  %i.avr = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %7
  store i64 %i.avq, ptr %i.avr, align 8, !tbaa !28
  br label %H5_trace_args_close_degree.exit1654

bb.vh:                                            ; preds = %bb.qg
  %i.avs = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.243, i64 noundef %i.anx) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.vi:                                            ; preds = %bb.qg
  %i.avt = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.244, i64 noundef %i.anx) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.vj:                                            ; preds = %bb.qg
  %i.avu = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.245, i64 noundef %i.anx) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.vk:                                            ; preds = %bb.qg
  %i.avv = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.246, i64 noundef %i.anx) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.vl:                                            ; preds = %bb.qg
  %i.avw = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.247, i64 noundef %i.anx) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.vm:                                            ; preds = %bb.qg
  %i.avx = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.248, i64 noundef %i.anx) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.vn:                                            ; preds = %bb.qg
  %i.avy = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.249, i64 noundef %i.anx) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.vo:                                            ; preds = %bb.qg
  %i.avz = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.250, i64 noundef %i.anx) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.vp:                                            ; preds = %bb.qg
  %i.awa = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.251, i64 noundef %i.anx) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.vq:                                            ; preds = %bb.qg
  %i.awb = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.252, i64 noundef %i.anx) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.vr:                                            ; preds = %bb.qg
  %i.awc = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.253, i64 noundef %i.anx) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.vs:                                            ; preds = %bb.qg
  %i.awd = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.254, i64 noundef %i.anx) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.vt:                                            ; preds = %bb.qg
  %i.awe = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.255, i64 noundef %i.anx) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.vu:                                            ; preds = %bb.qg
  %i.awf = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.256, i64 noundef %i.anx) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.vv:                                            ; preds = %bb.bk
  %i.awg = getelementptr inbounds nuw i8, ptr %.3, i64 1
  %i.awh = load i8, ptr %i.awg, align 1, !tbaa !29 ; 2 uses
  switch i8 %i.awh, label %bb.yp [
    i8 68, label %bb.vw
    i8 102, label %bb.wa
    i8 105, label %bb.we
    i8 73, label %bb.wn
    i8 111, label %bb.wr
    i8 82, label %bb.xb
    i8 115, label %bb.xf
    i8 83, label %bb.xj
    i8 116, label %bb.xn
    i8 117, label %bb.yl
  ]

bb.vw:                                            ; preds = %bb.vv
  %i.awi = load i32, ptr %2, align 8              ; 3 uses
  %i.awj = icmp ult i32 %i.awi, 41
  br i1 %i.awj, label %bb.vx, label %bb.vy

bb.vx:                                            ; preds = %bb.vw
  %i.awk = load ptr, ptr %i.e, align 8
  %i.awl = zext nneg i32 %i.awi to i64
  %i.awm = getelementptr i8, ptr %i.awk, i64 %i.awl
  %i.awn = add nuw nsw i32 %i.awi, 8
  store i32 %i.awn, ptr %2, align 8
  br label %bb.vz

bb.vy:                                            ; preds = %bb.vw
  %i.awo = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.awp = getelementptr i8, ptr %i.awo, i64 8
  store ptr %i.awp, ptr %i.d, align 8
  br label %bb.vz

bb.vz:                                            ; preds = %bb.vy, %bb.vx
  %i.awq = phi ptr [ %i.awm, %bb.vx ], [ %i.awo, %bb.vy ]
  %i.awr = load ptr, ptr %i.awq, align 8, !tbaa !32
  %i.aws = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %i.awr) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.wa:                                            ; preds = %bb.vv
  %i.awt = load i32, ptr %2, align 8              ; 3 uses
  %i.awu = icmp ult i32 %i.awt, 41
  br i1 %i.awu, label %bb.wb, label %bb.wc

bb.wb:                                            ; preds = %bb.wa
  %i.awv = load ptr, ptr %i.e, align 8
  %i.aww = zext nneg i32 %i.awt to i64
  %i.awx = getelementptr i8, ptr %i.awv, i64 %i.aww
  %i.awy = add nuw nsw i32 %i.awt, 8
  store i32 %i.awy, ptr %2, align 8
  br label %bb.wd

bb.wc:                                            ; preds = %bb.wa
  %i.awz = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.axa = getelementptr i8, ptr %i.awz, i64 8
  store ptr %i.axa, ptr %i.d, align 8
  br label %bb.wd

bb.wd:                                            ; preds = %bb.wc, %bb.wb
  %i.axb = phi ptr [ %i.awx, %bb.wb ], [ %i.awz, %bb.wc ]
  %i.axc = load ptr, ptr %i.axb, align 8, !tbaa !32
  %i.axd = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %i.axc) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.we:                                            ; preds = %bb.vv
  %i.axe = load i32, ptr %2, align 8              ; 3 uses
  %i.axf = icmp ult i32 %i.axe, 41
  br i1 %i.axf, label %bb.wf, label %bb.wg

bb.wf:                                            ; preds = %bb.we
  %i.axg = load ptr, ptr %i.e, align 8
  %i.axh = zext nneg i32 %i.axe to i64
  %i.axi = getelementptr i8, ptr %i.axg, i64 %i.axh
  %i.axj = add nuw nsw i32 %i.axe, 8
  store i32 %i.axj, ptr %2, align 8
  br label %bb.wh

bb.wg:                                            ; preds = %bb.we
  %i.axk = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.axl = getelementptr i8, ptr %i.axk, i64 8
  store ptr %i.axl, ptr %i.d, align 8
  br label %bb.wh

bb.wh:                                            ; preds = %bb.wg, %bb.wf
  %i.axm = phi ptr [ %i.axi, %bb.wf ], [ %i.axk, %bb.wg ]
  %i.axn = load i32, ptr %i.axm, align 4, !tbaa !10 ; 2 uses
  switch i32 %i.axn, label %bb.wm [
    i32 -1, label %bb.wi
    i32 0, label %bb.wj
    i32 1, label %bb.wk
    i32 2, label %bb.wl
  ]

bb.wi:                                            ; preds = %bb.wh
  %i.axo = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.257) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.wj:                                            ; preds = %bb.wh
  %i.axp = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.258) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.wk:                                            ; preds = %bb.wh
  %i.axq = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.259) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.wl:                                            ; preds = %bb.wh
  %i.axr = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.260) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.wm:                                            ; preds = %bb.wh
  %i.axs = sext i32 %i.axn to i64
  %i.axt = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.32, i64 noundef %i.axs) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.wn:                                            ; preds = %bb.vv
  %i.axu = load i32, ptr %2, align 8              ; 3 uses
  %i.axv = icmp ult i32 %i.axu, 41
  br i1 %i.axv, label %bb.wo, label %bb.wp

bb.wo:                                            ; preds = %bb.wn
  %i.axw = load ptr, ptr %i.e, align 8
  %i.axx = zext nneg i32 %i.axu to i64
  %i.axy = getelementptr i8, ptr %i.axw, i64 %i.axx
  %i.axz = add nuw nsw i32 %i.axu, 8
  store i32 %i.axz, ptr %2, align 8
  br label %bb.wq

bb.wp:                                            ; preds = %bb.wn
  %i.aya = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.ayb = getelementptr i8, ptr %i.aya, i64 8
  store ptr %i.ayb, ptr %i.d, align 8
  br label %bb.wq

bb.wq:                                            ; preds = %bb.wp, %bb.wo
  %i.ayc = phi ptr [ %i.axy, %bb.wo ], [ %i.aya, %bb.wp ]
  %i.ayd = load ptr, ptr %i.ayc, align 8, !tbaa !32
  %i.aye = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %i.ayd) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.wr:                                            ; preds = %bb.vv
  %i.ayf = load i32, ptr %2, align 8              ; 3 uses
  %i.ayg = icmp ult i32 %i.ayf, 41
  br i1 %i.ayg, label %bb.ws, label %bb.wt

bb.ws:                                            ; preds = %bb.wr
  %i.ayh = load ptr, ptr %i.e, align 8
  %i.ayi = zext nneg i32 %i.ayf to i64
  %i.ayj = getelementptr i8, ptr %i.ayh, i64 %i.ayi
  %i.ayk = add nuw nsw i32 %i.ayf, 8
  store i32 %i.ayk, ptr %2, align 8
  br label %bb.wu

bb.wt:                                            ; preds = %bb.wr
  %i.ayl = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.aym = getelementptr i8, ptr %i.ayl, i64 8
  store ptr %i.aym, ptr %i.d, align 8
  br label %bb.wu

bb.wu:                                            ; preds = %bb.wt, %bb.ws
  %i.ayn = phi ptr [ %i.ayj, %bb.ws ], [ %i.ayl, %bb.wt ]
  %i.ayo = load i32, ptr %i.ayn, align 4, !tbaa !10 ; 2 uses
  switch i32 %i.ayo, label %bb.xa [
    i32 -1, label %bb.wv
    i32 0, label %bb.ww
    i32 1, label %bb.wx
    i32 2, label %bb.wy
    i32 3, label %bb.wz
  ]

bb.wv:                                            ; preds = %bb.wu
  %i.ayp = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.261) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.ww:                                            ; preds = %bb.wu
  %i.ayq = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.262) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.wx:                                            ; preds = %bb.wu
  %i.ayr = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.263) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.wy:                                            ; preds = %bb.wu
  %i.ays = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.264) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.wz:                                            ; preds = %bb.wu
  %i.ayt = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.265) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.xa:                                            ; preds = %bb.wu
  %i.ayu = sext i32 %i.ayo to i64
  %i.ayv = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.32, i64 noundef %i.ayu) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.xb:                                            ; preds = %bb.vv
  %i.ayw = load i32, ptr %2, align 8              ; 3 uses
  %i.ayx = icmp ult i32 %i.ayw, 41
  br i1 %i.ayx, label %bb.xc, label %bb.xd

bb.xc:                                            ; preds = %bb.xb
  %i.ayy = load ptr, ptr %i.e, align 8
  %i.ayz = zext nneg i32 %i.ayw to i64
  %i.aza = getelementptr i8, ptr %i.ayy, i64 %i.ayz
  %i.azb = add nuw nsw i32 %i.ayw, 8
  store i32 %i.azb, ptr %2, align 8
  br label %bb.xe

bb.xd:                                            ; preds = %bb.xb
  %i.azc = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.azd = getelementptr i8, ptr %i.azc, i64 8
  store ptr %i.azd, ptr %i.d, align 8
  br label %bb.xe

bb.xe:                                            ; preds = %bb.xd, %bb.xc
  %i.aze = phi ptr [ %i.aza, %bb.xc ], [ %i.azc, %bb.xd ]
  %i.azf = load ptr, ptr %i.aze, align 8, !tbaa !32
  %i.azg = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %i.azf) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.xf:                                            ; preds = %bb.vv
  %i.azh = load i32, ptr %2, align 8              ; 3 uses
  %i.azi = icmp ult i32 %i.azh, 41
  br i1 %i.azi, label %bb.xg, label %bb.xh

bb.xg:                                            ; preds = %bb.xf
  %i.azj = load ptr, ptr %i.e, align 8
  %i.azk = zext nneg i32 %i.azh to i64
  %i.azl = getelementptr i8, ptr %i.azj, i64 %i.azk
  %i.azm = add nuw nsw i32 %i.azh, 8
  store i32 %i.azm, ptr %2, align 8
  br label %bb.xi

bb.xh:                                            ; preds = %bb.xf
  %i.azn = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.azo = getelementptr i8, ptr %i.azn, i64 8
  store ptr %i.azo, ptr %i.d, align 8
  br label %bb.xi

bb.xi:                                            ; preds = %bb.xh, %bb.xg
  %i.azp = phi ptr [ %i.azl, %bb.xg ], [ %i.azn, %bb.xh ]
  %i.azq = load i32, ptr %i.azp, align 4, !tbaa !10 ; 2 uses
  %i.azr = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.266, i32 noundef %i.azq) #10 ; 0 uses
  %i.azs = sext i32 %i.azq to i64
  %8 = zext nneg i32 %.014361777 to i64
  %i.azt = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %8
  store i64 %i.azs, ptr %i.azt, align 8, !tbaa !28
  br label %H5_trace_args_close_degree.exit1654

bb.xj:                                            ; preds = %bb.vv
  %i.azu = load i32, ptr %2, align 8              ; 3 uses
  %i.azv = icmp ult i32 %i.azu, 41
  br i1 %i.azv, label %bb.xk, label %bb.xl

bb.xk:                                            ; preds = %bb.xj
  %i.azw = load ptr, ptr %i.e, align 8
  %i.azx = zext nneg i32 %i.azu to i64
  %i.azy = getelementptr i8, ptr %i.azw, i64 %i.azx
  %i.azz = add nuw nsw i32 %i.azu, 8
  store i32 %i.azz, ptr %2, align 8
  br label %bb.xm

bb.xl:                                            ; preds = %bb.xj
  %i.baa = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.bab = getelementptr i8, ptr %i.baa, i64 8
  store ptr %i.bab, ptr %i.d, align 8
  br label %bb.xm

bb.xm:                                            ; preds = %bb.xl, %bb.xk
  %i.bac = phi ptr [ %i.azy, %bb.xk ], [ %i.baa, %bb.xl ]
  %i.bad = load ptr, ptr %i.bac, align 8, !tbaa !32
  %i.bae = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %i.bad) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.xn:                                            ; preds = %bb.vv
  %i.baf = load i32, ptr %2, align 8              ; 3 uses
  %i.bag = icmp ult i32 %i.baf, 41
  br i1 %i.bag, label %bb.xo, label %bb.xp

bb.xo:                                            ; preds = %bb.xn
  %i.bah = load ptr, ptr %i.e, align 8
  %i.bai = zext nneg i32 %i.baf to i64
  %i.baj = getelementptr i8, ptr %i.bah, i64 %i.bai
  %i.bak = add nuw nsw i32 %i.baf, 8
  store i32 %i.bak, ptr %2, align 8
  br label %bb.xq

bb.xp:                                            ; preds = %bb.xn
  %i.bal = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.bam = getelementptr i8, ptr %i.bal, i64 8
  store ptr %i.bam, ptr %i.d, align 8
  br label %bb.xq

bb.xq:                                            ; preds = %bb.xp, %bb.xo
  %i.ban = phi ptr [ %i.baj, %bb.xo ], [ %i.bal, %bb.xp ]
  %i.bao = load i32, ptr %i.ban, align 4, !tbaa !10 ; 2 uses
  switch i32 %i.bao, label %bb.yk [
    i32 -2, label %bb.xr
    i32 -1, label %bb.xs
    i32 1, label %bb.xt
    i32 2, label %bb.xu
    i32 3, label %bb.xv
    i32 4, label %bb.xw
    i32 5, label %bb.xx
    i32 7, label %bb.xy
    i32 6, label %bb.xz
    i32 8, label %bb.ya
    i32 9, label %bb.yb
    i32 10, label %bb.yc
    i32 11, label %bb.yd
    i32 12, label %bb.ye
    i32 13, label %bb.yf
    i32 14, label %bb.yg
    i32 15, label %bb.yh
    i32 16, label %bb.yi
    i32 17, label %bb.yj
  ]

bb.xr:                                            ; preds = %bb.xq
  %i.bap = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.267) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.xs:                                            ; preds = %bb.xq
  %i.baq = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.268) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.xt:                                            ; preds = %bb.xq
  %i.bar = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.269) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.xu:                                            ; preds = %bb.xq
  %i.bas = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.270) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.xv:                                            ; preds = %bb.xq
  %i.bat = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.271) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.xw:                                            ; preds = %bb.xq
  %i.bau = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.272) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.xx:                                            ; preds = %bb.xq
  %i.bav = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.273) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.xy:                                            ; preds = %bb.xq
  %i.baw = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.274) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.xz:                                            ; preds = %bb.xq
  %i.bax = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.275) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.ya:                                            ; preds = %bb.xq
  %i.bay = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.276) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.yb:                                            ; preds = %bb.xq
  %i.baz = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.277) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.yc:                                            ; preds = %bb.xq
  %i.bba = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.278) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.yd:                                            ; preds = %bb.xq
  %i.bbb = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.279) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.ye:                                            ; preds = %bb.xq
  %i.bbc = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.280) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.yf:                                            ; preds = %bb.xq
  %i.bbd = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.281) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.yg:                                            ; preds = %bb.xq
  %i.bbe = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.282) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.yh:                                            ; preds = %bb.xq
  %i.bbf = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.283) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.yi:                                            ; preds = %bb.xq
  %i.bbg = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.284) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.yj:                                            ; preds = %bb.xq
  %i.bbh = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.285) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.yk:                                            ; preds = %bb.xq
  %i.bbi = sext i32 %i.bao to i64
  %i.bbj = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.32, i64 noundef %i.bbi) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.yl:                                            ; preds = %bb.vv
  %i.bbk = load i32, ptr %2, align 8              ; 3 uses
  %i.bbl = icmp ult i32 %i.bbk, 41
  br i1 %i.bbl, label %bb.ym, label %bb.yn

bb.ym:                                            ; preds = %bb.yl
  %i.bbm = load ptr, ptr %i.e, align 8
  %i.bbn = zext nneg i32 %i.bbk to i64
  %i.bbo = getelementptr i8, ptr %i.bbm, i64 %i.bbn
  %i.bbp = add nuw nsw i32 %i.bbk, 8
  store i32 %i.bbp, ptr %2, align 8
  br label %bb.yo

bb.yn:                                            ; preds = %bb.yl
  %i.bbq = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.bbr = getelementptr i8, ptr %i.bbq, i64 8
  store ptr %i.bbr, ptr %i.d, align 8
  br label %bb.yo

bb.yo:                                            ; preds = %bb.yn, %bb.ym
  %i.bbs = phi ptr [ %i.bbo, %bb.ym ], [ %i.bbq, %bb.yn ]
  %i.bbt = load i32, ptr %i.bbs, align 4, !tbaa !10 ; 2 uses
  %i.bbu = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.286, i32 noundef %i.bbt) #10 ; 0 uses
  %9 = zext i32 %i.bbt to i64
  %i.bbv = zext nneg i32 %.014361777 to i64
  %i.bbw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bbv
  store i64 %9, ptr %i.bbw, align 8, !tbaa !28
  br label %H5_trace_args_close_degree.exit1654

bb.yp:                                            ; preds = %bb.vv
  %i.bbx = sext i8 %i.awh to i32
  %i.bby = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.287, i32 noundef %i.bbx) #10 ; 0 uses
  br label %.loopexit1659

bb.yq:                                            ; preds = %bb.bk
  %i.bbz = load i32, ptr %2, align 8              ; 3 uses
  %i.bca = icmp ult i32 %i.bbz, 33
  br i1 %i.bca, label %bb.yr, label %bb.ys

bb.yr:                                            ; preds = %bb.yq
  %i.bcb = load ptr, ptr %i.e, align 8
  %i.bcc = zext nneg i32 %i.bbz to i64
  %i.bcd = getelementptr i8, ptr %i.bcb, i64 %i.bcc
  %i.bce = add nuw nsw i32 %i.bbz, 16
  store i32 %i.bce, ptr %2, align 8
  br label %bb.yt

bb.ys:                                            ; preds = %bb.yq
  %i.bcf = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.bcg = getelementptr i8, ptr %i.bcf, i64 16
  store ptr %i.bcg, ptr %i.d, align 8
  br label %bb.yt

bb.yt:                                            ; preds = %bb.ys, %bb.yr
  %i.bch = phi ptr [ %i.bcd, %bb.yr ], [ %i.bcf, %bb.ys ] ; 16 uses
  %.sroa.0.0.copyload1870 = load i8, ptr %i.bch, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bch, i64 1
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bch, i64 2
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx1871 = getelementptr inbounds nuw i8, ptr %i.bch, i64 3
  %.sroa.6.0.copyload1872 = load i8, ptr %.sroa.6.0..sroa_idx1871, align 1
  %.sroa.7.0..sroa_idx1873 = getelementptr inbounds nuw i8, ptr %i.bch, i64 4
  %.sroa.7.0.copyload1874 = load i8, ptr %.sroa.7.0..sroa_idx1873, align 1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bch, i64 5
  %.sroa.8.0.copyload = load i8, ptr %.sroa.8.0..sroa_idx, align 1
  %.sroa.9.0..sroa_idx1875 = getelementptr inbounds nuw i8, ptr %i.bch, i64 6
  %.sroa.9.0.copyload1876 = load i8, ptr %.sroa.9.0..sroa_idx1875, align 1
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bch, i64 7
  %.sroa.10.0.copyload = load i8, ptr %.sroa.10.0..sroa_idx, align 1
  %.sroa.11.0..sroa_idx1877 = getelementptr inbounds nuw i8, ptr %i.bch, i64 8
  %.sroa.11.0.copyload1878 = load i8, ptr %.sroa.11.0..sroa_idx1877, align 1
  %.sroa.12.0..sroa_idx1879 = getelementptr inbounds nuw i8, ptr %i.bch, i64 9
  %.sroa.12.0.copyload1880 = load i8, ptr %.sroa.12.0..sroa_idx1879, align 1
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bch, i64 10
  %.sroa.13.0.copyload = load i8, ptr %.sroa.13.0..sroa_idx, align 1
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bch, i64 11
  %.sroa.14.0.copyload = load i8, ptr %.sroa.14.0..sroa_idx, align 1
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bch, i64 12
  %.sroa.15.0.copyload = load i8, ptr %.sroa.15.0..sroa_idx, align 1
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bch, i64 13
  %.sroa.16.0.copyload = load i8, ptr %.sroa.16.0..sroa_idx, align 1
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bch, i64 14
  %.sroa.17.0.copyload = load i8, ptr %.sroa.17.0..sroa_idx, align 1
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bch, i64 15
  %.sroa.18.0.copyload = load i8, ptr %.sroa.18.0..sroa_idx, align 1, !tbaa !29
  %i.bci = zext i8 %.sroa.0.0.copyload1870 to i32
  %i.bcj = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.288, i32 noundef %i.bci) #10 ; 0 uses
  %i.bck = zext i8 %.sroa.4.0.copyload to i32
  %i.bcl = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.288, i32 noundef %i.bck) #10 ; 0 uses
  %i.bcm = zext i8 %.sroa.5.0.copyload to i32
  %i.bcn = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.288, i32 noundef %i.bcm) #10 ; 0 uses
  %i.bco = zext i8 %.sroa.6.0.copyload1872 to i32
  %i.bcp = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.288, i32 noundef %i.bco) #10 ; 0 uses
  %i.bcq = zext i8 %.sroa.7.0.copyload1874 to i32
  %i.bcr = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.288, i32 noundef %i.bcq) #10 ; 0 uses
  %i.bcs = zext i8 %.sroa.8.0.copyload to i32
  %i.bct = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.288, i32 noundef %i.bcs) #10 ; 0 uses
  %i.bcu = zext i8 %.sroa.9.0.copyload1876 to i32
  %i.bcv = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.288, i32 noundef %i.bcu) #10 ; 0 uses
  %i.bcw = zext i8 %.sroa.10.0.copyload to i32
  %i.bcx = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.288, i32 noundef %i.bcw) #10 ; 0 uses
  %i.bcy = zext i8 %.sroa.11.0.copyload1878 to i32
  %i.bcz = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.288, i32 noundef %i.bcy) #10 ; 0 uses
  %i.bda = zext i8 %.sroa.12.0.copyload1880 to i32
  %i.bdb = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.288, i32 noundef %i.bda) #10 ; 0 uses
  %i.bdc = zext i8 %.sroa.13.0.copyload to i32
  %i.bdd = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.288, i32 noundef %i.bdc) #10 ; 0 uses
  %i.bde = zext i8 %.sroa.14.0.copyload to i32
  %i.bdf = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.288, i32 noundef %i.bde) #10 ; 0 uses
  %i.bdg = zext i8 %.sroa.15.0.copyload to i32
  %i.bdh = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.288, i32 noundef %i.bdg) #10 ; 0 uses
  %i.bdi = zext i8 %.sroa.16.0.copyload to i32
  %i.bdj = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.288, i32 noundef %i.bdi) #10 ; 0 uses
  %i.bdk = zext i8 %.sroa.17.0.copyload to i32
  %i.bdl = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.288, i32 noundef %i.bdk) #10 ; 0 uses
  %i.bdm = zext i8 %.sroa.18.0.copyload to i32
  %i.bdn = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.288, i32 noundef %i.bdm) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.yu:                                            ; preds = %bb.bk
  %i.bdo = getelementptr inbounds nuw i8, ptr %.3, i64 1
  %i.bdp = load i8, ptr %i.bdo, align 1, !tbaa !29 ; 2 uses
  switch i8 %i.bdp, label %bb.zr [
    i8 105, label %bb.yv
    i8 73, label %bb.yz
    i8 108, label %bb.zd
    i8 116, label %bb.zn
  ]

bb.yv:                                            ; preds = %bb.yu
  %i.bdq = load i32, ptr %2, align 8              ; 3 uses
  %i.bdr = icmp ult i32 %i.bdq, 41
  br i1 %i.bdr, label %bb.yw, label %bb.yx

bb.yw:                                            ; preds = %bb.yv
  %i.bds = load ptr, ptr %i.e, align 8
  %i.bdt = zext nneg i32 %i.bdq to i64
  %i.bdu = getelementptr i8, ptr %i.bds, i64 %i.bdt
  %i.bdv = add nuw nsw i32 %i.bdq, 8
  store i32 %i.bdv, ptr %2, align 8
  br label %bb.yy

bb.yx:                                            ; preds = %bb.yv
  %i.bdw = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.bdx = getelementptr i8, ptr %i.bdw, i64 8
  store ptr %i.bdx, ptr %i.d, align 8
  br label %bb.yy

bb.yy:                                            ; preds = %bb.yx, %bb.yw
  %i.bdy = phi ptr [ %i.bdu, %bb.yw ], [ %i.bdw, %bb.yx ]
  %i.bdz = load ptr, ptr %i.bdy, align 8, !tbaa !32
  %i.bea = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %i.bdz) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.yz:                                            ; preds = %bb.yu
  %i.beb = load i32, ptr %2, align 8              ; 3 uses
  %i.bec = icmp ult i32 %i.beb, 41
  br i1 %i.bec, label %bb.za, label %bb.zb

bb.za:                                            ; preds = %bb.yz
  %i.bed = load ptr, ptr %i.e, align 8
  %i.bee = zext nneg i32 %i.beb to i64
  %i.bef = getelementptr i8, ptr %i.bed, i64 %i.bee
  %i.beg = add nuw nsw i32 %i.beb, 8
  store i32 %i.beg, ptr %2, align 8
  br label %bb.zc

bb.zb:                                            ; preds = %bb.yz
  %i.beh = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.bei = getelementptr i8, ptr %i.beh, i64 8
  store ptr %i.bei, ptr %i.d, align 8
  br label %bb.zc

bb.zc:                                            ; preds = %bb.zb, %bb.za
  %i.bej = phi ptr [ %i.bef, %bb.za ], [ %i.beh, %bb.zb ]
  %i.bek = load ptr, ptr %i.bej, align 8, !tbaa !32
  %i.bel = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %i.bek) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.zd:                                            ; preds = %bb.yu
  %i.bem = load i32, ptr %2, align 8              ; 3 uses
  %i.ben = icmp ult i32 %i.bem, 41
  br i1 %i.ben, label %bb.ze, label %bb.zf

bb.ze:                                            ; preds = %bb.zd
  %i.beo = load ptr, ptr %i.e, align 8
  %i.bep = zext nneg i32 %i.bem to i64
  %i.beq = getelementptr i8, ptr %i.beo, i64 %i.bep
  %i.ber = add nuw nsw i32 %i.bem, 8
  store i32 %i.ber, ptr %2, align 8
  br label %bb.zg

bb.zf:                                            ; preds = %bb.zd
  %i.bes = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.bet = getelementptr i8, ptr %i.bes, i64 8
  store ptr %i.bet, ptr %i.d, align 8
  br label %bb.zg

bb.zg:                                            ; preds = %bb.zf, %bb.ze
  %i.beu = phi ptr [ %i.beq, %bb.ze ], [ %i.bes, %bb.zf ]
  %i.bev = load i32, ptr %i.beu, align 4, !tbaa !10 ; 2 uses
  switch i32 %i.bev, label %bb.zm [
    i32 -1, label %bb.zh
    i32 0, label %bb.zi
    i32 1, label %bb.zj
    i32 64, label %bb.zk
    i32 255, label %bb.zl
  ]

bb.zh:                                            ; preds = %bb.zg
  %i.bew = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.289) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.zi:                                            ; preds = %bb.zg
  %i.bex = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.290) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.zj:                                            ; preds = %bb.zg
  %i.bey = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.291) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.zk:                                            ; preds = %bb.zg
  %i.bez = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.292) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.zl:                                            ; preds = %bb.zg
end_hunk_2
begin_hunk_3_@H5_trace_args:.preheader1658

bb.aix:                                           ; preds = %bb.aiw
  %i.byq = load ptr, ptr %i.e, align 8
  %i.byr = zext nneg i32 %i.byo to i64
  %i.bys = getelementptr i8, ptr %i.byq, i64 %i.byr
  %i.byt = add nuw nsw i32 %i.byo, 8
  store i32 %i.byt, ptr %2, align 8
  br label %bb.aiz

bb.aiy:                                           ; preds = %bb.aiw
  %i.byu = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.byv = getelementptr i8, ptr %i.byu, i64 8
  store ptr %i.byv, ptr %i.d, align 8
  br label %bb.aiz

bb.aiz:                                           ; preds = %bb.aiy, %bb.aix
  %i.byw = phi ptr [ %i.bys, %bb.aix ], [ %i.byu, %bb.aiy ]
  %i.byx = load i32, ptr %i.byw, align 4, !tbaa !10 ; 2 uses
  switch i32 %i.byx, label %bb.ajo [
    i32 -1, label %bb.aja
    i32 0, label %bb.ajb
    i32 1, label %bb.ajc
    i32 2, label %bb.ajd
    i32 3, label %bb.aje
    i32 4, label %bb.ajf
    i32 5, label %bb.ajg
    i32 6, label %bb.ajh
    i32 7, label %bb.aji
    i32 8, label %bb.ajj
    i32 9, label %bb.ajk
    i32 10, label %bb.ajl
    i32 11, label %bb.ajm
    i32 12, label %bb.ajn
  ]

bb.aja:                                           ; preds = %bb.aiz
  %i.byy = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.363) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.ajb:                                           ; preds = %bb.aiz
  %i.byz = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.364) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.ajc:                                           ; preds = %bb.aiz
  %i.bza = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.365) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.ajd:                                           ; preds = %bb.aiz
  %i.bzb = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.366) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.aje:                                           ; preds = %bb.aiz
  %i.bzc = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.367) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.ajf:                                           ; preds = %bb.aiz
  %i.bzd = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.368) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.ajg:                                           ; preds = %bb.aiz
  %i.bze = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.369) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.ajh:                                           ; preds = %bb.aiz
  %i.bzf = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.370) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.aji:                                           ; preds = %bb.aiz
  %i.bzg = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.371) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.ajj:                                           ; preds = %bb.aiz
  %i.bzh = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.372) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.ajk:                                           ; preds = %bb.aiz
  %i.bzi = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.373) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.ajl:                                           ; preds = %bb.aiz
  %i.bzj = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.374) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.ajm:                                           ; preds = %bb.aiz
  %i.bzk = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.375) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.ajn:                                           ; preds = %bb.aiz
  %i.bzl = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.376) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.ajo:                                           ; preds = %bb.aiz
  %i.bzm = sext i32 %i.byx to i64
  %i.bzn = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.32, i64 noundef %i.bzm) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.ajp:                                           ; preds = %bb.agg
  %i.bzo = load i32, ptr %2, align 8              ; 3 uses
  %i.bzp = icmp ult i32 %i.bzo, 41
  br i1 %i.bzp, label %bb.ajq, label %bb.ajr

bb.ajq:                                           ; preds = %bb.ajp
  %i.bzq = load ptr, ptr %i.e, align 8
  %i.bzr = zext nneg i32 %i.bzo to i64
  %i.bzs = getelementptr i8, ptr %i.bzq, i64 %i.bzr
  %i.bzt = add nuw nsw i32 %i.bzo, 8
  store i32 %i.bzt, ptr %2, align 8
  br label %bb.ajs

bb.ajr:                                           ; preds = %bb.ajp
  %i.bzu = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.bzv = getelementptr i8, ptr %i.bzu, i64 8
  store ptr %i.bzv, ptr %i.d, align 8
  br label %bb.ajs

bb.ajs:                                           ; preds = %bb.ajr, %bb.ajq
  %i.bzw = phi ptr [ %i.bzs, %bb.ajq ], [ %i.bzu, %bb.ajr ]
  %i.bzx = load i32, ptr %i.bzw, align 4, !tbaa !10 ; 3 uses
  switch i32 %i.bzx, label %bb.ajy [
    i32 -1, label %bb.ajt
    i32 0, label %bb.aju
    i32 1, label %bb.ajv
    i32 2, label %bb.ajw
    i32 3, label %bb.ajx
    i32 4, label %bb.ajx
    i32 5, label %bb.ajx
    i32 6, label %bb.ajx
    i32 7, label %bb.ajx
    i32 8, label %bb.ajx
    i32 9, label %bb.ajx
    i32 10, label %bb.ajx
    i32 11, label %bb.ajx
    i32 12, label %bb.ajx
    i32 13, label %bb.ajx
    i32 14, label %bb.ajx
    i32 15, label %bb.ajx
  ]

bb.ajt:                                           ; preds = %bb.ajs
  %i.bzy = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.377) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.aju:                                           ; preds = %bb.ajs
  %i.bzz = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.378) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.ajv:                                           ; preds = %bb.ajs
  %i.caa = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.379) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.ajw:                                           ; preds = %bb.ajs
  %i.cab = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.380) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.ajx:                                           ; preds = %bb.ajs, %bb.ajs, %bb.ajs, %bb.ajs, %bb.ajs, %bb.ajs, %bb.ajs, %bb.ajs, %bb.ajs, %bb.ajs, %bb.ajs, %bb.ajs, %bb.ajs
  %i.cac = zext nneg i32 %i.bzx to i64
  %i.cad = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.381, i64 noundef %i.cac) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.ajy:                                           ; preds = %bb.ajs
  %i.cae = sext i32 %i.bzx to i64
  %i.caf = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.32, i64 noundef %i.cae) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.ajz:                                           ; preds = %bb.agg
  %i.cag = sext i8 %i.bto to i32
  %i.cah = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.382, i32 noundef %i.cag) #10 ; 0 uses
  br label %.loopexit1659

bb.aka:                                           ; preds = %bb.bk
  %i.cai = getelementptr inbounds nuw i8, ptr %.3, i64 1
  %i.caj = load i8, ptr %i.cai, align 1, !tbaa !29 ; 2 uses
  switch i8 %i.caj, label %bb.akj [
    i8 108, label %bb.akb
    i8 76, label %bb.akf
  ]

bb.akb:                                           ; preds = %bb.aka
  %i.cak = load i32, ptr %2, align 8              ; 3 uses
  %i.cal = icmp ult i32 %i.cak, 41
  br i1 %i.cal, label %bb.akc, label %bb.akd

bb.akc:                                           ; preds = %bb.akb
  %i.cam = load ptr, ptr %i.e, align 8
  %i.can = zext nneg i32 %i.cak to i64
  %i.cao = getelementptr i8, ptr %i.cam, i64 %i.can
  %i.cap = add nuw nsw i32 %i.cak, 8
  store i32 %i.cap, ptr %2, align 8
  br label %bb.ake

bb.akd:                                           ; preds = %bb.akb
  %i.caq = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.car = getelementptr i8, ptr %i.caq, i64 8
  store ptr %i.car, ptr %i.d, align 8
  br label %bb.ake

bb.ake:                                           ; preds = %bb.akd, %bb.akc
  %i.cas = phi ptr [ %i.cao, %bb.akc ], [ %i.caq, %bb.akd ]
  %i.cat = load i64, ptr %i.cas, align 8, !tbaa !28 ; 2 uses
  %i.cau = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.18, i64 noundef %i.cat) #10 ; 0 uses
  %10 = zext nneg i32 %.014361777 to i64
  %i.cav = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %10
  store i64 %i.cat, ptr %i.cav, align 8, !tbaa !28
  br label %H5_trace_args_close_degree.exit1654

bb.akf:                                           ; preds = %bb.aka
  %i.caw = load i32, ptr %2, align 8              ; 3 uses
  %i.cax = icmp ult i32 %i.caw, 41
  br i1 %i.cax, label %bb.akg, label %bb.akh

bb.akg:                                           ; preds = %bb.akf
  %i.cay = load ptr, ptr %i.e, align 8
  %i.caz = zext nneg i32 %i.caw to i64
  %i.cba = getelementptr i8, ptr %i.cay, i64 %i.caz
  %i.cbb = add nuw nsw i32 %i.caw, 8
  store i32 %i.cbb, ptr %2, align 8
  br label %bb.aki

bb.akh:                                           ; preds = %bb.akf
  %i.cbc = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.cbd = getelementptr i8, ptr %i.cbc, i64 8
  store ptr %i.cbd, ptr %i.d, align 8
  br label %bb.aki

bb.aki:                                           ; preds = %bb.akh, %bb.akg
  %i.cbe = phi ptr [ %i.cba, %bb.akg ], [ %i.cbc, %bb.akh ]
  %i.cbf = load i64, ptr %i.cbe, align 8, !tbaa !35 ; 2 uses
  %i.cbg = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.383, i64 noundef %i.cbf) #10 ; 0 uses
  %11 = zext nneg i32 %.014361777 to i64
  %i.cbh = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %11
  store i64 %i.cbf, ptr %i.cbh, align 8, !tbaa !28
  br label %H5_trace_args_close_degree.exit1654

bb.akj:                                           ; preds = %bb.aka
  %i.cbi = sext i8 %i.caj to i32
  %i.cbj = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.384, i32 noundef %i.cbi) #10 ; 0 uses
  br label %.loopexit1659

bb.akk:                                           ; preds = %bb.bk
  %i.cbk = getelementptr inbounds nuw i8, ptr %.3, i64 1
  %i.cbl = load i8, ptr %i.cbk, align 1, !tbaa !29 ; 2 uses
  switch i8 %i.cbl, label %bb.ava [
    i8 97, label %bb.akl
    i8 65, label %bb.akw
    i8 98, label %bb.ala
    i8 66, label %bb.alk
    i8 99, label %bb.als
    i8 67, label %bb.amd
    i8 100, label %bb.amj
    i8 101, label %bb.amr
    i8 102, label %bb.amz
    i8 103, label %bb.ang
    i8 104, label %bb.ant
    i8 105, label %bb.aod
    i8 106, label %bb.aok
    i8 107, label %bb.aot
    i8 108, label %bb.apb
    i8 76, label %bb.apj
    i8 109, label %bb.apq
    i8 110, label %bb.apy
    i8 78, label %bb.aqh
    i8 111, label %bb.aql
    i8 114, label %bb.aqw
    i8 115, label %bb.ard
    i8 83, label %bb.arj
    i8 116, label %bb.asb
    i8 117, label %bb.asq
    i8 118, label %bb.asu
    i8 119, label %bb.aua
    i8 120, label %bb.auh
    i8 121, label %bb.aul
    i8 122, label %bb.auw
  ]

bb.akl:                                           ; preds = %bb.akk
  %i.cbm = load i32, ptr %2, align 8              ; 3 uses
  %i.cbn = icmp ult i32 %i.cbm, 41
  br i1 %i.cbn, label %bb.akm, label %bb.akn

bb.akm:                                           ; preds = %bb.akl
  %i.cbo = load ptr, ptr %i.e, align 8
  %i.cbp = zext nneg i32 %i.cbm to i64
  %i.cbq = getelementptr i8, ptr %i.cbo, i64 %i.cbp
  %i.cbr = add nuw nsw i32 %i.cbm, 8
  store i32 %i.cbr, ptr %2, align 8
  br label %bb.ako

bb.akn:                                           ; preds = %bb.akl
  %i.cbs = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.cbt = getelementptr i8, ptr %i.cbs, i64 8
  store ptr %i.cbt, ptr %i.d, align 8
  br label %bb.ako

bb.ako:                                           ; preds = %bb.akn, %bb.akm
  %i.cbu = phi ptr [ %i.cbq, %bb.akm ], [ %i.cbs, %bb.akn ]
  %i.cbv = load i32, ptr %i.cbu, align 4, !tbaa !10 ; 2 uses
  switch i32 %i.cbv, label %bb.akv [
    i32 3, label %bb.akp
    i32 5, label %bb.akq
    i32 0, label %bb.akr
    i32 2, label %bb.aks
    i32 4, label %bb.akt
    i32 1, label %bb.aku
  ]

bb.akp:                                           ; preds = %bb.ako
  %i.cbw = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.385) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.akq:                                           ; preds = %bb.ako
  %i.cbx = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.386) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.akr:                                           ; preds = %bb.ako
  %i.cby = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.387) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.aks:                                           ; preds = %bb.ako
  %i.cbz = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.388) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.akt:                                           ; preds = %bb.ako
  %i.cca = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.389) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.aku:                                           ; preds = %bb.ako
  %i.ccb = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.390) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.akv:                                           ; preds = %bb.ako
  %i.ccc = zext i32 %i.cbv to i64
  %i.ccd = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.32, i64 noundef %i.ccc) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.akw:                                           ; preds = %bb.akk
  %i.cce = load i32, ptr %2, align 8              ; 3 uses
  %i.ccf = icmp ult i32 %i.cce, 41
  br i1 %i.ccf, label %bb.akx, label %bb.aky

bb.akx:                                           ; preds = %bb.akw
  %i.ccg = load ptr, ptr %i.e, align 8
  %i.cch = zext nneg i32 %i.cce to i64
  %i.cci = getelementptr i8, ptr %i.ccg, i64 %i.cch
  %i.ccj = add nuw nsw i32 %i.cce, 8
  store i32 %i.ccj, ptr %2, align 8
  br label %bb.akz

bb.aky:                                           ; preds = %bb.akw
  %i.cck = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.ccl = getelementptr i8, ptr %i.cck, i64 8
  store ptr %i.ccl, ptr %i.d, align 8
  br label %bb.akz

bb.akz:                                           ; preds = %bb.aky, %bb.akx
  %i.ccm = phi ptr [ %i.cci, %bb.akx ], [ %i.cck, %bb.aky ]
  %i.ccn = load i32, ptr %i.ccm, align 4, !tbaa !10
  %i.cco = sext i32 %i.ccn to i64
  %i.ccp = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.32, i64 noundef %i.cco) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.ala:                                           ; preds = %bb.akk
  %i.ccq = load i32, ptr %2, align 8              ; 3 uses
  %i.ccr = icmp ult i32 %i.ccq, 41
  br i1 %i.ccr, label %bb.alb, label %bb.alc

bb.alb:                                           ; preds = %bb.ala
  %i.ccs = load ptr, ptr %i.e, align 8
  %i.cct = zext nneg i32 %i.ccq to i64
  %i.ccu = getelementptr i8, ptr %i.ccs, i64 %i.cct
  %i.ccv = add nuw nsw i32 %i.ccq, 8
  store i32 %i.ccv, ptr %2, align 8
  br label %bb.ald

bb.alc:                                           ; preds = %bb.ala
  %i.ccw = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.ccx = getelementptr i8, ptr %i.ccw, i64 8
  store ptr %i.ccx, ptr %i.d, align 8
  br label %bb.ald

bb.ald:                                           ; preds = %bb.alc, %bb.alb
  %i.ccy = phi ptr [ %i.ccu, %bb.alb ], [ %i.ccw, %bb.alc ]
  %i.ccz = load i32, ptr %i.ccy, align 4, !tbaa !10 ; 2 uses
  switch i32 %i.ccz, label %bb.alj [
    i32 0, label %bb.ale
    i32 1, label %bb.alf
    i32 2, label %bb.alg
    i32 3, label %bb.alh
    i32 4, label %bb.ali
  ]

bb.ale:                                           ; preds = %bb.ald
  %i.cda = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.391) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.alf:                                           ; preds = %bb.ald
  %i.cdb = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.392) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.alg:                                           ; preds = %bb.ald
  %i.cdc = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.393) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.alh:                                           ; preds = %bb.ald
  %i.cdd = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.394) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.ali:                                           ; preds = %bb.ald
  %i.cde = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.395) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.alj:                                           ; preds = %bb.ald
  %i.cdf = zext i32 %i.ccz to i64
  %i.cdg = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.32, i64 noundef %i.cdf) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.alk:                                           ; preds = %bb.akk
  %i.cdh = load i32, ptr %2, align 8              ; 3 uses
  %i.cdi = icmp ult i32 %i.cdh, 41
  br i1 %i.cdi, label %bb.all, label %bb.alm

bb.all:                                           ; preds = %bb.alk
  %i.cdj = load ptr, ptr %i.e, align 8
  %i.cdk = zext nneg i32 %i.cdh to i64
  %i.cdl = getelementptr i8, ptr %i.cdj, i64 %i.cdk
  %i.cdm = add nuw nsw i32 %i.cdh, 8
  store i32 %i.cdm, ptr %2, align 8
  br label %bb.aln

bb.alm:                                           ; preds = %bb.alk
  %i.cdn = load ptr, ptr %i.d, align 8            ; 2 uses
end_hunk_3
begin_hunk_4_@H5_trace_args:.preheader1658
bb.auc:                                           ; preds = %bb.aua
  %i.csk = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.csl = getelementptr i8, ptr %i.csk, i64 8
  store ptr %i.csl, ptr %i.d, align 8
  br label %bb.aud

bb.aud:                                           ; preds = %bb.auc, %bb.aub
  %i.csm = phi ptr [ %i.csi, %bb.aub ], [ %i.csk, %bb.auc ]
  %i.csn = load i32, ptr %i.csm, align 4, !tbaa !10 ; 2 uses
  switch i32 %i.csn, label %bb.aug [
    i32 0, label %bb.aue
    i32 1, label %bb.auf
  ]

bb.aue:                                           ; preds = %bb.aud
  %i.cso = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.507) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.auf:                                           ; preds = %bb.aud
  %i.csp = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.508) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.aug:                                           ; preds = %bb.aud
  %i.csq = sext i32 %i.csn to i64
  %i.csr = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.32, i64 noundef %i.csq) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.auh:                                           ; preds = %bb.akk
  %i.css = load i32, ptr %2, align 8              ; 3 uses
  %i.cst = icmp ult i32 %i.css, 41
  br i1 %i.cst, label %bb.aui, label %bb.auj

bb.aui:                                           ; preds = %bb.auh
  %i.csu = load ptr, ptr %i.e, align 8
  %i.csv = zext nneg i32 %i.css to i64
  %i.csw = getelementptr i8, ptr %i.csu, i64 %i.csv
  %i.csx = add nuw nsw i32 %i.css, 8
  store i32 %i.csx, ptr %2, align 8
  br label %bb.auk

bb.auj:                                           ; preds = %bb.auh
  %i.csy = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.csz = getelementptr i8, ptr %i.csy, i64 8
  store ptr %i.csz, ptr %i.d, align 8
  br label %bb.auk

bb.auk:                                           ; preds = %bb.auj, %bb.aui
  %i.cta = phi ptr [ %i.csw, %bb.aui ], [ %i.csy, %bb.auj ]
  %i.ctb = load i32, ptr %i.cta, align 4, !tbaa !10
  %i.ctc = sext i32 %i.ctb to i64
  %i.ctd = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.32, i64 noundef %i.ctc) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.aul:                                           ; preds = %bb.akk
  %i.cte = load i32, ptr %2, align 8              ; 3 uses
  %i.ctf = icmp ult i32 %i.cte, 41
  br i1 %i.ctf, label %bb.aum, label %bb.aun

bb.aum:                                           ; preds = %bb.aul
  %i.ctg = load ptr, ptr %i.e, align 8
  %i.cth = zext nneg i32 %i.cte to i64
  %i.cti = getelementptr i8, ptr %i.ctg, i64 %i.cth
  %i.ctj = add nuw nsw i32 %i.cte, 8
  store i32 %i.ctj, ptr %2, align 8
  br label %bb.auo

bb.aun:                                           ; preds = %bb.aul
  %i.ctk = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.ctl = getelementptr i8, ptr %i.ctk, i64 8
  store ptr %i.ctl, ptr %i.d, align 8
  br label %bb.auo

bb.auo:                                           ; preds = %bb.aun, %bb.aum
  %i.ctm = phi ptr [ %i.cti, %bb.aum ], [ %i.ctk, %bb.aun ]
  %i.ctn = load i32, ptr %i.ctm, align 4, !tbaa !10 ; 2 uses
  switch i32 %i.ctn, label %bb.auv [
    i32 0, label %bb.aup
    i32 1, label %bb.auq
    i32 2, label %bb.aur
    i32 3, label %bb.aus
    i32 4, label %bb.aut
    i32 5, label %bb.auu
  ]

bb.aup:                                           ; preds = %bb.auo
  %i.cto = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.509) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.auq:                                           ; preds = %bb.auo
  %i.ctp = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.510) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.aur:                                           ; preds = %bb.auo
  %i.ctq = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.511) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.aus:                                           ; preds = %bb.auo
  %i.ctr = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.512) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.aut:                                           ; preds = %bb.auo
  %i.cts = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.513) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.auu:                                           ; preds = %bb.auo
  %i.ctt = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.514) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.auv:                                           ; preds = %bb.auo
  %i.ctu = sext i32 %i.ctn to i64
  %i.ctv = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.32, i64 noundef %i.ctu) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.auw:                                           ; preds = %bb.akk
  %i.ctw = load i32, ptr %2, align 8              ; 3 uses
  %i.ctx = icmp ult i32 %i.ctw, 41
  br i1 %i.ctx, label %bb.aux, label %bb.auy

bb.aux:                                           ; preds = %bb.auw
  %i.cty = load ptr, ptr %i.e, align 8
  %i.ctz = zext nneg i32 %i.ctw to i64
  %i.cua = getelementptr i8, ptr %i.cty, i64 %i.ctz
  %i.cub = add nuw nsw i32 %i.ctw, 8
  store i32 %i.cub, ptr %2, align 8
  br label %bb.auz

bb.auy:                                           ; preds = %bb.auw
  %i.cuc = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.cud = getelementptr i8, ptr %i.cuc, i64 8
  store ptr %i.cud, ptr %i.d, align 8
  br label %bb.auz

bb.auz:                                           ; preds = %bb.auy, %bb.aux
  %i.cue = phi ptr [ %i.cua, %bb.aux ], [ %i.cuc, %bb.auy ]
  %i.cuf = load i32, ptr %i.cue, align 4, !tbaa !10
  %i.cug = sext i32 %i.cuf to i64
  %i.cuh = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.32, i64 noundef %i.cug) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.ava:                                           ; preds = %bb.akk
  %i.cui = sext i8 %i.cbl to i32
  %i.cuj = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.515, i32 noundef %i.cui) #10 ; 0 uses
  br label %.loopexit1659

bb.avb:                                           ; preds = %bb.bk
  %i.cuk = load i32, ptr %2, align 8              ; 3 uses
  %i.cul = icmp ult i32 %i.cuk, 41
  br i1 %i.cul, label %bb.avc, label %bb.avd

bb.avc:                                           ; preds = %bb.avb
  %i.cum = load ptr, ptr %i.e, align 8
  %i.cun = zext nneg i32 %i.cuk to i64
  %i.cuo = getelementptr i8, ptr %i.cum, i64 %i.cun
  %i.cup = add nuw nsw i32 %i.cuk, 8
  store i32 %i.cup, ptr %2, align 8
  br label %bb.ave

bb.avd:                                           ; preds = %bb.avb
  %i.cuq = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.cur = getelementptr i8, ptr %i.cuq, i64 8
  store ptr %i.cur, ptr %i.d, align 8
  br label %bb.ave

bb.ave:                                           ; preds = %bb.avd, %bb.avc
  %i.cus = phi ptr [ %i.cuo, %bb.avc ], [ %i.cuq, %bb.avd ]
  %i.cut = load ptr, ptr %i.cus, align 8, !tbaa !32 ; 2 uses
  %.not1615 = icmp eq ptr %i.cut, null
  br i1 %.not1615, label %bb.avg, label %bb.avf

bb.avf:                                           ; preds = %bb.ave
  %i.cuu = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.cut) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.avg:                                           ; preds = %bb.ave
  %i.cuv = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.17) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.avh:                                           ; preds = %bb.bk
  %i.cuw = load i32, ptr %2, align 8              ; 3 uses
  %i.cux = icmp ult i32 %i.cuw, 41
  br i1 %i.cux, label %bb.avi, label %bb.avj

bb.avi:                                           ; preds = %bb.avh
  %i.cuy = load ptr, ptr %i.e, align 8
  %i.cuz = zext nneg i32 %i.cuw to i64
  %i.cva = getelementptr i8, ptr %i.cuy, i64 %i.cuz
  %i.cvb = add nuw nsw i32 %i.cuw, 8
  store i32 %i.cvb, ptr %2, align 8
  br label %bb.avk

bb.avj:                                           ; preds = %bb.avh
  %i.cvc = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.cvd = getelementptr i8, ptr %i.cvc, i64 8
  store ptr %i.cvd, ptr %i.d, align 8
  br label %bb.avk

bb.avk:                                           ; preds = %bb.avj, %bb.avi
  %i.cve = phi ptr [ %i.cva, %bb.avi ], [ %i.cvc, %bb.avj ]
  %i.cvf = load i64, ptr %i.cve, align 8, !tbaa !28 ; 2 uses
  %i.cvg = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.516, i64 noundef %i.cvf) #10 ; 0 uses
  %12 = zext nneg i32 %.014361777 to i64
  %i.cvh = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %12
  store i64 %i.cvf, ptr %i.cvh, align 8, !tbaa !28
  br label %H5_trace_args_close_degree.exit1654

bb.avl:                                           ; preds = %bb.bk
  %i.cvi = getelementptr inbounds nuw i8, ptr %.3, i64 1
  %i.cvj = load i8, ptr %i.cvi, align 1, !tbaa !29 ; 2 uses
  switch i8 %i.cvj, label %bb.awz [
    i8 97, label %bb.avm
    i8 99, label %bb.avu
    i8 101, label %bb.avy
    i8 102, label %bb.awf
    i8 70, label %bb.awr
    i8 115, label %bb.awv
  ]

bb.avm:                                           ; preds = %bb.avl
  %i.cvk = load i32, ptr %2, align 8              ; 3 uses
  %i.cvl = icmp ult i32 %i.cvk, 41
  br i1 %i.cvl, label %bb.avn, label %bb.avo

bb.avn:                                           ; preds = %bb.avm
  %i.cvm = load ptr, ptr %i.e, align 8
  %i.cvn = zext nneg i32 %i.cvk to i64
  %i.cvo = getelementptr i8, ptr %i.cvm, i64 %i.cvn
  %i.cvp = add nuw nsw i32 %i.cvk, 8
  store i32 %i.cvp, ptr %2, align 8
  br label %bb.avp

bb.avo:                                           ; preds = %bb.avm
  %i.cvq = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.cvr = getelementptr i8, ptr %i.cvq, i64 8
  store ptr %i.cvr, ptr %i.d, align 8
  br label %bb.avp

bb.avp:                                           ; preds = %bb.avo, %bb.avn
  %i.cvs = phi ptr [ %i.cvo, %bb.avn ], [ %i.cvq, %bb.avo ]
  %i.cvt = load i32, ptr %i.cvs, align 4, !tbaa !10 ; 2 uses
  switch i32 %i.cvt, label %bb.avt [
    i32 0, label %bb.avq
    i32 1, label %bb.avr
    i32 2, label %bb.avs
  ]

bb.avq:                                           ; preds = %bb.avp
  %i.cvu = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.517) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.avr:                                           ; preds = %bb.avp
  %i.cvv = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.518) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.avs:                                           ; preds = %bb.avp
  %i.cvw = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.519) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.avt:                                           ; preds = %bb.avp
  %i.cvx = zext i32 %i.cvt to i64
  %i.cvy = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.32, i64 noundef %i.cvx) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.avu:                                           ; preds = %bb.avl
  %i.cvz = load i32, ptr %2, align 8              ; 3 uses
  %i.cwa = icmp ult i32 %i.cvz, 41
  br i1 %i.cwa, label %bb.avv, label %bb.avw

bb.avv:                                           ; preds = %bb.avu
  %i.cwb = load ptr, ptr %i.e, align 8
  %i.cwc = zext nneg i32 %i.cvz to i64
  %i.cwd = getelementptr i8, ptr %i.cwb, i64 %i.cwc
  %i.cwe = add nuw nsw i32 %i.cvz, 8
  store i32 %i.cwe, ptr %2, align 8
  br label %bb.avx

bb.avw:                                           ; preds = %bb.avu
  %i.cwf = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.cwg = getelementptr i8, ptr %i.cwf, i64 8
  store ptr %i.cwg, ptr %i.d, align 8
  br label %bb.avx

bb.avx:                                           ; preds = %bb.avw, %bb.avv
  %i.cwh = phi ptr [ %i.cwd, %bb.avv ], [ %i.cwf, %bb.avw ]
  %i.cwi = load ptr, ptr %i.cwh, align 8, !tbaa !73
  %i.cwj = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %i.cwi) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.avy:                                           ; preds = %bb.avl
  %i.cwk = load i32, ptr %2, align 8              ; 3 uses
  %i.cwl = icmp ult i32 %i.cwk, 41
  br i1 %i.cwl, label %bb.avz, label %bb.awa

bb.avz:                                           ; preds = %bb.avy
  %i.cwm = load ptr, ptr %i.e, align 8
  %i.cwn = zext nneg i32 %i.cwk to i64
  %i.cwo = getelementptr i8, ptr %i.cwm, i64 %i.cwn
  %i.cwp = add nuw nsw i32 %i.cwk, 8
  store i32 %i.cwp, ptr %2, align 8
  br label %bb.awb

bb.awa:                                           ; preds = %bb.avy
  %i.cwq = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.cwr = getelementptr i8, ptr %i.cwq, i64 8
  store ptr %i.cwr, ptr %i.d, align 8
  br label %bb.awb

bb.awb:                                           ; preds = %bb.awa, %bb.avz
  %i.cws = phi ptr [ %i.cwo, %bb.avz ], [ %i.cwq, %bb.awa ]
  %i.cwt = load i32, ptr %i.cws, align 4, !tbaa !10 ; 2 uses
  switch i32 %i.cwt, label %bb.awe [
    i32 0, label %bb.awc
    i32 1, label %bb.awd
  ]

bb.awc:                                           ; preds = %bb.awb
  %i.cwu = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.520) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.awd:                                           ; preds = %bb.awb
  %i.cwv = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.521) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.awe:                                           ; preds = %bb.awb
  %i.cww = sext i32 %i.cwt to i64
  %i.cwx = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.32, i64 noundef %i.cww) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.awf:                                           ; preds = %bb.avl
  %i.cwy = load i32, ptr %2, align 8              ; 3 uses
  %i.cwz = icmp ult i32 %i.cwy, 41
  br i1 %i.cwz, label %bb.awg, label %bb.awh

bb.awg:                                           ; preds = %bb.awf
  %i.cxa = load ptr, ptr %i.e, align 8
  %i.cxb = zext nneg i32 %i.cwy to i64
  %i.cxc = getelementptr i8, ptr %i.cxa, i64 %i.cxb
  %i.cxd = add nuw nsw i32 %i.cwy, 8
  store i32 %i.cxd, ptr %2, align 8
  br label %bb.awi

bb.awh:                                           ; preds = %bb.awf
  %i.cxe = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.cxf = getelementptr i8, ptr %i.cxe, i64 8
  store ptr %i.cxf, ptr %i.d, align 8
  br label %bb.awi

bb.awi:                                           ; preds = %bb.awh, %bb.awg
  %i.cxg = phi ptr [ %i.cxc, %bb.awg ], [ %i.cxe, %bb.awh ]
  %i.cxh = load i32, ptr %i.cxg, align 4, !tbaa !10 ; 2 uses
  switch i32 %i.cxh, label %bb.awq [
    i32 0, label %bb.awj
    i32 1, label %bb.awk
    i32 2, label %bb.awl
    i32 3, label %bb.awm
    i32 4, label %bb.awn
    i32 5, label %bb.awo
    i32 6, label %bb.awp
  ]

bb.awj:                                           ; preds = %bb.awi
  %i.cxi = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.522) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.awk:                                           ; preds = %bb.awi
  %i.cxj = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.523) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.awl:                                           ; preds = %bb.awi
  %i.cxk = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.524) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.awm:                                           ; preds = %bb.awi
  %i.cxl = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.525) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.awn:                                           ; preds = %bb.awi
  %i.cxm = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.526) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.awo:                                           ; preds = %bb.awi
  %i.cxn = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.527) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.awp:                                           ; preds = %bb.awi
  %i.cxo = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.528) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.awq:                                           ; preds = %bb.awi
  %i.cxp = sext i32 %i.cxh to i64
  %i.cxq = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.32, i64 noundef %i.cxp) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.awr:                                           ; preds = %bb.avl
  %i.cxr = load i32, ptr %2, align 8              ; 3 uses
  %i.cxs = icmp ult i32 %i.cxr, 41
  br i1 %i.cxs, label %bb.aws, label %bb.awt

bb.aws:                                           ; preds = %bb.awr
  %i.cxt = load ptr, ptr %i.e, align 8
  %i.cxu = zext nneg i32 %i.cxr to i64
  %i.cxv = getelementptr i8, ptr %i.cxt, i64 %i.cxu
  %i.cxw = add nuw nsw i32 %i.cxr, 8
  store i32 %i.cxw, ptr %2, align 8
  br label %bb.awu

bb.awt:                                           ; preds = %bb.awr
  %i.cxx = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.cxy = getelementptr i8, ptr %i.cxx, i64 8
  store ptr %i.cxy, ptr %i.d, align 8
  br label %bb.awu

bb.awu:                                           ; preds = %bb.awt, %bb.aws
  %i.cxz = phi ptr [ %i.cxv, %bb.aws ], [ %i.cxx, %bb.awt ]
  %i.cya = load ptr, ptr %i.cxz, align 8, !tbaa !32
  %i.cyb = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %i.cya) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.awv:                                           ; preds = %bb.avl
  %i.cyc = load i32, ptr %2, align 8              ; 3 uses
  %i.cyd = icmp ult i32 %i.cyc, 41
  br i1 %i.cyd, label %bb.aww, label %bb.awx

bb.aww:                                           ; preds = %bb.awv
  %i.cye = load ptr, ptr %i.e, align 8
  %i.cyf = zext nneg i32 %i.cyc to i64
  %i.cyg = getelementptr i8, ptr %i.cye, i64 %i.cyf
  %i.cyh = add nuw nsw i32 %i.cyc, 8
  store i32 %i.cyh, ptr %2, align 8
  br label %bb.awy

bb.awx:                                           ; preds = %bb.awv
  %i.cyi = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.cyj = getelementptr i8, ptr %i.cyi, i64 8
  store ptr %i.cyj, ptr %i.d, align 8
  br label %bb.awy

bb.awy:                                           ; preds = %bb.awx, %bb.aww
  %i.cyk = phi ptr [ %i.cyg, %bb.aww ], [ %i.cyi, %bb.awx ]
  %i.cyl = load i64, ptr %i.cyk, align 8, !tbaa !28 ; 2 uses
  %i.cym = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.529, i64 noundef %i.cyl) #10 ; 0 uses
  %13 = zext nneg i32 %.014361777 to i64
  %i.cyn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %13
  store i64 %i.cyl, ptr %i.cyn, align 8, !tbaa !28
  br label %H5_trace_args_close_degree.exit1654

bb.awz:                                           ; preds = %bb.avl
  %i.cyo = sext i8 %i.cvj to i32
  %i.cyp = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.515, i32 noundef %i.cyo) #10 ; 0 uses
  br label %.loopexit1659

bb.axa:                                           ; preds = %bb.bk
  %i.cyq = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.530) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.axb:                                           ; preds = %bb.bk
  %i.cyr = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.531) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.axc:                                           ; preds = %bb.bk
  %i.cys = sext i8 %i.hf to i32                   ; 2 uses
  %i.cyt = tail call ptr @__ctype_b_loc() #12
  %i.cyu = load ptr, ptr %i.cyt, align 8, !tbaa !75
  %i.cyv = sext i8 %i.hf to i64
  %i.cyw = getelementptr inbounds [2 x i8], ptr %i.cyu, i64 %i.cyv
  %i.cyx = load i16, ptr %i.cyw, align 2, !tbaa !77
  %i.cyy = and i16 %i.cyx, 256
  %.not1627 = icmp eq i16 %i.cyy, 0
  br i1 %.not1627, label %bb.axe, label %bb.axd

bb.axd:                                           ; preds = %bb.axc
  %i.cyz = getelementptr inbounds nuw i8, ptr %.3, i64 1
  %i.cza = load i8, ptr %i.cyz, align 1, !tbaa !29
  %i.czb = sext i8 %i.cza to i32
  %i.czc = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.532, i32 noundef %i.cys, i32 noundef %i.czb) #10 ; 0 uses
  br label %.loopexit1659

bb.axe:                                           ; preds = %bb.axc
  %i.czd = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.533, i32 noundef %i.cys) #10 ; 0 uses
  br label %.loopexit1659

H5_trace_args_close_degree.exit1654:              ; preds = %bb.bf, %bb.am, %bb.ac, %bb.z, %bb.mb, %bb.ma, %bb.lz, %bb.ly, %bb.lx, %.thread, %bb.awj, %bb.awl, %bb.awn, %bb.awp, %bb.awq, %bb.awo, %bb.awm, %bb.awk, %bb.awc, %bb.awe, %bb.awd, %bb.avq, %bb.avr, %bb.avs, %bb.avt, %bb.aup, %bb.auq, %bb.aur, %bb.aus, %bb.aut, %bb.auu, %bb.auv, %bb.aue, %bb.auf, %bb.aug, %bb.asy, %bb.asz, %bb.ata, %bb.atb, %bb.atc, %bb.atd, %bb.ate, %bb.atf, %bb.atg, %bb.ath, %bb.ati, %bb.atj, %bb.atk, %bb.atl, %bb.atm, %bb.atn, %bb.ato, %bb.atp, %bb.atq, %bb.atr, %bb.ats, %bb.att, %bb.atu, %bb.atv, %bb.atw, %bb.atx, %bb.aty, %bb.atz, %bb.asf, %bb.asg, %bb.ash, %bb.asi, %bb.asj, %bb.ask, %bb.asl, %bb.asm, %bb.asn, %bb.aso, %bb.asp, %bb.arn, %bb.aro, %bb.arp, %bb.arq, %bb.arr, %bb.ars, %bb.art, %bb.aru, %bb.arv, %bb.arw, %bb.arx, %bb.ary, %bb.arz, %bb.asa, %bb.arh, %bb.ari, %bb.ara, %bb.arb, %bb.arc, %bb.aqp, %bb.aqq, %bb.aqr, %bb.aqs, %bb.aqt, %bb.aqu, %bb.aqv, %bb.aqc, %bb.aqd, %bb.aqe, %bb.aqf, %bb.aqg, %bb.apu, %bb.apv, %bb.apw, %bb.apx, %bb.apn, %bb.apo, %bb.app, %bb.apf, %bb.apg, %bb.aph, %bb.api, %bb.aox, %bb.aoy, %bb.aoz, %bb.apa, %bb.aoo, %bb.aop, %bb.aoq, %bb.aor, %bb.aos, %bb.aoh, %bb.aoi, %bb.aoj, %bb.anx, %bb.any, %bb.anz, %bb.aoa, %bb.aob, %bb.aoc, %bb.ank, %bb.anl, %bb.anm, %bb.ann, %bb.ano, %bb.anp, %bb.anq, %bb.anr, %bb.ans, %bb.and, %bb.ane, %bb.anf, %bb.amv, %bb.amw, %bb.amx, %bb.amy, %bb.amn, %bb.amo, %bb.amp, %bb.amq, %bb.amh, %bb.ami, %bb.alw, %bb.alx, %bb.aly, %bb.alz, %bb.ama, %bb.amb, %bb.amc, %bb.alo, %bb.alp, %bb.alq, %bb.alr, %bb.ale, %bb.alf, %bb.alg, %bb.alh, %bb.ali, %bb.alj, %bb.akp, %bb.akq, %bb.akr, %bb.aks, %bb.akt, %bb.aku, %bb.akv, %bb.ajt, %bb.aju, %bb.ajv, %bb.ajw, %bb.ajx, %bb.ajy, %bb.aja, %bb.ajb, %bb.ajc, %bb.ajd, %bb.aje, %bb.ajf, %bb.ajg, %bb.ajh, %bb.aji, %bb.ajj, %bb.ajk, %bb.ajl, %bb.ajm, %bb.ajn, %bb.ajo, %bb.air, %bb.ais, %bb.ait, %bb.aiu, %bb.aiv, %bb.aih, %bb.aii, %bb.aij, %bb.aik, %bb.ail, %bb.aim, %bb.ahw, %bb.ahx, %bb.ahy, %bb.ahz, %bb.aia, %bb.aib, %bb.aic, %bb.ahn, %bb.aho, %bb.ahp, %bb.ahq, %bb.ahr, %bb.ahb, %bb.ahc, %bb.ahd, %bb.ahe, %bb.agt, %bb.agu, %bb.agv, %bb.agw, %bb.agc, %bb.agf, %bb.age, %bb.afq, %bb.afr, %bb.afs, %bb.aft, %bb.afu, %bb.afv, %bb.afw, %bb.afb, %bb.afc, %bb.afd, %bb.afe, %bb.aff, %bb.afg, %bb.afh, %bb.afi, %bb.afj, %bb.afk, %bb.afl, %bb.aes, %bb.aet, %bb.aeu, %bb.aev, %bb.aew, %bb.aee, %bb.aef, %bb.aeg, %bb.aeh, %bb.aei, %bb.aej, %bb.aek, %bb.ael, %bb.abx, %bb.aby, %bb.abk, %bb.abl, %bb.abm, %bb.abn, %bb.abo, %bb.abp, %bb.abq, %bb.aaf, %bb.aag, %bb.aah, %bb.aai, %bb.aaj, %bb.aak, %bb.aal, %bb.aam, %bb.aan, %bb.aao, %bb.zh, %bb.zi, %bb.zj, %bb.zk, %bb.zl, %bb.zm, %bb.xr, %bb.xs, %bb.xt, %bb.xu, %bb.xv, %bb.xw, %bb.xx, %bb.xy, %bb.xz, %bb.ya, %bb.yb, %bb.yc, %bb.yd, %bb.ye, %bb.yf, %bb.yg, %bb.yh, %bb.yi, %bb.yj, %bb.yk, %bb.wv, %bb.ww, %bb.wx, %bb.wy, %bb.wz, %bb.xa, %bb.wi, %bb.wj, %bb.wk, %bb.wl, %bb.wm, %bb.qd, %bb.qh, %bb.qi, %bb.vh, %bb.vi, %bb.vj, %bb.vk, %bb.vl, %bb.vm, %bb.vn, %bb.vo, %bb.vp, %bb.vq, %bb.vr, %bb.vs, %bb.vt, %bb.vu, %bb.qm, %bb.qq, %bb.qu, %bb.qy, %bb.rc, %bb.rg, %bb.rk, %bb.ro, %bb.rs, %bb.rw, %bb.sa, %bb.se, %bb.si, %bb.sm, %bb.sq, %bb.su, %bb.sy, %bb.tc, %bb.tg, %bb.tk, %bb.to, %bb.ts, %bb.tw, %bb.ua, %bb.ue, %bb.ui, %bb.um, %bb.uq, %bb.uu, %bb.uy, %bb.vc, %bb.vd, %bb.va, %bb.uw, %bb.us, %bb.uo, %bb.uk, %bb.ug, %bb.uc, %bb.ty, %bb.tu, %bb.tq, %bb.tm, %bb.ti, %bb.te, %bb.ta, %bb.sw, %bb.ss, %bb.so, %bb.sk, %bb.sg, %bb.sc, %bb.ry, %bb.ru, %bb.rq, %bb.rm, %bb.ri, %bb.re, %bb.ra, %bb.qw, %bb.qs, %bb.qo, %bb.qk, %bb.qf, %bb.vf, %bb.vg, %bb.ve, %bb.pn, %bb.po, %bb.ow, %bb.ox, %bb.oy, %bb.oz, %bb.pa, %bb.pb, %bb.pc, %bb.pd, %bb.ny, %bb.nz, %bb.oa, %bb.ob, %bb.oc, %bb.od, %bb.oe, %bb.no, %bb.np, %bb.nq, %bb.nr, %bb.ns, %bb.nt, %bb.nh, %bb.ni, %bb.nj, %bb.mu, %bb.mv, %bb.mw, %bb.mx, %bb.my, %bb.mz, %bb.na, %bb.nb, %bb.nc, %bb.mg, %bb.mh, %bb.mi, %bb.mj, %bb.mk, %bb.li, %bb.lj, %bb.lk, %bb.kz, %bb.la, %bb.lb, %bb.lc, %bb.ld, %bb.kk, %bb.kl, %bb.km, %bb.jr, %bb.js, %bb.jd, %bb.je, %bb.jf, %bb.jg, %bb.jh, %bb.ji, %bb.jj, %bb.jk, %bb.jl, %bb.iv, %bb.iw, %bb.ix, %bb.iy, %bb.io, %bb.ip, %bb.iq, %bb.ib, %bb.ic, %bb.id, %bb.ie, %bb.if, %bb.hp, %bb.hq, %bb.hr, %bb.hs, %bb.hj, %bb.hk, %bb.go, %bb.gp, %bb.gq, %bb.gr, %bb.gs, %bb.gt, %bb.gu, %bb.gc, %bb.gd, %bb.ge, %bb.gf, %bb.gg, %bb.gh, %bb.gi, %bb.gj, %bb.fr, %bb.fs, %bb.ft, %bb.fu, %bb.fv, %bb.fw, %bb.fj, %bb.fk, %bb.fl, %bb.fm, %bb.ew, %bb.ex, %bb.ey, %bb.ez, %bb.fa, %bb.en, %bb.eo, %bb.ep, %bb.eq, %bb.er, %bb.ef, %bb.eg, %bb.eh, %bb.ei, %bb.dy, %bb.dz, %bb.ea, %bb.dk, %bb.dl, %bb.dm, %bb.dn, %bb.do, %bb.dp, %bb.bp, %bb.bq, %bb.bi, %._crit_edge1773, %bb.r, %bb.q, %bb.aa, %._crit_edge1769, %._crit_edge1761, %bb.ah, %bb.ag, %bb.ad, %bb.ae, %._crit_edge1765, %bb.al, %bb.ak, %._crit_edge1753, %bb.ar, %bb.aq, %bb.an, %bb.ao, %._crit_edge1757, %._crit_edge1749, %bb.au, %bb.at, %._crit_edge1745, %bb.bd, %bb.bc, %bb.bg, %._crit_edge, %bb.bj, %bb.avx, %bb.awu, %bb.awy, %bb.avf, %bb.avg, %bb.akz, %bb.aqk, %bb.ast, %bb.auk, %bb.auz, %bb.ake, %bb.aki, %bb.agk, %bb.ago, %bb.ahi, %bb.ady, %bb.acd, %bb.ach, %bb.acl, %bb.acp, %bb.act, %bb.acx, %bb.adb, %bb.adf, %bb.adj, %bb.adn, %bb.adr, %bb.aax, %bb.abb, %bb.abf, %bb.zw, %bb.aaa, %bb.yy, %bb.zc, %bb.zq, %bb.vz, %bb.wd, %bb.wq, %bb.xe, %bb.xi, %bb.xm, %bb.yo, %bb.pt, %bb.px, %bb.ok, %bb.or, %bb.ph, %H5_trace_args_close_degree.exit, %bb.mo, %bb.mp, %bb.jx, %bb.kb, %bb.kf, %bb.kq, %bb.ku, %bb.dt, %bb.fe, %bb.fx, %bb.hw, %bb.ij, %bb.cv, %bb.cz, %bb.bs, %bb.bw, %bb.ca, %bb.axb, %bb.axa, %bb.avk, %bb.aas, %bb.yt, %bb.de, %bb.cf
  %14 = add nuw nsw i32 %.014361777, 1
  %i.cze = tail call ptr @__ctype_b_loc() #12
  %i.czf = load ptr, ptr %i.cze, align 8, !tbaa !75
  %i.czg = load i8, ptr %.3, align 1, !tbaa !29
  %i.czh = sext i8 %i.czg to i64
  %i.czi = getelementptr inbounds [2 x i8], ptr %i.czf, i64 %i.czh
  %i.czj = load i16, ptr %i.czi, align 2, !tbaa !77
  %i.czk = and i16 %i.czj, 256
  %.not1642 = icmp eq i16 %i.czk, 0
  %i.czl = select i1 %.not1642, i64 1, i64 2
  %i.czm = getelementptr inbounds nuw i8, ptr %.3, i64 %i.czl ; 2 uses
  %i.czn = load i8, ptr %i.czm, align 1, !tbaa !29 ; 2 uses
  %.not = icmp eq i8 %i.czn, 0
  br i1 %.not, label %.loopexit1659, label %.preheader, !llvm.loop !26

.loopexit1659:                                    ; preds = %H5_trace_args_close_degree.exit1654, %bb.zs, %.preheader1658, %bb.cb, %bb.da, %bb.jm, %bb.ll, %bb.of, %bb.pi, %bb.py, %bb.yp, %bb.zr, %bb.abr, %bb.ads, %bb.adu, %bb.adz, %bb.aem, %bb.afx, %bb.ajz, %bb.akj, %bb.ava, %bb.awz, %bb.axe, %bb.axd
  %.01434 = phi i32 [ -1, %bb.da ], [ -1, %bb.axd ], [ -1, %bb.axe ], [ -1, %bb.cb ], [ -1, %bb.awz ], [ -1, %bb.ava ], [ -1, %bb.akj ], [ -1, %bb.ajz ], [ -1, %bb.afx ], [ -1, %bb.aem ], [ -1, %bb.adz ], [ -1, %bb.adu ], [ -1, %bb.ads ], [ -1, %bb.abr ], [ -1, %bb.zr ], [ -1, %bb.yp ], [ -1, %bb.py ], [ -1, %bb.pi ], [ -1, %bb.of ], [ -1, %bb.ll ], [ -1, %bb.jm ], [ 0, %.preheader1658 ], [ 0, %H5_trace_args_close_degree.exit1654 ], [ -1, %bb.zs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.01434
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @H5RS_asprintf_cat(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

declare i32 @H5RS_acat(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @H5_trace_args_cset(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  switch i32 %1, label %bb.f [
    i32 -1, label %bb.b
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.e
    i32 4, label %bb.e
    i32 5, label %bb.e
    i32 6, label %bb.e
    i32 7, label %bb.e
    i32 8, label %bb.e
    i32 9, label %bb.e
    i32 10, label %bb.e
    i32 11, label %bb.e
    i32 12, label %bb.e
    i32 13, label %bb.e
    i32 14, label %bb.e
    i32 15, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.545) #10 ; 0 uses
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.b = tail call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.546) #10 ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.c = tail call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.547) #10 ; 0 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.d = zext nneg i32 %1 to i64
  %i.e = tail call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.548, i64 noundef %i.d) #10 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.f = sext i32 %1 to i64
  %i.g = tail call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.32, i64 noundef %i.f) #10 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

declare ptr @H5I_object(i64 noundef) local_unnamed_addr #4

declare i32 @H5S_get_simple_extent_type(ptr noundef) local_unnamed_addr #4

declare i32 @H5S_get_simple_extent_ndims(ptr noundef) local_unnamed_addr #4

declare noalias ptr @H5P_get_class_name(ptr noundef) local_unnamed_addr #4

declare ptr @H5MM_xfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define double @H5_trace(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, ...) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %4 = alloca %struct.H5_timer_t, align 8         ; 8 uses
  %5 = alloca %struct.H5_timevals_t, align 8      ; 10 uses
  %6 = alloca %struct.H5_timevals_t, align 8      ; 8 uses
  %i.a = alloca [320 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.b = load ptr, ptr @H5_debug_g, align 8, !tbaa !83 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr getelementptr inbounds nuw (i8, ptr @H5_debug_g, i64 9), align 1, !tbaa !84, !range !14, !noundef !15
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = call i32 @H5_timer_init(ptr noundef nonnull %4) #10 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = load i8, ptr getelementptr inbounds nuw (i8, ptr @H5_debug_g, i64 8), align 8, !tbaa !85, !range !14, !noundef !15
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %.not37 = icmp eq ptr %0, null
  %i.h = load i32, ptr @H5_trace.current_depth, align 4, !tbaa !10 ; 4 uses
  br i1 %.not37, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = icmp sgt i32 %i.h, 1
  br i1 %i.i, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.j = add nsw i32 %i.h, -1
  store i32 %i.j, ptr @H5_trace.current_depth, align 4, !tbaa !10
  br label %bb.ad

bb.h:                                             ; preds = %bb.e
  %i.k = icmp sgt i32 %i.h, 0
  br i1 %i.k, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.l = add nuw nsw i32 %i.h, 1
  store i32 %i.l, ptr @H5_trace.current_depth, align 4, !tbaa !10
  br label %bb.ad

bb.j:                                             ; preds = %bb.f, %bb.h, %bb.d
  %.b = load i1, ptr @H5_trace.is_first_invocation, align 1
  %not..b = xor i1 %.b, true
  %i.m = load i8, ptr getelementptr inbounds nuw (i8, ptr @H5_debug_g, i64 9), align 1, !range !14 ; 2 uses
  %i.n = trunc nuw i8 %i.m to i1
  %or.cond = select i1 %not..b, i1 %i.n, i1 false
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i1 true, ptr @H5_trace.is_first_invocation, align 1
  %i.o = call i32 @H5_timer_init(ptr noundef nonnull @H5_trace.running_timer) #10 ; 0 uses
  %i.p = call i32 @H5_timer_start(ptr noundef nonnull @H5_trace.running_timer) #10 ; 0 uses
  %.pre = load i8, ptr getelementptr inbounds nuw (i8, ptr @H5_debug_g, i64 9), align 1, !tbaa !84, !range !14
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.q = phi i8 [ %.pre, %bb.k ], [ %i.m, %bb.j ]
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.s = call i32 @H5_timer_start(ptr noundef nonnull %4) #10 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.t = call ptr @H5RS_create(ptr noundef null) #10 ; 13 uses
  %i.u = icmp ne ptr %0, null                     ; 3 uses
  %i.v = load i32, ptr @H5_trace.current_depth, align 4, !tbaa !10 ; 3 uses
  br i1 %i.u, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.w = add nsw i32 %i.v, -1                     ; 2 uses
  store i32 %i.w, ptr @H5_trace.current_depth, align 4, !tbaa !10
  %i.x = load i32, ptr @H5_trace.last_call_depth, align 4, !tbaa !10
  %.not38 = icmp sgt i32 %i.v, %i.x
  br i1 %.not38, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.y = load i8, ptr getelementptr inbounds nuw (i8, ptr @H5_debug_g, i64 9), align 1, !tbaa !84, !range !14, !noundef !15
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
end_hunk_4
