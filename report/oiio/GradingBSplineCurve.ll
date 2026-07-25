inline.NumInlined: 1486
inline.NumDeleted: 467
begin_hunk_0_@_ZN16OpenColorIO_v2_523GradingBSplineCurveImpl10KnotsCoefsC2Em:bb.a
  %i.q = invoke noundef i32 @_ZN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImpl11GetMaxCoefsEv()
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit7
  %i.r = zext i32 %i.q to i64                     ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !60   ; 2 uses
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !54   ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 2                   ; 3 uses
  %i.z = icmp ult i64 %i.y, %i.r
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = sub nuw nsw i64 %i.r, %i.y
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.aa)
          to label %_ZNSt6vectorIfSaIfEE6resizeEm.exit unwind label %bb.n

bb.h:                                             ; preds = %bb.f
  %i.ab = icmp ugt i64 %i.y, %i.r
  br i1 %i.ab, label %bb.i, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.r ; 2 uses
  %.not.i.i8 = icmp eq ptr %i.t, %i.ac
  br i1 %.not.i.i8, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.i
  store ptr %i.ac, ptr %i.s, align 8, !tbaa !60
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

_ZNSt6vectorIfSaIfEE6resizeEm.exit:               ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i, %bb.i, %bb.h, %bb.g
  %i.ad = invoke noundef i32 @_ZN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImpl11GetMaxKnotsEv()
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.ae = zext i32 %i.ad to i64                   ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !60 ; 2 uses
  %i.ah = load ptr, ptr %i.d, align 8, !tbaa !54  ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 2                 ; 3 uses
  %i.am = icmp ult i64 %i.al, %i.ae
  br i1 %i.am, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.an = sub nuw nsw i64 %i.ae, %i.al
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.an)
          to label %_ZNSt6vectorIfSaIfEE6resizeEm.exit13 unwind label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.ao = icmp ugt i64 %i.al, %i.ae
  br i1 %i.ao, label %bb.m, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit13

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ae ; 2 uses
  %.not.i.i10 = icmp eq ptr %i.ag, %i.ap
  br i1 %.not.i.i10, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit13, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i11

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i11:      ; preds = %bb.m
  store ptr %i.ap, ptr %i.af, align 8, !tbaa !60
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit13

_ZNSt6vectorIfSaIfEE6resizeEm.exit13:             ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i11, %bb.m, %bb.l, %bb.k
  ret void

bb.n:                                             ; preds = %bb.k, %bb.g, %bb.c, %bb.b, %_ZNSt6vectorIfSaIfEE6resizeEm.exit, %_ZNSt6vectorIiSaIiEE6resizeEm.exit7
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = load ptr, ptr %i.d, align 8, !tbaa !54  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !57
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.aw) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.n, %bb.o
  %i.ax = load ptr, ptr %i.c, align 8, !tbaa !54  ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIfSaIfEED2Ev.exit15, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !57
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bc) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit15

_ZNSt6vectorIfSaIfEED2Ev.exit15:                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.p
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !107 ; 3 uses
  %.not.i.i.i16 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i16, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit15
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !166
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.bd to i64
  %i.bi = sub i64 %i.bg, %i.bh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bi) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit15, %bb.q
  %i.bj = load ptr, ptr %i.a, align 8, !tbaa !107 ; 3 uses
  %.not.i.i.i17 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i17, label %_ZNSt6vectorIiSaIiEED2Ev.exit18, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !166
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bj to i64
  %i.bo = sub i64 %i.bm, %i.bn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bo) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit18

_ZNSt6vectorIiSaIiEED2Ev.exit18:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.r
  resume { ptr, i32 } %i.aq
}

declare noundef i32 @_ZN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImpl11GetMaxCoefsEv() local_unnamed_addr #3

declare noundef i32 @_ZN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImpl11GetMaxKnotsEv() local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef float @_ZNK16OpenColorIO_v2_523GradingBSplineCurveImpl10KnotsCoefs9evalCurveEiff(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, i32 noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = shl nsw i32 %1, 1                        ; 2 uses
  %i.c = or disjoint i32 %i.b, 1
  %i.d = sext i32 %i.c to i64                     ; 2 uses
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !107  ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.d
  %i.g = load i32, ptr %i.f, align 4, !tbaa !3    ; 2 uses
  %i.h = sdiv i32 %i.g, 3                         ; 7 uses
  %.off = add i32 %i.g, 2
  %i.i = icmp ult i32 %.off, 5
  br i1 %i.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = sext i32 %i.b to i64                     ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !3    ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !107  ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.d
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3    ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.j
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3    ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = sext i32 %i.r to i64                     ; 2 uses
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !54   ; 4 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.t
  %i.w = load float, ptr %i.v, align 4, !tbaa !58 ; 2 uses
  %i.x = add nsw i32 %i.r, %i.p
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr [4 x i8], ptr %i.u, i64 %i.y ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 -4
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !58 ; 3 uses
  %i.ac = fcmp ugt float %2, %i.w
  br i1 %i.ac, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ae = add nsw i32 %i.l, %i.h
  %i.af = sext i32 %i.ae to i64
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !54 ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.af
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !58
  %i.aj = shl nsw i32 %i.h, 1
  %i.ak = add nsw i32 %i.l, %i.aj
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.al
  %i.an = load float, ptr %i.am, align 4, !tbaa !58
  %i.ao = fsub float %2, %i.w
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.ao, float %i.ai, float %i.an)
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.aq = fcmp ult float %2, %i.ab
  br i1 %i.aq, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.d
  %i.ar = add i32 %i.p, -2                        ; 2 uses
  %i.as = icmp sgt i32 %i.p, 2
  br i1 %i.as, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.ar to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.u, i64 %i.t
  br label %.lr.ph

bb.e:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.au = add nsw i32 %i.l, %i.h
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !54 ; 3 uses
  %i.aw = sext i32 %i.au to i64
  %i.ax = getelementptr [4 x i8], ptr %i.av, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ax, i64 -4
  %i.az = load float, ptr %i.ay, align 4, !tbaa !58 ; 2 uses
  %i.ba = shl nsw i32 %i.h, 1
  %i.bb = add nsw i32 %i.l, %i.ba
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr [4 x i8], ptr %i.av, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bd, i64 -4
  %i.bf = load float, ptr %i.be, align 4, !tbaa !58 ; 2 uses
  %i.bg = mul nsw i32 %i.h, 3
  %i.bh = add nsw i32 %i.l, %i.bg
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr [4 x i8], ptr %i.av, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bj, i64 -4
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !58
  %i.bm = getelementptr i8, ptr %i.z, i64 -8
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !58
  %i.bo = fsub float %i.ab, %i.bn                 ; 3 uses
  %i.bp = fmul float %i.az, 2.000000e+00
  %i.bq = tail call float @llvm.fmuladd.f32(float %i.bp, float %i.bo, float %i.bf)
  %i.br = tail call float @llvm.fmuladd.f32(float %i.az, float %i.bo, float %i.bf)
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.br, float %i.bo, float %i.bl)
  %i.bt = fsub float %2, %i.ab
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.bq, float %i.bs)
  br label %bb.g

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.bv = getelementptr i8, ptr %gep, i64 4
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !58
  %i.bx = fcmp olt float %2, %i.bw
  br i1 %i.bx, label %._crit_edge.loopexit.split.loop.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !167

._crit_edge.loopexit.split.loop.exit:             ; preds = %.lr.ph
  %i.by = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %._crit_edge.loopexit.split.loop.exit, %.preheader
  %.067.lcssa = phi i32 [ 0, %.preheader ], [ %i.by, %._crit_edge.loopexit.split.loop.exit ], [ %i.ar, %bb.f ] ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ca = add nsw i32 %.067.lcssa, %i.l
  %i.cb = sext i32 %i.ca to i64
  %i.cc = load ptr, ptr %i.bz, align 8, !tbaa !54 ; 3 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.cb
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !58
  %i.cf = add nsw i32 %i.l, %i.h
  %i.cg = add nsw i32 %i.cf, %.067.lcssa
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.ch
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !58
  %i.ck = shl nsw i32 %i.h, 1
  %i.cl = add nsw i32 %i.l, %i.ck
  %i.cm = add nsw i32 %i.cl, %.067.lcssa
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.cn
  %i.cp = load float, ptr %i.co, align 4, !tbaa !58
  %i.cq = add nsw i32 %.067.lcssa, %i.r
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.cr
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !58
  %i.cu = fsub float %2, %i.ct                    ; 2 uses
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.ce, float %i.cu, float %i.cj)
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.cv, float %i.cu, float %i.cp)
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.e, %._crit_edge, %bb.a
  %.1 = phi float [ %3, %bb.a ], [ %i.ap, %bb.c ], [ %i.bu, %bb.e ], [ %i.cw, %._crit_edge ]
  ret float %.1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define hidden noundef float @_ZNK16OpenColorIO_v2_523GradingBSplineCurveImpl10KnotsCoefs12evalCurveRevEif(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, i32 noundef %1, float noundef %2) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = shl nsw i32 %1, 1                        ; 2 uses
  %i.c = or disjoint i32 %i.b, 1
  %i.d = sext i32 %i.c to i64                     ; 2 uses
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !107  ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.d
  %i.g = load i32, ptr %i.f, align 4, !tbaa !3    ; 2 uses
  %.off = add i32 %i.g, 2
  %i.h = icmp ult i32 %.off, 5
  br i1 %i.h, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = sdiv i32 %i.g, 3                         ; 3 uses
  %i.j = sext i32 %i.b to i64                     ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !3    ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !107  ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.d
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3    ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.j
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3    ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !54   ; 3 uses
  %i.u = add nsw i32 %i.r, %i.p
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr [4 x i8], ptr %i.t, i64 %i.v ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 -4
  %i.y = load float, ptr %i.x, align 4, !tbaa !58 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = shl nsw i32 %i.i, 1
  %i.ab = add nsw i32 %i.l, %i.aa                 ; 2 uses
  %i.ac = sext i32 %i.ab to i64                   ; 2 uses
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !54  ; 7 uses
  %i.ae = getelementptr [4 x i8], ptr %i.ad, i64 %i.ac ; 2 uses
  %i.af = load float, ptr %i.ae, align 4, !tbaa !58 ; 2 uses
  %i.ag = add nsw i32 %i.l, %i.i                  ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr [4 x i8], ptr %i.ad, i64 %i.ah ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 -4
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !58 ; 2 uses
  %i.al = getelementptr i8, ptr %i.ae, i64 -4
  %i.am = load float, ptr %i.al, align 4, !tbaa !58 ; 2 uses
  %i.an = fcmp ugt float %2, %i.af
  br i1 %i.an, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ao = sext i32 %i.r to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.ao
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !58 ; 2 uses
  %i.ar = load float, ptr %i.ai, align 4, !tbaa !58 ; 2 uses
  %i.as = tail call noundef float @llvm.fabs.f32(float %i.ar)
  %i.at = fcmp olt float %i.as, f0x3727C5AC
  %i.au = fsub float %2, %i.af
  %i.av = fdiv float %i.au, %i.ar
  %i.aw = fadd float %i.aq, %i.av
  %i.ax = select i1 %i.at, float %i.aq, float %i.aw
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.ay = getelementptr i8, ptr %i.w, i64 -8
  %i.az = mul nsw i32 %i.i, 3
  %i.ba = add nsw i32 %i.l, %i.az
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr [4 x i8], ptr %i.ad, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.bc, i64 -4
  %i.be = load float, ptr %i.bd, align 4, !tbaa !58
  %i.bf = load float, ptr %i.ay, align 4, !tbaa !58
  %i.bg = fsub float %i.y, %i.bf                  ; 3 uses
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.bg, float %i.am)
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.bg, float %i.be) ; 2 uses
  %i.bj = fcmp ult float %2, %i.bi
  br i1 %i.bj, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.d
  %i.bk = add i32 %i.p, -2                        ; 2 uses
  %i.bl = icmp sgt i32 %i.p, 2
  br i1 %i.bl, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.bk to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.ad, i64 %i.ac
  br label %.lr.ph

bb.e:                                             ; preds = %bb.d
  %i.bm = fmul float %i.ak, 2.000000e+00
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.bm, float %i.bg, float %i.am) ; 2 uses
  %i.bo = tail call noundef float @llvm.fabs.f32(float %i.bn)
  %i.bp = fcmp olt float %i.bo, f0x3727C5AC
  br i1 %i.bp, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bq = fsub float %2, %i.bi
  %i.br = fdiv float %i.bq, %i.bn
  %i.bs = fadd float %i.y, %i.br
  br label %bb.h

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.bt = getelementptr i8, ptr %gep, i64 4
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !58
  %i.bv = fcmp olt float %2, %i.bu
  br i1 %i.bv, label %._crit_edge.loopexit.split.loop.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !168

._crit_edge.loopexit.split.loop.exit:             ; preds = %.lr.ph
  %i.bw = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.g, %._crit_edge.loopexit.split.loop.exit, %.preheader
  %.092.lcssa = phi i32 [ 0, %.preheader ], [ %i.bw, %._crit_edge.loopexit.split.loop.exit ], [ %i.bk, %bb.g ] ; 4 uses
  %i.bx = add nsw i32 %.092.lcssa, %i.l
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.by
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !58
  %i.cb = add nsw i32 %.092.lcssa, %i.ag
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.cc
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !58 ; 3 uses
  %i.cf = add nsw i32 %.092.lcssa, %i.ab
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.cg
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !58
  %i.cj = add nsw i32 %.092.lcssa, %i.r
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.ck
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !58
  %i.cn = fsub float %i.ci, %2                    ; 2 uses
  %i.co = fmul float %i.ca, 4.000000e+00
  %i.cp = fneg float %i.cn
  %i.cq = fmul float %i.co, %i.cp
  %i.cr = tail call float @llvm.fmuladd.f32(float %i.ce, float %i.ce, float %i.cq)
  %sqrtf = tail call float @sqrtf(float noundef %i.cr) #21
  %i.cs = fmul float %i.cn, 2.000000e+00
  %i.ct = fadd float %i.ce, %sqrtf
  %i.cu = fdiv float %i.cs, %i.ct
  %i.cv = fsub float %i.cm, %i.cu
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %._crit_edge, %bb.e, %bb.f, %bb.a
  %.1 = phi float [ %2, %bb.a ], [ %i.ax, %bb.c ], [ %i.cv, %._crit_edge ], [ %i.bs, %bb.f ], [ %i.y, %bb.e ]
  ret float %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define hidden noundef float @_ZNK16OpenColorIO_v2_523GradingBSplineCurveImpl10KnotsCoefs15evalCurveRevHueEif(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, i32 noundef %1, float noundef %2) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = shl nsw i32 %1, 1                        ; 2 uses
  %i.c = or disjoint i32 %i.b, 1
  %i.d = sext i32 %i.c to i64                     ; 2 uses
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !107  ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.d
  %i.g = load i32, ptr %i.f, align 4, !tbaa !3    ; 2 uses
  %.off = add i32 %i.g, 2
  %i.h = icmp ult i32 %.off, 5
  br i1 %i.h, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = sdiv i32 %i.g, 3                         ; 3 uses
  %i.j = sext i32 %i.b to i64                     ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !3    ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !107  ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.d
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3    ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.j
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3    ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = sext i32 %i.r to i64                     ; 2 uses
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !54   ; 4 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.t
  %i.w = load float, ptr %i.v, align 4, !tbaa !58
  %i.x = add nsw i32 %i.r, %i.p
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr [4 x i8], ptr %i.u, i64 %i.y ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 -4
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !58 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ad = shl nsw i32 %i.i, 1
  %i.ae = add nsw i32 %i.l, %i.ad                 ; 2 uses
  %i.af = sext i32 %i.ae to i64                   ; 2 uses
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !54 ; 7 uses
  %i.ah = getelementptr [4 x i8], ptr %i.ag, i64 %i.af ; 2 uses
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !58 ; 2 uses
  %i.aj = icmp eq i32 %1, 7                       ; 5 uses
  %i.ak = fadd float %i.w, %i.ai
  %i.al = select i1 %i.aj, float %i.ak, float %i.ai ; 2 uses
  %i.am = add nsw i32 %i.l, %i.i                  ; 2 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr [4 x i8], ptr %i.ag, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.ao, i64 -4
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !58
  %i.ar = getelementptr i8, ptr %i.ah, i64 -4
  %i.as = load float, ptr %i.ar, align 4, !tbaa !58
  %i.at = mul nsw i32 %i.i, 3
  %i.au = add nsw i32 %i.l, %i.at
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr [4 x i8], ptr %i.ag, i64 %i.av
  %i.ax = getelementptr i8, ptr %i.aw, i64 -4
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !58
  %i.az = getelementptr i8, ptr %i.z, i64 -8
  %i.ba = load float, ptr %i.az, align 4, !tbaa !58
  %i.bb = fsub float %i.ab, %i.ba                 ; 2 uses
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.bb, float %i.as)
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.bb, float %i.ay) ; 2 uses
  %i.be = fadd float %i.ab, %i.bd
  %i.bf = select i1 %i.aj, float %i.be, float %i.bd ; 2 uses
  %i.bg = fcmp olt float %2, %i.al
  br i1 %i.bg, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bh = fsub float %i.al, %2
  %i.bi = tail call noundef float @llvm.ceil.f32(float %i.bh)
  %i.bj = fadd float %2, %i.bi
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.bk = fcmp ogt float %2, %i.bf
  br i1 %i.bk, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bl = fsub float %2, %i.bf
  %i.bm = tail call noundef float @llvm.ceil.f32(float %i.bl)
  %i.bn = fsub float %2, %i.bm
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.084 = phi float [ %i.bj, %bb.c ], [ %i.bn, %bb.e ], [ %2, %bb.d ] ; 3 uses
  %i.bo = add i32 %i.p, -2                        ; 3 uses
  %i.bp = icmp sgt i32 %i.p, 2
  br i1 %i.bp, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %wide.trip.count103 = zext nneg i32 %i.bo to i64 ; 2 uses
  %invariant.gep114 = getelementptr [4 x i8], ptr %i.ag, i64 %i.af ; 2 uses
  br i1 %i.aj, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %invariant.gep116 = getelementptr [4 x i8], ptr %i.u, i64 %i.t
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.g
  %indvars.iv100 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next101, %bb.g ] ; 4 uses
  %gep115 = getelementptr [4 x i8], ptr %invariant.gep114, i64 %indvars.iv100
  %i.bq = getelementptr i8, ptr %gep115, i64 4
  %i.br = load float, ptr %i.bq, align 4, !tbaa !58
  %gep117 = getelementptr [4 x i8], ptr %invariant.gep116, i64 %indvars.iv100
  %i.bs = getelementptr i8, ptr %gep117, i64 4
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !58
  %i.bu = fadd float %i.br, %i.bt
  %i.bv = fcmp olt float %.084, %i.bu
  br i1 %i.bv, label %._crit_edge.loopexit.split.loop.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.us
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  %exitcond104.not = icmp eq i64 %indvars.iv.next101, %wide.trip.count103
  br i1 %exitcond104.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !169

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 0, %.lr.ph ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep114, i64 %indvars.iv
  %i.bw = getelementptr i8, ptr %gep, i64 4
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !58
  %i.by = fcmp olt float %.084, %i.bx
  br i1 %i.by, label %._crit_edge.loopexit108.split.loop.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count103
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !169

._crit_edge.loopexit.split.loop.exit:             ; preds = %.lr.ph.split.us
  %i.bz = trunc nuw nsw i64 %indvars.iv100 to i32
  br label %._crit_edge

._crit_edge.loopexit108.split.loop.exit:          ; preds = %.lr.ph.split
  %i.ca = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.h, %bb.g, %._crit_edge.loopexit108.split.loop.exit, %._crit_edge.loopexit.split.loop.exit, %bb.f
  %.088.lcssa = phi i32 [ 0, %bb.f ], [ %i.bo, %bb.g ], [ %i.bz, %._crit_edge.loopexit.split.loop.exit ], [ %i.ca, %._crit_edge.loopexit108.split.loop.exit ], [ %i.bo, %bb.h ] ; 4 uses
  %i.cb = add nsw i32 %.088.lcssa, %i.l
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.cc
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !58
  %i.cf = add nsw i32 %.088.lcssa, %i.am
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.cg
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !58 ; 2 uses
  %i.cj = add nsw i32 %.088.lcssa, %i.ae
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ck
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !58 ; 2 uses
  %i.cn = add nsw i32 %.088.lcssa, %i.r
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.co
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !58 ; 2 uses
  %i.cr = fadd float %i.cm, %i.cq
  %i.cs = fadd float %i.ci, 1.000000e+00
  %.087 = select i1 %i.aj, float %i.cs, float %i.ci ; 3 uses
  %.086 = select i1 %i.aj, float %i.cr, float %i.cm
  %i.ct = fsub float %.086, %.084                 ; 2 uses
  %i.cu = fmul float %i.ce, 4.000000e+00
  %i.cv = fneg float %i.ct
  %i.cw = fmul float %i.cu, %i.cv
  %i.cx = tail call float @llvm.fmuladd.f32(float %.087, float %.087, float %i.cw)
  %sqrtf = tail call float @sqrtf(float noundef %i.cx) #21
  %i.cy = fmul float %i.ct, 2.000000e+00
  %i.cz = fadd float %.087, %sqrtf
  %i.da = fdiv float %i.cy, %i.cz
  %i.db = fsub float %i.cq, %i.da
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %._crit_edge
  %.0 = phi float [ %i.db, %._crit_edge ], [ %2, %bb.a ]
  ret float %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN16OpenColorIO_v2_5eqERKNS_19GradingControlPointES2_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !97
  %i.b = load float, ptr %1, align 4, !tbaa !97
  %i.c = fcmp oeq float %i.a, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load float, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load float, ptr %i.f, align 4
  %i.h = fcmp oeq float %i.e, %i.g
  %i.i = select i1 %i.c, i1 %i.h, i1 false
  ret i1 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN16OpenColorIO_v2_5neERKNS_19GradingControlPointES2_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !97
  %i.b = load float, ptr %1, align 4, !tbaa !97
  %i.c = fcmp une float %i.a, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load float, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load float, ptr %i.f, align 4
  %i.h = fcmp une float %i.e, %i.g
  %.not3 = select i1 %i.c, i1 true, i1 %i.h
  ret i1 %.not3
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN16OpenColorIO_v2_5eqERKNS_19GradingBSplineCurveES2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.e = load ptr, ptr %1, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i32 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %.not = icmp eq i32 %i.d, %i.h
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !24
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i64 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %0) #21 ; 3 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !24
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef i64 %i.o(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  %i.q = icmp eq i64 %i.l, %i.p
  br i1 %i.q, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.b
  %.not2021 = icmp eq i64 %i.l, 0
  br i1 %.not2021, label %.loopexit, label %.lr.ph

bb.c:                                             ; preds = %bb.d
  %i.r = add nuw i64 %.01722, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.r, %i.l
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !170

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %.01722 = phi i64 [ %i.r, %bb.c ], [ 0, %.preheader ] ; 5 uses
  %i.s = load ptr, ptr %0, align 8, !tbaa !24
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef nonnull align 4 dereferenceable(8) ptr %i.u(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %.01722) ; 2 uses
  %i.w = load ptr, ptr %1, align 8, !tbaa !24
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef nonnull align 4 dereferenceable(8) ptr %i.y(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.01722) ; 2 uses
  %i.aa = load float, ptr %i.v, align 4, !tbaa !97
  %i.ab = load float, ptr %i.z, align 4, !tbaa !97
  %i.ac = fcmp une float %i.aa, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ae = load float, ptr %i.ad, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ag = load float, ptr %i.af, align 4
  %i.ah = fcmp une float %i.ae, %i.ag
  %.not3.i = select i1 %i.ac, i1 true, i1 %i.ah
  br i1 %.not3.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.ai = load ptr, ptr %0, align 8, !tbaa !24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call noundef float %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %.01722)
  %i.am = load ptr, ptr %1, align 8, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call noundef float %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.01722)
  %i.aq = fcmp une float %i.al, %i.ap
  br i1 %i.aq, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %.lr.ph, %bb.d, %bb.c, %.preheader, %bb.b, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %.preheader ], [ false, %bb.d ], [ false, %.lr.ph ], [ true, %bb.c ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN16OpenColorIO_v2_5neERKNS_19GradingBSplineCurveES2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0), !inline_history !171
  %i.e = load ptr, ptr %1, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i32 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !171
  %.not.i = icmp eq i32 %i.d, %i.h
  br i1 %.not.i, label %bb.b, label %_ZN16OpenColorIO_v2_5eqERKNS_19GradingBSplineCurveES2_.exit
end_hunk_0
