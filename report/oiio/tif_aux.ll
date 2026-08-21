inline.NumInlined: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@TIFFVGetFieldDefaulted:bb.a
bb.dq:                                            ; preds = %bb.dp, %bb.do
  %i.ox = phi ptr [ %i.os, %bb.do ], [ %i.ov, %bb.dp ]
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !51
  store ptr @TIFFVGetFieldDefaulted.whitepoint, ptr %i.oy, align 8, !tbaa !53
  br label %bb.el

bb.dr:                                            ; preds = %bb.b
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !31 ; 2 uses
  %.not121 = icmp eq ptr %i.pa, null
  br i1 %.not121, label %bb.ds, label %bb.du

bb.ds:                                            ; preds = %bb.dr
  %i.pb = tail call fastcc i32 @TIFFDefaultTransferFunction(ptr noundef nonnull %0, ptr noundef nonnull %i.a)
  %.not122 = icmp eq i32 %i.pb, 0
  br i1 %.not122, label %bb.dt, label %._crit_edge125

._crit_edge125:                                   ; preds = %bb.ds
  %.pre126 = load ptr, ptr %i.oz, align 8, !tbaa !31
  br label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.pc = load ptr, ptr %0, align 8, !tbaa !7
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef %i.pc, ptr noundef nonnull @.str.5) #8
  br label %bb.el

bb.du:                                            ; preds = %._crit_edge125, %bb.dr
  %i.pd = phi ptr [ %.pre126, %._crit_edge125 ], [ %i.pa, %bb.dr ]
  %i.pe = load i32, ptr %2, align 8               ; 3 uses
  %i.pf = icmp ult i32 %i.pe, 41
  br i1 %i.pf, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.pg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ph = load ptr, ptr %i.pg, align 8
  %i.pi = zext nneg i32 %i.pe to i64
  %i.pj = getelementptr i8, ptr %i.ph, i64 %i.pi
  %i.pk = add nuw nsw i32 %i.pe, 8
  store i32 %i.pk, ptr %2, align 8
  br label %bb.dx

bb.dw:                                            ; preds = %bb.du
  %i.pl = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.pm = load ptr, ptr %i.pl, align 8            ; 2 uses
  %i.pn = getelementptr i8, ptr %i.pm, i64 8
  store ptr %i.pn, ptr %i.pl, align 8
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %i.po = phi ptr [ %i.pj, %bb.dv ], [ %i.pm, %bb.dw ]
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !46
  store ptr %i.pd, ptr %i.pp, align 8, !tbaa !31
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 130
  %i.pr = load i16, ptr %i.pq, align 2, !tbaa !36
  %i.ps = zext i16 %i.pr to i32
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.pu = load i16, ptr %i.pt, align 4, !tbaa !44
  %i.pv = zext i16 %i.pu to i32
  %i.pw = sub nsw i32 %i.ps, %i.pv
  %i.px = icmp sgt i32 %i.pw, 1
  br i1 %i.px, label %bb.dy, label %bb.el

bb.dy:                                            ; preds = %bb.dx
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !31
  %i.qa = load i32, ptr %2, align 8               ; 3 uses
  %i.qb = icmp ult i32 %i.qa, 41
  br i1 %i.qb, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.qc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.qd = load ptr, ptr %i.qc, align 8
  %i.qe = zext nneg i32 %i.qa to i64
  %i.qf = getelementptr i8, ptr %i.qd, i64 %i.qe
  %i.qg = add nuw nsw i32 %i.qa, 8
  store i32 %i.qg, ptr %2, align 8
  br label %bb.eb

bb.ea:                                            ; preds = %bb.dy
  %i.qh = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.qi = load ptr, ptr %i.qh, align 8            ; 2 uses
  %i.qj = getelementptr i8, ptr %i.qi, i64 8
  store ptr %i.qj, ptr %i.qh, align 8
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %i.qk = phi ptr [ %i.qf, %bb.dz ], [ %i.qi, %bb.ea ]
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !46
  store ptr %i.pz, ptr %i.ql, align 8, !tbaa !31
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !31
  %i.qo = load i32, ptr %2, align 8               ; 3 uses
  %i.qp = icmp ult i32 %i.qo, 41
  br i1 %i.qp, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.qq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.qr = load ptr, ptr %i.qq, align 8
  %i.qs = zext nneg i32 %i.qo to i64
  %i.qt = getelementptr i8, ptr %i.qr, i64 %i.qs
  %i.qu = add nuw nsw i32 %i.qo, 8
  store i32 %i.qu, ptr %2, align 8
  br label %bb.ee

bb.ed:                                            ; preds = %bb.eb
  %i.qv = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.qw = load ptr, ptr %i.qv, align 8            ; 2 uses
  %i.qx = getelementptr i8, ptr %i.qw, i64 8
  store ptr %i.qx, ptr %i.qv, align 8
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %i.qy = phi ptr [ %i.qt, %bb.ec ], [ %i.qw, %bb.ed ]
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !46
  store ptr %i.qn, ptr %i.qz, align 8, !tbaa !31
  br label %bb.el

bb.ef:                                            ; preds = %bb.b
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !55 ; 2 uses
  %.not119 = icmp eq ptr %i.rb, null
  br i1 %.not119, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.rc = tail call fastcc i32 @TIFFDefaultRefBlackWhite(ptr noundef nonnull %0, ptr noundef nonnull %i.a)
  %.not120 = icmp eq i32 %i.rc, 0
  br i1 %.not120, label %bb.el, label %._crit_edge

._crit_edge:                                      ; preds = %bb.eg
  %.pre = load ptr, ptr %i.ra, align 8, !tbaa !55
  br label %bb.eh

bb.eh:                                            ; preds = %._crit_edge, %bb.ef
  %i.rd = phi ptr [ %.pre, %._crit_edge ], [ %i.rb, %bb.ef ]
  %i.re = load i32, ptr %2, align 8               ; 3 uses
  %i.rf = icmp ult i32 %i.re, 41
  br i1 %i.rf, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  %i.rg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.rh = load ptr, ptr %i.rg, align 8
  %i.ri = zext nneg i32 %i.re to i64
  %i.rj = getelementptr i8, ptr %i.rh, i64 %i.ri
  %i.rk = add nuw nsw i32 %i.re, 8
  store i32 %i.rk, ptr %2, align 8
  br label %bb.ek

bb.ej:                                            ; preds = %bb.eh
  %i.rl = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.rm = load ptr, ptr %i.rl, align 8            ; 2 uses
  %i.rn = getelementptr i8, ptr %i.rm, i64 8
  store ptr %i.rn, ptr %i.rl, align 8
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %i.ro = phi ptr [ %i.rj, %bb.ei ], [ %i.rm, %bb.ej ]
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !51
  store ptr %i.rd, ptr %i.rp, align 8, !tbaa !53
  br label %bb.el

bb.el:                                            ; preds = %bb.b, %bb.eg, %bb.dx, %bb.ee, %bb.bb, %bb.bf, %bb.a, %bb.ek, %bb.dt, %bb.dq, %bb.dm, %bb.di, %bb.db, %bb.cx, %bb.ct, %bb.cp, %bb.cl, %bb.ch, %bb.cb, %bb.bu, %bb.bq, %bb.bm, %bb.aw, %bb.as, %bb.ao, %bb.ah, %bb.ad, %bb.z, %bb.v, %bb.r, %bb.n, %bb.j, %bb.f
  %.1 = phi i32 [ 1, %bb.dx ], [ 0, %bb.eg ], [ 1, %bb.f ], [ 1, %bb.j ], [ 1, %bb.n ], [ 1, %bb.r ], [ 1, %bb.v ], [ 1, %bb.z ], [ 1, %bb.ad ], [ 1, %bb.ah ], [ 1, %bb.ao ], [ 1, %bb.as ], [ 1, %bb.aw ], [ 1, %bb.a ], [ 1, %bb.bm ], [ 1, %bb.bq ], [ 1, %bb.bu ], [ 1, %bb.cb ], [ 1, %bb.ch ], [ 1, %bb.cl ], [ 1, %bb.cp ], [ 1, %bb.ct ], [ 1, %bb.cx ], [ 1, %bb.db ], [ 1, %bb.di ], [ 1, %bb.dm ], [ 1, %bb.dq ], [ 1, %bb.bf ], [ 0, %bb.dt ], [ 1, %bb.ek ], [ 0, %bb.bb ], [ 1, %bb.ee ], [ 0, %bb.b ]
  ret i32 %.1
}

declare i32 @TIFFVGetField(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @TIFFDefaultTransferFunction(ptr noundef %0, ptr nofree noundef captures(none) initializes((272, 296)) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.e = load i16, ptr %i.d, align 4, !tbaa !30   ; 4 uses
  %i.f = icmp ugt i16 %i.e, 24
  br i1 %i.f, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = zext nneg i16 %i.e to i64                ; 2 uses
  %i.h = shl nuw nsw i64 1, %i.g                  ; 2 uses
  %i.i = shl nuw nsw i64 2, %i.g                  ; 5 uses
  %i.j = tail call ptr @_TIFFmallocExt(ptr noundef %0, i64 noundef %i.i) #8 ; 6 uses
  store ptr %i.j, ptr %i.a, align 8, !tbaa !31
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i16 0, ptr %i.j, align 2, !tbaa !32
  %.not60 = icmp eq i16 %i.e, 0
  br i1 %.not60, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.l = uitofp nneg i64 %i.h to double
  %i.m = fadd double %i.l, -1.000000e+00          ; 3 uses
  %i.n = icmp eq i16 %i.e, 1
  br i1 %i.n, label %._crit_edge.loopexit.epilog-lcssa, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = tail call i64 @llvm.usub.sat.i64(i64 %i.h, i64 2)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %.04859 = phi i64 [ 1, %.lr.ph.new ], [ %i.ad, %bb.d ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.d ]
  %i.o = uitofp nneg i64 %.04859 to double
  %i.p = fdiv double %i.o, %i.m
  %i.q = tail call double @pow(double noundef %i.p, double noundef 2.200000e+00) #8, !tbaa !3
  %i.r = tail call double @llvm.fmuladd.f64(double %i.q, double 6.553500e+04, double 5.000000e-01)
  %i.s = tail call double @llvm.floor.f64(double %i.r)
  %i.t = fptoui double %i.s to i16
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.04859
  store i16 %i.t, ptr %i.u, align 2, !tbaa !32
  %i.v = add nuw nsw i64 %.04859, 1               ; 2 uses
  %i.w = uitofp nneg i64 %i.v to double
  %i.x = fdiv double %i.w, %i.m
  %i.y = tail call double @pow(double noundef %i.x, double noundef 2.200000e+00) #8, !tbaa !3
  %i.z = tail call double @llvm.fmuladd.f64(double %i.y, double 6.553500e+04, double 5.000000e-01)
  %i.aa = tail call double @llvm.floor.f64(double %i.z)
  %i.ab = fptoui double %i.aa to i16
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.v
  store i16 %i.ab, ptr %i.ac, align 2, !tbaa !32
  %i.ad = add nuw nsw i64 %.04859, 2              ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.epilog-lcssa, label %bb.d

._crit_edge.loopexit.epilog-lcssa:                ; preds = %.lr.ph, %bb.d
  %.04859.epil.init = phi i64 [ 1, %.lr.ph ], [ %i.ad, %bb.d ] ; 2 uses
  %i.ae = uitofp nneg i64 %.04859.epil.init to double
  %i.af = fdiv double %i.ae, %i.m
  %i.ag = tail call double @pow(double noundef %i.af, double noundef 2.200000e+00) #8, !tbaa !3
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.ag, double 6.553500e+04, double 5.000000e-01)
  %i.ai = tail call double @llvm.floor.f64(double %i.ah)
  %i.aj = fptoui double %i.ai to i16
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.04859.epil.init
  store i16 %i.aj, ptr %i.ak, align 2, !tbaa !32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.epilog-lcssa, %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.am = load i16, ptr %i.al, align 2, !tbaa !36
  %i.an = zext i16 %i.am to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.ap = load i16, ptr %i.ao, align 4, !tbaa !44
  %i.aq = zext i16 %i.ap to i32
  %i.ar = sub nsw i32 %i.an, %i.aq
  %i.as = icmp sgt i32 %i.ar, 1
  br i1 %i.as, label %bb.e, label %bb.o

bb.e:                                             ; preds = %._crit_edge
  %i.at = tail call ptr @_TIFFmallocExt(ptr noundef %0, i64 noundef %i.i) #8 ; 3 uses
  store ptr %i.at, ptr %i.c, align 8, !tbaa !31
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !31
  tail call void @_TIFFmemcpy(ptr noundef nonnull %i.at, ptr noundef %i.av, i64 noundef %i.i) #8
  %i.aw = tail call ptr @_TIFFmallocExt(ptr noundef %0, i64 noundef %i.i) #8 ; 3 uses
  store ptr %i.aw, ptr %i.b, align 8, !tbaa !31
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !31
  tail call void @_TIFFmemcpy(ptr noundef nonnull %i.aw, ptr noundef %i.ay, i64 noundef %i.i) #8
  br label %bb.o

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !31  ; 2 uses
  %.not = icmp eq ptr %i.az, null
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_TIFFfreeExt(ptr noundef %0, ptr noundef nonnull %i.az) #8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ba = load ptr, ptr %i.c, align 8, !tbaa !31  ; 2 uses
  %.not57 = icmp eq ptr %i.ba, null
  br i1 %.not57, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_TIFFfreeExt(ptr noundef %0, ptr noundef nonnull %i.ba) #8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !31  ; 2 uses
  %.not58 = icmp eq ptr %i.bb, null
  br i1 %.not58, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_TIFFfreeExt(ptr noundef %0, ptr noundef nonnull %i.bb) #8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge, %bb.g, %bb.b, %bb.a, %bb.n
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.n ], [ 1, %bb.g ], [ 1, %._crit_edge ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @TIFFDefaultRefBlackWhite(ptr noundef %0, ptr nofree noundef captures(none) initializes((296, 304)) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @_TIFFmallocExt(ptr noundef %0, i64 noundef 24) #8 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 296
  store ptr %i.a, ptr %i.b, align 8, !tbaa !55
  %i.c = icmp eq ptr %i.a, null
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 50
  %i.e = load i16, ptr %i.d, align 2, !tbaa !56
  %i.f = icmp eq i16 %i.e, 6
  br i1 %i.f, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.i = load i16, ptr %i.h, align 4, !tbaa !30
  %i.j = zext nneg i16 %i.i to i64
  %notmask = shl nsw i64 -1, %i.j
  %i.k = xor i64 %notmask, -1
  %i.l = uitofp nneg i64 %i.k to float            ; 3 uses
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !57
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store float %i.l, ptr %i.m, align 4, !tbaa !57
  store float 0.000000e+00, ptr %i.g, align 4, !tbaa !57
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float %i.l, ptr %i.n, align 4, !tbaa !57
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store float 0.000000e+00, ptr %i.o, align 4, !tbaa !57
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store float %i.l, ptr %i.p, align 4, !tbaa !57
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <2 x float> <float 1.280000e+02, float 2.550000e+02>, ptr %i.q, align 4, !tbaa !57
  store <4 x float> <float 0.000000e+00, float 2.550000e+02, float 1.280000e+02, float 2.550000e+02>, ptr %i.a, align 4, !tbaa !57
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.c, %bb.a
  %.017 = phi i32 [ 0, %bb.a ], [ 1, %bb.c ], [ 1, %.preheader ]
  ret i32 %.017
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @TIFFGetFieldDefaulted(ptr noundef %0, i32 noundef %1, ...) local_unnamed_addr #0 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.a = call i32 @TIFFVGetFieldDefaulted(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2)
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret i32 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef float @_TIFFClampDoubleToFloat(double noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = fcmp ogt double %0, f0x47EFFFFFE0000000
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp olt double %0, f0xC7EFFFFFE0000000
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = fptrunc double %0 to float
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi float [ %i.c, %bb.c ], [ f0x7F7FFFFF, %bb.a ], [ f0xFF7FFFFF, %bb.b ]
  ret float %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i32 @_TIFFClampDoubleToUInt32(double noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = fcmp olt double %0, 0.000000e+00
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp ogt double %0, f0x41EFFFFFFFE00000
  %i.c = fcmp uno double %0, 0.000000e+00
  %or.cond = or i1 %i.b, %i.c
  %i.d = fptoui double %0 to i32
  %spec.select = select i1 %or.cond, i32 -1, i32 %i.d
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %spec.select, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @_TIFFSeekOK(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i64 %1, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !59
  %i.f = tail call i64 %i.c(ptr noundef %i.e, i64 noundef %1, i32 noundef 0) #8
  %i.g = icmp eq i64 %i.f, %1
  %i.h = zext i1 %i.g to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = phi i32 [ 0, %bb.a ], [ %i.h, %bb.b ]
  ret i32 %i.i
}

declare ptr @_TIFFmallocExt(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #6

declare void @_TIFFmemcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_TIFFfreeExt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"tiff", !9, i64 0, !4, i64 8, !4, i64 12, !4, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !12, i64 48, !12, i64 56, !4, i64 64, !13, i64 72, !13, i64 448, !5, i64 824, !14, i64 840, !4, i64 844, !4, i64 848, !4, i64 852, !4, i64 856, !11, i64 864, !11, i64 872, !11, i64 880, !14, i64 888, !11, i64 896, !4, i64 904, !4, i64 908, !11, i64 912, !4, i64 920, !10, i64 928, !10, i64 936, !10, i64 944, !10, i64 952, !4, i64 960, !10, i64 968, !10, i64 976, !10, i64 984, !10, i64 992, !10, i64 1000, !10, i64 1008, !10, i64 1016, !10, i64 1024, !10, i64 1032, !10, i64 1040, !10, i64 1048, !10, i64 1056, !10, i64 1064, !9, i64 1072, !11, i64 1080, !11, i64 1088, !9, i64 1096, !11, i64 1104, !11, i64 1112, !11, i64 1120, !9, i64 1128, !11, i64 1136, !9, i64 1144, !11, i64 1152, !10, i64 1160, !10, i64 1168, !10, i64 1176, !10, i64 1184, !10, i64 1192, !10, i64 1200, !10, i64 1208, !10, i64 1216, !10, i64 1224, !21, i64 1232, !11, i64 1240, !23, i64 1248, !24, i64 1256, !25, i64 1280, !26, i64 1288, !11, i64 1296, !10, i64 1304, !10, i64 1312, !10, i64 1320, !10, i64 1328, !11, i64 1336, !11, i64 1344, !11, i64 1352, !4, i64 1360}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"p1 _ZTS12_TIFFHashSet", !10, i64 0}
!13 = !{!"", !5, i64 0, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !14, i64 44, !14, i64 46, !14, i64 48, !14, i64 50, !14, i64 52, !14, i64 54, !14, i64 56, !14, i64 58, !4, i64 60, !14, i64 64, !14, i64 66, !15, i64 72, !15, i64 80, !16, i64 88, !16, i64 92, !14, i64 96, !14, i64 98, !16, i64 100, !16, i64 104, !5, i64 108, !5, i64 112, !5, i64 136, !14, i64 140, !17, i64 144, !4, i64 152, !4, i64 156, !18, i64 160, !18, i64 168, !4, i64 176, !19, i64 184, !19, i64 216, !14, i64 248, !18, i64 256, !5, i64 264, !14, i64 268, !5, i64 272, !20, i64 296, !4, i64 304, !9, i64 312, !14, i64 320, !4, i64 324, !10, i64 328, !5, i64 336, !5, i64 337, !11, i64 344, !11, i64 352, !4, i64 360, !10, i64 368}
!14 = !{!"short", !5, i64 0}
!15 = !{!"p1 double", !10, i64 0}
!16 = !{!"float", !5, i64 0}
!17 = !{!"p1 short", !10, i64 0}
!18 = !{!"p1 long", !10, i64 0}
!19 = !{!"", !14, i64 0, !14, i64 2, !11, i64 8, !5, i64 16, !5, i64 24}
!20 = !{!"p1 float", !10, i64 0}
!21 = !{!"p2 _ZTS10_TIFFField", !22, i64 0}
!22 = !{!"any p2 pointer", !10, i64 0}
!23 = !{!"p1 _ZTS10_TIFFField", !10, i64 0}
!24 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16}
!25 = !{!"p1 _ZTS11client_info", !10, i64 0}
!26 = !{!"p1 _ZTS15_TIFFFieldArray", !10, i64 0}
!27 = !{!13, !4, i64 40}
!28 = !{!29, !29, i64 0}
!29 = !{!"p1 int", !10, i64 0}
!30 = !{!13, !14, i64 44}
!31 = !{!17, !17, i64 0}
!32 = !{!14, !14, i64 0}
!33 = !{!13, !14, i64 52}
!34 = !{!13, !14, i64 54}
!35 = !{!13, !14, i64 56}
!36 = !{!13, !14, i64 58}
!37 = !{!13, !4, i64 60}
!38 = !{!13, !14, i64 64}
!39 = !{!13, !14, i64 98}
!40 = !{!13, !14, i64 96}
!41 = !{!8, !9, i64 1072}
!42 = !{!43, !4, i64 0}
!43 = !{!"", !4, i64 0, !11, i64 8, !11, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120}
!44 = !{!13, !14, i64 140}
!45 = !{!13, !17, i64 144}
!46 = !{!47, !47, i64 0}
!47 = !{!"p2 short", !22, i64 0}
!48 = !{!13, !4, i64 36}
!49 = !{!13, !14, i64 46}
!50 = !{!13, !4, i64 24}
!51 = !{!52, !52, i64 0}
!52 = !{!"p2 float", !22, i64 0}
!53 = !{!20, !20, i64 0}
!54 = !{!13, !14, i64 268}
!55 = !{!13, !20, i64 296}
!56 = !{!13, !14, i64 50}
!57 = !{!16, !16, i64 0}
!58 = !{!8, !10, i64 1200}
!59 = !{!8, !10, i64 1176}
end_hunk_0
