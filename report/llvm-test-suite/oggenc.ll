inline.NumInlined: 678
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 79
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 207
begin_hunk_0_@read_resampled:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #62
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = zext i32 %i.ab to i64
  %i.ad = tail call noalias ptr @calloc(i64 noundef %i.ac, i64 noundef 4) #71 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %res_drain.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.af = load i32, ptr %0, align 8
  %.not.i = icmp eq i32 %i.af, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %i.aj = load i32, ptr %i.ag, align 8
  store i32 %i.aj, ptr %i.c, align 4
  %i.ak = load i32, ptr %i.ah, align 4
  store i32 %i.ak, ptr %i.d, align 4
  %i.al = load ptr, ptr %i.ai, align 8
  %i.am = load i32, ptr %i.aa, align 4            ; 2 uses
  %i.an = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ao = mul i32 %i.am, %i.an
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ap
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = lshr i32 %i.am, 1
  %i.au = add nsw i32 %i.at, -1
  %i.av = zext i32 %i.au to i64
  %i.aw = call fastcc i32 @push(ptr noundef nonnull %0, ptr noundef %i.aq, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.as, i32 noundef 1, ptr noundef nonnull %i.ad, i32 noundef 1, i64 noundef %i.av)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ax = load i32, ptr %0, align 8
  %i.ay = zext i32 %i.ax to i64
  %i.az = icmp samesign ult i64 %indvars.iv.next.i, %i.ay
  br i1 %i.az, label %bb.d, label %._crit_edge.i.loopexit, !llvm.loop !41

._crit_edge.i.loopexit:                           ; preds = %bb.d
  %i.ba = sext i32 %i.aw to i64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %.preheader.i
  %.017.lcssa.i = phi i64 [ -1, %.preheader.i ], [ %i.ba, %._crit_edge.i.loopexit ]
  tail call void @free(ptr noundef nonnull %i.ad) #62
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 -1, ptr %i.bb, align 8
  br label %res_drain.exit

res_drain.exit:                                   ; preds = %bb.c, %._crit_edge.i
  %.018.i = phi i64 [ %.017.lcssa.i, %._crit_edge.i ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #62
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.bc = load ptr, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #62
  %i.bd = load i32, ptr %0, align 8
  %.not.i26 = icmp eq i32 %i.bd, 0
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  br i1 %.not.i26, label %res_push.exit.thread, label %.lr.ph.i27

res_push.exit.thread:                             ; preds = %bb.e
  store i32 -1, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 -1, ptr %i.bf, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #62
  br label %bb.g

.lr.ph.i27:                                       ; preds = %bb.e
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i27
  %indvars.iv.i28 = phi i64 [ 0, %.lr.ph.i27 ], [ %indvars.iv.next.i29, %bb.f ] ; 4 uses
  %i.bj = load i32, ptr %i.be, align 8
  store i32 %i.bj, ptr %i.a, align 4
  %i.bk = load i32, ptr %i.bg, align 4
  store i32 %i.bk, ptr %i.b, align 4
  %i.bl = load ptr, ptr %i.bh, align 8
  %i.bm = load i32, ptr %i.bi, align 4
  %i.bn = trunc nuw nsw i64 %indvars.iv.i28 to i32
  %i.bo = mul i32 %i.bm, %i.bn
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bp
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i28
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.i28
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = call fastcc i32 @push(ptr noundef nonnull %0, ptr noundef %i.bq, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.bs, i32 noundef 1, ptr noundef %i.bu, i32 noundef 1, i64 noundef %i.w) ; 3 uses
  %indvars.iv.next.i29 = add nuw nsw i64 %indvars.iv.i28, 1 ; 2 uses
  %i.bw = load i32, ptr %0, align 8
  %i.bx = zext i32 %i.bw to i64
  %i.by = icmp samesign ult i64 %indvars.iv.next.i29, %i.bx
  br i1 %i.by, label %bb.f, label %res_push.exit, !llvm.loop !42

res_push.exit:                                    ; preds = %bb.f
  %.pre.i = load i32, ptr %i.a, align 4
  %.pre19.i = load i32, ptr %i.b, align 4
  store i32 %.pre.i, ptr %i.be, align 8
  store i32 %.pre19.i, ptr %i.bg, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #62
  %i.bz = icmp slt i32 %i.bv, 1
  br i1 %i.bz, label %bb.g, label %bb.h

bb.g:                                             ; preds = %res_push.exit.thread, %res_push.exit
  %.016.lcssa.i33 = phi i32 [ -1, %res_push.exit.thread ], [ %i.bv, %res_push.exit ]
  %i.ca = load ptr, ptr @stderr, align 8
  %i.cb = tail call i64 @fwrite(ptr nonnull @.str.176, i64 87, i64 1, ptr %i.ca) #64 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %res_push.exit
  %.016.lcssa.i32 = phi i32 [ %.016.lcssa.i33, %bb.g ], [ %i.bv, %res_push.exit ]
  %i.cc = sext i32 %.016.lcssa.i32 to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.h, %res_drain.exit
  %.022 = phi i64 [ %i.cc, %bb.h ], [ %.018.i, %res_drain.exit ], [ 0, %bb.b ]
  ret i64 %.022
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @res_clear(ptr nofree noundef captures(none) initializes((0, 16), (32, 40)) %0) local_unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @free(ptr noundef %i.b) #62
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @free(ptr noundef %i.d) #62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @read_scaler(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i64 %i.a(ptr noundef %i.c, ptr noundef %1, i32 noundef %2) #62 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.preheader.lr.ph, label %._crit_edge19.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.h = icmp sgt i64 %i.d, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  br i1 %i.h, label %.preheader.preheader, label %._crit_edge19.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %xtraiter = and i64 %i.d, 1
  %i.j = icmp eq i64 %i.d, 1
  %unroll_iter = and i64 %i.d, 9223372036854775806
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod24 = trunc i64 %i.d to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %._crit_edge ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv21 ; 3 uses
  br i1 %i.j, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.new ], [ 0, %.preheader ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.l = load float, ptr %i.i, align 4
  %i.m = load ptr, ptr %i.k, align 8
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv ; 2 uses
  %i.o = load float, ptr %i.n, align 4
  %i.p = fmul float %i.l, %i.o
  store float %i.p, ptr %i.n, align 4
  %i.q = load float, ptr %i.i, align 4
  %i.r = load ptr, ptr %i.k, align 8
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 2 uses
  %i.u = load float, ptr %i.t, align 4
  %i.v = fmul float %i.q, %i.u
  store float %i.v, ptr %i.t, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !43

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod24)
  %i.w = load float, ptr %i.i, align 4
  %i.x = load ptr, ptr %i.k, align 8
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.epil.init ; 2 uses
  %i.z = load float, ptr %i.y, align 4
  %i.aa = fmul float %i.w, %i.z
  store float %i.aa, ptr %i.y, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1 ; 2 uses
  %i.ab = load i32, ptr %i.e, align 8
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp slt i64 %indvars.iv.next22, %i.ac
  br i1 %i.ad, label %.preheader, label %._crit_edge19.split, !llvm.loop !44

._crit_edge19.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret i64 %i.d
}

; Function Attrs: nounwind uwtable
define internal range(i64 -9223372036854775808, 2147483648) i64 @read_downmix(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call i64 %i.a(ptr noundef %i.c, ptr noundef %i.e, i32 noundef %2) #62 ; 6 uses
  %i.g = icmp sgt i64 %i.f, 0
  br i1 %i.g, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %i.f, 1
  %i.h = icmp eq i64 %i.f, 1
  br i1 %i.h, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.f, 9223372036854775806
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.i = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = load float, ptr %i.k, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv
  %i.p = load float, ptr %i.o, align 4
  %i.q = fadd float %i.l, %i.p
  %i.r = fmul float %i.q, 5.000000e-01
  %i.s = load ptr, ptr %1, align 8
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv
  store float %i.r, ptr %i.t, align 4
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.u = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next
  %i.x = load float, ptr %i.w, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.next
  %i.ab = load float, ptr %i.aa, align 4
  %i.ac = fadd float %i.x, %i.ab
  %i.ad = fmul float %i.ac, 5.000000e-01
  %i.ae = load ptr, ptr %1, align 8
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.next
  store float %i.ad, ptr %i.af, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !45

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod18 = trunc i64 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod18)
  %i.ag = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.epil.init
  %i.aj = load float, ptr %i.ai, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.epil.init
  %i.an = load float, ptr %i.am, align 4
  %i.ao = fadd float %i.aj, %i.an
  %i.ap = fmul float %i.ao, 5.000000e-01
  %i.aq = load ptr, ptr %1, align 8
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.epil.init
  store float %i.ap, ptr %i.ar, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret i64 %i.f
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local noalias noundef ptr @timer_start() local_unnamed_addr #23 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #69 ; 3 uses
  store i64 21, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.b, align 8
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable
define dso_local void @vorbis_info_init(ptr nofree noundef writeonly captures(none) initializes((0, 56)) %0) local_unnamed_addr #24 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 48, i1 false)
  %i.a = tail call noalias dereferenceable_or_null(5816) ptr @calloc(i64 noundef 1, i64 noundef 5816) #71
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.a, ptr %i.b, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -130, 1) i32 @vorbis_encode_setup_vbr(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2, float noundef %3) local_unnamed_addr #25 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 5512 ; 3 uses
  %i.d = fpext float %3 to double
  %i.e = fadd double %i.d, 1.000000e-05           ; 2 uses
  %i.f = fptrunc double %i.e to float
  %i.g = fcmp ult double %i.e, f0x3FEFFFFFF0000000
  %i.h = fpext float %i.f to double
  %i.i = select i1 %i.g, double %i.h, double f0x3FEFFF2E40000000 ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge.i, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %.backedge.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr @setup_list, i64 %indvars.iv.i
  %i.k = load ptr, ptr %i.j, align 8              ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load i32, ptr %i.l, align 8              ; 2 uses
  %i.n = icmp eq i32 %i.m, -1
  %i.o = sext i32 %i.m to i64
  %i.p = icmp eq i64 %1, %i.o
  %or.cond.i = or i1 %i.n, %i.p
  br i1 %or.cond.i, label %bb.c, label %.backedge.i

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.r = load i64, ptr %i.q, align 8
  %.not59.i = icmp slt i64 %2, %i.r
  br i1 %.not59.i, label %.backedge.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.t = load i64, ptr %i.s, align 8
  %.not60.i = icmp sgt i64 %2, %i.t
  br i1 %.not60.i, label %.backedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.in.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.u = load ptr, ptr %.in.i, align 8            ; 4 uses
  %i.v = load double, ptr %i.u, align 8
  %i.w = fcmp olt double %i.i, %i.v
  br i1 %i.w, label %.backedge.i, label %bb.f, !llvm.loop !46

bb.f:                                             ; preds = %bb.e
  %i.x = load i32, ptr %i.k, align 8              ; 5 uses
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.y
  %i.aa = load double, ptr %i.z, align 8
  %i.ab = fcmp ogt double %i.i, %i.aa
  br i1 %i.ab, label %.backedge.i, label %.preheader.i, !llvm.loop !46

.preheader.i:                                     ; preds = %bb.f
  %i.ac = icmp sgt i32 %i.x, 0
  br i1 %i.ac, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i32 %i.x to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.preheader.i
  %indvars.iv11.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next12.i, %bb.h ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv11.i ; 2 uses
  %i.ae = load double, ptr %i.ad, align 8
  %i.af = fcmp ult double %i.i, %i.ae
  br i1 %i.af, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ah = load double, ptr %i.ag, align 8
  %i.ai = fcmp olt double %i.i, %i.ah
  br i1 %i.ai, label %._crit_edge.loopexit.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.next12.i = add nuw nsw i64 %indvars.iv11.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next12.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.thread.i, label %.lr.ph.i, !llvm.loop !47

._crit_edge.thread.i:                             ; preds = %bb.h
  store ptr %i.k, ptr %i.c, align 8
  br label %bb.i

._crit_edge.loopexit.i:                           ; preds = %bb.g
  %i.aj = trunc nuw nsw i64 %indvars.iv11.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %.053.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %i.aj, %._crit_edge.loopexit.i ] ; 3 uses
  store ptr %i.k, ptr %i.c, align 8
  %i.ak = icmp eq i32 %.053.lcssa.i, %i.x
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i, %._crit_edge.thread.i
  %i.al = uitofp nneg i32 %i.x to double
  %i.am = fadd double %i.al, -1.000000e-03
  br label %get_setup_template.exit

bb.j:                                             ; preds = %._crit_edge.i
  %i.an = zext nneg i32 %.053.lcssa.i to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.an
  %i.ap = load <2 x double>, ptr %i.ao, align 8
  %i.aq = fptrunc <2 x double> %i.ap to <2 x float> ; 3 uses
  %i.ar = extractelement <2 x float> %i.aq, i64 0
  %i.as = fpext float %i.ar to double
  %i.at = fsub double %i.i, %i.as
  %shift = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %shift, %i.aq
  %i.au = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.av = fpext float %i.au to double
  %i.aw = fdiv double %i.at, %i.av
  %i.ax = fptrunc double %i.aw to float
  %i.ay = uitofp nneg i32 %.053.lcssa.i to float
  %i.az = fadd float %i.ay, %i.ax
  %i.ba = fpext float %i.az to double
  br label %get_setup_template.exit

.backedge.i:                                      ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not58.i = icmp eq i64 %indvars.iv.next.i, 22
  br i1 %.not58.i, label %get_setup_template.exit.thread, label %bb.b, !llvm.loop !46

get_setup_template.exit.thread:                   ; preds = %.backedge.i
  store ptr null, ptr %i.c, align 8
  br label %bb.k

get_setup_template.exit:                          ; preds = %bb.j, %bb.i
  %.sink = phi double [ %i.ba, %bb.j ], [ %i.am, %bb.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 5528
  store double %.sink, ptr %i.bb, align 8
  %i.bc = load ptr, ptr %i.a, align 8             ; 17 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 5512
  %i.be = load ptr, ptr %i.bd, align 8            ; 3 uses
  %i.bf = trunc i64 %1 to i32
  store i32 0, ptr %0, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.bf, ptr %i.bg, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 5528
  %i.bj = load double, ptr %i.bi, align 8         ; 7 uses
  %i.bk = fptosi double %i.bj to i32              ; 3 uses
  %i.bl = sitofp i32 %i.bk to double
  %i.bm = fsub double %i.bj, %i.bl                ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bc, i64 5544
  store double %i.bj, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bc, i64 5536
  store double %i.bj, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bc, i64 5560
  store i32 0, ptr %i.bp, align 8
end_hunk_0
begin_hunk_1_@ogg_stream_flush:bb.a
.lr.ph128.preheader171:                           ; preds = %vector.memcheck, %.lr.ph128.preheader, %middle.block
  %indvars.iv152.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph128.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.095127.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph128.preheader ], [ %i.dj, %middle.block ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count155, 3      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph128.prol.loopexit, label %.lr.ph128.prol

.lr.ph128.prol:                                   ; preds = %.lr.ph128.preheader171, %.lr.ph128.prol
  %indvars.iv152.prol = phi i64 [ %indvars.iv.next153.prol, %.lr.ph128.prol ], [ %indvars.iv152.ph, %.lr.ph128.preheader171 ] ; 3 uses
  %.095127.prol = phi i32 [ %i.dq, %.lr.ph128.prol ], [ %.095127.ph, %.lr.ph128.preheader171 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph128.prol ], [ 0, %.lr.ph128.preheader171 ]
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv152.prol
  %i.dl = load i32, ptr %i.dk, align 4            ; 2 uses
  %i.dm = trunc i32 %i.dl to i8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv152.prol
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 27
  store i8 %i.dm, ptr %i.do, align 1
  %i.dp = and i32 %i.dl, 255
  %i.dq = add nuw nsw i32 %i.dp, %.095127.prol    ; 3 uses
  %indvars.iv.next153.prol = add nuw nsw i64 %indvars.iv152.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph128.prol.loopexit, label %.lr.ph128.prol, !llvm.loop !104

.lr.ph128.prol.loopexit:                          ; preds = %.lr.ph128.prol, %.lr.ph128.preheader171
  %.lcssa172.unr = phi i32 [ poison, %.lr.ph128.preheader171 ], [ %i.dq, %.lr.ph128.prol ]
  %indvars.iv152.unr = phi i64 [ %indvars.iv152.ph, %.lr.ph128.preheader171 ], [ %indvars.iv.next153.prol, %.lr.ph128.prol ]
  %.095127.unr = phi i32 [ %.095127.ph, %.lr.ph128.preheader171 ], [ %i.dq, %.lr.ph128.prol ]
  %i.dr = sub nsw i64 %indvars.iv152.ph, %wide.trip.count155
  %i.ds = icmp ugt i64 %i.dr, -4
  br i1 %i.ds, label %._crit_edge.loopexit, label %.lr.ph128

.lr.ph128:                                        ; preds = %.lr.ph128.prol.loopexit, %.lr.ph128
  %indvars.iv152 = phi i64 [ %indvars.iv.next153.3, %.lr.ph128 ], [ %indvars.iv152.unr, %.lr.ph128.prol.loopexit ] ; 6 uses
  %.095127 = phi i32 [ %i.eu, %.lr.ph128 ], [ %.095127.unr, %.lr.ph128.prol.loopexit ]
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv152
  %i.du = load i32, ptr %i.dt, align 4            ; 2 uses
  %i.dv = trunc i32 %i.du to i8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv152
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 27
  store i8 %i.dv, ptr %i.dx, align 1
  %i.dy = and i32 %i.du, 255
  %i.dz = add nuw nsw i32 %i.dy, %.095127
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1 ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.next153
  %i.eb = load i32, ptr %i.ea, align 4            ; 2 uses
  %i.ec = trunc i32 %i.eb to i8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv.next153
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 27
  store i8 %i.ec, ptr %i.ee, align 1
  %i.ef = and i32 %i.eb, 255
  %i.eg = add nuw nsw i32 %i.ef, %i.dz
  %indvars.iv.next153.1 = add nuw nsw i64 %indvars.iv152, 2 ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.next153.1
  %i.ei = load i32, ptr %i.eh, align 4            ; 2 uses
  %i.ej = trunc i32 %i.ei to i8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv.next153.1
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 27
  store i8 %i.ej, ptr %i.el, align 1
  %i.em = and i32 %i.ei, 255
  %i.en = add nuw nsw i32 %i.em, %i.eg
  %indvars.iv.next153.2 = add nuw nsw i64 %indvars.iv152, 3 ; 2 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.next153.2
  %i.ep = load i32, ptr %i.eo, align 4            ; 2 uses
  %i.eq = trunc i32 %i.ep to i8
  %i.er = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv.next153.2
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 27
  store i8 %i.eq, ptr %i.es, align 1
  %i.et = and i32 %i.ep, 255
  %i.eu = add nuw nsw i32 %i.et, %i.en            ; 2 uses
  %indvars.iv.next153.3 = add nuw nsw i64 %indvars.iv152, 4 ; 2 uses
  %exitcond156.not.3 = icmp eq i64 %indvars.iv.next153.3, %wide.trip.count155
  br i1 %exitcond156.not.3, label %._crit_edge.loopexit, label %.lr.ph128, !llvm.loop !105

._crit_edge.loopexit:                             ; preds = %.lr.ph128.prol.loopexit, %.lr.ph128, %middle.block
  %.lcssa164 = phi i32 [ %i.dj, %middle.block ], [ %.lcssa172.unr, %.lr.ph128.prol.loopexit ], [ %i.eu, %.lr.ph128 ]
  %i.ev = zext nneg i32 %.lcssa164 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.h
  %.095.lcssa = phi i64 [ 0, %bb.h ], [ %i.ev, %._crit_edge.loopexit ] ; 2 uses
  store ptr %i.ae, ptr %1, align 8
  %i.ew = add nsw i32 %.299, 27                   ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 364
  store i32 %i.ew, ptr %i.ex, align 4
  %i.ey = sext i32 %i.ew to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 %i.ey, ptr %i.ez, align 8
  %i.fa = load ptr, ptr %0, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.fc = load i64, ptr %i.fb, align 8
  %i.fd = getelementptr inbounds i8, ptr %i.fa, i64 %i.fc
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr %i.fd, ptr %i.fe, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store i64 %.095.lcssa, ptr %i.ff, align 8
  %i.fg = load i64, ptr %i.a, align 8
  %i.fh = sub nsw i64 %i.fg, %i.ap                ; 2 uses
  store i64 %i.fh, ptr %i.a, align 8
  %i.fi = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.fi, i64 %i.ap
  %i.fk = shl i64 %i.fh, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.fi, ptr align 4 %i.fj, i64 %i.fk, i1 false)
  %i.fl = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %i.ap
  %i.fn = load i64, ptr %i.a, align 8
  %i.fo = shl i64 %i.fn, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.fl, ptr align 8 %i.fm, i64 %i.fo, i1 false)
  %i.fp = load i64, ptr %i.fb, align 8
  %i.fq = add nsw i64 %i.fp, %.095.lcssa
  store i64 %i.fq, ptr %i.fb, align 8
  %i.fr = load ptr, ptr %1, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 22
  store i8 0, ptr %i.fs, align 1
  %i.ft = load ptr, ptr %1, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 23
  store i8 0, ptr %i.fu, align 1
  %i.fv = load ptr, ptr %1, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  store i8 0, ptr %i.fw, align 1
  %i.fx = load ptr, ptr %1, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 25
  store i8 0, ptr %i.fy, align 1
  %i.fz = load i64, ptr %i.ez, align 8            ; 5 uses
  %i.ga = icmp sgt i64 %i.fz, 0
  br i1 %i.ga, label %.lr.ph.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %._crit_edge
  %i.gb = load ptr, ptr %1, align 8               ; 3 uses
  %xtraiter176 = and i64 %i.fz, 1
  %i.gc = icmp eq i64 %i.fz, 1
  br i1 %i.gc, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.fz, 9223372036854775806
  br label %bb.i

.preheader.i.loopexit.unr-lcssa:                  ; preds = %bb.i
  %lcmp.mod177.not = icmp eq i64 %xtraiter176, 0
  br i1 %lcmp.mod177.not, label %.preheader.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %.preheader.i.loopexit.unr-lcssa ]
  %.02631.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %i.hl, %.preheader.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod179 = trunc i64 %i.fz to i1
  tail call void @llvm.assume(i1 %lcmp.mod179)
  %i.gd = shl i32 %.02631.i.epil.init, 8
  %i.ge = lshr i32 %.02631.i.epil.init, 24
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gb, i64 %indvars.iv.i.epil.init
  %i.gg = load i8, ptr %i.gf, align 1
  %i.gh = zext i8 %i.gg to i32
  %i.gi = xor i32 %i.ge, %i.gh
  %i.gj = zext nneg i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr @crc_lookup, i64 %i.gj
  %i.gl = load i32, ptr %i.gk, align 4
  %i.gm = xor i32 %i.gl, %i.gd
  br label %.preheader.i

.preheader.i:                                     ; preds = %.epil.preheader, %.preheader.i.loopexit.unr-lcssa, %._crit_edge
  %.026.lcssa.i = phi i32 [ 0, %._crit_edge ], [ %i.hl, %.preheader.i.loopexit.unr-lcssa ], [ %i.gm, %.epil.preheader ] ; 3 uses
  %i.gn = load i64, ptr %i.ff, align 8            ; 5 uses
  %i.go = icmp sgt i64 %i.gn, 0
  br i1 %i.go, label %.lr.ph35.i, label %ogg_page_checksum_set.exit

.lr.ph35.i:                                       ; preds = %.preheader.i
  %i.gp = load ptr, ptr %i.fe, align 8            ; 3 uses
  %xtraiter181 = and i64 %i.gn, 1
  %i.gq = icmp eq i64 %i.gn, 1
  br i1 %i.gq, label %.epil.preheader180, label %.lr.ph35.i.new

.lr.ph35.i.new:                                   ; preds = %.lr.ph35.i
  %unroll_iter185 = and i64 %i.gn, 9223372036854775806
  br label %bb.j

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.i ] ; 3 uses
  %.02631.i = phi i32 [ 0, %.lr.ph.i.new ], [ %i.hl, %bb.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.i ]
  %i.gr = shl i32 %.02631.i, 8
  %i.gs = lshr i32 %.02631.i, 24
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gb, i64 %indvars.iv.i
  %i.gu = load i8, ptr %i.gt, align 1
  %i.gv = zext i8 %i.gu to i32
  %i.gw = xor i32 %i.gs, %i.gv
  %i.gx = zext nneg i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr @crc_lookup, i64 %i.gx
  %i.gz = load i32, ptr %i.gy, align 4
  %i.ha = xor i32 %i.gz, %i.gr                    ; 2 uses
  %i.hb = shl i32 %i.ha, 8
  %i.hc = lshr i32 %i.ha, 24
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gb, i64 %indvars.iv.i
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 1
  %i.hf = load i8, ptr %i.he, align 1
  %i.hg = zext i8 %i.hf to i32
  %i.hh = xor i32 %i.hc, %i.hg
  %i.hi = zext nneg i32 %i.hh to i64
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr @crc_lookup, i64 %i.hi
  %i.hk = load i32, ptr %i.hj, align 4
  %i.hl = xor i32 %i.hk, %i.hb                    ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.i.loopexit.unr-lcssa, label %bb.i, !llvm.loop !106

bb.j:                                             ; preds = %bb.j, %.lr.ph35.i.new
  %indvars.iv39.i = phi i64 [ 0, %.lr.ph35.i.new ], [ %indvars.iv.next40.i.1, %bb.j ] ; 3 uses
  %.12733.i = phi i32 [ %.026.lcssa.i, %.lr.ph35.i.new ], [ %i.ig, %bb.j ] ; 2 uses
  %niter186 = phi i64 [ 0, %.lr.ph35.i.new ], [ %niter186.next.1, %bb.j ]
  %i.hm = shl i32 %.12733.i, 8
  %i.hn = lshr i32 %.12733.i, 24
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gp, i64 %indvars.iv39.i
  %i.hp = load i8, ptr %i.ho, align 1
  %i.hq = zext i8 %i.hp to i32
  %i.hr = xor i32 %i.hn, %i.hq
  %i.hs = zext nneg i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr @crc_lookup, i64 %i.hs
  %i.hu = load i32, ptr %i.ht, align 4
  %i.hv = xor i32 %i.hu, %i.hm                    ; 2 uses
  %i.hw = shl i32 %i.hv, 8
  %i.hx = lshr i32 %i.hv, 24
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gp, i64 %indvars.iv39.i
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 1
  %i.ia = load i8, ptr %i.hz, align 1
  %i.ib = zext i8 %i.ia to i32
  %i.ic = xor i32 %i.hx, %i.ib
  %i.id = zext nneg i32 %i.ic to i64
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr @crc_lookup, i64 %i.id
  %i.if = load i32, ptr %i.ie, align 4
  %i.ig = xor i32 %i.if, %i.hw                    ; 3 uses
  %indvars.iv.next40.i.1 = add nuw nsw i64 %indvars.iv39.i, 2 ; 2 uses
  %niter186.next.1 = add i64 %niter186, 2         ; 2 uses
  %niter186.ncmp.1 = icmp eq i64 %niter186.next.1, %unroll_iter185
  br i1 %niter186.ncmp.1, label %ogg_page_checksum_set.exit.loopexit.unr-lcssa, label %bb.j, !llvm.loop !107

ogg_page_checksum_set.exit.loopexit.unr-lcssa:    ; preds = %bb.j
  %lcmp.mod182.not = icmp eq i64 %xtraiter181, 0
  br i1 %lcmp.mod182.not, label %ogg_page_checksum_set.exit, label %.epil.preheader180

.epil.preheader180:                               ; preds = %ogg_page_checksum_set.exit.loopexit.unr-lcssa, %.lr.ph35.i
  %indvars.iv39.i.epil.init = phi i64 [ 0, %.lr.ph35.i ], [ %indvars.iv.next40.i.1, %ogg_page_checksum_set.exit.loopexit.unr-lcssa ]
  %.12733.i.epil.init = phi i32 [ %.026.lcssa.i, %.lr.ph35.i ], [ %i.ig, %ogg_page_checksum_set.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod184 = trunc i64 %i.gn to i1
  tail call void @llvm.assume(i1 %lcmp.mod184)
  %i.ih = shl i32 %.12733.i.epil.init, 8
  %i.ii = lshr i32 %.12733.i.epil.init, 24
  %i.ij = getelementptr inbounds nuw i8, ptr %i.gp, i64 %indvars.iv39.i.epil.init
  %i.ik = load i8, ptr %i.ij, align 1
  %i.il = zext i8 %i.ik to i32
  %i.im = xor i32 %i.ii, %i.il
  %i.in = zext nneg i32 %i.im to i64
  %i.io = getelementptr inbounds nuw [4 x i8], ptr @crc_lookup, i64 %i.in
  %i.ip = load i32, ptr %i.io, align 4
  %i.iq = xor i32 %i.ip, %i.ih
  br label %ogg_page_checksum_set.exit

ogg_page_checksum_set.exit:                       ; preds = %.epil.preheader180, %ogg_page_checksum_set.exit.loopexit.unr-lcssa, %.preheader.i
  %.127.lcssa.i = phi i32 [ %.026.lcssa.i, %.preheader.i ], [ %i.ig, %ogg_page_checksum_set.exit.loopexit.unr-lcssa ], [ %i.iq, %.epil.preheader180 ] ; 4 uses
  %i.ir = trunc i32 %.127.lcssa.i to i8
  %i.is = load ptr, ptr %1, align 8
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 22
  store i8 %i.ir, ptr %i.it, align 1
  %i.iu = lshr i32 %.127.lcssa.i, 8
  %i.iv = trunc i32 %i.iu to i8
  %i.iw = load ptr, ptr %1, align 8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 23
  store i8 %i.iv, ptr %i.ix, align 1
  %i.iy = lshr i32 %.127.lcssa.i, 16
  %i.iz = trunc i32 %i.iy to i8
  %i.ja = load ptr, ptr %1, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 24
  store i8 %i.iz, ptr %i.jb, align 1
  %i.jc = lshr i32 %.127.lcssa.i, 24
  %i.jd = trunc nuw i32 %i.jc to i8
  %i.je = load ptr, ptr %1, align 8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 25
  store i8 %i.jd, ptr %i.jf, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %ogg_page_checksum_set.exit
  %.096 = phi i32 [ 1, %ogg_page_checksum_set.exit ], [ 0, %bb.a ]
  ret i32 %.096
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @oe_write_page(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #13 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call i64 @fwrite(ptr noundef %i.a, i64 noundef 1, i64 noundef %i.c, ptr noundef %1)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = tail call i64 @fwrite(ptr noundef %i.f, i64 noundef 1, i64 noundef %i.h, ptr noundef %1)
  %i.j = add i64 %i.i, %i.d
  %i.k = trunc i64 %i.j to i32
  ret i32 %i.k
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local ptr @vorbis_analysis_buffer(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 120 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.f) #62
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr null, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 128 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not36 = icmp eq ptr %i.h, null
  br i1 %.not36, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.h) #62
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store ptr null, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 136 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not37 = icmp eq ptr %i.j, null
  br i1 %.not37, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.j) #62
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr null, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4              ; 2 uses
  %i.m = add nsw i32 %i.l, %1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.o = load i32, ptr %i.n, align 8
  %.not38 = icmp slt i32 %i.m, %i.o
  br i1 %.not38, label %..loopexit_crit_edge, label %bb.h

..loopexit_crit_edge:                             ; preds = %bb.g
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  br label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.p = shl nsw i32 %1, 1
  %i.q = add nsw i32 %i.l, %i.p
  store i32 %i.q, ptr %i.n, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = load i32, ptr %i.n, align 8
  %i.z = sext i32 %i.y to i64
  %i.aa = shl nsw i64 %i.z, 2
  %i.ab = tail call ptr @realloc(ptr noundef %i.x, i64 noundef %i.aa) #66
  %i.ac = load ptr, ptr %i.u, align 8
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv
  store ptr %i.ab, ptr %i.ad, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ae = load i32, ptr %i.r, align 4             ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = icmp slt i64 %indvars.iv.next, %i.af
  br i1 %i.ag, label %bb.i, label %.loopexit, !llvm.loop !108

.loopexit:                                        ; preds = %bb.i, %..loopexit_crit_edge
  %i.ah = phi i32 [ %.pre, %..loopexit_crit_edge ], [ %i.ae, %bb.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.aj = icmp sgt i32 %i.ah, 0
  br i1 %i.aj, label %.lr.ph41, label %._crit_edge

.lr.ph41:                                         ; preds = %.loopexit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph41, %bb.j
  %indvars.iv43 = phi i64 [ 0, %.lr.ph41 ], [ %indvars.iv.next44, %bb.j ] ; 3 uses
  %i.am = load ptr, ptr %i.ak, align 8
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv43
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = load i32, ptr %i.k, align 4
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.aq
  %i.as = load ptr, ptr %i.al, align 8
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv43
  store ptr %i.ar, ptr %i.at, align 8
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %i.au = load i32, ptr %i.ai, align 4
  %i.av = sext i32 %i.au to i64
  %i.aw = icmp slt i64 %indvars.iv.next44, %i.av
  br i1 %i.aw, label %bb.j, label %._crit_edge, !llvm.loop !109

._crit_edge:                                      ; preds = %bb.j, %bb.h, %.loopexit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8
  ret ptr %i.ay
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local range(i32 -131, 1) i32 @vorbis_analysis_wrote(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp slt i32 %1, 1
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.f = alloca [128 x i8], align 16              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44
end_hunk_1
begin_hunk_2_@vorbis_synthesis:bb.a
  store i64 %i.fp, ptr %i.o, align 8
  %i.fq = load ptr, ptr %i.j, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  store ptr %i.fq, ptr %i.fr, align 8
  store ptr %i.fm, ptr %i.fn, align 8
  store ptr %i.fn, ptr %i.j, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  store i64 %i.fh, ptr %i.es, align 8
  %i.fs = tail call noalias ptr @malloc(i64 noundef %i.fh) #69 ; 2 uses
  store ptr %i.fs, ptr %i.ev, align 8
  br label %_vorbis_block_alloc.exit88

_vorbis_block_alloc.exit88:                       ; preds = %.lr.ph, %bb.x
  %i.ft = phi i64 [ 0, %bb.x ], [ %i.fi, %.lr.ph ] ; 2 uses
  %i.fu = phi ptr [ %i.fs, %bb.x ], [ %i.fm, %.lr.ph ]
  %i.fv = getelementptr inbounds i8, ptr %i.fu, i64 %i.ft
  %i.fw = add nsw i64 %i.ft, %i.fh
  store i64 %i.fw, ptr %i.z, align 8
  %i.fx = load ptr, ptr %0, align 8
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %indvars.iv
  store ptr %i.fv, ptr %i.fy, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fz = load i32, ptr %i.eo, align 4
  %i.ga = sext i32 %i.fz to i64
  %i.gb = icmp slt i64 %indvars.iv.next, %i.ga
  br i1 %i.gb, label %.lr.ph, label %._crit_edge, !llvm.loop !420

._crit_edge:                                      ; preds = %_vorbis_block_alloc.exit88, %_vorbis_block_alloc.exit
  %i.gc = getelementptr inbounds nuw i8, ptr %i.h, i64 552
  %i.gd = load ptr, ptr %i.ck, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 12
  %i.gf = load i32, ptr %i.ge, align 4
  %i.gg = sext i32 %i.gf to i64                   ; 2 uses
  %i.gh = getelementptr inbounds [4 x i8], ptr %i.gc, i64 %i.gg
  %i.gi = load i32, ptr %i.gh, align 4
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds [8 x i8], ptr @_mapping_P, i64 %i.gj
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 32
  %i.gn = load ptr, ptr %i.gm, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %i.h, i64 808
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.go, i64 %i.gg
  %i.gq = load ptr, ptr %i.gp, align 8
  %i.gr = tail call i32 %i.gn(ptr noundef nonnull %0, ptr noundef %i.gq) #62
  br label %bb.y

.critedge:                                        ; preds = %_vorbis_block_ripcord.exit
  store i64 0, ptr %i.i, align 8
  store i32 1, ptr %i.ah, align 8
  br label %bb.y

bb.y:                                             ; preds = %.critedge, %oggpack_read.exit83, %oggpack_read.exit65, %oggpack_read.exit, %._crit_edge
  %.053 = phi i32 [ %i.gr, %._crit_edge ], [ -135, %oggpack_read.exit ], [ -136, %oggpack_read.exit65 ], [ -136, %oggpack_read.exit83 ], [ -135, %.critedge ]
  ret i32 %.053
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 33) i32 @_ilog(i32 noundef %0) local_unnamed_addr #15 {
._crit_edge:
  %i.a = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %0, i1 false)
  %i.b = sub nuw nsw i32 32, %i.a
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define dso_local i64 @_float32_pack(float noundef %0) local_unnamed_addr #45 {
bb.a:
  %i.a = fcmp olt float %0, 0.000000e+00          ; 2 uses
  %i.b = fneg float %0
  %.08 = select i1 %i.a, i64 -2147483648, i64 0
  %.0 = select i1 %i.a, float %i.b, float %0
  %i.c = fpext float %.0 to double                ; 2 uses
  %i.d = tail call double @log(double noundef %i.c) #62
  %i.e = fdiv double %i.d, f0x3FE62E42FEFA39EF
  %i.f = tail call double @llvm.floor.f64(double %i.e)
  %i.g = fptosi double %i.f to i64                ; 2 uses
  %i.h = trunc i64 %i.g to i32
  %i.i = sub i32 20, %i.h
  %i.j = tail call double @ldexp(double noundef %i.c, i32 noundef %i.i) #62
  %i.k = tail call double @llvm.rint.f64(double %i.j)
  %i.l = fptosi double %i.k to i64
  %i.m = shl i64 %i.g, 21
  %i.n = add i64 %i.m, 1610612736
  %i.o = or i64 %.08, %i.l
  %i.p = or i64 %i.o, %i.n
  ret i64 %i.p
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define dso_local float @_float32_unpack(i64 noundef %0) local_unnamed_addr #45 {
bb.a:
  %i.a = and i64 %0, 2097151
  %i.b = uitofp nneg i64 %i.a to double           ; 2 uses
  %i.c = and i64 %0, 2147483648
  %.not = icmp eq i64 %i.c, 0
  %i.d = fneg double %i.b
  %.0 = select i1 %.not, double %i.b, double %i.d
  %i.e = trunc i64 %0 to i32
  %i.f = lshr i32 %i.e, 21
  %i.g = and i32 %i.f, 1023
  %i.h = add nsw i32 %i.g, -788
  %i.i = tail call double @ldexp(double noundef %.0, i32 noundef %i.h) #62
  %i.j = fptrunc double %i.i to float
  ret float %i.j
}

; Function Attrs: nounwind memory(readwrite, argmem: read, target_mem: none) uwtable
define dso_local noalias ptr @_make_words(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #46 {
bb.a:
  %i.a = alloca [33 x i32], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #62
  %.not = icmp eq i64 %2, 0                       ; 3 uses
  %i.b = select i1 %.not, i64 %1, i64 %2
  %i.c = shl i64 %i.b, 2
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #69 ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(132) %i.a, i8 0, i64 132, i1 false)
  %i.e = icmp sgt i64 %1, 0
  br i1 %i.e, label %.lr.ph95, label %.critedge

.lr.ph95:                                         ; preds = %bb.a
  %i.f = zext i1 %.not to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  br label %bb.d

.preheader.lr.ph:                                 ; preds = %.loopexit
  br i1 %.not, label %.preheader.us, label %.preheader

.preheader.us:                                    ; preds = %.preheader.lr.ph, %._crit_edge.us
  %.165101.us = phi i64 [ %i.q, %._crit_edge.us ], [ 0, %.preheader.lr.ph ] ; 4 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.165101.us
  %i.i = load i64, ptr %i.h, align 8              ; 4 uses
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %.lr.ph98.us, label %._crit_edge.us

._crit_edge.us.loopexit.unr-lcssa:                ; preds = %bb.c
  %lcmp.mod141.not = icmp eq i64 %xtraiter139, 0
  br i1 %lcmp.mod141.not, label %._crit_edge.us, label %.epil.preheader138

.epil.preheader138:                               ; preds = %._crit_edge.us.loopexit.unr-lcssa, %.lr.ph98.us
  %.097.us.epil.init = phi i32 [ 0, %.lr.ph98.us ], [ %i.ao, %._crit_edge.us.loopexit.unr-lcssa ]
  %.27396.us.epil.init = phi i64 [ 0, %.lr.ph98.us ], [ %i.ap, %._crit_edge.us.loopexit.unr-lcssa ]
  %lcmp.mod143 = icmp ne i64 %xtraiter139, 0
  tail call void @llvm.assume(i1 %lcmp.mod143)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader138
  %.097.us.epil = phi i32 [ %.097.us.epil.init, %.epil.preheader138 ], [ %i.o, %bb.b ]
  %.27396.us.epil = phi i64 [ %.27396.us.epil.init, %.epil.preheader138 ], [ %i.p, %bb.b ] ; 2 uses
  %epil.iter140 = phi i64 [ 0, %.epil.preheader138 ], [ %epil.iter140.next, %bb.b ]
  %i.k = shl i32 %.097.us.epil, 1
  %i.l = trunc i64 %.27396.us.epil to i32
  %i.m = lshr i32 %i.ar, %i.l
  %i.n = and i32 %i.m, 1
  %i.o = or disjoint i32 %i.n, %i.k               ; 2 uses
  %i.p = add nuw nsw i64 %.27396.us.epil, 1
  %epil.iter140.next = add i64 %epil.iter140, 1   ; 2 uses
  %epil.iter140.cmp.not = icmp eq i64 %epil.iter140.next, %xtraiter139
  br i1 %epil.iter140.cmp.not, label %._crit_edge.us, label %bb.b, !llvm.loop !421

._crit_edge.us:                                   ; preds = %._crit_edge.us.loopexit.unr-lcssa, %bb.b, %.preheader.us
  %.0.lcssa.us = phi i32 [ 0, %.preheader.us ], [ %i.ao, %._crit_edge.us.loopexit.unr-lcssa ], [ %i.o, %bb.b ]
  %i.q = add nuw nsw i64 %.165101.us, 1           ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.165101.us
  store i32 %.0.lcssa.us, ptr %i.r, align 4
  %exitcond111.not = icmp eq i64 %i.q, %1
  br i1 %exitcond111.not, label %.critedge, label %.preheader.us, !llvm.loop !422

bb.c:                                             ; preds = %bb.c, %.lr.ph98.us.new
  %.097.us = phi i32 [ 0, %.lr.ph98.us.new ], [ %i.ao, %bb.c ]
  %.27396.us = phi i64 [ 0, %.lr.ph98.us.new ], [ %i.ap, %bb.c ] ; 5 uses
  %niter145 = phi i64 [ 0, %.lr.ph98.us.new ], [ %niter145.next.3, %bb.c ]
  %i.s = trunc i64 %.27396.us to i32
  %i.t = lshr i32 %i.ar, %i.s
  %i.u = shl i32 %.097.us, 2
  %i.v = shl i32 %i.t, 1
  %i.w = and i32 %i.v, 2
  %i.x = or disjoint i32 %i.u, %i.w
  %i.y = trunc i64 %.27396.us to i32
  %i.z = or disjoint i32 %i.y, 1
  %i.aa = lshr i32 %i.ar, %i.z
  %i.ab = and i32 %i.aa, 1
  %i.ac = or disjoint i32 %i.ab, %i.x
  %i.ad = trunc i64 %.27396.us to i32
  %i.ae = or disjoint i32 %i.ad, 2
  %i.af = lshr i32 %i.ar, %i.ae
  %i.ag = shl i32 %i.ac, 2
  %i.ah = shl nuw nsw i32 %i.af, 1
  %i.ai = and i32 %i.ah, 2
  %i.aj = or disjoint i32 %i.ag, %i.ai
  %i.ak = trunc i64 %.27396.us to i32
  %i.al = or disjoint i32 %i.ak, 3
  %i.am = lshr i32 %i.ar, %i.al
  %i.an = and i32 %i.am, 1
  %i.ao = or disjoint i32 %i.an, %i.aj            ; 3 uses
  %i.ap = add nuw nsw i64 %.27396.us, 4           ; 2 uses
  %niter145.next.3 = add i64 %niter145, 4         ; 2 uses
  %niter145.ncmp.3 = icmp eq i64 %niter145.next.3, %unroll_iter144
  br i1 %niter145.ncmp.3, label %._crit_edge.us.loopexit.unr-lcssa, label %bb.c, !llvm.loop !423

.lr.ph98.us:                                      ; preds = %.preheader.us
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.165101.us
  %i.ar = load i32, ptr %i.aq, align 4            ; 5 uses
  %xtraiter139 = and i64 %i.i, 3                  ; 3 uses
  %i.as = icmp ult i64 %i.i, 4
  br i1 %i.as, label %.epil.preheader138, label %.lr.ph98.us.new

.lr.ph98.us.new:                                  ; preds = %.lr.ph98.us
  %unroll_iter144 = and i64 %i.i, 9223372036854775804
  br label %bb.c

bb.d:                                             ; preds = %.lr.ph95, %.loopexit
  %.06494 = phi i64 [ 0, %.lr.ph95 ], [ %i.bw, %.loopexit ] ; 2 uses
  %.06693 = phi i64 [ 0, %.lr.ph95 ], [ %.369, %.loopexit ] ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.06494
  %i.au = load i64, ptr %i.at, align 8            ; 7 uses
  %i.av = icmp sgt i64 %i.au, 0
  br i1 %i.av, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.au
  %i.ax = load i32, ptr %i.aw, align 4            ; 3 uses
  %i.ay = icmp samesign ugt i64 %i.au, 31
  %i.az = trunc nuw nsw i64 %i.au to i32
  %i.ba = lshr i32 %i.ax, %i.az
  %.not78 = icmp eq i32 %i.ba, 0
  %or.cond = select i1 %i.ay, i1 true, i1 %.not78
  br i1 %or.cond, label %.lr.ph.preheader, label %.critedge.critedge

.critedge.critedge:                               ; preds = %bb.e
  tail call void @free(ptr noundef %i.d) #62
  br label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.06693
  store i32 %i.ax, ptr %i.bb, align 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %.07186 = phi i64 [ %i.bm, %bb.i ], [ %i.au, %.lr.ph.preheader ] ; 4 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.07186 ; 4 uses
  %i.bd = load i32, ptr %i.bc, align 4            ; 2 uses
  %i.be = and i32 %i.bd, 1
  %.not79 = icmp eq i32 %i.be, 0
  br i1 %.not79, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.bf = icmp eq i64 %.07186, 1
  br i1 %i.bf, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bg = load i32, ptr %i.g, align 4
  %i.bh = add i32 %i.bg, 1
  store i32 %i.bh, ptr %i.g, align 4
  br label %.loopexit83

bb.h:                                             ; preds = %bb.f
  %i.bi = getelementptr i8, ptr %i.bc, i64 -4
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = shl i32 %i.bj, 1
  store i32 %i.bk, ptr %i.bc, align 4
  br label %.loopexit83

bb.i:                                             ; preds = %.lr.ph
  %i.bl = or disjoint i32 %i.bd, 1
  store i32 %i.bl, ptr %i.bc, align 4
  %i.bm = add nsw i64 %.07186, -1
  %i.bn = icmp sgt i64 %.07186, 1
  br i1 %i.bn, label %.lr.ph, label %.loopexit83, !llvm.loop !424

.loopexit83:                                      ; preds = %bb.i, %bb.g, %bb.h
  %i.bo = icmp slt i64 %i.au, 32
  br i1 %i.bo, label %.lr.ph91, label %.loopexit

.lr.ph91:                                         ; preds = %.loopexit83, %bb.j
  %.06189 = phi i32 [ %i.bq, %bb.j ], [ %i.ax, %.loopexit83 ]
  %.172.in88 = phi i64 [ %.17290, %bb.j ], [ %i.au, %.loopexit83 ] ; 2 uses
  %.17290 = add nuw nsw i64 %.172.in88, 1         ; 3 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.17290 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4            ; 2 uses
  %i.br = lshr i32 %i.bq, 1
  %i.bs = icmp eq i32 %i.br, %.06189
  br i1 %i.bs, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %.lr.ph91
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.172.in88
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = shl i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bp, align 4
  %exitcond.not = icmp eq i64 %.17290, 32
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph91, !llvm.loop !425

.loopexit:                                        ; preds = %.lr.ph91, %bb.j, %.loopexit83, %bb.d
  %.pn = phi i64 [ %i.f, %bb.d ], [ 1, %.loopexit83 ], [ 1, %bb.j ], [ 1, %.lr.ph91 ]
  %.369 = add nuw nsw i64 %.pn, %.06693
  %i.bw = add nuw nsw i64 %.06494, 1              ; 2 uses
  %exitcond107.not = icmp eq i64 %i.bw, %1
  br i1 %exitcond107.not, label %.preheader.lr.ph, label %bb.d, !llvm.loop !426

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.m
  %.165101 = phi i64 [ %i.dj, %bb.m ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %.470100 = phi i64 [ %.5, %bb.m ], [ 0, %.preheader.lr.ph ] ; 4 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.165101
  %i.by = load i64, ptr %i.bx, align 8            ; 5 uses
  %i.bz = icmp sgt i64 %i.by, 0
  br i1 %i.bz, label %.lr.ph98, label %._crit_edge

.lr.ph98:                                         ; preds = %.preheader
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.d, i64 %.470100
  %i.cb = load i32, ptr %i.ca, align 4            ; 5 uses
  %xtraiter = and i64 %i.by, 3                    ; 3 uses
  %i.cc = icmp ult i64 %i.by, 4
  br i1 %i.cc, label %.epil.preheader, label %.lr.ph98.new

.lr.ph98.new:                                     ; preds = %.lr.ph98
  %unroll_iter = and i64 %i.by, 9223372036854775804
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph98.new
  %.097 = phi i32 [ 0, %.lr.ph98.new ], [ %i.cz, %bb.k ]
  %.27396 = phi i64 [ 0, %.lr.ph98.new ], [ %i.da, %bb.k ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph98.new ], [ %niter.next.3, %bb.k ]
  %i.cd = trunc i64 %.27396 to i32
  %i.ce = lshr i32 %i.cb, %i.cd
  %i.cf = shl i32 %.097, 2
  %i.cg = shl i32 %i.ce, 1
  %i.ch = and i32 %i.cg, 2
  %i.ci = or disjoint i32 %i.cf, %i.ch
  %i.cj = trunc i64 %.27396 to i32
  %i.ck = or disjoint i32 %i.cj, 1
  %i.cl = lshr i32 %i.cb, %i.ck
  %i.cm = and i32 %i.cl, 1
  %i.cn = or disjoint i32 %i.cm, %i.ci
  %i.co = trunc i64 %.27396 to i32
  %i.cp = or disjoint i32 %i.co, 2
  %i.cq = lshr i32 %i.cb, %i.cp
  %i.cr = shl i32 %i.cn, 2
  %i.cs = shl nuw nsw i32 %i.cq, 1
  %i.ct = and i32 %i.cs, 2
  %i.cu = or disjoint i32 %i.cr, %i.ct
  %i.cv = trunc i64 %.27396 to i32
  %i.cw = or disjoint i32 %i.cv, 3
  %i.cx = lshr i32 %i.cb, %i.cw
  %i.cy = and i32 %i.cx, 1
  %i.cz = or disjoint i32 %i.cy, %i.cu            ; 3 uses
  %i.da = add nuw nsw i64 %.27396, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.thread.loopexit.unr-lcssa, label %bb.k, !llvm.loop !423

._crit_edge:                                      ; preds = %.preheader
  %.not77 = icmp eq i64 %i.by, 0
  br i1 %.not77, label %bb.m, label %._crit_edge.thread

._crit_edge.thread.loopexit.unr-lcssa:            ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.thread, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.thread.loopexit.unr-lcssa, %.lr.ph98
  %.097.epil.init = phi i32 [ 0, %.lr.ph98 ], [ %i.cz, %._crit_edge.thread.loopexit.unr-lcssa ]
  %.27396.epil.init = phi i64 [ 0, %.lr.ph98 ], [ %i.da, %._crit_edge.thread.loopexit.unr-lcssa ]
  %lcmp.mod137 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod137)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader
  %.097.epil = phi i32 [ %.097.epil.init, %.epil.preheader ], [ %i.df, %bb.l ]
  %.27396.epil = phi i64 [ %.27396.epil.init, %.epil.preheader ], [ %i.dg, %bb.l ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.l ]
  %i.db = shl i32 %.097.epil, 1
  %i.dc = trunc i64 %.27396.epil to i32
  %i.dd = lshr i32 %i.cb, %i.dc
  %i.de = and i32 %i.dd, 1
  %i.df = or disjoint i32 %i.de, %i.db            ; 2 uses
  %i.dg = add nuw nsw i64 %.27396.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.thread, label %bb.l, !llvm.loop !427

._crit_edge.thread:                               ; preds = %._crit_edge.thread.loopexit.unr-lcssa, %bb.l, %._crit_edge
  %.0.lcssa120 = phi i32 [ 0, %._crit_edge ], [ %i.cz, %._crit_edge.thread.loopexit.unr-lcssa ], [ %i.df, %bb.l ]
  %i.dh = add nsw i64 %.470100, 1
  %i.di = getelementptr inbounds [4 x i8], ptr %i.d, i64 %.470100
  store i32 %.0.lcssa120, ptr %i.di, align 4
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %._crit_edge.thread
  %.5 = phi i64 [ %i.dh, %._crit_edge.thread ], [ %.470100, %._crit_edge ]
  %i.dj = add nuw nsw i64 %.165101, 1             ; 2 uses
  %exitcond109.not = icmp eq i64 %i.dj, %1
  br i1 %exitcond109.not, label %.critedge, label %.preheader, !llvm.loop !422

.critedge:                                        ; preds = %bb.m, %._crit_edge.us, %bb.a, %.critedge.critedge
  %.4 = phi ptr [ null, %.critedge.critedge ], [ %i.d, %._crit_edge.us ], [ %i.d, %bb.a ], [ %i.d, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #62
  ret ptr %.4
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, errnomem: write) uwtable
define dso_local i64 @_book_maptype1_quantvals(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #47 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 4 uses
  %i.c = sitofp i64 %i.b to float
  %i.d = fpext float %i.c to double
  %i.e = load i64, ptr %0, align 8                ; 5 uses
  %i.f = sitofp i64 %i.e to float
  %i.g = fdiv float 1.000000e+00, %i.f
  %i.h = fpext float %i.g to double
  %i.i = tail call double @pow(double noundef %i.d, double noundef %i.h) #62
  %i.j = icmp sgt i64 %i.e, 0
  br i1 %i.j, label %.lr.ph.us.preheader, label %.lr.ph

.lr.ph.us.preheader:                              ; preds = %bb.a
  %i.k = tail call double @llvm.floor.f64(double %i.i)
  %i.l = fptosi double %i.k to i64
  %xtraiter = and i64 %i.e, 7                     ; 3 uses
  %i.m = icmp ult i64 %i.e, 8
  %unroll_iter = and i64 %i.e, 9223372036854775800
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod47 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %bb.b
  %.022.us = phi i64 [ %.1.us, %bb.b ], [ %i.l, %.lr.ph.us.preheader ] ; 12 uses
  %i.n = add nsw i64 %.022.us, 1                  ; 9 uses
  br i1 %i.m, label %.epil.preheader, label %.lr.ph.us.new

.lr.ph.us.new:                                    ; preds = %.lr.ph.us
  %factor.op.mul = mul i64 %.022.us, %.022.us
  %factor.op.mul52 = mul i64 %i.n, %i.n
  %factor.op.mul54 = mul i64 %factor.op.mul, %.022.us
  %factor.op.mul55 = mul i64 %factor.op.mul52, %i.n
  %factor.op.mul56 = mul i64 %factor.op.mul54, %.022.us
  %factor.op.mul57 = mul i64 %factor.op.mul55, %i.n
  %factor.op.mul58 = mul i64 %factor.op.mul56, %.022.us
  %factor.op.mul59 = mul i64 %factor.op.mul57, %i.n
  %factor.op.mul60 = mul i64 %factor.op.mul58, %.022.us
  %factor.op.mul61 = mul i64 %factor.op.mul59, %i.n
  %factor.op.mul62 = mul i64 %factor.op.mul60, %.022.us
  %factor.op.mul63 = mul i64 %factor.op.mul61, %i.n
  %factor.op.mul64 = mul i64 %factor.op.mul62, %.022.us
  %factor.op.mul65 = mul i64 %factor.op.mul63, %i.n
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge.us
  %i.o = icmp sgt i64 %.lcssa44, %i.b
  %.1.v.us = select i1 %i.o, i64 -1, i64 1
  %.1.us = add nsw i64 %.1.v.us, %.022.us
  br label %.lr.ph.us

bb.c:                                             ; preds = %bb.c, %.lr.ph.us.new
  %.02031.us = phi i64 [ 1, %.lr.ph.us.new ], [ %.reass53.reass.reass.reass.reass.reass.reass, %bb.c ]
  %.02130.us = phi i64 [ 1, %.lr.ph.us.new ], [ %.reass.reass.reass.reass.reass.reass.reass, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.us.new ], [ %niter.next.7, %bb.c ]
  %.reass.reass.reass.reass.reass.reass.reass = mul i64 %.02130.us, %factor.op.mul64 ; 3 uses
  %.reass53.reass.reass.reass.reass.reass.reass = mul i64 %.02031.us, %factor.op.mul65 ; 3 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.us.unr-lcssa, label %bb.c, !llvm.loop !428

._crit_edge.us.unr-lcssa:                         ; preds = %bb.c
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.lr.ph.us
  %.02031.us.epil.init = phi i64 [ 1, %.lr.ph.us ], [ %.reass53.reass.reass.reass.reass.reass.reass, %._crit_edge.us.unr-lcssa ]
  %.02130.us.epil.init = phi i64 [ 1, %.lr.ph.us ], [ %.reass.reass.reass.reass.reass.reass.reass, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod47)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %.02031.us.epil = phi i64 [ %.02031.us.epil.init, %.epil.preheader ], [ %i.q, %bb.d ]
  %.02130.us.epil = phi i64 [ %.02130.us.epil.init, %.epil.preheader ], [ %i.p, %bb.d ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.p = mul nsw i64 %.02130.us.epil, %.022.us    ; 2 uses
  %i.q = mul nsw i64 %.02031.us.epil, %i.n        ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.d, !llvm.loop !429

._crit_edge.us:                                   ; preds = %bb.d, %._crit_edge.us.unr-lcssa
  %.lcssa44 = phi i64 [ %.reass.reass.reass.reass.reass.reass.reass, %._crit_edge.us.unr-lcssa ], [ %i.p, %bb.d ] ; 2 uses
  %.lcssa = phi i64 [ %.reass53.reass.reass.reass.reass.reass.reass, %._crit_edge.us.unr-lcssa ], [ %i.q, %bb.d ]
  %.not.us = icmp sle i64 %.lcssa44, %i.b
  %i.r = icmp sgt i64 %.lcssa, %i.b
  %or.cond.us = select i1 %.not.us, i1 %i.r, i1 false
  br i1 %or.cond.us, label %.split35.us, label %bb.b

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  br label %.lr.ph

.split35.us:                                      ; preds = %._crit_edge.us
  ret i64 %.022.us
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #21

; Function Attrs: nofree nounwind memory(readwrite, argmem: read, target_mem: none) uwtable
define dso_local noalias noundef ptr @_book_unquantize(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #48 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %.off = add i32 %i.b, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8              ; 3 uses
  %i.e = and i64 %i.d, 2097151
  %i.f = uitofp nneg i64 %i.e to double           ; 2 uses
  %i.g = and i64 %i.d, 2147483648
  %.not.i = icmp eq i64 %i.g, 0
  %i.h = fneg double %i.f
  %.0.i = select i1 %.not.i, double %i.f, double %i.h
  %i.i = trunc i64 %i.d to i32
  %i.j = lshr i32 %i.i, 21
  %i.k = and i32 %i.j, 1023
  %i.l = add nsw i32 %i.k, -788
  %i.m = tail call double @ldexp(double noundef %.0.i, i32 noundef %i.l) #62
  %i.n = fptrunc double %i.m to float             ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load i64, ptr %i.o, align 8              ; 3 uses
  %i.q = and i64 %i.p, 2097151
  %i.r = uitofp nneg i64 %i.q to double           ; 2 uses
  %i.s = and i64 %i.p, 2147483648
  %.not.i99 = icmp eq i64 %i.s, 0
  %i.t = fneg double %i.r
  %.0.i100 = select i1 %.not.i99, double %i.r, double %i.t
  %i.u = trunc i64 %i.p to i32
  %i.v = lshr i32 %i.u, 21
  %i.w = and i32 %i.v, 1023
  %i.x = add nsw i32 %i.w, -788
  %i.y = tail call double @ldexp(double noundef %.0.i100, i32 noundef %i.x) #62
  %i.z = fptrunc double %i.y to float             ; 2 uses
  %i.aa = sext i32 %1 to i64
  %i.ab = load i64, ptr %0, align 8
  %.fr142 = freeze i64 %i.ab                      ; 24 uses
  %i.ac = mul nsw i64 %.fr142, %i.aa
  %i.ad = tail call noalias ptr @calloc(i64 noundef %i.ac, i64 noundef 4) #71 ; 10 uses
  %i.ae = load i32, ptr %i.a, align 8
  switch i32 %i.ae, label %.loopexit [
    i32 1, label %bb.e
    i32 2, label %.preheader
  ]

.preheader:                                       ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load i64, ptr %i.af, align 8            ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, 0
  br i1 %i.ah, label %.lr.ph109, label %.loopexit

.lr.ph109:                                        ; preds = %.preheader
  %.not = icmp eq ptr %2, null
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = icmp sgt i64 %.fr142, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.al = fpext float %i.z to double              ; 6 uses
  %i.am = fpext float %i.n to double              ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  br i1 %i.aj, label %.lr.ph109.split.us.preheader, label %.loopexit

.lr.ph109.split.us.preheader:                     ; preds = %.lr.ph109
  %xtraiter = and i64 %.fr142, 1
  %i.ao = icmp eq i64 %.fr142, 1
  %unroll_iter = and i64 %.fr142, 9223372036854775806
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod185 = trunc i64 %.fr142 to i1
  %min.iters.check = icmp eq i64 %.fr142, 1
  %n.vec = and i64 %.fr142, 9223372036854775806   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.al, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert177 = insertelement <2 x double> poison, double %i.am, i64 0
  %broadcast.splat178 = shufflevector <2 x double> %broadcast.splatinsert177, <2 x double> poison, <2 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %.fr142, %n.vec
  br label %.lr.ph109.split.us

.lr.ph109.split.us:                               ; preds = %.lr.ph109.split.us.preheader, %bb.d
  %.187108.us = phi i64 [ %i.az, %bb.d ], [ 0, %.lr.ph109.split.us.preheader ] ; 4 uses
  %.2107.us = phi i64 [ %.3.us, %bb.d ], [ 0, %.lr.ph109.split.us.preheader ] ; 4 uses
  br i1 %.not, label %.lr.ph.split.us.us.preheader, label %bb.c

bb.c:                                             ; preds = %.lr.ph109.split.us
  %i.ap = load ptr, ptr %i.ai, align 8
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.187108.us
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.d, label %.lr.ph.split.us113

.lr.ph.split.us.us.preheader:                     ; preds = %.lr.ph109.split.us
  %i.at = load ptr, ptr %i.ak, align 8
  %i.au = mul nuw nsw i64 %.187108.us, %.fr142
  %i.av = getelementptr [8 x i8], ptr %i.at, i64 %i.au
  %i.aw = load i32, ptr %i.an, align 4
  %.fr162 = freeze i32 %i.aw
  %.not96.us163 = icmp eq i32 %.fr162, 0
  %i.ax = mul nsw i64 %.2107.us, %.fr142
  %i.ay = getelementptr [4 x i8], ptr %i.ad, i64 %i.ax
  br label %.lr.ph.split.us.us

bb.d:                                             ; preds = %._crit_edge.us, %bb.c
  %.3.us = phi i64 [ %.2107.us, %bb.c ], [ %i.dc, %._crit_edge.us ]
  %i.az = add nuw nsw i64 %.187108.us, 1          ; 2 uses
  %exitcond154.not = icmp eq i64 %i.az, %i.ag
  br i1 %exitcond154.not, label %.loopexit, label %.lr.ph109.split.us, !llvm.loop !430

.lr.ph.split.split.us114:                         ; preds = %.lr.ph.split.split.us114.preheader, %.lr.ph.split.split.us114
  %.0104.us110 = phi float [ %i.bv, %.lr.ph.split.split.us114 ], [ 0.000000e+00, %.lr.ph.split.split.us114.preheader ]
  %.189103.us111 = phi i64 [ %i.bx, %.lr.ph.split.split.us114 ], [ 0, %.lr.ph.split.split.us114.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.split.split.us114 ], [ 0, %.lr.ph.split.split.us114.preheader ]
  %i.ba = getelementptr [8 x i8], ptr %i.ca, i64 %.189103.us111
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = sitofp i64 %i.bb to float
  %i.bd = tail call float @llvm.fabs.f32(float %i.bc)
  %i.be = fpext nnan ninf float %i.bd to double
  %i.bf = fmul double %i.al, %i.be
  %i.bg = fadd double %i.bf, %i.am
  %i.bh = fpext float %.0104.us110 to double
  %i.bi = fadd double %i.bg, %i.bh
  %i.bj = fptrunc double %i.bi to float           ; 2 uses
  %i.bk = getelementptr [4 x i8], ptr %i.cg, i64 %.189103.us111
  store float %i.bj, ptr %i.bk, align 4
  %i.bl = or disjoint i64 %.189103.us111, 1       ; 2 uses
  %i.bm = getelementptr [8 x i8], ptr %i.ca, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = sitofp i64 %i.bn to float
  %i.bp = tail call float @llvm.fabs.f32(float %i.bo)
  %i.bq = fpext nnan ninf float %i.bp to double
  %i.br = fmul double %i.al, %i.bq
  %i.bs = fadd double %i.br, %i.am
  %i.bt = fpext float %i.bj to double
  %i.bu = fadd double %i.bs, %i.bt
  %i.bv = fptrunc double %i.bu to float           ; 3 uses
  %i.bw = getelementptr [4 x i8], ptr %i.cg, i64 %i.bl
  store float %i.bv, ptr %i.bw, align 4
  %i.bx = add nuw nsw i64 %.189103.us111, 2       ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.loopexit183.unr-lcssa, label %.lr.ph.split.split.us114, !llvm.loop !431

.lr.ph.split.us113:                               ; preds = %bb.c
  %i.by = load ptr, ptr %i.ak, align 8
  %i.bz = mul nuw nsw i64 %.187108.us, %.fr142
  %i.ca = getelementptr [8 x i8], ptr %i.by, i64 %i.bz ; 5 uses
  %i.cb = load i32, ptr %i.an, align 4
  %.fr = freeze i32 %i.cb
  %.not96.us = icmp eq i32 %.fr, 0
  %i.cc = getelementptr inbounds [4 x i8], ptr %2, i64 %.2107.us
  %i.cd = load i32, ptr %i.cc, align 4
  %i.ce = sext i32 %i.cd to i64
  %i.cf = mul nsw i64 %.fr142, %i.ce
  %i.cg = getelementptr [4 x i8], ptr %i.ad, i64 %i.cf ; 5 uses
  br i1 %.not96.us, label %.lr.ph.split.split.us.us.preheader, label %.lr.ph.split.split.us114.preheader

.lr.ph.split.split.us114.preheader:               ; preds = %.lr.ph.split.us113
  br i1 %i.ao, label %.lr.ph.split.split.us114.epil.preheader, label %.lr.ph.split.split.us114

.lr.ph.split.split.us.us.preheader:               ; preds = %.lr.ph.split.us113
  br i1 %min.iters.check, label %.lr.ph.split.split.us.us.preheader181, label %vector.body

vector.body:                                      ; preds = %.lr.ph.split.split.us.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.split.split.us.us.preheader ] ; 3 uses
  %i.ch = getelementptr [8 x i8], ptr %i.ca, i64 %index
  %wide.load = load <2 x i64>, ptr %i.ch, align 8
  %i.ci = sitofp <2 x i64> %wide.load to <2 x float>
  %i.cj = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ci)
  %i.ck = fpext nnan ninf <2 x float> %i.cj to <2 x double>
  %i.cl = fmul <2 x double> %broadcast.splat, %i.ck
  %i.cm = fadd <2 x double> %i.cl, %broadcast.splat178
  %i.cn = fadd <2 x double> %i.cm, zeroinitializer
  %i.co = fptrunc <2 x double> %i.cn to <2 x float>
  %i.cp = getelementptr [4 x i8], ptr %i.cg, i64 %index
  store <2 x float> %i.co, ptr %i.cp, align 4
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !432

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %.lr.ph.split.split.us.us.preheader181

.lr.ph.split.split.us.us.preheader181:            ; preds = %.lr.ph.split.split.us.us.preheader, %middle.block
  %.189103.us106.us.ph = phi i64 [ 0, %.lr.ph.split.split.us.us.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.split.split.us.us

._crit_edge.us.loopexit183.unr-lcssa:             ; preds = %.lr.ph.split.split.us114
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.lr.ph.split.split.us114.epil.preheader

.lr.ph.split.split.us114.epil.preheader:          ; preds = %._crit_edge.us.loopexit183.unr-lcssa, %.lr.ph.split.split.us114.preheader
  %.0104.us110.epil.init = phi float [ 0.000000e+00, %.lr.ph.split.split.us114.preheader ], [ %i.bv, %._crit_edge.us.loopexit183.unr-lcssa ]
  %.189103.us111.epil.init = phi i64 [ 0, %.lr.ph.split.split.us114.preheader ], [ %i.bx, %._crit_edge.us.loopexit183.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod185)
  %i.cr = getelementptr [8 x i8], ptr %i.ca, i64 %.189103.us111.epil.init
  %i.cs = load i64, ptr %i.cr, align 8
  %i.ct = sitofp i64 %i.cs to float
  %i.cu = tail call float @llvm.fabs.f32(float %i.ct)
  %i.cv = fpext nnan ninf float %i.cu to double
  %i.cw = fmul double %i.al, %i.cv
  %i.cx = fadd double %i.cw, %i.am
  %i.cy = fpext float %.0104.us110.epil.init to double
  %i.cz = fadd double %i.cx, %i.cy
  %i.da = fptrunc double %i.cz to float
  %i.db = getelementptr [4 x i8], ptr %i.cg, i64 %.189103.us111.epil.init
  store float %i.da, ptr %i.db, align 4
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %.lr.ph.split.split.us114.epil.preheader, %._crit_edge.us.loopexit183.unr-lcssa, %.lr.ph.split.split.us.us, %.lr.ph.split.us.us, %middle.block
  %i.dc = add nsw i64 %.2107.us, 1
  br label %bb.d

.lr.ph.split.us.us:                               ; preds = %.lr.ph.split.us.us.preheader, %.lr.ph.split.us.us
  %.0104.us.us = phi float [ %.1.us.us, %.lr.ph.split.us.us ], [ 0.000000e+00, %.lr.ph.split.us.us.preheader ] ; 2 uses
  %.189103.us.us = phi i64 [ %i.do, %.lr.ph.split.us.us ], [ 0, %.lr.ph.split.us.us.preheader ] ; 3 uses
  %i.dd = getelementptr [8 x i8], ptr %i.av, i64 %.189103.us.us
  %i.de = load i64, ptr %i.dd, align 8
  %i.df = sitofp i64 %i.de to float
  %i.dg = tail call float @llvm.fabs.f32(float %i.df)
  %i.dh = fpext nnan ninf float %i.dg to double
  %i.di = fmul double %i.al, %i.dh
  %i.dj = fadd double %i.di, %i.am
  %i.dk = fpext float %.0104.us.us to double
  %i.dl = fadd double %i.dj, %i.dk
  %i.dm = fptrunc double %i.dl to float           ; 2 uses
  %.1.us.us = select i1 %.not96.us163, float %.0104.us.us, float %i.dm
  %i.dn = getelementptr [4 x i8], ptr %i.ay, i64 %.189103.us.us
  store float %i.dm, ptr %i.dn, align 4
  %i.do = add nuw nsw i64 %.189103.us.us, 1       ; 2 uses
  %exitcond153.not = icmp eq i64 %i.do, %.fr142
  br i1 %exitcond153.not, label %._crit_edge.us, label %.lr.ph.split.us.us, !llvm.loop !431

.lr.ph.split.split.us.us:                         ; preds = %.lr.ph.split.split.us.us.preheader181, %.lr.ph.split.split.us.us
  %.189103.us106.us = phi i64 [ %i.dz, %.lr.ph.split.split.us.us ], [ %.189103.us106.us.ph, %.lr.ph.split.split.us.us.preheader181 ] ; 3 uses
  %i.dp = getelementptr [8 x i8], ptr %i.ca, i64 %.189103.us106.us
  %i.dq = load i64, ptr %i.dp, align 8
  %i.dr = sitofp i64 %i.dq to float
  %i.ds = tail call float @llvm.fabs.f32(float %i.dr)
  %i.dt = fpext nnan ninf float %i.ds to double
  %i.du = fmul double %i.al, %i.dt
  %i.dv = fadd double %i.du, %i.am
  %i.dw = fadd double %i.dv, 0.000000e+00
  %i.dx = fptrunc double %i.dw to float
  %i.dy = getelementptr [4 x i8], ptr %i.cg, i64 %.189103.us106.us
  store float %i.dx, ptr %i.dy, align 4
  %i.dz = add nuw nsw i64 %.189103.us106.us, 1    ; 2 uses
  %exitcond152.not = icmp eq i64 %i.dz, %.fr142
  br i1 %exitcond152.not, label %._crit_edge.us, label %.lr.ph.split.split.us.us, !llvm.loop !433

bb.e:                                             ; preds = %bb.b
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eb = load i64, ptr %i.ea, align 8            ; 6 uses
  %i.ec = sitofp i64 %i.eb to float
  %i.ed = fpext float %i.ec to double
  %i.ee = sitofp i64 %.fr142 to float
  %i.ef = fdiv float 1.000000e+00, %i.ee
  %i.eg = fpext float %i.ef to double
  %i.eh = tail call double @pow(double noundef %i.ed, double noundef %i.eg) #62
  %i.ei = icmp sgt i64 %.fr142, 0
  br i1 %i.ei, label %.lr.ph.us.preheader.i, label %.lr.ph.i

.lr.ph.us.preheader.i:                            ; preds = %bb.e
  %i.ej = tail call double @llvm.floor.f64(double %i.eh)
  %i.ek = fptosi double %i.ej to i64
  %i.el = add nsw i64 %.fr142, -1
  %xtraiter186 = and i64 %.fr142, 7               ; 3 uses
  %i.em = icmp ult i64 %i.el, 7
  %unroll_iter191 = and i64 %.fr142, 9223372036854775800
  %lcmp.mod187.not = icmp eq i64 %xtraiter186, 0
  %lcmp.mod190 = icmp ne i64 %xtraiter186, 0
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %bb.f, %.lr.ph.us.preheader.i
  %.022.us.i = phi i64 [ %.1.us.i, %bb.f ], [ %i.ek, %.lr.ph.us.preheader.i ] ; 13 uses
  %i.en = add nsw i64 %.022.us.i, 1               ; 9 uses
  br i1 %i.em, label %.epil.preheader, label %.lr.ph.us.i.new

.lr.ph.us.i.new:                                  ; preds = %.lr.ph.us.i
  %factor.op.mul = mul i64 %.022.us.i, %.022.us.i
  %factor.op.mul199 = mul i64 %i.en, %i.en
  %factor.op.mul201 = mul i64 %factor.op.mul, %.022.us.i
  %factor.op.mul202 = mul i64 %factor.op.mul199, %i.en
  %factor.op.mul203 = mul i64 %factor.op.mul201, %.022.us.i
  %factor.op.mul204 = mul i64 %factor.op.mul202, %i.en
  %factor.op.mul205 = mul i64 %factor.op.mul203, %.022.us.i
  %factor.op.mul206 = mul i64 %factor.op.mul204, %i.en
  %factor.op.mul207 = mul i64 %factor.op.mul205, %.022.us.i
  %factor.op.mul208 = mul i64 %factor.op.mul206, %i.en
  %factor.op.mul209 = mul i64 %factor.op.mul207, %.022.us.i
  %factor.op.mul210 = mul i64 %factor.op.mul208, %i.en
  %factor.op.mul211 = mul i64 %factor.op.mul209, %.022.us.i
  %factor.op.mul212 = mul i64 %factor.op.mul210, %i.en
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.us.i
  %i.eo = icmp sgt i64 %.lcssa180, %i.eb
  %.1.v.us.i = select i1 %i.eo, i64 -1, i64 1
  %.1.us.i = add nsw i64 %.1.v.us.i, %.022.us.i
  br label %.lr.ph.us.i

bb.g:                                             ; preds = %bb.g, %.lr.ph.us.i.new
  %.02031.us.i = phi i64 [ 1, %.lr.ph.us.i.new ], [ %.reass200.reass.reass.reass.reass.reass.reass, %bb.g ]
  %.02130.us.i = phi i64 [ 1, %.lr.ph.us.i.new ], [ %.reass.reass.reass.reass.reass.reass.reass, %bb.g ]
  %niter192 = phi i64 [ 0, %.lr.ph.us.i.new ], [ %niter192.next.7, %bb.g ]
  %.reass.reass.reass.reass.reass.reass.reass = mul i64 %.02130.us.i, %factor.op.mul211 ; 3 uses
  %.reass200.reass.reass.reass.reass.reass.reass = mul i64 %.02031.us.i, %factor.op.mul212 ; 3 uses
  %niter192.next.7 = add i64 %niter192, 8         ; 2 uses
  %niter192.ncmp.7 = icmp eq i64 %niter192.next.7, %unroll_iter191
  br i1 %niter192.ncmp.7, label %._crit_edge.us.i.unr-lcssa, label %bb.g, !llvm.loop !428

._crit_edge.us.i.unr-lcssa:                       ; preds = %bb.g
  br i1 %lcmp.mod187.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.lr.ph.us.i
  %.02031.us.i.epil.init = phi i64 [ 1, %.lr.ph.us.i ], [ %.reass200.reass.reass.reass.reass.reass.reass, %._crit_edge.us.i.unr-lcssa ]
  %.02130.us.i.epil.init = phi i64 [ 1, %.lr.ph.us.i ], [ %.reass.reass.reass.reass.reass.reass.reass, %._crit_edge.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod190)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %.02031.us.i.epil = phi i64 [ %.02031.us.i.epil.init, %.epil.preheader ], [ %i.eq, %bb.h ]
  %.02130.us.i.epil = phi i64 [ %.02130.us.i.epil.init, %.epil.preheader ], [ %i.ep, %bb.h ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.ep = mul nsw i64 %.02130.us.i.epil, %.022.us.i ; 2 uses
  %i.eq = mul nsw i64 %.02031.us.i.epil, %i.en    ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter186
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.i, label %bb.h, !llvm.loop !434

._crit_edge.us.i:                                 ; preds = %bb.h, %._crit_edge.us.i.unr-lcssa
  %.lcssa180 = phi i64 [ %.reass.reass.reass.reass.reass.reass.reass, %._crit_edge.us.i.unr-lcssa ], [ %i.ep, %bb.h ] ; 2 uses
  %.lcssa = phi i64 [ %.reass200.reass.reass.reass.reass.reass.reass, %._crit_edge.us.i.unr-lcssa ], [ %i.eq, %bb.h ]
  %.not.us.i = icmp sle i64 %.lcssa180, %i.eb
  %i.er = icmp sgt i64 %.lcssa, %i.eb
  %or.cond.us.i = select i1 %.not.us.i, i1 %i.er, i1 false
  br i1 %or.cond.us.i, label %_book_maptype1_quantvals.exit, label %bb.f

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  br label %.lr.ph.i

_book_maptype1_quantvals.exit:                    ; preds = %._crit_edge.us.i
  %i.es = trunc i64 %.022.us.i to i32             ; 2 uses
  %i.et = icmp sgt i64 %i.eb, 0
  br i1 %i.et, label %.lr.ph126.split.us.preheader, label %.loopexit

.lr.ph126.split.us.preheader:                     ; preds = %_book_maptype1_quantvals.exit
  %.not97 = icmp eq ptr %2, null
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %sext = shl i64 %.022.us.i, 32
  %i.ev = ashr exact i64 %sext, 32                ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ex = fpext float %i.z to double              ; 2 uses
  %i.ey = fpext float %i.n to double              ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  br label %.lr.ph126.split.us

.lr.ph126.split.us:                               ; preds = %.lr.ph126.split.us.preheader, %bb.j
  %.086123.us = phi i64 [ %i.fi, %bb.j ], [ 0, %.lr.ph126.split.us.preheader ] ; 4 uses
  %.090122.us = phi i64 [ %.191.us, %bb.j ], [ 0, %.lr.ph126.split.us.preheader ] ; 4 uses
  br i1 %.not97, label %.lr.ph.split.us.us135.preheader, label %bb.i

bb.i:                                             ; preds = %.lr.ph126.split.us
  %i.fa = load ptr, ptr %i.eu, align 8
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %.086123.us
  %i.fc = load i64, ptr %i.fb, align 8
  %i.fd = icmp eq i64 %i.fc, 0
  br i1 %i.fd, label %bb.j, label %.lr.ph.split.us133

.lr.ph.split.us.us135.preheader:                  ; preds = %.lr.ph126.split.us
  %i.fe = load ptr, ptr %i.ew, align 8
  %i.ff = load i32, ptr %i.ez, align 4
  %.not98.us165 = icmp eq i32 %i.ff, 0
  %i.fg = mul nsw i64 %.090122.us, %.fr142
  %i.fh = getelementptr [4 x i8], ptr %i.ad, i64 %i.fg
  br label %.lr.ph.split.us.us135

bb.j:                                             ; preds = %._crit_edge.us134, %bb.i
  %.191.us = phi i64 [ %.090122.us, %bb.i ], [ %i.gg, %._crit_edge.us134 ]
  %i.fi = add nuw nsw i64 %.086123.us, 1          ; 2 uses
  %exitcond157.not = icmp eq i64 %i.fi, %i.eb
  br i1 %exitcond157.not, label %.loopexit, label %.lr.ph126.split.us, !llvm.loop !435

bb.k:                                             ; preds = %.lr.ph.split.us133, %bb.k
  %.083121.us127 = phi i32 [ 1, %.lr.ph.split.us133 ], [ %i.fx, %bb.k ] ; 2 uses
  %.084120.us128 = phi float [ 0.000000e+00, %.lr.ph.split.us133 ], [ %.185.us130, %bb.k ] ; 2 uses
  %.088119.us129 = phi i64 [ 0, %.lr.ph.split.us133 ], [ %i.fy, %bb.k ] ; 2 uses
  %i.fj = sext i32 %.083121.us127 to i64
  %i.fk = sdiv i64 %.086123.us, %i.fj
  %i.fl = srem i64 %i.fk, %i.ev
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.fz, i64 %i.fl
  %i.fn = load i64, ptr %i.fm, align 8
  %i.fo = sitofp i64 %i.fn to float
  %i.fp = tail call float @llvm.fabs.f32(float %i.fo)
  %i.fq = fpext nnan ninf float %i.fp to double
  %i.fr = fmul double %i.ex, %i.fq
  %i.fs = fadd double %i.fr, %i.ey
  %i.ft = fpext float %.084120.us128 to double
  %i.fu = fadd double %i.fs, %i.ft
  %i.fv = fptrunc double %i.fu to float           ; 2 uses
  %.185.us130 = select i1 %.not98.us, float %.084120.us128, float %i.fv
  %i.fw = getelementptr [4 x i8], ptr %i.gf, i64 %.088119.us129
  store float %i.fv, ptr %i.fw, align 4
  %i.fx = mul nsw i32 %.083121.us127, %i.es
  %i.fy = add nuw nsw i64 %.088119.us129, 1       ; 2 uses
  %exitcond155.not = icmp eq i64 %i.fy, %.fr142
  br i1 %exitcond155.not, label %._crit_edge.us134, label %bb.k, !llvm.loop !436

.lr.ph.split.us133:                               ; preds = %bb.i
  %i.fz = load ptr, ptr %i.ew, align 8
  %i.ga = load i32, ptr %i.ez, align 4
  %.not98.us = icmp eq i32 %i.ga, 0
  %i.gb = getelementptr inbounds [4 x i8], ptr %2, i64 %.090122.us
  %i.gc = load i32, ptr %i.gb, align 4
  %i.gd = sext i32 %i.gc to i64
  %i.ge = mul nsw i64 %.fr142, %i.gd
  %i.gf = getelementptr [4 x i8], ptr %i.ad, i64 %i.ge
  br label %bb.k

._crit_edge.us134:                                ; preds = %bb.k, %.lr.ph.split.us.us135
  %i.gg = add nsw i64 %.090122.us, 1
  br label %bb.j

.lr.ph.split.us.us135:                            ; preds = %.lr.ph.split.us.us135.preheader, %.lr.ph.split.us.us135
  %.083121.us.us = phi i32 [ %i.gv, %.lr.ph.split.us.us135 ], [ 1, %.lr.ph.split.us.us135.preheader ] ; 2 uses
  %.084120.us.us = phi float [ %.185.us.us, %.lr.ph.split.us.us135 ], [ 0.000000e+00, %.lr.ph.split.us.us135.preheader ] ; 2 uses
  %.088119.us.us = phi i64 [ %i.gw, %.lr.ph.split.us.us135 ], [ 0, %.lr.ph.split.us.us135.preheader ] ; 2 uses
  %i.gh = sext i32 %.083121.us.us to i64
  %i.gi = sdiv i64 %.086123.us, %i.gh
  %i.gj = srem i64 %i.gi, %i.ev
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.fe, i64 %i.gj
  %i.gl = load i64, ptr %i.gk, align 8
  %i.gm = sitofp i64 %i.gl to float
  %i.gn = tail call float @llvm.fabs.f32(float %i.gm)
  %i.go = fpext nnan ninf float %i.gn to double
  %i.gp = fmul double %i.ex, %i.go
  %i.gq = fadd double %i.gp, %i.ey
  %i.gr = fpext float %.084120.us.us to double
  %i.gs = fadd double %i.gq, %i.gr
  %i.gt = fptrunc double %i.gs to float           ; 2 uses
  %.185.us.us = select i1 %.not98.us165, float %.084120.us.us, float %i.gt
  %i.gu = getelementptr [4 x i8], ptr %i.fh, i64 %.088119.us.us
  store float %i.gt, ptr %i.gu, align 4
  %i.gv = mul nsw i32 %.083121.us.us, %i.es
  %i.gw = add nuw nsw i64 %.088119.us.us, 1       ; 2 uses
  %exitcond156.not = icmp eq i64 %i.gw, %.fr142
  br i1 %exitcond156.not, label %._crit_edge.us134, label %.lr.ph.split.us.us135, !llvm.loop !436

.loopexit:                                        ; preds = %bb.d, %bb.j, %.lr.ph109, %.preheader, %_book_maptype1_quantvals.exit, %bb.a, %bb.b
  %.082 = phi ptr [ %i.ad, %bb.b ], [ %i.ad, %_book_maptype1_quantvals.exit ], [ null, %bb.a ], [ %i.ad, %.preheader ], [ %i.ad, %.lr.ph109 ], [ %i.ad, %bb.j ], [ %i.ad, %bb.d ]
  ret ptr %.082
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #30

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @vorbis_staticbook_clear(ptr nofree noundef captures(none) %0) local_unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not21 = icmp eq ptr %i.d, null
  br i1 %.not21, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.d) #62
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not22 = icmp eq ptr %i.f, null
  br i1 %.not22, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.f) #62
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not23 = icmp eq ptr %i.h, null
  br i1 %.not23, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = load ptr, ptr %i.h, align 8
  tail call void @free(ptr noundef %i.i) #62
  %i.j = load ptr, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  tail call void @free(ptr noundef %i.l) #62
  %i.m = load ptr, ptr %i.g, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void @free(ptr noundef %i.o) #62
  %i.p = load ptr, ptr %i.g, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  tail call void @free(ptr noundef %i.r) #62
  %i.s = load ptr, ptr %i.g, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.s, i8 0, i64 48, i1 false)
  %i.t = load ptr, ptr %i.g, align 8
end_hunk_2
begin_hunk_3_@_best:bb.a
  %exitcond108.not = icmp eq i32 %i.ax, %i.f
  br i1 %exitcond108.not, label %._crit_edge, label %.lr.ph81.split.us, !llvm.loop !452

bb.c:                                             ; preds = %.preheader.us
  %indvars.iv.next106 = add nsw i64 %indvars.iv105, -1
  %i.az = icmp sgt i64 %indvars.iv105, 1
  br i1 %i.az, label %.preheader.us, label %.loopexit72.us, !llvm.loop !453

.lr.ph81.split:                                   ; preds = %.lr.ph81.split.preheader, %.preheader
  %.06380 = phi i32 [ %i.bn, %.preheader ], [ 0, %.lr.ph81.split.preheader ]
  %.06879 = phi i32 [ %i.bm, %.preheader ], [ 0, %.lr.ph81.split.preheader ]
  %.06978 = phi i32 [ %i.bo, %.preheader ], [ %i.i, %.lr.ph81.split.preheader ] ; 2 uses
  %i.ba = sext i32 %.06978 to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ba
  %i.bc = load float, ptr %i.bb, align 4          ; 2 uses
  %i.bd = fcmp olt float %i.bc, %i.p              ; 2 uses
  %.not174 = xor i1 %i.y, true
  %brmerge = select i1 %i.bd, i1 true, i1 %.not174
  %.mux = select i1 %i.bd, i64 %i.n, i64 %i.z
  br i1 %brmerge, label %.preheader, label %.lr.ph146

.preheader73:                                     ; preds = %.lr.ph146
  %indvars.iv.next = add nsw i64 %indvars.iv.next145, 1 ; 2 uses
  %i.be = icmp slt i64 %indvars.iv.next, %i.x
  br i1 %i.be, label %.lr.ph146, label %.preheader, !llvm.loop !451

.lr.ph146:                                        ; preds = %.lr.ph81.split, %.preheader73
  %indvars.iv.next145 = phi i64 [ %indvars.iv.next, %.preheader73 ], [ %indvars.iv.next144, %.lr.ph81.split ] ; 3 uses
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.m, i64 %indvars.iv.next145
  %i.bg = load float, ptr %i.bf, align 4
  %i.bh = fcmp olt float %i.bc, %i.bg
  br i1 %i.bh, label %.preheader, label %.preheader73, !llvm.loop !451

.preheader:                                       ; preds = %.lr.ph81.split, %.lr.ph146, %.preheader73
  %.pre-phi = phi i64 [ %.mux, %.lr.ph81.split ], [ %indvars.iv.next145, %.lr.ph146 ], [ %i.z, %.preheader73 ]
  %i.bi = mul nsw i32 %i.t, %.06879
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.v, i64 %.pre-phi
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = add i32 %i.bi, %i.bl                    ; 2 uses
  %i.bn = add nuw nsw i32 %.06380, 1              ; 2 uses
  %i.bo = sub nsw i32 %.06978, %2
  %exitcond.not = icmp eq i32 %i.bn, %i.f
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph81.split, !llvm.loop !452

._crit_edge:                                      ; preds = %.preheader, %.loopexit72.us, %bb.b
  %.068.lcssa = phi i32 [ 0, %bb.b ], [ %i.aw, %.loopexit72.us ], [ %i.bm, %.preheader ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = sext i32 %.068.lcssa to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.br
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = icmp slt i64 %i.bt, 1
  br i1 %i.bu, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bw = load i64, ptr %i.bv, align 8            ; 5 uses
  %i.bx = icmp sgt i64 %i.bw, 0
  br i1 %i.bx, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bz = load ptr, ptr %i.by, align 8            ; 6 uses
  %i.ca = icmp sgt i32 %i.f, 0
  %i.cb = sext i32 %2 to i64                      ; 3 uses
  %wide.trip.count.i = and i64 %.fr94, 2147483647
  %sext = shl i64 %.fr94, 32
  %i.cc = ashr exact i64 %sext, 30
  br i1 %i.ca, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %xtraiter = and i64 %i.bw, 3                    ; 3 uses
  %i.cd = icmp ult i64 %i.bw, 4
  br i1 %i.cd, label %.lr.ph.split.epil.preheader, label %.lr.ph.split.preheader.new

.lr.ph.split.preheader.new:                       ; preds = %.lr.ph.split.preheader
  %unroll_iter = and i64 %i.bw, 9223372036854775804
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8
  %xtraiter161 = and i64 %.fr94, 1
  %i.cg = icmp eq i64 %wide.trip.count.i, 1
  %unroll_iter166 = and i64 %.fr94, 2147483646
  %lcmp.mod163.not = icmp eq i64 %xtraiter161, 0
  %lcmp.mod165 = trunc i64 %.fr94 to i1
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.e
  %indvars.iv113 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next114, %bb.e ] ; 3 uses
  %.05686.us = phi ptr [ %i.cf, %.lr.ph.split.us.preheader ], [ %i.da, %bb.e ] ; 4 uses
  %.05785.us = phi float [ 0.000000e+00, %.lr.ph.split.us.preheader ], [ %.2.us, %bb.e ] ; 3 uses
  %.05984.us = phi i32 [ -1, %.lr.ph.split.us.preheader ], [ %.261.us, %bb.e ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv113
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = icmp sgt i64 %i.ci, 0
  br i1 %i.cj, label %.lr.ph.i.us.preheader, label %bb.e

.lr.ph.i.us.preheader:                            ; preds = %.lr.ph.split.us
  br i1 %i.cg, label %.lr.ph.i.us.epil.preheader, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us.preheader, %.lr.ph.i.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us.1, %.lr.ph.i.us ], [ 0, %.lr.ph.i.us.preheader ] ; 4 uses
  %.01112.i.us = phi float [ %i.cz, %.lr.ph.i.us ], [ 0.000000e+00, %.lr.ph.i.us.preheader ]
  %niter167 = phi i64 [ %niter167.next.1, %.lr.ph.i.us ], [ 0, %.lr.ph.i.us.preheader ]
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %.05686.us, i64 %indvars.iv.i.us
  %i.cl = load float, ptr %i.ck, align 4
  %i.cm = mul nsw i64 %indvars.iv.i.us, %i.cb
  %i.cn = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cm
  %i.co = load float, ptr %i.cn, align 4
  %i.cp = fsub float %i.cl, %i.co                 ; 2 uses
  %i.cq = fmul float %i.cp, %i.cp
  %i.cr = fadd float %.01112.i.us, %i.cq
  %indvars.iv.next.i.us = or disjoint i64 %indvars.iv.i.us, 1 ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %.05686.us, i64 %indvars.iv.next.i.us
  %i.ct = load float, ptr %i.cs, align 4
  %i.cu = mul nsw i64 %indvars.iv.next.i.us, %i.cb
  %i.cv = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cu
  %i.cw = load float, ptr %i.cv, align 4
  %i.cx = fsub float %i.ct, %i.cw                 ; 2 uses
  %i.cy = fmul float %i.cx, %i.cx
  %i.cz = fadd float %i.cr, %i.cy                 ; 3 uses
  %indvars.iv.next.i.us.1 = add nuw nsw i64 %indvars.iv.i.us, 2 ; 2 uses
  %niter167.next.1 = add i64 %niter167, 2         ; 2 uses
  %niter167.ncmp.1 = icmp eq i64 %niter167.next.1, %unroll_iter166
  br i1 %niter167.ncmp.1, label %_dist.exit.loopexit.us.unr-lcssa, label %.lr.ph.i.us, !llvm.loop !454

bb.e:                                             ; preds = %_dist.exit.loopexit.us, %.lr.ph.split.us
  %.261.us = phi i32 [ %.160.us, %_dist.exit.loopexit.us ], [ %.05984.us, %.lr.ph.split.us ] ; 2 uses
  %.2.us = phi float [ %.158.us, %_dist.exit.loopexit.us ], [ %.05785.us, %.lr.ph.split.us ]
  %i.da = getelementptr inbounds nuw i8, ptr %.05686.us, i64 %i.cc
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1 ; 2 uses
  %exitcond116.not = icmp eq i64 %indvars.iv.next114, %i.bw
  br i1 %exitcond116.not, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !455

_dist.exit.loopexit.us.unr-lcssa:                 ; preds = %.lr.ph.i.us
  br i1 %lcmp.mod163.not, label %_dist.exit.loopexit.us, label %.lr.ph.i.us.epil.preheader

.lr.ph.i.us.epil.preheader:                       ; preds = %_dist.exit.loopexit.us.unr-lcssa, %.lr.ph.i.us.preheader
  %indvars.iv.i.us.epil.init = phi i64 [ 0, %.lr.ph.i.us.preheader ], [ %indvars.iv.next.i.us.1, %_dist.exit.loopexit.us.unr-lcssa ] ; 2 uses
  %.01112.i.us.epil.init = phi float [ 0.000000e+00, %.lr.ph.i.us.preheader ], [ %i.cz, %_dist.exit.loopexit.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod165)
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %.05686.us, i64 %indvars.iv.i.us.epil.init
  %i.dc = load float, ptr %i.db, align 4
  %i.dd = mul nsw i64 %indvars.iv.i.us.epil.init, %i.cb
  %i.de = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dd
  %i.df = load float, ptr %i.de, align 4
  %i.dg = fsub float %i.dc, %i.df                 ; 2 uses
  %i.dh = fmul float %i.dg, %i.dg
  %i.di = fadd float %.01112.i.us.epil.init, %i.dh
  br label %_dist.exit.loopexit.us

_dist.exit.loopexit.us:                           ; preds = %_dist.exit.loopexit.us.unr-lcssa, %.lr.ph.i.us.epil.preheader
  %.lcssa = phi float [ %i.cz, %_dist.exit.loopexit.us.unr-lcssa ], [ %i.di, %.lr.ph.i.us.epil.preheader ] ; 2 uses
  %i.dj = icmp eq i32 %.05984.us, -1
  %i.dk = fcmp olt float %.lcssa, %.05785.us
  %or.cond.us = select i1 %i.dj, i1 true, i1 %i.dk ; 2 uses
  %i.dl = trunc nuw nsw i64 %indvars.iv113 to i32
  %.160.us = select i1 %or.cond.us, i32 %i.dl, i32 %.05984.us
  %.158.us = select i1 %or.cond.us, float %.lcssa, float %.05785.us
  br label %bb.e

.lr.ph.split:                                     ; preds = %.lr.ph.split, %.lr.ph.split.preheader.new
  %indvars.iv109 = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %indvars.iv.next110.3, %.lr.ph.split ] ; 6 uses
  %.05984 = phi i32 [ -1, %.lr.ph.split.preheader.new ], [ %.261.3, %.lr.ph.split ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %niter.next.3, %.lr.ph.split ]
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv109
  %i.dn = load i64, ptr %i.dm, align 8
  %i.do = icmp sgt i64 %i.dn, 0
  %i.dp = icmp eq i32 %.05984, -1
  %i.dq = trunc nuw nsw i64 %indvars.iv109 to i32
  %i.dr = select i1 %i.do, i1 %i.dp, i1 false
  %.261 = select i1 %i.dr, i32 %i.dq, i32 %.05984 ; 2 uses
  %indvars.iv.next110 = or disjoint i64 %indvars.iv109, 1 ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv.next110
  %i.dt = load i64, ptr %i.ds, align 8
  %i.du = icmp sgt i64 %i.dt, 0
  %i.dv = icmp eq i32 %.261, -1
  %i.dw = trunc nuw nsw i64 %indvars.iv.next110 to i32
  %i.dx = select i1 %i.du, i1 %i.dv, i1 false
  %.261.1 = select i1 %i.dx, i32 %i.dw, i32 %.261 ; 2 uses
  %indvars.iv.next110.1 = or disjoint i64 %indvars.iv109, 2 ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv.next110.1
  %i.dz = load i64, ptr %i.dy, align 8
  %i.ea = icmp sgt i64 %i.dz, 0
  %i.eb = icmp eq i32 %.261.1, -1
  %i.ec = trunc nuw nsw i64 %indvars.iv.next110.1 to i32
  %i.ed = select i1 %i.ea, i1 %i.eb, i1 false
  %.261.2 = select i1 %i.ed, i32 %i.ec, i32 %.261.1 ; 2 uses
  %indvars.iv.next110.2 = or disjoint i64 %indvars.iv109, 3 ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv.next110.2
  %i.ef = load i64, ptr %i.ee, align 8
  %i.eg = icmp sgt i64 %i.ef, 0
  %i.eh = icmp eq i32 %.261.2, -1
  %i.ei = trunc nuw nsw i64 %indvars.iv.next110.2 to i32
  %i.ej = select i1 %i.eg, i1 %i.eh, i1 false
  %.261.3 = select i1 %i.ej, i32 %i.ei, i32 %.261.2 ; 3 uses
  %indvars.iv.next110.3 = add nuw nsw i64 %indvars.iv109, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit151.unr-lcssa, label %.lr.ph.split, !llvm.loop !455

.loopexit.loopexit151.unr-lcssa:                  ; preds = %.lr.ph.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.split.epil.preheader

.lr.ph.split.epil.preheader:                      ; preds = %.loopexit.loopexit151.unr-lcssa, %.lr.ph.split.preheader
  %indvars.iv109.epil.init = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next110.3, %.loopexit.loopexit151.unr-lcssa ]
  %.05984.epil.init = phi i32 [ -1, %.lr.ph.split.preheader ], [ %.261.3, %.loopexit.loopexit151.unr-lcssa ]
  %lcmp.mod160 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod160)
  br label %.lr.ph.split.epil

.lr.ph.split.epil:                                ; preds = %.lr.ph.split.epil, %.lr.ph.split.epil.preheader
  %indvars.iv109.epil = phi i64 [ %indvars.iv.next110.epil, %.lr.ph.split.epil ], [ %indvars.iv109.epil.init, %.lr.ph.split.epil.preheader ] ; 3 uses
  %.05984.epil = phi i32 [ %.261.epil, %.lr.ph.split.epil ], [ %.05984.epil.init, %.lr.ph.split.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.split.epil ], [ 0, %.lr.ph.split.epil.preheader ]
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv109.epil
  %i.el = load i64, ptr %i.ek, align 8
  %i.em = icmp sgt i64 %i.el, 0
  %i.en = icmp eq i32 %.05984.epil, -1
  %i.eo = trunc nuw nsw i64 %indvars.iv109.epil to i32
  %i.ep = select i1 %i.em, i1 %i.en, i1 false
  %.261.epil = select i1 %i.ep, i32 %i.eo, i32 %.05984.epil ; 2 uses
  %indvars.iv.next110.epil = add nuw nsw i64 %indvars.iv109.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.split.epil, !llvm.loop !456

.loopexit:                                        ; preds = %.loopexit.loopexit151.unr-lcssa, %.lr.ph.split.epil, %bb.e, %bb.d, %._crit_edge
  %.1 = phi i32 [ %.068.lcssa, %._crit_edge ], [ -1, %bb.d ], [ %.261.us, %bb.e ], [ %.261.3, %.loopexit.loopexit151.unr-lcssa ], [ %.261.epil, %.lr.ph.split.epil ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i64 -1, 4294967296) i64 @vorbis_book_codeword(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #29 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = sext i32 %1 to i64
  %i.f = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4
  %i.h = zext i32 %i.g to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.h, %bb.b ], [ -1, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @vorbis_book_codelen(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #29 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = sext i32 %1 to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.g, %bb.b ], [ -1, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local range(i32 -1, 1) i32 @vorbis_staticbook_pack(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #14 {
bb.a:
  tail call void @oggpack_write(ptr noundef %1, i64 noundef 5653314, i32 noundef 24)
  %i.a = load i64, ptr %0, align 8
  tail call void @oggpack_write(ptr noundef %1, i64 noundef %i.a, i32 noundef 16)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.c = load i64, ptr %i.b, align 8
  tail call void @oggpack_write(ptr noundef %1, i64 noundef %i.c, i32 noundef 24)
  %i.d = load i64, ptr %i.b, align 8              ; 3 uses
  %i.e = icmp sgt i64 %i.d, 1
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.094113 = phi i64 [ 1, %.lr.ph ], [ %i.n, %bb.d ] ; 4 uses
  %i.h = getelementptr [8 x i8], ptr %i.g, i64 %.094113 ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 -8
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.h, align 8
  %i.m = icmp slt i64 %i.l, %i.j
  br i1 %i.m, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = add nuw nsw i64 %.094113, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.n, %i.d
  br i1 %exitcond.not, label %._crit_edge.thread, label %bb.b, !llvm.loop !457

._crit_edge:                                      ; preds = %bb.c, %bb.b, %bb.a
  %.094.lcssa = phi i64 [ 1, %bb.a ], [ %.094113, %bb.b ], [ %.094113, %bb.c ]
  %.not = icmp eq i64 %.094.lcssa, %i.d
  br i1 %.not, label %._crit_edge.thread, label %bb.o

._crit_edge.thread:                               ; preds = %bb.d, %._crit_edge
  tail call void @oggpack_write(ptr noundef %1, i64 noundef 1, i32 noundef 1)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = load i64, ptr %i.p, align 8
  %i.r = add nsw i64 %i.q, -1
  tail call void @oggpack_write(ptr noundef %1, i64 noundef %i.r, i32 noundef 5)
  %i.s = load i64, ptr %i.b, align 8              ; 3 uses
  %i.t = icmp sgt i64 %i.s, 1
  br i1 %i.t, label %.lr.ph141, label %._crit_edge142

.lr.ph141:                                        ; preds = %._crit_edge.thread
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 15 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph141, %.loopexit106
  %i.y = phi i64 [ %i.s, %.lr.ph141 ], [ %i.ef, %.loopexit106 ] ; 2 uses
  %.1139 = phi i64 [ 1, %.lr.ph141 ], [ %i.eg, %.loopexit106 ] ; 5 uses
  %.095138 = phi i64 [ 0, %.lr.ph141 ], [ %.297, %.loopexit106 ] ; 3 uses
  %i.z = load ptr, ptr %i.o, align 8
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.1139 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8            ; 3 uses
  %i.ac = getelementptr i8, ptr %i.aa, i64 -8
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = icmp sgt i64 %i.ab, %i.ad
  br i1 %i.ae, label %.preheader.preheader, label %.loopexit106

.preheader.preheader:                             ; preds = %bb.e
  %i.af = sub nsw i64 %.1139, %.095138
  %i.ag = sub nsw i64 %i.y, %.095138
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ah, i1 false)
  %i.aj = sub nuw nsw i32 32, %i.ai               ; 2 uses
  %i.ak = load i64, ptr %1, align 8
  %i.al = add nsw i64 %i.ak, 4
  %i.am = load i64, ptr %i.u, align 8             ; 2 uses
  %.not.i.peel = icmp slt i64 %i.al, %i.am
  br i1 %.not.i.peel, label %._crit_edge.i.peel, label %bb.f

bb.f:                                             ; preds = %.preheader.preheader
  %i.an = load ptr, ptr %i.v, align 8
  %i.ao = add nsw i64 %i.am, 256
  %i.ap = tail call ptr @realloc(ptr noundef %i.an, i64 noundef %i.ao) #66 ; 2 uses
  store ptr %i.ap, ptr %i.v, align 8
  %i.aq = load i64, ptr %i.u, align 8
  %i.ar = add nsw i64 %i.aq, 256
  store i64 %i.ar, ptr %i.u, align 8
  %i.as = load i64, ptr %1, align 8
  %i.at = getelementptr inbounds i8, ptr %i.ap, i64 %i.as ; 2 uses
  store ptr %i.at, ptr %i.w, align 8
  br label %bb.g

._crit_edge.i.peel:                               ; preds = %.preheader.preheader
  %.pre.i.peel = load ptr, ptr %i.w, align 8
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.peel, %bb.f
  %i.au = phi ptr [ %.pre.i.peel, %._crit_edge.i.peel ], [ %i.at, %bb.f ] ; 2 uses
  %i.av = zext nneg i32 %i.aj to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr @mask, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = and i64 %i.ax, %i.af                    ; 5 uses
  %i.az = load i32, ptr %i.x, align 8             ; 2 uses
  %i.ba = add nsw i32 %i.az, %i.aj                ; 6 uses
  %i.bb = zext nneg i32 %i.az to i64
  %i.bc = shl i64 %i.ay, %i.bb
  %i.bd = load i8, ptr %i.au, align 1
  %i.be = trunc i64 %i.bc to i8
  %i.bf = or i8 %i.bd, %i.be
  store i8 %i.bf, ptr %i.au, align 1
  %i.bg = icmp sgt i32 %i.ba, 7
  br i1 %i.bg, label %bb.h, label %oggpack_write.exit.peel

bb.h:                                             ; preds = %bb.g
  %i.bh = load i32, ptr %i.x, align 8
  %i.bi = sub nsw i32 8, %i.bh
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = lshr i64 %i.ay, %i.bj
end_hunk_3
begin_hunk_4_@vorbis_staticbook_pack:bb.a
  %.297 = phi i64 [ %.095138, %bb.e ], [ %.1139, %.loopexit106.loopexit ] ; 2 uses
  %i.eg = add nuw nsw i64 %.1139, 1               ; 3 uses
  %i.eh = icmp slt i64 %i.eg, %i.ef
  br i1 %i.eh, label %bb.e, label %._crit_edge142, !llvm.loop !459

._crit_edge142:                                   ; preds = %.loopexit106, %._crit_edge.thread
  %.095.lcssa = phi i64 [ 0, %._crit_edge.thread ], [ %.297, %.loopexit106 ] ; 2 uses
  %.1.lcssa = phi i64 [ 1, %._crit_edge.thread ], [ %i.eg, %.loopexit106 ]
  %.lcssa110 = phi i64 [ %i.s, %._crit_edge.thread ], [ %i.ef, %.loopexit106 ]
  %i.ei = sub nsw i64 %.1.lcssa, %.095.lcssa
  %i.ej = sub nsw i64 %.lcssa110, %.095.lcssa
  %i.ek = trunc i64 %i.ej to i32
  %i.el = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ek, i1 false)
  %i.em = sub nuw nsw i32 32, %i.el
  tail call void @oggpack_write(ptr noundef %1, i64 noundef %i.ei, i32 noundef %i.em)
  br label %.loopexit107

bb.o:                                             ; preds = %._crit_edge
  tail call void @oggpack_write(ptr noundef %1, i64 noundef 0, i32 noundef 1)
  %i.en = load i64, ptr %i.b, align 8             ; 3 uses
  %i.eo = icmp sgt i64 %i.en, 0
  br i1 %i.eo, label %.lr.ph123, label %._crit_edge124

.lr.ph123:                                        ; preds = %bb.o
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph123, %bb.q
  %.2121 = phi i64 [ 0, %.lr.ph123 ], [ %i.eu, %bb.q ] ; 3 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %.2121
  %i.es = load i64, ptr %i.er, align 8
  %i.et = icmp eq i64 %i.es, 0
  br i1 %i.et, label %._crit_edge124, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.eu = add nuw nsw i64 %.2121, 1               ; 2 uses
  %exitcond152.not = icmp eq i64 %i.eu, %i.en
  br i1 %exitcond152.not, label %._crit_edge124.thread, label %bb.p, !llvm.loop !460

._crit_edge124:                                   ; preds = %bb.p, %bb.o
  %.2.lcssa = phi i64 [ 0, %bb.o ], [ %.2121, %bb.p ]
  %i.ev = icmp eq i64 %.2.lcssa, %i.en
  br i1 %i.ev, label %._crit_edge124.thread, label %bb.s

._crit_edge124.thread:                            ; preds = %bb.q, %._crit_edge124
  tail call void @oggpack_write(ptr noundef %1, i64 noundef 0, i32 noundef 1)
  %i.ew = load i64, ptr %i.b, align 8
  %i.ex = icmp sgt i64 %i.ew, 0
  br i1 %i.ex, label %.lr.ph135, label %.loopexit107

.lr.ph135:                                        ; preds = %._crit_edge124.thread
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph135, %bb.r
  %.3133 = phi i64 [ 0, %.lr.ph135 ], [ %i.fd, %bb.r ] ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %.3133
  %i.fb = load i64, ptr %i.fa, align 8
  %i.fc = add nsw i64 %i.fb, -1
  tail call void @oggpack_write(ptr noundef %1, i64 noundef %i.fc, i32 noundef 5)
  %i.fd = add nuw nsw i64 %.3133, 1               ; 2 uses
  %i.fe = load i64, ptr %i.b, align 8
  %i.ff = icmp slt i64 %i.fd, %i.fe
  br i1 %i.ff, label %bb.r, label %.loopexit107, !llvm.loop !461

bb.s:                                             ; preds = %._crit_edge124
  tail call void @oggpack_write(ptr noundef %1, i64 noundef 1, i32 noundef 1)
  %i.fg = load i64, ptr %i.b, align 8
  %i.fh = icmp sgt i64 %i.fg, 0
  br i1 %i.fh, label %.lr.ph132, label %.loopexit107

.lr.ph132:                                        ; preds = %bb.s
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph132, %bb.w
  %.4130 = phi i64 [ 0, %.lr.ph132 ], [ %i.fr, %bb.w ] ; 3 uses
  %i.fj = load ptr, ptr %i.fi, align 8
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %.4130
  %i.fl = load i64, ptr %i.fk, align 8
  %i.fm = icmp eq i64 %i.fl, 0
  br i1 %i.fm, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void @oggpack_write(ptr noundef %1, i64 noundef 0, i32 noundef 1)
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  tail call void @oggpack_write(ptr noundef %1, i64 noundef 1, i32 noundef 1)
  %i.fn = load ptr, ptr %i.fi, align 8
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %.4130
  %i.fp = load i64, ptr %i.fo, align 8
  %i.fq = add nsw i64 %i.fp, -1
  tail call void @oggpack_write(ptr noundef %1, i64 noundef %i.fq, i32 noundef 5)
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.fr = add nuw nsw i64 %.4130, 1               ; 2 uses
  %i.fs = load i64, ptr %i.b, align 8
  %i.ft = icmp slt i64 %i.fr, %i.fs
  br i1 %i.ft, label %bb.t, label %.loopexit107, !llvm.loop !462

.loopexit107:                                     ; preds = %bb.w, %bb.r, %bb.s, %._crit_edge124.thread, %._crit_edge142
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.fv = load i32, ptr %i.fu, align 8
  %i.fw = sext i32 %i.fv to i64
  tail call void @oggpack_write(ptr noundef %1, i64 noundef %i.fw, i32 noundef 4)
  %i.fx = load i32, ptr %i.fu, align 8
  switch i32 %i.fx, label %bb.ae [
    i32 0, label %.loopexit
    i32 1, label %bb.x
    i32 2, label %bb.x
  ]

bb.x:                                             ; preds = %.loopexit107, %.loopexit107
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.fz = load ptr, ptr %i.fy, align 8
  %.not104 = icmp eq ptr %i.fz, null
  br i1 %.not104, label %bb.ae, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gb = load i64, ptr %i.ga, align 8
  tail call void @oggpack_write(ptr noundef %1, i64 noundef %i.gb, i32 noundef 32)
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gd = load i64, ptr %i.gc, align 8
  tail call void @oggpack_write(ptr noundef %1, i64 noundef %i.gd, i32 noundef 32)
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.gf = load i32, ptr %i.ge, align 8
  %i.gg = add nsw i32 %i.gf, -1
  %i.gh = sext i32 %i.gg to i64
  tail call void @oggpack_write(ptr noundef %1, i64 noundef %i.gh, i32 noundef 4)
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.gj = load i32, ptr %i.gi, align 4
  %i.gk = sext i32 %i.gj to i64
  tail call void @oggpack_write(ptr noundef %1, i64 noundef %i.gk, i32 noundef 1)
  %i.gl = load i32, ptr %i.fu, align 8
  switch i32 %i.gl, label %.loopexit [
    i32 1, label %bb.z
    i32 2, label %bb.ad
  ]

bb.z:                                             ; preds = %bb.y
  %i.gm = load i64, ptr %i.b, align 8             ; 4 uses
  %i.gn = sitofp i64 %i.gm to float
  %i.go = fpext float %i.gn to double
  %i.gp = load i64, ptr %0, align 8               ; 5 uses
  %i.gq = sitofp i64 %i.gp to float
  %i.gr = fdiv float 1.000000e+00, %i.gq
  %i.gs = fpext float %i.gr to double
  %i.gt = tail call double @pow(double noundef %i.go, double noundef %i.gs) #62
  %i.gu = icmp sgt i64 %i.gp, 0
  br i1 %i.gu, label %.lr.ph.us.preheader.i, label %.lr.ph.i

.lr.ph.us.preheader.i:                            ; preds = %bb.z
  %i.gv = tail call double @llvm.floor.f64(double %i.gt)
  %i.gw = fptosi double %i.gv to i64
  %xtraiter = and i64 %i.gp, 7                    ; 3 uses
  %i.gx = icmp ult i64 %i.gp, 8
  %unroll_iter = and i64 %i.gp, 9223372036854775800
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod206 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %bb.aa, %.lr.ph.us.preheader.i
  %.022.us.i = phi i64 [ %.1.us.i, %bb.aa ], [ %i.gw, %.lr.ph.us.preheader.i ] ; 12 uses
  %i.gy = add nsw i64 %.022.us.i, 1               ; 9 uses
  br i1 %i.gx, label %.epil.preheader, label %.lr.ph.us.i.new

.lr.ph.us.i.new:                                  ; preds = %.lr.ph.us.i
  %factor.op.mul = mul i64 %.022.us.i, %.022.us.i
  %factor.op.mul215 = mul i64 %i.gy, %i.gy
  %factor.op.mul217 = mul i64 %factor.op.mul, %.022.us.i
  %factor.op.mul218 = mul i64 %factor.op.mul215, %i.gy
  %factor.op.mul219 = mul i64 %factor.op.mul217, %.022.us.i
  %factor.op.mul220 = mul i64 %factor.op.mul218, %i.gy
  %factor.op.mul221 = mul i64 %factor.op.mul219, %.022.us.i
  %factor.op.mul222 = mul i64 %factor.op.mul220, %i.gy
  %factor.op.mul223 = mul i64 %factor.op.mul221, %.022.us.i
  %factor.op.mul224 = mul i64 %factor.op.mul222, %i.gy
  %factor.op.mul225 = mul i64 %factor.op.mul223, %.022.us.i
  %factor.op.mul226 = mul i64 %factor.op.mul224, %i.gy
  %factor.op.mul227 = mul i64 %factor.op.mul225, %.022.us.i
  %factor.op.mul228 = mul i64 %factor.op.mul226, %i.gy
  br label %bb.ab

bb.aa:                                            ; preds = %._crit_edge.us.i
  %i.gz = icmp sgt i64 %.lcssa197, %i.gm
  %.1.v.us.i = select i1 %i.gz, i64 -1, i64 1
  %.1.us.i = add nsw i64 %.1.v.us.i, %.022.us.i
  br label %.lr.ph.us.i

bb.ab:                                            ; preds = %bb.ab, %.lr.ph.us.i.new
  %.02031.us.i = phi i64 [ 1, %.lr.ph.us.i.new ], [ %.reass216.reass.reass.reass.reass.reass.reass, %bb.ab ]
  %.02130.us.i = phi i64 [ 1, %.lr.ph.us.i.new ], [ %.reass.reass.reass.reass.reass.reass.reass, %bb.ab ]
  %niter = phi i64 [ 0, %.lr.ph.us.i.new ], [ %niter.next.7, %bb.ab ]
  %.reass.reass.reass.reass.reass.reass.reass = mul i64 %.02130.us.i, %factor.op.mul227 ; 3 uses
  %.reass216.reass.reass.reass.reass.reass.reass = mul i64 %.02031.us.i, %factor.op.mul228 ; 3 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.us.i.unr-lcssa, label %bb.ab, !llvm.loop !428

._crit_edge.us.i.unr-lcssa:                       ; preds = %bb.ab
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.lr.ph.us.i
  %.02031.us.i.epil.init = phi i64 [ 1, %.lr.ph.us.i ], [ %.reass216.reass.reass.reass.reass.reass.reass, %._crit_edge.us.i.unr-lcssa ]
  %.02130.us.i.epil.init = phi i64 [ 1, %.lr.ph.us.i ], [ %.reass.reass.reass.reass.reass.reass.reass, %._crit_edge.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod206)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.epil.preheader
  %.02031.us.i.epil = phi i64 [ %.02031.us.i.epil.init, %.epil.preheader ], [ %i.hb, %bb.ac ]
  %.02130.us.i.epil = phi i64 [ %.02130.us.i.epil.init, %.epil.preheader ], [ %i.ha, %bb.ac ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ac ]
  %i.ha = mul nsw i64 %.02130.us.i.epil, %.022.us.i ; 2 uses
  %i.hb = mul nsw i64 %.02031.us.i.epil, %i.gy    ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.i, label %bb.ac, !llvm.loop !463

._crit_edge.us.i:                                 ; preds = %bb.ac, %._crit_edge.us.i.unr-lcssa
  %.lcssa197 = phi i64 [ %.reass.reass.reass.reass.reass.reass.reass, %._crit_edge.us.i.unr-lcssa ], [ %i.ha, %bb.ac ] ; 2 uses
  %.lcssa = phi i64 [ %.reass216.reass.reass.reass.reass.reass.reass, %._crit_edge.us.i.unr-lcssa ], [ %i.hb, %bb.ac ]
  %.not.us.i = icmp sle i64 %.lcssa197, %i.gm
  %i.hc = icmp sgt i64 %.lcssa, %i.gm
  %or.cond.us.i = select i1 %.not.us.i, i1 %i.hc, i1 false
  br i1 %or.cond.us.i, label %_book_maptype1_quantvals.exit, label %bb.aa

.lr.ph.i:                                         ; preds = %bb.z, %.lr.ph.i
  br label %.lr.ph.i

bb.ad:                                            ; preds = %bb.y
  %i.hd = load i64, ptr %i.b, align 8
  %i.he = load i64, ptr %0, align 8
  %i.hf = mul nsw i64 %i.he, %i.hd
  br label %_book_maptype1_quantvals.exit

_book_maptype1_quantvals.exit:                    ; preds = %._crit_edge.us.i, %bb.ad
  %.0 = phi i64 [ %i.hf, %bb.ad ], [ %.022.us.i, %._crit_edge.us.i ]
  %sext = shl i64 %.0, 32
  %i.hg = ashr exact i64 %sext, 32                ; 2 uses
  %i.hh = icmp sgt i64 %i.hg, 0
  br i1 %i.hh, label %.lr.ph147, label %.loopexit

.lr.ph147:                                        ; preds = %_book_maptype1_quantvals.exit, %.lr.ph147
  %.5146 = phi i64 [ %i.hn, %.lr.ph147 ], [ 0, %_book_maptype1_quantvals.exit ] ; 2 uses
  %i.hi = load ptr, ptr %i.fy, align 8
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %.5146
  %i.hk = load i64, ptr %i.hj, align 8
  %i.hl = tail call i64 @llvm.abs.i64(i64 %i.hk, i1 true)
  %i.hm = load i32, ptr %i.ge, align 8
  tail call void @oggpack_write(ptr noundef %1, i64 noundef %i.hl, i32 noundef %i.hm)
  %i.hn = add nuw nsw i64 %.5146, 1               ; 2 uses
  %exitcond155.not = icmp eq i64 %i.hn, %i.hg
  br i1 %exitcond155.not, label %.loopexit, label %.lr.ph147, !llvm.loop !464

.loopexit:                                        ; preds = %.lr.ph147, %bb.y, %_book_maptype1_quantvals.exit, %.loopexit107
  br label %bb.ae

bb.ae:                                            ; preds = %.loopexit107, %bb.x, %.loopexit
  %.093 = phi i32 [ -1, %bb.x ], [ 0, %.loopexit ], [ -1, %.loopexit107 ]
  ret i32 %.093
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @oggpack_write(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #16 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = add nsw i64 %i.a, 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %.not = icmp slt i64 %i.b, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = add nsw i64 %i.d, 256
  %i.h = tail call ptr @realloc(ptr noundef %i.f, i64 noundef %i.g) #66 ; 2 uses
  store ptr %i.h, ptr %i.e, align 8
  %i.i = load i64, ptr %i.c, align 8
  %i.j = add nsw i64 %i.i, 256
  store i64 %i.j, ptr %i.c, align 8
  %i.k = load i64, ptr %0, align 8
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.l, ptr %i.m, align 8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.n = phi ptr [ %.pre, %._crit_edge ], [ %i.l, %bb.b ] ; 2 uses
  %i.o = sext i32 %2 to i64
  %i.p = getelementptr inbounds [8 x i8], ptr @mask, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8
  %i.r = and i64 %i.q, %1                         ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.t = load i32, ptr %i.s, align 8              ; 2 uses
  %i.u = add nsw i32 %i.t, %2                     ; 6 uses
  %i.v = zext nneg i32 %i.t to i64
  %i.w = shl i64 %i.r, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.y = load i8, ptr %i.n, align 1
  %i.z = trunc i64 %i.w to i8
  %i.aa = or i8 %i.y, %i.z
  store i8 %i.aa, ptr %i.n, align 1
  %i.ab = icmp sgt i32 %i.u, 7
  br i1 %i.ab, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ac = load i32, ptr %i.s, align 8
  %i.ad = sub nsw i32 8, %i.ac
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = lshr i64 %i.r, %i.ae
  %i.ag = trunc i64 %i.af to i8
  %i.ah = load ptr, ptr %i.x, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  store i8 %i.ag, ptr %i.ai, align 1
  %i.aj = icmp samesign ugt i32 %i.u, 15
  br i1 %i.aj, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ak = load i32, ptr %i.s, align 8
  %i.al = sub nsw i32 16, %i.ak
  %i.am = zext nneg i32 %i.al to i64
  %i.an = lshr i64 %i.r, %i.am
  %i.ao = trunc i64 %i.an to i8
  %i.ap = load ptr, ptr %i.x, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  store i8 %i.ao, ptr %i.aq, align 1
  %i.ar = icmp samesign ugt i32 %i.u, 23
  br i1 %i.ar, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.as = load i32, ptr %i.s, align 8
  %i.at = sub nsw i32 24, %i.as
  %i.au = zext nneg i32 %i.at to i64
  %i.av = lshr i64 %i.r, %i.au
  %i.aw = trunc i64 %i.av to i8
  %i.ax = load ptr, ptr %i.x, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 3
  store i8 %i.aw, ptr %i.ay, align 1
  %i.az = icmp samesign ugt i32 %i.u, 31
  br i1 %i.az, label %.sink.split, label %bb.g

.sink.split:                                      ; preds = %bb.f
  %i.ba = load i32, ptr %i.s, align 8             ; 2 uses
  %.not41 = icmp eq i32 %i.ba, 0
  %i.bb = sub nsw i32 32, %i.ba
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = lshr i64 %i.r, %i.bc
  %i.be = trunc i64 %i.bd to i8
  %.sink = select i1 %.not41, i8 0, i8 %i.be
  %i.bf = load ptr, ptr %i.x, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  store i8 %.sink, ptr %i.bg, align 1
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.d, %bb.f, %bb.e, %bb.c
  %i.bh = sdiv i32 %i.u, 8
  %i.bi = sext i32 %i.bh to i64                   ; 2 uses
  %i.bj = load i64, ptr %0, align 8
  %i.bk = add nsw i64 %i.bj, %i.bi
  store i64 %i.bk, ptr %0, align 8
  %i.bl = load ptr, ptr %i.x, align 8
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 %i.bi
  store ptr %i.bm, ptr %i.x, align 8
  %i.bn = and i32 %i.u, 7
  store i32 %i.bn, ptr %i.s, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #50

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local range(i32 -1, 1) i32 @vorbis_staticbook_unpack(ptr nofree noundef %0, ptr nofree noundef captures(none) initializes((0, 96)) %1) local_unnamed_addr #14 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %1, i8 0, i64 96, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i32 1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 32 uses
  %i.c = load i32, ptr %i.b, align 8              ; 11 uses
  %i.d = add nsw i32 %i.c, 24                     ; 2 uses
  %i.e = load i64, ptr %0, align 8                ; 3 uses
  %i.f = add nsw i64 %i.e, 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 13 uses
  %i.h = load i64, ptr %i.g, align 8              ; 4 uses
  %.not.i = icmp slt i64 %i.f, %i.h
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = shl nsw i64 %i.e, 3
  %i.j = sext i32 %i.d to i64
end_hunk_4
begin_hunk_5_@_encodepart:bb.a
.preheader87.i:                                   ; preds = %.lr.ph8
  %indvars.iv.next.i = add nsw i64 %indvars.iv.next.i7, 1 ; 2 uses
  %i.az = icmp slt i64 %indvars.iv.next.i, %i.ah
  br i1 %i.az, label %.lr.ph8, label %.loopexit86.i, !llvm.loop !793

.lr.ph8:                                          ; preds = %.preheader87.i.preheader, %.preheader87.i
  %indvars.iv.next.i7 = phi i64 [ %indvars.iv.next.i, %.preheader87.i ], [ %indvars.iv.next.i6, %.preheader87.i.preheader ] ; 3 uses
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.x, i64 %indvars.iv.next.i7
  %i.bb = load float, ptr %i.ba, align 4
  %i.bc = fcmp olt float %i.ap, %i.bb
  br i1 %i.bc, label %.loopexit86.loopexit145.split.loop.exit.i, label %.preheader87.i, !llvm.loop !793

.loopexit86.loopexit145.split.loop.exit.i:        ; preds = %.lr.ph8
  %i.bd = trunc nsw i64 %indvars.iv.next.i7 to i32
  br label %.loopexit86.i

.loopexit86.i:                                    ; preds = %.preheader87.i, %.preheader85.i, %.lr.ph10, %bb.d, %.preheader87.i.preheader, %.loopexit86.loopexit145.split.loop.exit.i
  %.274.i = phi i32 [ %.mux, %bb.d ], [ %smax.i, %.preheader87.i.preheader ], [ %i.ay, %.lr.ph10 ], [ %i.bd, %.loopexit86.loopexit145.split.loop.exit.i ], [ %i.ak, %.preheader85.i ], [ %smax.i, %.preheader87.i ]
  %i.be = mul nsw i32 %.07789.i, %i.ae
  %i.bf = sext i32 %.274.i to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = trunc i64 %i.bh to i32
  %i.bj = add i32 %i.be, %i.bi                    ; 2 uses
  %i.bk = add nuw nsw i32 %.07591.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bk, %i.q
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.c, !llvm.loop !794

._crit_edge.i:                                    ; preds = %.loopexit86.i, %bb.b
  %.077.lcssa.i = phi i32 [ 0, %bb.b ], [ %i.bj, %.loopexit86.i ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8            ; 10 uses
  %i.bn = sext i32 %.077.lcssa.i to i64
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = icmp slt i64 %i.bp, 1
  br i1 %i.bq, label %bb.e, label %.loopexit.i

bb.e:                                             ; preds = %._crit_edge.i
  %i.br = load i64, ptr %i.f, align 8             ; 5 uses
  %i.bs = icmp sgt i64 %i.br, 0
  br i1 %i.bs, label %.lr.ph102.i, label %.loopexit.i

.lr.ph102.i:                                      ; preds = %bb.e
  %sext.i = shl i64 %.fr.i, 32
  %i.bt = ashr exact i64 %sext.i, 30
  br i1 %i.r, label %.lr.ph102.split.us.preheader.i, label %.lr.ph102.split.i.preheader

.lr.ph102.split.i.preheader:                      ; preds = %.lr.ph102.i
  %xtraiter = and i64 %i.br, 3                    ; 3 uses
  %i.bu = icmp ult i64 %i.br, 4
  br i1 %i.bu, label %.lr.ph102.split.i.epil.preheader, label %.lr.ph102.split.i.preheader.new

.lr.ph102.split.i.preheader.new:                  ; preds = %.lr.ph102.split.i.preheader
  %unroll_iter = and i64 %i.br, 9223372036854775804
  br label %.lr.ph102.split.i

.lr.ph102.split.us.preheader.i:                   ; preds = %.lr.ph102.i
  %i.bv = load ptr, ptr %i.g, align 8
  %wide.trip.count.i = and i64 %.fr.i, 2147483647
  %i.bw = add nsw i64 %wide.trip.count.i, -1
  %xtraiter28 = and i64 %.fr.i, 3                 ; 3 uses
  %i.bx = icmp ult i64 %i.bw, 3
  %unroll_iter33 = and i64 %.fr.i, 2147483644
  %lcmp.mod30.not = icmp eq i64 %xtraiter28, 0
  %lcmp.mod32 = icmp ne i64 %xtraiter28, 0
  br label %.lr.ph102.split.us.i

.lr.ph102.split.us.i:                             ; preds = %bb.f, %.lr.ph102.split.us.preheader.i
  %indvars.iv132.i = phi i64 [ 0, %.lr.ph102.split.us.preheader.i ], [ %indvars.iv.next133.i, %bb.f ] ; 3 uses
  %.068100.us.i = phi ptr [ %i.bv, %.lr.ph102.split.us.preheader.i ], [ %i.cb, %bb.f ] ; 6 uses
  %.06999.us.i = phi float [ 0.000000e+00, %.lr.ph102.split.us.preheader.i ], [ %.2.us.i, %bb.f ] ; 3 uses
  %.17897.us.i = phi i32 [ -1, %.lr.ph102.split.us.preheader.i ], [ %.380.us.i, %bb.f ] ; 3 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv132.i
  %i.bz = load i64, ptr %i.by, align 8
  %i.ca = icmp sgt i64 %i.bz, 0
  br i1 %i.ca, label %.preheader.us.i.preheader, label %bb.f

.preheader.us.i.preheader:                        ; preds = %.lr.ph102.split.us.i
  br i1 %i.bx, label %.preheader.us.i.epil.preheader, label %.preheader.us.i

bb.f:                                             ; preds = %._crit_edge95.us.i, %.lr.ph102.split.us.i
  %.380.us.i = phi i32 [ %.279.us.i, %._crit_edge95.us.i ], [ %.17897.us.i, %.lr.ph102.split.us.i ] ; 2 uses
  %.2.us.i = phi float [ %.1.us.i, %._crit_edge95.us.i ], [ %.06999.us.i, %.lr.ph102.split.us.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.068100.us.i, i64 %i.bt
  %indvars.iv.next133.i = add nuw nsw i64 %indvars.iv132.i, 1 ; 2 uses
  %exitcond136.not.i = icmp eq i64 %indvars.iv.next133.i, %i.br
  br i1 %exitcond136.not.i, label %.loopexit.i, label %.lr.ph102.split.us.i, !llvm.loop !795

.preheader.us.i:                                  ; preds = %.preheader.us.i.preheader, %.preheader.us.i
  %indvars.iv127.i = phi i64 [ %indvars.iv.next128.i.3, %.preheader.us.i ], [ 0, %.preheader.us.i.preheader ] ; 6 uses
  %.06793.us.i = phi float [ %i.dd, %.preheader.us.i ], [ 0.000000e+00, %.preheader.us.i.preheader ]
  %niter34 = phi i64 [ %niter34.next.3, %.preheader.us.i ], [ 0, %.preheader.us.i.preheader ]
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.068100.us.i, i64 %indvars.iv127.i
  %i.cd = load float, ptr %i.cc, align 4
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv127.i
  %i.cf = load float, ptr %i.ce, align 4
  %i.cg = fsub float %i.cd, %i.cf                 ; 2 uses
  %i.ch = fmul float %i.cg, %i.cg
  %i.ci = fadd float %.06793.us.i, %i.ch
  %indvars.iv.next128.i = or disjoint i64 %indvars.iv127.i, 1 ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.068100.us.i, i64 %indvars.iv.next128.i
  %i.ck = load float, ptr %i.cj, align 4
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next128.i
  %i.cm = load float, ptr %i.cl, align 4
  %i.cn = fsub float %i.ck, %i.cm                 ; 2 uses
  %i.co = fmul float %i.cn, %i.cn
  %i.cp = fadd float %i.ci, %i.co
  %indvars.iv.next128.i.1 = or disjoint i64 %indvars.iv127.i, 2 ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %.068100.us.i, i64 %indvars.iv.next128.i.1
  %i.cr = load float, ptr %i.cq, align 4
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next128.i.1
  %i.ct = load float, ptr %i.cs, align 4
  %i.cu = fsub float %i.cr, %i.ct                 ; 2 uses
  %i.cv = fmul float %i.cu, %i.cu
  %i.cw = fadd float %i.cp, %i.cv
  %indvars.iv.next128.i.2 = or disjoint i64 %indvars.iv127.i, 3 ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.068100.us.i, i64 %indvars.iv.next128.i.2
  %i.cy = load float, ptr %i.cx, align 4
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next128.i.2
  %i.da = load float, ptr %i.cz, align 4
  %i.db = fsub float %i.cy, %i.da                 ; 2 uses
  %i.dc = fmul float %i.db, %i.db
  %i.dd = fadd float %i.cw, %i.dc                 ; 3 uses
  %indvars.iv.next128.i.3 = add nuw nsw i64 %indvars.iv127.i, 4 ; 2 uses
  %niter34.next.3 = add nuw i64 %niter34, 4       ; 2 uses
  %niter34.ncmp.3 = icmp eq i64 %niter34.next.3, %unroll_iter33
  br i1 %niter34.ncmp.3, label %._crit_edge95.us.i.unr-lcssa, label %.preheader.us.i, !llvm.loop !796

._crit_edge95.us.i.unr-lcssa:                     ; preds = %.preheader.us.i
  br i1 %lcmp.mod30.not, label %._crit_edge95.us.i, label %.preheader.us.i.epil.preheader

.preheader.us.i.epil.preheader:                   ; preds = %._crit_edge95.us.i.unr-lcssa, %.preheader.us.i.preheader
  %indvars.iv127.i.epil.init = phi i64 [ 0, %.preheader.us.i.preheader ], [ %indvars.iv.next128.i.3, %._crit_edge95.us.i.unr-lcssa ]
  %.06793.us.i.epil.init = phi float [ 0.000000e+00, %.preheader.us.i.preheader ], [ %i.dd, %._crit_edge95.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod32)
  br label %.preheader.us.i.epil

.preheader.us.i.epil:                             ; preds = %.preheader.us.i.epil, %.preheader.us.i.epil.preheader
  %indvars.iv127.i.epil = phi i64 [ %indvars.iv.next128.i.epil, %.preheader.us.i.epil ], [ %indvars.iv127.i.epil.init, %.preheader.us.i.epil.preheader ] ; 3 uses
  %.06793.us.i.epil = phi float [ %i.dk, %.preheader.us.i.epil ], [ %.06793.us.i.epil.init, %.preheader.us.i.epil.preheader ]
  %epil.iter29 = phi i64 [ %epil.iter29.next, %.preheader.us.i.epil ], [ 0, %.preheader.us.i.epil.preheader ]
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %.068100.us.i, i64 %indvars.iv127.i.epil
  %i.df = load float, ptr %i.de, align 4
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv127.i.epil
  %i.dh = load float, ptr %i.dg, align 4
  %i.di = fsub float %i.df, %i.dh                 ; 2 uses
  %i.dj = fmul float %i.di, %i.di
  %i.dk = fadd float %.06793.us.i.epil, %i.dj     ; 2 uses
  %indvars.iv.next128.i.epil = add nuw nsw i64 %indvars.iv127.i.epil, 1
  %epil.iter29.next = add i64 %epil.iter29, 1     ; 2 uses
  %epil.iter29.cmp.not = icmp eq i64 %epil.iter29.next, %xtraiter28
  br i1 %epil.iter29.cmp.not, label %._crit_edge95.us.i, label %.preheader.us.i.epil, !llvm.loop !797

._crit_edge95.us.i:                               ; preds = %.preheader.us.i.epil, %._crit_edge95.us.i.unr-lcssa
  %.lcssa24 = phi float [ %i.dd, %._crit_edge95.us.i.unr-lcssa ], [ %i.dk, %.preheader.us.i.epil ] ; 2 uses
  %i.dl = icmp eq i32 %.17897.us.i, -1
  %i.dm = fcmp olt float %.lcssa24, %.06999.us.i
  %or.cond.us.i = select i1 %i.dl, i1 true, i1 %i.dm ; 2 uses
  %i.dn = trunc nuw nsw i64 %indvars.iv132.i to i32
  %.279.us.i = select i1 %or.cond.us.i, i32 %i.dn, i32 %.17897.us.i
  %.1.us.i = select i1 %or.cond.us.i, float %.lcssa24, float %.06999.us.i
  br label %bb.f

.lr.ph102.split.i:                                ; preds = %.lr.ph102.split.i, %.lr.ph102.split.i.preheader.new
  %indvars.iv122.i = phi i64 [ 0, %.lr.ph102.split.i.preheader.new ], [ %indvars.iv.next123.i.3, %.lr.ph102.split.i ] ; 6 uses
  %.17897.i = phi i32 [ -1, %.lr.ph102.split.i.preheader.new ], [ %.380.i.3, %.lr.ph102.split.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph102.split.i.preheader.new ], [ %niter.next.3, %.lr.ph102.split.i ]
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv122.i
  %i.dp = load i64, ptr %i.do, align 8
  %i.dq = icmp sgt i64 %i.dp, 0
  %i.dr = icmp eq i32 %.17897.i, -1
  %i.ds = trunc nuw nsw i64 %indvars.iv122.i to i32
  %i.dt = select i1 %i.dq, i1 %i.dr, i1 false
  %.380.i = select i1 %i.dt, i32 %i.ds, i32 %.17897.i ; 2 uses
  %indvars.iv.next123.i = or disjoint i64 %indvars.iv122.i, 1 ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv.next123.i
  %i.dv = load i64, ptr %i.du, align 8
  %i.dw = icmp sgt i64 %i.dv, 0
  %i.dx = icmp eq i32 %.380.i, -1
  %i.dy = trunc nuw nsw i64 %indvars.iv.next123.i to i32
  %i.dz = select i1 %i.dw, i1 %i.dx, i1 false
  %.380.i.1 = select i1 %i.dz, i32 %i.dy, i32 %.380.i ; 2 uses
  %indvars.iv.next123.i.1 = or disjoint i64 %indvars.iv122.i, 2 ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv.next123.i.1
  %i.eb = load i64, ptr %i.ea, align 8
  %i.ec = icmp sgt i64 %i.eb, 0
  %i.ed = icmp eq i32 %.380.i.1, -1
  %i.ee = trunc nuw nsw i64 %indvars.iv.next123.i.1 to i32
  %i.ef = select i1 %i.ec, i1 %i.ed, i1 false
  %.380.i.2 = select i1 %i.ef, i32 %i.ee, i32 %.380.i.1 ; 2 uses
  %indvars.iv.next123.i.2 = or disjoint i64 %indvars.iv122.i, 3 ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv.next123.i.2
  %i.eh = load i64, ptr %i.eg, align 8
  %i.ei = icmp sgt i64 %i.eh, 0
  %i.ej = icmp eq i32 %.380.i.2, -1
  %i.ek = trunc nuw nsw i64 %indvars.iv.next123.i.2 to i32
  %i.el = select i1 %i.ei, i1 %i.ej, i1 false
  %.380.i.3 = select i1 %i.el, i32 %i.ek, i32 %.380.i.2 ; 3 uses
  %indvars.iv.next123.i.3 = add nuw nsw i64 %indvars.iv122.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %local_book_besterror.exit.loopexit22.unr-lcssa, label %.lr.ph102.split.i, !llvm.loop !795

.loopexit.i:                                      ; preds = %bb.f, %bb.e, %._crit_edge.i
  %.4.i = phi i32 [ %.077.lcssa.i, %._crit_edge.i ], [ -1, %bb.e ], [ %.380.us.i, %bb.f ] ; 3 uses
  br i1 %i.r, label %.lr.ph108.preheader.i, label %local_book_besterror.exit

.lr.ph108.preheader.i:                            ; preds = %.loopexit.i
  %i.em = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.en = mul i32 %.4.i, %i.q
  %i.eo = sext i32 %i.en to i64                   ; 2 uses
  %i.ep = getelementptr [4 x i8], ptr %i.em, i64 %i.eo ; 5 uses
  %i.eq = and i64 %.fr.i, 2147483647              ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.eq, 8
  br i1 %min.iters.check, label %.lr.ph108.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph108.preheader.i
  %i.er = shl i64 %.fr.i, 2
  %i.es = add i64 %i.er, 17179869180
  %i.et = and i64 %i.es, 17179869180              ; 2 uses
  %scevgep12 = getelementptr i8, ptr %scevgep11, i64 %i.et
  %scevgep13 = getelementptr i8, ptr %i.em, i64 4
  %i.eu = shl nsw i64 %i.eo, 2
  %i.ev = getelementptr i8, ptr %scevgep13, i64 %i.eu
  %scevgep14 = getelementptr i8, ptr %i.ev, i64 %i.et
  %bound0 = icmp ult ptr %scevgep, %scevgep14
  %bound1 = icmp ult ptr %i.ep, %scevgep12
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph108.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.fr.i, 2147483640             ; 4 uses
  %i.ew = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %i.ex = getelementptr i8, ptr %i.ep, i64 %i.ew
  %i.ey = getelementptr i8, ptr %i.o, i64 %i.ew
  %i.ez = trunc nuw nsw i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fa = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ep, i64 %i.fa ; 2 uses
  %next.gep15 = getelementptr i8, ptr %i.o, i64 %i.fa ; 3 uses
  %i.fb = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !alias.scope !798
  %wide.load16 = load <4 x float>, ptr %i.fb, align 4, !alias.scope !798
  %i.fc = getelementptr i8, ptr %next.gep15, i64 16 ; 2 uses
  %wide.load17 = load <4 x float>, ptr %next.gep15, align 4, !alias.scope !801, !noalias !798
  %wide.load18 = load <4 x float>, ptr %i.fc, align 4, !alias.scope !801, !noalias !798
  %i.fd = fsub <4 x float> %wide.load17, %wide.load
  %i.fe = fsub <4 x float> %wide.load18, %wide.load16
  store <4 x float> %i.fd, ptr %next.gep15, align 4, !alias.scope !801, !noalias !798
  store <4 x float> %i.fe, ptr %i.fc, align 4, !alias.scope !801, !noalias !798
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ff = icmp eq i64 %index.next, %n.vec
  br i1 %i.ff, label %middle.block, label %vector.body, !llvm.loop !803

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eq, %n.vec
  br i1 %cmp.n, label %local_book_besterror.exit.loopexit, label %.lr.ph108.i.preheader

.lr.ph108.i.preheader:                            ; preds = %vector.memcheck, %.lr.ph108.preheader.i, %middle.block
  %.0106.i.ph = phi ptr [ %i.ep, %vector.memcheck ], [ %i.ep, %.lr.ph108.preheader.i ], [ %i.ex, %middle.block ] ; 2 uses
  %.066105.i.ph = phi ptr [ %i.o, %vector.memcheck ], [ %i.o, %.lr.ph108.preheader.i ], [ %i.ey, %middle.block ] ; 2 uses
  %.3104.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph108.preheader.i ], [ %i.ez, %middle.block ] ; 4 uses
  %i.fg = sub i32 %i.q, %.3104.i.ph
  %xtraiter35 = and i32 %i.fg, 3                  ; 2 uses
  %lcmp.mod36.not = icmp eq i32 %xtraiter35, 0
  br i1 %lcmp.mod36.not, label %.lr.ph108.i.prol.loopexit, label %.lr.ph108.i.prol

.lr.ph108.i.prol:                                 ; preds = %.lr.ph108.i.preheader, %.lr.ph108.i.prol
  %.0106.i.prol = phi ptr [ %i.fh, %.lr.ph108.i.prol ], [ %.0106.i.ph, %.lr.ph108.i.preheader ] ; 2 uses
  %.066105.i.prol = phi ptr [ %i.fj, %.lr.ph108.i.prol ], [ %.066105.i.ph, %.lr.ph108.i.preheader ] ; 3 uses
  %.3104.i.prol = phi i32 [ %i.fm, %.lr.ph108.i.prol ], [ %.3104.i.ph, %.lr.ph108.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph108.i.prol ], [ 0, %.lr.ph108.i.preheader ]
  %i.fh = getelementptr inbounds nuw i8, ptr %.0106.i.prol, i64 4 ; 2 uses
  %i.fi = load float, ptr %.0106.i.prol, align 4
  %i.fj = getelementptr inbounds nuw i8, ptr %.066105.i.prol, i64 4 ; 2 uses
  %i.fk = load float, ptr %.066105.i.prol, align 4
  %i.fl = fsub float %i.fk, %i.fi
  store float %i.fl, ptr %.066105.i.prol, align 4
  %i.fm = add nuw nsw i32 %.3104.i.prol, 1        ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter35
  br i1 %prol.iter.cmp.not, label %.lr.ph108.i.prol.loopexit, label %.lr.ph108.i.prol, !llvm.loop !804

.lr.ph108.i.prol.loopexit:                        ; preds = %.lr.ph108.i.prol, %.lr.ph108.i.preheader
  %.0106.i.unr = phi ptr [ %.0106.i.ph, %.lr.ph108.i.preheader ], [ %i.fh, %.lr.ph108.i.prol ]
  %.066105.i.unr = phi ptr [ %.066105.i.ph, %.lr.ph108.i.preheader ], [ %i.fj, %.lr.ph108.i.prol ]
  %.3104.i.unr = phi i32 [ %.3104.i.ph, %.lr.ph108.i.preheader ], [ %i.fm, %.lr.ph108.i.prol ]
  %i.fn = sub i32 %.3104.i.ph, %i.q
  %i.fo = icmp ugt i32 %i.fn, -4
  br i1 %i.fo, label %local_book_besterror.exit.loopexit, label %.lr.ph108.i

.lr.ph108.i:                                      ; preds = %.lr.ph108.i.prol.loopexit, %.lr.ph108.i
  %.0106.i = phi ptr [ %i.ge, %.lr.ph108.i ], [ %.0106.i.unr, %.lr.ph108.i.prol.loopexit ] ; 5 uses
  %.066105.i = phi ptr [ %i.gg, %.lr.ph108.i ], [ %.066105.i.unr, %.lr.ph108.i.prol.loopexit ] ; 6 uses
  %.3104.i = phi i32 [ %i.gj, %.lr.ph108.i ], [ %.3104.i.unr, %.lr.ph108.i.prol.loopexit ]
  %i.fp = getelementptr inbounds nuw i8, ptr %.0106.i, i64 4
  %i.fq = load float, ptr %.0106.i, align 4
  %i.fr = getelementptr inbounds nuw i8, ptr %.066105.i, i64 4 ; 2 uses
  %i.fs = load float, ptr %.066105.i, align 4
  %i.ft = fsub float %i.fs, %i.fq
  store float %i.ft, ptr %.066105.i, align 4
  %i.fu = getelementptr inbounds nuw i8, ptr %.0106.i, i64 8
  %i.fv = load float, ptr %i.fp, align 4
  %i.fw = getelementptr inbounds nuw i8, ptr %.066105.i, i64 8 ; 2 uses
  %i.fx = load float, ptr %i.fr, align 4
  %i.fy = fsub float %i.fx, %i.fv
  store float %i.fy, ptr %i.fr, align 4
  %i.fz = getelementptr inbounds nuw i8, ptr %.0106.i, i64 12
  %i.ga = load float, ptr %i.fu, align 4
  %i.gb = getelementptr inbounds nuw i8, ptr %.066105.i, i64 12 ; 2 uses
  %i.gc = load float, ptr %i.fw, align 4
  %i.gd = fsub float %i.gc, %i.ga
  store float %i.gd, ptr %i.fw, align 4
  %i.ge = getelementptr inbounds nuw i8, ptr %.0106.i, i64 16
  %i.gf = load float, ptr %i.fz, align 4
  %i.gg = getelementptr inbounds nuw i8, ptr %.066105.i, i64 16
  %i.gh = load float, ptr %i.gb, align 4
  %i.gi = fsub float %i.gh, %i.gf
  store float %i.gi, ptr %i.gb, align 4
  %i.gj = add nuw nsw i32 %.3104.i, 4             ; 2 uses
  %exitcond137.not.i.3 = icmp eq i32 %i.gj, %i.q
  br i1 %exitcond137.not.i.3, label %local_book_besterror.exit.loopexit, label %.lr.ph108.i, !llvm.loop !805

local_book_besterror.exit.loopexit:               ; preds = %.lr.ph108.i.prol.loopexit, %.lr.ph108.i, %middle.block
  %.pre29 = load ptr, ptr %i.e, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre29, i64 16
  %.pre30 = load ptr, ptr %.phi.trans.insert, align 8
  br label %local_book_besterror.exit

local_book_besterror.exit.loopexit22.unr-lcssa:   ; preds = %.lr.ph102.split.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %local_book_besterror.exit, label %.lr.ph102.split.i.epil.preheader

.lr.ph102.split.i.epil.preheader:                 ; preds = %local_book_besterror.exit.loopexit22.unr-lcssa, %.lr.ph102.split.i.preheader
  %indvars.iv122.i.epil.init = phi i64 [ 0, %.lr.ph102.split.i.preheader ], [ %indvars.iv.next123.i.3, %local_book_besterror.exit.loopexit22.unr-lcssa ]
  %.17897.i.epil.init = phi i32 [ -1, %.lr.ph102.split.i.preheader ], [ %.380.i.3, %local_book_besterror.exit.loopexit22.unr-lcssa ]
  %lcmp.mod27 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod27)
  br label %.lr.ph102.split.i.epil

.lr.ph102.split.i.epil:                           ; preds = %.lr.ph102.split.i.epil, %.lr.ph102.split.i.epil.preheader
  %indvars.iv122.i.epil = phi i64 [ %indvars.iv.next123.i.epil, %.lr.ph102.split.i.epil ], [ %indvars.iv122.i.epil.init, %.lr.ph102.split.i.epil.preheader ] ; 3 uses
  %.17897.i.epil = phi i32 [ %.380.i.epil, %.lr.ph102.split.i.epil ], [ %.17897.i.epil.init, %.lr.ph102.split.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph102.split.i.epil ], [ 0, %.lr.ph102.split.i.epil.preheader ]
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv122.i.epil
  %i.gl = load i64, ptr %i.gk, align 8
  %i.gm = icmp sgt i64 %i.gl, 0
  %i.gn = icmp eq i32 %.17897.i.epil, -1
  %i.go = trunc nuw nsw i64 %indvars.iv122.i.epil to i32
  %i.gp = select i1 %i.gm, i1 %i.gn, i1 false
  %.380.i.epil = select i1 %i.gp, i32 %i.go, i32 %.17897.i.epil ; 2 uses
  %indvars.iv.next123.i.epil = add nuw nsw i64 %indvars.iv122.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %local_book_besterror.exit, label %.lr.ph102.split.i.epil, !llvm.loop !806

local_book_besterror.exit:                        ; preds = %local_book_besterror.exit.loopexit22.unr-lcssa, %.lr.ph102.split.i.epil, %local_book_besterror.exit.loopexit, %.loopexit.i
  %i.gq = phi ptr [ %.pre30, %local_book_besterror.exit.loopexit ], [ %i.bm, %.loopexit.i ], [ %i.bm, %.lr.ph102.split.i.epil ], [ %i.bm, %local_book_besterror.exit.loopexit22.unr-lcssa ]
  %.4.i16 = phi i32 [ %.4.i, %local_book_besterror.exit.loopexit ], [ %.4.i, %.loopexit.i ], [ %.380.i.3, %local_book_besterror.exit.loopexit22.unr-lcssa ], [ %.380.i.epil, %.lr.ph102.split.i.epil ]
  %i.gr = load ptr, ptr %i.h, align 8
  %i.gs = sext i32 %.4.i16 to i64                 ; 3 uses
  %i.gt = getelementptr inbounds [4 x i8], ptr %i.gr, i64 %i.gs
  %i.gu = load i32, ptr %i.gt, align 4
  %i.gv = zext i32 %i.gu to i64
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.gq, i64 %i.gs
  %i.gx = load i64, ptr %i.gw, align 8
  %i.gy = trunc i64 %i.gx to i32
  tail call void @oggpack_write(ptr noundef %0, i64 noundef %i.gv, i32 noundef %i.gy)
  %i.gz = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.hb = load ptr, ptr %i.ha, align 8
  %i.hc = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.gs
  %i.hd = load i64, ptr %i.hc, align 8
  %i.he = trunc i64 %i.hd to i32
  %i.hf = add nsw i32 %.01421, %i.he              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !807

._crit_edge:                                      ; preds = %local_book_besterror.exit, %bb.a
  %.014.lcssa = phi i32 [ 0, %bb.a ], [ %i.hf, %local_book_besterror.exit ]
  ret i32 %.014.lcssa
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define dso_local ptr @res1_class(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #27 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %4 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.b = icmp eq i32 %4, 1
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
end_hunk_5
begin_hunk_6_@ogg_page_packets:bb.a

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i8 %i.c to i64          ; 3 uses
  %min.iters.check = icmp ult i8 %i.c, 8
  br i1 %min.iters.check, label %.lr.ph.preheader14, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 248          ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %vec.phi12 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.l, %vector.body ]
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 27
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 31
  %wide.load = load <4 x i8>, ptr %i.e, align 1
  %wide.load13 = load <4 x i8>, ptr %i.f, align 1
  %i.g = icmp ne <4 x i8> %wide.load, splat (i8 -1)
  %i.h = icmp ne <4 x i8> %wide.load13, splat (i8 -1)
  %i.i = zext <4 x i1> %i.g to <4 x i32>
  %i.j = zext <4 x i1> %i.h to <4 x i32>
  %i.k = add <4 x i32> %vec.phi, %i.i             ; 2 uses
  %i.l = add <4 x i32> %vec.phi12, %i.j           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !917

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.l, %i.k
  %i.n = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader14

.lr.ph.preheader14:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.09.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.n, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader14, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader14 ] ; 2 uses
  %.09 = phi i32 [ %spec.select, %.lr.ph ], [ %.09.ph, %.lr.ph.preheader14 ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 27
  %i.q = load i8, ptr %i.p, align 1
  %.not = icmp ne i8 %i.q, -1
  %i.r = zext i1 %.not to i32
  %spec.select = add nuw nsw i32 %.09, %i.r       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !918

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.n, %middle.block ], [ %spec.select, %.lr.ph ]
  ret i32 %.0.lcssa
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local noundef i32 @ogg_stream_destroy(ptr noundef captures(address_is_null) %0) local_unnamed_addr #16 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not11.i = icmp eq ptr %i.a, null
  br i1 %.not11.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.a) #62
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not12.i = icmp eq ptr %i.c, null
  br i1 %.not12.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.c) #62
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not13.i = icmp eq ptr %i.e, null
  br i1 %.not13.i, label %ogg_stream_clear.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.e) #62
  br label %ogg_stream_clear.exit

ogg_stream_clear.exit:                            ; preds = %bb.f, %bb.g
  tail call void @free(ptr noundef nonnull %0) #62
  br label %bb.h

bb.h:                                             ; preds = %ogg_stream_clear.exit, %bb.a
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @ogg_page_checksum_set(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #25 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  store i8 0, ptr %i.b, align 1
  %i.c = load ptr, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 23
  store i8 0, ptr %i.d, align 1
  %i.e = load ptr, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i8 0, ptr %i.f, align 1
  %i.g = load ptr, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 25
  store i8 0, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8              ; 5 uses
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.b
  %i.l = load ptr, ptr %0, align 8                ; 3 uses
  %xtraiter = and i64 %i.j, 1
  %i.m = icmp eq i64 %i.j, 1
  br i1 %i.m, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.j, 9223372036854775806
  br label %bb.c

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ]
  %.02631.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.ax, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod49 = trunc i64 %i.j to i1
  tail call void @llvm.assume(i1 %lcmp.mod49)
  %i.n = shl i32 %.02631.epil.init, 8
  %i.o = lshr i32 %.02631.epil.init, 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv.epil.init
  %i.q = load i8, ptr %i.p, align 1
  %i.r = zext i8 %i.q to i32
  %i.s = xor i32 %i.o, %i.r
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr @crc_lookup, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4
  %i.w = xor i32 %i.v, %i.n
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %bb.b
  %.026.lcssa = phi i32 [ 0, %bb.b ], [ %i.ax, %.preheader.loopexit.unr-lcssa ], [ %i.w, %.epil.preheader ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load i64, ptr %i.x, align 8              ; 5 uses
  %i.z = icmp sgt i64 %i.y, 0
  br i1 %i.z, label %.lr.ph35, label %._crit_edge

.lr.ph35:                                         ; preds = %.preheader
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8            ; 3 uses
  %xtraiter51 = and i64 %i.y, 1
  %i.ac = icmp eq i64 %i.y, 1
  br i1 %i.ac, label %.epil.preheader50, label %.lr.ph35.new

.lr.ph35.new:                                     ; preds = %.lr.ph35
  %unroll_iter55 = and i64 %i.y, 9223372036854775806
  br label %bb.d

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 3 uses
  %.02631 = phi i32 [ 0, %.lr.ph.new ], [ %i.ax, %bb.c ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %i.ad = shl i32 %.02631, 8
  %i.ae = lshr i32 %.02631, 24
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = zext i8 %i.ag to i32
  %i.ai = xor i32 %i.ae, %i.ah
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr @crc_lookup, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = xor i32 %i.al, %i.ad                    ; 2 uses
  %i.an = shl i32 %i.am, 8
  %i.ao = lshr i32 %i.am, 24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = zext i8 %i.ar to i32
  %i.at = xor i32 %i.ao, %i.as
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr @crc_lookup, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = xor i32 %i.aw, %i.an                    ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.c, !llvm.loop !106

bb.d:                                             ; preds = %bb.d, %.lr.ph35.new
  %indvars.iv39 = phi i64 [ 0, %.lr.ph35.new ], [ %indvars.iv.next40.1, %bb.d ] ; 3 uses
  %.12733 = phi i32 [ %.026.lcssa, %.lr.ph35.new ], [ %i.bs, %bb.d ] ; 2 uses
  %niter56 = phi i64 [ 0, %.lr.ph35.new ], [ %niter56.next.1, %bb.d ]
  %i.ay = shl i32 %.12733, 8
  %i.az = lshr i32 %.12733, 24
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 %indvars.iv39
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = zext i8 %i.bb to i32
  %i.bd = xor i32 %i.az, %i.bc
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr @crc_lookup, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = xor i32 %i.bg, %i.ay                    ; 2 uses
  %i.bi = shl i32 %i.bh, 8
  %i.bj = lshr i32 %i.bh, 24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ab, i64 %indvars.iv39
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = zext i8 %i.bm to i32
  %i.bo = xor i32 %i.bj, %i.bn
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr @crc_lookup, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4
  %i.bs = xor i32 %i.br, %i.bi                    ; 3 uses
  %indvars.iv.next40.1 = add nuw nsw i64 %indvars.iv39, 2 ; 2 uses
  %niter56.next.1 = add i64 %niter56, 2           ; 2 uses
  %niter56.ncmp.1 = icmp eq i64 %niter56.next.1, %unroll_iter55
  br i1 %niter56.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.d, !llvm.loop !107

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.d
  %lcmp.mod52.not = icmp eq i64 %xtraiter51, 0
  br i1 %lcmp.mod52.not, label %._crit_edge, label %.epil.preheader50

.epil.preheader50:                                ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph35
  %indvars.iv39.epil.init = phi i64 [ 0, %.lr.ph35 ], [ %indvars.iv.next40.1, %._crit_edge.loopexit.unr-lcssa ]
  %.12733.epil.init = phi i32 [ %.026.lcssa, %.lr.ph35 ], [ %i.bs, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod54 = trunc i64 %i.y to i1
  tail call void @llvm.assume(i1 %lcmp.mod54)
  %i.bt = shl i32 %.12733.epil.init, 8
  %i.bu = lshr i32 %.12733.epil.init, 24
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ab, i64 %indvars.iv39.epil.init
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = zext i8 %i.bw to i32
  %i.by = xor i32 %i.bu, %i.bx
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr @crc_lookup, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = xor i32 %i.cb, %i.bt
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader50, %._crit_edge.loopexit.unr-lcssa, %.preheader
  %.127.lcssa = phi i32 [ %.026.lcssa, %.preheader ], [ %i.bs, %._crit_edge.loopexit.unr-lcssa ], [ %i.cc, %.epil.preheader50 ] ; 4 uses
  %i.cd = trunc i32 %.127.lcssa to i8
  %i.ce = load ptr, ptr %0, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 22
  store i8 %i.cd, ptr %i.cf, align 1
  %i.cg = lshr i32 %.127.lcssa, 8
  %i.ch = trunc i32 %i.cg to i8
  %i.ci = load ptr, ptr %0, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 23
  store i8 %i.ch, ptr %i.cj, align 1
  %i.ck = lshr i32 %.127.lcssa, 16
  %i.cl = trunc i32 %i.ck to i8
  %i.cm = load ptr, ptr %0, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  store i8 %i.cl, ptr %i.cn, align 1
  %i.co = lshr i32 %.127.lcssa, 24
  %i.cp = trunc nuw i32 %i.co to i8
  %i.cq = load ptr, ptr %0, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 25
  store i8 %i.cp, ptr %i.cr, align 1
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ogg_stream_eos(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.b = load i32, ptr %i.a, align 8
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @ogg_sync_init(ptr nofree noundef writeonly captures(address_is_null) %0) local_unnamed_addr #38 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local noundef i32 @ogg_sync_destroy(ptr noundef captures(address_is_null) %0) local_unnamed_addr #16 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not5.i = icmp eq ptr %i.a, null
  br i1 %.not5.i, label %ogg_sync_clear.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.a) #62
  br label %ogg_sync_clear.exit

ogg_sync_clear.exit:                              ; preds = %bb.b, %bb.c
  tail call void @free(ptr noundef nonnull %0) #62
  br label %bb.d

bb.d:                                             ; preds = %ogg_sync_clear.exit, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local ptr @ogg_sync_buffer(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = sub nsw i32 %i.d, %i.b                   ; 3 uses
  store i32 %i.e, ptr %i.c, align 4
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8                ; 2 uses
  %i.h = sext i32 %i.b to i64
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 %i.h
  %i.j = zext nneg i32 %i.e to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %i.i, i64 %i.j, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i32 0, ptr %i.a, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4              ; 3 uses
  %i.o = sub nsw i32 %i.l, %i.n
  %i.p = sext i32 %i.o to i64
  %i.q = icmp sgt i64 %1, %i.p
  %.pre = load ptr, ptr %0, align 8               ; 3 uses
  br i1 %i.q, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.r = sext i32 %i.n to i64
  %i.s = add i64 %1, 4096
  %i.t = add i64 %i.s, %i.r                       ; 3 uses
  %.not26 = icmp eq ptr %.pre, null
  br i1 %.not26, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = tail call ptr @realloc(ptr noundef nonnull %.pre, i64 noundef %i.t) #66
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.t) #69
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %storemerge = phi ptr [ %i.v, %bb.h ], [ %i.u, %bb.g ] ; 2 uses
  store ptr %storemerge, ptr %0, align 8
  %i.w = trunc i64 %i.t to i32
  store i32 %i.w, ptr %i.k, align 8
  %.pre27 = load i32, ptr %i.m, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.e
  %i.x = phi i32 [ %.pre27, %bb.i ], [ %i.n, %bb.e ]
  %i.y = phi ptr [ %storemerge, %bb.i ], [ %.pre, %bb.e ]
  %i.z = sext i32 %i.x to i64
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 %i.z
  ret ptr %i.aa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 -1, 1) i32 @ogg_sync_wrote(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #39 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = sext i32 %i.b to i64
  %i.d = add nsw i64 %1, %i.c                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8
  %i.g = sext i32 %i.f to i64
  %i.h = icmp sgt i64 %i.d, %i.g
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.d to i32
  store i32 %i.i, ptr %i.a, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i64 -9223372036854775807, -9223372036854775808) i64 @ogg_sync_pageseek(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #25 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4
end_hunk_6
begin_hunk_7_@dradf2:bb.a
  %i.cu = fneg float %i.ct
  %i.cv = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv178 ; 2 uses
  store float %i.cu, ptr %i.cv, align 4
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv174
  %i.cx = load float, ptr %i.cw, align 4
  %i.cy = getelementptr i8, ptr %i.cv, i64 -4
  store float %i.cx, ptr %i.cy, align 4
  %indvars.iv.next179 = add nsw i64 %indvars.iv178, %i.cq ; 2 uses
  %indvars.iv.next177 = add nsw i64 %indvars.iv176, %i.cp ; 2 uses
  %indvars.iv.next175 = add nuw nsw i64 %indvars.iv174, %i.cn ; 2 uses
  %i.cz = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv.next177
  %i.da = load float, ptr %i.cz, align 4
  %i.db = fneg float %i.da
  %i.dc = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv.next179 ; 2 uses
  store float %i.db, ptr %i.dc, align 4
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next175
  %i.de = load float, ptr %i.dd, align 4
  %i.df = getelementptr i8, ptr %i.dc, i64 -4
  store float %i.de, ptr %i.df, align 4
  %indvars.iv.next179.1 = add nsw i64 %indvars.iv.next179, %i.cq ; 2 uses
  %indvars.iv.next177.1 = add nsw i64 %indvars.iv.next177, %i.cp ; 2 uses
  %indvars.iv.next175.1 = add nuw nsw i64 %indvars.iv.next175, %i.cn ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph137, !llvm.loop !970

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph137
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph137.epil.preheader

.lr.ph137.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph137.preheader
  %indvars.iv178.epil.init = phi i64 [ %i.cp, %.lr.ph137.preheader ], [ %indvars.iv.next179.1, %.loopexit.loopexit.unr-lcssa ]
  %indvars.iv176.epil.init = phi i64 [ %i.co, %.lr.ph137.preheader ], [ %indvars.iv.next177.1, %.loopexit.loopexit.unr-lcssa ]
  %indvars.iv174.epil.init = phi i64 [ %i.cm, %.lr.ph137.preheader ], [ %indvars.iv.next175.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod248 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod248)
  %i.dg = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv176.epil.init
  %i.dh = load float, ptr %i.dg, align 4
  %i.di = fneg float %i.dh
  %i.dj = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv178.epil.init ; 2 uses
  store float %i.di, ptr %i.dj, align 4
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv174.epil.init
  %i.dl = load float, ptr %i.dk, align 4
  %i.dm = getelementptr i8, ptr %i.dj, i64 -4
  store float %i.dl, ptr %i.dm, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph137.epil.preheader, %.loopexit.loopexit.unr-lcssa, %._crit_edge131.split, %bb.d, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define internal fastcc void @dradfg(i32 noundef %0, i32 noundef range(i32 5, 4) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef captures(none) %5, ptr nofree noundef captures(none) %6, ptr nofree noundef captures(none) %7, ptr nofree noundef captures(none) %8, ptr nofree noundef readonly captures(none) %9) unnamed_addr #56 {
bb.a:
  %i.a = ptrtoaddr ptr %6 to i64                  ; 8 uses
  %i.b = ptrtoaddr ptr %8 to i64                  ; 8 uses
  %i.c = sitofp i32 %1 to float
  %i.d = fdiv float f0x40C90FDB, %i.c
  %i.e = fpext float %i.d to double               ; 2 uses
  %i.f = tail call double @cos(double noundef %i.e) #62
  %i.g = fptrunc double %i.f to float             ; 2 uses
  %i.h = tail call double @sin(double noundef %i.e) #62
  %i.i = fptrunc double %i.h to float             ; 2 uses
  %i.j = add nsw i32 %1, 1
  %i.k = ashr i32 %i.j, 1                         ; 12 uses
  %i.l = add i32 %0, -1                           ; 2 uses
  %i.m = ashr i32 %i.l, 1                         ; 3 uses
  %i.n = mul i32 %2, %0                           ; 26 uses
  %i.o = mul i32 %1, %0                           ; 7 uses
  %i.p = icmp eq i32 %0, 1                        ; 2 uses
  br i1 %i.p, label %.loopexit670, label %.preheader679

.preheader679:                                    ; preds = %bb.a
  %i.q = icmp sgt i32 %3, 0
  br i1 %i.q, label %.lr.ph.preheader, label %.preheader678

.lr.ph.preheader:                                 ; preds = %.preheader679
  %wide.trip.count = zext nneg i32 %3 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %3, 8
  %i.r = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.r, -32
  %or.cond1570 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond1570, label %.lr.ph.preheader1584, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load = load <4 x float>, ptr %i.s, align 4
  %wide.load1203 = load <4 x float>, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <4 x float> %wide.load, ptr %i.u, align 4
  store <4 x float> %wide.load1203, ptr %i.v, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !971

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader678, label %.lr.ph.preheader1584

.lr.ph.preheader1584:                             ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader1584, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader1584 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader1584 ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.prol
  %i.y = load float, ptr %i.x, align 4
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.prol
  store float %i.y, ptr %i.z, align 4
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !972

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader1584
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader1584 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.aa = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ab = icmp ugt i64 %i.aa, -4
  br i1 %i.ab, label %.preheader678, label %.lr.ph

.preheader678:                                    ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %.preheader679
  %i.ac = icmp sgt i32 %1, 1                      ; 3 uses
  %i.ad = icmp sgt i32 %2, 0
  %or.cond = and i1 %i.ac, %i.ad
  br i1 %or.cond, label %.lr.ph683.preheader, label %._crit_edge687.split

.lr.ph683.preheader:                              ; preds = %.preheader678
  %i.ae = sext i32 %0 to i64                      ; 5 uses
  %i.af = add nsw i32 %2, -1
  %xtraiter1585 = and i32 %2, 3                   ; 3 uses
  %i.ag = icmp ult i32 %i.af, 3
  %unroll_iter = and i32 %2, 2147483644
  %lcmp.mod1586.not = icmp eq i32 %xtraiter1585, 0
  %lcmp.mod1587 = icmp ne i32 %xtraiter1585, 0
  br label %.lr.ph683

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv
  %i.ai = load float, ptr %i.ah, align 4
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv
  store float %i.ai, ptr %i.aj, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next
  %i.al = load float, ptr %i.ak, align 4
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.next
  store float %i.al, ptr %i.am, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next.1
  %i.ao = load float, ptr %i.an, align 4
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.next.1
  store float %i.ao, ptr %i.ap, align 4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next.2
  %i.ar = load float, ptr %i.aq, align 4
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.next.2
  store float %i.ar, ptr %i.as, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.preheader678, label %.lr.ph, !llvm.loop !973

.lr.ph683:                                        ; preds = %.lr.ph683.preheader, %._crit_edge
  %indvars.iv899 = phi i32 [ %i.n, %.lr.ph683.preheader ], [ %indvars.iv.next900, %._crit_edge ] ; 2 uses
  %.0550685 = phi i32 [ 1, %.lr.ph683.preheader ], [ %i.bj, %._crit_edge ]
  %i.at = sext i32 %indvars.iv899 to i64          ; 2 uses
  br i1 %i.ag, label %.epil.preheader, label %.lr.ph683.new

.lr.ph683.new:                                    ; preds = %.lr.ph683, %.lr.ph683.new
  %indvars.iv901 = phi i64 [ %indvars.iv.next902.3, %.lr.ph683.new ], [ %i.at, %.lr.ph683 ] ; 3 uses
  %niter = phi i32 [ %niter.next.3, %.lr.ph683.new ], [ 0, %.lr.ph683 ]
  %i.au = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv901
  %i.av = load float, ptr %i.au, align 4
  %i.aw = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv901
  store float %i.av, ptr %i.aw, align 4
  %indvars.iv.next902 = add nsw i64 %indvars.iv901, %i.ae ; 3 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next902
  %i.ay = load float, ptr %i.ax, align 4
  %i.az = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next902
  store float %i.ay, ptr %i.az, align 4
  %indvars.iv.next902.1 = add nsw i64 %indvars.iv.next902, %i.ae ; 3 uses
  %i.ba = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next902.1
  %i.bb = load float, ptr %i.ba, align 4
  %i.bc = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next902.1
  store float %i.bb, ptr %i.bc, align 4
  %indvars.iv.next902.2 = add nsw i64 %indvars.iv.next902.1, %i.ae ; 3 uses
  %i.bd = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next902.2
  %i.be = load float, ptr %i.bd, align 4
  %i.bf = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next902.2
  store float %i.be, ptr %i.bf, align 4
  %indvars.iv.next902.3 = add nsw i64 %indvars.iv.next902.2, %i.ae ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph683.new, !llvm.loop !974

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph683.new
  br i1 %lcmp.mod1586.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph683
  %indvars.iv901.epil.init = phi i64 [ %i.at, %.lr.ph683 ], [ %indvars.iv.next902.3, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1587)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv901.epil = phi i64 [ %indvars.iv901.epil.init, %.epil.preheader ], [ %indvars.iv.next902.epil, %bb.b ] ; 3 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.bg = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv901.epil
  %i.bh = load float, ptr %i.bg, align 4
  %i.bi = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv901.epil
  store float %i.bh, ptr %i.bi, align 4
  %indvars.iv.next902.epil = add nsw i64 %indvars.iv901.epil, %i.ae
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter1585
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.b, !llvm.loop !975

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.unr-lcssa
  %i.bj = add nuw nsw i32 %.0550685, 1            ; 2 uses
  %indvars.iv.next900 = add i32 %indvars.iv899, %i.n
  %exitcond905.not = icmp eq i32 %i.bj, %1
  br i1 %exitcond905.not, label %._crit_edge687.split, label %.lr.ph683, !llvm.loop !976

._crit_edge687.split:                             ; preds = %._crit_edge, %.preheader678
  %i.bk = icmp sgt i32 %i.m, %2
  br i1 %i.bk, label %.preheader674, label %.preheader676

.preheader676:                                    ; preds = %._crit_edge687.split
  br i1 %i.ac, label %.lr.ph702, label %.loopexit675

.lr.ph702:                                        ; preds = %.preheader676
  %i.bl = icmp slt i32 %0, 3
  %i.bm = icmp slt i32 %2, 1
  %brmerge = or i1 %i.bl, %i.bm
  br i1 %brmerge, label %.loopexit675, label %.lr.ph697.preheader

.lr.ph697.preheader:                              ; preds = %.lr.ph702
  %i.bn = add i32 %i.n, 2
  %i.bo = zext nneg i32 %0 to i64
  br label %.lr.ph697

.preheader674:                                    ; preds = %._crit_edge687.split
  br i1 %i.ac, label %.lr.ph718, label %.loopexit675

.lr.ph718:                                        ; preds = %.preheader674
  %i.bp = icmp slt i32 %2, 1
  %i.bq = icmp slt i32 %0, 3
  %brmerge873 = or i1 %i.bp, %i.bq
  br i1 %brmerge873, label %.loopexit675, label %.lr.ph713.preheader

.lr.ph713.preheader:                              ; preds = %.lr.ph718
  %scevgep = getelementptr i8, ptr %7, i64 4
  %i.br = add nsw i32 %0, -3
  %i.bs = lshr i32 %i.br, 1
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = shl nuw nsw i64 %i.bt, 3
  %i.bv = add nuw nsw i64 %i.bu, 12               ; 3 uses
  %scevgep1222 = getelementptr i8, ptr %7, i64 %i.bv
  %scevgep1224 = getelementptr i8, ptr %9, i64 4
  %scevgep1226 = getelementptr i8, ptr %9, i64 %i.bv
  %scevgep1228 = getelementptr i8, ptr %5, i64 4
  %scevgep1230 = getelementptr i8, ptr %5, i64 %i.bv
  %i.bw = add nsw i32 %0, -3                      ; 2 uses
  %i.bx = lshr i32 %i.bw, 1
  %narrow = add nuw i32 %i.bx, 1
  %i.by = zext i32 %narrow to i64                 ; 2 uses
  %min.iters.check1236 = icmp ult i32 %i.bw, 6
  %n.vec1239 = and i64 %i.by, 4294967292          ; 4 uses
  %i.bz = shl nuw nsw i64 %n.vec1239, 1           ; 2 uses
  %i.ca = trunc nuw i64 %n.vec1239 to i32
  %i.cb = shl i32 %i.ca, 1
  %i.cc = or disjoint i32 %i.cb, 2
  %cmp.n1254 = icmp eq i64 %n.vec1239, %i.by
  br label %.lr.ph713

.lr.ph713:                                        ; preds = %.lr.ph713.preheader, %._crit_edge714
  %indvars.iv924 = phi i32 [ %indvars.iv.next925, %._crit_edge714 ], [ %i.n, %.lr.ph713.preheader ] ; 2 uses
  %indvars.iv920 = phi i32 [ %indvars.iv.next921, %._crit_edge714 ], [ -1, %.lr.ph713.preheader ] ; 3 uses
  %.1551717 = phi i32 [ %i.dx, %._crit_edge714 ], [ 1, %.lr.ph713.preheader ]
  %i.cd = sext i32 %indvars.iv920 to i64
  %i.ce = shl nsw i64 %i.cd, 2                    ; 2 uses
  %scevgep1225 = getelementptr i8, ptr %scevgep1224, i64 %i.ce
  %scevgep1227 = getelementptr i8, ptr %scevgep1226, i64 %i.ce
  %i.cf = sext i32 %indvars.iv920 to i64          ; 4 uses
  %i.cg = add nsw i64 %i.bz, %i.cf
  %invariant.gep1614 = getelementptr [4 x i8], ptr %9, i64 %i.cf
  br label %.lr.ph708

.lr.ph708:                                        ; preds = %.lr.ph713, %._crit_edge709
  %indvars.iv926 = phi i32 [ %indvars.iv924, %.lr.ph713 ], [ %indvars.iv.next927, %._crit_edge709 ] ; 3 uses
  %.1559711 = phi i32 [ 0, %.lr.ph713 ], [ %i.dw, %._crit_edge709 ]
  %i.ch = sext i32 %indvars.iv926 to i64          ; 4 uses
  br i1 %min.iters.check1236, label %scalar.ph1235.preheader, label %vector.memcheck1220

vector.memcheck1220:                              ; preds = %.lr.ph708
  %i.ci = sext i32 %indvars.iv926 to i64
  %i.cj = shl nsw i64 %i.ci, 2                    ; 4 uses
  %scevgep1231 = getelementptr i8, ptr %scevgep1230, i64 %i.cj
  %scevgep1229 = getelementptr i8, ptr %scevgep1228, i64 %i.cj
  %scevgep1223 = getelementptr i8, ptr %scevgep1222, i64 %i.cj ; 2 uses
  %scevgep1221 = getelementptr i8, ptr %scevgep, i64 %i.cj ; 2 uses
  %bound0 = icmp ult ptr %scevgep1221, %scevgep1227
  %bound1 = icmp ult ptr %scevgep1225, %scevgep1223
  %found.conflict = and i1 %bound0, %bound1
  %bound01232 = icmp ult ptr %scevgep1221, %scevgep1231
  %bound11233 = icmp ult ptr %scevgep1229, %scevgep1223
  %found.conflict1234 = and i1 %bound01232, %bound11233
  %conflict.rdx = or i1 %found.conflict, %found.conflict1234
  br i1 %conflict.rdx, label %scalar.ph1235.preheader, label %vector.ph1237

vector.ph1237:                                    ; preds = %vector.memcheck1220
  %i.ck = add nsw i64 %i.bz, %i.ch
  %invariant.op = add i64 %i.ch, 1
  br label %vector.body1240

vector.body1240:                                  ; preds = %vector.body1240, %vector.ph1237
  %index1241 = phi i64 [ 0, %vector.ph1237 ], [ %index.next1252, %vector.body1240 ] ; 2 uses
  %i.cl = shl i64 %index1241, 1                   ; 2 uses
  %gep1615 = getelementptr [4 x i8], ptr %invariant.gep1614, i64 %i.cl
  %i.cm = getelementptr i8, ptr %gep1615, i64 4   ; 2 uses
  %wide.vec = load <8 x float>, ptr %i.cm, align 4, !alias.scope !977 ; 2 uses
  %.reass = add i64 %i.cl, %invariant.op          ; 2 uses
  %i.cn = getelementptr inbounds [4 x i8], ptr %5, i64 %.reass ; 2 uses
  %wide.vec1243 = load <8 x float>, ptr %i.cn, align 4, !alias.scope !980 ; 2 uses
  %i.co = fmul <8 x float> %wide.vec, %wide.vec1243
  %i.cp = shufflevector <8 x float> %i.co, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.cq = fmul <8 x float> %wide.vec, %wide.vec1243
  %i.cr = shufflevector <8 x float> %i.cq, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.cs = fadd <4 x float> %i.cp, %i.cr
  %i.ct = getelementptr inbounds [4 x i8], ptr %7, i64 %.reass
  %wide.vec1246 = load <8 x float>, ptr %i.cm, align 4, !alias.scope !977 ; 2 uses
  %strided.vec1247 = shufflevector <8 x float> %wide.vec1246, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1248 = shufflevector <8 x float> %wide.vec1246, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec1249 = load <8 x float>, ptr %i.cn, align 4, !alias.scope !980 ; 2 uses
  %strided.vec1250 = shufflevector <8 x float> %wide.vec1249, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1251 = shufflevector <8 x float> %wide.vec1249, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.cu = fmul <4 x float> %strided.vec1247, %strided.vec1251
  %i.cv = fmul <4 x float> %strided.vec1248, %strided.vec1250
  %i.cw = fsub <4 x float> %i.cu, %i.cv
  %interleaved.vec = shufflevector <4 x float> %i.cs, <4 x float> %i.cw, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.ct, align 4, !alias.scope !982, !noalias !984
  %index.next1252 = add nuw i64 %index1241, 4     ; 2 uses
  %i.cx = icmp eq i64 %index.next1252, %n.vec1239
  br i1 %i.cx, label %middle.block1253, label %vector.body1240, !llvm.loop !985

middle.block1253:                                 ; preds = %vector.body1240
  br i1 %cmp.n1254, label %._crit_edge709, label %scalar.ph1235.preheader

scalar.ph1235.preheader:                          ; preds = %vector.memcheck1220, %.lr.ph708, %middle.block1253
  %indvars.iv928.ph = phi i64 [ %i.ch, %vector.memcheck1220 ], [ %i.ch, %.lr.ph708 ], [ %i.ck, %middle.block1253 ]
  %indvars.iv922.ph = phi i64 [ %i.cf, %vector.memcheck1220 ], [ %i.cf, %.lr.ph708 ], [ %i.cg, %middle.block1253 ]
  %.0548705.ph = phi i32 [ 2, %vector.memcheck1220 ], [ 2, %.lr.ph708 ], [ %i.cc, %middle.block1253 ]
  br label %scalar.ph1235

scalar.ph1235:                                    ; preds = %scalar.ph1235.preheader, %scalar.ph1235
  %indvars.iv928 = phi i64 [ %indvars.iv.next929, %scalar.ph1235 ], [ %indvars.iv928.ph, %scalar.ph1235.preheader ] ; 2 uses
  %indvars.iv922 = phi i64 [ %indvars.iv.next923, %scalar.ph1235 ], [ %indvars.iv922.ph, %scalar.ph1235.preheader ] ; 2 uses
  %.0548705 = phi i32 [ %i.du, %scalar.ph1235 ], [ %.0548705.ph, %scalar.ph1235.preheader ]
  %indvars.iv.next923 = add nsw i64 %indvars.iv922, 2 ; 2 uses
  %indvars.iv.next929 = add nsw i64 %indvars.iv928, 2 ; 3 uses
  %i.cy = getelementptr [4 x i8], ptr %9, i64 %indvars.iv922
  %i.cz = getelementptr i8, ptr %i.cy, i64 4      ; 2 uses
  %i.da = load float, ptr %i.cz, align 4
  %i.db = add nsw i64 %indvars.iv928, 1           ; 2 uses
  %i.dc = getelementptr inbounds [4 x i8], ptr %5, i64 %i.db ; 2 uses
  %i.dd = load float, ptr %i.dc, align 4
  %i.de = fmul float %i.da, %i.dd
  %i.df = getelementptr inbounds [4 x i8], ptr %9, i64 %indvars.iv.next923 ; 2 uses
  %i.dg = load float, ptr %i.df, align 4
  %i.dh = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next929 ; 2 uses
  %i.di = load float, ptr %i.dh, align 4
  %i.dj = fmul float %i.dg, %i.di
  %i.dk = fadd float %i.de, %i.dj
  %i.dl = getelementptr inbounds [4 x i8], ptr %7, i64 %i.db
  store float %i.dk, ptr %i.dl, align 4
  %i.dm = load float, ptr %i.cz, align 4
  %i.dn = load float, ptr %i.dh, align 4
  %i.do = fmul float %i.dm, %i.dn
  %i.dp = load float, ptr %i.df, align 4
  %i.dq = load float, ptr %i.dc, align 4
  %i.dr = fmul float %i.dp, %i.dq
  %i.ds = fsub float %i.do, %i.dr
  %i.dt = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next929
  store float %i.ds, ptr %i.dt, align 4
  %i.du = add nuw nsw i32 %.0548705, 2            ; 2 uses
  %i.dv = icmp slt i32 %i.du, %0
  br i1 %i.dv, label %scalar.ph1235, label %._crit_edge709, !llvm.loop !986

._crit_edge709:                                   ; preds = %scalar.ph1235, %middle.block1253
  %i.dw = add nuw nsw i32 %.1559711, 1            ; 2 uses
  %indvars.iv.next927 = add i32 %indvars.iv926, %0
  %exitcond933.not = icmp eq i32 %i.dw, %2
  br i1 %exitcond933.not, label %._crit_edge714, label %.lr.ph708, !llvm.loop !987

end_hunk_7
begin_hunk_8_@dradfg:bb.a
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv1037
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 4 ; 2 uses
  %i.tb = load float, ptr %i.ta, align 4
  %i.tc = fadd float %i.sy, %i.tb
  store float %i.tc, ptr %i.ta, align 4
  %indvars.iv.next1038.1 = add nuw nsw i64 %indvars.iv1037, 2 ; 2 uses
  %exitcond1047.not.1 = icmp eq i64 %indvars.iv.next1038.1, %wide.trip.count1046
  br i1 %exitcond1047.not.1, label %._crit_edge800, label %scalar.ph1532, !llvm.loop !1044

._crit_edge800:                                   ; preds = %scalar.ph1532.prol.loopexit, %scalar.ph1532, %middle.block1544
  %i.td = add nuw nsw i32 %.7557802, 1            ; 2 uses
  %indvars.iv.next1040 = add i32 %indvars.iv1039, %3
  %exitcond1048.not = icmp eq i32 %i.td, %i.k
  br i1 %exitcond1048.not, label %._crit_edge804.split, label %.lr.ph799, !llvm.loop !1045

._crit_edge804.split:                             ; preds = %._crit_edge800, %._crit_edge766.split, %.preheader667
  %i.te = icmp slt i32 %0, %2
  %i.tf = icmp sgt i32 %0, 0
  %or.cond886 = and i1 %i.tf, %i.lp               ; 2 uses
  br i1 %i.te, label %.preheader662, label %.preheader665

.preheader665:                                    ; preds = %._crit_edge804.split
  br i1 %or.cond886, label %.preheader664.preheader, label %.loopexit663

.preheader664.preheader:                          ; preds = %.preheader665
  %i.tg = zext nneg i32 %0 to i64                 ; 4 uses
  %i.th = sext i32 %i.o to i64                    ; 2 uses
  %i.ti = add nsw i32 %2, -1
  %i.tj = zext i32 %i.ti to i64                   ; 2 uses
  %i.tk = mul nsw i64 %i.th, %i.tj
  %i.tl = zext i32 %i.l to i64                    ; 2 uses
  %i.tm = add i64 %i.tk, %i.tl
  %i.tn = shl i64 %i.tm, 2
  %i.to = getelementptr i8, ptr %4, i64 %i.tn
  %scevgep1549 = getelementptr i8, ptr %i.to, i64 4
  %i.tp = mul nuw nsw i64 %i.tg, %i.tj
  %i.tq = add nuw i64 %i.tp, %i.tl
  %i.tr = shl i64 %i.tq, 2
  %i.ts = getelementptr i8, ptr %7, i64 %i.tr
  %scevgep1550 = getelementptr i8, ptr %i.ts, i64 4
  %min.iters.check1555 = icmp ult i32 %0, 8
  %bound01551 = icmp ult ptr %4, %scevgep1550
  %bound11552 = icmp ult ptr %7, %scevgep1549
  %found.conflict1553 = and i1 %bound01551, %bound11552
  %stride.check = icmp slt i32 %i.o, 0
  %i.tt = or i1 %found.conflict1553, %stride.check
  %n.vec1558 = and i64 %i.tg, 2147483640          ; 5 uses
  %i.tu = trunc nuw nsw i64 %n.vec1558 to i32
  %cmp.n1565 = icmp eq i64 %n.vec1558, %i.tg
  br label %.preheader664

.preheader662:                                    ; preds = %._crit_edge804.split
  br i1 %or.cond886, label %.preheader661.preheader, label %.loopexit663

.preheader661.preheader:                          ; preds = %.preheader662
  %i.tv = zext nneg i32 %0 to i64                 ; 6 uses
  %i.tw = sext i32 %i.o to i64                    ; 5 uses
  %i.tx = add nsw i32 %2, -1
  %xtraiter1601 = and i32 %2, 3                   ; 3 uses
  %i.ty = icmp ult i32 %i.tx, 3
  %unroll_iter1605 = and i32 %2, 2147483644
  %lcmp.mod1603.not = icmp eq i32 %xtraiter1601, 0
  %lcmp.mod1604 = icmp ne i32 %xtraiter1601, 0
  br label %.preheader661

.preheader664:                                    ; preds = %.preheader664.preheader, %._crit_edge809
  %indvars.iv1054 = phi i64 [ 0, %.preheader664.preheader ], [ %indvars.iv.next1055, %._crit_edge809 ] ; 4 uses
  %indvars.iv1050 = phi i64 [ 0, %.preheader664.preheader ], [ %indvars.iv.next1051, %._crit_edge809 ] ; 4 uses
  %.6564812 = phi i32 [ 0, %.preheader664.preheader ], [ %i.vi, %._crit_edge809 ]
  %brmerge1655 = select i1 %min.iters.check1555, i1 true, i1 %i.tt
  br i1 %brmerge1655, label %scalar.ph1554.preheader, label %vector.ph1556

vector.ph1556:                                    ; preds = %.preheader664
  %i.tz = add i64 %indvars.iv1054, %n.vec1558
  %i.ua = add nuw i64 %indvars.iv1050, %n.vec1558
  %i.ub = getelementptr [4 x i8], ptr %7, i64 %indvars.iv1050
  %i.uc = getelementptr [4 x i8], ptr %4, i64 %indvars.iv1054
  br label %vector.body1559

vector.body1559:                                  ; preds = %vector.body1559, %vector.ph1556
  %index1560 = phi i64 [ 0, %vector.ph1556 ], [ %index.next1563, %vector.body1559 ] ; 3 uses
  %i.ud = getelementptr [4 x i8], ptr %i.ub, i64 %index1560 ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 16
  %wide.load1561 = load <4 x float>, ptr %i.ud, align 4, !alias.scope !1046
  %wide.load1562 = load <4 x float>, ptr %i.ue, align 4, !alias.scope !1046
  %i.uf = getelementptr [4 x i8], ptr %i.uc, i64 %index1560 ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 16
  store <4 x float> %wide.load1561, ptr %i.uf, align 4, !alias.scope !1049, !noalias !1046
  store <4 x float> %wide.load1562, ptr %i.ug, align 4, !alias.scope !1049, !noalias !1046
  %index.next1563 = add nuw i64 %index1560, 8     ; 2 uses
  %i.uh = icmp eq i64 %index.next1563, %n.vec1558
  br i1 %i.uh, label %middle.block1564, label %vector.body1559, !llvm.loop !1051

middle.block1564:                                 ; preds = %vector.body1559
  br i1 %cmp.n1565, label %._crit_edge809, label %scalar.ph1554.preheader

scalar.ph1554.preheader:                          ; preds = %.preheader664, %middle.block1564
  %indvars.iv1056.ph = phi i64 [ %i.tz, %middle.block1564 ], [ %indvars.iv1054, %.preheader664 ] ; 2 uses
  %indvars.iv1052.ph = phi i64 [ %i.ua, %middle.block1564 ], [ %indvars.iv1050, %.preheader664 ] ; 2 uses
  %.4807.ph = phi i32 [ %i.tu, %middle.block1564 ], [ 0, %.preheader664 ] ; 4 uses
  %i.ui = sub i32 %0, %.4807.ph
  %xtraiter1597 = and i32 %i.ui, 3                ; 2 uses
  %lcmp.mod1598.not = icmp eq i32 %xtraiter1597, 0
  br i1 %lcmp.mod1598.not, label %scalar.ph1554.prol.loopexit, label %scalar.ph1554.prol

scalar.ph1554.prol:                               ; preds = %scalar.ph1554.preheader, %scalar.ph1554.prol
  %indvars.iv1056.prol = phi i64 [ %indvars.iv.next1057.prol, %scalar.ph1554.prol ], [ %indvars.iv1056.ph, %scalar.ph1554.preheader ] ; 2 uses
  %indvars.iv1052.prol = phi i64 [ %indvars.iv.next1053.prol, %scalar.ph1554.prol ], [ %indvars.iv1052.ph, %scalar.ph1554.preheader ] ; 2 uses
  %.4807.prol = phi i32 [ %i.um, %scalar.ph1554.prol ], [ %.4807.ph, %scalar.ph1554.preheader ]
  %prol.iter1599 = phi i32 [ %prol.iter1599.next, %scalar.ph1554.prol ], [ 0, %scalar.ph1554.preheader ]
  %indvars.iv.next1053.prol = add nuw nsw i64 %indvars.iv1052.prol, 1 ; 2 uses
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv1052.prol
  %i.uk = load float, ptr %i.uj, align 4
  %indvars.iv.next1057.prol = add nsw i64 %indvars.iv1056.prol, 1 ; 2 uses
  %i.ul = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv1056.prol
  store float %i.uk, ptr %i.ul, align 4
  %i.um = add nuw nsw i32 %.4807.prol, 1          ; 2 uses
  %prol.iter1599.next = add i32 %prol.iter1599, 1 ; 2 uses
  %prol.iter1599.cmp.not = icmp eq i32 %prol.iter1599.next, %xtraiter1597
  br i1 %prol.iter1599.cmp.not, label %scalar.ph1554.prol.loopexit, label %scalar.ph1554.prol, !llvm.loop !1052

scalar.ph1554.prol.loopexit:                      ; preds = %scalar.ph1554.prol, %scalar.ph1554.preheader
  %indvars.iv1056.unr = phi i64 [ %indvars.iv1056.ph, %scalar.ph1554.preheader ], [ %indvars.iv.next1057.prol, %scalar.ph1554.prol ]
  %indvars.iv1052.unr = phi i64 [ %indvars.iv1052.ph, %scalar.ph1554.preheader ], [ %indvars.iv.next1053.prol, %scalar.ph1554.prol ]
  %.4807.unr = phi i32 [ %.4807.ph, %scalar.ph1554.preheader ], [ %i.um, %scalar.ph1554.prol ]
  %i.un = sub i32 %.4807.ph, %0
  %i.uo = icmp ugt i32 %i.un, -4
  br i1 %i.uo, label %._crit_edge809, label %scalar.ph1554

scalar.ph1554:                                    ; preds = %scalar.ph1554.prol.loopexit, %scalar.ph1554
  %indvars.iv1056 = phi i64 [ %indvars.iv.next1057.3, %scalar.ph1554 ], [ %indvars.iv1056.unr, %scalar.ph1554.prol.loopexit ] ; 5 uses
  %indvars.iv1052 = phi i64 [ %indvars.iv.next1053.3, %scalar.ph1554 ], [ %indvars.iv1052.unr, %scalar.ph1554.prol.loopexit ] ; 5 uses
  %.4807 = phi i32 [ %i.vh, %scalar.ph1554 ], [ %.4807.unr, %scalar.ph1554.prol.loopexit ]
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv1052
  %i.uq = load float, ptr %i.up, align 4
  %i.ur = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv1056
  store float %i.uq, ptr %i.ur, align 4
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv1052
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 4
  %i.uu = load float, ptr %i.ut, align 4
  %i.uv = getelementptr [4 x i8], ptr %4, i64 %indvars.iv1056
  %i.uw = getelementptr i8, ptr %i.uv, i64 4
  store float %i.uu, ptr %i.uw, align 4
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv1052
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 8
  %i.uz = load float, ptr %i.uy, align 4
  %i.va = getelementptr [4 x i8], ptr %4, i64 %indvars.iv1056
  %i.vb = getelementptr i8, ptr %i.va, i64 8
  store float %i.uz, ptr %i.vb, align 4
  %indvars.iv.next1053.3 = add nuw nsw i64 %indvars.iv1052, 4
  %i.vc = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv1052
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 12
  %i.ve = load float, ptr %i.vd, align 4
  %indvars.iv.next1057.3 = add nsw i64 %indvars.iv1056, 4
  %i.vf = getelementptr [4 x i8], ptr %4, i64 %indvars.iv1056
  %i.vg = getelementptr i8, ptr %i.vf, i64 12
  store float %i.ve, ptr %i.vg, align 4
  %i.vh = add nuw nsw i32 %.4807, 4               ; 2 uses
  %exitcond1061.not.3 = icmp eq i32 %i.vh, %0
  br i1 %exitcond1061.not.3, label %._crit_edge809, label %scalar.ph1554, !llvm.loop !1053

._crit_edge809:                                   ; preds = %scalar.ph1554.prol.loopexit, %scalar.ph1554, %middle.block1564
  %indvars.iv.next1051 = add nuw nsw i64 %indvars.iv1050, %i.tg
  %indvars.iv.next1055 = add nsw i64 %indvars.iv1054, %i.th
  %i.vi = add nuw nsw i32 %.6564812, 1            ; 2 uses
  %exitcond1065.not = icmp eq i32 %i.vi, %2
  br i1 %exitcond1065.not, label %.loopexit663, label %.preheader664, !llvm.loop !1054

.preheader661:                                    ; preds = %.preheader661.preheader, %._crit_edge817
  %indvars.iv1066 = phi i64 [ 0, %.preheader661.preheader ], [ %indvars.iv.next1067, %._crit_edge817 ] ; 5 uses
  br i1 %i.ty, label %.epil.preheader1600, label %.preheader661.new

.preheader661.new:                                ; preds = %.preheader661, %.preheader661.new
  %indvars.iv1070 = phi i64 [ %indvars.iv.next1071.3, %.preheader661.new ], [ %indvars.iv1066, %.preheader661 ] ; 2 uses
  %indvars.iv1068 = phi i64 [ %indvars.iv.next1069.3, %.preheader661.new ], [ %indvars.iv1066, %.preheader661 ] ; 2 uses
  %niter1606 = phi i32 [ %niter1606.next.3, %.preheader661.new ], [ 0, %.preheader661 ]
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv1068
  %i.vk = load float, ptr %i.vj, align 4
  %i.vl = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv1070
  store float %i.vk, ptr %i.vl, align 4
  %indvars.iv.next1069 = add nuw nsw i64 %indvars.iv1068, %i.tv ; 2 uses
  %indvars.iv.next1071 = add nsw i64 %indvars.iv1070, %i.tw ; 2 uses
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv.next1069
  %i.vn = load float, ptr %i.vm, align 4
  %i.vo = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv.next1071
  store float %i.vn, ptr %i.vo, align 4
  %indvars.iv.next1069.1 = add nuw nsw i64 %indvars.iv.next1069, %i.tv ; 2 uses
  %indvars.iv.next1071.1 = add nsw i64 %indvars.iv.next1071, %i.tw ; 2 uses
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv.next1069.1
  %i.vq = load float, ptr %i.vp, align 4
  %i.vr = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv.next1071.1
  store float %i.vq, ptr %i.vr, align 4
  %indvars.iv.next1069.2 = add nuw nsw i64 %indvars.iv.next1069.1, %i.tv ; 2 uses
  %indvars.iv.next1071.2 = add nsw i64 %indvars.iv.next1071.1, %i.tw ; 2 uses
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv.next1069.2
  %i.vt = load float, ptr %i.vs, align 4
  %i.vu = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv.next1071.2
  store float %i.vt, ptr %i.vu, align 4
  %indvars.iv.next1069.3 = add nuw nsw i64 %indvars.iv.next1069.2, %i.tv ; 2 uses
  %indvars.iv.next1071.3 = add nsw i64 %indvars.iv.next1071.2, %i.tw ; 2 uses
  %niter1606.next.3 = add i32 %niter1606, 4       ; 2 uses
  %niter1606.ncmp.3 = icmp eq i32 %niter1606.next.3, %unroll_iter1605
  br i1 %niter1606.ncmp.3, label %._crit_edge817.unr-lcssa, label %.preheader661.new, !llvm.loop !1055

._crit_edge817.unr-lcssa:                         ; preds = %.preheader661.new
  br i1 %lcmp.mod1603.not, label %._crit_edge817, label %.epil.preheader1600

.epil.preheader1600:                              ; preds = %._crit_edge817.unr-lcssa, %.preheader661
  %indvars.iv1070.epil.init = phi i64 [ %indvars.iv1066, %.preheader661 ], [ %indvars.iv.next1071.3, %._crit_edge817.unr-lcssa ]
  %indvars.iv1068.epil.init = phi i64 [ %indvars.iv1066, %.preheader661 ], [ %indvars.iv.next1069.3, %._crit_edge817.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1604)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader1600
  %indvars.iv1070.epil = phi i64 [ %indvars.iv1070.epil.init, %.epil.preheader1600 ], [ %indvars.iv.next1071.epil, %bb.f ] ; 2 uses
  %indvars.iv1068.epil = phi i64 [ %indvars.iv1068.epil.init, %.epil.preheader1600 ], [ %indvars.iv.next1069.epil, %bb.f ] ; 2 uses
  %epil.iter1602 = phi i32 [ 0, %.epil.preheader1600 ], [ %epil.iter1602.next, %bb.f ]
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv1068.epil
  %i.vw = load float, ptr %i.vv, align 4
  %i.vx = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv1070.epil
  store float %i.vw, ptr %i.vx, align 4
  %indvars.iv.next1069.epil = add nuw nsw i64 %indvars.iv1068.epil, %i.tv
  %indvars.iv.next1071.epil = add nsw i64 %indvars.iv1070.epil, %i.tw
  %epil.iter1602.next = add i32 %epil.iter1602, 1 ; 2 uses
  %epil.iter1602.cmp.not = icmp eq i32 %epil.iter1602.next, %xtraiter1601
  br i1 %epil.iter1602.cmp.not, label %._crit_edge817, label %bb.f, !llvm.loop !1056

._crit_edge817:                                   ; preds = %bb.f, %._crit_edge817.unr-lcssa
  %indvars.iv.next1067 = add nuw nsw i64 %indvars.iv1066, 1 ; 2 uses
  %exitcond1078.not = icmp eq i64 %indvars.iv.next1067, %i.tv
  br i1 %exitcond1078.not, label %.loopexit663, label %.preheader661, !llvm.loop !1057

.loopexit663:                                     ; preds = %._crit_edge809, %._crit_edge817, %.preheader665, %.preheader662
  %i.vy = shl i32 %0, 1                           ; 9 uses
  br i1 %or.cond880, label %.lr.ph824.preheader, label %._crit_edge832.split

.lr.ph824.preheader:                              ; preds = %.loopexit663
  %i.vz = mul i32 %i.n, %i.og
  %i.wa = sext i32 %0 to i64                      ; 4 uses
  %i.wb = sext i32 %i.o to i64                    ; 2 uses
  %xtraiter1608 = and i32 %2, 1
  %i.wc = icmp eq i32 %2, 1
  %unroll_iter1612 = and i32 %2, 2147483646
  %lcmp.mod1610.not = icmp eq i32 %xtraiter1608, 0
  %lcmp.mod1611 = trunc i32 %2 to i1
  br label %.lr.ph824

.lr.ph824:                                        ; preds = %.lr.ph824.preheader, %._crit_edge825
  %indvars.iv1087 = phi i32 [ %i.vy, %.lr.ph824.preheader ], [ %indvars.iv.next1088, %._crit_edge825 ] ; 2 uses
  %indvars.iv1083 = phi i32 [ %i.n, %.lr.ph824.preheader ], [ %indvars.iv.next1084, %._crit_edge825 ] ; 2 uses
  %indvars.iv1079 = phi i32 [ %i.vz, %.lr.ph824.preheader ], [ %indvars.iv.next1080, %._crit_edge825 ] ; 2 uses
  %.8829 = phi i32 [ 1, %.lr.ph824.preheader ], [ %i.wy, %._crit_edge825 ]
  %i.wd = sext i32 %indvars.iv1079 to i64         ; 2 uses
  %i.we = sext i32 %indvars.iv1083 to i64         ; 2 uses
  %i.wf = sext i32 %indvars.iv1087 to i64         ; 2 uses
  br i1 %i.wc, label %.epil.preheader1607, label %.lr.ph824.new

.lr.ph824.new:                                    ; preds = %.lr.ph824, %.lr.ph824.new
  %indvars.iv1089 = phi i64 [ %indvars.iv.next1090.1, %.lr.ph824.new ], [ %i.wf, %.lr.ph824 ] ; 2 uses
  %indvars.iv1085 = phi i64 [ %indvars.iv.next1086.1, %.lr.ph824.new ], [ %i.we, %.lr.ph824 ] ; 2 uses
  %indvars.iv1081 = phi i64 [ %indvars.iv.next1082.1, %.lr.ph824.new ], [ %i.wd, %.lr.ph824 ] ; 2 uses
  %niter1613 = phi i32 [ %niter1613.next.1, %.lr.ph824.new ], [ 0, %.lr.ph824 ]
  %i.wg = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv1085
  %i.wh = load float, ptr %i.wg, align 4
  %i.wi = getelementptr [4 x i8], ptr %4, i64 %indvars.iv1089 ; 2 uses
  %i.wj = getelementptr i8, ptr %i.wi, i64 -4
  store float %i.wh, ptr %i.wj, align 4
  %i.wk = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv1081
  %i.wl = load float, ptr %i.wk, align 4
  store float %i.wl, ptr %i.wi, align 4
  %indvars.iv.next1090 = add nsw i64 %indvars.iv1089, %i.wb ; 2 uses
  %indvars.iv.next1086 = add nsw i64 %indvars.iv1085, %i.wa ; 2 uses
  %indvars.iv.next1082 = add nsw i64 %indvars.iv1081, %i.wa ; 2 uses
  %i.wm = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next1086
  %i.wn = load float, ptr %i.wm, align 4
  %i.wo = getelementptr [4 x i8], ptr %4, i64 %indvars.iv.next1090 ; 2 uses
  %i.wp = getelementptr i8, ptr %i.wo, i64 -4
  store float %i.wn, ptr %i.wp, align 4
  %i.wq = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next1082
  %i.wr = load float, ptr %i.wq, align 4
  store float %i.wr, ptr %i.wo, align 4
  %indvars.iv.next1090.1 = add nsw i64 %indvars.iv.next1090, %i.wb ; 2 uses
  %indvars.iv.next1086.1 = add nsw i64 %indvars.iv.next1086, %i.wa ; 2 uses
  %indvars.iv.next1082.1 = add nsw i64 %indvars.iv.next1082, %i.wa ; 2 uses
  %niter1613.next.1 = add i32 %niter1613, 2       ; 2 uses
  %niter1613.ncmp.1 = icmp eq i32 %niter1613.next.1, %unroll_iter1612
  br i1 %niter1613.ncmp.1, label %._crit_edge825.unr-lcssa, label %.lr.ph824.new, !llvm.loop !1058

._crit_edge825.unr-lcssa:                         ; preds = %.lr.ph824.new
  br i1 %lcmp.mod1610.not, label %._crit_edge825, label %.epil.preheader1607

.epil.preheader1607:                              ; preds = %._crit_edge825.unr-lcssa, %.lr.ph824
  %indvars.iv1089.epil.init = phi i64 [ %i.wf, %.lr.ph824 ], [ %indvars.iv.next1090.1, %._crit_edge825.unr-lcssa ]
  %indvars.iv1085.epil.init = phi i64 [ %i.we, %.lr.ph824 ], [ %indvars.iv.next1086.1, %._crit_edge825.unr-lcssa ]
  %indvars.iv1081.epil.init = phi i64 [ %i.wd, %.lr.ph824 ], [ %indvars.iv.next1082.1, %._crit_edge825.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1611)
  %i.ws = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv1085.epil.init
  %i.wt = load float, ptr %i.ws, align 4
  %i.wu = getelementptr [4 x i8], ptr %4, i64 %indvars.iv1089.epil.init ; 2 uses
  %i.wv = getelementptr i8, ptr %i.wu, i64 -4
  store float %i.wt, ptr %i.wv, align 4
  %i.ww = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv1081.epil.init
  %i.wx = load float, ptr %i.ww, align 4
  store float %i.wx, ptr %i.wu, align 4
  br label %._crit_edge825

._crit_edge825:                                   ; preds = %._crit_edge825.unr-lcssa, %.epil.preheader1607
  %i.wy = add nuw nsw i32 %.8829, 1               ; 2 uses
  %indvars.iv.next1080 = sub i32 %indvars.iv1079, %i.n
  %indvars.iv.next1084 = add i32 %indvars.iv1083, %i.n
  %indvars.iv.next1088 = add i32 %indvars.iv1087, %i.vy
  %exitcond1097.not = icmp eq i32 %i.wy, %i.k
  br i1 %exitcond1097.not, label %._crit_edge832.split, label %.lr.ph824, !llvm.loop !1059

._crit_edge832.split:                             ; preds = %._crit_edge825, %.loopexit663
  br i1 %i.p, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %._crit_edge832.split
  %i.wz = icmp slt i32 %i.m, %2
  br i1 %i.wz, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.lo, label %.lr.ph848, label %.loopexit

.lr.ph848:                                        ; preds = %bb.h
  %i.xa = icmp slt i32 %2, 1
  %i.xb = icmp slt i32 %0, 3
  %brmerge890 = or i1 %i.xa, %i.xb
  br i1 %brmerge890, label %.loopexit, label %.preheader.lr.ph.preheader

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph848
  %i.xc = sub nsw i32 0, %0
  %i.xd = zext nneg i32 %0 to i64                 ; 3 uses
  %i.xe = mul i32 %i.n, %i.og
  %i.xf = sext i32 %i.o to i64
  br label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge841
  %indvars.iv1109 = phi i32 [ %i.vy, %.preheader.lr.ph.preheader ], [ %indvars.iv.next1110, %._crit_edge841 ] ; 2 uses
  %indvars.iv1105 = phi i32 [ %i.n, %.preheader.lr.ph.preheader ], [ %indvars.iv.next1106, %._crit_edge841 ] ; 2 uses
  %indvars.iv1101 = phi i32 [ %i.xe, %.preheader.lr.ph.preheader ], [ %indvars.iv.next1102, %._crit_edge841 ] ; 2 uses
  %.9846 = phi i32 [ 1, %.preheader.lr.ph.preheader ], [ %i.yi, %._crit_edge841 ]
  %.11845 = phi i32 [ %i.xc, %.preheader.lr.ph.preheader ], [ %i.xj, %._crit_edge841 ]
  %i.xg = sext i32 %indvars.iv1101 to i64
  %i.xh = sext i32 %indvars.iv1105 to i64
  %i.xi = sext i32 %indvars.iv1109 to i64
  %i.xj = add nsw i32 %.11845, %i.vy              ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge835
  %indvars.iv1111 = phi i64 [ %i.xi, %.preheader.lr.ph ], [ %indvars.iv.next1112, %._crit_edge835 ] ; 2 uses
  %indvars.iv1107 = phi i64 [ %i.xh, %.preheader.lr.ph ], [ %indvars.iv.next1108, %._crit_edge835 ] ; 2 uses
  %indvars.iv1103 = phi i64 [ %i.xg, %.preheader.lr.ph ], [ %indvars.iv.next1104, %._crit_edge835 ] ; 2 uses
  %.9567840 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.yh, %._crit_edge835 ]
  %.5636836 = phi i32 [ %i.xj, %.preheader.lr.ph ], [ %i.yg, %._crit_edge835 ] ; 2 uses
  %i.xk = add i32 %.5636836, %0
  %invariant.gep = getelementptr [4 x i8], ptr %7, i64 %indvars.iv1107
  %invariant.gep1195 = getelementptr [4 x i8], ptr %7, i64 %indvars.iv1103
  %invariant.gep1197 = getelementptr [4 x i8], ptr %4, i64 %indvars.iv1111
  br label %bb.i

bb.i:                                             ; preds = %.preheader, %bb.i
  %indvars.iv1098 = phi i64 [ 2, %.preheader ], [ %indvars.iv.next1099, %bb.i ] ; 5 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv1098 ; 3 uses
  %i.xl = getelementptr i8, ptr %gep, i64 -4      ; 2 uses
  %i.xm = load float, ptr %i.xl, align 4
  %gep1196 = getelementptr [4 x i8], ptr %invariant.gep1195, i64 %indvars.iv1098 ; 3 uses
  %i.xn = getelementptr i8, ptr %gep1196, i64 -4  ; 2 uses
  %i.xo = load float, ptr %i.xn, align 4
  %i.xp = fadd float %i.xm, %i.xo
  %gep1198 = getelementptr [4 x i8], ptr %invariant.gep1197, i64 %indvars.iv1098 ; 2 uses
  %i.xq = getelementptr i8, ptr %gep1198, i64 -4
  store float %i.xp, ptr %i.xq, align 4
  %i.xr = load float, ptr %i.xl, align 4
  %i.xs = load float, ptr %i.xn, align 4
  %i.xt = fsub float %i.xr, %i.xs
  %i.xu = trunc nuw nsw i64 %indvars.iv1098 to i32
  %i.xv = sub i32 %i.xk, %i.xu
  %i.xw = sext i32 %i.xv to i64
  %i.xx = getelementptr [4 x i8], ptr %4, i64 %i.xw ; 2 uses
  %i.xy = getelementptr i8, ptr %i.xx, i64 -4
  store float %i.xt, ptr %i.xy, align 4
  %i.xz = load float, ptr %gep, align 4
  %i.ya = load float, ptr %gep1196, align 4
  %i.yb = fadd float %i.xz, %i.ya
  store float %i.yb, ptr %gep1198, align 4
  %i.yc = load float, ptr %gep1196, align 4
  %i.yd = load float, ptr %gep, align 4
  %i.ye = fsub float %i.yc, %i.yd
  store float %i.ye, ptr %i.xx, align 4
  %indvars.iv.next1099 = add nuw nsw i64 %indvars.iv1098, 2 ; 2 uses
  %i.yf = icmp samesign ult i64 %indvars.iv.next1099, %i.xd
  br i1 %i.yf, label %bb.i, label %._crit_edge835, !llvm.loop !1060

._crit_edge835:                                   ; preds = %bb.i
  %i.yg = add nsw i32 %.5636836, %i.o
  %indvars.iv.next1112 = add nsw i64 %indvars.iv1111, %i.xf
  %indvars.iv.next1108 = add nuw nsw i64 %indvars.iv1107, %i.xd
  %indvars.iv.next1104 = add nsw i64 %indvars.iv1103, %i.xd
  %i.yh = add nuw nsw i32 %.9567840, 1            ; 2 uses
  %exitcond1118.not = icmp eq i32 %i.yh, %2
  br i1 %exitcond1118.not, label %._crit_edge841, label %.preheader, !llvm.loop !1061

._crit_edge841:                                   ; preds = %._crit_edge835
  %i.yi = add nuw nsw i32 %.9846, 1               ; 2 uses
  %indvars.iv.next1102 = sub i32 %indvars.iv1101, %i.n
  %indvars.iv.next1106 = add i32 %indvars.iv1105, %i.n
  %indvars.iv.next1110 = add i32 %indvars.iv1109, %i.vy
  %exitcond1119.not = icmp eq i32 %i.yi, %i.k
  br i1 %exitcond1119.not, label %.loopexit, label %.preheader.lr.ph, !llvm.loop !1062

bb.j:                                             ; preds = %bb.g
  br i1 %i.lo, label %.lr.ph868, label %.loopexit

.lr.ph868:                                        ; preds = %bb.j
  %i.yj = icmp slt i32 %0, 3
  %i.yk = icmp slt i32 %2, 1
  %brmerge893 = or i1 %i.yj, %i.yk
  br i1 %brmerge893, label %.loopexit, label %.lr.ph860.preheader

.lr.ph860.preheader:                              ; preds = %.lr.ph868
  %i.yl = mul i32 %i.n, %i.og
  %i.ym = add i32 %i.yl, 2
  %i.yn = zext nneg i32 %0 to i64
  %i.yo = add i32 %i.n, 2
  %i.yp = zext nneg i32 %0 to i64
  %i.yq = add i32 %i.vy, 2
  %i.yr = sext i32 %i.o to i64                    ; 2 uses
  %i.ys = add i32 %i.vy, -2
  br label %.lr.ph860

.lr.ph860:                                        ; preds = %.lr.ph860.preheader, %._crit_edge861
  %indvars.iv1138 = phi i32 [ %i.ys, %.lr.ph860.preheader ], [ %indvars.iv.next1139, %._crit_edge861 ] ; 2 uses
  %indvars.iv1132 = phi i32 [ %i.yq, %.lr.ph860.preheader ], [ %indvars.iv.next1133, %._crit_edge861 ] ; 2 uses
  %indvars.iv1126 = phi i32 [ %i.yo, %.lr.ph860.preheader ], [ %indvars.iv.next1127, %._crit_edge861 ] ; 2 uses
  %indvars.iv1120 = phi i32 [ %i.ym, %.lr.ph860.preheader ], [ %indvars.iv.next1121, %._crit_edge861 ] ; 2 uses
  %.10866 = phi i32 [ 1, %.lr.ph860.preheader ], [ %i.zu, %._crit_edge861 ]
  br label %.lr.ph856

.lr.ph856:                                        ; preds = %.lr.ph860, %._crit_edge857
  %indvars.iv1140 = phi i32 [ %indvars.iv1138, %.lr.ph860 ], [ %indvars.iv.next1141, %._crit_edge857 ] ; 2 uses
  %indvars.iv1134 = phi i32 [ %indvars.iv1132, %.lr.ph860 ], [ %indvars.iv.next1135, %._crit_edge857 ] ; 2 uses
  %indvars.iv1128 = phi i32 [ %indvars.iv1126, %.lr.ph860 ], [ %indvars.iv.next1129, %._crit_edge857 ] ; 2 uses
  %indvars.iv1122 = phi i32 [ %indvars.iv1120, %.lr.ph860 ], [ %indvars.iv.next1123, %._crit_edge857 ] ; 2 uses
  %.7858 = phi i32 [ 2, %.lr.ph860 ], [ %i.zs, %._crit_edge857 ]
  %i.yt = sext i32 %indvars.iv1122 to i64
  %i.yu = zext i32 %indvars.iv1128 to i64
  %i.yv = sext i32 %indvars.iv1134 to i64
  %i.yw = sext i32 %indvars.iv1140 to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph856, %bb.k
  %indvars.iv1142 = phi i64 [ %i.yw, %.lr.ph856 ], [ %indvars.iv.next1143, %bb.k ] ; 2 uses
  %indvars.iv1136 = phi i64 [ %i.yv, %.lr.ph856 ], [ %indvars.iv.next1137, %bb.k ] ; 2 uses
  %indvars.iv1130 = phi i64 [ %i.yu, %.lr.ph856 ], [ %indvars.iv.next1131, %bb.k ] ; 2 uses
  %indvars.iv1124 = phi i64 [ %i.yt, %.lr.ph856 ], [ %indvars.iv.next1125, %bb.k ] ; 2 uses
  %.10568854 = phi i32 [ 0, %.lr.ph856 ], [ %i.zr, %bb.k ]
  %i.yx = getelementptr [4 x i8], ptr %7, i64 %indvars.iv1130 ; 3 uses
  %i.yy = getelementptr i8, ptr %i.yx, i64 -4     ; 2 uses
  %i.yz = load float, ptr %i.yy, align 4
  %i.za = getelementptr [4 x i8], ptr %7, i64 %indvars.iv1124 ; 3 uses
  %i.zb = getelementptr i8, ptr %i.za, i64 -4     ; 2 uses
  %i.zc = load float, ptr %i.zb, align 4
  %i.zd = fadd float %i.yz, %i.zc
  %i.ze = getelementptr [4 x i8], ptr %4, i64 %indvars.iv1136 ; 2 uses
  %i.zf = getelementptr i8, ptr %i.ze, i64 -4
  store float %i.zd, ptr %i.zf, align 4
  %i.zg = load float, ptr %i.yy, align 4
  %i.zh = load float, ptr %i.zb, align 4
  %i.zi = fsub float %i.zg, %i.zh
  %i.zj = getelementptr [4 x i8], ptr %4, i64 %indvars.iv1142 ; 2 uses
  %i.zk = getelementptr i8, ptr %i.zj, i64 -4
  store float %i.zi, ptr %i.zk, align 4
  %i.zl = load float, ptr %i.yx, align 4
  %i.zm = load float, ptr %i.za, align 4
  %i.zn = fadd float %i.zl, %i.zm
  store float %i.zn, ptr %i.ze, align 4
  %i.zo = load float, ptr %i.za, align 4
  %i.zp = load float, ptr %i.yx, align 4
  %i.zq = fsub float %i.zo, %i.zp
  store float %i.zq, ptr %i.zj, align 4
  %indvars.iv.next1143 = add nsw i64 %indvars.iv1142, %i.yr
  %indvars.iv.next1137 = add nsw i64 %indvars.iv1136, %i.yr
  %indvars.iv.next1131 = add nuw nsw i64 %indvars.iv1130, %i.yp
  %indvars.iv.next1125 = add nsw i64 %indvars.iv1124, %i.yn
end_hunk_8
begin_hunk_9_@dradbg:bb.a
  %exitcond1096.not = icmp eq i32 %i.aby, %2
  br i1 %exitcond1096.not, label %._crit_edge795, label %.preheader655, !llvm.loop !1245

._crit_edge795:                                   ; preds = %._crit_edge791
  %i.abz = add nuw nsw i32 %.6541798, 1           ; 2 uses
  %indvars.iv.next1079 = sub i32 %indvars.iv1078, %i.d
  %indvars.iv.next1085 = add i32 %indvars.iv1084, %i.d
  %exitcond1097.not = icmp eq i32 %i.abz, %i.o
  br i1 %exitcond1097.not, label %.loopexit, label %.preheader655.lr.ph, !llvm.loop !1246

.lr.ph811:                                        ; preds = %.lr.ph811.preheader, %._crit_edge812
  %indvars.iv1104 = phi i32 [ %i.ys, %.lr.ph811.preheader ], [ %indvars.iv.next1105, %._crit_edge812 ] ; 2 uses
  %indvars.iv1098 = phi i32 [ %i.yq, %.lr.ph811.preheader ], [ %indvars.iv.next1099, %._crit_edge812 ] ; 2 uses
  %.7542815 = phi i32 [ 1, %.lr.ph811.preheader ], [ %i.adb, %._crit_edge812 ]
  br label %.lr.ph805

.lr.ph805:                                        ; preds = %.lr.ph811, %._crit_edge806
  %indvars.iv1106 = phi i32 [ %indvars.iv1104, %.lr.ph811 ], [ %indvars.iv.next1107, %._crit_edge806 ] ; 2 uses
  %indvars.iv1100 = phi i32 [ %indvars.iv1098, %.lr.ph811 ], [ %indvars.iv.next1101, %._crit_edge806 ] ; 2 uses
  %.5809 = phi i32 [ 2, %.lr.ph811 ], [ %i.acz, %._crit_edge806 ]
  %i.aca = sext i32 %indvars.iv1100 to i64
  %i.acb = sext i32 %indvars.iv1106 to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph805, %bb.f
  %indvars.iv1108 = phi i64 [ %i.acb, %.lr.ph805 ], [ %indvars.iv.next1109, %bb.f ] ; 4 uses
  %indvars.iv1102 = phi i64 [ %i.aca, %.lr.ph805 ], [ %indvars.iv.next1103, %bb.f ] ; 4 uses
  %.7550803 = phi i32 [ 0, %.lr.ph805 ], [ %i.acy, %bb.f ]
  %i.acc = add nsw i64 %indvars.iv1108, -1        ; 2 uses
  %i.acd = getelementptr inbounds [4 x i8], ptr %5, i64 %i.acc ; 2 uses
  %i.ace = load float, ptr %i.acd, align 4
  %i.acf = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv1102 ; 2 uses
  %i.acg = load float, ptr %i.acf, align 4
  %i.ach = fsub float %i.ace, %i.acg
  %i.aci = getelementptr inbounds [4 x i8], ptr %7, i64 %i.acc
  store float %i.ach, ptr %i.aci, align 4
  %i.acj = load float, ptr %i.acd, align 4
  %i.ack = load float, ptr %i.acf, align 4
  %i.acl = fadd float %i.acj, %i.ack
  %i.acm = add nsw i64 %indvars.iv1102, -1        ; 2 uses
  %i.acn = getelementptr inbounds [4 x i8], ptr %7, i64 %i.acm
  store float %i.acl, ptr %i.acn, align 4
  %i.aco = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv1108 ; 2 uses
  %i.acp = load float, ptr %i.aco, align 4
  %i.acq = getelementptr inbounds [4 x i8], ptr %5, i64 %i.acm ; 2 uses
  %i.acr = load float, ptr %i.acq, align 4
  %i.acs = fadd float %i.acp, %i.acr
  %i.act = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv1108
  store float %i.acs, ptr %i.act, align 4
  %i.acu = load float, ptr %i.aco, align 4
  %i.acv = load float, ptr %i.acq, align 4
  %i.acw = fsub float %i.acu, %i.acv
  %i.acx = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv1102
  store float %i.acw, ptr %i.acx, align 4
  %indvars.iv.next1109 = add nsw i64 %indvars.iv1108, %i.yr
  %indvars.iv.next1103 = add nsw i64 %indvars.iv1102, %i.yr
  %i.acy = add nuw nsw i32 %.7550803, 1           ; 2 uses
  %exitcond1113.not = icmp eq i32 %i.acy, %2
  br i1 %exitcond1113.not, label %._crit_edge806, label %bb.f, !llvm.loop !1247

._crit_edge806:                                   ; preds = %bb.f
  %i.acz = add nuw nsw i32 %.5809, 2              ; 2 uses
  %i.ada = icmp slt i32 %i.acz, %0
  %indvars.iv.next1101 = add i32 %indvars.iv1100, 2
  %indvars.iv.next1107 = add i32 %indvars.iv1106, 2
  br i1 %i.ada, label %.lr.ph805, label %._crit_edge812, !llvm.loop !1248

._crit_edge812:                                   ; preds = %._crit_edge806
  %i.adb = add nuw nsw i32 %.7542815, 1           ; 2 uses
  %indvars.iv.next1099 = sub i32 %indvars.iv1098, %i.d
  %indvars.iv.next1105 = add i32 %indvars.iv1104, %i.d
  %exitcond1114.not = icmp eq i32 %i.adb, %i.o
  br i1 %exitcond1114.not, label %.loopexit, label %.lr.ph811, !llvm.loop !1249

.loopexit:                                        ; preds = %._crit_edge795, %._crit_edge812, %.lr.ph816, %.lr.ph799, %.preheader656, %.preheader654
  br i1 %i.xp, label %.lr.ph820.preheader, label %.preheader653

.lr.ph820.preheader:                              ; preds = %.loopexit
  %wide.trip.count1118 = zext i32 %3 to i64       ; 5 uses
  %min.iters.check1687 = icmp ult i32 %3, 8
  %i.adc = sub i64 %i.b, %i.a
  %diff.check1685 = icmp ugt i64 %i.adc, -32
  %or.cond1770 = or i1 %min.iters.check1687, %diff.check1685
  br i1 %or.cond1770, label %.lr.ph820.preheader1798, label %vector.ph1688

vector.ph1688:                                    ; preds = %.lr.ph820.preheader
  %n.vec1690 = and i64 %wide.trip.count1118, 2147483640 ; 3 uses
  br label %vector.body1691

vector.body1691:                                  ; preds = %vector.body1691, %vector.ph1688
  %index1692 = phi i64 [ 0, %vector.ph1688 ], [ %index.next1695, %vector.body1691 ] ; 3 uses
  %i.add = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %index1692 ; 2 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %i.add, i64 16
  %wide.load1693 = load <4 x float>, ptr %i.add, align 4
  %wide.load1694 = load <4 x float>, ptr %i.ade, align 4
  %i.adf = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %index1692 ; 2 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adf, i64 16
  store <4 x float> %wide.load1693, ptr %i.adf, align 4
  store <4 x float> %wide.load1694, ptr %i.adg, align 4
  %index.next1695 = add nuw i64 %index1692, 8     ; 2 uses
  %i.adh = icmp eq i64 %index.next1695, %n.vec1690
  br i1 %i.adh, label %middle.block1696, label %vector.body1691, !llvm.loop !1250

middle.block1696:                                 ; preds = %vector.body1691
  %cmp.n1697 = icmp eq i64 %n.vec1690, %wide.trip.count1118
  br i1 %cmp.n1697, label %.preheader653, label %.lr.ph820.preheader1798

.lr.ph820.preheader1798:                          ; preds = %.lr.ph820.preheader, %middle.block1696
  %indvars.iv1115.ph = phi i64 [ 0, %.lr.ph820.preheader ], [ %n.vec1690, %middle.block1696 ] ; 3 uses
  %xtraiter1812 = and i64 %wide.trip.count1118, 3 ; 2 uses
  %lcmp.mod1813.not = icmp eq i64 %xtraiter1812, 0
  br i1 %lcmp.mod1813.not, label %.lr.ph820.prol.loopexit, label %.lr.ph820.prol

.lr.ph820.prol:                                   ; preds = %.lr.ph820.preheader1798, %.lr.ph820.prol
  %indvars.iv1115.prol = phi i64 [ %indvars.iv.next1116.prol, %.lr.ph820.prol ], [ %indvars.iv1115.ph, %.lr.ph820.preheader1798 ] ; 3 uses
  %prol.iter1814 = phi i64 [ %prol.iter1814.next, %.lr.ph820.prol ], [ 0, %.lr.ph820.preheader1798 ]
  %i.adi = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv1115.prol
  %i.adj = load float, ptr %i.adi, align 4
  %i.adk = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv1115.prol
  store float %i.adj, ptr %i.adk, align 4
  %indvars.iv.next1116.prol = add nuw nsw i64 %indvars.iv1115.prol, 1 ; 2 uses
  %prol.iter1814.next = add i64 %prol.iter1814, 1 ; 2 uses
  %prol.iter1814.cmp.not = icmp eq i64 %prol.iter1814.next, %xtraiter1812
  br i1 %prol.iter1814.cmp.not, label %.lr.ph820.prol.loopexit, label %.lr.ph820.prol, !llvm.loop !1251

.lr.ph820.prol.loopexit:                          ; preds = %.lr.ph820.prol, %.lr.ph820.preheader1798
  %indvars.iv1115.unr = phi i64 [ %indvars.iv1115.ph, %.lr.ph820.preheader1798 ], [ %indvars.iv.next1116.prol, %.lr.ph820.prol ]
  %i.adl = sub nsw i64 %indvars.iv1115.ph, %wide.trip.count1118
  %i.adm = icmp ugt i64 %i.adl, -4
  br i1 %i.adm, label %.preheader653, label %.lr.ph820

.preheader653:                                    ; preds = %.lr.ph820.prol.loopexit, %.lr.ph820, %middle.block1696, %.loopexit
  %i.adn = icmp sgt i32 %1, 1                     ; 3 uses
  %or.cond878 = and i1 %i.adn, %i.dw
  br i1 %or.cond878, label %.lr.ph824.preheader, label %._crit_edge829.split

.lr.ph824.preheader:                              ; preds = %.preheader653
  %i.ado = sext i32 %0 to i64                     ; 5 uses
  %i.adp = add nsw i32 %2, -1
  %xtraiter1815 = and i32 %2, 3                   ; 3 uses
  %i.adq = icmp ult i32 %i.adp, 3
  %unroll_iter = and i32 %2, 2147483644
  %lcmp.mod1816.not = icmp eq i32 %xtraiter1815, 0
  %lcmp.mod1817 = icmp ne i32 %xtraiter1815, 0
  br label %.lr.ph824

.lr.ph820:                                        ; preds = %.lr.ph820.prol.loopexit, %.lr.ph820
  %indvars.iv1115 = phi i64 [ %indvars.iv.next1116.3, %.lr.ph820 ], [ %indvars.iv1115.unr, %.lr.ph820.prol.loopexit ] ; 6 uses
  %i.adr = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv1115
  %i.ads = load float, ptr %i.adr, align 4
  %i.adt = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv1115
  store float %i.ads, ptr %i.adt, align 4
  %indvars.iv.next1116 = add nuw nsw i64 %indvars.iv1115, 1 ; 2 uses
  %i.adu = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.next1116
  %i.adv = load float, ptr %i.adu, align 4
  %i.adw = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next1116
  store float %i.adv, ptr %i.adw, align 4
  %indvars.iv.next1116.1 = add nuw nsw i64 %indvars.iv1115, 2 ; 2 uses
  %i.adx = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.next1116.1
  %i.ady = load float, ptr %i.adx, align 4
  %i.adz = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next1116.1
  store float %i.ady, ptr %i.adz, align 4
  %indvars.iv.next1116.2 = add nuw nsw i64 %indvars.iv1115, 3 ; 2 uses
  %i.aea = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.next1116.2
  %i.aeb = load float, ptr %i.aea, align 4
  %i.aec = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next1116.2
  store float %i.aeb, ptr %i.aec, align 4
  %indvars.iv.next1116.3 = add nuw nsw i64 %indvars.iv1115, 4 ; 2 uses
  %exitcond1119.not.3 = icmp eq i64 %indvars.iv.next1116.3, %wide.trip.count1118
  br i1 %exitcond1119.not.3, label %.preheader653, label %.lr.ph820, !llvm.loop !1252

.lr.ph824:                                        ; preds = %.lr.ph824.preheader, %._crit_edge825
  %indvars.iv1120 = phi i32 [ %i.d, %.lr.ph824.preheader ], [ %indvars.iv.next1121, %._crit_edge825 ] ; 2 uses
  %.8827 = phi i32 [ 1, %.lr.ph824.preheader ], [ %i.aet, %._crit_edge825 ]
  %i.aed = sext i32 %indvars.iv1120 to i64        ; 2 uses
  br i1 %i.adq, label %.epil.preheader, label %.lr.ph824.new

.lr.ph824.new:                                    ; preds = %.lr.ph824, %.lr.ph824.new
  %indvars.iv1122 = phi i64 [ %indvars.iv.next1123.3, %.lr.ph824.new ], [ %i.aed, %.lr.ph824 ] ; 3 uses
  %niter = phi i32 [ %niter.next.3, %.lr.ph824.new ], [ 0, %.lr.ph824 ]
  %i.aee = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv1122
  %i.aef = load float, ptr %i.aee, align 4
  %i.aeg = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv1122
  store float %i.aef, ptr %i.aeg, align 4
  %indvars.iv.next1123 = add nsw i64 %indvars.iv1122, %i.ado ; 3 uses
  %i.aeh = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next1123
  %i.aei = load float, ptr %i.aeh, align 4
  %i.aej = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next1123
  store float %i.aei, ptr %i.aej, align 4
  %indvars.iv.next1123.1 = add nsw i64 %indvars.iv.next1123, %i.ado ; 3 uses
  %i.aek = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next1123.1
  %i.ael = load float, ptr %i.aek, align 4
  %i.aem = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next1123.1
  store float %i.ael, ptr %i.aem, align 4
  %indvars.iv.next1123.2 = add nsw i64 %indvars.iv.next1123.1, %i.ado ; 3 uses
  %i.aen = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next1123.2
  %i.aeo = load float, ptr %i.aen, align 4
  %i.aep = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next1123.2
  store float %i.aeo, ptr %i.aep, align 4
  %indvars.iv.next1123.3 = add nsw i64 %indvars.iv.next1123.2, %i.ado ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge825.unr-lcssa, label %.lr.ph824.new, !llvm.loop !1253

._crit_edge825.unr-lcssa:                         ; preds = %.lr.ph824.new
  br i1 %lcmp.mod1816.not, label %._crit_edge825, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge825.unr-lcssa, %.lr.ph824
  %indvars.iv1122.epil.init = phi i64 [ %i.aed, %.lr.ph824 ], [ %indvars.iv.next1123.3, %._crit_edge825.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1817)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %indvars.iv1122.epil = phi i64 [ %indvars.iv1122.epil.init, %.epil.preheader ], [ %indvars.iv.next1123.epil, %bb.g ] ; 3 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.aeq = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv1122.epil
  %i.aer = load float, ptr %i.aeq, align 4
  %i.aes = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv1122.epil
  store float %i.aer, ptr %i.aes, align 4
  %indvars.iv.next1123.epil = add nsw i64 %indvars.iv1122.epil, %i.ado
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter1815
  br i1 %epil.iter.cmp.not, label %._crit_edge825, label %bb.g, !llvm.loop !1254

._crit_edge825:                                   ; preds = %bb.g, %._crit_edge825.unr-lcssa
  %i.aet = add nuw nsw i32 %.8827, 1              ; 2 uses
  %indvars.iv.next1121 = add i32 %indvars.iv1120, %i.d
  %exitcond1126.not = icmp eq i32 %i.aet, %1
  br i1 %exitcond1126.not, label %._crit_edge829.split, label %.lr.ph824, !llvm.loop !1255

._crit_edge829.split:                             ; preds = %._crit_edge825, %.preheader653
  %i.aeu = icmp sgt i32 %i.m, %2
  br i1 %i.aeu, label %bb.j, label %bb.h

bb.h:                                             ; preds = %._crit_edge829.split
  br i1 %i.adn, label %.lr.ph845, label %.critedge

.lr.ph845:                                        ; preds = %bb.h
  %i.aev = icmp slt i32 %0, 3
  %i.aew = icmp slt i32 %2, 1
  %brmerge881 = or i1 %i.aev, %i.aew
  br i1 %brmerge881, label %.critedge, label %.lr.ph839.preheader

.lr.ph839.preheader:                              ; preds = %.lr.ph845
  %i.aex = add i32 %i.d, 2
  %i.aey = zext nneg i32 %0 to i64
  br label %.lr.ph839

.lr.ph839:                                        ; preds = %.lr.ph839.preheader, %._crit_edge840
  %indvars.iv1135 = phi i32 [ -1, %.lr.ph839.preheader ], [ %indvars.iv.next1136, %._crit_edge840 ] ; 2 uses
  %indvars.iv1127 = phi i32 [ %i.aex, %.lr.ph839.preheader ], [ %indvars.iv.next1128, %._crit_edge840 ] ; 2 uses
  %.9843 = phi i32 [ 1, %.lr.ph839.preheader ], [ %i.aga, %._crit_edge840 ]
  %i.aez = sext i32 %indvars.iv1135 to i64
  br label %.lr.ph833

.lr.ph833:                                        ; preds = %.lr.ph839, %._crit_edge834
  %indvars.iv1137 = phi i64 [ %i.aez, %.lr.ph839 ], [ %indvars.iv.next1138, %._crit_edge834 ] ; 2 uses
  %indvars.iv1129 = phi i32 [ %indvars.iv1127, %.lr.ph839 ], [ %indvars.iv.next1130, %._crit_edge834 ] ; 2 uses
  %.6836 = phi i32 [ 2, %.lr.ph839 ], [ %i.afy, %._crit_edge834 ]
  %i.afa = sext i32 %indvars.iv1129 to i64
  %indvars.iv.next1138 = add nsw i64 %indvars.iv1137, 2 ; 2 uses
  %i.afb = getelementptr [4 x i8], ptr %9, i64 %indvars.iv1137
  %i.afc = getelementptr i8, ptr %i.afb, i64 4    ; 2 uses
  %i.afd = getelementptr inbounds [4 x i8], ptr %9, i64 %indvars.iv.next1138 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph833, %bb.i
  %indvars.iv1131 = phi i64 [ %i.afa, %.lr.ph833 ], [ %indvars.iv.next1132, %bb.i ] ; 4 uses
  %.9552831 = phi i32 [ 0, %.lr.ph833 ], [ %i.afx, %bb.i ]
  %i.afe = load float, ptr %i.afc, align 4
  %i.aff = add nsw i64 %indvars.iv1131, -1        ; 2 uses
  %i.afg = getelementptr inbounds [4 x i8], ptr %7, i64 %i.aff ; 2 uses
  %i.afh = load float, ptr %i.afg, align 4
  %i.afi = fmul float %i.afe, %i.afh
  %i.afj = load float, ptr %i.afd, align 4
  %i.afk = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv1131 ; 2 uses
  %i.afl = load float, ptr %i.afk, align 4
  %i.afm = fmul float %i.afj, %i.afl
  %i.afn = fsub float %i.afi, %i.afm
  %i.afo = getelementptr inbounds [4 x i8], ptr %5, i64 %i.aff
  store float %i.afn, ptr %i.afo, align 4
  %i.afp = load float, ptr %i.afc, align 4
  %i.afq = load float, ptr %i.afk, align 4
  %i.afr = fmul float %i.afp, %i.afq
  %i.afs = load float, ptr %i.afd, align 4
  %i.aft = load float, ptr %i.afg, align 4
  %i.afu = fmul float %i.afs, %i.aft
  %i.afv = fadd float %i.afr, %i.afu
  %i.afw = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv1131
  store float %i.afv, ptr %i.afw, align 4
  %indvars.iv.next1132 = add nsw i64 %indvars.iv1131, %i.aey
  %i.afx = add nuw nsw i32 %.9552831, 1           ; 2 uses
  %exitcond1134.not = icmp eq i32 %i.afx, %2
  br i1 %exitcond1134.not, label %._crit_edge834, label %bb.i, !llvm.loop !1256

._crit_edge834:                                   ; preds = %bb.i
  %i.afy = add nuw nsw i32 %.6836, 2              ; 2 uses
  %i.afz = icmp slt i32 %i.afy, %0
  %indvars.iv.next1130 = add i32 %indvars.iv1129, 2
  br i1 %i.afz, label %.lr.ph833, label %._crit_edge840, !llvm.loop !1257

._crit_edge840:                                   ; preds = %._crit_edge834
  %i.aga = add nuw nsw i32 %.9843, 1              ; 2 uses
  %indvars.iv.next1128 = add i32 %indvars.iv1127, %i.d
  %indvars.iv.next1136 = add i32 %indvars.iv1135, %0
  %exitcond1140.not = icmp eq i32 %i.aga, %1
  br i1 %exitcond1140.not, label %.critedge, label %.lr.ph839, !llvm.loop !1258

bb.j:                                             ; preds = %._crit_edge829.split
  br i1 %i.adn, label %.lr.ph859, label %.critedge

.lr.ph859:                                        ; preds = %bb.j
  %i.agb = icmp slt i32 %2, 1
  %i.agc = icmp slt i32 %0, 3
  %brmerge884 = or i1 %i.agb, %i.agc
  br i1 %brmerge884, label %.critedge, label %.preheader.lr.ph.preheader

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph859
  %i.agd = zext nneg i32 %0 to i64                ; 2 uses
  %scevgep1718 = getelementptr i8, ptr %5, i64 4
  %i.age = add nsw i32 %2, -1
  %i.agf = zext i32 %i.age to i64
  %i.agg = mul nuw nsw i64 %i.agd, %i.agf
  %i.agh = shl i64 %i.agg, 2
  %i.agi = add nsw i32 %0, -3
  %i.agj = lshr i32 %i.agi, 1
  %i.agk = zext nneg i32 %i.agj to i64
  %i.agl = shl nuw nsw i64 %i.agk, 3              ; 2 uses
  %i.agm = add i64 %i.agh, %i.agl
  %i.agn = add i64 %i.agm, 12                     ; 2 uses
  %scevgep1720 = getelementptr i8, ptr %5, i64 %i.agn
  %scevgep1722 = getelementptr i8, ptr %9, i64 4
  %i.ago = getelementptr i8, ptr %9, i64 %i.agl
  %scevgep1724 = getelementptr i8, ptr %i.ago, i64 12
  %scevgep1726 = getelementptr i8, ptr %7, i64 4
  %scevgep1728 = getelementptr i8, ptr %7, i64 %i.agn
  %i.agp = add nsw i32 %0, -3                     ; 2 uses
  %i.agq = lshr i32 %i.agp, 1
  %narrow1767 = add nuw i32 %i.agq, 1
  %i.agr = zext i32 %narrow1767 to i64            ; 2 uses
  %min.iters.check1738 = icmp ult i32 %i.agp, 6
  %n.vec1741 = and i64 %i.agr, 4294967292         ; 4 uses
  %i.ags = shl nuw nsw i64 %n.vec1741, 1          ; 2 uses
  %i.agt = trunc nuw i64 %n.vec1741 to i32
  %i.agu = shl i32 %i.agt, 1
  %i.agv = or disjoint i32 %i.agu, 2
  %cmp.n1759 = icmp eq i64 %n.vec1741, %i.agr
  br label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge854
  %indvars.iv1145 = phi i32 [ %i.d, %.preheader.lr.ph.preheader ], [ %indvars.iv.next1146, %._crit_edge854 ] ; 3 uses
  %indvars.iv1141 = phi i32 [ -1, %.preheader.lr.ph.preheader ], [ %indvars.iv.next1142, %._crit_edge854 ] ; 3 uses
  %.10857 = phi i32 [ 1, %.preheader.lr.ph.preheader ], [ %i.aiq, %._crit_edge854 ]
  %i.agw = sext i32 %indvars.iv1145 to i64
  %i.agx = shl nsw i64 %i.agw, 2                  ; 4 uses
  %scevgep1719 = getelementptr i8, ptr %scevgep1718, i64 %i.agx ; 2 uses
  %scevgep1721 = getelementptr i8, ptr %scevgep1720, i64 %i.agx ; 2 uses
  %i.agy = sext i32 %indvars.iv1141 to i64
  %i.agz = shl nsw i64 %i.agy, 2                  ; 2 uses
  %scevgep1723 = getelementptr i8, ptr %scevgep1722, i64 %i.agz
  %scevgep1725 = getelementptr i8, ptr %scevgep1724, i64 %i.agz
  %scevgep1727 = getelementptr i8, ptr %scevgep1726, i64 %i.agx
  %scevgep1729 = getelementptr i8, ptr %scevgep1728, i64 %i.agx
  %i.aha = sext i32 %indvars.iv1141 to i64        ; 3 uses
  %i.ahb = sext i32 %indvars.iv1145 to i64
  %bound01730 = icmp ult ptr %scevgep1719, %scevgep1725
  %bound11731 = icmp ult ptr %scevgep1723, %scevgep1721
  %found.conflict1732 = and i1 %bound01730, %bound11731
  %bound01733 = icmp ult ptr %scevgep1719, %scevgep1729
  %bound11734 = icmp ult ptr %scevgep1727, %scevgep1721
  %found.conflict1735 = and i1 %bound01733, %bound11734
  %conflict.rdx1736 = or i1 %found.conflict1732, %found.conflict1735
  %i.ahc = add nsw i64 %i.ags, %i.aha
  %invariant.gep1866 = getelementptr [4 x i8], ptr %9, i64 %i.aha
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge851
  %indvars.iv1147 = phi i64 [ %i.ahb, %.preheader.lr.ph ], [ %indvars.iv.next1148, %._crit_edge851 ] ; 4 uses
  %.10553853 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.aip, %._crit_edge851 ]
  %brmerge1872 = select i1 %min.iters.check1738, i1 true, i1 %conflict.rdx1736
  br i1 %brmerge1872, label %scalar.ph1737.preheader, label %vector.ph1739

vector.ph1739:                                    ; preds = %.preheader
  %i.ahd = add i64 %indvars.iv1147, %i.ags
  %invariant.op1868 = add i64 %indvars.iv1147, 1
  br label %vector.body1742

vector.body1742:                                  ; preds = %vector.body1742, %vector.ph1739
  %index1743 = phi i64 [ 0, %vector.ph1739 ], [ %index.next1757, %vector.body1742 ] ; 2 uses
  %i.ahe = shl i64 %index1743, 1                  ; 2 uses
  %gep1867 = getelementptr [4 x i8], ptr %invariant.gep1866, i64 %i.ahe
  %i.ahf = getelementptr i8, ptr %gep1867, i64 4  ; 2 uses
  %wide.vec1744 = load <8 x float>, ptr %i.ahf, align 4, !alias.scope !1259 ; 2 uses
  %.reass1869 = add i64 %i.ahe, %invariant.op1868 ; 2 uses
  %i.ahg = getelementptr inbounds [4 x i8], ptr %7, i64 %.reass1869 ; 2 uses
  %wide.vec1747 = load <8 x float>, ptr %i.ahg, align 4, !alias.scope !1262 ; 2 uses
  %i.ahh = fmul <8 x float> %wide.vec1744, %wide.vec1747
  %i.ahi = shufflevector <8 x float> %i.ahh, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ahj = fmul <8 x float> %wide.vec1744, %wide.vec1747
  %i.ahk = shufflevector <8 x float> %i.ahj, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ahl = fsub <4 x float> %i.ahi, %i.ahk
end_hunk_9
