Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/uconv?download=true
inline.NumInlined: 116
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN11ConvertFile11convertFileEPKcS1_PFvPKvP23UConverterToUnicodeArgsS1_i24UConverterCallbackReasonP10UErrorCodeES3_S1_PFvS3_P25UConverterFromUnicodeArgsPKDsiiS6_S8_ES3_aS1_S1_P8_IO_FILEi:bb.a
bb.fj:                                            ; preds = %bb.hc, %_ZNK6icu_7813UnicodeString9getBufferEv.exit323
  %.2211 = phi i32 [ %.1210, %_ZNK6icu_7813UnicodeString9getBufferEv.exit323 ], [ %i.sa, %bb.hc ] ; 2 uses
  %.2161 = phi i8 [ %.1160, %_ZNK6icu_7813UnicodeString9getBufferEv.exit323 ], [ 0, %bb.hc ] ; 2 uses
  %i.ni = load ptr, ptr %i.em, align 8, !tbaa !29 ; 2 uses
  store ptr %i.ni, ptr %i.n, align 8, !tbaa !24
  %i.nj = load i64, ptr %i.ee, align 8, !tbaa !23
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.nj
  invoke void @ucnv_fromUnicode_78(ptr noundef %i.dm, ptr noundef nonnull %i.n, ptr noundef %i.nk, ptr noundef nonnull %i.o, ptr noundef %i.nd, ptr noundef null, i8 noundef signext %i.nf, ptr noundef nonnull %i.l)
          to label %bb.fk unwind label %.loopexit379

bb.fk:                                            ; preds = %bb.fj
  %i.nl = load i32, ptr %i.l, align 4, !tbaa !10  ; 3 uses
  %i.nm = icmp sgt i32 %i.nl, 0
  %i.nn = icmp eq i32 %i.nl, 15
  br i1 %i.nn, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  store i32 0, ptr %i.l, align 4, !tbaa !10
  br label %bb.gt

bb.fm:                                            ; preds = %bb.fk
  %i.no = icmp slt i32 %i.nl, 1
  br i1 %i.no, label %bb.gt, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #18
  store i32 0, ptr %i.z, align 4, !tbaa !10
  store i8 4, ptr %i.y, align 1, !tbaa !11
  invoke void @ucnv_getInvalidUChars_78(ptr noundef %i.dm, ptr noundef nonnull %i.w, ptr noundef nonnull %i.y, ptr noundef nonnull %i.z)
          to label %bb.fo unwind label %bb.fq

bb.fo:                                            ; preds = %bb.fn
  %i.np = load i32, ptr %i.z, align 4, !tbaa !10
  %i.nq = icmp sgt i32 %i.np, 0
  %i.nr = load i8, ptr %i.y, align 1              ; 2 uses
  %i.ns = icmp eq i8 %i.nr, 0
  %or.cond11 = select i1 %i.nq, i1 true, i1 %i.ns
  br i1 %or.cond11, label %bb.fp, label %bb.fr

bb.fp:                                            ; preds = %bb.fo
  store i8 1, ptr %i.y, align 1, !tbaa !11
  br label %bb.fr

bb.fq:                                            ; preds = %bb.fn
  %i.nt = landingpad { ptr, i32 }
          cleanup
  br label %bb.gs

bb.fr:                                            ; preds = %bb.fo, %bb.fp
  %i.nu = phi i8 [ %i.nr, %bb.fo ], [ 1, %bb.fp ]
  br i1 %.not251, label %bb.fu, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.nv = load ptr, ptr %i.o, align 8, !tbaa !25
  %i.nw = ptrtoint ptr %i.nv to i64
  %i.nx = sub i64 %i.nw, %i.ng
  %i.ny = lshr exact i64 %i.nx, 1
  %i.nz = sext i8 %i.nu to i64
  %i.oa = sub i64 %i.ny, %i.nz
  %i.ob = trunc i64 %i.oa to i32
  %spec.store.select = call i32 @llvm.smax.i32(i32 %i.ob, i32 0)
  %i.oc = load ptr, ptr %i.ef, align 8, !tbaa !26
  br label %bb.ft

bb.ft:                                            ; preds = %bb.ft, %bb.fs
  %.0 = phi i32 [ %spec.store.select, %bb.fs ], [ %i.oh, %bb.ft ] ; 3 uses
  %i.od = zext nneg i32 %.0 to i64
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.oc, i64 %i.od
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !12 ; 2 uses
  %i.og = icmp slt i32 %i.of, 0
  %i.oh = add nsw i32 %.0, -1
  %i.oi = icmp ne i32 %.0, 0
  %or.cond295 = and i1 %i.oi, %i.og
  br i1 %or.cond295, label %bb.ft, label %.critedge, !llvm.loop !37

.critedge:                                        ; preds = %bb.ft
  %i.oj = load ptr, ptr %0, align 8, !tbaa !22
  %i.ok = ptrtoint ptr %i.oj to i64
  %i.ol = sub i64 %i.nh, %i.ok
  %i.om = trunc i64 %i.ol to i32
  %i.on = add i32 %i.of, %i.ep
  %i.oo = add i32 %i.on, %i.om
  br label %bb.fv

bb.fu:                                            ; preds = %bb.fr
  %i.op = load ptr, ptr %i.n, align 8, !tbaa !24
  %i.oq = load ptr, ptr %i.em, align 8, !tbaa !29
  %i.or = ptrtoint ptr %i.op to i64
  %i.os = ptrtoint ptr %i.oq to i64
  %i.ot = sub i64 %i.or, %i.os
  %i.ou = trunc i64 %i.ot to i32
  %i.ov = add i32 %.2211, %i.ou
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %.critedge
  %.0151 = phi ptr [ @.str.14, %.critedge ], [ @.str.15, %bb.fu ]
  %.1 = phi i32 [ %i.oo, %.critedge ], [ %i.ov, %bb.fu ]
  %i.ow = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.x, i64 noundef 32, ptr noundef nonnull @.str.16, i32 noundef %.1) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #18
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %29, align 8, !tbaa !42
  store i16 2, ptr %i.en, align 8, !tbaa !11
  %i.ox = load i8, ptr %i.y, align 1, !tbaa !11   ; 2 uses
  %i.oy = icmp sgt i8 %i.ox, 0
  br i1 %i.oy, label %.lr.ph411, label %._crit_edge412

.lr.ph411:                                        ; preds = %bb.fv, %_ZN6icu_7813UnicodeString6appendEDs.exit349
  %i.oz = phi i8 [ %i.rf, %_ZN6icu_7813UnicodeString6appendEDs.exit349 ], [ %i.ox, %bb.fv ]
  %.0147409 = phi i8 [ %.2362367, %_ZN6icu_7813UnicodeString6appendEDs.exit349 ], [ 0, %bb.fv ] ; 4 uses
  %i.pa = icmp sgt i8 %.0147409, 0
  br i1 %i.pa, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %.lr.ph411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i16 32, ptr %i.g, align 2, !tbaa !50
  %i.pb = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %29, ptr noundef nonnull %i.g, i32 noundef 0, i32 noundef 1)
          to label %_ZN6icu_7813UnicodeString6appendEDs.exit325 unwind label %.loopexit ; 0 uses

_ZN6icu_7813UnicodeString6appendEDs.exit325:      ; preds = %bb.fw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.pre430 = load i8, ptr %i.y, align 1
  br label %bb.fx

.loopexit:                                        ; preds = %bb.fw, %bb.ga, %bb.gb, %bb.gc, %bb.gd, %bb.ge, %bb.gf
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.gr

.loopexit.split-lp:                               ; preds = %._crit_edge412, %bb.gl, %bb.gm
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.gr

bb.fx:                                            ; preds = %_ZN6icu_7813UnicodeString6appendEDs.exit325, %.lr.ph411
  %i.pc = phi i8 [ %.pre430, %_ZN6icu_7813UnicodeString6appendEDs.exit325 ], [ %i.oz, %.lr.ph411 ]
  %i.pd = add nsw i8 %.0147409, 1                 ; 4 uses
  %i.pe = sext i8 %.0147409 to i64
  %i.pf = getelementptr inbounds [2 x i8], ptr %i.w, i64 %i.pe
  %i.pg = load i16, ptr %i.pf, align 2, !tbaa !50
  %i.ph = zext i16 %i.pg to i32                   ; 4 uses
  %i.pi = and i32 %i.ph, 64512
  %i.pj = icmp ne i32 %i.pi, 55296
  %.not270 = icmp eq i8 %i.pd, %i.pc
  %or.cond296 = select i1 %i.pj, i1 true, i1 %.not270
  br i1 %or.cond296, label %bb.gc, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.pk = sext i8 %i.pd to i64
  %i.pl = getelementptr inbounds [2 x i8], ptr %i.w, i64 %i.pk
  %i.pm = load i16, ptr %i.pl, align 2, !tbaa !50
  %i.pn = zext i16 %i.pm to i32                   ; 2 uses
  %i.po = and i32 %i.pn, 64512
  %i.pp = icmp eq i32 %i.po, 56320
  br i1 %i.pp, label %bb.fz, label %bb.gc

bb.fz:                                            ; preds = %bb.fy
  %i.pq = add i8 %.0147409, 2
  %i.pr = shl nuw nsw i32 %i.ph, 10
  %i.ps = add nuw nsw i32 %i.pr, %i.pn            ; 3 uses
  %i.pt = add nsw i32 %i.ps, -56613888            ; 3 uses
  %i.pu = icmp samesign ugt i32 %i.ps, 57662463
  br i1 %i.pu, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  %i.pv = lshr i32 %i.pt, 20
  %i.pw = trunc nuw nsw i32 %i.pv to i16          ; 2 uses
  %i.px = icmp samesign ult i32 %i.ps, 67099648
  %i.py = or i16 %i.pw, 48
  %narrow.i326 = add nuw nsw i16 %i.pw, 87
  %.v.i327 = select i1 %i.px, i16 %i.py, i16 %narrow.i326
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i16 %.v.i327, ptr %i.f, align 2, !tbaa !50
  %i.pz = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %29, ptr noundef nonnull %i.f, i32 noundef 0, i32 noundef 1)
          to label %_ZN6icu_7813UnicodeString6appendEDs.exit329 unwind label %.loopexit ; 0 uses

_ZN6icu_7813UnicodeString6appendEDs.exit329:      ; preds = %bb.ga
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.gb

bb.gb:                                            ; preds = %_ZN6icu_7813UnicodeString6appendEDs.exit329, %bb.fz
  %i.qa = lshr i32 %i.pt, 16
  %i.qb = trunc nuw i32 %i.qa to i8
  %i.qc = and i8 %i.qb, 15                        ; 3 uses
  %i.qd = icmp samesign ult i8 %i.qc, 10
  %i.qe = or disjoint i8 %i.qc, 48
  %narrow.i330 = add nuw nsw i8 %i.qc, 87
  %.v.i331 = select i1 %i.qd, i8 %i.qe, i8 %narrow.i330
  %i.qf = zext nneg i8 %.v.i331 to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i16 %i.qf, ptr %i.e, align 2, !tbaa !50
  %i.qg = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %29, ptr noundef nonnull %i.e, i32 noundef 0, i32 noundef 1)
          to label %_ZN6icu_7813UnicodeString6appendEDs.exit333 unwind label %.loopexit ; 0 uses

_ZN6icu_7813UnicodeString6appendEDs.exit333:      ; preds = %bb.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.gc

bb.gc:                                            ; preds = %bb.fy, %bb.fx, %_ZN6icu_7813UnicodeString6appendEDs.exit333
  %.1150361369 = phi i32 [ %i.pt, %_ZN6icu_7813UnicodeString6appendEDs.exit333 ], [ %i.ph, %bb.fx ], [ %i.ph, %bb.fy ] ; 4 uses
  %.2362367 = phi i8 [ %i.pq, %_ZN6icu_7813UnicodeString6appendEDs.exit333 ], [ %i.pd, %bb.fx ], [ %i.pd, %bb.fy ] ; 2 uses
  %i.qh = lshr i32 %.1150361369, 12
  %i.qi = trunc i32 %i.qh to i8
  %i.qj = and i8 %i.qi, 15                        ; 3 uses
  %i.qk = icmp samesign ult i8 %i.qj, 10
  %i.ql = or disjoint i8 %i.qj, 48
  %narrow.i334 = add nuw nsw i8 %i.qj, 87
  %.v.i335 = select i1 %i.qk, i8 %i.ql, i8 %narrow.i334
  %i.qm = zext nneg i8 %.v.i335 to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i16 %i.qm, ptr %i.d, align 2, !tbaa !50
  %i.qn = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %29, ptr noundef nonnull %i.d, i32 noundef 0, i32 noundef 1)
          to label %bb.gd unwind label %.loopexit ; 0 uses

bb.gd:                                            ; preds = %bb.gc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.qo = lshr i32 %.1150361369, 8
  %i.qp = trunc i32 %i.qo to i8
  %i.qq = and i8 %i.qp, 15                        ; 3 uses
  %i.qr = icmp samesign ult i8 %i.qq, 10
  %i.qs = or disjoint i8 %i.qq, 48
  %narrow.i338 = add nuw nsw i8 %i.qq, 87
  %.v.i339 = select i1 %i.qr, i8 %i.qs, i8 %narrow.i338
  %i.qt = zext nneg i8 %.v.i339 to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i16 %i.qt, ptr %i.c, align 2, !tbaa !50
  %i.qu = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %29, ptr noundef nonnull %i.c, i32 noundef 0, i32 noundef 1)
          to label %bb.ge unwind label %.loopexit ; 0 uses

bb.ge:                                            ; preds = %bb.gd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %32 = lshr i32 %.1150361369, 4
  %i.qv = trunc i32 %32 to i8
  %33 = and i8 %i.qv, 15                          ; 3 uses
  %i.qw = icmp samesign ult i8 %33, 10
  %i.qx = or disjoint i8 %33, 48
  %narrow.i342 = add nuw nsw i8 %33, 87
  %.v.i343 = select i1 %i.qw, i8 %i.qx, i8 %narrow.i342
  %i.qy = zext nneg i8 %.v.i343 to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 %i.qy, ptr %i.b, align 2, !tbaa !50
  %i.qz = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %29, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 1)
          to label %bb.gf unwind label %.loopexit ; 0 uses

bb.gf:                                            ; preds = %bb.ge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %34 = trunc i32 %.1150361369 to i8
  %i.ra = and i8 %34, 15                          ; 3 uses
  %i.rb = icmp samesign ult i8 %i.ra, 10
  %i.rc = or disjoint i8 %i.ra, 48
  %narrow.i346 = add nuw nsw i8 %i.ra, 87
  %.v.i347 = select i1 %i.rb, i8 %i.rc, i8 %narrow.i346
  %i.rd = zext nneg i8 %.v.i347 to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.rd, ptr %i.a, align 2, !tbaa !50
  %i.re = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %29, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1)
          to label %_ZN6icu_7813UnicodeString6appendEDs.exit349 unwind label %.loopexit ; 0 uses

_ZN6icu_7813UnicodeString6appendEDs.exit349:      ; preds = %bb.gf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.rf = load i8, ptr %i.y, align 1, !tbaa !11   ; 2 uses
  %i.rg = icmp slt i8 %.2362367, %i.rf
  br i1 %i.rg, label %.lr.ph411, label %._crit_edge412

._crit_edge412:                                   ; preds = %_ZN6icu_7813UnicodeString6appendEDs.exit349, %bb.fv
  invoke fastcc void @_ZL7initMsgPKc(ptr noundef %1)
          to label %bb.gg unwind label %.loopexit.split-lp

bb.gg:                                            ; preds = %._crit_edge412
  %i.rh = load ptr, ptr @stderr, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #18
  %sext267 = shl i32 %i.ow, 24
  %i.ri = ashr exact i32 %sext267, 24
  invoke void @_ZN6icu_7813UnicodeStringC1EPKciS2_(ptr noundef nonnull align 8 dereferenceable(64) %30, ptr noundef nonnull %i.x, i32 noundef %i.ri, ptr noundef nonnull @.str.2)
          to label %bb.gh unwind label %bb.go

bb.gh:                                            ; preds = %bb.gg
  %i.rj = invoke noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %30)
          to label %bb.gi unwind label %bb.gp

bb.gi:                                            ; preds = %bb.gh
  %i.rk = invoke noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %29)
          to label %bb.gj unwind label %bb.gp

bb.gj:                                            ; preds = %bb.gi
  %i.rl = load i32, ptr %i.l, align 4, !tbaa !10
  %i.rm = invoke ptr @u_wmsg_errorName(i32 noundef %i.rl)
          to label %bb.gk unwind label %bb.gp

bb.gk:                                            ; preds = %bb.gj
  %i.rn = invoke i32 (ptr, ptr, ...) @u_wmsg(ptr noundef %i.rh, ptr noundef nonnull %.0151, ptr noundef %i.rj, ptr noundef %i.rk, ptr noundef %i.rm)
          to label %bb.gl unwind label %bb.gp     ; 0 uses

bb.gl:                                            ; preds = %bb.gk
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %30) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #18
  %i.ro = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.rp = invoke noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %29)
          to label %bb.gm unwind label %.loopexit.split-lp

bb.gm:                                            ; preds = %bb.gl
  %i.rq = invoke i32 (ptr, ptr, ...) @u_wmsg(ptr noundef %i.ro, ptr noundef nonnull @.str.17, ptr noundef %i.rp)
          to label %bb.gn unwind label %.loopexit.split-lp ; 0 uses

bb.gn:                                            ; preds = %bb.gm
  store i32 0, ptr %i.l, align 4, !tbaa !10
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %29) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #18
  br label %bb.gt

bb.go:                                            ; preds = %bb.gg
  %i.rr = landingpad { ptr, i32 }
          cleanup
  br label %bb.gq

bb.gp:                                            ; preds = %bb.gk, %bb.gj, %bb.gi, %bb.gh
  %i.rs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %30) #18
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %bb.go
  %.pn268 = phi { ptr, i32 } [ %i.rs, %bb.gp ], [ %i.rr, %bb.go ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #18
  br label %bb.gr

bb.gr:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.gq
  %.pn271 = phi { ptr, i32 } [ %.pn268, %bb.gq ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %29) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #18
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.fq
  %.pn271.pn.pn = phi { ptr, i32 } [ %.pn271, %bb.gr ], [ %i.nt, %bb.fq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #18
  br label %.loopexit.split-lp380

bb.gt:                                            ; preds = %bb.fm, %bb.gn, %bb.fl
  %.3162 = phi i8 [ %.2161, %bb.fl ], [ 1, %bb.gn ], [ %.2161, %bb.fm ]
  %i.rt = load ptr, ptr %i.n, align 8, !tbaa !24
  %i.ru = load ptr, ptr %i.em, align 8, !tbaa !29 ; 2 uses
  %i.rv = ptrtoint ptr %i.rt to i64
  %i.rw = ptrtoint ptr %i.ru to i64
  %i.rx = sub i64 %i.rv, %i.rw                    ; 2 uses
  %i.ry = call i64 @fwrite(ptr noundef %i.ru, i64 noundef 1, i64 noundef %i.rx, ptr noundef %11) ; 2 uses
  %i.rz = trunc i64 %i.ry to i32
  %i.sa = add i32 %.2211, %i.rz                   ; 2 uses
  %.not275 = icmp eq i64 %i.ry, %i.rx
  br i1 %.not275, label %bb.hb, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #18
  %i.sb = tail call ptr @__errno_location() #19
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !12
  %i.sd = call ptr @strerror(i32 noundef %i.sc) #18
  invoke void @_ZN6icu_7813UnicodeStringC1EPKc(ptr noundef nonnull align 8 dereferenceable(64) %31, ptr noundef %i.sd)
          to label %bb.gv unwind label %bb.gy

bb.gv:                                            ; preds = %bb.gu
  invoke fastcc void @_ZL7initMsgPKc(ptr noundef %1)
          to label %bb.gw unwind label %bb.gz

bb.gw:                                            ; preds = %bb.gv
  %i.se = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.sf = invoke noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %31)
          to label %bb.gx unwind label %bb.gz

bb.gx:                                            ; preds = %bb.gw
  %i.sg = invoke i32 (ptr, ptr, ...) @u_wmsg(ptr noundef %i.se, ptr noundef nonnull @.str.18, ptr noundef %i.sf)
          to label %.thread371 unwind label %bb.gz ; 0 uses

.thread371:                                       ; preds = %bb.gx
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %31) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #18
  br label %.loopexit384

bb.gy:                                            ; preds = %bb.gu
  %i.sh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ha

bb.gz:                                            ; preds = %bb.gx, %bb.gw, %bb.gv
  %i.si = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %31) #18
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %bb.gy
  %.pn276 = phi { ptr, i32 } [ %i.si, %bb.gz ], [ %i.sh, %bb.gy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #18
  br label %.loopexit.split-lp380

bb.hb:                                            ; preds = %bb.gt
  %.not278 = icmp eq i8 %.3162, 0
  br i1 %.not278, label %bb.hc, label %.loopexit384

bb.hc:                                            ; preds = %bb.hb
  br i1 %i.nm, label %bb.fj, label %.loopexit385, !llvm.loop !38

.loopexit385:                                     ; preds = %bb.hc, %bb.ef
  %.3212 = phi i32 [ %.1210, %bb.ef ], [ %i.sa, %bb.hc ] ; 2 uses
  %.5 = phi i8 [ %.1160, %bb.ef ], [ 0, %bb.hc ]
  %.4 = phi i8 [ %.1155, %bb.ef ], [ 0, %bb.hc ]  ; 2 uses
  br i1 %i.gb, label %bb.hd, label %bb.dd, !llvm.loop !39

bb.hd:                                            ; preds = %.loopexit385
  br i1 %i.fe, label %.loopexit384, label %bb.ct, !llvm.loop !40

.loopexit384:                                     ; preds = %bb.hd, %bb.hb, %.thread371, %bb.ca, %bb.cq, %bb.bs, %bb.ci, %bb.cy, %bb.bi
  %.0219 = phi i8 [ 0, %bb.hb ], [ 0, %bb.bi ], [ 0, %bb.cy ], [ 0, %bb.ci ], [ 0, %bb.bs ], [ 0, %bb.cq ], [ 0, %bb.ca ], [ 0, %.thread371 ], [ 1, %bb.hd ] ; 2 uses
  %.1218 = phi ptr [ %i.cw, %bb.hb ], [ null, %bb.bi ], [ %i.cw, %bb.cy ], [ %i.cw, %bb.ci ], [ %i.cw, %bb.bs ], [ %i.cw, %bb.cq ], [ %i.cw, %bb.ca ], [ %i.cw, %.thread371 ], [ %i.cw, %bb.hd ]
  %.1216 = phi ptr [ %i.dm, %bb.hb ], [ null, %bb.bi ], [ %i.dm, %bb.cy ], [ %i.dm, %bb.ci ], [ null, %bb.bs ], [ %i.dm, %bb.cq ], [ null, %bb.ca ], [ %i.dm, %.thread371 ], [ %i.dm, %bb.hd ]
  %.5207 = phi ptr [ %.3205, %bb.hb ], [ %.2204, %bb.bi ], [ %.3205, %bb.cy ], [ %.3205, %bb.ci ], [ %.3205, %bb.bs ], [ %.3205, %bb.cq ], [ %.3205, %bb.ca ], [ %.3205, %.thread371 ], [ %.3205, %bb.hd ] ; 3 uses
  invoke void @ucnv_close_78(ptr noundef %.1218)
          to label %bb.he unwind label %.loopexit.split-lp380.loopexit.split-lp

bb.he:                                            ; preds = %.loopexit384
  invoke void @ucnv_close_78(ptr noundef %.1216)
          to label %bb.hf unwind label %.loopexit.split-lp380.loopexit.split-lp

bb.hf:                                            ; preds = %bb.he
  %i.sj = icmp eq ptr %.5207, null
  br i1 %i.sj, label %bb.hh, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.sk = load ptr, ptr %.5207, align 8, !tbaa !42
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 8
  %i.sm = load ptr, ptr %i.sl, align 8
  call void %i.sm(ptr noundef nonnull align 8 dereferenceable(84) %.5207) #18
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %bb.hf
  br i1 %.not287, label %bb.hj, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.sn = call i32 @fclose(ptr noundef %.0220)    ; 0 uses
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hh, %bb.hi, %bb.n
  %.0157 = phi i8 [ 0, %bb.n ], [ %.0219, %bb.hh ], [ %.0219, %bb.hi ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %14) #18
end_hunk_0
