Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/stereo_binary_bm?download=true
inline.NumInlined: 327
inline.NumDeleted: 127
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZNK2cv6stereo16PrefilterInvokerclERKNS_5RangeE:bb.a
  %i.td = mul i64 %i.tc, %indvars.iv117.i
  %i.te = getelementptr inbounds nuw i8, ptr %i.tb, i64 %i.td
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.te, i8 %i.pf, i64 %i.sk, i1 false), !tbaa !14
  %indvars.iv.next118.i = add nuw nsw i64 %indvars.iv117.i, 1
  %i.tf = load ptr, ptr %i.sh, align 8, !tbaa !62
  %i.tg = load i64, ptr %i.si, align 8, !tbaa !87
  %i.th = mul i64 %i.tg, %indvars.iv.next118.i
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tf, i64 %i.th
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ti, i8 %i.pf, i64 %i.sk, i1 false), !tbaa !14
  %indvars.iv.next118.i.1 = add nuw nsw i64 %indvars.iv117.i, 2
  %i.tj = load ptr, ptr %i.sh, align 8, !tbaa !62
  %i.tk = load i64, ptr %i.si, align 8, !tbaa !87
  %i.tl = mul i64 %i.tk, %indvars.iv.next118.i.1
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tj, i64 %i.tl
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.tm, i8 %i.pf, i64 %i.sk, i1 false), !tbaa !14
  %indvars.iv.next118.i.2 = add nuw nsw i64 %indvars.iv117.i, 3
  %i.tn = load ptr, ptr %i.sh, align 8, !tbaa !62
  %i.to = load i64, ptr %i.si, align 8, !tbaa !87
  %i.tp = mul i64 %i.to, %indvars.iv.next118.i.2
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tn, i64 %i.tp
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.tq, i8 %i.pf, i64 %i.sk, i1 false), !tbaa !14
  %indvars.iv.next118.i.3 = add nuw nsw i64 %indvars.iv117.i, 4 ; 2 uses
  %i.tr = trunc nuw i64 %indvars.iv.next118.i.3 to i32
  %i.ts = icmp sgt i32 %i.pe, %i.tr
  br i1 %i.ts, label %.lr.ph.i18, label %_ZN2cv6stereoL15prefilterXSobelERKNS_3MatERS1_i.exit, !llvm.loop !214

_ZN2cv6stereoL15prefilterXSobelERKNS_3MatERS1_i.exit: ; preds = %.lr.ph.i18.prol.loopexit, %.lr.ph.i18, %.preheader.i17, %.lr.ph99.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.s

bb.s:                                             ; preds = %_ZN2cv6stereoL13prefilterNormERKNS_3MatERS1_iiPh.exit, %_ZN2cv6stereoL15prefilterXSobelERKNS_3MatERS1_i.exit
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.tt = load i32, ptr %i.d, align 4, !tbaa !65
  %i.tu = sext i32 %i.tt to i64
  %i.tv = icmp slt i64 %indvars.iv.next, %i.tu
  br i1 %i.tv, label %bb.b, label %._crit_edge, !llvm.loop !215
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv6stereo8Matching15hammingDistanceD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv6stereo8Matching15hammingDistanceclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !64     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !65   ; 2 uses
  %i.d = icmp slt i32 %i.a, %i.c
  br i1 %i.d, label %.lr.ph33, label %._crit_edge34.split

.lr.ph33:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i32, ptr %i.e, align 8, !tbaa !91   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.h = load i32, ptr %i.g, align 4, !tbaa !90   ; 3 uses
  %i.i = sub nsw i32 %i.f, %i.h                   ; 2 uses
  %i.j = icmp sge i32 %i.h, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load i32, ptr %i.k, align 8              ; 2 uses
  %.not25 = icmp slt i32 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.m, align 8
  %i.s = load ptr, ptr %i.n, align 8
  %i.t = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.u = load i32, ptr %i.p, align 4              ; 2 uses
  %i.v = load ptr, ptr %i.q, align 8
  %brmerge = select i1 %i.j, i1 true, i1 %.not25
  br i1 %brmerge, label %._crit_edge34.split, label %.lr.ph29.preheader

.lr.ph29.preheader:                               ; preds = %.lr.ph33
  %i.w = add nuw i32 %i.l, 1                      ; 2 uses
  %i.x = sext i32 %i.h to i64
  %i.y = sext i32 %i.w to i64
  %i.z = sext i32 %i.a to i64
  %i.aa = sext i32 %i.f to i64
  %wide.trip.count46 = sext i32 %i.c to i64
  %wide.trip.count41 = sext i32 %i.i to i64
  %wide.trip.count = zext i32 %i.w to i64
  br label %.lr.ph29

._crit_edge34.split:                              ; preds = %._crit_edge30, %.lr.ph33, %bb.a
  ret void

.lr.ph29:                                         ; preds = %.lr.ph29.preheader, %._crit_edge30
  %indvars.iv43 = phi i64 [ %i.z, %.lr.ph29.preheader ], [ %indvars.iv.next44, %._crit_edge30 ] ; 2 uses
  %i.ab = mul nsw i64 %indvars.iv43, %i.aa        ; 2 uses
  %i.ac = getelementptr [4 x i8], ptr %i.s, i64 %i.ab
  br label %.lr.ph

._crit_edge30:                                    ; preds = %._crit_edge
  %indvars.iv.next44 = add nsw i64 %indvars.iv43, 1 ; 2 uses
  %exitcond47.not = icmp eq i64 %indvars.iv.next44, %wide.trip.count46
  br i1 %exitcond47.not, label %._crit_edge34.split, label %.lr.ph29, !llvm.loop !227

.lr.ph:                                           ; preds = %.lr.ph29, %._crit_edge
  %indvars.iv38 = phi i64 [ %i.x, %.lr.ph29 ], [ %indvars.iv.next39, %._crit_edge ] ; 3 uses
  %i.ad = add nsw i64 %indvars.iv38, %i.ab        ; 2 uses
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !15
  %i.ag = mul nsw i64 %i.ad, %i.y
  %i.ah = getelementptr [2 x i8], ptr %i.v, i64 %i.ag
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  %indvars.iv.next39 = add nsw i64 %indvars.iv38, 1 ; 2 uses
  %exitcond42.not = icmp eq i64 %indvars.iv.next39, %wide.trip.count41
  br i1 %exitcond42.not, label %._crit_edge30, label %.lr.ph, !llvm.loop !228

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.ai = sub nsw i64 %indvars.iv38, %indvars.iv
  %i.aj = trunc nsw i64 %i.ai to i32
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.aj, i32 0)
  %i.ak = zext nneg i32 %.sroa.speculated to i64
  %i.al = getelementptr [4 x i8], ptr %i.ac, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !15
  %i.an = xor i32 %i.am, %i.af                    ; 2 uses
  %i.ao = and i32 %i.u, %i.an
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !15
  %i.as = ashr i32 %i.an, 16
  %i.at = and i32 %i.as, %i.u
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !15
  %i.ax = add nsw i32 %i.aw, %i.ar
  %i.ay = trunc i32 %i.ax to i16
  %i.az = getelementptr [2 x i8], ptr %i.ah, i64 %indvars.iv
  store i16 %i.ay, ptr %i.az, align 2, !tbaa !93
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !229
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv6stereo8Matching12agregateCostD0Ev(ptr noundef nonnull align 8 dereferenceable(44) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(44) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2cv6stereo8Matching12agregateCostclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !64     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !65   ; 2 uses
  %i.d = icmp slt i32 %i.a, %i.c
  br i1 %i.d, label %.lr.ph64, label %._crit_edge65.split

.lr.ph64:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.f = load i32, ptr %i.e, align 4, !tbaa !100  ; 10 uses
  %.not57 = icmp slt i32 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i32, ptr %i.g, align 8              ; 2 uses
  %i.i = add i32 %i.h, 1                          ; 19 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i32, ptr %i.j, align 8              ; 4 uses
  %i.l = xor i32 %i.k, -1                         ; 4 uses
  %.not4752 = icmp slt i32 %i.h, 0                ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %invariant.op = add i32 %i.k, 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.m, align 8              ; 10 uses
  br i1 %.not57, label %._crit_edge65.split, label %.lr.ph60.preheader

.lr.ph60.preheader:                               ; preds = %.lr.ph64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load i32, ptr %i.p, align 8
  %i.r = add i32 %i.q, %i.l
  %i.s = add i32 %i.f, %i.l
  %i.t = mul i32 %i.f, %i.a
  %i.u = mul i32 %i.t, %i.i
  %i.v = mul i32 %i.f, %i.i
  %i.w = zext i32 %i.i to i64                     ; 9 uses
  %i.x = shl nuw nsw i64 %i.w, 1                  ; 11 uses
  %i.y = add nuw i32 %i.f, 1
  %i.z = sext i32 %i.i to i64                     ; 8 uses
  %i.aa = sext i32 %i.k to i64                    ; 7 uses
  %i.ab = sext i32 %i.s to i64
  %i.ac = sext i32 %i.a to i64                    ; 2 uses
  %i.ad = sext i32 %i.r to i64
  %i.ae = zext nneg i32 %i.f to i64               ; 5 uses
  %i.af = sub i32 %i.c, %i.a
  %wide.trip.count92 = zext i32 %i.y to i64       ; 5 uses
  %2 = shl nsw i64 %i.z, 1
  %3 = add i32 %i.k, %i.a
  %4 = add i32 %3, 1
  %i.ag = shl nsw i64 %i.z, 1
  %i.ah = mul nsw i64 %i.ac, %i.z
  %5 = mul i64 %i.ah, %i.ae
  %i.ai = shl i64 %5, 1
  %6 = mul nsw i64 %i.z, %i.ae
  %i.aj = shl i64 %6, 1
  %i.ak = shl nuw nsw i64 %i.ae, 1
  %i.al = add nsw i64 %i.ak, -2
  %i.am = mul i64 %i.al, %i.aa
  %i.an = mul i64 %i.am, %i.z
  %xtraiter = and i64 %wide.trip.count92, 3       ; 3 uses
  %i.ao = icmp ult i32 %i.f, 3
  %unroll_iter = and i64 %wide.trip.count92, 4294967292
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod145 = icmp ne i64 %xtraiter, 0
  %xtraiter146 = and i64 %wide.trip.count92, 3    ; 3 uses
  %i.ap = icmp ult i32 %i.f, 3
  %unroll_iter150 = and i64 %wide.trip.count92, 4294967292
  %lcmp.mod148.not = icmp eq i64 %xtraiter146, 0
  %lcmp.mod149 = icmp ne i64 %xtraiter146, 0
  %min.iters.check = icmp ult i32 %i.i, 4
  %min.iters.check127 = icmp ult i32 %i.i, 16
  %i.aq = and i64 %i.w, 12
  %n.vec = and i64 %i.w, 4294967280               ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.w
  %min.epilog.iters.check = icmp eq i64 %i.aq, 0
  %n.vec135 = and i64 %i.w, 4294967292            ; 3 uses
  %cmp.n142 = icmp eq i64 %n.vec135, %i.w
  %xtraiter152 = and i64 %i.w, 1
  %lcmp.mod153.not = icmp eq i64 %xtraiter152, 0
  %i.ar = add nsw i64 %i.w, -1
  br label %.lr.ph60

._crit_edge65.split:                              ; preds = %._crit_edge, %.lr.ph64, %bb.a
  ret void

.lr.ph60:                                         ; preds = %.lr.ph60.preheader, %._crit_edge
  %indvar120 = phi i64 [ 0, %.lr.ph60.preheader ], [ %indvar.next121, %._crit_edge ] ; 2 uses
  %indvars.iv94 = phi i64 [ %i.ac, %.lr.ph60.preheader ], [ %indvars.iv.next95, %._crit_edge ] ; 6 uses
  %indvar = phi i32 [ 0, %.lr.ph60.preheader ], [ %indvar.next, %._crit_edge ] ; 3 uses
  %i.as = add i32 %4, %indvar
  %i.at = mul i32 %i.f, %i.as
  %i.au = sext i32 %i.at to i64
  %i.av = add nsw i64 %i.aa, %i.au
  %7 = mul i64 %2, %i.av
  %i.aw = mul i64 %i.aj, %indvar120
  %8 = add i64 %i.ai, %i.aw                       ; 2 uses
  %i.ax = mul i32 %i.v, %indvar
  %i.ay = add i32 %i.u, %i.ax                     ; 11 uses
  %i.az = mul nsw i64 %indvars.iv94, %i.ae
  %.not42 = icmp sgt i64 %indvars.iv94, %i.aa
  %i.ba = trunc nsw i64 %indvars.iv94 to i32
  %.reass = add i32 %invariant.op, %i.ba
  %i.bb = mul nsw i32 %.reass, %i.f
  %i.bc = sub nsw i64 %indvars.iv94, %i.aa
  %i.bd = mul nuw nsw i64 %i.bc, %i.ae
  br i1 %.not42, label %.lr.ph60.split.us, label %.lr.ph60.split

.lr.ph60.split.us:                                ; preds = %.lr.ph60
  %.not43.us = icmp slt i64 %indvars.iv94, %i.ad
  %.not43.us.fr = freeze i1 %.not43.us
  br i1 %.not43.us.fr, label %.lr.ph60.split.us.split.preheader, label %.lr.ph60.split.us.split.us

.lr.ph60.split.us.split.preheader:                ; preds = %.lr.ph60.split.us
  %i.be = sext i32 %i.bb to i64
  br label %.lr.ph60.split.us.split

.lr.ph60.split.us.split.us:                       ; preds = %.lr.ph60.split.us
  br i1 %.not4752, label %._crit_edge, label %.lr.ph.us.us.preheader

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph60.split.us.split.us
  br i1 %i.ap, label %.lr.ph.us.us.epil.preheader, label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %.lr.ph.us.us
  %indvars.iv75 = phi i64 [ %indvars.iv.next76.3, %.lr.ph.us.us ], [ 0, %.lr.ph.us.us.preheader ] ; 5 uses
  %niter151 = phi i64 [ %niter151.next.3, %.lr.ph.us.us ], [ 0, %.lr.ph.us.us.preheader ]
  %i.bf = trunc nuw nsw i64 %indvars.iv75 to i32
  %i.bg = mul i32 %i.i, %i.bf
  %i.bh = add i32 %i.ay, %i.bg
  %i.bi = sext i32 %i.bh to i64
  %i.bj = shl nsw i64 %i.bi, 1
  %scevgep71 = getelementptr i8, ptr %i.o, i64 %i.bj
  tail call void @llvm.memset.p0.i64(ptr align 2 %scevgep71, i8 0, i64 %i.x, i1 false), !tbaa !93
  %i.bk = trunc i64 %indvars.iv75 to i32
  %i.bl = or disjoint i32 %i.bk, 1
  %i.bm = mul i32 %i.i, %i.bl
  %i.bn = add i32 %i.ay, %i.bm
  %i.bo = sext i32 %i.bn to i64
  %i.bp = shl nsw i64 %i.bo, 1
  %scevgep71.1 = getelementptr i8, ptr %i.o, i64 %i.bp
  tail call void @llvm.memset.p0.i64(ptr align 2 %scevgep71.1, i8 0, i64 %i.x, i1 false), !tbaa !93
  %i.bq = trunc i64 %indvars.iv75 to i32
  %i.br = or disjoint i32 %i.bq, 2
  %i.bs = mul i32 %i.i, %i.br
  %i.bt = add i32 %i.ay, %i.bs
  %i.bu = sext i32 %i.bt to i64
  %i.bv = shl nsw i64 %i.bu, 1
  %scevgep71.2 = getelementptr i8, ptr %i.o, i64 %i.bv
  tail call void @llvm.memset.p0.i64(ptr align 2 %scevgep71.2, i8 0, i64 %i.x, i1 false), !tbaa !93
  %i.bw = trunc i64 %indvars.iv75 to i32
  %i.bx = or disjoint i32 %i.bw, 3
  %i.by = mul i32 %i.i, %i.bx
  %i.bz = add i32 %i.ay, %i.by
  %i.ca = sext i32 %i.bz to i64
  %i.cb = shl nsw i64 %i.ca, 1
  %scevgep71.3 = getelementptr i8, ptr %i.o, i64 %i.cb
  tail call void @llvm.memset.p0.i64(ptr align 2 %scevgep71.3, i8 0, i64 %i.x, i1 false), !tbaa !93
  %indvars.iv.next76.3 = add nuw nsw i64 %indvars.iv75, 4 ; 2 uses
  %niter151.next.3 = add i64 %niter151, 4         ; 2 uses
  %niter151.ncmp.3 = icmp eq i64 %niter151.next.3, %unroll_iter150
  br i1 %niter151.ncmp.3, label %._crit_edge.loopexit143.unr-lcssa, label %.lr.ph.us.us, !llvm.loop !230

.lr.ph60.split.us.split:                          ; preds = %.lr.ph60.split.us.split.preheader, %.loopexit.us
  %indvars.iv89 = phi i64 [ 0, %.lr.ph60.split.us.split.preheader ], [ %indvars.iv.next90, %.loopexit.us ] ; 8 uses
  %i.cc = trunc nuw nsw i64 %indvars.iv89 to i32
  %i.cd = mul i32 %i.i, %i.cc
  %i.ce = add i32 %i.ay, %i.cd
  %i.cf = sext i32 %i.ce to i64
  %i.cg = shl nsw i64 %i.cf, 1
  %i.ch = add nsw i64 %indvars.iv89, %i.az
  %i.ci = mul nsw i64 %i.ch, %i.z
  %.not44.us = icmp sgt i64 %indvars.iv89, %i.aa
  %.not45.us = icmp slt i64 %indvars.iv89, %i.ab
  %or.cond48.us = and i1 %.not45.us, %.not44.us
  br i1 %or.cond48.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph60.split.us.split
  br i1 %.not4752, label %.loopexit.us, label %.lr.ph.us

bb.c:                                             ; preds = %.lr.ph60.split.us.split
  br i1 %.not4752, label %.loopexit.us, label %iter.check

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv84 = phi i64 [ %indvars.iv.next85.1, %vec.epilog.scalar.ph ], [ %indvars.iv84.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 7 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv84
  %i.cj = load i16, ptr %gep, align 2, !tbaa !93
  %gep104 = getelementptr [2 x i8], ptr %invariant.gep103, i64 %indvars.iv84
  %i.ck = load i16, ptr %gep104, align 2, !tbaa !93
  %gep106 = getelementptr [2 x i8], ptr %invariant.gep105, i64 %indvars.iv84
  %i.cl = load i16, ptr %gep106, align 2, !tbaa !93
  %gep108 = getelementptr [2 x i8], ptr %invariant.gep107, i64 %indvars.iv84
  %i.cm = load i16, ptr %gep108, align 2, !tbaa !93
  %.neg50.us = add i16 %i.ck, %i.cj
  %i.cn = add i16 %i.cl, %i.cm
  %i.co = sub i16 %.neg50.us, %i.cn
  %gep110 = getelementptr [2 x i8], ptr %invariant.gep109, i64 %indvars.iv84
  store i16 %i.co, ptr %gep110, align 2, !tbaa !93
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1 ; 5 uses
  %gep.1 = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv.next85
  %i.cp = load i16, ptr %gep.1, align 2, !tbaa !93
  %gep104.1 = getelementptr [2 x i8], ptr %invariant.gep103, i64 %indvars.iv.next85
  %i.cq = load i16, ptr %gep104.1, align 2, !tbaa !93
  %gep106.1 = getelementptr [2 x i8], ptr %invariant.gep105, i64 %indvars.iv.next85
  %i.cr = load i16, ptr %gep106.1, align 2, !tbaa !93
  %gep108.1 = getelementptr [2 x i8], ptr %invariant.gep107, i64 %indvars.iv.next85
  %i.cs = load i16, ptr %gep108.1, align 2, !tbaa !93
  %.neg50.us.1 = add i16 %i.cq, %i.cp
  %i.ct = add i16 %i.cr, %i.cs
  %i.cu = sub i16 %.neg50.us.1, %i.ct
  %gep110.1 = getelementptr [2 x i8], ptr %invariant.gep109, i64 %indvars.iv.next85
  store i16 %i.cu, ptr %gep110.1, align 2, !tbaa !93
  %indvars.iv.next85.1 = add nuw nsw i64 %indvars.iv84, 2 ; 2 uses
  %exitcond88.not.1 = icmp eq i64 %indvars.iv.next85.1, %i.w
  br i1 %exitcond88.not.1, label %.loopexit.us, label %vec.epilog.scalar.ph, !llvm.loop !231

.loopexit.us:                                     ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.lr.ph.us, %bb.b, %bb.c
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %exitcond93.not = icmp eq i64 %indvars.iv.next90, %wide.trip.count92
  br i1 %exitcond93.not, label %._crit_edge, label %.lr.ph60.split.us.split, !llvm.loop !230

.lr.ph.us:                                        ; preds = %bb.b
  %i.cv = load ptr, ptr %i.m, align 8, !tbaa !99
  %scevgep80 = getelementptr i8, ptr %i.cv, i64 %i.cg
  tail call void @llvm.memset.p0.i64(ptr align 2 %scevgep80, i8 0, i64 %i.x, i1 false), !tbaa !93
  br label %.loopexit.us

iter.check:                                       ; preds = %bb.c
  %i.cw = add nsw i64 %i.bd, %indvars.iv89        ; 2 uses
  %i.cx = add nsw i64 %i.cw, %i.aa
  %i.cy = mul nsw i64 %i.cx, %i.z
  %i.cz = add nsw i64 %indvars.iv89, %i.be        ; 2 uses
  %i.da = add nsw i64 %i.cz, %i.aa
  %i.db = mul nsw i64 %i.da, %i.z
  %i.dc = trunc nsw i64 %i.cz to i32
  %i.dd = add i32 %i.dc, %i.l
  %i.de = mul nsw i32 %i.dd, %i.i
  %i.df = trunc nsw i64 %i.cw to i32
  %i.dg = add i32 %i.df, %i.l
  %i.dh = mul nsw i32 %i.dg, %i.i
  %i.di = load ptr, ptr %i.n, align 8, !tbaa !101 ; 5 uses
  %i.dj = load ptr, ptr %i.m, align 8, !tbaa !99  ; 2 uses
  %i.dk = sext i32 %i.dh to i64                   ; 2 uses
  %i.dl = sext i32 %i.de to i64                   ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.di, i64 %i.db ; 5 uses
  %invariant.gep103 = getelementptr [2 x i8], ptr %i.di, i64 %i.dk ; 5 uses
  %invariant.gep105 = getelementptr [2 x i8], ptr %i.di, i64 %i.dl ; 5 uses
  %invariant.gep107 = getelementptr [2 x i8], ptr %i.di, i64 %i.cy ; 5 uses
  %invariant.gep109 = getelementptr [2 x i8], ptr %i.dj, i64 %i.ci ; 5 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.dm = ptrtoaddr ptr %i.dj to i64              ; 3 uses
  %i.dn = ptrtoaddr ptr %i.di to i64              ; 3 uses
  %i.do = add i64 %i.an, %i.dm
  %i.dp = sub i64 %i.dn, %i.do
  %diff.check = icmp ugt i64 %i.dp, -32
  %i.dq = mul i64 %indvars.iv89, %i.ag
  %i.dr = add i64 %8, %i.dq
  %i.ds = shl nsw i64 %i.dl, 1
  %i.dt = add i64 %i.dr, %i.dm
  %i.du = sub i64 %i.dt, %i.dn                    ; 2 uses
  %i.dv = sub i64 %i.ds, %i.du
  %diff.check122 = icmp ugt i64 %i.dv, -32
  %conflict.rdx = or i1 %diff.check, %diff.check122
  %i.dw = shl nsw i64 %i.dk, 1
  %i.dx = sub i64 %i.dw, %i.du
  %diff.check123 = icmp ugt i64 %i.dx, -32
  %conflict.rdx124 = or i1 %conflict.rdx, %diff.check123
  %9 = add i64 %8, %i.dm
  %i.dy = add i64 %7, %i.dn
  %10 = sub i64 %i.dy, %9
  %diff.check125 = icmp ugt i64 %10, -32
  %conflict.rdx126 = or i1 %conflict.rdx124, %diff.check125
  br i1 %conflict.rdx126, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check127, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 6 uses
  %i.dz = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ea = getelementptr i8, ptr %i.dz, i64 16
  %wide.load = load <8 x i16>, ptr %i.dz, align 2, !tbaa !93
  %wide.load128 = load <8 x i16>, ptr %i.ea, align 2, !tbaa !93
  %i.eb = getelementptr [2 x i8], ptr %invariant.gep103, i64 %index ; 2 uses
  %i.ec = getelementptr i8, ptr %i.eb, i64 16
  %wide.load129 = load <8 x i16>, ptr %i.eb, align 2, !tbaa !93
  %wide.load130 = load <8 x i16>, ptr %i.ec, align 2, !tbaa !93
  %i.ed = getelementptr [2 x i8], ptr %invariant.gep105, i64 %index ; 2 uses
  %i.ee = getelementptr i8, ptr %i.ed, i64 16
  %wide.load131 = load <8 x i16>, ptr %i.ed, align 2, !tbaa !93
  %wide.load132 = load <8 x i16>, ptr %i.ee, align 2, !tbaa !93
  %i.ef = getelementptr [2 x i8], ptr %invariant.gep107, i64 %index ; 2 uses
  %i.eg = getelementptr i8, ptr %i.ef, i64 16
  %wide.load133 = load <8 x i16>, ptr %i.ef, align 2, !tbaa !93
  %wide.load134 = load <8 x i16>, ptr %i.eg, align 2, !tbaa !93
  %i.eh = add <8 x i16> %wide.load129, %wide.load
  %i.ei = add <8 x i16> %wide.load130, %wide.load128
  %i.ej = add <8 x i16> %wide.load131, %wide.load133
  %i.ek = add <8 x i16> %wide.load132, %wide.load134
  %i.el = sub <8 x i16> %i.eh, %i.ej
  %i.em = sub <8 x i16> %i.ei, %i.ek
  %i.en = getelementptr [2 x i8], ptr %invariant.gep109, i64 %index ; 2 uses
  %i.eo = getelementptr i8, ptr %i.en, i64 16
  store <8 x i16> %i.el, ptr %i.en, align 2, !tbaa !93
  store <8 x i16> %i.em, ptr %i.eo, align 2, !tbaa !93
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ep = icmp eq i64 %index.next, %n.vec
  br i1 %i.ep, label %middle.block, label %vector.body, !llvm.loop !232

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !96

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index136 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next141, %vec.epilog.vector.body ] ; 6 uses
  %i.eq = getelementptr [2 x i8], ptr %invariant.gep, i64 %index136
  %wide.load137 = load <4 x i16>, ptr %i.eq, align 2, !tbaa !93
  %i.er = getelementptr [2 x i8], ptr %invariant.gep103, i64 %index136
  %wide.load138 = load <4 x i16>, ptr %i.er, align 2, !tbaa !93
  %i.es = getelementptr [2 x i8], ptr %invariant.gep105, i64 %index136
  %wide.load139 = load <4 x i16>, ptr %i.es, align 2, !tbaa !93
  %i.et = getelementptr [2 x i8], ptr %invariant.gep107, i64 %index136
  %wide.load140 = load <4 x i16>, ptr %i.et, align 2, !tbaa !93
  %i.eu = add <4 x i16> %wide.load138, %wide.load137
  %i.ev = add <4 x i16> %wide.load139, %wide.load140
  %i.ew = sub <4 x i16> %i.eu, %i.ev
  %i.ex = getelementptr [2 x i8], ptr %invariant.gep109, i64 %index136
  store <4 x i16> %i.ew, ptr %i.ex, align 2, !tbaa !93
  %index.next141 = add nuw i64 %index136, 4       ; 2 uses
  %i.ey = icmp eq i64 %index.next141, %n.vec135
  br i1 %i.ey, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !233

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n142, label %.loopexit.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv84.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec135, %vec.epilog.middle.block ] ; 8 uses
  br i1 %lcmp.mod153.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %gep.prol = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv84.ph
  %i.ez = load i16, ptr %gep.prol, align 2, !tbaa !93
  %gep104.prol = getelementptr [2 x i8], ptr %invariant.gep103, i64 %indvars.iv84.ph
  %i.fa = load i16, ptr %gep104.prol, align 2, !tbaa !93
  %gep106.prol = getelementptr [2 x i8], ptr %invariant.gep105, i64 %indvars.iv84.ph
  %i.fb = load i16, ptr %gep106.prol, align 2, !tbaa !93
  %gep108.prol = getelementptr [2 x i8], ptr %invariant.gep107, i64 %indvars.iv84.ph
  %i.fc = load i16, ptr %gep108.prol, align 2, !tbaa !93
  %.neg50.us.prol = add i16 %i.fa, %i.ez
  %i.fd = add i16 %i.fb, %i.fc
  %i.fe = sub i16 %.neg50.us.prol, %i.fd
  %gep110.prol = getelementptr [2 x i8], ptr %invariant.gep109, i64 %indvars.iv84.ph
  store i16 %i.fe, ptr %gep110.prol, align 2, !tbaa !93
  %indvars.iv.next85.prol = or disjoint i64 %indvars.iv84.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv84.unr = phi i64 [ %indvars.iv84.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next85.prol, %vec.epilog.scalar.ph.prol ]
  %i.ff = icmp eq i64 %indvars.iv84.ph, %i.ar
  br i1 %i.ff, label %.loopexit.us, label %vec.epilog.scalar.ph

.lr.ph60.split:                                   ; preds = %.lr.ph60
  br i1 %.not4752, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph60.split
  br i1 %i.ao, label %.lr.ph.epil.preheader, label %.lr.ph

._crit_edge.loopexit143.unr-lcssa:                ; preds = %.lr.ph.us.us
  br i1 %lcmp.mod148.not, label %._crit_edge, label %.lr.ph.us.us.epil.preheader

.lr.ph.us.us.epil.preheader:                      ; preds = %._crit_edge.loopexit143.unr-lcssa, %.lr.ph.us.us.preheader
  %indvars.iv75.epil.init = phi i64 [ 0, %.lr.ph.us.us.preheader ], [ %indvars.iv.next76.3, %._crit_edge.loopexit143.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod149)
  br label %.lr.ph.us.us.epil

.lr.ph.us.us.epil:                                ; preds = %.lr.ph.us.us.epil, %.lr.ph.us.us.epil.preheader
  %indvars.iv75.epil = phi i64 [ %indvars.iv.next76.epil, %.lr.ph.us.us.epil ], [ %indvars.iv75.epil.init, %.lr.ph.us.us.epil.preheader ] ; 2 uses
  %epil.iter147 = phi i64 [ %epil.iter147.next, %.lr.ph.us.us.epil ], [ 0, %.lr.ph.us.us.epil.preheader ]
  %i.fg = trunc nuw nsw i64 %indvars.iv75.epil to i32
  %i.fh = mul i32 %i.i, %i.fg
  %i.fi = add i32 %i.ay, %i.fh
  %i.fj = sext i32 %i.fi to i64
  %i.fk = shl nsw i64 %i.fj, 1
  %scevgep71.epil = getelementptr i8, ptr %i.o, i64 %i.fk
  tail call void @llvm.memset.p0.i64(ptr align 2 %scevgep71.epil, i8 0, i64 %i.x, i1 false), !tbaa !93
  %indvars.iv.next76.epil = add nuw nsw i64 %indvars.iv75.epil, 1
  %epil.iter147.next = add i64 %epil.iter147, 1   ; 2 uses
  %epil.iter147.cmp.not = icmp eq i64 %epil.iter147.next, %xtraiter146
  br i1 %epil.iter147.cmp.not, label %._crit_edge, label %.lr.ph.us.us.epil, !llvm.loop !234

._crit_edge.loopexit144.unr-lcssa:                ; preds = %.lr.ph
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit144.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit144.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod145)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph.epil ], [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.fl = trunc nuw nsw i64 %indvars.iv.epil to i32
  %i.fm = mul i32 %i.i, %i.fl
  %i.fn = add i32 %i.ay, %i.fm
  %i.fo = sext i32 %i.fn to i64
  %i.fp = shl nsw i64 %i.fo, 1
  %scevgep.epil = getelementptr i8, ptr %i.o, i64 %i.fp
  tail call void @llvm.memset.p0.i64(ptr align 2 %scevgep.epil, i8 0, i64 %i.x, i1 false), !tbaa !93
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !235

._crit_edge:                                      ; preds = %._crit_edge.loopexit144.unr-lcssa, %.lr.ph.epil, %._crit_edge.loopexit143.unr-lcssa, %.lr.ph.us.us.epil, %.loopexit.us, %.lr.ph60.split, %.lr.ph60.split.us.split.us
  %indvars.iv.next95 = add nsw i64 %indvars.iv94, 1
  %indvar.next = add i32 %indvar, 1               ; 2 uses
  %exitcond97.not = icmp eq i32 %indvar.next, %i.af
  %indvar.next121 = add i64 %indvar120, 1
  br i1 %exitcond97.not, label %._crit_edge65.split, label %.lr.ph60, !llvm.loop !236

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.fq = trunc nuw nsw i64 %indvars.iv to i32
  %i.fr = mul i32 %i.i, %i.fq
  %i.fs = add i32 %i.ay, %i.fr
  %i.ft = sext i32 %i.fs to i64
  %i.fu = shl nsw i64 %i.ft, 1
  %scevgep = getelementptr i8, ptr %i.o, i64 %i.fu
  tail call void @llvm.memset.p0.i64(ptr align 2 %scevgep, i8 0, i64 %i.x, i1 false), !tbaa !93
  %i.fv = trunc i64 %indvars.iv to i32
  %i.fw = or disjoint i32 %i.fv, 1
  %i.fx = mul i32 %i.i, %i.fw
  %i.fy = add i32 %i.ay, %i.fx
  %i.fz = sext i32 %i.fy to i64
  %i.ga = shl nsw i64 %i.fz, 1
  %scevgep.1 = getelementptr i8, ptr %i.o, i64 %i.ga
  tail call void @llvm.memset.p0.i64(ptr align 2 %scevgep.1, i8 0, i64 %i.x, i1 false), !tbaa !93
  %i.gb = trunc i64 %indvars.iv to i32
  %i.gc = or disjoint i32 %i.gb, 2
  %i.gd = mul i32 %i.i, %i.gc
  %i.ge = add i32 %i.ay, %i.gd
  %i.gf = sext i32 %i.ge to i64
  %i.gg = shl nsw i64 %i.gf, 1
  %scevgep.2 = getelementptr i8, ptr %i.o, i64 %i.gg
  tail call void @llvm.memset.p0.i64(ptr align 2 %scevgep.2, i8 0, i64 %i.x, i1 false), !tbaa !93
  %i.gh = trunc i64 %indvars.iv to i32
  %i.gi = or disjoint i32 %i.gh, 3
  %i.gj = mul i32 %i.i, %i.gi
  %i.gk = add i32 %i.ay, %i.gj
  %i.gl = sext i32 %i.gk to i64
  %i.gm = shl nsw i64 %i.gl, 1
  %scevgep.3 = getelementptr i8, ptr %i.o, i64 %i.gm
  tail call void @llvm.memset.p0.i64(ptr align 2 %scevgep.3, i8 0, i64 %i.x, i1 false), !tbaa !93
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit144.unr-lcssa, label %.lr.ph, !llvm.loop !230
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv6stereo8Matching7makeMapD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #17
end_hunk_0
