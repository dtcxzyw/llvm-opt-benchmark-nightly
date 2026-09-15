Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/qcustomplot?download=true
inline.NumInlined: 26883
inline.NumDeleted: 6472
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 106
begin_hunk_0_@_ZN19QCPPolarAxisAngular11removeGraphEP13QCPPolarGraph:bb.a
  br label %_ZN5QListIP13QCPPolarGraphE9removeOneIS1_EEbRKT_.exit

bb.o:                                             ; preds = %bb.n, %_ZN6QDebuglsEPKc.exit18, %bb.k, %_ZN6QDebuglsEPKc.exit, %bb.f, %_ZNK23QListSpecialMethodsBaseIP13QCPPolarGraphE8containsIS1_EEbRKT_.exit.thread
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.o, %_ZN7QStringD2Ev.exit5.i9, %_ZN7QStringD2Ev.exit5.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %_ZN7QStringD2Ev.exit5.i ], [ %i.ba, %bb.o ], [ %i.ao, %_ZN7QStringD2Ev.exit5.i9 ]
  call void @_ZN6QDebugD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %4) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  resume { ptr, i32 } %eh.lpad-body

bb.p:                                             ; preds = %_ZNK23QListSpecialMethodsBaseIP13QCPPolarGraphE8containsIS1_EEbRKT_.exit
  %i.bb = getelementptr i8, ptr %1, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.bc, null
  br i1 %.not.i, label %_ZNK13QCPPolarGraph16removeFromLegendEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bd = getelementptr i8, ptr %i.bc, i64 72
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %.not4.i = icmp eq ptr %i.be, null
  br i1 %.not4.i, label %_ZNK13QCPPolarGraph16removeFromLegendEv.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bf = tail call noundef zeroext i1 @_ZNK13QCPPolarGraph16removeFromLegendEP9QCPLegend(ptr noundef readonly align 8 dereferenceable_or_null(280) %1, ptr noundef nonnull %i.be) ; 0 uses
  br label %_ZNK13QCPPolarGraph16removeFromLegendEv.exit

_ZNK13QCPPolarGraph16removeFromLegendEv.exit:     ; preds = %bb.p, %bb.q, %bb.r
  %i.bg = icmp eq ptr %1, null
  br i1 %i.bg, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNK13QCPPolarGraph16removeFromLegendEv.exit
  %i.bh = load ptr, ptr %1, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8
  tail call void %i.bj(ptr noundef nonnull align 8 dereferenceable_or_null(280) %1) #51
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNK13QCPPolarGraph16removeFromLegendEv.exit
  %i.bk = load ptr, ptr %i.e, align 8             ; 4 uses
  %i.bl = load i64, ptr %i.b, align 8
  %.idx11.i.i = shl i64 %i.bl, 3                  ; 5 uses
  %i.bm = getelementptr i8, ptr %i.bk, i64 %.idx11.i.i ; 2 uses
  %i.bn = ashr i64 %.idx11.i.i, 5                 ; 2 uses
  %i.bo = icmp sgt i64 %i.bn, 0
  br i1 %i.bo, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.t
  %i.bp = and i64 %.idx11.i.i, -32
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.bk, i64 %i.bp
  br label %bb.u

bb.u:                                             ; preds = %bb.y, %.lr.ph.i.i.i.i.i
  %.052.i.i.i.i.i = phi i64 [ %i.bn, %.lr.ph.i.i.i.i.i ], [ %i.cc, %bb.y ] ; 2 uses
  %.sroa.034.051.i.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i ], [ %i.cb, %bb.y ] ; 9 uses
  %i.bq = load ptr, ptr %.sroa.034.051.i.i.i.i.i, align 8
  %i.br = icmp eq ptr %i.bq, %1
  br i1 %i.br, label %_ZSt4findIN5QListIP13QCPPolarGraphE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bs = getelementptr i8, ptr %.sroa.034.051.i.i.i.i.i, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = icmp eq ptr %i.bt, %1
  br i1 %i.bu, label %_ZSt4findIN5QListIP13QCPPolarGraphE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i.loopexit.split.loop.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bv = getelementptr i8, ptr %.sroa.034.051.i.i.i.i.i, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = icmp eq ptr %i.bw, %1
  br i1 %i.bx, label %_ZSt4findIN5QListIP13QCPPolarGraphE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i.loopexit.split.loop.exit54, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.by = getelementptr i8, ptr %.sroa.034.051.i.i.i.i.i, i64 24
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = icmp eq ptr %i.bz, %1
  br i1 %i.ca, label %_ZSt4findIN5QListIP13QCPPolarGraphE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i.loopexit.split.loop.exit56, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cb = getelementptr i8, ptr %.sroa.034.051.i.i.i.i.i, i64 32
  %i.cc = add nsw i64 %.052.i.i.i.i.i, -1
  %i.cd = icmp sgt i64 %.052.i.i.i.i.i, 1
  br i1 %i.cd, label %bb.u, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !1561

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.y
  %gepdiff.i.i = and i64 %.idx11.i.i, 24
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %bb.t
  %.pre-phi61.i.i.i.i.i = phi i64 [ %gepdiff.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %.idx11.i.i, %bb.t ]
  %.sroa.034.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.bk, %bb.t ] ; 5 uses
  %i.ce = ashr exact i64 %.pre-phi61.i.i.i.i.i, 3
  switch i64 %i.ce, label %_ZN5QListIP13QCPPolarGraphE9removeOneIS1_EEbRKT_.exit [
    i64 3, label %bb.z
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i.i.i
  ]

bb.z:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.cf = load ptr, ptr %.sroa.034.0.lcssa.i.i.i.i.i, align 8
  %i.cg = icmp eq ptr %i.cf, %1
  br i1 %i.cg, label %_ZSt4findIN5QListIP13QCPPolarGraphE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ch = getelementptr i8, ptr %.sroa.034.0.lcssa.i.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i.i

._crit_edge._crit_edge.i.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i.i, %bb.aa
  %.sroa.034.1.i.i.i.i.i = phi ptr [ %i.ch, %bb.aa ], [ %.sroa.034.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.ci = load ptr, ptr %.sroa.034.1.i.i.i.i.i, align 8
  %i.cj = icmp eq ptr %i.ci, %1
  br i1 %i.cj, label %_ZSt4findIN5QListIP13QCPPolarGraphE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i.i
  %i.ck = getelementptr i8, ptr %.sroa.034.1.i.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge57.i.i.i.i.i

._crit_edge._crit_edge57.i.i.i.i.i:               ; preds = %._crit_edge.i.i.i.i.i, %bb.ab
  %.sroa.034.2.i.i.i.i.i = phi ptr [ %i.ck, %bb.ab ], [ %.sroa.034.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.cl = load ptr, ptr %.sroa.034.2.i.i.i.i.i, align 8
  %i.cm = icmp eq ptr %i.cl, %1
  %spec.select.i.i.i.i.i = select i1 %i.cm, ptr %.sroa.034.2.i.i.i.i.i, ptr %i.bm
  br label %_ZSt4findIN5QListIP13QCPPolarGraphE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i

_ZSt4findIN5QListIP13QCPPolarGraphE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i.loopexit.split.loop.exit: ; preds = %bb.v
  %i.cn = getelementptr i8, ptr %.sroa.034.051.i.i.i.i.i, i64 8
  br label %_ZSt4findIN5QListIP13QCPPolarGraphE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i

_ZSt4findIN5QListIP13QCPPolarGraphE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i.loopexit.split.loop.exit54: ; preds = %bb.w
  %i.co = getelementptr i8, ptr %.sroa.034.051.i.i.i.i.i, i64 16
  br label %_ZSt4findIN5QListIP13QCPPolarGraphE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i

_ZSt4findIN5QListIP13QCPPolarGraphE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i.loopexit.split.loop.exit56: ; preds = %bb.x
  %i.cp = getelementptr i8, ptr %.sroa.034.051.i.i.i.i.i, i64 24
  br label %_ZSt4findIN5QListIP13QCPPolarGraphE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i

_ZSt4findIN5QListIP13QCPPolarGraphE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i: ; preds = %bb.u, %_ZSt4findIN5QListIP13QCPPolarGraphE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i.loopexit.split.loop.exit, %_ZSt4findIN5QListIP13QCPPolarGraphE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i.loopexit.split.loop.exit54, %_ZSt4findIN5QListIP13QCPPolarGraphE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i.loopexit.split.loop.exit56, %._crit_edge._crit_edge57.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i, %bb.z
  %.sroa.010.0.in.sroa.speculated.i.i.i.i.i = phi ptr [ %.sroa.034.1.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i ], [ %spec.select.i.i.i.i.i, %._crit_edge._crit_edge57.i.i.i.i.i ], [ %.sroa.034.0.lcssa.i.i.i.i.i, %bb.z ], [ %i.cp, %_ZSt4findIN5QListIP13QCPPolarGraphE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i.loopexit.split.loop.exit56 ], [ %i.co, %_ZSt4findIN5QListIP13QCPPolarGraphE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i.loopexit.split.loop.exit54 ], [ %i.cn, %_ZSt4findIN5QListIP13QCPPolarGraphE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i.loopexit.split.loop.exit ], [ %.sroa.034.051.i.i.i.i.i, %bb.u ] ; 3 uses
  %i.cq = icmp eq ptr %.sroa.010.0.in.sroa.speculated.i.i.i.i.i, %i.bm
  br i1 %i.cq, label %_ZN5QListIP13QCPPolarGraphE9removeOneIS1_EEbRKT_.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZSt4findIN5QListIP13QCPPolarGraphE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i
  %i.cr = getelementptr i8, ptr %.sroa.010.0.in.sroa.speculated.i.i.i.i.i, i64 8
  %i.cs = tail call ptr @_ZN5QListIP13QCPPolarGraphE5eraseENS2_14const_iteratorES3_(ptr noundef align 8 dereferenceable(24) dereferenceable_or_null(24) %i.a, ptr %.sroa.010.0.in.sroa.speculated.i.i.i.i.i, ptr %i.cr) ; 0 uses
  br label %_ZN5QListIP13QCPPolarGraphE9removeOneIS1_EEbRKT_.exit

_ZN5QListIP13QCPPolarGraphE9removeOneIS1_EEbRKT_.exit: ; preds = %bb.ac, %_ZSt4findIN5QListIP13QCPPolarGraphE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i, %._crit_edge.i.i.i.i.i, %_ZN6QDebuglsEy.exit
  %.1.i.i.i27 = phi i1 [ false, %_ZN6QDebuglsEy.exit ], [ true, %._crit_edge.i.i.i.i.i ], [ true, %_ZSt4findIN5QListIP13QCPPolarGraphE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i ], [ true, %bb.ac ]
  ret i1 %.1.i.i.i27
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define noundef zeroext i1 @_ZNK13QCPPolarGraph16removeFromLegendEv(ptr nofree noundef readonly align 8 captures(address) dereferenceable_or_null(280) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not4 = icmp eq ptr %i.d, null
  br i1 %.not4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef zeroext i1 @_ZNK13QCPPolarGraph16removeFromLegendEP9QCPLegend(ptr noundef align 8 dereferenceable_or_null(280) %0, ptr noundef nonnull %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ %i.e, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZNK19QCPPolarAxisAngular28applyDefaultAntialiasingHintEP10QCPPainter(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(1080) %0, ptr noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56
  %i.b = load i8, ptr %i.a, align 8, !range !175, !noundef !176
  %i.c = trunc nuw i8 %i.b to i1
  tail call void @_ZNK12QCPLayerable21applyAntialiasingHintEP10QCPPainterbN3QCP18AntialiasedElementE(ptr noundef align 8 dereferenceable_or_null(57) %0, ptr noundef %1, i1 noundef zeroext %i.c, i32 noundef 1)
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN19QCPPolarAxisAngular4drawEP10QCPPainter(ptr noundef align 8 dereferenceable_or_null(1080) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.QLine, align 16              ; 4 uses
  %3 = alloca %class.QLineF, align 16             ; 5 uses
  %4 = alloca %class.QLine, align 16              ; 4 uses
  %5 = alloca %class.QLineF, align 8              ; 6 uses
  %6 = alloca %class.QRectF, align 16             ; 6 uses
  %7 = alloca %class.QPen, align 8                ; 7 uses
  %8 = alloca %class.QPen, align 8                ; 7 uses
  %9 = alloca %class.QFont, align 8               ; 8 uses
  %10 = alloca %class.QPen, align 8               ; 7 uses
  %11 = alloca %class.QPointF, align 16           ; 6 uses
  %i.a = getelementptr i8, ptr %0, i64 552        ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 568        ; 3 uses
  %i.c = load double, ptr %i.b, align 8
  tail call void @_ZN19QCPPolarAxisAngular14drawBackgroundEP10QCPPainterRK7QPointFd(ptr noundef align 8 dereferenceable_or_null(1080) %0, ptr noundef %1, ptr noundef align 8 dereferenceable(16) %i.a, double noundef %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #51
  %i.d = getelementptr i8, ptr %0, i64 276        ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !noalias !1570
  %i.f = and i32 %i.e, 1
  %.not.i = icmp eq i32 %i.f, 0
  %.v.i = select i1 %.not.i, i64 280, i64 288
  %i.g = getelementptr i8, ptr %0, i64 %.v.i
  call void @_ZN4QPenC1ERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(8) %7, ptr noundef align 8 dereferenceable(8) %i.g) #51
  invoke void @_ZN8QPainter6setPenERK4QPen(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.a
  %i.h = getelementptr i8, ptr %1, i64 8          ; 5 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = and i32 %i.i, 4
  %.not.i31 = icmp eq i32 %i.j, 0
  br i1 %.not.i31, label %_ZN10QCPPainter6setPenERK4QPen.exit, label %bb.b

bb.b:                                             ; preds = %.noexc
  invoke void @_ZN10QCPPainter15makeNonCosmeticEv(ptr noundef align 8 dereferenceable_or_null(40) %1)
          to label %_ZN10QCPPainter6setPenERK4QPen.exit unwind label %bb.e

_ZN10QCPPainter6setPenERK4QPen.exit:              ; preds = %.noexc, %bb.b
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %7) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #51
  %i.k = load double, ptr %i.b, align 8           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #51
  %i.l = fmul double %i.k, 2.000000e+00           ; 2 uses
  %i.m = load <2 x double>, ptr %i.a, align 8
  %i.n = insertelement <2 x double> poison, double %i.k, i64 0
  %i.o = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> zeroinitializer
  %i.p = fsub <2 x double> %i.m, %i.o
  store <2 x double> %i.p, ptr %6, align 16
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16
  store double %i.l, ptr %i.q, align 16
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 24
  store double %i.l, ptr %i.r, align 8
  call void @_ZN8QPainter11drawEllipseERK6QRectF(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #51
  %i.s = getelementptr i8, ptr %0, i64 736        ; 3 uses
  %i.t = load i64, ptr %i.s, align 8
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %_ZN10QCPPainter6setPenERK4QPen.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #51
  %i.v = load i32, ptr %i.d, align 4, !noalias !1571
  %i.w = and i32 %i.v, 1
  %.not.i33 = icmp eq i32 %i.w, 0
  %.v.i34 = select i1 %.not.i33, i64 512, i64 520
  %i.x = getelementptr i8, ptr %0, i64 %.v.i34
  call void @_ZN4QPenC1ERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(8) %8, ptr noundef align 8 dereferenceable(8) %i.x) #51
  invoke void @_ZN8QPainter6setPenERK4QPen(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %.noexc36 unwind label %bb.f

.noexc36:                                         ; preds = %bb.c
  %i.y = load i32, ptr %i.h, align 4
  %i.z = and i32 %i.y, 4
  %.not.i35 = icmp eq i32 %i.z, 0
  br i1 %.not.i35, label %_ZN10QCPPainter6setPenERK4QPen.exit38, label %bb.d

bb.d:                                             ; preds = %.noexc36
  invoke void @_ZN10QCPPainter15makeNonCosmeticEv(ptr noundef align 8 dereferenceable_or_null(40) %1)
          to label %_ZN10QCPPainter6setPenERK4QPen.exit38 unwind label %bb.f

_ZN10QCPPainter6setPenERK4QPen.exit38:            ; preds = %.noexc36, %bb.d
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %8) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #51
  %i.aa = load i64, ptr %i.s, align 8
  %i.ab = icmp sgt i64 %i.aa, 0
  br i1 %i.ab, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN10QCPPainter6setPenERK4QPen.exit38
  %i.ac = getelementptr i8, ptr %0, i64 752
  %i.ad = getelementptr i8, ptr %0, i64 484
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ae = getelementptr i8, ptr %1, i64 12
  br label %bb.g

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %7) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #51
  br label %bb.ae

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %8) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #51
  br label %bb.ae

bb.g:                                             ; preds = %.lr.ph, %_ZN10QCPPainter8drawLineERK7QPointFS2_.exit
  %i.ah = phi i64 [ 0, %.lr.ph ], [ %i.bn, %_ZN10QCPPainter8drawLineERK7QPointFS2_.exit ]
  %.02598 = phi i32 [ 0, %.lr.ph ], [ %i.bm, %_ZN10QCPPainter8drawLineERK7QPointFS2_.exit ]
  %i.ai = load ptr, ptr %i.ac, align 8
  %i.aj = getelementptr [16 x i8], ptr %i.ai, i64 %i.ah
  %12 = load <2 x double>, ptr %i.aj, align 8     ; 2 uses
  %13 = load <3 x double>, ptr %i.a, align 8      ; 3 uses
  %i.ak = load <2 x i32>, ptr %i.ad, align 4
  %i.al = sitofp <2 x i32> %i.ak to <2 x double>  ; 2 uses
  %14 = shufflevector <3 x double> %13, <3 x double> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.am = fsub <2 x double> %14, %i.al
  %i.an = fadd <2 x double> %14, %i.al
  %i.ao = shufflevector <2 x double> %i.am, <2 x double> %i.an, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ap = shufflevector <2 x double> %12, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aq = fmul <2 x double> %i.ap, %i.ao
  %15 = shufflevector <2 x double> %12, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ar = fmul <2 x double> %i.ao, %15
  %i.as = shufflevector <3 x double> %13, <3 x double> poison, <2 x i32> zeroinitializer
  %i.at = fadd <2 x double> %i.as, %i.aq          ; 4 uses
  %16 = shufflevector <3 x double> %13, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.au = fadd <2 x double> %i.ar, %16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #51
  %i.av = extractelement <2 x double> %i.at, i64 0
  store double %i.av, ptr %5, align 8
  %i.aw = shufflevector <2 x double> %i.au, <2 x double> %i.at, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.aw, ptr %.sroa.497.0..sroa_idx, align 8
  %i.ax = extractelement <2 x double> %i.au, i64 1
  store double %i.ax, ptr %.sroa.493.0..sroa_idx, align 8
  %i.ay = load i8, ptr %i.ae, align 4, !range !175, !noundef !176
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = load i32, ptr %i.h, align 4
  %i.bb = and i32 %i.ba, 1
  %.not.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK7QPointFS2_.exit

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #51
  %i.bc = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.at)
  %i.bd = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.au)
  %i.be = fadd <2 x double> %i.at, %i.bc
  %i.bf = fptosi <2 x double> %i.be to <2 x i32>
  %i.bg = fadd <2 x double> %i.au, %i.bd
  %i.bh = fptosi <2 x double> %i.bg to <2 x i32>
  %i.bi = zext <2 x i32> %i.bh to <2 x i64>
  %i.bj = shl nuw <2 x i64> %i.bi, splat (i64 32)
  %i.bk = zext <2 x i32> %i.bf to <2 x i64>
  %i.bl = or disjoint <2 x i64> %i.bj, %i.bk
  store <2 x i64> %i.bl, ptr %4, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  br label %_ZN10QCPPainter8drawLineERK7QPointFS2_.exit

_ZN10QCPPainter8drawLineERK7QPointFS2_.exit:      ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  %i.bm = add i32 %.02598, 1                      ; 2 uses
  %i.bn = sext i32 %i.bm to i64                   ; 2 uses
  %i.bo = load i64, ptr %i.s, align 8
  %i.bp = icmp sgt i64 %i.bo, %i.bn
  br i1 %i.bp, label %bb.g, label %.loopexit, !llvm.loop !1566

.loopexit:                                        ; preds = %_ZN10QCPPainter8drawLineERK7QPointFS2_.exit, %_ZN10QCPPainter6setPenERK4QPen.exit38, %_ZN10QCPPainter6setPenERK4QPen.exit
  %i.bq = getelementptr i8, ptr %0, i64 664       ; 3 uses
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %bb.ad, label %bb.k

bb.k:                                             ; preds = %.loopexit
  %i.bt = getelementptr i8, ptr %0, i64 824       ; 2 uses
  %i.bu = getelementptr i8, ptr %0, i64 840
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.bu, ptr noundef readonly align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #51
  %i.bv = load i32, ptr %i.d, align 4, !noalias !1572
  %i.bw = and i32 %i.bv, 2
  %.not.i45 = icmp eq i32 %i.bw, 0
  %.v.i46 = select i1 %.not.i45, i64 400, i64 416
  %i.bx = getelementptr i8, ptr %0, i64 %.v.i46
  call void @_ZN5QFontC1ERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(12) %9, ptr noundef align 8 dereferenceable(12) %i.bx)
  %i.by = getelementptr i8, ptr %0, i64 864       ; 2 uses
  %i.bz = invoke noundef zeroext i1 @_ZNK5QFontneERKS_(ptr noundef align 8 dereferenceable_or_null(12) %i.by, ptr noundef nonnull align 8 dereferenceable(12) %9)
          to label %.noexc47 unwind label %bb.n

.noexc47:                                         ; preds = %bb.k
  br i1 %i.bz, label %bb.l, label %_ZN22QCPLabelPainterPrivate7setFontERK5QFont.exit

bb.l:                                             ; preds = %.noexc47
  %i.ca = invoke noundef align 8 dereferenceable(12) ptr @_ZN5QFontaSERKS_(ptr noundef align 8 dereferenceable_or_null(12) %i.by, ptr noundef nonnull align 8 dereferenceable(12) %9)
          to label %.noexc48 unwind label %bb.n   ; 0 uses

.noexc48:                                         ; preds = %bb.l
  invoke void @_ZN22QCPLabelPainterPrivate18analyzeFontMetricsEv(ptr noundef align 8 dereferenceable_or_null(256) %i.bt)
          to label %_ZN22QCPLabelPainterPrivate7setFontERK5QFont.exit unwind label %bb.n

_ZN22QCPLabelPainterPrivate7setFontERK5QFont.exit: ; preds = %.noexc47, %.noexc48
  call void @_ZN5QFontD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable_or_null(12) %9) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #51
  %i.cb = load i32, ptr %i.d, align 4             ; 2 uses
  %i.cc = and i32 %i.cb, 2
  %.not.i50 = icmp eq i32 %i.cc, 0
  %.v.i51 = select i1 %.not.i50, i64 432, i64 448
  %i.cd = getelementptr i8, ptr %0, i64 %.v.i51   ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.cd, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8
  %.sroa.2.0.extract.trunc = trunc i64 %.sroa.2.0.copyload.i to i48
  %i.ce = getelementptr i8, ptr %0, i64 880
  store i64 %.sroa.0.0.copyload.i, ptr %i.ce, align 8
  %.sroa.488.0..sroa_idx = getelementptr i8, ptr %0, i64 888
  store i48 %.sroa.2.0.extract.trunc, ptr %.sroa.488.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #51
  %i.cf = and i32 %i.cb, 1
  %.not.i54 = icmp eq i32 %i.cf, 0
  %.v.i55 = select i1 %.not.i54, i64 496, i64 504
  %i.cg = getelementptr i8, ptr %0, i64 %.v.i55
  call void @_ZN4QPenC1ERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(8) %10, ptr noundef align 8 dereferenceable(8) %i.cg) #51
  invoke void @_ZN8QPainter6setPenERK4QPen(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %.noexc57 unwind label %bb.o

.noexc57:                                         ; preds = %_ZN22QCPLabelPainterPrivate7setFontERK5QFont.exit
  %i.ch = load i32, ptr %i.h, align 4
  %i.ci = and i32 %i.ch, 4
  %.not.i56 = icmp eq i32 %i.ci, 0
  br i1 %.not.i56, label %_ZN10QCPPainter6setPenERK4QPen.exit59, label %bb.m

bb.m:                                             ; preds = %.noexc57
  invoke void @_ZN10QCPPainter15makeNonCosmeticEv(ptr noundef align 8 dereferenceable_or_null(40) %1)
          to label %_ZN10QCPPainter6setPenERK4QPen.exit59 unwind label %bb.o

_ZN10QCPPainter6setPenERK4QPen.exit59:            ; preds = %bb.m, %.noexc57
  %i.cj = load i64, ptr %i.bq, align 8
  %i.ck = icmp sgt i64 %i.cj, 0
  br i1 %i.ck, label %.lr.ph100, label %._crit_edge

.lr.ph100:                                        ; preds = %_ZN10QCPPainter6setPenERK4QPen.exit59
  %i.cl = getelementptr i8, ptr %0, i64 696       ; 2 uses
  %i.cm = getelementptr i8, ptr %0, i64 704       ; 3 uses
  %i.cn = getelementptr i8, ptr %0, i64 476
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cp = getelementptr i8, ptr %1, i64 12
  %i.cq = getelementptr i8, ptr %0, i64 688
  %i.cr = getelementptr i8, ptr %0, i64 680
  br label %bb.p

._crit_edge:                                      ; preds = %bb.aa, %_ZN10QCPPainter6setPenERK4QPen.exit59
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %10) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #51
  br label %bb.ad

bb.n:                                             ; preds = %.noexc48, %bb.l, %bb.k
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5QFontD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable_or_null(12) %9) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #51
  br label %bb.ae

bb.o:                                             ; preds = %bb.m, %_ZN22QCPLabelPainterPrivate7setFontERK5QFont.exit
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.p:                                             ; preds = %.lr.ph100, %bb.aa
  %i.cu = phi i64 [ 0, %.lr.ph100 ], [ %i.fd, %bb.aa ] ; 4 uses
  %.099 = phi i32 [ 0, %.lr.ph100 ], [ %i.fc, %bb.aa ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #51
  %i.cv = load ptr, ptr %i.cm, align 8
  %i.cw = getelementptr [16 x i8], ptr %i.cv, i64 %i.cu
  %i.cx = load double, ptr %i.b, align 8          ; 2 uses
  %i.cy = load <2 x double>, ptr %i.cw, align 8   ; 2 uses
  %i.cz = load <2 x double>, ptr %i.a, align 8    ; 2 uses
  %i.da = load <2 x i32>, ptr %i.cn, align 4
  %i.db = sitofp <2 x i32> %i.da to <2 x double>  ; 2 uses
  %i.dc = extractelement <2 x double> %i.db, i64 1
  %i.dd = fadd double %i.cx, %i.dc
  %i.de = insertelement <2 x double> poison, double %i.dd, i64 0
  %i.df = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dg = fmul <2 x double> %i.cy, %i.df
  %i.dh = fadd <2 x double> %i.cz, %i.dg
  store <2 x double> %i.dh, ptr %11, align 16
  %i.di = extractelement <2 x double> %i.db, i64 0
  %i.dj = fsub double %i.cx, %i.di
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #51
  %i.dk = insertelement <2 x double> poison, double %i.dj, i64 0
  %i.dl = shufflevector <2 x double> %i.dk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dm = fmul <2 x double> %i.cy, %i.dl
  %i.dn = fadd <2 x double> %i.cz, %i.dm          ; 3 uses
  store <2 x double> %i.dn, ptr %3, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.co, ptr noundef nonnull align 16 dereferenceable(16) %11, i64 16, i1 false)
  %i.do = load i8, ptr %i.cp, align 4, !range !175, !noundef !176
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dq = load i32, ptr %i.h, align 4
  %i.dr = and i32 %i.dq, 1
  %.not.i.i68 = icmp eq i32 %i.dr, 0
  br i1 %.not.i.i68, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  invoke void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 1)
          to label %bb.t unwind label %bb.x

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #51
  %i.ds = load <2 x double>, ptr %i.co, align 16  ; 2 uses
  %i.dt = shufflevector <2 x double> %i.dn, <2 x double> %i.ds, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.du = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.dt)
  %i.dv = fadd <2 x double> %i.dt, %i.du
  %i.dw = fptosi <2 x double> %i.dv to <2 x i32>
  %i.dx = shufflevector <2 x double> %i.ds, <2 x double> %i.dn, <2 x i32> <i32 3, i32 1> ; 2 uses
  %i.dy = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.dx)
  %i.dz = fadd <2 x double> %i.dx, %i.dy
  %i.ea = fptosi <2 x double> %i.dz to <2 x i32>
  %i.eb = zext <2 x i32> %i.ea to <2 x i64>
  %i.ec = shl nuw <2 x i64> %i.eb, splat (i64 32)
  %i.ed = zext <2 x i32> %i.dw to <2 x i64>
end_hunk_0
