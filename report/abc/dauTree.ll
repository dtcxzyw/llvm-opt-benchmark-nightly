Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/dauTree?download=true
inline.NumInlined: 373
inline.NumDeleted: 72
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 36
begin_hunk_0_@Dss_ManBooleanAnd:bb.a
  call void @free(ptr noundef nonnull %i.fp) #32
  %i.gr = load ptr, ptr %i.f, align 8, !tbaa !57
  %i.gs = load i32, ptr @Dss_ManBooleanAnd.Buffer, align 16
  %i.gt = and i32 %i.gs, 67108863                 ; 2 uses
  %i.gu = getelementptr i8, ptr %i.gr, i64 8
  %.val = load ptr, ptr %i.gu, align 8, !tbaa !30
  %i.gv = lshr i32 %i.gt, 1
  %i.gw = zext nneg i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.gw
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !31
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 4
  %i.ha = load i32, ptr %i.gz, align 4
  %i.hb = shl i32 %i.ha, 23                       ; 2 uses
  %i.hc = and i32 %i.hb, -67108864
  %i.hd = or disjoint i32 %i.hc, %i.gt
  store i32 %i.hd, ptr @Dss_ManBooleanAnd.Buffer, align 16
  %i.he = lshr i32 %i.hb, 26                      ; 4 uses
  %.not92 = icmp eq i32 %i.he, 0
  br i1 %.not92, label %.loopexit, label %.lr.ph87.preheader

.lr.ph87.preheader:                               ; preds = %Dss_NtkFree.exit
  %wide.trip.count112 = zext nneg i32 %i.he to i64 ; 2 uses
  %xtraiter159 = and i64 %wide.trip.count112, 1
  %i.hf = icmp eq i32 %i.he, 1
  br i1 %i.hf, label %.lr.ph87.epil.preheader, label %.lr.ph87.preheader.new

.lr.ph87.preheader.new:                           ; preds = %.lr.ph87.preheader
  %unroll_iter163 = and i64 %wide.trip.count112, 62
  br label %.lr.ph87

.lr.ph87:                                         ; preds = %.lr.ph87, %.lr.ph87.preheader.new
  %indvars.iv109 = phi i64 [ 0, %.lr.ph87.preheader.new ], [ %indvars.iv.next110.1, %.lr.ph87 ] ; 4 uses
  %niter164 = phi i64 [ 0, %.lr.ph87.preheader.new ], [ %niter164.next.1, %.lr.ph87 ]
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv109
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !36 ; 2 uses
  %i.hi = ashr i32 %i.hh, 1
  %i.hj = sext i32 %i.hi to i64
  %i.hk = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.hj
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !36
  %i.hm = and i32 %i.hh, 1
  %i.hn = shl nsw i32 %i.hl, 1
  %i.ho = or disjoint i32 %i.hn, %i.hm
  %i.hp = trunc i32 %i.ho to i8
  %i.hq = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @Dss_ManBooleanAnd.Buffer, i64 4), i64 %indvars.iv109
  store i8 %i.hp, ptr %i.hq, align 2, !tbaa !42
  %indvars.iv.next110 = or disjoint i64 %indvars.iv109, 1 ; 2 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next110
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !36 ; 2 uses
  %i.ht = ashr i32 %i.hs, 1
  %i.hu = sext i32 %i.ht to i64
  %i.hv = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.hu
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !36
  %i.hx = and i32 %i.hs, 1
  %i.hy = shl nsw i32 %i.hw, 1
  %i.hz = or disjoint i32 %i.hy, %i.hx
  %i.ia = trunc i32 %i.hz to i8
  %i.ib = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @Dss_ManBooleanAnd.Buffer, i64 4), i64 %indvars.iv.next110
  store i8 %i.ia, ptr %i.ib, align 1, !tbaa !42
  %indvars.iv.next110.1 = add nuw nsw i64 %indvars.iv109, 2 ; 2 uses
  %niter164.next.1 = add i64 %niter164, 2         ; 2 uses
  %niter164.ncmp.1 = icmp eq i64 %niter164.next.1, %unroll_iter163
  br i1 %niter164.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph87, !llvm.loop !180

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph87
  %lcmp.mod161.not = icmp eq i64 %xtraiter159, 0
  br i1 %lcmp.mod161.not, label %.loopexit, label %.lr.ph87.epil.preheader

.lr.ph87.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph87.preheader
  %indvars.iv109.epil.init = phi i64 [ 0, %.lr.ph87.preheader ], [ %indvars.iv.next110.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod162 = trunc i32 %i.he to i1
  call void @llvm.assume(i1 %lcmp.mod162)
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv109.epil.init
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !36 ; 2 uses
  %i.ie = ashr i32 %i.id, 1
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.if
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !36
  %i.ii = and i32 %i.id, 1
  %i.ij = shl nsw i32 %i.ih, 1
  %i.ik = or disjoint i32 %i.ij, %i.ii
  %i.il = trunc i32 %i.ik to i8
  %i.im = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @Dss_ManBooleanAnd.Buffer, i64 4), i64 %indvars.iv109.epil.init
  store i8 %i.il, ptr %i.im, align 1, !tbaa !42
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph87.epil.preheader, %.loopexit.loopexit.unr-lcssa, %Dss_NtkFree.exit, %Abc_TtAnd.exit
  %.066 = phi ptr [ null, %Abc_TtAnd.exit ], [ @Dss_ManBooleanAnd.Buffer, %Dss_NtkFree.exit ], [ @Dss_ManBooleanAnd.Buffer, %.loopexit.loopexit.unr-lcssa ], [ @Dss_ManBooleanAnd.Buffer, %.lr.ph87.epil.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  ret ptr %.066
}

declare i32 @Dau_DsdDecompose(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull ptr @Dss_ManSharedMap(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #17 {
bb.a:
  %i.a = alloca [12 x i32], align 16              ; 8 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !36
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @Dss_ManSharedMap.Buffer, i64 16), align 16
  %i.d = and i32 %i.b, 134217727
  %i.e = zext nneg i32 %i.d to i64
  %i.f = and i64 %i.c, -134217728
  %i.g = or disjoint i64 %i.f, %i.e               ; 2 uses
  store i64 %i.g, ptr getelementptr inbounds nuw (i8, ptr @Dss_ManSharedMap.Buffer, i64 16), align 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !36
  %i.j = and i32 %i.i, 134217727
  %i.k = zext nneg i32 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 32
  %i.m = and i64 %i.g, 4294967295
  %i.n = or disjoint i64 %i.l, %i.m               ; 4 uses
  store i64 %i.n, ptr getelementptr inbounds nuw (i8, ptr @Dss_ManSharedMap.Buffer, i64 16), align 16
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, i8 0, i64 48, i1 false)
  store i32 -1, ptr %i.a, align 16
  %i.o = load i32, ptr %2, align 4, !tbaa !36     ; 4 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.b
  %i.q = load ptr, ptr %3, align 8, !tbaa !82     ; 3 uses
  %wide.trip.count = zext nneg i32 %i.o to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.r = icmp eq i32 %i.o, 1
  br i1 %i.r, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.c

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod48 = trunc i32 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod48)
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.epil.init
  %i.t = load i32, ptr %i.s, align 4, !tbaa !36   ; 2 uses
  %i.u = and i32 %i.t, 1
  %indvars.iv.tr.epil = trunc nuw i64 %indvars.iv.epil.init to i32
  %i.v = shl nuw i32 %indvars.iv.tr.epil, 1
  %i.w = or disjoint i32 %i.u, %i.v
  %i.x = ashr i32 %i.t, 1
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.y
  store i32 %i.w, ptr %i.z, align 4, !tbaa !36
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !36 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph37, label %._crit_edge

.lr.ph37:                                         ; preds = %.preheader
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %.pre42 = load ptr, ptr %i.ad, align 8, !tbaa !82
  br label %bb.d

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !36 ; 2 uses
  %i.ag = and i32 %i.af, 1
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.ah = shl nuw i32 %indvars.iv.tr, 1
  %i.ai = or disjoint i32 %i.ag, %i.ah
  %i.aj = ashr i32 %i.af, 1
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ak
  store i32 %i.ai, ptr %i.al, align 4, !tbaa !36
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next
  %i.an = load i32, ptr %i.am, align 4, !tbaa !36 ; 2 uses
  %i.ao = and i32 %i.an, 1
  %indvars.iv.tr.1 = trunc nuw i64 %indvars.iv.next to i32
  %i.ap = shl nuw i32 %indvars.iv.tr.1, 1
  %i.aq = or disjoint i32 %i.ao, %i.ap
  %i.ar = ashr i32 %i.an, 1
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.as
  store i32 %i.aq, ptr %i.at, align 4, !tbaa !36
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.c, !llvm.loop !181

bb.d:                                             ; preds = %.lr.ph37, %bb.f
  %i.au = phi i32 [ %i.ab, %.lr.ph37 ], [ %i.br, %bb.f ]
  %i.av = phi i64 [ %i.n, %.lr.ph37 ], [ %i.bs, %bb.f ] ; 3 uses
  %i.aw = phi ptr [ %.pre42, %.lr.ph37 ], [ %i.bt, %bb.f ] ; 2 uses
  %indvars.iv39 = phi i64 [ 0, %.lr.ph37 ], [ %indvars.iv.next40, %bb.f ] ; 4 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv39
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !36
  %i.az = ashr i32 %i.ay, 1                       ; 2 uses
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = and i32 %i.ba, %4
  %.not33 = icmp eq i32 %i.bb, 0
  br i1 %.not33, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bc = trunc i64 %indvars.iv39 to i8
  %sh.diff = lshr i64 %i.av, 58                   ; 2 uses
  %i.bd = and i64 %sh.diff, 62
  %i.be = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @Dss_ManSharedMap.Buffer, i64 24), i64 %i.bd
  store i8 %i.bc, ptr %i.be, align 2, !tbaa !42
  %i.bf = sext i32 %i.az to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !36
  %i.bi = load ptr, ptr %i.ad, align 8, !tbaa !82
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv39
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !36
  %i.bl = and i32 %i.bk, 1
  %i.bm = xor i32 %i.bl, %i.bh
  %i.bn = trunc i32 %i.bm to i8
  %i.bo = or i64 %sh.diff, 1
  %i.bp = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @Dss_ManSharedMap.Buffer, i64 24), i64 %i.bo
  store i8 %i.bn, ptr %i.bp, align 1, !tbaa !42
  %i.bq = add i64 %i.av, 576460752303423488       ; 2 uses
  store i64 %i.bq, ptr getelementptr inbounds nuw (i8, ptr @Dss_ManSharedMap.Buffer, i64 16), align 16
  %.pre = load ptr, ptr %i.ad, align 8, !tbaa !82
  %.pre43 = load i32, ptr %i.aa, align 4, !tbaa !36
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.br = phi i32 [ %i.au, %bb.d ], [ %.pre43, %bb.e ] ; 2 uses
  %i.bs = phi i64 [ %i.av, %bb.d ], [ %i.bq, %bb.e ] ; 2 uses
  %i.bt = phi ptr [ %i.aw, %bb.d ], [ %.pre, %bb.e ]
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1 ; 2 uses
  %i.bu = sext i32 %i.br to i64
  %i.bv = icmp slt i64 %indvars.iv.next40, %i.bu
  br i1 %i.bv, label %bb.d, label %._crit_edge, !llvm.loop !182

._crit_edge:                                      ; preds = %bb.f, %.preheader
  %Dss_ManSharedMap.Buffer.val44 = phi i64 [ %i.n, %.preheader ], [ %i.bs, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.a
  %Dss_ManSharedMap.Buffer.val = phi i64 [ %Dss_ManSharedMap.Buffer.val44, %._crit_edge ], [ %i.n, %bb.a ] ; 3 uses
  %i.bw = lshr i64 %Dss_ManSharedMap.Buffer.val, 61
  %i.bx = add nuw nsw i64 %i.bw, 3
  %i.by = and i64 %Dss_ManSharedMap.Buffer.val, 1729382256910270464
  %i.bz = icmp ne i64 %i.by, 0
  %i.ca = zext i1 %i.bz to i64
  %i.cb = add nuw nsw i64 %i.bx, %i.ca
  %i.cc = shl nuw nsw i64 %i.cb, 27
  %i.cd = and i64 %Dss_ManSharedMap.Buffer.val, -4160749569
  %i.ce = or disjoint i64 %i.cc, %i.cd
  store i64 %i.ce, ptr getelementptr inbounds nuw (i8, ptr @Dss_ManSharedMap.Buffer, i64 16), align 16
  ret ptr @Dss_ManSharedMap.Buffer
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: nounwind uwtable
define i32 @Dss_ManMerge(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef captures(none) %6, ptr nofree readnone captures(none) %7) local_unnamed_addr #8 {
bb.a:
  %8 = alloca %struct.timespec, align 8           ; 5 uses
  %9 = alloca %struct.timespec, align 8           ; 5 uses
  %10 = alloca %struct.timespec, align 8          ; 5 uses
  %11 = alloca %struct.timespec, align 8          ; 5 uses
  %12 = alloca %struct.timespec, align 8          ; 5 uses
  %13 = alloca %struct.timespec, align 8          ; 5 uses
  %14 = alloca %struct.timespec, align 8          ; 5 uses
  %15 = alloca %struct.timespec, align 8          ; 5 uses
  %16 = alloca %struct.timespec, align 8          ; 5 uses
  %i.a = alloca [12 x i32], align 16              ; 5 uses
  %i.b = load i32, ptr @Dss_ManMerge.Counter, align 4, !tbaa !36
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr @Dss_ManMerge.Counter, align 4, !tbaa !36
  %i.d = icmp sgt i32 %5, 12
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34, i32 noundef 12, i32 noundef %5) ; 0 uses
  br label %bb.ah

bb.c:                                             ; preds = %bb.a
  %i.f = load i32, ptr %1, align 4, !tbaa !36     ; 3 uses
  switch i32 %i.f, label %bb.e [
    i32 0, label %bb.ah
    i32 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !36
  br label %bb.ah

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !36   ; 2 uses
  switch i32 %i.j, label %bb.g [
    i32 0, label %bb.ah
    i32 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  br label %bb.ah

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  %i.k = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %16) #32
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %Abc_Clock.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = load i64, ptr %16, align 8, !tbaa !80
  %.neg145 = mul i64 %i.m, -1000000
  %i.n = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !81
  %.neg = sdiv i64 %i.o, -1000
  %.neg146 = add i64 %.neg, %.neg145
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.g, %bb.h
  %.0.i.neg = phi i64 [ %.neg146, %bb.h ], [ 1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  %i.p = call ptr @Dss_ManSharedMap(ptr poison, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  %i.q = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %15) #32
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %Abc_Clock.exit125, label %bb.i

bb.i:                                             ; preds = %Abc_Clock.exit
  %i.s = load i64, ptr %15, align 8, !tbaa !80
  %i.t = mul nsw i64 %i.s, 1000000
  %i.u = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !81
  %i.w = sdiv i64 %i.v, 1000
  %i.x = add nsw i64 %i.w, %i.t
  br label %Abc_Clock.exit125

Abc_Clock.exit125:                                ; preds = %Abc_Clock.exit, %bb.i
  %.0.i124 = phi i64 [ %i.x, %bb.i ], [ -1, %Abc_Clock.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  %i.y = add i64 %.0.i124, %.0.i.neg
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !75
  %i.ab = add nsw i64 %i.y, %i.aa
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !75
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !62
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.j, label %bb.n

bb.j:                                             ; preds = %Abc_Clock.exit125
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  %i.af = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %14) #32
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %Abc_Clock.exit127, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = load i64, ptr %14, align 8, !tbaa !80
  %.neg154 = mul i64 %i.ah, -1000000
  %i.ai = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !81
  %.neg153 = sdiv i64 %i.aj, -1000
  %.neg155 = add i64 %.neg153, %.neg154
  br label %Abc_Clock.exit127

Abc_Clock.exit127:                                ; preds = %bb.j, %bb.k
  %.0.i126.neg = phi i64 [ %.neg155, %bb.k ], [ 1, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  %i.ak = icmp eq i32 %4, 0
  br i1 %i.ak, label %.thread, label %bb.l

.thread:                                          ; preds = %Abc_Clock.exit127
  %i.al = load i32, ptr %2, align 4, !tbaa !36
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !36
  %i.ao = add nsw i32 %i.an, %i.al
  %i.ap = call i32 @Dss_ManOperation(ptr noundef nonnull readonly %0, i32 noundef 3, ptr noundef nonnull %1, i32 noundef 2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @Dss_ManOperationFun.Buffer, i64 4), ptr noundef null)
  %i.aq = and i32 %i.ap, 67108863
  %i.ar = shl i32 %i.ao, 26
  %i.as = or disjoint i32 %i.aq, %i.ar
  store i32 %i.as, ptr @Dss_ManOperationFun.Buffer, align 16
  br label %bb.m

bb.l:                                             ; preds = %Abc_Clock.exit127
  %i.at = call ptr @Dss_ManBooleanAnd(ptr noundef nonnull %0, ptr noundef nonnull @Dss_ManSharedMap.Buffer, i32 poison) ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.ah, label %bb.m

bb.m:                                             ; preds = %.thread, %bb.l
  %.0113141 = phi ptr [ @Dss_ManOperationFun.Buffer, %.thread ], [ %i.at, %bb.l ]
  %i.av = call fastcc i64 @Abc_Clock()
  %i.aw = add i64 %i.av, %.0.i126.neg
  br label %bb.aa

bb.n:                                             ; preds = %Abc_Clock.exit125
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  %i.ax = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %13) #32
  %i.ay = icmp slt i32 %i.ax, 0
  br i1 %i.ay, label %Abc_Clock.exit129, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = load i64, ptr %13, align 8, !tbaa !80
  %.neg148 = mul i64 %i.az, -1000000
  %i.ba = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !81
  %.neg147 = sdiv i64 %i.bb, -1000
  %.neg149 = add i64 %.neg147, %.neg148
  br label %Abc_Clock.exit129

Abc_Clock.exit129:                                ; preds = %bb.n, %bb.o
  %.0.i128.neg = phi i64 [ %.neg149, %bb.o ], [ 1, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  %i.bc = load ptr, ptr %i.ac, align 8, !tbaa !62
  %i.bd = load i64, ptr getelementptr inbounds nuw (i8, ptr @Dss_ManSharedMap.Buffer, i64 16), align 16 ; 8 uses
  %i.be = lshr i64 %i.bd, 59                      ; 4 uses
  %i.bf = trunc nuw nsw i64 %i.be to i32
  %i.bg = mul nuw nsw i32 %i.bf, 7103
  %i.bh = trunc i64 %i.bd to i32
  %i.bi = and i32 %i.bh, 134217727
  %i.bj = mul nuw nsw i32 %i.bi, 7873
  %i.bk = add nuw nsw i32 %i.bg, %i.bj
  %i.bl = lshr i64 %i.bd, 32
  %i.bm = trunc nuw i64 %i.bl to i32
  %i.bn = and i32 %i.bm, 134217727
  %i.bo = mul nuw nsw i32 %i.bn, 8147
  %i.bp = add nuw nsw i32 %i.bk, %i.bo            ; 3 uses
  %.not.i.i = icmp ult i64 %i.bd, 576460752303423488
  br i1 %.not.i.i, label %Dss_ManCacheHashKey.exit.i, label %.lr.ph.i.i

end_hunk_0
