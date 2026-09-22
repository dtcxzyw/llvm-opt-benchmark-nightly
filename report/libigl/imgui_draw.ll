Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/imgui_draw?download=true
inline.NumInlined: 1179
inline.NumDeleted: 280
loop-unroll.NumCompletelyUnrolled: 238
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 283
begin_hunk_0_@_ZN10ImDrawList7AddTextEPK6ImFontfRK6ImVec2jPKcS7_fPK6ImVec4:bb.a
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #41
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 %i.c
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.022 = phi ptr [ %i.d, %bb.c ], [ %6, %bb.b ]  ; 2 uses
  %i.e = icmp eq ptr %5, %.022
  br i1 %i.e, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = icmp eq ptr %1, null
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !55
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !101
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi ptr [ %i.j, %bb.f ], [ %1, %bb.e ]
  %i.k = fcmp oeq float %2, 0.000000e+00
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !55
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load float, ptr %i.n, align 8, !tbaa !102
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.021 = phi float [ %i.o, %bb.h ], [ %2, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !16
  %i.q = icmp ne ptr %8, null                     ; 2 uses
  br i1 %i.q, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.r = load <4 x float>, ptr %9, align 16, !tbaa !15 ; 3 uses
  %i.s = load <4 x float>, ptr %8, align 4, !tbaa !15 ; 3 uses
  %i.t = fcmp oge <4 x float> %i.r, %i.s
  %i.u = fcmp olt <4 x float> %i.r, %i.s
  %i.v = shufflevector <4 x i1> %i.t, <4 x i1> %i.u, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.w = select <4 x i1> %i.v, <4 x float> %i.r, <4 x float> %i.s
  store <4 x float> %i.w, ptr %9, align 16, !tbaa !15
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.0.0.copyload = load <2 x float>, ptr %3, align 4
  call void @_ZNK6ImFont10RenderTextEP10ImDrawListf6ImVec2jRK6ImVec4PKcS7_fb(ptr noundef nonnull align 8 dereferenceable(110) %.0, ptr noundef nonnull %0, float noundef %.021, <2 x float> %.sroa.0.0.copyload, i32 noundef %4, ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef %5, ptr noundef nonnull %.022, float noundef %7, i1 noundef zeroext %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %bb.a, %bb.k
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK6ImFont10RenderTextEP10ImDrawListf6ImVec2jRK6ImVec4PKcS7_fb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(110) %0, ptr nofree noundef captures(none) %1, float noundef %2, <2 x float> %3, i32 noundef %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %5, ptr noundef %6, ptr noundef %7, float noundef %8, i1 noundef zeroext %9) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %.not = icmp eq ptr %7, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #41
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 %i.b
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0321 = phi ptr [ %7, %bb.a ], [ %i.c, %bb.b ] ; 9 uses
  %.sroa.0.0.vec.extract = extractelement <2 x float> %3, i64 0
  %i.d = fptosi float %.sroa.0.0.vec.extract to i32
  %i.e = sitofp i32 %i.d to float                 ; 4 uses
  %.sroa.0.4.vec.extract = extractelement <2 x float> %3, i64 1
  %i.f = fptosi float %.sroa.0.4.vec.extract to i32
  %i.g = sitofp i32 %i.f to float                 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  %i.i = load float, ptr %i.h, align 4, !tbaa !308 ; 3 uses
  %i.j = fcmp olt float %i.i, %i.g
  br i1 %i.j, label %bb.ag, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.l = load float, ptr %i.k, align 4, !tbaa !111 ; 2 uses
  %i.m = fdiv float %2, %i.l                      ; 4 uses
  %i.n = fmul float %i.l, %i.m                    ; 5 uses
  %i.o = fcmp ogt float %8, 0.000000e+00          ; 3 uses
  %i.p = fadd float %i.n, %i.g                    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.r = load float, ptr %i.q, align 4, !tbaa !309 ; 2 uses
  %i.s = fcmp uge float %i.p, %i.r
  %or.cond = or i1 %i.o, %i.s
  %i.t = icmp uge ptr %6, %.0321
  %or.cond497.not = select i1 %or.cond, i1 true, i1 %i.t
  br i1 %or.cond497.not, label %.loopexit386, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.u = ptrtoint ptr %.0321 to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %i.v = phi float [ %i.p, %.lr.ph ], [ %i.ab, %bb.e ] ; 2 uses
  %.0292396 = phi ptr [ %6, %.lr.ph ], [ %i.aa, %bb.e ] ; 2 uses
  %i.w = ptrtoint ptr %.0292396 to i64
  %i.x = sub i64 %i.u, %i.w
  %i.y = tail call noundef ptr @memchr(ptr noundef %.0292396, i32 noundef 10, i64 noundef %i.x) #41 ; 2 uses
  %.not343 = icmp eq ptr %i.y, null
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.aa = select i1 %.not343, ptr %.0321, ptr %i.z ; 3 uses
  %i.ab = fadd float %i.n, %i.v                   ; 2 uses
  %i.ac = fcmp olt float %i.ab, %i.r
  %i.ad = icmp ult ptr %i.aa, %.0321
  %i.ae = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %i.ae, label %bb.e, label %.loopexit386, !llvm.loop !305

.loopexit386:                                     ; preds = %bb.e, %bb.d
  %.1310 = phi float [ %i.g, %bb.d ], [ %i.v, %bb.e ] ; 3 uses
  %.1293 = phi ptr [ %6, %bb.d ], [ %i.aa, %bb.e ] ; 7 uses
  %i.af = ptrtoint ptr %.0321 to i64              ; 2 uses
  %i.ag = ptrtoint ptr %.1293 to i64              ; 2 uses
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = icmp slt i64 %i.ah, 10001
  %or.cond4 = or i1 %i.o, %i.ai
  br i1 %or.cond4, label %.loopexit384, label %.preheader

.preheader:                                       ; preds = %.loopexit386
  %i.aj = fcmp olt float %.1310, %i.i
  %i.ak = icmp ult ptr %.1293, %.0321
  %i.al = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %i.al, label %.lr.ph400, label %.loopexit384

.lr.ph400:                                        ; preds = %.preheader, %.lr.ph400
  %.0290399 = phi float [ %i.ar, %.lr.ph400 ], [ %.1310, %.preheader ]
  %.0291398 = phi ptr [ %i.aq, %.lr.ph400 ], [ %.1293, %.preheader ] ; 2 uses
  %i.am = ptrtoint ptr %.0291398 to i64
  %i.an = sub i64 %i.af, %i.am
  %i.ao = tail call noundef ptr @memchr(ptr noundef %.0291398, i32 noundef 10, i64 noundef %i.an) #41 ; 2 uses
  %.not344 = icmp eq ptr %i.ao, null
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.aq = select i1 %.not344, ptr %.0321, ptr %i.ap ; 3 uses
  %i.ar = fadd float %i.n, %.0290399              ; 2 uses
  %i.as = fcmp olt float %i.ar, %i.i
  %i.at = icmp ult ptr %i.aq, %.0321
  %i.au = select i1 %i.as, i1 %i.at, i1 false
  br i1 %i.au, label %.lr.ph400, label %.loopexit384, !llvm.loop !306

.loopexit384:                                     ; preds = %.lr.ph400, %.preheader, %.loopexit386
  %.1322 = phi ptr [ %.0321, %.loopexit386 ], [ %.1293, %.preheader ], [ %i.aq, %.lr.ph400 ] ; 8 uses
  %i.av = icmp eq ptr %.1293, %.1322
  br i1 %i.av, label %bb.ag, label %bb.f

bb.f:                                             ; preds = %.loopexit384
  %i.aw = ptrtoint ptr %.1322 to i64              ; 2 uses
  %i.ax = sub i64 %i.aw, %i.ag
  %i.ay = trunc i64 %i.ax to i32                  ; 2 uses
  %i.az = shl nsw i32 %i.ay, 2
  %i.ba = mul nsw i32 %i.ay, 6                    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !76
  tail call void @_ZN10ImDrawList11PrimReserveEii(ptr noundef nonnull align 8 dereferenceable(196) %1, i32 noundef %i.ba, i32 noundef %i.az)
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !86 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !88 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !57 ; 2 uses
  %i.bj = or i32 %4, 16777215
  %i.bk = icmp ult ptr %.1293, %.1322
  br i1 %i.bk, label %.lr.ph413.lr.ph, label %.loopexit

.lr.ph413.lr.ph:                                  ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bq = insertelement <2 x float> poison, float %i.m, i64 0
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph413

.lr.ph413:                                        ; preds = %.lr.ph413.lr.ph, %.outer
  %.0270.ph432 = phi i32 [ %i.bi, %.lr.ph413.lr.ph ], [ %.7, %.outer ] ; 11 uses
  %.0272.ph431 = phi ptr [ %i.bg, %.lr.ph413.lr.ph ], [ %.7279, %.outer ] ; 16 uses
  %.0281.ph430 = phi ptr [ %i.be, %.lr.ph413.lr.ph ], [ %.7288, %.outer ] ; 28 uses
  %.2294.ph429 = phi ptr [ %.1293, %.lr.ph413.lr.ph ], [ %.6298, %.outer ] ; 2 uses
  %.0300.ph428 = phi ptr [ null, %.lr.ph413.lr.ph ], [ %.us-phi422, %.outer ] ; 2 uses
  %.2311.ph427 = phi float [ %.1310, %.lr.ph413.lr.ph ], [ %.3312, %.outer ] ; 2 uses
  %.0313.ph426 = phi float [ %i.e, %.lr.ph413.lr.ph ], [ %.7320, %.outer ] ; 2 uses
  br i1 %i.o, label %.lr.ph413.split.us, label %.split.us

.lr.ph413.split.us:                               ; preds = %.lr.ph413, %.backedge.us
  %.2294412.us = phi ptr [ %.5297, %.backedge.us ], [ %.2294.ph429, %.lr.ph413 ] ; 9 uses
  %.0300411.us = phi ptr [ null, %.backedge.us ], [ %.0300.ph428, %.lr.ph413 ] ; 2 uses
  %.2311410.us = phi float [ %i.bw, %.backedge.us ], [ %.2311.ph427, %.lr.ph413 ] ; 2 uses
  %.0313409.us = phi float [ %i.e, %.backedge.us ], [ %.0313.ph426, %.lr.ph413 ] ; 2 uses
  %.2294412.us454 = ptrtoaddr ptr %.2294412.us to i64
  %.not345.us = icmp eq ptr %.0300411.us, null
  br i1 %.not345.us, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph413.split.us
  %i.bs = fsub float %i.e, %.0313409.us
  %i.bt = fadd float %8, %i.bs
  %i.bu = call noundef ptr @_ZNK6ImFont21CalcWordWrapPositionAEfPKcS1_f(ptr noundef nonnull align 8 dereferenceable(110) %0, float noundef %i.m, ptr noundef %.2294412.us, ptr noundef nonnull %.1322, float noundef %i.bt) ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %.2294412.us
  %spec.select.idx.us = zext i1 %i.bv to i64
  %spec.select.us = getelementptr inbounds nuw i8, ptr %i.bu, i64 %spec.select.idx.us
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph413.split.us
  %.1301.us = phi ptr [ %.0300411.us, %.lr.ph413.split.us ], [ %spec.select.us, %bb.g ] ; 2 uses
  %.not346.us = icmp ult ptr %.2294412.us, %.1301.us
  br i1 %.not346.us, label %.split.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bw = fadd float %i.n, %.2311410.us
  %i.bx = icmp ult ptr %.2294412.us, %.1322
  br i1 %i.bx, label %.lr.ph407.us.preheader, label %.backedge.us

.lr.ph407.us.preheader:                           ; preds = %bb.i
  %scevgep = getelementptr i8, ptr %.2294412.us, i64 %i.aw
  %i.by = sub i64 0, %.2294412.us454
  %scevgep455 = getelementptr i8, ptr %scevgep, i64 %i.by ; 2 uses
  br label %.lr.ph407.us

.lr.ph407.us:                                     ; preds = %.lr.ph407.us.preheader, %.split.loop.exit402.us
  %.3295406.us = phi ptr [ %i.ca, %.split.loop.exit402.us ], [ %.2294412.us, %.lr.ph407.us.preheader ] ; 3 uses
  %i.bz = load i8, ptr %.3295406.us, align 1, !tbaa !26
  %i.ca = getelementptr inbounds nuw i8, ptr %.3295406.us, i64 1 ; 3 uses
  switch i8 %i.bz, label %.backedge.us [
    i8 32, label %.split.loop.exit402.us
    i8 9, label %.split.loop.exit402.us
    i8 10, label %.split.loop.exit402.loopexit
  ]

.split.loop.exit402.us:                           ; preds = %.lr.ph407.us, %.lr.ph407.us
  %exitcond.not = icmp eq ptr %i.ca, %scevgep455
  br i1 %exitcond.not, label %.backedge.us, label %.lr.ph407.us

.split.loop.exit402.loopexit:                     ; preds = %.lr.ph407.us
  br label %.backedge.us

.backedge.us:                                     ; preds = %.split.loop.exit402.us, %.lr.ph407.us, %.split.loop.exit402.loopexit, %bb.i
  %.5297 = phi ptr [ %.3295406.us, %.lr.ph407.us ], [ %.2294412.us, %bb.i ], [ %scevgep455, %.split.loop.exit402.us ], [ %i.ca, %.split.loop.exit402.loopexit ] ; 2 uses
  %10 = icmp ult ptr %.5297, %.1322
  br i1 %10, label %.lr.ph413.split.us, label %.loopexit, !llvm.loop !307

.split.us:                                        ; preds = %bb.h, %.lr.ph413
  %.us-phi = phi float [ %.0313.ph426, %.lr.ph413 ], [ %.0313409.us, %bb.h ] ; 5 uses
  %.us-phi420 = phi float [ %.2311.ph427, %.lr.ph413 ], [ %.2311410.us, %bb.h ] ; 6 uses
  %.us-phi421 = phi ptr [ %.2294.ph429, %.lr.ph413 ], [ %.2294412.us, %bb.h ] ; 4 uses
  %.us-phi422 = phi ptr [ %.0300.ph428, %.lr.ph413 ], [ %.1301.us, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  %i.cb = load i8, ptr %.us-phi421, align 1, !tbaa !26 ; 2 uses
  %i.cc = sext i8 %i.cb to i32                    ; 2 uses
  store i32 %i.cc, ptr %i.a, align 4, !tbaa !112
  %i.cd = icmp sgt i8 %i.cb, -1
  br i1 %i.cd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.split.us
  %i.ce = getelementptr inbounds nuw i8, ptr %.us-phi421, i64 1
  br label %bb.l

bb.k:                                             ; preds = %.split.us
  %i.cf = call noundef i32 @_Z18ImTextCharFromUtf8PjPKcS1_(ptr noundef nonnull %i.a, ptr noundef nonnull %.us-phi421, ptr noundef nonnull %.1322)
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds i8, ptr %.us-phi421, i64 %i.cg
  %i.ci = load i32, ptr %i.a, align 4, !tbaa !112 ; 2 uses
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %.thread373, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ck = phi i32 [ %i.ci, %bb.k ], [ %i.cc, %bb.j ] ; 3 uses
  %.6298 = phi ptr [ %i.ch, %bb.k ], [ %i.ce, %bb.j ] ; 2 uses
  %i.cl = icmp ult i32 %i.ck, 32
  br i1 %i.cl, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  switch i32 %i.ck, label %bb.o [
    i32 10, label %bb.n
    i32 13, label %.outer
  ], !llvm.loop !307

bb.n:                                             ; preds = %bb.m
  %i.cm = fadd float %i.n, %.us-phi420            ; 2 uses
  %i.cn = load float, ptr %i.h, align 4, !tbaa !308
  %i.co = fcmp ogt float %i.cm, %i.cn
  br i1 %i.co, label %.thread373, label %.outer

bb.o:                                             ; preds = %bb.m, %bb.l
  %i.cp = and i32 %i.ck, 65535                    ; 2 uses
  %i.cq = load i32, ptr %i.bl, align 8, !tbaa !113
  %.not.i = icmp ult i32 %i.cp, %i.cq
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cr = load ptr, ptr %i.bm, align 8, !tbaa !114
  br label %_ZNK6ImFont9FindGlyphEt.exit

bb.q:                                             ; preds = %bb.o
  %i.cs = zext nneg i32 %i.cp to i64
  %i.ct = load ptr, ptr %i.bn, align 8, !tbaa !115
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %i.cs
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !92 ; 2 uses
  %i.cw = icmp eq i16 %i.cv, -1
  %i.cx = load ptr, ptr %i.bm, align 8
  %i.cy = load ptr, ptr %i.bo, align 8
  %i.cz = zext i16 %i.cv to i64
  %i.da = getelementptr inbounds nuw [40 x i8], ptr %i.cy, i64 %i.cz
  %.0.i = select i1 %i.cw, ptr %i.cx, ptr %i.da
  br label %_ZNK6ImFont9FindGlyphEt.exit

_ZNK6ImFont9FindGlyphEt.exit:                     ; preds = %bb.p, %bb.q
  %.1.i = phi ptr [ %i.cr, %bb.p ], [ %.0.i, %bb.q ] ; 9 uses
  %i.db = icmp eq ptr %.1.i, null
  br i1 %i.db, label %.outer, label %bb.r, !llvm.loop !307

bb.r:                                             ; preds = %_ZNK6ImFont9FindGlyphEt.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %.1.i, i64 4
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !117
  %i.de = fmul float %i.m, %i.dd                  ; 2 uses
  %i.df = load i32, ptr %.1.i, align 4            ; 2 uses
  %i.dg = and i32 %i.df, 2
  %.not347 = icmp eq i32 %i.dg, 0
  br i1 %.not347, label %.thread365, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dh = getelementptr inbounds nuw i8, ptr %.1.i, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  %i.dj = load <2 x float>, ptr %i.dh, align 4, !tbaa !15
  %i.dk = insertelement <2 x float> poison, float %.us-phi, i64 0
  %i.dl = insertelement <2 x float> %i.dk, float %.us-phi420, i64 1 ; 2 uses
  %i.dm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dj, <2 x float> %i.br, <2 x float> %i.dl) ; 4 uses
  %i.dn = extractelement <2 x float> %i.dm, i64 1 ; 4 uses
  %i.do = extractelement <2 x float> %i.dm, i64 0 ; 4 uses
  %i.dp = load <2 x float>, ptr %i.di, align 4, !tbaa !15
  %i.dq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dp, <2 x float> %i.br, <2 x float> %i.dl) ; 4 uses
  %i.dr = extractelement <2 x float> %i.dq, i64 1 ; 6 uses
  %i.ds = extractelement <2 x float> %i.dq, i64 0 ; 6 uses
  %i.dt = load float, ptr %i.bp, align 4, !tbaa !310 ; 4 uses
  %i.du = fcmp ugt float %i.do, %i.dt
  br i1 %i.du, label %.thread365, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dv = load float, ptr %5, align 4, !tbaa !311 ; 4 uses
  %i.dw = fcmp ult float %i.ds, %i.dv
  br i1 %i.dw, label %.thread365, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dx = getelementptr inbounds nuw i8, ptr %.1.i, i64 24
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !118 ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.1.i, i64 28
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !119 ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.1.i, i64 32
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !120 ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.1.i, i64 36
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !121 ; 4 uses
  br i1 %9, label %bb.v, label %bb.ae

bb.v:                                             ; preds = %bb.u
  %i.ef = fcmp olt float %i.do, %i.dv
  br i1 %i.ef, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.eg = fsub float %i.ds, %i.dv
  %foldExtExtBinop = fsub <2 x float> %i.dq, %i.dm
  %i.eh = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ei = fdiv float %i.eg, %i.eh
  %i.ej = fsub float 1.000000e+00, %i.ei
  %i.ek = fsub float %i.ec, %i.dy
  %i.el = call float @llvm.fmuladd.f32(float %i.ej, float %i.ek, float %i.dy)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.0268 = phi float [ %i.dv, %bb.w ], [ %i.do, %bb.v ] ; 4 uses
  %.0260 = phi float [ %i.el, %bb.w ], [ %i.dy, %bb.v ] ; 3 uses
  %i.em = load float, ptr %i.q, align 4, !tbaa !309 ; 3 uses
  %i.en = fcmp olt float %i.dn, %i.em
  br i1 %i.en, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.eo = fsub float %i.dr, %i.em
  %i.ep = fsub float %i.dr, %i.dn
  %i.eq = fdiv float %i.eo, %i.ep
  %i.er = fsub float 1.000000e+00, %i.eq
  %i.es = fsub float %i.ee, %i.ea
  %i.et = call float @llvm.fmuladd.f32(float %i.er, float %i.es, float %i.ea)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0264 = phi float [ %i.em, %bb.y ], [ %i.dn, %bb.x ] ; 5 uses
  %.0258 = phi float [ %i.et, %bb.y ], [ %i.ea, %bb.x ] ; 3 uses
  %i.eu = fcmp ogt float %i.ds, %i.dt
  br i1 %i.eu, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ev = fsub float %i.dt, %.0268
  %i.ew = fsub float %i.ds, %.0268
  %i.ex = fdiv float %i.ev, %i.ew
  %i.ey = fsub float %i.ec, %.0260
  %i.ez = call float @llvm.fmuladd.f32(float %i.ex, float %i.ey, float %.0260)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.0266 = phi float [ %i.dt, %bb.aa ], [ %i.ds, %bb.z ] ; 2 uses
  %.0256 = phi float [ %i.ez, %bb.aa ], [ %i.ec, %bb.z ]
  %i.fa = load float, ptr %i.h, align 4, !tbaa !308 ; 3 uses
  %i.fb = fcmp ogt float %i.dr, %i.fa
  br i1 %i.fb, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fc = fsub float %i.fa, %.0264
  %i.fd = fsub float %i.dr, %.0264
  %i.fe = fdiv float %i.fc, %i.fd
  %i.ff = fsub float %i.ee, %.0258
  %i.fg = call float @llvm.fmuladd.f32(float %i.fe, float %i.ff, float %.0258)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.0262 = phi float [ %i.fa, %bb.ac ], [ %i.dr, %bb.ab ] ; 3 uses
  %.0 = phi float [ %i.fg, %bb.ac ], [ %i.ee, %bb.ab ]
  %i.fh = fcmp ult float %.0264, %.0262
  %i.fi = insertelement <2 x float> poison, float %.0268, i64 0
  %i.fj = insertelement <2 x float> %i.fi, float %.0264, i64 1
  %i.fk = insertelement <2 x float> poison, float %.0266, i64 0
  %i.fl = insertelement <2 x float> %i.fk, float %.0262, i64 1
  br i1 %i.fh, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.u, %bb.ad
  %.1269 = phi float [ %.0268, %bb.ad ], [ %i.do, %bb.u ]
  %.1267 = phi float [ %.0266, %bb.ad ], [ %i.ds, %bb.u ]
  %.1265 = phi float [ %.0264, %bb.ad ], [ %i.dn, %bb.u ]
  %.1263 = phi float [ %.0262, %bb.ad ], [ %i.dr, %bb.u ]
  %.1261 = phi float [ %.0260, %bb.ad ], [ %i.dy, %bb.u ] ; 2 uses
  %.1259 = phi float [ %.0258, %bb.ad ], [ %i.ea, %bb.u ] ; 2 uses
  %.1257 = phi float [ %.0256, %bb.ad ], [ %i.ec, %bb.u ] ; 2 uses
  %.1 = phi float [ %.0, %bb.ad ], [ %i.ee, %bb.u ] ; 2 uses
  %i.fm = phi <2 x float> [ %i.fj, %bb.ad ], [ %i.dm, %bb.u ]
  %i.fn = phi <2 x float> [ %i.fl, %bb.ad ], [ %i.dq, %bb.u ]
  %i.fo = and i32 %i.df, 1
  %.not348 = icmp eq i32 %i.fo, 0
  %i.fp = select i1 %.not348, i32 %4, i32 %i.bj   ; 4 uses
  %i.fq = trunc i32 %.0270.ph432 to i16           ; 5 uses
  store i16 %i.fq, ptr %.0272.ph431, align 2, !tbaa !92
  %i.fr = add i16 %i.fq, 1
  %i.fs = getelementptr inbounds nuw i8, ptr %.0272.ph431, i64 2
  store i16 %i.fr, ptr %i.fs, align 2, !tbaa !92
  %i.ft = add i16 %i.fq, 2                        ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.0272.ph431, i64 4
  store i16 %i.ft, ptr %i.fu, align 2, !tbaa !92
  %i.fv = getelementptr inbounds nuw i8, ptr %.0272.ph431, i64 6
  store i16 %i.fq, ptr %i.fv, align 2, !tbaa !92
  %i.fw = getelementptr inbounds nuw i8, ptr %.0272.ph431, i64 8
  store i16 %i.ft, ptr %i.fw, align 2, !tbaa !92
  %i.fx = add i16 %i.fq, 3
  %i.fy = getelementptr inbounds nuw i8, ptr %.0272.ph431, i64 10
  store i16 %i.fx, ptr %i.fy, align 2, !tbaa !92
  store <2 x float> %i.fm, ptr %.0281.ph430, align 4, !tbaa !15
  %i.fz = getelementptr inbounds nuw i8, ptr %.0281.ph430, i64 16
  store i32 %i.fp, ptr %i.fz, align 4, !tbaa !94
  %i.ga = getelementptr inbounds nuw i8, ptr %.0281.ph430, i64 8
  store float %.1261, ptr %i.ga, align 4, !tbaa !312
  %i.gb = getelementptr inbounds nuw i8, ptr %.0281.ph430, i64 12
  store float %.1259, ptr %i.gb, align 4, !tbaa !313
  %i.gc = getelementptr inbounds nuw i8, ptr %.0281.ph430, i64 20
  store float %.1267, ptr %i.gc, align 4, !tbaa !95
  %i.gd = getelementptr inbounds nuw i8, ptr %.0281.ph430, i64 24
  store float %.1265, ptr %i.gd, align 4, !tbaa !96
  %i.ge = getelementptr inbounds nuw i8, ptr %.0281.ph430, i64 36
  store i32 %i.fp, ptr %i.ge, align 4, !tbaa !94
  %i.gf = getelementptr inbounds nuw i8, ptr %.0281.ph430, i64 28
  store float %.1257, ptr %i.gf, align 4, !tbaa !312
  %i.gg = getelementptr inbounds nuw i8, ptr %.0281.ph430, i64 32
  store float %.1259, ptr %i.gg, align 4, !tbaa !313
  %i.gh = getelementptr inbounds nuw i8, ptr %.0281.ph430, i64 40
  store <2 x float> %i.fn, ptr %i.gh, align 4, !tbaa !15
  %i.gi = getelementptr inbounds nuw i8, ptr %.0281.ph430, i64 56
  store i32 %i.fp, ptr %i.gi, align 4, !tbaa !94
  %i.gj = getelementptr inbounds nuw i8, ptr %.0281.ph430, i64 48
  store float %.1257, ptr %i.gj, align 4, !tbaa !312
  %i.gk = getelementptr inbounds nuw i8, ptr %.0281.ph430, i64 52
  store float %.1, ptr %i.gk, align 4, !tbaa !313
  %i.gl = getelementptr inbounds nuw i8, ptr %.0281.ph430, i64 60
  store float %.1269, ptr %i.gl, align 4, !tbaa !95
  %i.gm = getelementptr inbounds nuw i8, ptr %.0281.ph430, i64 64
  store float %.1263, ptr %i.gm, align 4, !tbaa !96
  %i.gn = getelementptr inbounds nuw i8, ptr %.0281.ph430, i64 76
  store i32 %i.fp, ptr %i.gn, align 4, !tbaa !94
  %i.go = getelementptr inbounds nuw i8, ptr %.0281.ph430, i64 68
  store float %.1261, ptr %i.go, align 4, !tbaa !312
  %i.gp = getelementptr inbounds nuw i8, ptr %.0281.ph430, i64 72
  store float %.1, ptr %i.gp, align 4, !tbaa !313
  %i.gq = getelementptr inbounds nuw i8, ptr %.0281.ph430, i64 80
  %i.gr = add i32 %.0270.ph432, 4
  %i.gs = getelementptr inbounds nuw i8, ptr %.0272.ph431, i64 12
  br label %.thread365

bb.af:                                            ; preds = %bb.ad
  %i.gt = fadd float %.us-phi, %i.de
  br label %.outer

.thread365:                                       ; preds = %bb.ae, %bb.t, %bb.s, %bb.r
  %.4285 = phi ptr [ %.0281.ph430, %bb.r ], [ %i.gq, %bb.ae ], [ %.0281.ph430, %bb.t ], [ %.0281.ph430, %bb.s ]
  %.4276 = phi ptr [ %.0272.ph431, %bb.r ], [ %i.gs, %bb.ae ], [ %.0272.ph431, %bb.t ], [ %.0272.ph431, %bb.s ]
  %.4 = phi i32 [ %.0270.ph432, %bb.r ], [ %i.gr, %bb.ae ], [ %.0270.ph432, %bb.t ], [ %.0270.ph432, %bb.s ]
  %i.gu = fadd float %.us-phi, %i.de
  br label %.outer

.thread373:                                       ; preds = %bb.k, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  br label %.loopexit

.outer:                                           ; preds = %bb.n, %bb.af, %_ZNK6ImFont9FindGlyphEt.exit, %.thread365, %bb.m
  %.7320 = phi float [ %i.e, %bb.n ], [ %i.gt, %bb.af ], [ %.us-phi, %bb.m ], [ %.us-phi, %_ZNK6ImFont9FindGlyphEt.exit ], [ %i.gu, %.thread365 ]
  %.3312 = phi float [ %i.cm, %bb.n ], [ %.us-phi420, %bb.af ], [ %.us-phi420, %bb.m ], [ %.us-phi420, %_ZNK6ImFont9FindGlyphEt.exit ], [ %.us-phi420, %.thread365 ]
  %.7288 = phi ptr [ %.0281.ph430, %bb.n ], [ %.0281.ph430, %bb.af ], [ %.0281.ph430, %bb.m ], [ %.0281.ph430, %_ZNK6ImFont9FindGlyphEt.exit ], [ %.4285, %.thread365 ] ; 2 uses
  %.7279 = phi ptr [ %.0272.ph431, %bb.n ], [ %.0272.ph431, %bb.af ], [ %.0272.ph431, %bb.m ], [ %.0272.ph431, %_ZNK6ImFont9FindGlyphEt.exit ], [ %.4276, %.thread365 ] ; 2 uses
  %.7 = phi i32 [ %.0270.ph432, %bb.n ], [ %.0270.ph432, %bb.af ], [ %.0270.ph432, %bb.m ], [ %.0270.ph432, %_ZNK6ImFont9FindGlyphEt.exit ], [ %.4, %.thread365 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.gv = icmp ult ptr %.6298, %.1322
  br i1 %i.gv, label %.lr.ph413, label %.loopexit

.loopexit:                                        ; preds = %.outer, %.backedge.us, %bb.f, %.thread373
  %.0281.ph395 = phi ptr [ %.0281.ph430, %.thread373 ], [ %.0281.ph430, %.backedge.us ], [ %i.be, %bb.f ], [ %.7288, %.outer ] ; 2 uses
  %.0272.ph393 = phi ptr [ %.0272.ph431, %.thread373 ], [ %.0272.ph431, %.backedge.us ], [ %i.bg, %bb.f ], [ %.7279, %.outer ] ; 2 uses
  %.0270.ph391 = phi i32 [ %.0270.ph432, %.thread373 ], [ %.0270.ph432, %.backedge.us ], [ %i.bi, %bb.f ], [ %.7, %.outer ]
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !85
  %i.gz = ptrtoint ptr %.0281.ph395 to i64
  %i.ha = ptrtoint ptr %i.gy to i64
  %i.hb = sub i64 %i.gz, %i.ha
  %i.hc = sdiv exact i64 %i.hb, 20
  %i.hd = trunc i64 %i.hc to i32
  store i32 %i.hd, ptr %i.gw, align 8, !tbaa !84
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !87
  %i.hg = ptrtoint ptr %.0272.ph393 to i64
  %i.hh = ptrtoint ptr %i.hf to i64
  %i.hi = sub i64 %i.hg, %i.hh
  %i.hj = lshr exact i64 %i.hi, 1
  %i.hk = trunc i64 %i.hj to i32                  ; 2 uses
  store i32 %i.hk, ptr %i.bb, align 8, !tbaa !76
  %i.hl = add i32 %i.bc, %i.ba
  %.neg = sub i32 %i.hk, %i.hl
  %i.hm = load i32, ptr %1, align 8, !tbaa !77
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !31
  %i.hp = sext i32 %i.hm to i64
  %i.hq = getelementptr [56 x i8], ptr %i.ho, i64 %i.hp
  %i.hr = getelementptr i8, ptr %i.hq, i64 -24    ; 2 uses
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !80
  %i.ht = add i32 %.neg, %i.hs
  store i32 %i.ht, ptr %i.hr, align 8, !tbaa !80
  store ptr %.0281.ph395, ptr %i.bd, align 8, !tbaa !86
  store ptr %.0272.ph393, ptr %i.bf, align 8, !tbaa !88
  store i32 %.0270.ph391, ptr %i.bh, align 4, !tbaa !57
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit, %.loopexit384, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(196) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %struct.ImVec4, align 4             ; 4 uses
  %i.a = icmp ult i32 %2, 16777216
  br i1 %i.a, label %_ZN10ImDrawList7AddTextEPK6ImFontfRK6ImVec2jPKcS7_fPK6ImVec4.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %4, null
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #41
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 %i.c
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.022.i = phi ptr [ %i.d, %bb.c ], [ %4, %bb.b ] ; 2 uses
  %i.e = icmp eq ptr %3, %.022.i
  br i1 %i.e, label %_ZN10ImDrawList7AddTextEPK6ImFontfRK6ImVec2jPKcS7_fPK6ImVec4.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !55   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !101
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = load float, ptr %i.j, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false), !tbaa.struct !16
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %1, align 4
  call void @_ZNK6ImFont10RenderTextEP10ImDrawListf6ImVec2jRK6ImVec4PKcS7_fb(ptr noundef nonnull align 8 dereferenceable(110) %i.i, ptr noundef nonnull align 8 dereferenceable(196) %0, float noundef %i.k, <2 x float> %.sroa.0.0.copyload.i, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef %3, ptr noundef nonnull %.022.i, float noundef 0.000000e+00, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  br label %_ZN10ImDrawList7AddTextEPK6ImFontfRK6ImVec2jPKcS7_fPK6ImVec4.exit

_ZN10ImDrawList7AddTextEPK6ImFontfRK6ImVec2jPKcS7_fPK6ImVec4.exit: ; preds = %bb.a, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10ImDrawList8AddImageEPvRK6ImVec2S3_S3_S3_j(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(196) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %5, i32 noundef %6) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = icmp ult i32 %6, 16777216
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !74
  %.not = icmp eq ptr %1, %i.c
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 7 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !63   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !61
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %bb.d, label %._ZN8ImVectorIPvE7reserveEi.exit_crit_edge.i.i

._ZN8ImVectorIPvE7reserveEi.exit_crit_edge.i.i:   ; preds = %bb.c
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !62
  br label %_ZN10ImDrawList13PushTextureIDEPv.exit

bb.d:                                             ; preds = %bb.c
  %i.i = add nsw i32 %i.e, 1
  %.not.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i, label %_ZNK8ImVectorIPvE14_grow_capacityEi.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = sdiv i32 %i.e, 2
  %i.k = add nsw i32 %i.j, %i.e
  br label %_ZNK8ImVectorIPvE14_grow_capacityEi.exit.i.i

_ZNK8ImVectorIPvE14_grow_capacityEi.exit.i.i:     ; preds = %bb.e, %bb.d
  %i.l = phi i32 [ %i.k, %bb.e ], [ 8, %bb.d ]
  %i.m = tail call noundef i32 @llvm.smax.i32(i32 %i.l, i32 %i.i) ; 2 uses
  %i.n = sext i32 %i.m to i64
  %i.o = shl nsw i64 %i.n, 3
  %i.p = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.o) ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !62   ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not6.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK8ImVectorIPvE14_grow_capacityEi.exit.i.i
  %i.s = load i32, ptr %i.d, align 8, !tbaa !63
  %i.t = sext i32 %i.s to i64
  %i.u = shl nsw i64 %i.t, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.p, ptr nonnull align 8 %i.r, i64 %i.u, i1 false)
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !62
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.v)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK8ImVectorIPvE14_grow_capacityEi.exit.i.i
  store ptr %i.p, ptr %i.q, align 8, !tbaa !62
  store i32 %i.m, ptr %i.f, align 4, !tbaa !61
  %.pre3.i.i = load i32, ptr %i.d, align 8, !tbaa !63
  br label %_ZN10ImDrawList13PushTextureIDEPv.exit

_ZN10ImDrawList13PushTextureIDEPv.exit:           ; preds = %._ZN8ImVectorIPvE7reserveEi.exit_crit_edge.i.i, %bb.g
  %i.w = phi i32 [ %i.e, %._ZN8ImVectorIPvE7reserveEi.exit_crit_edge.i.i ], [ %.pre3.i.i, %bb.g ]
  %i.x = phi ptr [ %.pre.i.i, %._ZN8ImVectorIPvE7reserveEi.exit_crit_edge.i.i ], [ %i.p, %bb.g ]
  %i.y = sext i32 %i.w to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.y
  %i.aa = ptrtoint ptr %1 to i64
  store i64 %i.aa, ptr %i.z, align 8
  %i.ab = load i32, ptr %i.d, align 8, !tbaa !63
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %i.d, align 8, !tbaa !63
  store ptr %1, ptr %i.b, align 8, !tbaa !74
  tail call void @_ZN10ImDrawList19_OnChangedTextureIDEv(ptr noundef nonnull align 8 dereferenceable(196) %0)
  tail call void @_ZN10ImDrawList11PrimReserveEii(ptr noundef nonnull align 8 dereferenceable(196) %0, i32 noundef 6, i32 noundef 4)
  %i.ad = load i32, ptr %3, align 4, !tbaa !89
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !90
  %i.ag = load i32, ptr %2, align 4, !tbaa !89
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !90
  %i.aj = load i32, ptr %5, align 4, !tbaa !89
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !90
  %i.am = load i32, ptr %4, align 4, !tbaa !89
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !90
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !57
  %i.ar = trunc i32 %i.aq to i16                  ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !88 ; 6 uses
  store i16 %i.ar, ptr %i.at, align 2, !tbaa !92
  %i.au = add i16 %i.ar, 1
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  store i16 %i.au, ptr %i.av, align 2, !tbaa !92
  %i.aw = add i16 %i.ar, 2                        ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store i16 %i.aw, ptr %i.ax, align 2, !tbaa !92
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 6
  store i16 %i.ar, ptr %i.ay, align 2, !tbaa !92
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i16 %i.aw, ptr %i.az, align 2, !tbaa !92
  %i.ba = add i16 %i.ar, 3
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 10
  store i16 %i.ba, ptr %i.bb, align 2, !tbaa !92
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 11 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !86
  %i.be = load i64, ptr %2, align 4
  store i64 %i.be, ptr %i.bd, align 4
  %i.bf = load ptr, ptr %i.bc, align 8, !tbaa !86
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load i64, ptr %4, align 4
  store i64 %i.bh, ptr %i.bg, align 4
  %i.bi = load ptr, ptr %i.bc, align 8, !tbaa !86 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store i32 %6, ptr %i.bj, align 4, !tbaa !94
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 20
  store i32 %i.ad, ptr %i.bk, align 4
  %.sroa_idx29.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  store i32 %i.af, ptr %.sroa_idx29.i, align 4
  %i.bl = load ptr, ptr %i.bc, align 8, !tbaa !86 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 28
  store i32 %i.aj, ptr %i.bm, align 4
end_hunk_0
