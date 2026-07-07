inline.NumInlined: 12422
inline.NumDeleted: 1708
loop-unroll.NumCompletelyUnrolled: 294
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 422
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@geopolyXformFunc:bb.a
  %i.z = tail call fastcc double @sqlite3MemRealValueRC(ptr noundef nonnull %i.p, ptr noundef null), !inline_history !854
  br label %sqlite3_value_double.exit41

sqlite3_value_double.exit41:                      ; preds = %bb.g, %bb.i, %bb.j, %bb.k
  %.0.i.i38 = phi double [ %i.u, %bb.g ], [ %i.x, %bb.i ], [ %i.z, %bb.k ], [ 0.000000e+00, %bb.j ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !288 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  %i.ad = load i16, ptr %i.ac, align 4, !tbaa !162
  %i.ae = zext i16 %i.ad to i32                   ; 3 uses
  %i.af = and i32 %i.ae, 8
  %.not.i.i42 = icmp eq i32 %i.af, 0
  br i1 %.not.i.i42, label %bb.m, label %bb.l

bb.l:                                             ; preds = %sqlite3_value_double.exit41
  %i.ag = load double, ptr %i.ab, align 8, !tbaa !227
  br label %sqlite3_value_double.exit46

bb.m:                                             ; preds = %sqlite3_value_double.exit41
  %i.ah = and i32 %i.ae, 36
  %.not7.i.i44 = icmp eq i32 %i.ah, 0
  br i1 %.not7.i.i44, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = load i64, ptr %i.ab, align 8, !tbaa !227
  %i.aj = sitofp i64 %i.ai to double
  br label %sqlite3_value_double.exit46

bb.o:                                             ; preds = %bb.m
  %i.ak = and i32 %i.ae, 18
  %.not8.i.i45 = icmp eq i32 %i.ak, 0
  br i1 %.not8.i.i45, label %sqlite3_value_double.exit46, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = tail call fastcc double @sqlite3MemRealValueRC(ptr noundef nonnull %i.ab, ptr noundef null), !inline_history !854
  br label %sqlite3_value_double.exit46

sqlite3_value_double.exit46:                      ; preds = %bb.l, %bb.n, %bb.o, %bb.p
  %.0.i.i43 = phi double [ %i.ag, %bb.l ], [ %i.aj, %bb.n ], [ %i.al, %bb.p ], [ 0.000000e+00, %bb.o ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !288 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 20
  %i.ap = load i16, ptr %i.ao, align 4, !tbaa !162
  %i.aq = zext i16 %i.ap to i32                   ; 3 uses
  %i.ar = and i32 %i.aq, 8
  %.not.i.i47 = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i47, label %bb.r, label %bb.q

bb.q:                                             ; preds = %sqlite3_value_double.exit46
  %i.as = load double, ptr %i.an, align 8, !tbaa !227
  br label %sqlite3_value_double.exit51

bb.r:                                             ; preds = %sqlite3_value_double.exit46
  %i.at = and i32 %i.aq, 36
  %.not7.i.i49 = icmp eq i32 %i.at, 0
  br i1 %.not7.i.i49, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.au = load i64, ptr %i.an, align 8, !tbaa !227
  %i.av = sitofp i64 %i.au to double
  br label %sqlite3_value_double.exit51

bb.t:                                             ; preds = %bb.r
  %i.aw = and i32 %i.aq, 18
  %.not8.i.i50 = icmp eq i32 %i.aw, 0
  br i1 %.not8.i.i50, label %sqlite3_value_double.exit51, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ax = tail call fastcc double @sqlite3MemRealValueRC(ptr noundef nonnull %i.an, ptr noundef null), !inline_history !854
  br label %sqlite3_value_double.exit51

sqlite3_value_double.exit51:                      ; preds = %bb.q, %bb.s, %bb.t, %bb.u
  %.0.i.i48 = phi double [ %i.as, %bb.q ], [ %i.av, %bb.s ], [ %i.ax, %bb.u ], [ 0.000000e+00, %bb.t ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !288 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 20
  %i.bb = load i16, ptr %i.ba, align 4, !tbaa !162
  %i.bc = zext i16 %i.bb to i32                   ; 3 uses
  %i.bd = and i32 %i.bc, 8
  %.not.i.i52 = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i52, label %bb.w, label %bb.v

bb.v:                                             ; preds = %sqlite3_value_double.exit51
  %i.be = load double, ptr %i.az, align 8, !tbaa !227
  br label %sqlite3_value_double.exit56

bb.w:                                             ; preds = %sqlite3_value_double.exit51
  %i.bf = and i32 %i.bc, 36
  %.not7.i.i54 = icmp eq i32 %i.bf, 0
  br i1 %.not7.i.i54, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bg = load i64, ptr %i.az, align 8, !tbaa !227
  %i.bh = sitofp i64 %i.bg to double
  br label %sqlite3_value_double.exit56

bb.y:                                             ; preds = %bb.w
  %i.bi = and i32 %i.bc, 18
  %.not8.i.i55 = icmp eq i32 %i.bi, 0
  br i1 %.not8.i.i55, label %sqlite3_value_double.exit56, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bj = tail call fastcc double @sqlite3MemRealValueRC(ptr noundef nonnull %i.az, ptr noundef null), !inline_history !854
  br label %sqlite3_value_double.exit56

sqlite3_value_double.exit56:                      ; preds = %bb.v, %bb.x, %bb.y, %bb.z
  %.0.i.i53 = phi double [ %i.be, %bb.v ], [ %i.bh, %bb.x ], [ %i.bj, %bb.z ], [ 0.000000e+00, %bb.y ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !288 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 20
  %i.bn = load i16, ptr %i.bm, align 4, !tbaa !162
  %i.bo = zext i16 %i.bn to i32                   ; 3 uses
  %i.bp = and i32 %i.bo, 8
  %.not.i.i57 = icmp eq i32 %i.bp, 0
  br i1 %.not.i.i57, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %sqlite3_value_double.exit56
  %i.bq = load double, ptr %i.bl, align 8, !tbaa !227
  br label %sqlite3_value_double.exit61

bb.ab:                                            ; preds = %sqlite3_value_double.exit56
  %i.br = and i32 %i.bo, 36
  %.not7.i.i59 = icmp eq i32 %i.br, 0
  br i1 %.not7.i.i59, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bs = load i64, ptr %i.bl, align 8, !tbaa !227
  %i.bt = sitofp i64 %i.bs to double
  br label %sqlite3_value_double.exit61

bb.ad:                                            ; preds = %bb.ab
  %i.bu = and i32 %i.bo, 18
  %.not8.i.i60 = icmp eq i32 %i.bu, 0
  br i1 %.not8.i.i60, label %sqlite3_value_double.exit61, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bv = tail call fastcc double @sqlite3MemRealValueRC(ptr noundef nonnull %i.bl, ptr noundef null), !inline_history !854
  br label %sqlite3_value_double.exit61

sqlite3_value_double.exit61:                      ; preds = %bb.aa, %bb.ac, %bb.ad, %bb.ae
  %.0.i.i58 = phi double [ %i.bq, %bb.aa ], [ %i.bt, %bb.ac ], [ %i.bv, %bb.ae ], [ 0.000000e+00, %bb.ad ] ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %sqlite3_free.exit, label %.preheader

.preheader:                                       ; preds = %sqlite3_value_double.exit61
  %i.bw = load i32, ptr %i.b, align 4, !tbaa !8105 ; 4 uses
  %i.bx = icmp sgt i32 %i.bw, 0
  br i1 %i.bx, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.bw to i64   ; 3 uses
  %min.iters.check = icmp eq i32 %i.bw, 1
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483646   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.0.i.i38, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert68 = insertelement <2 x double> poison, double %.0.i.i, i64 0
  %broadcast.splat69 = shufflevector <2 x double> %broadcast.splatinsert68, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert70 = insertelement <2 x double> poison, double %.0.i.i53, i64 0
  %broadcast.splat71 = shufflevector <2 x double> %broadcast.splatinsert70, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert72 = insertelement <2 x double> poison, double %.0.i.i48, i64 0
  %broadcast.splat73 = shufflevector <2 x double> %broadcast.splatinsert72, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert74 = insertelement <2 x double> poison, double %.0.i.i43, i64 0
  %broadcast.splat75 = shufflevector <2 x double> %broadcast.splatinsert74, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert76 = insertelement <2 x double> poison, double %.0.i.i58, i64 0
  %broadcast.splat77 = shufflevector <2 x double> %broadcast.splatinsert76, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bz = shl nuw nsw i64 %index, 3
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bz ; 2 uses
  %wide.vec = load <4 x float>, ptr %i.ca, align 4, !tbaa !8107 ; 2 uses
  %strided.vec = shufflevector <4 x float> %wide.vec, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec78 = shufflevector <4 x float> %wide.vec, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.cb = fpext <2 x float> %strided.vec to <2 x double> ; 2 uses
  %i.cc = fpext <2 x float> %strided.vec78 to <2 x double> ; 2 uses
  %i.cd = fmul <2 x double> %broadcast.splat, %i.cc
  %i.ce = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat69, <2 x double> %i.cb, <2 x double> %i.cd)
  %i.cf = fadd <2 x double> %broadcast.splat71, %i.ce
  %i.cg = fptrunc <2 x double> %i.cf to <2 x float>
  %i.ch = fmul <2 x double> %broadcast.splat73, %i.cc
  %i.ci = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat75, <2 x double> %i.cb, <2 x double> %i.ch)
  %i.cj = fadd <2 x double> %broadcast.splat77, %i.ci
  %i.ck = fptrunc <2 x double> %i.cj to <2 x float>
  %interleaved.vec = shufflevector <2 x float> %i.cg, <2 x float> %i.ck, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec, ptr %i.ca, align 4, !tbaa !8107
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !8113

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.cm = getelementptr inbounds nuw i8, ptr %i.by, i64 %.idx ; 3 uses
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !8107
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 4 ; 2 uses
  %i.cp = load float, ptr %i.co, align 4, !tbaa !8107
  %i.cq = fpext float %i.cn to double             ; 2 uses
  %i.cr = fpext float %i.cp to double             ; 2 uses
  %3 = fmul double %.0.i.i38, %i.cr
  %4 = tail call double @llvm.fmuladd.f64(double %.0.i.i, double %i.cq, double %3)
  %5 = fadd double %.0.i.i53, %4
  %6 = fptrunc double %5 to float
  %7 = fmul double %.0.i.i48, %i.cr
  %8 = tail call double @llvm.fmuladd.f64(double %.0.i.i43, double %i.cq, double %7)
  %9 = fadd double %.0.i.i58, %8
  %10 = fptrunc double %9 to float
  store float %6, ptr %i.cm, align 4, !tbaa !8107
  store float %10, ptr %i.co, align 4, !tbaa !8107
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !8114

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %.preheader
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ct = shl nsw i32 %i.bw, 3
  %i.cu = or disjoint i32 %i.ct, 4
  tail call fastcc void @setResultStrOrError(ptr noundef %0, ptr noundef nonnull %i.cs, i32 noundef %i.cu, i8 noundef zeroext 0, ptr noundef nonnull inttoptr (i64 -1 to ptr))
  %i.cv = load i32, ptr @sqlite3Config, align 8, !tbaa !175
  %.not.i = icmp eq i32 %i.cv, 0
  br i1 %.not.i, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %._crit_edge
  %i.cw = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i62 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i62, label %sqlite3_mutex_enter.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  tail call void %i.cx(ptr noundef nonnull %i.cw) #59, !inline_history !268
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.ag, %bb.af
  %i.cy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.cz = tail call i32 %i.cy(ptr noundef nonnull %i.b) #59, !inline_history !269
  %i.da = sext i32 %i.cz to i64
  %i.db = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.dc = sub nsw i64 %i.db, %i.da
  store i64 %i.dc, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.dd = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.de = add nsw i64 %i.dd, -1
  store i64 %i.de, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.df = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.df(ptr noundef nonnull %i.b) #59, !inline_history !270
  %i.dg = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.dg, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.ah

bb.ah:                                            ; preds = %sqlite3_mutex_enter.exit.i
  %i.dh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.dh(ptr noundef nonnull %i.dg) #59, !inline_history !271
  br label %sqlite3_free.exit

bb.ai:                                            ; preds = %._crit_edge
  %i.di = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.di(ptr noundef nonnull %i.b) #59, !inline_history !270
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %bb.ai, %bb.ah, %sqlite3_mutex_enter.exit.i, %sqlite3_value_double.exit61
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @geopolyRegularFunc(ptr nofree noundef captures(none) %0, i32 %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !288    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.c = load i16, ptr %i.b, align 4, !tbaa !162
  %i.d = zext i16 %i.c to i32                     ; 3 uses
  %i.e = and i32 %i.d, 8
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load double, ptr %i.a, align 8, !tbaa !227
  br label %sqlite3_value_double.exit

bb.c:                                             ; preds = %bb.a
  %i.g = and i32 %i.d, 36
  %.not7.i.i = icmp eq i32 %i.g, 0
  br i1 %.not7.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i64, ptr %i.a, align 8, !tbaa !227
  %i.i = sitofp i64 %i.h to double
  br label %sqlite3_value_double.exit

bb.e:                                             ; preds = %bb.c
  %i.j = and i32 %i.d, 18
  %.not8.i.i = icmp eq i32 %i.j, 0
  br i1 %.not8.i.i, label %sqlite3_value_double.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = tail call fastcc double @sqlite3MemRealValueRC(ptr noundef nonnull %i.a, ptr noundef null), !inline_history !854
  br label %sqlite3_value_double.exit

sqlite3_value_double.exit:                        ; preds = %bb.b, %bb.d, %bb.e, %bb.f
  %.0.i.i = phi double [ %i.f, %bb.b ], [ %i.i, %bb.d ], [ %i.k, %bb.f ], [ 0.000000e+00, %bb.e ]
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !288  ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %i.o = load i16, ptr %i.n, align 4, !tbaa !162
  %i.p = zext i16 %i.o to i32                     ; 3 uses
  %i.q = and i32 %i.p, 8
  %.not.i.i73 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i73, label %bb.h, label %bb.g

bb.g:                                             ; preds = %sqlite3_value_double.exit
  %i.r = load double, ptr %i.m, align 8, !tbaa !227
  br label %sqlite3_value_double.exit77

bb.h:                                             ; preds = %sqlite3_value_double.exit
  %i.s = and i32 %i.p, 36
  %.not7.i.i75 = icmp eq i32 %i.s, 0
  br i1 %.not7.i.i75, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = load i64, ptr %i.m, align 8, !tbaa !227
  %i.u = sitofp i64 %i.t to double
  br label %sqlite3_value_double.exit77

bb.j:                                             ; preds = %bb.h
  %i.v = and i32 %i.p, 18
  %.not8.i.i76 = icmp eq i32 %i.v, 0
  br i1 %.not8.i.i76, label %sqlite3_value_double.exit77, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = tail call fastcc double @sqlite3MemRealValueRC(ptr noundef nonnull %i.m, ptr noundef null), !inline_history !854
  br label %sqlite3_value_double.exit77

sqlite3_value_double.exit77:                      ; preds = %bb.g, %bb.i, %bb.j, %bb.k
  %.0.i.i74 = phi double [ %i.r, %bb.g ], [ %i.u, %bb.i ], [ %i.w, %bb.k ], [ 0.000000e+00, %bb.j ]
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !288  ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.aa = load i16, ptr %i.z, align 4, !tbaa !162
  %i.ab = zext i16 %i.aa to i32                   ; 3 uses
  %i.ac = and i32 %i.ab, 8
  %.not.i.i78 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i78, label %bb.m, label %bb.l

bb.l:                                             ; preds = %sqlite3_value_double.exit77
  %i.ad = load double, ptr %i.y, align 8, !tbaa !227
  br label %sqlite3_value_double.exit82

bb.m:                                             ; preds = %sqlite3_value_double.exit77
  %i.ae = and i32 %i.ab, 36
  %.not7.i.i80 = icmp eq i32 %i.ae, 0
  br i1 %.not7.i.i80, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.af = load i64, ptr %i.y, align 8, !tbaa !227
  %i.ag = sitofp i64 %i.af to double
  br label %sqlite3_value_double.exit82

bb.o:                                             ; preds = %bb.m
  %i.ah = and i32 %i.ab, 18
  %.not8.i.i81 = icmp eq i32 %i.ah, 0
  br i1 %.not8.i.i81, label %sqlite3_value_double.exit82, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ai = tail call fastcc double @sqlite3MemRealValueRC(ptr noundef nonnull %i.y, ptr noundef null), !inline_history !854
  br label %sqlite3_value_double.exit82

sqlite3_value_double.exit82:                      ; preds = %bb.l, %bb.n, %bb.o, %bb.p
  %.0.i.i79 = phi double [ %i.ad, %bb.l ], [ %i.ag, %bb.n ], [ %i.ai, %bb.p ], [ 0.000000e+00, %bb.o ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !288 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  %i.am = load i16, ptr %i.al, align 4, !tbaa !162
  %i.an = zext i16 %i.am to i32                   ; 3 uses
  %i.ao = and i32 %i.an, 36
  %.not.i.i83 = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i83, label %bb.r, label %bb.q

bb.q:                                             ; preds = %sqlite3_value_double.exit82
  %i.ap = load i64, ptr %i.ak, align 8, !tbaa !227
  br label %sqlite3_value_int.exit

bb.r:                                             ; preds = %sqlite3_value_double.exit82
  %i.aq = and i32 %i.an, 8
  %.not8.i.i85 = icmp eq i32 %i.aq, 0
  br i1 %.not8.i.i85, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ar = load double, ptr %i.ak, align 8, !tbaa !227 ; 2 uses
  %i.as = tail call double @llvm.fabs.f64(double %i.ar)
  %or.cond93 = fcmp ogt double %i.as, f0x43DFFFFFFFFFFFFF
  br i1 %or.cond93, label %sqlite3_result_error_nomem.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.at = fptosi double %i.ar to i64
  br label %sqlite3_value_int.exit

bb.u:                                             ; preds = %bb.r
  %i.au = and i32 %i.an, 18
  %.not9.i.i = icmp eq i32 %i.au, 0
  br i1 %.not9.i.i, label %sqlite3_result_error_nomem.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !289
  %.not10.i.i = icmp eq ptr %i.aw, null
  br i1 %.not10.i.i, label %sqlite3_result_error_nomem.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ax = tail call fastcc i64 @memIntValue(ptr noundef nonnull readonly %i.ak)
  br label %sqlite3_value_int.exit

sqlite3_value_int.exit:                           ; preds = %bb.q, %bb.t, %bb.w
  %.0.i.i84 = phi i64 [ %i.ap, %bb.q ], [ %i.at, %bb.t ], [ %i.ax, %bb.w ]
  %i.ay = trunc i64 %.0.i.i84 to i32              ; 2 uses
  %i.az = icmp slt i32 %i.ay, 3
  %i.ba = fcmp ole double %.0.i.i79, 0.000000e+00
  %or.cond = select i1 %i.az, i1 true, i1 %i.ba
  br i1 %or.cond, label %sqlite3_result_error_nomem.exit, label %bb.x

bb.x:                                             ; preds = %sqlite3_value_int.exit
  %i.bb = tail call i32 @llvm.umin.i32(i32 %i.ay, i32 1000) ; 6 uses
  %i.bc = tail call i32 @sqlite3_initialize(), !inline_history !396
  %.not.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i, label %sqlite3_malloc64.exit, label %sqlite3_malloc64.exit.thread

sqlite3_malloc64.exit:                            ; preds = %bb.x
  %i.bd = shl nuw nsw i32 %i.bb, 1
  %i.be = add nsw i32 %i.bd, -2
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = shl nuw nsw i64 %i.bf, 2
  %i.bh = add nuw nsw i64 %i.bg, 40
  %i.bi = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.bh), !inline_history !396 ; 9 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %sqlite3_malloc64.exit.thread, label %.lr.ph

sqlite3_malloc64.exit.thread:                     ; preds = %bb.x, %sqlite3_malloc64.exit
  %i.bk = load ptr, ptr %0, align 8, !tbaa !288   ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 20 ; 2 uses
  %i.bm = load i16, ptr %i.bl, align 4, !tbaa !162
  %i.bn = and i16 %i.bm, -28672
  %.not.i.i86 = icmp eq i16 %i.bn, 0
  br i1 %.not.i.i86, label %bb.z, label %bb.y

bb.y:                                             ; preds = %sqlite3_malloc64.exit.thread
  tail call fastcc void @vdbeMemClearExternAndSetNull(ptr noundef nonnull %i.bk)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !288
  br label %sqlite3VdbeMemSetNull.exit.i

bb.z:                                             ; preds = %sqlite3_malloc64.exit.thread
  store i16 1, ptr %i.bl, align 4, !tbaa !162
  br label %sqlite3VdbeMemSetNull.exit.i

sqlite3VdbeMemSetNull.exit.i:                     ; preds = %bb.z, %bb.y
  %i.bo = phi ptr [ %.pre.i, %bb.y ], [ %i.bk, %bb.z ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 7, ptr %i.bp, align 4, !tbaa !5
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !157 ; 7 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 103 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !550
  %i.bu = icmp eq i8 %i.bt, 0
  br i1 %i.bu, label %bb.aa, label %sqlite3_result_error_nomem.exit

bb.aa:                                            ; preds = %sqlite3VdbeMemSetNull.exit.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 104
  %i.bw = load i8, ptr %i.bv, align 8, !tbaa !551
  %i.bx = icmp eq i8 %i.bw, 0
  br i1 %i.bx, label %bb.ab, label %sqlite3_result_error_nomem.exit

bb.ab:                                            ; preds = %bb.aa
  store i8 1, ptr %i.bs, align 1, !tbaa !550
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 220
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !552
  %i.ca = icmp sgt i32 %i.bz, 0
  br i1 %i.ca, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cb = getelementptr inbounds nuw i8, ptr %i.br, i64 424
  store atomic volatile i32 1, ptr %i.cb monotonic, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.cc = getelementptr inbounds nuw i8, ptr %i.br, i64 432 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !553
  %i.ce = add i32 %i.cd, 1
  store i32 %i.ce, ptr %i.cc, align 8, !tbaa !553
  %i.cf = getelementptr inbounds nuw i8, ptr %i.br, i64 436
  store i16 0, ptr %i.cf, align 4, !tbaa !554
  %i.cg = getelementptr inbounds nuw i8, ptr %i.br, i64 344 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !301 ; 2 uses
  %.not.i3.i = icmp eq ptr %i.ch, null
  br i1 %.not.i3.i, label %sqlite3_result_error_nomem.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.ch, ptr noundef nonnull @.str.133), !inline_history !555
  %i.ci = load ptr, ptr %i.cg, align 8, !tbaa !301 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  store i32 7, ptr %i.cj, align 8, !tbaa !302
  %.0.in17.i.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 216
  %.018.i.i = load ptr, ptr %.0.in17.i.i, align 8, !tbaa !556 ; 2 uses
  %.not1619.i.i = icmp eq ptr %.018.i.i, null
  br i1 %.not1619.i.i, label %sqlite3_result_error_nomem.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ae, %.lr.ph.i.i
  %.020.i.i = phi ptr [ %.0.i.i87, %.lr.ph.i.i ], [ %.018.i.i, %bb.ae ] ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 52 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !313
  %i.cm = add nsw i32 %i.cl, 1
  store i32 %i.cm, ptr %i.ck, align 4, !tbaa !313
  %i.cn = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 24
  store i32 7, ptr %i.cn, align 8, !tbaa !302
  %.0.in.i.i = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 216
  %.0.i.i87 = load ptr, ptr %.0.in.i.i, align 8, !tbaa !556 ; 2 uses
  %.not16.i.i = icmp eq ptr %.0.i.i87, null
  br i1 %.not16.i.i, label %sqlite3_result_error_nomem.exit, label %.lr.ph.i.i, !llvm.loop !557

.lr.ph:                                           ; preds = %sqlite3_malloc64.exit
  %i.co = getelementptr inbounds nuw i8, ptr %i.bi, i64 4 ; 2 uses
  store i8 1, ptr %i.co, align 4, !tbaa !227
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bi, i64 5
  store i8 0, ptr %i.cp, align 1, !tbaa !227
  %i.cq = lshr i32 %i.bb, 8
  %i.cr = trunc nuw nsw i32 %i.cq to i8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bi, i64 6
  store i8 %i.cr, ptr %i.cs, align 2, !tbaa !227
  %i.ct = trunc i32 %i.bb to i8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bi, i64 7
  store i8 %i.ct, ptr %i.cu, align 1, !tbaa !227
  %i.cv = uitofp nneg i32 %i.bb to double
  %i.cw = fneg double %.0.i.i79
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %wide.trip.count = zext nneg i32 %i.bb to i64
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph, %bb.af
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.af ] ; 3 uses
  %i.cy = trunc nuw nsw i64 %indvars.iv to i32
  %i.cz = uitofp nneg i32 %i.cy to double
  %i.da = fmul nnan double %i.cz, f0x401921FB54442D18
  %i.db = fdiv double %i.da, %i.cv                ; 2 uses
  %i.dc = fadd double %i.db, f0xBFF921FB54442D18
  %i.dd = tail call fastcc double @geopolySine(double noundef %i.dc)
  %3 = tail call double @llvm.fmuladd.f64(double %i.cw, double %i.dd, double %.0.i.i)
  %4 = fptrunc double %3 to float
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.de = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.idx ; 2 uses
  store float %4, ptr %i.de, align 4, !tbaa !8107
  %5 = tail call fastcc double @geopolySine(double noundef %i.db)
  %6 = tail call double @llvm.fmuladd.f64(double %.0.i.i79, double %5, double %.0.i.i74)
  %7 = fptrunc double %6 to float
  %8 = getelementptr i8, ptr %i.de, i64 4
  store float %7, ptr %8, align 4, !tbaa !8107
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.af, !llvm.loop !8115

._crit_edge:                                      ; preds = %bb.af
  %i.df = shl nuw nsw i32 %i.bb, 3
  %i.dg = or disjoint i32 %i.df, 4
  tail call fastcc void @setResultStrOrError(ptr noundef %0, ptr noundef nonnull %i.co, i32 noundef %i.dg, i8 noundef zeroext 0, ptr noundef nonnull inttoptr (i64 -1 to ptr))
  %i.dh = load i32, ptr @sqlite3Config, align 8, !tbaa !175
  %.not.i88 = icmp eq i32 %i.dh, 0
  br i1 %.not.i88, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge
  %i.di = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i89 = icmp eq ptr %i.di, null
  br i1 %.not.i.i89, label %sqlite3_mutex_enter.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  tail call void %i.dj(ptr noundef nonnull %i.di) #59, !inline_history !268
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.ah, %bb.ag
  %i.dk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.dl = tail call i32 %i.dk(ptr noundef nonnull %i.bi) #59, !inline_history !269
  %i.dm = sext i32 %i.dl to i64
  %i.dn = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.do = sub nsw i64 %i.dn, %i.dm
  store i64 %i.do, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.dp = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.dq = add nsw i64 %i.dp, -1
  store i64 %i.dq, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.dr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.dr(ptr noundef nonnull %i.bi) #59, !inline_history !270
  %i.ds = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.ds, null
  br i1 %.not.i4.i, label %sqlite3_result_error_nomem.exit, label %bb.ai

bb.ai:                                            ; preds = %sqlite3_mutex_enter.exit.i
  %i.dt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.dt(ptr noundef nonnull %i.ds) #59, !inline_history !271
  br label %sqlite3_result_error_nomem.exit

bb.aj:                                            ; preds = %._crit_edge
  %i.du = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.du(ptr noundef nonnull %i.bi) #59, !inline_history !270
  br label %sqlite3_result_error_nomem.exit

sqlite3_result_error_nomem.exit:                  ; preds = %.lr.ph.i.i, %bb.s, %bb.v, %bb.u, %bb.aj, %bb.ai, %sqlite3_mutex_enter.exit.i, %bb.ae, %bb.ad, %bb.aa, %sqlite3VdbeMemSetNull.exit.i, %sqlite3_value_int.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @geopolyCcwFunc(ptr nofree noundef captures(address_is_null) %0, i32 %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !288
  %i.b = tail call fastcc ptr @geopolyFuncParam(ptr noundef %0, ptr noundef %i.a, ptr noundef null) ; 9 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %sqlite3_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.b, align 4, !tbaa !8105 ; 6 uses
  %i.d = icmp sgt i32 %i.c, 1
  br i1 %i.d, label %.lr.ph.i, label %geopolyArea.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.e = add nsw i32 %i.c, -1                     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  %wide.trip.count.i = zext nneg i32 %i.e to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.g = icmp eq i32 %i.e, 1
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.c ] ; 3 uses
  %.01920.i = phi double [ 0.000000e+00, %.lr.ph.i.new ], [ %i.ad, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.c ]
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 3
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i ; 2 uses
  %i.i = load float, ptr %i.h, align 4, !tbaa !8107
  %indvars.iv.next.i = shl i64 %indvars.iv.i, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv.next.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load float, ptr %i.k, align 4, !tbaa !8107 ; 2 uses
  %i.m = fsub float %i.i, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !8107
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.q = load float, ptr %i.p, align 4, !tbaa !8107 ; 2 uses
  %i.r = fadd float %i.o, %i.q
  %i.s = fmul float %i.m, %i.r
  %i.t = fpext float %i.s to double
  %i.u = tail call double @llvm.fmuladd.f64(double %i.t, double 5.000000e-01, double %.01920.i)
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 3 uses
  %.idx25.i.1 = shl nuw nsw i64 %indvars.iv.next.i.1, 3
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx25.i.1 ; 2 uses
  %i.w = load float, ptr %i.v, align 4, !tbaa !8107
  %i.x = fsub float %i.l, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.z = load float, ptr %i.y, align 4, !tbaa !8107
  %i.aa = fadd float %i.q, %i.z
  %i.ab = fmul float %i.x, %i.aa
  %i.ac = fpext float %i.ab to double
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.ac, double 5.000000e-01, double %i.u) ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %bb.c, !llvm.loop !8108

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %._crit_edge.loopexit.i.unr-lcssa ] ; 2 uses
  %.01920.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i ], [ %i.ad, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod45 = trunc i32 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod45)
  %.idx.i.epil = shl nuw nsw i64 %indvars.iv.i.epil.init, 3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i.epil ; 2 uses
  %i.af = load float, ptr %i.ae, align 4, !tbaa !8107
  %indvars.iv.next.i.epil = shl i64 %indvars.iv.i.epil.init, 3
  %i.ag = getelementptr i8, ptr %i.f, i64 %indvars.iv.next.i.epil ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !8107
  %i.aj = fsub float %i.af, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.al = load float, ptr %i.ak, align 4, !tbaa !8107
  %i.am = getelementptr i8, ptr %i.ag, i64 12
  %i.an = load float, ptr %i.am, align 4, !tbaa !8107
  %i.ao = fadd float %i.al, %i.an
  %i.ap = fmul float %i.aj, %i.ao
  %i.aq = fpext float %i.ap to double
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.aq, double 5.000000e-01, double %.01920.i.epil.init)
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.epil.preheader
  %.lcssa = phi double [ %i.ad, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.ar, %.epil.preheader ]
  %i.as = shl nuw i32 %i.c, 1
  %i.at = add i32 %i.as, -2
  %i.au = zext nneg i32 %i.at to i64
  br label %geopolyArea.exit

geopolyArea.exit:                                 ; preds = %bb.b, %._crit_edge.loopexit.i
  %.019.lcssa.i = phi double [ 0.000000e+00, %bb.b ], [ %.lcssa, %._crit_edge.loopexit.i ]
  %.0.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.au, %._crit_edge.loopexit.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %.0.lcssa.i ; 2 uses
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !8107
  %i.ay = load float, ptr %i.av, align 4, !tbaa !8107
  %i.az = fsub float %i.ax, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !8107
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !8107
  %i.be = fadd float %i.bb, %i.bd
  %i.bf = fmul float %i.az, %i.be
  %i.bg = fpext float %i.bf to double
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.bg, double 5.000000e-01, double %.019.lcssa.i)
  %i.bi = fcmp olt double %i.bh, 0.000000e+00
  %i.bj = icmp sgt i32 %i.c, 2
  %or.cond = and i1 %i.bi, %i.bj
  br i1 %or.cond, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %geopolyArea.exit
  %i.bk = zext nneg i32 %i.c to i64
  %i.bl = add nsw i64 %i.bk, -1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv35 = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next36, %.lr.ph ] ; 2 uses
  %indvars.iv = phi i64 [ %i.bl, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv35, 3
  %i.bm = getelementptr inbounds nuw i8, ptr %i.av, i64 %.idx ; 2 uses
  %.idx43 = shl nsw i64 %indvars.iv, 3
  %i.bn = getelementptr inbounds i8, ptr %i.av, i64 %.idx43 ; 2 uses
  %i.bo = load <2 x float>, ptr %i.bm, align 4, !tbaa !8107
  %i.bp = load <2 x float>, ptr %i.bn, align 4, !tbaa !8107
  store <2 x float> %i.bp, ptr %i.bm, align 4, !tbaa !8107
  store <2 x float> %i.bo, ptr %i.bn, align 4, !tbaa !8107
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.bq = icmp slt i64 %indvars.iv.next36, %indvars.iv.next
  br i1 %i.bq, label %.lr.ph, label %.loopexit, !llvm.loop !8116

.loopexit:                                        ; preds = %.lr.ph, %geopolyArea.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.bs = shl nsw i32 %i.c, 3
  %i.bt = or disjoint i32 %i.bs, 4
  tail call fastcc void @setResultStrOrError(ptr noundef %0, ptr noundef nonnull %i.br, i32 noundef %i.bt, i8 noundef zeroext 0, ptr noundef nonnull inttoptr (i64 -1 to ptr))
  %i.bu = load i32, ptr @sqlite3Config, align 8, !tbaa !175
  %.not.i = icmp eq i32 %i.bu, 0
  br i1 %.not.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.loopexit
  %i.bv = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bv, null
end_hunk_0
