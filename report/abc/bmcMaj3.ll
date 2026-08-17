inline.NumInlined: 296
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 44
begin_hunk_0_@Zyx_ManExactSynthesis:bb.a
  %i.sy = load i64, ptr %3, align 8, !tbaa !79
  %i.sz = mul nsw i64 %i.sy, 1000000
  %i.ta = load i64, ptr %i.by, align 8, !tbaa !81
  %i.tb = sdiv i64 %i.ta, 1000
  %i.tc = add nsw i64 %i.tb, %i.sz
  br label %Abc_Clock.exit111

Abc_Clock.exit111:                                ; preds = %Abc_Clock.exit109, %bb.ak
  %.0.i110 = phi i64 [ %i.tc, %bb.ak ], [ -1, %Abc_Clock.exit109 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.al

bb.al:                                            ; preds = %bb.ah, %Abc_Clock.exit111, %bb.ag
  %.2 = phi i64 [ %.0.i110, %Abc_Clock.exit111 ], [ %.064, %bb.ah ], [ %.064, %bb.ag ]
  %i.td = icmp eq i32 %i.rv, -1
  br i1 %i.td, label %.loopexit128, label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ab
  %.0.i98120 = phi i32 [ -1, %bb.ab ], [ %.0.i98, %bb.al ]
  %.169 = phi i32 [ %i.qi, %bb.ab ], [ %.068, %bb.al ]
  %.3 = phi i64 [ %.165, %bb.ab ], [ %.2, %bb.al ]
  %i.te = add nuw nsw i32 %.063, 1
  br label %bb.f

.loopexit128:                                     ; preds = %bb.ab, %bb.al, %bb.w, %bb.g, %.thread.thread, %bb.af
  %.270 = phi i32 [ %.068, %.thread.thread ], [ %.068, %bb.af ], [ %.068, %bb.g ], [ %.068, %bb.al ], [ %.068, %bb.w ], [ %i.qi, %bb.ab ]
  %.167 = phi i32 [ %.066, %.thread.thread ], [ %.0.i98, %bb.af ], [ %.066, %bb.g ], [ %.0.i98, %bb.al ], [ -1, %bb.w ], [ -1, %bb.ab ] ; 2 uses
  %i.tf = load i32, ptr %i.bw, align 4, !tbaa !236
  %.not92 = icmp eq i32 %i.tf, 0
  br i1 %.not92, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %.loopexit128
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.tg = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #26
  %i.th = icmp slt i32 %i.tg, 0
  br i1 %i.th, label %Abc_Clock.exit113, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ti = load i64, ptr %2, align 8, !tbaa !79
  %i.tj = mul nsw i64 %i.ti, 1000000
  %i.tk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.tl = load i64, ptr %i.tk, align 8, !tbaa !81
  %i.tm = sdiv i64 %i.tl, 1000
  %i.tn = add nsw i64 %i.tm, %i.tj
  br label %Abc_Clock.exit113

Abc_Clock.exit113:                                ; preds = %bb.an, %bb.ao
  %.0.i112 = phi i64 [ %i.tn, %bb.ao ], [ -1, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.to = sub nsw i64 %.0.i112, %.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %.167, ptr %i.a, align 4, !tbaa !34
  %i.tp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.56, i32 noundef %.063) ; 0 uses
  %i.tq = load ptr, ptr @stdout, align 8, !tbaa !83
  %i.tr = load ptr, ptr %i.aw, align 8, !tbaa !96
  %i.ts = load i32, ptr %i.tr, align 8, !tbaa !104
  call void @Extra_PrintBinary(ptr noundef %i.tq, ptr noundef nonnull %i.a, i32 noundef %i.ts) #26
  %i.tt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.57) ; 0 uses
  %i.tu = load ptr, ptr %i.bh, align 8, !tbaa !91
  %i.tv = call i32 @bmcg_sat_solver_clausenum(ptr noundef %i.tu) #26
  %i.tw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.58, i32 noundef %i.tv) ; 0 uses
  %i.tx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.59, i32 noundef %.172) ; 0 uses
  %i.ty = load ptr, ptr %i.bh, align 8, !tbaa !91
  %i.tz = call i32 @bmcg_sat_solver_conflictnum(ptr noundef %i.ty) #26
  %i.ua = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.tz) ; 0 uses
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.18)
  %i.ub = sitofp i64 %i.to to double
  %i.uc = fdiv double %i.ub, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.48, double noundef %i.uc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ap

bb.ap:                                            ; preds = %Abc_Clock.exit113, %.loopexit128
  %i.ud = load i32, ptr %i.bz, align 8, !tbaa !235
  %.not93 = icmp eq i32 %i.ud, 0
  br i1 %.not93, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ue = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %.270) ; 0 uses
  br label %bb.au

bb.ar:                                            ; preds = %bb.ap
  %i.uf = icmp eq i32 %.167, -1
  br i1 %i.uf, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  call fastcc void @Zyx_ManPrintSolution(ptr noundef nonnull %i.aw, i32 noundef %.075, i32 noundef 1)
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %puts94 = call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at, %bb.aq
  %i.ug = getelementptr inbounds nuw i8, ptr %i.aw, i64 88
  %i.uh = getelementptr inbounds nuw i8, ptr %i.aw, i64 92
  %i.ui = load i32, ptr %i.uh, align 4, !tbaa !34
  %i.uj = load i32, ptr %i.ug, align 8, !tbaa !34
  %i.uk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, i32 noundef %i.ui, i32 noundef %i.uj) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.ul = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %1) #26
  %i.um = icmp slt i32 %i.ul, 0
  br i1 %i.um, label %Abc_Clock.exit115, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.un = load i64, ptr %1, align 8, !tbaa !79
  %i.uo = mul nsw i64 %i.un, 1000000
  %i.up = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.uq = load i64, ptr %i.up, align 8, !tbaa !81
  %i.ur = sdiv i64 %i.uq, 1000
  %i.us = add nsw i64 %i.ur, %i.uo
  br label %Abc_Clock.exit115

Abc_Clock.exit115:                                ; preds = %bb.au, %bb.av
  %.0.i114 = phi i64 [ %i.us, %bb.av ], [ -1, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.ut = sub nsw i64 %.0.i114, %.0.i
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.20)
  %i.uu = sitofp i64 %i.ut to double
  %i.uv = fdiv double %i.uu, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.48, double noundef %i.uv)
  call void @Zyx_ManFree(ptr noundef nonnull %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @Abc_TtReadHex(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #11 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !237     ; 2 uses
  %i.b = icmp eq i8 %i.a, 48
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !237
  %i.e = icmp eq i8 %i.d, 120
  %spec.select.idx = select i1 %i.e, i64 2, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.idx ; 2 uses
  %.pre = load i8, ptr %spec.select, align 1, !tbaa !237
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi i8 [ %i.a, %bb.a ], [ %.pre, %bb.b ] ; 3 uses
  %.038 = phi ptr [ %1, %bb.a ], [ %spec.select, %bb.b ] ; 2 uses
  %i.g = add i8 %i.f, -58
  %or.cond.i50 = icmp ult i8 %i.g, -10
  %i.h = and i8 %i.f, -33
  %i.i = add i8 %i.h, -71
  %i.j = icmp ult i8 %i.i, -6
  %narrow.i.not51 = and i1 %or.cond.i50, %i.j
  br i1 %narrow.i.not51, label %.thread83, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.c ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.038, i64 %indvars.iv.next
  %i.l = load i8, ptr %i.k, align 1, !tbaa !237   ; 2 uses
  %i.m = add i8 %i.l, -58
  %or.cond.i = icmp ult i8 %i.m, -10
  %i.n = and i8 %i.l, -33
  %i.o = add i8 %i.n, -71
  %i.p = icmp ult i8 %i.o, -6
  %narrow.i.not = and i1 %or.cond.i, %i.p
  br i1 %narrow.i.not, label %._crit_edge, label %.lr.ph, !llvm.loop !238

._crit_edge:                                      ; preds = %.lr.ph
  %indvars = trunc i64 %indvars.iv.next to i32    ; 3 uses
  switch i32 %indvars, label %.lr.ph.preheader.i [
    i32 1, label %bb.d
    i32 0, label %.thread83
  ]

bb.d:                                             ; preds = %._crit_edge
  %switch.tableidx = add i8 %i.f, -48             ; 3 uses
  %i.q = icmp ult i8 %switch.tableidx, 23
  br i1 %i.q, label %switch.hole_check, label %.lr.ph57.preheader

.lr.ph.preheader.i:                               ; preds = %._crit_edge
  %i.r = add i32 %indvars, -1                     ; 2 uses
  %i.s = lshr i32 %i.r, 1
  %i.t = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.s, i1 false) ; 2 uses
  %i.u = sub nuw nsw i32 35, %i.t
  %i.v = icmp ult i32 %i.r, 16
  %i.w = sub nsw i32 29, %i.t
  %i.x = shl nuw nsw i32 1, %i.w
  %spec.select48 = select i1 %i.v, i32 1, i32 %i.x
  %i.y = zext nneg i32 %spec.select48 to i64
  %i.z = shl nuw nsw i64 %i.y, 3
  br label %.lr.ph57.preheader

.thread83:                                        ; preds = %._crit_edge, %bb.c
  store i64 0, ptr %0, align 8
  br label %.sink.split

.lr.ph57.preheader:                               ; preds = %switch.hole_check, %bb.d, %.lr.ph.preheader.i
  %.0.lcssa74 = phi i32 [ %indvars, %.lr.ph.preheader.i ], [ 1, %bb.d ], [ 1, %switch.hole_check ] ; 2 uses
  %.fr = phi i32 [ %i.u, %.lr.ph.preheader.i ], [ 2, %bb.d ], [ 2, %switch.hole_check ] ; 4 uses
  %i.aa = phi i64 [ %i.z, %.lr.ph.preheader.i ], [ 8, %bb.d ], [ 8, %switch.hole_check ]
  tail call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 %i.aa, i1 false), !tbaa !21
  %2 = sext i32 %.0.lcssa74 to i64
  %wide.trip.count = zext i32 %.0.lcssa74 to i64
  %3 = getelementptr i8, ptr %.038, i64 %2
  br label %.lr.ph57

.lr.ph57:                                         ; preds = %.lr.ph57.preheader, %Abc_TtReadHexDigit.exit
  %indvars.iv66 = phi i64 [ 0, %.lr.ph57.preheader ], [ %indvars.iv.next67, %Abc_TtReadHexDigit.exit ] ; 4 uses
  %4 = xor i64 %indvars.iv66, -1
  %i.ab = getelementptr i8, ptr %3, i64 %4
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !237 ; 4 uses
  %i.ad = sext i8 %i.ac to i64                    ; 3 uses
  %i.ae = add i8 %i.ac, -48
  %or.cond.i43 = icmp ult i8 %i.ae, 10
  br i1 %or.cond.i43, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph57
  %i.af = add nsw i64 %i.ad, -48
  br label %Abc_TtReadHexDigit.exit

bb.f:                                             ; preds = %.lr.ph57
  %i.ag = add i8 %i.ac, -65
  %or.cond5.i = icmp ult i8 %i.ag, 6
  br i1 %or.cond5.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ah = add nsw i64 %i.ad, -55
  br label %Abc_TtReadHexDigit.exit

bb.h:                                             ; preds = %bb.f
  %i.ai = add i8 %i.ac, -97
  %or.cond8.i = icmp ult i8 %i.ai, 6
  %i.aj = add nsw i64 %i.ad, -87
  %spec.select.i = select i1 %or.cond8.i, i64 %i.aj, i64 -1
  br label %Abc_TtReadHexDigit.exit

Abc_TtReadHexDigit.exit:                          ; preds = %bb.e, %bb.g, %bb.h
  %.0.i = phi i64 [ %i.af, %bb.e ], [ %i.ah, %bb.g ], [ %spec.select.i, %bb.h ]
  %i.ak = shl i64 %indvars.iv66, 2
  %i.al = and i64 %i.ak, 60
  %i.am = shl i64 %.0.i, %i.al
  %i.an = lshr i64 %indvars.iv66, 4
  %i.ao = and i64 %i.an, 268435455
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ao ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !21
  %i.ar = or i64 %i.aq, %i.am
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !21
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next67, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge58, label %.lr.ph57, !llvm.loop !239

._crit_edge58:                                    ; preds = %Abc_TtReadHexDigit.exit
  %i.as = icmp samesign ult i32 %.fr, 6
  br i1 %i.as, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge58
  %i.at = load i64, ptr %0, align 8, !tbaa !21    ; 4 uses
  %i.au = icmp samesign ult i32 %.fr, 3
  %i.av = and i64 %i.at, 15
  %i.aw = mul nuw nsw i64 %i.av, 17
  %spec.select86 = select i1 %i.au, i64 %i.aw, i64 %i.at
  %i.ax = icmp samesign ult i32 %.fr, 4
  %i.ay = and i64 %spec.select86, 255
  %i.az = mul nuw nsw i64 %i.ay, 257
  %i.ba = select i1 %i.ax, i64 %i.az, i64 %i.at
  %.not72 = icmp eq i32 %.fr, 5
  %i.bb = and i64 %i.ba, 65535
  %i.bc = mul nuw nsw i64 %i.bb, 65537
  %spec.select87 = select i1 %.not72, i64 %i.at, i64 %i.bc
  %i.bd = and i64 %spec.select87, 4294967295
  %i.be = mul nuw i64 %i.bd, 4294967297
  br label %.sink.split

switch.hole_check:                                ; preds = %bb.d
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 4325409, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %.lr.ph57.preheader

switch.lookup:                                    ; preds = %switch.hole_check
  %i.bf = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.Abc_TtReadHex, i64 %i.bf
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %.thread83, %bb.i, %switch.lookup
  %.sink = phi i64 [ %switch.load, %switch.lookup ], [ 0, %.thread83 ], [ %i.be, %bb.i ]
  store i64 %.sink, ptr %0, align 8, !tbaa !21
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %._crit_edge58
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @Zyx_ManPrintSolution(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 0, 2) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #3 {
bb.a:
  %i.a = alloca [1000 x i8], align 16             ; 9 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !96     ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !104
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !136
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !130
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !97
  %.not = icmp eq i32 %i.i, 0
  %i.j = select i1 %.not, ptr @.str.25, ptr @.str.24
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.60, i32 noundef %i.c, i32 noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %i.j) ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !100  ; 3 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !96     ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !104  ; 2 uses
  %.not37.not49 = icmp sgt i32 %i.m, %i.o
  br i1 %.not37.not49, label %.lr.ph53, label %._crit_edge54

.lr.ph53:                                         ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8808 ; 2 uses
  %i.r = icmp ne i32 %1, 0
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph53, %._crit_edge
  %indvars.iv.in = phi i32 [ %i.m, %.lr.ph53 ], [ %indvars.iv, %._crit_edge ]
  %.036.in50 = phi i32 [ %i.m, %.lr.ph53 ], [ %.03651, %._crit_edge ] ; 3 uses
  %indvars.iv = add i32 %indvars.iv.in, -1        ; 2 uses
  %.03651 = add nsw i32 %.036.in50, -1            ; 5 uses
  %i.t = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.61, i32 noundef %.03651) ; 0 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !96     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i32, ptr %i.v, align 8, !tbaa !97
  %.not39 = icmp eq i32 %i.w, 0
  br i1 %.not39, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.62) ; 0 uses
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !130
  %i.aa = shl nuw i32 1, %i.z
  %i.ab = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.63, i32 noundef %i.aa) ; 0 uses
  %i.ac = load i32, ptr %i.p, align 8, !tbaa !105 ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, -1
  br i1 %i.ad, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.045 = phi i32 [ %i.aq, %.lr.ph ], [ %i.ac, %bb.d ] ; 3 uses
  %i.ae = load ptr, ptr %i.q, align 8, !tbaa !91
  %.val = load ptr, ptr %0, align 8, !tbaa !96
  %.val41 = load i32, ptr %i.p, align 8, !tbaa !105
  %.val.val = load i32, ptr %.val, align 8, !tbaa !104
  %i.af = add nsw i32 %.val41, 1
  %i.ag = sub nsw i32 %.03651, %.val.val
  %i.ah = mul nsw i32 %i.ag, %i.af
  %i.ai = add nsw i32 %i.ah, %.045
  %i.aj = tail call i32 @bmcg_sat_solver_read_cex_varvalue(ptr noundef %i.ae, i32 noundef %i.ai) #26
  %i.ak = load i32, ptr %i.l, align 8, !tbaa !100
  %i.al = icmp eq i32 %.036.in50, %i.ak
  %i.am = and i1 %i.r, %i.al
  %i.an = zext i1 %i.am to i32
  %i.ao = xor i32 %i.aj, %i.an
  %i.ap = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.64, i32 noundef %i.ao) ; 0 uses
  %i.aq = add nsw i32 %.045, -1
  %.not76 = icmp eq i32 %.045, 0
  br i1 %.not76, label %.loopexit, label %.lr.ph, !llvm.loop !240

.loopexit:                                        ; preds = %.lr.ph, %bb.d, %bb.c
  %putchar = tail call i32 @putchar(i32 40)       ; 0 uses
  %i.ar = icmp sgt i32 %.036.in50, 1
  br i1 %i.ar, label %.lr.ph47, label %._crit_edge

.lr.ph47:                                         ; preds = %.loopexit, %bb.h
  %.146 = phi i32 [ %i.bi, %bb.h ], [ 0, %.loopexit ] ; 5 uses
  %i.as = load ptr, ptr %i.q, align 8, !tbaa !91
  %i.at = load i32, ptr %i.s, align 4, !tbaa !107
  %i.au = load i32, ptr %i.l, align 8, !tbaa !100
  %i.av = load ptr, ptr %0, align 8, !tbaa !96
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !104
  %i.ax = sub nsw i32 %.03651, %i.aw
  %i.ay = mul nsw i32 %i.ax, %i.au
  %i.az = add i32 %i.at, %.146
  %i.ba = add i32 %i.az, %i.ay
  %i.bb = tail call i32 @bmcg_sat_solver_read_cex_varvalue(ptr noundef %i.as, i32 noundef %i.ba) #26
  %.not40 = icmp eq i32 %i.bb, 0
  br i1 %.not40, label %bb.h, label %bb.e

bb.e:                                             ; preds = %.lr.ph47
  %i.bc = load ptr, ptr %0, align 8, !tbaa !96
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !104
  %i.be = icmp slt i32 %.146, %i.bd
  br i1 %i.be, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bf = add nuw nsw i32 %.146, 97
  %i.bg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.53, i32 noundef %i.bf) ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.bh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.54, i32 noundef %.146) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph47, %bb.g, %bb.f
  %i.bi = add nuw nsw i32 %.146, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.bi, %indvars.iv
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph47, !llvm.loop !241

._crit_edge:                                      ; preds = %bb.h, %.loopexit
end_hunk_0
