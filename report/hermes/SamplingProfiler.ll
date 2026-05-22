inline.NumInlined: 740
inline.NumDeleted: 441
begin_hunk_0_@_ZN6hermes2vm16SamplingProfiler16dumpSampledStackERN4llvh11raw_ostreamE:bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 256
  br label %bb.i

._crit_edge67:                                    ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit44, %_ZN4llvh11raw_ostreamlsEPKc.exit29
  %i.ax = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #19 ; 0 uses
  ret void

bb.i:                                             ; preds = %.lr.ph66, %_ZN4llvh11raw_ostreamlsEPKc.exit44
  %i.ay = phi ptr [ %i.as, %.lr.ph66 ], [ %i.dg, %_ZN4llvh11raw_ostreamlsEPKc.exit44 ]
  %i.az = phi i64 [ 0, %.lr.ph66 ], [ %i.de, %_ZN4llvh11raw_ostreamlsEPKc.exit44 ] ; 2 uses
  %.065 = phi i32 [ 0, %.lr.ph66 ], [ %i.dd, %_ZN4llvh11raw_ostreamlsEPKc.exit44 ]
  %i.ba = getelementptr inbounds nuw [40 x i8], ptr %i.ay, i64 %i.az ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.bb, align 8, !tbaa !311
  %i.bc = load ptr, ptr %i.d, align 8, !tbaa !373
  %i.bd = load ptr, ptr %i.f, align 8, !tbaa !376 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bf = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.3, i64 noundef 1) #19
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit32

bb.k:                                             ; preds = %bb.i
  store i8 91, ptr %i.bd, align 1
  %i.bg = load ptr, ptr %i.f, align 8, !tbaa !376
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  store ptr %i.bh, ptr %i.f, align 8, !tbaa !376
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit32

_ZN4llvh11raw_ostreamlsEPKc.exit32:               ; preds = %bb.j, %bb.k
  %.0.i.i31 = phi ptr [ %i.bf, %bb.j ], [ %1, %bb.k ]
  %i.bi = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i31, i64 noundef %i.az) #19 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !373
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 24 ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !376 ; 2 uses
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = icmp ult i64 %i.bp, 7
  br i1 %i.bq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit32
  %i.br = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.bi, ptr noundef nonnull @.str.4, i64 noundef 7) #19
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit35

bb.m:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.bm, ptr noundef nonnull align 1 dereferenceable(7) @.str.4, i64 7, i1 false)
  %i.bs = load ptr, ptr %i.bl, align 8, !tbaa !376
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 7
  store ptr %i.bt, ptr %i.bl, align 8, !tbaa !376
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit35

_ZN4llvh11raw_ostreamlsEPKc.exit35:               ; preds = %bb.l, %bb.m
  %.0.i.i34 = phi ptr [ %i.br, %bb.l ], [ %i.bi, %bb.m ]
  %i.bu = load i64, ptr %i.ba, align 8, !tbaa !356
  %i.bv = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i34, i64 noundef %i.bu) #19 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !373
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 24 ; 3 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !376 ; 2 uses
  %i.ca = ptrtoint ptr %i.bx to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = icmp ult i64 %i.cc, 6
  br i1 %i.cd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit35
  %i.ce = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.bv, ptr noundef nonnull @.str.5, i64 noundef 6) #19
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit38

bb.o:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.bz, ptr noundef nonnull align 1 dereferenceable(6) @.str.5, i64 6, i1 false)
  %i.cf = load ptr, ptr %i.by, align 8, !tbaa !376
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 6
  store ptr %i.cg, ptr %i.by, align 8, !tbaa !376
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit38

_ZN4llvh11raw_ostreamlsEPKc.exit38:               ; preds = %bb.n, %bb.o
  %.0.i.i37 = phi ptr [ %i.ce, %bb.n ], [ %i.bv, %bb.o ]
  %i.ch = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i37, i64 noundef %.sroa.0.0.copyload.i) #19 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !373
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 24 ; 3 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !376 ; 2 uses
  %i.cm = ptrtoint ptr %i.cj to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = icmp ult i64 %i.co, 2
  br i1 %i.cp, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit38
  %i.cq = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ch, ptr noundef nonnull @.str.6, i64 noundef 2) #19 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit41

bb.q:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit38
  store i16 8285, ptr %i.cl, align 1
  %i.cr = load ptr, ptr %i.ck, align 8, !tbaa !376
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 2
  store ptr %i.cs, ptr %i.ck, align 8, !tbaa !376
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit41

_ZN4llvh11raw_ostreamlsEPKc.exit41:               ; preds = %bb.p, %bb.q
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !379, !noalias !380 ; 2 uses
  %i.cw = load ptr, ptr %i.ct, align 8, !tbaa !379, !noalias !383
  %.not63 = icmp eq ptr %i.cv, %i.cw
  br i1 %.not63, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit59, %_ZN4llvh11raw_ostreamlsEPKc.exit41
  %i.cx = load ptr, ptr %i.d, align 8, !tbaa !373
  %i.cy = load ptr, ptr %i.f, align 8, !tbaa !376 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge
  %i.da = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.12, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit44

bb.s:                                             ; preds = %._crit_edge
  store i8 10, ptr %i.cy, align 1
  %i.db = load ptr, ptr %i.f, align 8, !tbaa !376
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 1
  store ptr %i.dc, ptr %i.f, align 8, !tbaa !376
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit44

_ZN4llvh11raw_ostreamlsEPKc.exit44:               ; preds = %bb.r, %bb.s
  %i.dd = add i32 %.065, 1                        ; 2 uses
  %i.de = zext i32 %i.dd to i64                   ; 2 uses
  %i.df = load ptr, ptr %i.y, align 8, !tbaa !377
  %i.dg = load ptr, ptr %i.x, align 8, !tbaa !378 ; 2 uses
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = sdiv exact i64 %i.dj, 40
  %i.dl = icmp ugt i64 %i.dk, %i.de
  br i1 %i.dl, label %bb.i, label %._crit_edge67, !llvm.loop !386

.lr.ph:                                           ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit41, %_ZN4llvh11raw_ostreamlsEPKc.exit59
  %.sroa.060.064 = phi ptr [ %i.dm, %_ZN4llvh11raw_ostreamlsEPKc.exit59 ], [ %i.cv, %_ZN4llvh11raw_ostreamlsEPKc.exit41 ] ; 4 uses
  %i.dm = getelementptr inbounds i8, ptr %.sroa.060.064, i64 -24 ; 5 uses
  %i.dn = getelementptr inbounds i8, ptr %.sroa.060.064, i64 -8 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !312
  switch i32 %i.do, label %bb.ak [
    i32 0, label %bb.t
    i32 1, label %bb.y
    i32 2, label %bb.ab
  ]

bb.t:                                             ; preds = %.lr.ph
  %i.dp = load ptr, ptr %i.d, align 8, !tbaa !373
  %i.dq = load ptr, ptr %i.f, align 8, !tbaa !376 ; 2 uses
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = icmp ult i64 %i.dt, 5
  br i1 %i.du, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dv = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.7, i64 noundef 5) #19
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit47

bb.v:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.dq, ptr noundef nonnull align 1 dereferenceable(5) @.str.7, i64 5, i1 false)
  %i.dw = load ptr, ptr %i.f, align 8, !tbaa !376
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 5
  store ptr %i.dx, ptr %i.f, align 8, !tbaa !376
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit47

_ZN4llvh11raw_ostreamlsEPKc.exit47:               ; preds = %bb.u, %bb.v
  %.0.i.i46 = phi ptr [ %i.dv, %bb.u ], [ %1, %bb.v ]
  %i.dy = getelementptr inbounds i8, ptr %.sroa.060.064, i64 -16
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !318
  %i.ea = zext i32 %i.dz to i64
  %i.eb = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i46, i64 noundef %i.ea) #19 ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !373
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 24 ; 3 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !376 ; 2 uses
  %i.eg = icmp eq ptr %i.ed, %i.ef
  br i1 %i.eg, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit47
  %i.eh = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.eb, ptr noundef nonnull @.str.8, i64 noundef 1) #19
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit50

bb.x:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit47
  store i8 58, ptr %i.ef, align 1
  %i.ei = load ptr, ptr %i.ee, align 8, !tbaa !376
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 1
  store ptr %i.ej, ptr %i.ee, align 8, !tbaa !376
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit50

_ZN4llvh11raw_ostreamlsEPKc.exit50:               ; preds = %bb.w, %bb.x
  %.0.i.i49 = phi ptr [ %i.eh, %bb.w ], [ %i.eb, %bb.x ]
  %i.ek = getelementptr inbounds i8, ptr %.sroa.060.064, i64 -12
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !318
  %i.em = zext i32 %i.el to i64
  br label %.sink.split

bb.y:                                             ; preds = %.lr.ph
  %i.en = load i64, ptr %i.dm, align 8, !tbaa !318
  %i.eo = load ptr, ptr %i.at, align 8, !tbaa !27
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.en
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !21
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 32
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !343
  %i.et = load ptr, ptr %i.d, align 8, !tbaa !373
  %i.eu = load ptr, ptr %i.f, align 8, !tbaa !376 ; 2 uses
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = sub i64 %i.ev, %i.ew
  %i.ey = icmp ult i64 %i.ex, 9
  br i1 %i.ey, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ez = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.9, i64 noundef 9) #19
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit53

bb.aa:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.eu, ptr noundef nonnull align 1 dereferenceable(9) @.str.9, i64 9, i1 false)
  %i.fa = load ptr, ptr %i.f, align 8, !tbaa !376
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 9
  store ptr %i.fb, ptr %i.f, align 8, !tbaa !376
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit53

_ZN4llvh11raw_ostreamlsEPKc.exit53:               ; preds = %bb.z, %bb.aa
  %.0.i.i52 = phi ptr [ %i.ez, %bb.z ], [ %1, %bb.aa ]
  %i.fc = ptrtoint ptr %i.es to i64
  br label %.sink.split

bb.ab:                                            ; preds = %.lr.ph
  %i.fd = load ptr, ptr %i.d, align 8, !tbaa !373
  %i.fe = load ptr, ptr %i.f, align 8, !tbaa !376 ; 2 uses
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = ptrtoint ptr %i.fe to i64
  %i.fh = sub i64 %i.ff, %i.fg
  %i.fi = icmp ult i64 %i.fh, 15
  br i1 %i.fi, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fj = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.10, i64 noundef 15) #19
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit56

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.fe, ptr noundef nonnull align 1 dereferenceable(15) @.str.10, i64 15, i1 false)
  %i.fk = load ptr, ptr %i.f, align 8, !tbaa !376
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 15
  store ptr %i.fl, ptr %i.f, align 8, !tbaa !376
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit56

_ZN4llvh11raw_ostreamlsEPKc.exit56:               ; preds = %bb.ac, %bb.ad
  %.0.i.i55 = phi ptr [ %i.fj, %bb.ac ], [ %1, %bb.ad ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !387)
  %i.fm = load i32, ptr %i.dn, align 8, !tbaa !312, !noalias !387
  %i.fn = icmp eq i32 %i.fm, 1
  br i1 %i.fn, label %bb.ae, label %.thread.i

bb.ae:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit56
  %i.fo = load i64, ptr %i.dm, align 8, !tbaa !318, !noalias !387
  %i.fp = load ptr, ptr %i.at, align 8, !tbaa !27, !noalias !387
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.fo
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !21, !noalias !387
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 32
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !343, !noalias !387
  %i.fu = call noundef ptr @_ZN6hermes2vm15getFunctionNameEPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsEE(ptr noundef %i.ft) #19, !noalias !387 ; 4 uses
  %strcmpload.i = load i8, ptr %i.fu, align 1, !noalias !387
  %.not.not.i = icmp eq i8 %strcmpload.i, 0
  br i1 %.not.not.i, label %.thread.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store ptr %i.au, ptr %2, align 8, !tbaa !390, !alias.scope !387
  %i.fv = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fu) #19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19, !noalias !387
  store i64 %i.fv, ptr %i.a, align 8, !tbaa !311, !noalias !387
  %i.fw = icmp ugt i64 %i.fv, 15
  br i1 %i.fw, label %bb.ag, label %._crit_edge.i.i.i

bb.ag:                                            ; preds = %bb.af
  %i.fx = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #19 ; 2 uses
  store ptr %i.fx, ptr %2, align 8, !tbaa !366, !alias.scope !387
  %i.fy = load i64, ptr %i.a, align 8, !tbaa !311, !noalias !387
  store i64 %i.fy, ptr %i.au, align 8, !tbaa !318, !alias.scope !387
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.ag, %bb.af
  %i.fz = phi ptr [ %i.fx, %bb.ag ], [ %i.au, %bb.af ] ; 2 uses
  switch i64 %i.fv, label %bb.ai [
    i64 1, label %bb.ah
    i64 0, label %bb.aj
  ]

bb.ah:                                            ; preds = %._crit_edge.i.i.i
  %i.ga = load i8, ptr %i.fu, align 1, !tbaa !318
  store i8 %i.ga, ptr %i.fz, align 1, !tbaa !318
  br label %bb.aj

bb.ai:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fz, ptr nonnull align 1 %i.fu, i64 %i.fv, i1 false)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %._crit_edge.i.i.i
  %i.gb = load i64, ptr %i.a, align 8, !tbaa !311, !noalias !387 ; 2 uses
  store i64 %i.gb, ptr %i.av, align 8, !tbaa !367, !alias.scope !387
  %i.gc = load ptr, ptr %2, align 8, !tbaa !366, !alias.scope !387
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gb
  store i8 0, ptr %i.gd, align 1, !tbaa !318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19, !noalias !387
  br label %_ZNK6hermes2vm16SamplingProfiler21getNativeFunctionNameB5cxx11ERKNS1_10StackFrameE.exit

.thread.i:                                        ; preds = %bb.ae, %_ZN4llvh11raw_ostreamlsEPKc.exit56
  %i.ge = load i64, ptr %i.dm, align 8, !tbaa !318, !noalias !387
  %i.gf = load ptr, ptr %i.at, align 8, !tbaa !27, !noalias !387
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %i.ge
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !21, !noalias !387
  %i.gi = load ptr, ptr %i.aw, align 8, !tbaa !32, !noalias !387, !nonnull !66, !align !67
  call void @_ZN6hermes2vm8JSObject15getNameIfExistsB5cxx11ERNS0_11PointerBaseE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 4 dereferenceable(20) %i.gh, ptr noundef nonnull align 1 dereferenceable(1) %i.gi) #19
  br label %_ZNK6hermes2vm16SamplingProfiler21getNativeFunctionNameB5cxx11ERKNS1_10StackFrameE.exit

_ZNK6hermes2vm16SamplingProfiler21getNativeFunctionNameB5cxx11ERKNS1_10StackFrameE.exit: ; preds = %bb.aj, %.thread.i
  %i.gj = load ptr, ptr %2, align 8, !tbaa !366
  %i.gk = load i64, ptr %i.av, align 8, !tbaa !367
  %i.gl = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i55, ptr noundef %i.gj, i64 noundef %i.gk) #19 ; 0 uses
  %i.gm = load ptr, ptr %2, align 8, !tbaa !366   ; 2 uses
  %i.gn = icmp eq ptr %i.gm, %i.au
  br i1 %i.gn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK6hermes2vm16SamplingProfiler21getNativeFunctionNameB5cxx11ERKNS1_10StackFrameE.exit
  %i.go = load i64, ptr %i.au, align 8, !tbaa !318
  %i.gp = add i64 %i.go, 1
  call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.gp) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK6hermes2vm16SamplingProfiler21getNativeFunctionNameB5cxx11ERKNS1_10StackFrameE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.al

bb.ak:                                            ; preds = %.lr.ph
  unreachable

.sink.split:                                      ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit50, %_ZN4llvh11raw_ostreamlsEPKc.exit53
  %.sink = phi i64 [ %i.fc, %_ZN4llvh11raw_ostreamlsEPKc.exit53 ], [ %i.em, %_ZN4llvh11raw_ostreamlsEPKc.exit50 ]
  %.0.i.i52.sink = phi ptr [ %.0.i.i52, %_ZN4llvh11raw_ostreamlsEPKc.exit53 ], [ %.0.i.i49, %_ZN4llvh11raw_ostreamlsEPKc.exit50 ]
  %3 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i52.sink, i64 noundef %.sink) #19 ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.gq = load ptr, ptr %i.d, align 8, !tbaa !373
  %i.gr = load ptr, ptr %i.f, align 8, !tbaa !376 ; 2 uses
  %i.gs = ptrtoint ptr %i.gq to i64
  %i.gt = ptrtoint ptr %i.gr to i64
  %i.gu = sub i64 %i.gs, %i.gt
  %i.gv = icmp ult i64 %i.gu, 4
  br i1 %i.gv, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.gw = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.11, i64 noundef 4) #19 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit59

bb.an:                                            ; preds = %bb.al
  store i32 540949792, ptr %i.gr, align 1
  %i.gx = load ptr, ptr %i.f, align 8, !tbaa !376
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 4
  store ptr %i.gy, ptr %i.f, align 8, !tbaa !376
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit59

_ZN4llvh11raw_ostreamlsEPKc.exit59:               ; preds = %bb.am, %bb.an
  %i.gz = load ptr, ptr %i.ct, align 8, !tbaa !379, !noalias !383
  %.not = icmp eq ptr %i.dm, %i.gz
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !391
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm16SamplingProfiler21dumpChromeTraceGlobalERN4llvh11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6hermes2vm17sampling_profiler7Sampler3getEv() #19 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #19 ; 2 uses
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.c) #16
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.e = load i64, ptr %i.d, align 8, !tbaa !369
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !371
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !372
  tail call void @_ZN6hermes2vm16SamplingProfiler15dumpChromeTraceERN4llvh11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(264) %i.j, ptr noundef nonnull align 8 dereferenceable(36) %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.k = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #19 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm16SamplingProfiler15dumpChromeTraceERN4llvh11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.hermes::vm::ChromeTraceSerializer", align 8 ; 5 uses
  %3 = alloca %"class.hermes::vm::ChromeTraceFormat", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #19 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #16
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = tail call noundef i64 @_ZN6hermes8oscompat10process_idEv() #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.d = trunc i64 %i.c to i32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @_ZN6hermes2vm17ChromeTraceFormat6createEjRKN4llvh8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_12DenseMapInfoImEENS2_6detail12DenseMapPairImS9_EEEERKSt6vectorINS0_16SamplingProfiler10StackTraceESaISK_EE(ptr dead_on_unwind nonnull writable sret(%"class.hermes::vm::ChromeTraceFormat") align 8 %3, i32 noundef %i.d, ptr noundef nonnull align 8 dereferenceable(20) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f) #19
  call void @_ZN6hermes2vm21ChromeTraceSerializerC1ERKNS0_16SamplingProfilerEONS0_17ChromeTraceFormatE(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(72) %3) #19
  call void @_ZN6hermes2vm17ChromeTraceFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @_ZNK6hermes2vm21ChromeTraceSerializer9serializeERN4llvh11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(36) %1) #19
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !378  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !377  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, %i.g
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE5clearEv.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %_ZSt8_DestroyIN6hermes2vm16SamplingProfiler10StackTraceEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.q, %_ZSt8_DestroyIN6hermes2vm16SamplingProfiler10StackTraceEEvPT_.exit.i.i.i.i.i ], [ %i.g, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !307  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6hermes2vm16SamplingProfiler10StackTraceEEvPT_.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !359
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #18
  br label %_ZSt8_DestroyIN6hermes2vm16SamplingProfiler10StackTraceEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN6hermes2vm16SamplingProfiler10StackTraceEEvPT_.exit.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.q, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN6hermes2vm16SamplingProfiler10StackTraceEEvT_S5_.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !392

_ZSt8_DestroyIPN6hermes2vm16SamplingProfiler10StackTraceEEvT_S5_.exit.i.i.i: ; preds = %_ZSt8_DestroyIN6hermes2vm16SamplingProfiler10StackTraceEEvPT_.exit.i.i.i.i.i
  store ptr %i.g, ptr %i.h, align 8, !tbaa !377
  br label %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE5clearEv.exit.i

_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE5clearEv.exit.i: ; preds = %_ZSt8_DestroyIPN6hermes2vm16SamplingProfiler10StackTraceEEvT_S5_.exit.i.i.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !18   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !17
  %.not.i.i1.i = icmp eq ptr %i.u, %i.s
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIPN6hermes2vm6DomainESaIS3_EE5clearEv.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE5clearEv.exit.i
  store ptr %i.s, ptr %i.t, align 8, !tbaa !17
  br label %_ZNSt6vectorIPN6hermes2vm6DomainESaIS3_EE5clearEv.exit.i

_ZNSt6vectorIPN6hermes2vm6DomainESaIS3_EE5clearEv.exit.i: ; preds = %bb.d, %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE5clearEv.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !27   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !26
  %.not.i.i2.i = icmp eq ptr %i.y, %i.w
  br i1 %.not.i.i2.i, label %_ZN6hermes2vm16SamplingProfiler5clearEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIPN6hermes2vm6DomainESaIS3_EE5clearEv.exit.i
  store ptr %i.w, ptr %i.x, align 8, !tbaa !26
  br label %_ZN6hermes2vm16SamplingProfiler5clearEv.exit

_ZN6hermes2vm16SamplingProfiler5clearEv.exit:     ; preds = %_ZNSt6vectorIPN6hermes2vm6DomainESaIS3_EE5clearEv.exit.i, %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @_ZN6hermes2vm17ChromeTraceFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.z) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.aa = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #19 ; 0 uses
  ret void
}

declare noundef i64 @_ZN6hermes8oscompat10process_idEv() local_unnamed_addr #3

declare void @_ZN6hermes2vm17ChromeTraceFormat6createEjRKN4llvh8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_12DenseMapInfoImEENS2_6detail12DenseMapPairImS9_EEEERKSt6vectorINS0_16SamplingProfiler10StackTraceESaISK_EE(ptr dead_on_unwind writable sret(%"class.hermes::vm::ChromeTraceFormat") align 8, i32 noundef, ptr noundef nonnull align 8 dereferenceable(20), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare void @_ZN6hermes2vm21ChromeTraceSerializerC1ERKNS0_16SamplingProfilerEONS0_17ChromeTraceFormatE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(264), ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm17ChromeTraceFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !393  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !396  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6hermes2vm17ChromeSampleEventEEvT_S4_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN6hermes2vm17ChromeSampleEventEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.v, %_ZSt8_DestroyIN6hermes2vm17ChromeSampleEventEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !397  ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6hermes2vm17ChromeSampleEventEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.g, align 8, !tbaa !398
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !400
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #19, !inline_history !401
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #19, !inline_history !401
  br label %_ZSt8_DestroyIN6hermes2vm17ChromeSampleEventEEvPT_.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !318
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 4, !tbaa !3
end_hunk_0
