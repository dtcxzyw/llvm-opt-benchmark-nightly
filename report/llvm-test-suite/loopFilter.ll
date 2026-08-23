Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/loopFilter?download=true
inline.NumInlined: 32
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
@MBPairIsField = common dso_local local_unnamed_addr global i32 0, align 4
@wp_weight = common dso_local local_unnamed_addr global ptr null, align 8
@wp_offset = common dso_local local_unnamed_addr global ptr null, align 8
@wbp_weight = common dso_local local_unnamed_addr global ptr null, align 8
@luma_log_weight_denom = common dso_local local_unnamed_addr global i32 0, align 4
@chroma_log_weight_denom = common dso_local local_unnamed_addr global i32 0, align 4
@wp_luma_round = common dso_local local_unnamed_addr global i32 0, align 4
@wp_chroma_round = common dso_local local_unnamed_addr global i32 0, align 4
@imgY_org_top = common dso_local local_unnamed_addr global ptr null, align 8
@imgY_org_bot = common dso_local local_unnamed_addr global ptr null, align 8
@imgUV_org_top = common dso_local local_unnamed_addr global ptr null, align 8
@imgUV_org_bot = common dso_local local_unnamed_addr global ptr null, align 8
@imgY_org_frm = common dso_local local_unnamed_addr global ptr null, align 8
@imgUV_org_frm = common dso_local local_unnamed_addr global ptr null, align 8
@imgY_com = common dso_local local_unnamed_addr global ptr null, align 8
@imgUV_com = common dso_local local_unnamed_addr global ptr null, align 8
@direct_ref_idx = common dso_local local_unnamed_addr global ptr null, align 8
@direct_pdir = common dso_local local_unnamed_addr global ptr null, align 8
@pixel_map = common dso_local local_unnamed_addr global ptr null, align 8
@refresh_map = common dso_local local_unnamed_addr global ptr null, align 8
@intras = common dso_local local_unnamed_addr global i32 0, align 4
@frame_ctr = common dso_local local_unnamed_addr global [5 x i32] zeroinitializer, align 16
@frame_no = common dso_local local_unnamed_addr global i32 0, align 4
@nextP_tr_fld = common dso_local local_unnamed_addr global i32 0, align 4
@nextP_tr_frm = common dso_local local_unnamed_addr global i32 0, align 4
@tot_time = common dso_local local_unnamed_addr global i64 0, align 8
@errortext = common dso_local local_unnamed_addr global [300 x i8] zeroinitializer, align 16
@b8_ipredmode8x8 = common dso_local local_unnamed_addr global [4 x [4 x i8]] zeroinitializer, align 16
@b8_intra_pred_modes8x8 = common dso_local local_unnamed_addr global [16 x i8] zeroinitializer, align 16
@gop_structure = common dso_local local_unnamed_addr global ptr null, align 8
@rdopt = common dso_local local_unnamed_addr global ptr null, align 8
@rddata_top_frame_mb = common dso_local local_unnamed_addr global %struct.RD_DATA zeroinitializer, align 8
@rddata_bot_frame_mb = common dso_local local_unnamed_addr global %struct.RD_DATA zeroinitializer, align 8
@rddata_top_field_mb = common dso_local local_unnamed_addr global %struct.RD_DATA zeroinitializer, align 8
@rddata_bot_field_mb = common dso_local local_unnamed_addr global %struct.RD_DATA zeroinitializer, align 8
@p_stat = common dso_local local_unnamed_addr global ptr null, align 8
@p_log = common dso_local local_unnamed_addr global ptr null, align 8
@p_trace = common dso_local local_unnamed_addr global ptr null, align 8
@p_in = common dso_local local_unnamed_addr global i32 0, align 4
@p_dec = common dso_local local_unnamed_addr global i32 0, align 4
@mb16x16_cost_frame = common dso_local local_unnamed_addr global ptr null, align 8
@Bytes_After_Header = common dso_local local_unnamed_addr global i32 0, align 4
@encode_one_macroblock = common dso_local local_unnamed_addr global ptr null, align 8
@lrec = common dso_local local_unnamed_addr global ptr null, align 8
@lrec_uv = common dso_local local_unnamed_addr global ptr null, align 8
@si_frame_indicator = common dso_local local_unnamed_addr global i32 0, align 4
@sp2_frame_indicator = common dso_local local_unnamed_addr global i32 0, align 4
@number_sp2_frames = common dso_local local_unnamed_addr global i32 0, align 4
@giRDOpt_B8OnlyFlag = common dso_local local_unnamed_addr global i32 0, align 4
@imgY_tmp = common dso_local local_unnamed_addr global ptr null, align 8
@imgUV_tmp = common dso_local local_unnamed_addr global [2 x ptr] zeroinitializer, align 16
@frameNuminGOP = common dso_local local_unnamed_addr global i32 0, align 4
@redundant_coding = common dso_local local_unnamed_addr global i32 0, align 4
@key_frame = common dso_local local_unnamed_addr global i32 0, align 4
@redundant_ref_idx = common dso_local local_unnamed_addr global i32 0, align 4
@img_pad_size_uv_x = common dso_local local_unnamed_addr global i32 0, align 4
@img_pad_size_uv_y = common dso_local local_unnamed_addr global i32 0, align 4
@chroma_mask_mv_y = common dso_local local_unnamed_addr global i8 0, align 1
@chroma_mask_mv_x = common dso_local local_unnamed_addr global i8 0, align 1
@chroma_shift_y = common dso_local local_unnamed_addr global i32 0, align 4
@chroma_shift_x = common dso_local local_unnamed_addr global i32 0, align 4
@shift_cr_x = common dso_local local_unnamed_addr global i32 0, align 4
@shift_cr_y = common dso_local local_unnamed_addr global i32 0, align 4
@img_padded_size_x = common dso_local local_unnamed_addr global i32 0, align 4
@img_cr_padded_size_x = common dso_local local_unnamed_addr global i32 0, align 4
@start_me_refinement_hp = common dso_local local_unnamed_addr global i32 0, align 4
@start_me_refinement_qp = common dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nounwind uwtable
define dso_local void @DeblockFrame(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 15348 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8    ; 4 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 14224
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28   ; 3 uses
  %wide.trip.count = zext i32 %i.b to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.e = icmp eq i32 %i.b, 1
  br i1 %i.e, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.f ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.f ]
  %i.f = getelementptr inbounds nuw [536 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.h = load i32, ptr %i.g, align 8, !tbaa !29
  %i.i = icmp eq i32 %i.h, 14
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 0, ptr %i.j, align 8, !tbaa !32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.k = getelementptr inbounds nuw [536 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 608
  %i.m = load i32, ptr %i.l, align 8, !tbaa !29
  %i.n = icmp eq i32 %i.m, 14
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 544
  store i32 0, ptr %i.o, align 8, !tbaa !32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph15.preheader.unr-lcssa, label %bb.b, !llvm.loop !33

.lr.ph15.preheader.unr-lcssa:                     ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph15.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph15.preheader.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.lr.ph15.preheader.unr-lcssa ]
  %lcmp.mod18 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod18)
  %i.p = getelementptr inbounds nuw [536 x i8], ptr %i.d, i64 %indvars.iv.epil.init ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.r = load i32, ptr %i.q, align 8, !tbaa !29
  %i.s = icmp eq i32 %i.r, 14
  br i1 %i.s, label %bb.g, label %.lr.ph15.preheader

bb.g:                                             ; preds = %.epil.preheader
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i32 0, ptr %i.t, align 8, !tbaa !32
  br label %.lr.ph15.preheader

.lr.ph15.preheader:                               ; preds = %.epil.preheader, %bb.g, %.lr.ph15.preheader.unr-lcssa
  br label %.lr.ph15

.lr.ph15:                                         ; preds = %.lr.ph15.preheader, %.lr.ph15
  %.114 = phi i32 [ %i.u, %.lr.ph15 ], [ 0, %.lr.ph15.preheader ] ; 2 uses
  tail call void @DeblockMb(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %.114)
  %i.u = add nuw i32 %.114, 1                     ; 2 uses
  %i.v = load i32, ptr %i.a, align 4, !tbaa !8
  %i.w = icmp ult i32 %i.u, %i.v
  br i1 %i.w, label %.lr.ph15, label %._crit_edge, !llvm.loop !35

._crit_edge:                                      ; preds = %.lr.ph15, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @DeblockMb(ptr nofree noundef captures(none) initializes((15420, 15424)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 12 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca [4 x i32], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, ptr noundef nonnull align 16 dereferenceable(16) @__const.DeblockMb.filterNon8x8LumaEdgesFlag, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 15420 ; 4 uses
  store i32 1, ptr %i.e, align 4, !tbaa !36
  call void @get_mb_pos(i32 noundef %3, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef 0) #6
  %i.f = load i32, ptr %i.b, align 4, !tbaa !4
  %i.g = icmp ne i32 %i.f, 0
  %i.h = zext i1 %i.g to i32
  %i.i = load i32, ptr %i.c, align 4, !tbaa !4    ; 2 uses
  %i.j = icmp ne i32 %i.i, 0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 14224
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !28
  %i.m = sext i32 %3 to i64
  %i.n = getelementptr inbounds [536 x i8], ptr %i.l, i64 %i.m ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 472
  %i.p = load i32, ptr %i.o, align 8, !tbaa !37
  %.not = icmp eq i32 %i.p, 0
  %i.q = zext i1 %.not to i32                     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 %i.q, ptr %i.r, align 4, !tbaa !4
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %i.q, ptr %i.s, align 4, !tbaa !4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 15268
  %i.u = load i32, ptr %i.t, align 4, !tbaa !38   ; 3 uses
  %i.v = icmp ne i32 %i.u, 0
  %i.w = icmp eq i32 %i.i, 16
  %or.cond = select i1 %i.v, i1 %i.w, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 424
  %i.y = load i32, ptr %i.x, align 8, !tbaa !39
  %.not132 = icmp eq i32 %i.y, 0
  br i1 %.not132, label %bb.c, label %4

4:                                                ; preds = %bb.b
  br label %bb.c

bb.c:                                             ; preds = %4, %bb.b, %bb.a
  %.0124.shrunk = phi i1 [ false, %4 ], [ true, %bb.b ], [ %i.j, %bb.a ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !40
  %.not133 = icmp eq i32 %i.aa, 0
  br i1 %.not133, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %.not134 = icmp eq i32 %i.u, 0
  br i1 %.not134, label %.thread143, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 424
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !39
  %.fr = freeze i32 %i.ac
  %.not145 = icmp eq i32 %.fr, 0
  br i1 %.not145, label %.thread143, label %.thread

.thread:                                          ; preds = %bb.c, %bb.e
  br label %.thread143

.thread143:                                       ; preds = %bb.d, %bb.e, %.thread
  %i.ad = phi i32 [ 2, %.thread ], [ 4, %bb.e ], [ 4, %bb.d ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 516
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !41
  switch i32 %i.af, label %bb.i [
    i32 1, label %.loopexit
    i32 2, label %bb.f
  ]

bb.f:                                             ; preds = %.thread143
  %i.ag = getelementptr inbounds nuw i8, ptr %i.n, i64 452
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !42 ; 2 uses
  %.not135 = icmp eq i32 %i.u, 0
  br i1 %.not135, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 424
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !39
  %.not136 = icmp ne i32 %i.aj, 0
  %i.ak = and i32 %3, 1
  %.not137 = icmp eq i32 %i.ak, 0
  %or.cond141 = or i1 %.not137, %.not136
  br i1 %or.cond141, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 456
  %i.am = load i32, ptr %i.al, align 8, !tbaa !43
  %i.an = icmp ne i32 %i.am, 0
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %.thread143, %bb.h
  %.0125 = phi i32 [ %i.ah, %bb.h ], [ %i.h, %.thread143 ], [ %i.ah, %bb.g ]
  %.1 = phi i1 [ %i.an, %bb.h ], [ %.0124.shrunk, %.thread143 ], [ true, %bb.g ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %3, ptr %i.ao, align 4, !tbaa !44
  call void @CheckAvailabilityOfNeighbors() #6
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 15536
  %i.aq = getelementptr inbounds nuw i8, ptr %i.n, i64 520 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.n, i64 524 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.at = icmp ne ptr %2, null                    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.n, i64 424
  %i.ax = icmp ne i32 %.0125, 0
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.x
  %i.ay = phi i1 [ false, %bb.i ], [ true, %bb.x ] ; 2 uses
  %i.az = phi i1 [ true, %bb.i ], [ false, %bb.x ] ; 2 uses
  %indvars.iv158 = phi i64 [ 0, %bb.i ], [ 1, %bb.x ] ; 2 uses
  %or.cond3 = select i1 %i.ay, i1 %.1, i1 false
  br i1 %or.cond3, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %not. = xor i1 %i.ay, true
  %i.ba = select i1 %not., i1 %i.ax, i1 false
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.bb = phi i1 [ true, %bb.j ], [ %i.ba, %bb.k ]
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr @chroma_edge, i64 %indvars.iv158
  %i.bd = trunc nuw nsw i64 %indvars.iv158 to i32 ; 4 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.w
  %indvars.iv155 = phi i64 [ 0, %bb.l ], [ %indvars.iv.next156, %bb.w ] ; 5 uses
  %i.be = icmp ne i64 %indvars.iv155, 0           ; 2 uses
  %or.cond5 = select i1 %i.be, i1 true, i1 %i.bb
  br i1 %or.cond5, label %bb.n, label %bb.w

bb.n:                                             ; preds = %bb.m
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv155
  %i.bg = load i32, ptr %i.ap, align 8, !tbaa !45
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds i8, ptr %i.bf, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !46  ; 3 uses
  %i.bk = sext i8 %i.bj to i32                    ; 2 uses
  %i.bl = trunc nuw nsw i64 %indvars.iv155 to i32 ; 2 uses
  call void @GetStrength(ptr noundef nonnull %i.a, ptr noundef %0, i32 noundef %3, i32 noundef %i.bd, i32 noundef %i.bl, i32 noundef %i.ad)
  %.0.in146 = load i8, ptr %i.a, align 16, !tbaa !46
  %.not152 = icmp eq i8 %.0.in146, 0
  br i1 %.not152, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.n, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %bb.n ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.0.in = load i8, ptr %i.bm, align 1, !tbaa !46
  %i.bn = icmp samesign ugt i64 %indvars.iv, 14
  %i.bo = icmp ne i8 %.0.in, 0                    ; 2 uses
  %or.cond16 = select i1 %i.bn, i1 true, i1 %i.bo
  br i1 %or.cond16, label %._crit_edge, label %.lr.ph, !llvm.loop !47

._crit_edge:                                      ; preds = %.lr.ph
  br i1 %i.bo, label %._crit_edge.thread, label %bb.r

._crit_edge.thread:                               ; preds = %bb.n, %._crit_edge
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv155
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !4
  %.not138 = icmp eq i32 %i.bq, 0
  br i1 %.not138, label %bb.p, label %bb.o

bb.o:                                             ; preds = %._crit_edge.thread
  %i.br = load i32, ptr %i.aq, align 8, !tbaa !48
  %i.bs = load i32, ptr %i.ar, align 4, !tbaa !49
  %i.bt = load i32, ptr %i.as, align 4, !tbaa !50
  call void @EdgeLoop(ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %0, i32 noundef %3, i32 noundef %i.br, i32 noundef %i.bs, i32 noundef %i.bd, i32 noundef %i.bl, i32 noundef %i.bt, i32 noundef 0, i32 noundef 0)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.thread
  %i.bu = icmp sgt i8 %i.bj, -1
  %or.cond7 = select i1 %i.at, i1 %i.bu, i1 false
  br i1 %or.cond7, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bv = load ptr, ptr %2, align 8, !tbaa !51
  %i.bw = load i32, ptr %i.aq, align 8, !tbaa !48
  %i.bx = load i32, ptr %i.ar, align 4, !tbaa !49
  %i.by = load i32, ptr %i.au, align 8, !tbaa !53
  call void @EdgeLoop(ptr noundef %i.bv, ptr noundef nonnull %i.a, ptr noundef nonnull %0, i32 noundef %3, i32 noundef %i.bw, i32 noundef %i.bx, i32 noundef %i.bd, i32 noundef %i.bk, i32 noundef %i.by, i32 noundef 1, i32 noundef 0)
  %i.bz = load ptr, ptr %i.av, align 8, !tbaa !51
  %i.ca = load i32, ptr %i.aq, align 8, !tbaa !48
  %i.cb = load i32, ptr %i.ar, align 4, !tbaa !49
  %i.cc = load i32, ptr %i.au, align 8, !tbaa !53
  call void @EdgeLoop(ptr noundef %i.bz, ptr noundef nonnull %i.a, ptr noundef nonnull %0, i32 noundef %3, i32 noundef %i.ca, i32 noundef %i.cb, i32 noundef %i.bd, i32 noundef %i.bk, i32 noundef %i.cc, i32 noundef 1, i32 noundef 1)
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %._crit_edge
  %or.cond9 = or i1 %i.az, %i.be
  br i1 %or.cond9, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cd = load i32, ptr %i.aw, align 8, !tbaa !39
  %i.ce = icmp eq i32 %i.cd, 0
  %i.cf = load i8, ptr @mixedModeEdgeFlag, align 1
  %i.cg = icmp ne i8 %i.cf, 0
  %or.cond12 = select i1 %i.ce, i1 %i.cg, i1 false
  br i1 %or.cond12, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  store i32 2, ptr %i.e, align 4, !tbaa !36
  call void @GetStrength(ptr noundef nonnull %i.a, ptr noundef nonnull %0, i32 noundef %3, i32 noundef 1, i32 noundef 4, i32 noundef %i.ad)
  %i.ch = load i32, ptr %i.aq, align 8, !tbaa !48
  %i.ci = load i32, ptr %i.ar, align 4, !tbaa !49
  %i.cj = load i32, ptr %i.as, align 4, !tbaa !50
  call void @EdgeLoop(ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %0, i32 noundef %3, i32 noundef %i.ch, i32 noundef %i.ci, i32 noundef 1, i32 noundef 4, i32 noundef %i.cj, i32 noundef 0, i32 noundef 0)
  %i.ck = icmp sgt i8 %i.bj, -1
  %or.cond14 = select i1 %i.at, i1 %i.ck, i1 false
  br i1 %or.cond14, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cl = load ptr, ptr %2, align 8, !tbaa !51
  %i.cm = load i32, ptr %i.aq, align 8, !tbaa !48
  %i.cn = load i32, ptr %i.ar, align 4, !tbaa !49
  %i.co = load i32, ptr %i.au, align 8, !tbaa !53
  call void @EdgeLoop(ptr noundef %i.cl, ptr noundef nonnull %i.a, ptr noundef nonnull %0, i32 noundef %3, i32 noundef %i.cm, i32 noundef %i.cn, i32 noundef 1, i32 noundef 4, i32 noundef %i.co, i32 noundef 1, i32 noundef 0)
  %i.cp = load ptr, ptr %i.av, align 8, !tbaa !51
  %i.cq = load i32, ptr %i.aq, align 8, !tbaa !48
  %i.cr = load i32, ptr %i.ar, align 4, !tbaa !49
  %i.cs = load i32, ptr %i.au, align 8, !tbaa !53
  call void @EdgeLoop(ptr noundef %i.cp, ptr noundef nonnull %i.a, ptr noundef nonnull %0, i32 noundef %3, i32 noundef %i.cq, i32 noundef %i.cr, i32 noundef 1, i32 noundef 4, i32 noundef %i.cs, i32 noundef 1, i32 noundef 1)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  store i32 1, ptr %i.e, align 4, !tbaa !36
  br label %bb.w

bb.w:                                             ; preds = %bb.m, %bb.v, %bb.s, %bb.r
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next156, 4
  br i1 %exitcond.not, label %bb.x, label %bb.m, !llvm.loop !54

bb.x:                                             ; preds = %bb.w
  br i1 %i.az, label %bb.j, label %.loopexit, !llvm.loop !55

.loopexit:                                        ; preds = %bb.x, %.thread143
  store i32 0, ptr %i.e, align 4, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
end_hunk_0
