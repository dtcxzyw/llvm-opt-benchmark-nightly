Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/osc_rdma_component?download=true
inline.NumInlined: 106
inline.NumDeleted: 43
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ompi_osc_rdma_fence_atomic
declare i32 @ompi_osc_rdma_fence_atomic(i32 noundef, ptr noundef) #1

declare i32 @ompi_osc_rdma_start_atomic(ptr noundef, i32 noundef, ptr noundef) #1

declare i32 @ompi_osc_rdma_complete_atomic(ptr noundef) #1

declare i32 @ompi_osc_rdma_post_atomic(ptr noundef, i32 noundef, ptr noundef) #1

declare i32 @ompi_osc_rdma_wait_atomic(ptr noundef) #1

declare i32 @ompi_osc_rdma_test_atomic(ptr noundef, ptr noundef) #1

declare i32 @ompi_osc_rdma_lock_atomic(i32 noundef, i32 noundef, i32 noundef, ptr noundef) #1

declare i32 @ompi_osc_rdma_unlock_atomic(i32 noundef, ptr noundef) #1

declare i32 @ompi_osc_rdma_lock_all_atomic(i32 noundef, ptr noundef) #1

declare i32 @ompi_osc_rdma_unlock_all_atomic(ptr noundef) #1

declare i32 @ompi_osc_rdma_sync(ptr noundef) #1

declare i32 @ompi_osc_rdma_flush(i32 noundef, ptr noundef) #1

declare i32 @ompi_osc_rdma_flush_all(ptr noundef) #1

declare i32 @ompi_osc_rdma_flush_local(i32 noundef, ptr noundef) #1

declare i32 @ompi_osc_rdma_flush_local_all(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @opal_asprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @mca_base_component_var_register(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

declare i32 @mca_base_var_enum_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @access(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #4

declare i32 @opal_getpagesize() local_unnamed_addr #1

declare i32 @mca_base_component_pvar_register(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @ompi_osc_rdma_pvar_read(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef readonly captures(none) %2) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !265
  %i.e = ptrtoint ptr %i.d to i64
  %sext = shl i64 %i.e, 32
  %i.f = ashr exact i64 %sext, 32
  %i.g = getelementptr inbounds i8, ptr %i.b, i64 %i.f
  %i.h = load i64, ptr %i.g, align 1
  store i64 %i.h, ptr %1, align 1
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @opal_class_initialize(ptr noundef) local_unnamed_addr #1

declare i32 @opal_hash_table_init(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @opal_free_list_init(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i1 @opal_output_check_verbosity(i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @opal_output(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @mca_bml_base_init(i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #6

declare void @ompi_osc_base_set_memory_alignment(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ompi_comm_dup(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @ompi_comm_print_cid(ptr noundef) local_unnamed_addr #1

declare i32 @opal_infosubscribe_subscribe(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal nonnull ptr @ompi_osc_rdma_set_no_lock_info(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109  ; 7 uses
  %i.c = tail call zeroext i1 @opal_str_to_bool(ptr noundef %2) #16
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 310 ; 2 uses
  %i.e = load i8, ptr %i.d, align 2, !tbaa !105, !range !42, !noundef !43
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  br i1 %i.c, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 848 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !46
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !49   ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !50   ; 2 uses
  %.not6.i = icmp eq ptr %i.k, null
  br i1 %.not6.i, label %opal_obj_run_destructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.l = phi ptr [ %i.n, %.lr.ph.i ], [ %i.k, %bb.c ]
  %.07.i = phi ptr [ %i.m, %.lr.ph.i ], [ %i.j, %bb.c ]
  tail call void %i.l(ptr noundef nonnull %i.g) #16, !inline_history !0
  %i.m = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !50   ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %opal_obj_run_destructors.exit, label %.lr.ph.i, !llvm.loop !1

opal_obj_run_destructors.exit:                    ; preds = %.lr.ph.i, %bb.c
  %i.o = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !45
  %i.p = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_hash_table_t_class, i64 32), align 8, !tbaa !55
  %.not = icmp eq i32 %i.o, %i.p
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %opal_obj_run_destructors.exit
  tail call void @opal_class_initialize(ptr noundef nonnull @opal_hash_table_t_class) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %opal_obj_run_destructors.exit
  store ptr @opal_hash_table_t_class, ptr %i.g, align 16, !tbaa !46
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 856
  store volatile i32 1, ptr %i.q, align 8, !tbaa !56
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_hash_table_t_class, i64 40), align 8, !tbaa !57 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !50   ; 2 uses
  %.not6.i24 = icmp eq ptr %i.s, null
  br i1 %.not6.i24, label %.sink.split, label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %bb.e, %.lr.ph.i25
  %i.t = phi ptr [ %i.v, %.lr.ph.i25 ], [ %i.s, %bb.e ]
  %.07.i26 = phi ptr [ %i.u, %.lr.ph.i25 ], [ %i.r, %bb.e ]
  tail call void %i.t(ptr noundef nonnull %i.g) #16, !inline_history !2
  %i.u = getelementptr inbounds nuw i8, ptr %.07.i26, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !50   ; 2 uses
  %.not.i27 = icmp eq ptr %i.v, null
  br i1 %.not.i27, label %.sink.split, label %.lr.ph.i25, !llvm.loop !3

.critedge:                                        ; preds = %bb.a
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.critedge
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !110
  %i.y = getelementptr i8, ptr %i.x, i64 264
  %.val = load ptr, ptr %i.y, align 8, !tbaa !86
  %i.z = getelementptr i8, ptr %.val, i64 16
  %.val.val = load i32, ptr %i.z, align 8, !tbaa !89
  %i.aa = tail call i32 @llvm.smin.i32(i32 %.val.val, i32 256)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 848
  %i.ac = sext i32 %i.aa to i64
  %i.ad = tail call i32 @opal_hash_table_init(ptr noundef nonnull %i.ab, i64 noundef %i.ac) #16 ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %.lr.ph.i25, %bb.e, %bb.f
  %.sink = phi i8 [ 0, %bb.f ], [ 1, %bb.e ], [ 1, %.lr.ph.i25 ]
  store i8 %.sink, ptr %i.d, align 2, !tbaa !105
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.b, %.critedge
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !110 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 344
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !121 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 96
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !139
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 104
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !140
  %i.am = tail call i32 %i.aj(ptr noundef %i.af, ptr noundef %i.al) #16 ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 310
  %i.ao = load i8, ptr %i.an, align 2, !tbaa !105, !range !42, !noundef !43
  %i.ap = trunc nuw i8 %i.ao to i1
  %i.aq = select i1 %i.ap, ptr @.str.1, ptr @.str.2
  ret ptr %i.aq
}

declare i32 @opal_hash_table_set_value_uint32(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ompi_win_set_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ompi_osc_rdma_share_data(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !110  ; 4 uses
  %i.d = getelementptr i8, ptr %i.c, i64 220
  %.val82 = load i32, ptr %i.d, align 4, !tbaa !129
  %i.e = getelementptr i8, ptr %i.c, i64 264
  %.val77 = load ptr, ptr %i.e, align 8, !tbaa !86
  %i.f = getelementptr i8, ptr %.val77, i64 16
  %.val77.val = load i32, ptr %i.f, align 8, !tbaa !89 ; 3 uses
  %i.g = sext i32 %.val77.val to i64              ; 2 uses
  %i.h = shl nsw i64 %i.g, 3
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #19 ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.l = load i32, ptr %i.k, align 32, !tbaa !132
  %i.m = sext i32 %.val82 to i64                  ; 2 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.m ; 2 uses
  store i32 %i.l, ptr %i.n, align 4, !tbaa !268
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !128
  %i.q = getelementptr i8, ptr %i.p, i64 220
  %.val81 = load i32, ptr %i.q, align 4, !tbaa !129
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i32 %.val81, ptr %i.r, align 4, !tbaa !269
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 344
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !121  ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !137
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !138
  %i.x = tail call i32 %i.u(ptr noundef nonnull inttoptr (i64 1 to ptr), i32 noundef 1, ptr noundef nonnull @ompi_mpi_2int, ptr noundef nonnull %i.i, i32 noundef 1, ptr noundef nonnull @ompi_mpi_2int, ptr noundef nonnull %i.c, ptr noundef %i.w) #16 ; 2 uses
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.y = load ptr, ptr %i.o, align 8, !tbaa !128
  %i.z = getelementptr i8, ptr %i.y, i64 220
  %.val80 = load i32, ptr %i.z, align 4, !tbaa !129
  %i.aa = icmp eq i32 %.val80, 0
  br i1 %i.aa, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !134
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 16, !tbaa !130 ; 3 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 220
  %.val79 = load i32, ptr %i.ag, align 4, !tbaa !129
  %i.ah = sext i32 %.val79 to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !119
  %i.ak = mul i64 %i.aj, %i.ah
  %i.al = add i64 %i.ak, %i.ad
  %i.am = inttoptr i64 %i.al to ptr               ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 64, !tbaa !133
  %i.ap = ptrtoint ptr %i.ao to i64
  store i64 %i.ap, ptr %i.am, align 8, !tbaa !114
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 %i.m, ptr %i.aq, align 8, !tbaa !114
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !112, !range !42, !noundef !43
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !136 ; 2 uses
  %.not71 = icmp eq ptr %i.av, null
  br i1 %.not71, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !115
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 80
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !120
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aw, ptr nonnull align 1 %i.av, i64 %i.ba, i1 false)
  %.pre = load ptr, ptr %i.ae, align 16, !tbaa !130
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.bb = phi ptr [ %.pre, %bb.f ], [ %i.af, %bb.e ], [ %i.af, %bb.d ] ; 4 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 264
  %.val76 = load ptr, ptr %i.bc, align 8, !tbaa !86
  %i.bd = getelementptr i8, ptr %.val76, i64 16
  %.val76.val = load i32, ptr %i.bd, align 8, !tbaa !89
  %i.be = icmp sgt i32 %.val76.val, 1
  br i1 %i.be, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 344
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !121 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !137
  %i.bi = load i64, ptr %i.ai, align 8, !tbaa !119
  %i.bj = trunc i64 %i.bi to i32                  ; 2 uses
  %i.bk = load ptr, ptr %i.ab, align 8, !tbaa !134
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !138
  %i.bn = tail call i32 %i.bh(ptr noundef nonnull inttoptr (i64 1 to ptr), i32 noundef %i.bj, ptr noundef nonnull @ompi_mpi_byte, ptr noundef %i.bk, i32 noundef %i.bj, ptr noundef nonnull @ompi_mpi_byte, ptr noundef nonnull %i.bb, ptr noundef %i.bm) #16 ; 4 uses
  %.not72 = icmp eq i32 %i.bn, 0
  br i1 %.not72, label %._crit_edge, label %bb.i

._crit_edge:                                      ; preds = %bb.h
  %.pre88 = load ptr, ptr %i.ae, align 16, !tbaa !130
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bo = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_osc_base_framework, i64 76), align 4, !tbaa !60
  %i.bp = tail call zeroext i1 @opal_output_check_verbosity(i32 noundef 0, i32 noundef %i.bo) #16
  br i1 %i.bp, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bq = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_osc_base_framework, i64 76), align 4, !tbaa !60
  tail call void (i32, ptr, ...) @opal_output(i32 noundef %i.bq, ptr noundef nonnull @.str.63, i32 noundef %i.bn) #16
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge, %bb.g
  %i.br = phi ptr [ %.pre88, %._crit_edge ], [ %i.bb, %bb.g ]
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 420 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !131 ; 4 uses
  %i.bu = load ptr, ptr %i.b, align 8, !tbaa !110
  %i.bv = getelementptr i8, ptr %i.bu, i64 264
  %.val83 = load ptr, ptr %i.bv, align 8, !tbaa !86
  %i.bw = getelementptr i8, ptr %.val83, i64 16   ; 2 uses
  %.val.val84 = load i32, ptr %i.bw, align 8, !tbaa !89
  %i.bx = add i32 %.val.val84, -1
  %i.by = add i32 %i.bx, %i.bt
  %i.bz = sdiv i32 %i.by, %i.bt
  %i.ca = icmp sgt i32 %i.bz, 0
  br i1 %i.ca, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.k
  %i.cb = add i32 %.val77.val, -1
  %i.cc = add i32 %i.cb, %i.bt
  %i.cd = sdiv i32 %i.cc, %i.bt
  %i.ce = getelementptr i8, ptr %i.br, i64 220
  %.val78 = load i32, ptr %i.ce, align 4, !tbaa !129
  %i.cf = mul nsw i32 %i.cd, %.val78              ; 2 uses
  %i.cg = sext i32 %i.cf to i64                   ; 2 uses
  %.not7393 = icmp slt i32 %i.cf, %.val77.val
  br i1 %.not7393, label %.lr.ph95.preheader, label %.critedge

.lr.ph95.preheader:                               ; preds = %.lr.ph.preheader
  %1 = load ptr, ptr %i.an, align 64, !tbaa !133
  %invariant.gep = getelementptr [8 x i8], ptr %i.i, i64 %i.cg
  %invariant.op = sub nsw i64 %i.g, %i.cg
  br label %.lr.ph95

.lr.ph:                                           ; preds = %.lr.ph95
  %.not73 = icmp slt i64 %indvars.iv.next, %invariant.op
  br i1 %.not73, label %.lr.ph95, label %.critedge, !llvm.loop !266

.lr.ph95:                                         ; preds = %.lr.ph95.preheader, %.lr.ph
  %indvars.iv94 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph95.preheader ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv94
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv94
  %i.ci = load i64, ptr %gep, align 4, !tbaa !45
  store i64 %i.ci, ptr %i.ch, align 4, !tbaa !45
  %indvars.iv.next = add nuw nsw i64 %indvars.iv94, 1 ; 3 uses
  %.val.val = load i32, ptr %i.bw, align 8, !tbaa !89
  %i.cj = load i32, ptr %i.bs, align 4, !tbaa !131 ; 2 uses
  %i.ck = add i32 %.val.val, -1
  %i.cl = add i32 %i.ck, %i.cj
  %i.cm = sdiv i32 %i.cl, %i.cj
  %i.cn = sext i32 %i.cm to i64
  %i.co = icmp slt i64 %indvars.iv.next, %i.cn
  br i1 %i.co, label %.lr.ph, label %..critedge.loopexit_crit_edge, !llvm.loop !266

..critedge.loopexit_crit_edge:                    ; preds = %.lr.ph95
  br label %.critedge, !llvm.loop !266

.critedge:                                        ; preds = %.lr.ph, %.lr.ph.preheader, %..critedge.loopexit_crit_edge, %bb.k, %bb.c
  tail call void @free(ptr noundef nonnull %i.i) #16
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.i, %bb.j, %bb.b, %.critedge
  %.2 = phi i32 [ 0, %.critedge ], [ %i.x, %bb.b ], [ %i.bn, %bb.j ], [ %i.bn, %bb.i ], [ -2, %bb.a ]
  %i.cp = load ptr, ptr %i.b, align 8, !tbaa !110 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i32 %.2, ptr %i.a, align 4, !tbaa !45
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 344
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !121 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !125
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 40
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !126
  %i.cw = call i32 %i.ct(ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull %i.a, i32 noundef 1, ptr noundef nonnull @ompi_mpi_int, ptr noundef nonnull @ompi_mpi_op_min, ptr noundef %i.cp, ptr noundef %i.cv) #16, !inline_history !4 ; 2 uses
  %.pre.i = load i32, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 16, !tbaa !130
  %.not74 = icmp eq ptr %i.cy, @ompi_mpi_comm_null
  br i1 %.not74, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cz = call i32 @ompi_comm_free(ptr noundef nonnull %i.cx) #16 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !128
  %.not75 = icmp eq ptr %i.db, @ompi_mpi_comm_null
  br i1 %.not75, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dc = call i32 @ompi_comm_free(ptr noundef nonnull %i.da) #16 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.not.i = icmp eq i32 %i.cw, 0
  %i.dd = select i1 %.not.i, i32 %.pre.i, i32 %i.cw, !prof !127
  ret i32 %i.dd
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @ompi_osc_rdma_module_peer(ptr noundef nonnull %0) unnamed_addr #7 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !111  ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr null, ptr %i.a, align 8, !tbaa !135
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.f = call i32 @opal_hash_table_get_value_uint32(ptr noundef nonnull %i.e, i32 noundef 0, ptr noundef nonnull %i.a) #16 ; 0 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %ompi_osc_module_get_peer.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !135
  br label %ompi_osc_module_get_peer.exit

ompi_osc_module_get_peer.exit:                    ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.g, %bb.b ], [ %i.h, %bb.c ] ; 2 uses
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %ompi_osc_module_get_peer.exit
  %i.i = call ptr @ompi_osc_rdma_peer_lookup(ptr noundef nonnull %0, i32 noundef 0) #16
  br label %bb.e

bb.e:                                             ; preds = %ompi_osc_module_get_peer.exit, %bb.d
  %.0 = phi ptr [ %i.i, %bb.d ], [ %.0.i, %ompi_osc_module_get_peer.exit ]
  ret ptr %.0
}

declare i32 @opal_info_get_bool(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @mca_base_var_find(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @mca_base_var_get_value(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare noalias ptr @opal_argv_split(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

declare void @opal_argv_free(ptr noundef) local_unnamed_addr #1

declare ptr @ompi_proc_get_allocated(ptr noundef) local_unnamed_addr #1

declare ptr @ompi_proc_for_name(i64) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

declare i32 @opal_btl_base_am_rdma_create(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @btl_latency_sort_fn(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #11 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !117
  %i.b = load ptr, ptr %1, align 8, !tbaa !117
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !270
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.f = load i32, ptr %i.e, align 4, !tbaa !113
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !270
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 60
  %i.j = load i32, ptr %i.i, align 4, !tbaa !113
  %.0 = tail call i32 @llvm.ucmp.i32.i32(i32 %i.f, i32 %i.j)
  ret i32 %.0
}

declare zeroext i1 @opal_str_to_bool(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

declare i32 @ompi_comm_split_type(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ompi_comm_split(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #13

declare i32 @opal_shmem_segment_create(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @opal_shmem_segment_attach(ptr noundef) local_unnamed_addr #1

declare i32 @opal_shmem_unlink(ptr noundef) local_unnamed_addr #1

declare i32 @ompi_osc_rdma_new_peer(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ompi_osc_module_add_peer(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #13

declare i32 @ompi_comm_free(ptr noundef) local_unnamed_addr #1

declare ptr @ompi_osc_rdma_peer_lookup(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @opal_hash_table_get_value_uint32(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
end_hunk_0
