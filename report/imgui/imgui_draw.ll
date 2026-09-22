Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_draw?download=true
inline.NumInlined: 1479
inline.NumDeleted: 368
loop-unroll.NumCompletelyUnrolled: 299
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 352
begin_hunk_0_@_ZN6ImFont10RenderTextEP10ImDrawListfRK6ImVec2jRK6ImVec4PKcS9_fi:bb.a
  br i1 %i.bu, label %_Z31ImTextCalcWordWrapNextLineStartPKcS0_i.exit, label %.loopexit411, !llvm.loop !584

.loopexit411:                                     ; preds = %_Z31ImTextCalcWordWrapNextLineStartPKcS0_i.exit, %_Z31ImTextCalcWordWrapNextLineStartPKcS0_i.exit.us, %bb.d
  %.2323 = phi float [ %.0321, %bb.d ], [ %i.as, %_Z31ImTextCalcWordWrapNextLineStartPKcS0_i.exit.us ], [ %i.bl, %_Z31ImTextCalcWordWrapNextLineStartPKcS0_i.exit ] ; 3 uses
  %.2311 = phi ptr [ %6, %bb.d ], [ %.1310.us, %_Z31ImTextCalcWordWrapNextLineStartPKcS0_i.exit.us ], [ %i.bq, %_Z31ImTextCalcWordWrapNextLineStartPKcS0_i.exit ] ; 7 uses
  %i.bv = ptrtoint ptr %.1 to i64                 ; 2 uses
  %i.bw = ptrtoint ptr %.2311 to i64              ; 2 uses
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = icmp slt i64 %i.bx, 10001
  %or.cond = or i1 %i.h, %i.by
  br i1 %or.cond, label %.loopexit409, label %.preheader

.preheader:                                       ; preds = %.loopexit411
  %i.bz = load float, ptr %i.c, align 4, !tbaa !256 ; 2 uses
  %i.ca = fcmp olt float %.2323, %i.bz
  %i.cb = icmp ult ptr %.2311, %.1
  %i.cc = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %i.cc, label %.lr.ph434, label %.loopexit409

.lr.ph434:                                        ; preds = %.preheader, %.lr.ph434
  %.0307433 = phi float [ %i.ci, %.lr.ph434 ], [ %.2323, %.preheader ]
  %.0308432 = phi ptr [ %i.ch, %.lr.ph434 ], [ %.2311, %.preheader ] ; 2 uses
  %i.cd = ptrtoint ptr %.0308432 to i64
  %i.ce = sub i64 %i.bv, %i.cd
  %i.cf = call noundef ptr @memchr(ptr noundef %.0308432, i32 noundef 10, i64 noundef %i.ce) #40 ; 2 uses
  %.not352 = icmp eq ptr %i.cf, null
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 1
  %i.ch = select i1 %.not352, ptr %.1, ptr %i.cg  ; 3 uses
  %i.ci = fadd float %2, %.0307433                ; 2 uses
  %i.cj = fcmp olt float %i.ci, %i.bz
  %i.ck = icmp ult ptr %i.ch, %.1
  %i.cl = select i1 %i.cj, i1 %i.ck, i1 false
  br i1 %i.cl, label %.lr.ph434, label %.loopexit409, !llvm.loop !585

.loopexit409:                                     ; preds = %.lr.ph434, %.preheader, %.loopexit411
  %.2 = phi ptr [ %.1, %.loopexit411 ], [ %.2311, %.preheader ], [ %i.ch, %.lr.ph434 ] ; 16 uses
  %i.cm = icmp eq ptr %.2311, %.2
  br i1 %i.cm, label %.loopexit412, label %bb.g

bb.g:                                             ; preds = %.loopexit409
  %i.cn = ptrtoint ptr %.2 to i64                 ; 2 uses
  %i.co = sub i64 %i.cn, %i.bw
  %i.cp = trunc i64 %i.co to i32                  ; 2 uses
  %i.cq = shl nsw i32 %i.cp, 2                    ; 2 uses
  %i.cr = mul nsw i32 %i.cp, 6                    ; 4 uses
  %i.cs = load i32, ptr %i.l, align 8, !tbaa !110
  call void @_ZN10ImDrawList11PrimReserveEii(ptr noundef nonnull align 8 dereferenceable(224) %1, i32 noundef %i.cr, i32 noundef %i.cq)
  %i.ct = load ptr, ptr %i.m, align 8, !tbaa !242 ; 2 uses
  %i.cu = load ptr, ptr %i.n, align 8, !tbaa !113 ; 2 uses
  %i.cv = load i32, ptr %i.o, align 4, !tbaa !92  ; 2 uses
  %i.cw = load i32, ptr %1, align 8, !tbaa !104   ; 2 uses
  %i.cx = icmp ult ptr %.2311, %.2
  br i1 %i.cx, label %.lr.ph440.lr.ph, label %.loopexit

.lr.ph440.lr.ph:                                  ; preds = %bb.g
  %i.cy = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.cz = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.da = getelementptr inbounds nuw i8, ptr %i.aj, i64 56 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.aj, i64 64 ; 2 uses
  %i.dc = fsub float %.0326, %.0326
  %i.dd = fadd float %8, %i.dc
  %i.de = insertelement <2 x float> poison, float %i.am, i64 0
  %i.df = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph440

.lr.ph440:                                        ; preds = %.lr.ph440.lr.ph, %.outer
  %.0284.ph480 = phi ptr [ null, %.lr.ph440.lr.ph ], [ %.us-phi454, %.outer ] ; 4 uses
  %.0287.ph478 = phi i32 [ %i.cv, %.lr.ph440.lr.ph ], [ %.6, %.outer ] ; 15 uses
  %.0291.ph476 = phi ptr [ %i.cu, %.lr.ph440.lr.ph ], [ %.6297, %.outer ] ; 20 uses
  %.0299.ph474 = phi ptr [ %i.ct, %.lr.ph440.lr.ph ], [ %.6305, %.outer ] ; 32 uses
  %.3312.ph473 = phi ptr [ %.2311, %.lr.ph440.lr.ph ], [ %.4313, %.outer ] ; 9 uses
  %.3324.ph472 = phi float [ %.2323, %.lr.ph440.lr.ph ], [ %.4325, %.outer ] ; 4 uses
  %.1327.ph471 = phi float [ %.0326, %.lr.ph440.lr.ph ], [ %.7333, %.outer ] ; 4 uses
  br i1 %i.h, label %.lr.ph440.split.us, label %.split.us

.lr.ph440.split.us:                               ; preds = %.lr.ph440
  br i1 %i.k, label %.lr.ph440.split.us.split.us, label %.lr.ph440.split.us.split.preheader

.lr.ph440.split.us.split.preheader:               ; preds = %.lr.ph440.split.us
  %.not354.us.peel = icmp eq ptr %.0284.ph480, null
  br i1 %.not354.us.peel, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph440.split.us.split.preheader
  %i.dg = fsub float %.0326, %.1327.ph471
  %i.dh = fadd float %8, %i.dg
  %i.di = call noundef ptr @_Z28ImFontCalcWordWrapPositionExP6ImFontfPKcS2_fi(ptr noundef nonnull %0, float noundef %2, ptr noundef %.3312.ph473, ptr noundef nonnull %.2, float noundef %i.dh, i32 noundef %9)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph440.split.us.split.preheader
  %.1285.us.peel = phi ptr [ %.0284.ph480, %.lr.ph440.split.us.split.preheader ], [ %i.di, %bb.h ] ; 2 uses
  %.not355.us.peel = icmp ult ptr %.3312.ph473, %.1285.us.peel
  br i1 %.not355.us.peel, label %.split.us, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dj = fadd float %2, %.3324.ph472             ; 2 uses
  %i.dk = load float, ptr %i.c, align 4, !tbaa !256
  %i.dl = fcmp ogt float %i.dj, %i.dk
  br i1 %i.dl, label %.loopexit, label %.critedge.i362.us.peel

.critedge.i362.us.peel:                           ; preds = %bb.j
  %i.dm = icmp ult ptr %.3312.ph473, %.2
  br i1 %i.dm, label %bb.k, label %_Z31ImTextCalcWordWrapNextLineStartPKcS0_i.exit372.us.peel

bb.k:                                             ; preds = %.critedge.i362.us.peel
  %i.dn = load i8, ptr %.3312.ph473, align 1, !tbaa !50
  %i.do = icmp eq i8 %i.dn, 10
  %spec.select.idx.i365.us.peel = zext i1 %i.do to i64
  %spec.select.i366.us.peel = getelementptr inbounds nuw i8, ptr %.3312.ph473, i64 %spec.select.idx.i365.us.peel
  br label %_Z31ImTextCalcWordWrapNextLineStartPKcS0_i.exit372.us.peel

_Z31ImTextCalcWordWrapNextLineStartPKcS0_i.exit372.us.peel: ; preds = %bb.k, %.critedge.i362.us.peel
  %.2.i364.us.peel = phi ptr [ %.3312.ph473, %.critedge.i362.us.peel ], [ %spec.select.i366.us.peel, %bb.k ] ; 2 uses
  %i.dp = icmp ult ptr %.2.i364.us.peel, %.2
  br i1 %i.dp, label %.lr.ph440.split.us.split.peel.next, label %.loopexit

.lr.ph440.split.us.split.us:                      ; preds = %.lr.ph440.split.us, %_Z31ImTextCalcWordWrapNextLineStartPKcS0_i.exit372.us.us
  %.0284439.us.us = phi ptr [ null, %_Z31ImTextCalcWordWrapNextLineStartPKcS0_i.exit372.us.us ], [ %.0284.ph480, %.lr.ph440.split.us ] ; 2 uses
  %.3312438.us.us = phi ptr [ %.2.i364.us.us, %_Z31ImTextCalcWordWrapNextLineStartPKcS0_i.exit372.us.us ], [ %.3312.ph473, %.lr.ph440.split.us ] ; 6 uses
  %.3324437.us.us = phi float [ %i.dt, %_Z31ImTextCalcWordWrapNextLineStartPKcS0_i.exit372.us.us ], [ %.3324.ph472, %.lr.ph440.split.us ] ; 2 uses
  %.1327436.us.us = phi float [ %.0326, %_Z31ImTextCalcWordWrapNextLineStartPKcS0_i.exit372.us.us ], [ %.1327.ph471, %.lr.ph440.split.us ] ; 2 uses
  %.not354.us.us = icmp eq ptr %.0284439.us.us, null
  br i1 %.not354.us.us, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph440.split.us.split.us
  %i.dq = fsub float %.0326, %.1327436.us.us
  %i.dr = fadd float %8, %i.dq
  %i.ds = call noundef ptr @_Z28ImFontCalcWordWrapPositionExP6ImFontfPKcS2_fi(ptr noundef nonnull %0, float noundef %2, ptr noundef %.3312438.us.us, ptr noundef nonnull %.2, float noundef %i.dr, i32 noundef %9)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph440.split.us.split.us
  %.1285.us.us = phi ptr [ %.0284439.us.us, %.lr.ph440.split.us.split.us ], [ %i.ds, %bb.l ] ; 2 uses
  %.not355.us.us = icmp ult ptr %.3312438.us.us, %.1285.us.us
  br i1 %.not355.us.us, label %.split.us, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dt = fadd float %2, %.3324437.us.us          ; 2 uses
  %i.du = load float, ptr %i.c, align 4, !tbaa !256
  %i.dv = fcmp ogt float %i.dt, %i.du
  br i1 %i.dv, label %.loopexit, label %.lr.ph.preheader.i367.us.us

.lr.ph.preheader.i367.us.us:                      ; preds = %bb.n
  %i.dw = ptrtoaddr ptr %.3312438.us.us to i64
  %i.dx = sub i64 %i.cn, %i.dw
  %scevgep.i368.us.us = getelementptr i8, ptr %.3312438.us.us, i64 %i.dx
  br label %.lr.ph.i369.us.us

.lr.ph.i369.us.us:                                ; preds = %bb.o, %.lr.ph.preheader.i367.us.us
  %.09.i370.us.us = phi ptr [ %i.dz, %bb.o ], [ %.3312438.us.us, %.lr.ph.preheader.i367.us.us ] ; 3 uses
  %i.dy = load i8, ptr %.09.i370.us.us, align 1, !tbaa !50
  switch i8 %i.dy, label %.critedge.i362.loopexit.us.us [
    i8 32, label %bb.o
    i8 9, label %bb.o
  ]

bb.o:                                             ; preds = %.lr.ph.i369.us.us, %.lr.ph.i369.us.us
  %i.dz = getelementptr inbounds nuw i8, ptr %.09.i370.us.us, i64 1 ; 2 uses
  %exitcond.not.i371.us.us = icmp eq ptr %i.dz, %.2
  br i1 %exitcond.not.i371.us.us, label %.critedge.i362.loopexit.us.us, label %.lr.ph.i369.us.us, !llvm.loop !1

.critedge.i362.loopexit.us.us:                    ; preds = %bb.o, %.lr.ph.i369.us.us
  %.1.i363.ph.us.us = phi ptr [ %scevgep.i368.us.us, %bb.o ], [ %.09.i370.us.us, %.lr.ph.i369.us.us ] ; 4 uses
  %i.ea = icmp ult ptr %.1.i363.ph.us.us, %.2
  br i1 %i.ea, label %bb.p, label %_Z31ImTextCalcWordWrapNextLineStartPKcS0_i.exit372.us.us

bb.p:                                             ; preds = %.critedge.i362.loopexit.us.us
  %i.eb = load i8, ptr %.1.i363.ph.us.us, align 1, !tbaa !50
  %i.ec = icmp eq i8 %i.eb, 10
  %spec.select.idx.i365.us.us = zext i1 %i.ec to i64
  %spec.select.i366.us.us = getelementptr inbounds nuw i8, ptr %.1.i363.ph.us.us, i64 %spec.select.idx.i365.us.us
  br label %_Z31ImTextCalcWordWrapNextLineStartPKcS0_i.exit372.us.us

_Z31ImTextCalcWordWrapNextLineStartPKcS0_i.exit372.us.us: ; preds = %bb.p, %.critedge.i362.loopexit.us.us
  %.2.i364.us.us = phi ptr [ %.1.i363.ph.us.us, %.critedge.i362.loopexit.us.us ], [ %spec.select.i366.us.us, %bb.p ] ; 2 uses
  %i.ed = icmp ult ptr %.2.i364.us.us, %.2
  br i1 %i.ed, label %.lr.ph440.split.us.split.us, label %.loopexit, !llvm.loop !586

.lr.ph440.split.us.split.peel.next:               ; preds = %_Z31ImTextCalcWordWrapNextLineStartPKcS0_i.exit372.us.peel, %_Z31ImTextCalcWordWrapNextLineStartPKcS0_i.exit372.us
  %.3312438.us = phi ptr [ %.2.i364.us, %_Z31ImTextCalcWordWrapNextLineStartPKcS0_i.exit372.us ], [ %.2.i364.us.peel, %_Z31ImTextCalcWordWrapNextLineStartPKcS0_i.exit372.us.peel ] ; 7 uses
  %.3324437.us = phi float [ %i.ef, %_Z31ImTextCalcWordWrapNextLineStartPKcS0_i.exit372.us ], [ %i.dj, %_Z31ImTextCalcWordWrapNextLineStartPKcS0_i.exit372.us.peel ] ; 2 uses
  %i.ee = call noundef ptr @_Z28ImFontCalcWordWrapPositionExP6ImFontfPKcS2_fi(ptr noundef nonnull %0, float noundef %2, ptr noundef %.3312438.us, ptr noundef nonnull %.2, float noundef %i.dd, i32 noundef %9) ; 2 uses
  %.not355.us = icmp ult ptr %.3312438.us, %i.ee
  br i1 %.not355.us, label %.split.us, label %bb.q

bb.q:                                             ; preds = %.lr.ph440.split.us.split.peel.next
  %i.ef = fadd float %2, %.3324437.us             ; 2 uses
  %i.eg = load float, ptr %i.c, align 4, !tbaa !256
  %i.eh = fcmp ogt float %i.ef, %i.eg
  br i1 %i.eh, label %.loopexit, label %.critedge.i362.us

.critedge.i362.us:                                ; preds = %bb.q
  %i.ei = icmp ult ptr %.3312438.us, %.2
  br i1 %i.ei, label %bb.r, label %_Z31ImTextCalcWordWrapNextLineStartPKcS0_i.exit372.us

bb.r:                                             ; preds = %.critedge.i362.us
  %i.ej = load i8, ptr %.3312438.us, align 1, !tbaa !50
  %i.ek = icmp eq i8 %i.ej, 10
  %spec.select.idx.i365.us = zext i1 %i.ek to i64
  %spec.select.i366.us = getelementptr inbounds nuw i8, ptr %.3312438.us, i64 %spec.select.idx.i365.us
  br label %_Z31ImTextCalcWordWrapNextLineStartPKcS0_i.exit372.us

_Z31ImTextCalcWordWrapNextLineStartPKcS0_i.exit372.us: ; preds = %.critedge.i362.us, %bb.r
  %.2.i364.us = phi ptr [ %.3312438.us, %.critedge.i362.us ], [ %spec.select.i366.us, %bb.r ] ; 2 uses
  %i.el = icmp ult ptr %.2.i364.us, %.2
  br i1 %i.el, label %.lr.ph440.split.us.split.peel.next, label %.loopexit, !llvm.loop !587

.split.us:                                        ; preds = %.lr.ph440.split.us.split.peel.next, %bb.m, %bb.i, %.lr.ph440
  %.us-phi451 = phi float [ %.1327.ph471, %.lr.ph440 ], [ %.1327436.us.us, %bb.m ], [ %.1327.ph471, %bb.i ], [ %.0326, %.lr.ph440.split.us.split.peel.next ] ; 4 uses
  %.us-phi452 = phi float [ %.3324.ph472, %.lr.ph440 ], [ %.3324437.us.us, %bb.m ], [ %.3324.ph472, %bb.i ], [ %.3324437.us, %.lr.ph440.split.us.split.peel.next ] ; 5 uses
  %.us-phi453 = phi ptr [ %.3312.ph473, %.lr.ph440 ], [ %.3312438.us.us, %bb.m ], [ %.3312.ph473, %bb.i ], [ %.3312438.us, %.lr.ph440.split.us.split.peel.next ] ; 4 uses
  %.us-phi454 = phi ptr [ %.0284.ph480, %.lr.ph440 ], [ %.1285.us.us, %bb.m ], [ %.1285.us.peel, %bb.i ], [ %i.ee, %.lr.ph440.split.us.split.peel.next ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  %i.em = load i8, ptr %.us-phi453, align 1, !tbaa !50 ; 2 uses
  %i.en = sext i8 %i.em to i32                    ; 2 uses
  store i32 %i.en, ptr %i.a, align 4, !tbaa !259
  %i.eo = icmp sgt i8 %i.em, -1
  br i1 %i.eo, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.split.us
  %i.ep = getelementptr inbounds nuw i8, ptr %.us-phi453, i64 1
  br label %bb.u

bb.t:                                             ; preds = %.split.us
  %i.eq = call noundef i32 @_Z18ImTextCharFromUtf8PjPKcS1_(ptr noundef nonnull %i.a, ptr noundef nonnull %.us-phi453, ptr noundef nonnull %.2)
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds i8, ptr %.us-phi453, i64 %i.er
  %.pr = load i32, ptr %i.a, align 4, !tbaa !259
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.et = phi i32 [ %.pr, %bb.t ], [ %i.en, %bb.s ] ; 4 uses
  %.4313 = phi ptr [ %i.es, %bb.t ], [ %i.ep, %bb.s ] ; 2 uses
  %i.eu = icmp ult i32 %i.et, 32
  br i1 %i.eu, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  switch i32 %i.et, label %bb.x [
    i32 10, label %bb.w
    i32 13, label %.outer
  ], !llvm.loop !586

bb.w:                                             ; preds = %bb.v
  %i.ev = fadd float %2, %.us-phi452              ; 2 uses
  %i.ew = load float, ptr %i.c, align 4, !tbaa !256
  %i.ex = fcmp ogt float %i.ev, %i.ew
  br i1 %i.ex, label %.thread395, label %.outer

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.ey = trunc i32 %i.et to i16
  %.mask = and i32 %i.et, 65535                   ; 2 uses
  %i.ez = load i32, ptr %i.cy, align 8, !tbaa !260
  %i.fa = icmp ult i32 %.mask, %i.ez
  br i1 %i.fa, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.fb = zext nneg i32 %.mask to i64
  %i.fc = load ptr, ptr %i.cz, align 8, !tbaa !261
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %i.fc, i64 %i.fb
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !243 ; 2 uses
  switch i16 %i.fe, label %bb.aa [
    i16 -2, label %bb.z
    i16 -1, label %bb.ab
  ]

bb.z:                                             ; preds = %bb.y
  %i.ff = load ptr, ptr %i.da, align 8, !tbaa !262
  %i.fg = load i32, ptr %i.db, align 8, !tbaa !263
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds [44 x i8], ptr %i.ff, i64 %i.fh
  br label %_ZN11ImFontBaked9FindGlyphEt.exit

bb.aa:                                            ; preds = %bb.y
  %i.fj = load ptr, ptr %i.da, align 8, !tbaa !262
  %i.fk = zext i16 %i.fe to i64
  %i.fl = getelementptr inbounds nuw [44 x i8], ptr %i.fj, i64 %i.fk
  br label %_ZN11ImFontBaked9FindGlyphEt.exit

bb.ab:                                            ; preds = %bb.y, %bb.x
  %i.fm = call fastcc noundef ptr @_ZL26ImFontBaked_BuildLoadGlyphP11ImFontBakedtPf(ptr noundef nonnull align 8 dereferenceable(104) %i.aj, i16 noundef zeroext %i.ey, ptr noundef null) ; 2 uses
  %.not14.i = icmp eq ptr %i.fm, null
  br i1 %.not14.i, label %bb.ac, label %_ZN11ImFontBaked9FindGlyphEt.exit

bb.ac:                                            ; preds = %bb.ab
  %i.fn = load ptr, ptr %i.da, align 8, !tbaa !262
  %i.fo = load i32, ptr %i.db, align 8, !tbaa !263
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds [44 x i8], ptr %i.fn, i64 %i.fp
  br label %_ZN11ImFontBaked9FindGlyphEt.exit

_ZN11ImFontBaked9FindGlyphEt.exit:                ; preds = %bb.z, %bb.aa, %bb.ab, %bb.ac
  %.1.i373 = phi ptr [ %i.fm, %bb.ab ], [ %i.fq, %bb.ac ], [ %i.fl, %bb.aa ], [ %i.fi, %bb.z ] ; 8 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.1.i373, i64 4
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !265
  %i.ft = fmul float %i.am, %i.fs                 ; 2 uses
  %i.fu = load i32, ptr %.1.i373, align 4         ; 2 uses
  %i.fv = and i32 %i.fu, 2
  %.not356 = icmp eq i32 %i.fv, 0
  br i1 %.not356, label %.thread388, label %bb.ad

bb.ad:                                            ; preds = %_ZN11ImFontBaked9FindGlyphEt.exit
  %i.fw = getelementptr inbounds nuw i8, ptr %.1.i373, i64 8
  %i.fx = getelementptr inbounds nuw i8, ptr %.1.i373, i64 16
  %i.fy = load <2 x float>, ptr %i.fw, align 4, !tbaa !29
  %i.fz = insertelement <2 x float> poison, float %.us-phi451, i64 0
  %i.ga = insertelement <2 x float> %i.fz, float %.us-phi452, i64 1 ; 2 uses
  %i.gb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fy, <2 x float> %i.df, <2 x float> %i.ga) ; 4 uses
  %i.gc = extractelement <2 x float> %i.gb, i64 1 ; 4 uses
  %i.gd = extractelement <2 x float> %i.gb, i64 0 ; 4 uses
  %i.ge = load <2 x float>, ptr %i.fx, align 4, !tbaa !29
  %i.gf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ge, <2 x float> %i.df, <2 x float> %i.ga) ; 4 uses
  %i.gg = extractelement <2 x float> %i.gf, i64 1 ; 6 uses
  %i.gh = extractelement <2 x float> %i.gf, i64 0 ; 6 uses
  %i.gi = load float, ptr %i.r, align 4, !tbaa !32 ; 4 uses
  %i.gj = fcmp ugt float %i.gd, %i.gi
  br i1 %i.gj, label %.thread388, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gk = load float, ptr %5, align 4, !tbaa !266 ; 4 uses
  %i.gl = fcmp ult float %i.gh, %i.gk
  br i1 %i.gl, label %.thread388, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gm = getelementptr inbounds nuw i8, ptr %.1.i373, i64 24
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !267 ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.1.i373, i64 28
  %i.gp = load float, ptr %i.go, align 4, !tbaa !268 ; 4 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.1.i373, i64 32
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !269 ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.1.i373, i64 36
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !270 ; 4 uses
  br i1 %.not353, label %bb.ap, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gu = fcmp olt float %i.gd, %i.gk
  br i1 %i.gu, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.gv = fsub float %i.gh, %i.gk
  %foldExtExtBinop = fsub <2 x float> %i.gf, %i.gb
  %i.gw = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.gx = fdiv float %i.gv, %i.gw
  %i.gy = fsub float 1.000000e+00, %i.gx
  %i.gz = fsub float %i.gr, %i.gn
  %i.ha = call float @llvm.fmuladd.f32(float %i.gy, float %i.gz, float %i.gn)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.0282 = phi float [ %i.gk, %bb.ah ], [ %i.gd, %bb.ag ] ; 4 uses
  %.0274 = phi float [ %i.ha, %bb.ah ], [ %i.gn, %bb.ag ] ; 3 uses
  %i.hb = load float, ptr %i.i, align 4, !tbaa !258 ; 3 uses
  %i.hc = fcmp olt float %i.gc, %i.hb
  br i1 %i.hc, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.hd = fsub float %i.gg, %i.hb
  %i.he = fsub float %i.gg, %i.gc
  %i.hf = fdiv float %i.hd, %i.he
  %i.hg = fsub float 1.000000e+00, %i.hf
  %i.hh = fsub float %i.gt, %i.gp
  %i.hi = call float @llvm.fmuladd.f32(float %i.hg, float %i.hh, float %i.gp)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.0278 = phi float [ %i.hb, %bb.aj ], [ %i.gc, %bb.ai ] ; 5 uses
  %.0272 = phi float [ %i.hi, %bb.aj ], [ %i.gp, %bb.ai ] ; 3 uses
  %i.hj = fcmp ogt float %i.gh, %i.gi
  br i1 %i.hj, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.hk = fsub float %i.gi, %.0282
  %i.hl = fsub float %i.gh, %.0282
  %i.hm = fdiv float %i.hk, %i.hl
  %i.hn = fsub float %i.gr, %.0274
  %i.ho = call float @llvm.fmuladd.f32(float %i.hm, float %i.hn, float %.0274)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.0280 = phi float [ %i.gi, %bb.al ], [ %i.gh, %bb.ak ] ; 2 uses
  %.0270 = phi float [ %i.ho, %bb.al ], [ %i.gr, %bb.ak ]
  %i.hp = load float, ptr %i.c, align 4, !tbaa !256 ; 3 uses
  %i.hq = fcmp ogt float %i.gg, %i.hp
  br i1 %i.hq, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.hr = fsub float %i.hp, %.0278
  %i.hs = fsub float %i.gg, %.0278
  %i.ht = fdiv float %i.hr, %i.hs
  %i.hu = fsub float %i.gt, %.0272
  %i.hv = call float @llvm.fmuladd.f32(float %i.ht, float %i.hu, float %.0272)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.0276 = phi float [ %i.hp, %bb.an ], [ %i.gg, %bb.am ] ; 3 uses
  %.0268 = phi float [ %i.hv, %bb.an ], [ %i.gt, %bb.am ]
  %i.hw = fcmp ult float %.0278, %.0276
  %i.hx = insertelement <2 x float> poison, float %.0282, i64 0
  %i.hy = insertelement <2 x float> %i.hx, float %.0278, i64 1
  %i.hz = insertelement <2 x float> poison, float %.0280, i64 0
  %i.ia = insertelement <2 x float> %i.hz, float %.0276, i64 1
  br i1 %i.hw, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.af, %bb.ao
  %.1283 = phi float [ %.0282, %bb.ao ], [ %i.gd, %bb.af ]
  %.1281 = phi float [ %.0280, %bb.ao ], [ %i.gh, %bb.af ]
  %.1279 = phi float [ %.0278, %bb.ao ], [ %i.gc, %bb.af ]
  %.1277 = phi float [ %.0276, %bb.ao ], [ %i.gg, %bb.af ]
  %.1275 = phi float [ %.0274, %bb.ao ], [ %i.gn, %bb.af ] ; 2 uses
  %.1273 = phi float [ %.0272, %bb.ao ], [ %i.gp, %bb.af ] ; 2 uses
  %.1271 = phi float [ %.0270, %bb.ao ], [ %i.gr, %bb.af ] ; 2 uses
  %.1269 = phi float [ %.0268, %bb.ao ], [ %i.gt, %bb.af ] ; 2 uses
  %i.ib = phi <2 x float> [ %i.hy, %bb.ao ], [ %i.gb, %bb.af ]
  %i.ic = phi <2 x float> [ %i.ia, %bb.ao ], [ %i.gf, %bb.af ]
  %i.id = and i32 %i.fu, 1
  %.not357 = icmp eq i32 %i.id, 0
  %i.ie = select i1 %.not357, i32 %4, i32 %i.q    ; 4 uses
  store <2 x float> %i.ib, ptr %.0299.ph474, align 4, !tbaa !29
  %i.if = getelementptr inbounds nuw i8, ptr %.0299.ph474, i64 16
  store i32 %i.ie, ptr %i.if, align 4, !tbaa !245
  %i.ig = getelementptr inbounds nuw i8, ptr %.0299.ph474, i64 8
  store float %.1275, ptr %i.ig, align 4, !tbaa !588
  %i.ih = getelementptr inbounds nuw i8, ptr %.0299.ph474, i64 12
  store float %.1273, ptr %i.ih, align 4, !tbaa !589
  %i.ii = getelementptr inbounds nuw i8, ptr %.0299.ph474, i64 20
  store float %.1281, ptr %i.ii, align 4, !tbaa !249
  %i.ij = getelementptr inbounds nuw i8, ptr %.0299.ph474, i64 24
  store float %.1279, ptr %i.ij, align 4, !tbaa !250
  %i.ik = getelementptr inbounds nuw i8, ptr %.0299.ph474, i64 36
  store i32 %i.ie, ptr %i.ik, align 4, !tbaa !245
  %i.il = getelementptr inbounds nuw i8, ptr %.0299.ph474, i64 28
  store float %.1271, ptr %i.il, align 4, !tbaa !588
  %i.im = getelementptr inbounds nuw i8, ptr %.0299.ph474, i64 32
  store float %.1273, ptr %i.im, align 4, !tbaa !589
  %i.in = getelementptr inbounds nuw i8, ptr %.0299.ph474, i64 40
  store <2 x float> %i.ic, ptr %i.in, align 4, !tbaa !29
  %i.io = getelementptr inbounds nuw i8, ptr %.0299.ph474, i64 56
  store i32 %i.ie, ptr %i.io, align 4, !tbaa !245
  %i.ip = getelementptr inbounds nuw i8, ptr %.0299.ph474, i64 48
  store float %.1271, ptr %i.ip, align 4, !tbaa !588
  %i.iq = getelementptr inbounds nuw i8, ptr %.0299.ph474, i64 52
  store float %.1269, ptr %i.iq, align 4, !tbaa !589
  %i.ir = getelementptr inbounds nuw i8, ptr %.0299.ph474, i64 60
  store float %.1283, ptr %i.ir, align 4, !tbaa !249
  %i.is = getelementptr inbounds nuw i8, ptr %.0299.ph474, i64 64
  store float %.1277, ptr %i.is, align 4, !tbaa !250
  %i.it = getelementptr inbounds nuw i8, ptr %.0299.ph474, i64 76
  store i32 %i.ie, ptr %i.it, align 4, !tbaa !245
  %i.iu = getelementptr inbounds nuw i8, ptr %.0299.ph474, i64 68
  store float %.1275, ptr %i.iu, align 4, !tbaa !588
  %i.iv = getelementptr inbounds nuw i8, ptr %.0299.ph474, i64 72
  store float %.1269, ptr %i.iv, align 4, !tbaa !589
  %i.iw = trunc i32 %.0287.ph478 to i16           ; 5 uses
  store i16 %i.iw, ptr %.0291.ph476, align 2, !tbaa !243
  %i.ix = add i16 %i.iw, 1
  %i.iy = getelementptr inbounds nuw i8, ptr %.0291.ph476, i64 2
  store i16 %i.ix, ptr %i.iy, align 2, !tbaa !243
  %i.iz = add i16 %i.iw, 2                        ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.0291.ph476, i64 4
  store i16 %i.iz, ptr %i.ja, align 2, !tbaa !243
  %i.jb = getelementptr inbounds nuw i8, ptr %.0291.ph476, i64 6
  store i16 %i.iw, ptr %i.jb, align 2, !tbaa !243
  %i.jc = getelementptr inbounds nuw i8, ptr %.0291.ph476, i64 8
  store i16 %i.iz, ptr %i.jc, align 2, !tbaa !243
  %i.jd = add i16 %i.iw, 3
  %i.je = getelementptr inbounds nuw i8, ptr %.0291.ph476, i64 10
  store i16 %i.jd, ptr %i.je, align 2, !tbaa !243
  %i.jf = getelementptr inbounds nuw i8, ptr %.0299.ph474, i64 80
  %i.jg = add i32 %.0287.ph478, 4
  %i.jh = getelementptr inbounds nuw i8, ptr %.0291.ph476, i64 12
  br label %.thread388

bb.aq:                                            ; preds = %bb.ao
  %i.ji = fadd float %.us-phi451, %i.ft
  br label %.outer

.thread388:                                       ; preds = %bb.ap, %bb.ae, %bb.ad, %_ZN11ImFontBaked9FindGlyphEt.exit
  %.4303 = phi ptr [ %.0299.ph474, %_ZN11ImFontBaked9FindGlyphEt.exit ], [ %i.jf, %bb.ap ], [ %.0299.ph474, %bb.ae ], [ %.0299.ph474, %bb.ad ]
  %.4295 = phi ptr [ %.0291.ph476, %_ZN11ImFontBaked9FindGlyphEt.exit ], [ %i.jh, %bb.ap ], [ %.0291.ph476, %bb.ae ], [ %.0291.ph476, %bb.ad ]
  %.4 = phi i32 [ %.0287.ph478, %_ZN11ImFontBaked9FindGlyphEt.exit ], [ %i.jg, %bb.ap ], [ %.0287.ph478, %bb.ae ], [ %.0287.ph478, %bb.ad ]
  %i.jj = fadd float %.us-phi451, %i.ft
  br label %.outer

.thread395:                                       ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  br label %.loopexit

.outer:                                           ; preds = %bb.w, %bb.aq, %.thread388, %bb.v
  %.7333 = phi float [ %.0326, %bb.w ], [ %.us-phi451, %bb.v ], [ %i.jj, %.thread388 ], [ %i.ji, %bb.aq ]
  %.4325 = phi float [ %i.ev, %bb.w ], [ %.us-phi452, %bb.v ], [ %.us-phi452, %.thread388 ], [ %.us-phi452, %bb.aq ]
  %.6305 = phi ptr [ %.0299.ph474, %bb.w ], [ %.0299.ph474, %bb.v ], [ %.4303, %.thread388 ], [ %.0299.ph474, %bb.aq ] ; 2 uses
  %.6297 = phi ptr [ %.0291.ph476, %bb.w ], [ %.0291.ph476, %bb.v ], [ %.4295, %.thread388 ], [ %.0291.ph476, %bb.aq ] ; 2 uses
  %.6 = phi i32 [ %.0287.ph478, %bb.w ], [ %.0287.ph478, %bb.v ], [ %.4, %.thread388 ], [ %.0287.ph478, %bb.aq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  %i.jk = icmp ult ptr %.4313, %.2
  br i1 %i.jk, label %.lr.ph440, label %.loopexit

.loopexit:                                        ; preds = %.outer, %bb.j, %_Z31ImTextCalcWordWrapNextLineStartPKcS0_i.exit372.us.peel, %_Z31ImTextCalcWordWrapNextLineStartPKcS0_i.exit372.us, %bb.q, %_Z31ImTextCalcWordWrapNextLineStartPKcS0_i.exit372.us.us, %bb.n, %bb.g, %.thread395
  %.0299.ph422 = phi ptr [ %.0299.ph474, %.thread395 ], [ %.0299.ph474, %_Z31ImTextCalcWordWrapNextLineStartPKcS0_i.exit372.us.us ], [ %.0299.ph474, %_Z31ImTextCalcWordWrapNextLineStartPKcS0_i.exit372.us ], [ %i.ct, %bb.g ], [ %.0299.ph474, %bb.n ], [ %.0299.ph474, %bb.q ], [ %.6305, %.outer ], [ %.0299.ph474, %bb.j ], [ %.0299.ph474, %_Z31ImTextCalcWordWrapNextLineStartPKcS0_i.exit372.us.peel ] ; 2 uses
  %.0291.ph420 = phi ptr [ %.0291.ph476, %.thread395 ], [ %.0291.ph476, %_Z31ImTextCalcWordWrapNextLineStartPKcS0_i.exit372.us.us ], [ %.0291.ph476, %_Z31ImTextCalcWordWrapNextLineStartPKcS0_i.exit372.us ], [ %i.cu, %bb.g ], [ %.0291.ph476, %bb.n ], [ %.0291.ph476, %bb.q ], [ %.6297, %.outer ], [ %.0291.ph476, %bb.j ], [ %.0291.ph476, %_Z31ImTextCalcWordWrapNextLineStartPKcS0_i.exit372.us.peel ] ; 2 uses
  %.0287.ph418 = phi i32 [ %.0287.ph478, %.thread395 ], [ %.0287.ph478, %_Z31ImTextCalcWordWrapNextLineStartPKcS0_i.exit372.us.us ], [ %.0287.ph478, %_Z31ImTextCalcWordWrapNextLineStartPKcS0_i.exit372.us ], [ %i.cv, %bb.g ], [ %.0287.ph478, %bb.n ], [ %.0287.ph478, %bb.q ], [ %.6, %.outer ], [ %.0287.ph478, %bb.j ], [ %.0287.ph478, %_Z31ImTextCalcWordWrapNextLineStartPKcS0_i.exit372.us.peel ]
  %i.jl = load i32, ptr %1, align 8, !tbaa !104   ; 3 uses
  %.not358 = icmp eq i32 %i.cw, %i.jl
  br i1 %.not358, label %bb.aw, label %bb.ar

bb.ar:                                            ; preds = %.loopexit
  %i.jm = add nsw i32 %i.jl, -1                   ; 6 uses
  store i32 %i.jm, ptr %1, align 8, !tbaa !86
  %i.jn = load ptr, ptr %i.s, align 8, !tbaa !105 ; 2 uses
  %i.jo = sext i32 %i.jm to i64                   ; 2 uses
  %i.jp = getelementptr [72 x i8], ptr %i.jn, i64 %i.jo
  %i.jq = getelementptr i8, ptr %i.jp, i64 -32    ; 2 uses
  %i.jr = load i32, ptr %i.jq, align 8, !tbaa !107
  %i.js = sub i32 %i.jr, %i.cr
  store i32 %i.js, ptr %i.jq, align 8, !tbaa !107
  %i.jt = load i32, ptr %i.t, align 8, !tbaa !240
  %i.ju = sub nsw i32 %i.jt, %i.cq
  store i32 %i.ju, ptr %i.t, align 8, !tbaa !90
  %i.jv = load i32, ptr %i.l, align 8, !tbaa !110
  %i.jw = sub nsw i32 %i.jv, %i.cr                ; 2 uses
  store i32 %i.jw, ptr %i.l, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.16..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false), !tbaa.struct !116
  %i.jx = load i32, ptr %i.w, align 8, !tbaa !117
  %i.jy = load i32, ptr %i.x, align 4, !tbaa !85
  %i.jz = icmp eq i32 %i.jm, %i.jy
  br i1 %i.jz, label %bb.as, label %bb.ax

bb.as:                                            ; preds = %bb.ar
  %.not.i.i.i = icmp eq i32 %i.jm, 0
  br i1 %.not.i.i.i, label %_ZNK8ImVectorI9ImDrawCmdE14_grow_capacityEi.exit.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ka = sdiv i32 %i.jm, 2
  %i.kb = add nsw i32 %i.ka, %i.jm
  br label %_ZNK8ImVectorI9ImDrawCmdE14_grow_capacityEi.exit.i.i

_ZNK8ImVectorI9ImDrawCmdE14_grow_capacityEi.exit.i.i: ; preds = %bb.at, %bb.as
  %i.kc = phi i32 [ %i.kb, %bb.at ], [ 8, %bb.as ]
  %i.kd = call noundef i32 @llvm.smax.i32(i32 %i.kc, i32 %i.jl) ; 2 uses
  %i.ke = sext i32 %i.kd to i64
  %i.kf = mul nsw i64 %i.ke, 72
  %i.kg = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.kf) ; 3 uses
  %i.kh = load ptr, ptr %i.s, align 8, !tbaa !84  ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.kh, null
  br i1 %.not6.i.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_ZNK8ImVectorI9ImDrawCmdE14_grow_capacityEi.exit.i.i
  %i.ki = load i32, ptr %1, align 8, !tbaa !86
  %i.kj = sext i32 %i.ki to i64
  %i.kk = mul nsw i64 %i.kj, 72
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.kg, ptr nonnull align 8 %i.kh, i64 %i.kk, i1 false)
  %i.kl = load ptr, ptr %i.s, align 8, !tbaa !84
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.kl)
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %_ZNK8ImVectorI9ImDrawCmdE14_grow_capacityEi.exit.i.i
  store ptr %i.kg, ptr %i.s, align 8, !tbaa !84
  store i32 %i.kd, ptr %i.x, align 4, !tbaa !85
  %.pre3.i.i = load i32, ptr %1, align 8, !tbaa !86
  %.pre = sext i32 %.pre3.i.i to i64
  br label %bb.ax

bb.aw:                                            ; preds = %.loopexit
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !241
  %i.ko = ptrtoint ptr %.0299.ph422 to i64
  %i.kp = ptrtoint ptr %i.kn to i64
  %i.kq = sub i64 %i.ko, %i.kp
  %i.kr = sdiv exact i64 %i.kq, 20
  %i.ks = trunc i64 %i.kr to i32
  store i32 %i.ks, ptr %i.t, align 8, !tbaa !240
  %i.kt = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !111
  %i.kv = ptrtoint ptr %.0291.ph420 to i64
  %i.kw = ptrtoint ptr %i.ku to i64
  %i.kx = sub i64 %i.kv, %i.kw
  %i.ky = lshr exact i64 %i.kx, 1
  %i.kz = trunc i64 %i.ky to i32                  ; 2 uses
  store i32 %i.kz, ptr %i.l, align 8, !tbaa !110
  %i.la = add i32 %i.cs, %i.cr
  %i.lb = load ptr, ptr %i.s, align 8, !tbaa !84
  %i.lc = sext i32 %i.cw to i64
  %i.ld = getelementptr [72 x i8], ptr %i.lb, i64 %i.lc
  %i.le = getelementptr i8, ptr %i.ld, i64 -32    ; 2 uses
  %i.lf = load i32, ptr %i.le, align 8, !tbaa !107
  %.neg = sub i32 %i.lf, %i.la
  %i.lg = add i32 %.neg, %i.kz
  store i32 %i.lg, ptr %i.le, align 8, !tbaa !107
  store ptr %.0299.ph422, ptr %i.m, align 8, !tbaa !242
  store ptr %.0291.ph420, ptr %i.n, align 8, !tbaa !113
  store i32 %.0287.ph418, ptr %i.o, align 4, !tbaa !92
  br label %.loopexit412

bb.ax:                                            ; preds = %bb.av, %bb.ar
  %.pre-phi = phi i64 [ %.pre, %bb.av ], [ %i.jo, %bb.ar ]
  %i.lh = phi ptr [ %i.kg, %bb.av ], [ %i.jn, %bb.ar ]
  %i.li = getelementptr inbounds [72 x i8], ptr %i.lh, i64 %.pre-phi ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.li, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.i, i64 32, i1 false)
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.li, i64 32
  store i32 %i.jx, ptr %.sroa.6.0..sroa_idx.i, align 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.li, i64 36
  store i32 %i.jw, ptr %.sroa.7.0..sroa_idx.i, align 4
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.li, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.0..sroa_idx.i, i8 0, i64 32, i1 false)
  %i.lj = load i32, ptr %1, align 8, !tbaa !86
  %i.lk = add nsw i32 %i.lj, 1
  store i32 %i.lk, ptr %1, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %i.ll = load float, ptr %i.b, align 4, !tbaa !238 ; 2 uses
  %i.lm = load float, ptr %i.c, align 4, !tbaa !256
  %i.ln = fcmp ogt float %i.ll, %i.lm
  br i1 %i.ln, label %.loopexit412, label %bb.b

.loopexit412:                                     ; preds = %.loopexit409, %bb.ax, %bb.a, %bb.aw
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #10 align 2 {
bb.a:
  %5 = alloca %struct.ImVec4, align 4             ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !254
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = load float, ptr %i.e, align 8, !tbaa !255
  %i.g = icmp ult i32 %2, 16777216
  %i.h = icmp eq ptr %3, %4
  %or.cond.i = or i1 %i.g, %i.h
  br i1 %or.cond.i, label %_ZN10ImDrawList7AddTextEP6ImFontfRK6ImVec2jPKcS6_fPK6ImVec4.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i8, ptr %3, align 1, !tbaa !50
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %_ZN10ImDrawList7AddTextEP6ImFontfRK6ImVec2jPKcS6_fPK6ImVec4.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !30
  call void @_ZN6ImFont10RenderTextEP10ImDrawListfRK6ImVec2jRK6ImVec4PKcS9_fi(ptr noundef nonnull align 8 dereferenceable(76) %i.d, ptr noundef nonnull align 8 dereferenceable(224) %0, float noundef %i.f, ptr noundef nonnull readonly align 4 dereferenceable(8) %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull %3, ptr noundef %4, float noundef 0.000000e+00, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  br label %_ZN10ImDrawList7AddTextEP6ImFontfRK6ImVec2jPKcS6_fPK6ImVec4.exit

_ZN10ImDrawList7AddTextEP6ImFontfRK6ImVec2jPKcS6_fPK6ImVec4.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN10ImDrawList8AddImageE12ImTextureRefRK6ImVec2S3_S3_S3_j(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %0, ptr %1, i64 %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %6, i32 noundef %7) local_unnamed_addr #10 align 2 {
bb.a:
  %8 = alloca %struct.ImTextureRef, align 8       ; 5 uses
  %i.a = icmp ult i32 %7, 16777216
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !236
  %.not.i = icmp ne i64 %2, %i.d
  %i.e = load ptr, ptr %i.b, align 8
  %i.f = icmp ne ptr %1, %i.e
  %i.g = select i1 %.not.i, i1 true, i1 %i.f
  br i1 %i.g, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 7 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !96   ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !95
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %._ZN8ImVectorI12ImTextureRefE7reserveEi.exit_crit_edge.i.i

._ZN8ImVectorI12ImTextureRefE7reserveEi.exit_crit_edge.i.i: ; preds = %bb.c
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !79
  br label %_ZN10ImDrawList11PushTextureE12ImTextureRef.exit

bb.d:                                             ; preds = %bb.c
  %i.m = add nsw i32 %i.i, 1
  %.not.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i, label %_ZNK8ImVectorI12ImTextureRefE14_grow_capacityEi.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = sdiv i32 %i.i, 2
  %i.o = add nsw i32 %i.n, %i.i
  br label %_ZNK8ImVectorI12ImTextureRefE14_grow_capacityEi.exit.i.i

_ZNK8ImVectorI12ImTextureRefE14_grow_capacityEi.exit.i.i: ; preds = %bb.e, %bb.d
  %i.p = phi i32 [ %i.o, %bb.e ], [ 8, %bb.d ]
  %i.q = tail call noundef i32 @llvm.smax.i32(i32 %i.p, i32 %i.m) ; 2 uses
  %i.r = sext i32 %i.q to i64
  %i.s = shl nsw i64 %i.r, 4
  %i.t = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.s) ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !79   ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not6.i.i.i, label %bb.g, label %bb.f
end_hunk_0
