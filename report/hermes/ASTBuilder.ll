inline.NumInlined: 5205
inline.NumDeleted: 970
begin_hunk_0_@_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder5buildEPKNS_6parser9JSONValueE:bb.a
  %502 = alloca %"class.llvh::Twine", align 8     ; 6 uses
  %503 = alloca %"class.llvh::Twine", align 8     ; 6 uses
  %504 = alloca %"class.llvh::Twine", align 8     ; 6 uses
  %i.mj = alloca ptr, align 8                     ; 5 uses
  %505 = alloca %"class.llvh::Twine", align 8     ; 6 uses
  %i.mk = alloca ptr, align 8                     ; 5 uses
  %506 = alloca %"class.llvh::Twine", align 8     ; 6 uses
  %i.ml = alloca ptr, align 8                     ; 5 uses
  %i.mm = alloca ptr, align 8                     ; 5 uses
  %507 = alloca %"class.llvh::Twine", align 8     ; 6 uses
  %508 = alloca %"class.llvh::Twine", align 8     ; 6 uses
  %509 = alloca %"class.llvh::Twine", align 8     ; 4 uses
  %510 = alloca %"class.llvh::Twine", align 8     ; 4 uses
  %511 = alloca %"class.llvh::Twine", align 8     ; 6 uses
  %512 = alloca %"class.llvh::Twine", align 8     ; 6 uses
  %513 = alloca %"class.llvh::Twine", align 8     ; 6 uses
  %i.mn = load i32, ptr %1, align 4, !tbaa !81
  switch i32 %i.mn, label %bb.d [
    i32 5, label %bb.b
    i32 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.mo = load ptr, ptr %0, align 8, !tbaa !84, !nonnull !75, !align !76 ; 3 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 24
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !85 ; 2 uses
  %i.mr = load i32, ptr %i.mq, align 8, !tbaa !86
  %i.ms = zext i32 %i.mr to i64
  %i.mt = load ptr, ptr %i.mo, align 8, !tbaa !93
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.mt, i64 %i.ms
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !94
  %i.mw = ptrtoint ptr %i.mv to i64               ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mq, i64 8 ; 3 uses
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !96 ; 2 uses
  %i.mz = add i64 %i.mw, 7
  %i.na = add i64 %i.mz, %i.my
  %i.nb = and i64 %i.na, 7
  %.neg7216 = add i64 %i.my, 7
  %i.nc = sub i64 %.neg7216, %i.nb                ; 3 uses
  store i64 %i.nc, ptr %i.mx, align 8, !tbaa !96
  %i.nd = add i64 %i.nc, 48                       ; 2 uses
  %i.ne = icmp ugt i64 %i.nd, 262144
  br i1 %i.ne, label %.critedge.i.i.i, label %bb.c, !prof !97

.critedge.i.i.i:                                  ; preds = %bb.b
  %i.nf = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.mo, i64 noundef 48, i64 noundef 8) #11
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

bb.c:                                             ; preds = %bb.b
  %i.ng = add i64 %i.nc, %i.mw
  %i.nh = inttoptr i64 %i.ng to ptr
  store i64 %i.nd, ptr %i.mx, align 8, !tbaa !96
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit:    ; preds = %.critedge.i.i.i, %bb.c
  %.0.i.i.i = phi ptr [ %i.nf, %.critedge.i.i.i ], [ %i.nh, %bb.c ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i, i8 0, i64 48, i1 false)
  %i.ni = ptrtoint ptr %.0.i.i.i to i64
  br label %bb.aqt

bb.d:                                             ; preds = %bb.a
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !98, !nonnull !75, !align !76
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  %i.nl = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.nm = getelementptr inbounds nuw i8, ptr %10, i64 17
  store i8 1, ptr %i.nm, align 1, !tbaa !99
  store ptr @.str, ptr %10, align 8, !tbaa !102
  store i8 3, ptr %i.nl, align 8, !tbaa !103
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.nk, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %10, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  br label %bb.aqt

bb.e:                                             ; preds = %bb.a
  %i.nn = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 127 uses
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !104
  %i.np = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.no, ptr nonnull @.str.1, i64 4) ; 2 uses
  %i.nq = extractvalue { i64, i8 } %i.np, 0       ; 2 uses
  %i.nr = extractvalue { i64, i8 } %i.np, 1
  %i.ns = trunc nuw i8 %i.nr to i1
  %.pre = load ptr, ptr %i.nn, align 8, !tbaa !104 ; 2 uses
  %.pre7217 = load i64, ptr %.pre, align 8, !tbaa !107
  %i.nt = icmp ne i64 %i.nq, %.pre7217
  %or.cond7894.not = select i1 %i.ns, i1 %i.nt, i1 false
  br i1 %or.cond7894.not, label %bb.g, label %_ZNK6hermes6parser10JSONObject4findEN4llvh9StringRefE.exit.thread

_ZNK6hermes6parser10JSONObject4findEN4llvh9StringRefE.exit.thread: ; preds = %bb.e
  %i.nu = load ptr, ptr %0, align 8, !tbaa !84, !nonnull !75, !align !76 ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 24
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !85 ; 2 uses
  %i.nx = load i32, ptr %i.nw, align 8, !tbaa !86
  %i.ny = zext i32 %i.nx to i64
  %i.nz = load ptr, ptr %i.nu, align 8, !tbaa !93
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.nz, i64 %i.ny
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !94
  %i.oc = ptrtoint ptr %i.ob to i64               ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.nw, i64 8 ; 3 uses
  %i.oe = load i64, ptr %i.od, align 8, !tbaa !96 ; 2 uses
  %i.of = add i64 %i.oc, 7
  %i.og = add i64 %i.of, %i.oe
  %i.oh = and i64 %i.og, 7
  %.neg7213 = add i64 %i.oe, 7
  %i.oi = sub i64 %.neg7213, %i.oh                ; 3 uses
  store i64 %i.oi, ptr %i.od, align 8, !tbaa !96
  %i.oj = add i64 %i.oi, 48                       ; 2 uses
  %i.ok = icmp ugt i64 %i.oj, 262144
  br i1 %i.ok, label %.critedge.i.i.i2405, label %bb.f, !prof !97

.critedge.i.i.i2405:                              ; preds = %_ZNK6hermes6parser10JSONObject4findEN4llvh9StringRefE.exit.thread
  %i.ol = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.nu, i64 noundef 48, i64 noundef 8) #11
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit2406

bb.f:                                             ; preds = %_ZNK6hermes6parser10JSONObject4findEN4llvh9StringRefE.exit.thread
  %i.om = add i64 %i.oi, %i.oc
  %i.on = inttoptr i64 %i.om to ptr
  store i64 %i.oj, ptr %i.od, align 8, !tbaa !96
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit2406

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit2406: ; preds = %.critedge.i.i.i2405, %bb.f
  %.0.i.i.i2404 = phi ptr [ %i.ol, %.critedge.i.i.i2405 ], [ %i.on, %bb.f ] ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i2404, i8 0, i64 16, i1 false)
  %i.oo = getelementptr inbounds nuw i8, ptr %.0.i.i.i2404, i64 16
  store i32 1, ptr %i.oo, align 8, !tbaa !108
  %i.op = getelementptr inbounds nuw i8, ptr %.0.i.i.i2404, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.op, i8 0, i64 28, i1 false)
  %i.oq = ptrtoint ptr %.0.i.i.i2404 to i64
  br label %bb.aqt

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  %i.or = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 127 uses
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.nq
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !118
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 16
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %i.ov, i64 16, i1 false), !tbaa.struct !125
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !78
  %.not1620 = icmp eq ptr %i.ox, null
  br i1 %.not1620, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit2424.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.oy = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %.pre, ptr nonnull @.str.2, i64 5) ; 2 uses
  %i.oz = extractvalue { i64, i8 } %i.oy, 1
  %i.pa = trunc nuw i8 %i.oz to i1
  br i1 %i.pa, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit: ; preds = %bb.h
  %i.pb = extractvalue { i64, i8 } %i.oy, 0
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.pb
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !118 ; 3 uses
  %.not.i = icmp eq ptr %i.pd, null
  br i1 %.not.i, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !81
  %i.pf = icmp eq i32 %i.pe, 3
  %spec.select.i2410 = select i1 %i.pf, ptr %i.pd, ptr null
  br label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit

_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit: ; preds = %bb.h, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit, %bb.i
  %i.pg = phi ptr [ null, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit ], [ %spec.select.i2410, %bb.i ], [ null, %bb.h ] ; 6 uses
  %i.ph = load ptr, ptr %i.nn, align 8, !tbaa !104
  %i.pi = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.ph, ptr nonnull @.str.3, i64 3) ; 2 uses
  %i.pj = extractvalue { i64, i8 } %i.pi, 1
  %i.pk = trunc nuw i8 %i.pj to i1
  br i1 %i.pk, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit2412, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit2415.thread

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit2412: ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit
  %i.pl = extractvalue { i64, i8 } %i.pi, 0
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.pl
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !118 ; 4 uses
  %.not.i2413 = icmp eq ptr %i.pn, null
  br i1 %.not.i2413, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit2415.thread, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit2415

_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit2415: ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit2412
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !81
  %i.pp = icmp eq i32 %i.po, 3                    ; 2 uses
  %spec.select.i2414 = select i1 %i.pp, ptr %i.pn, ptr null
  %i.pq = icmp ne ptr %i.pg, null
  %or.cond = and i1 %i.pq, %i.pp
  br i1 %or.cond, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit2424, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit2415.thread

_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit2415.thread: ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit2412, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit2415
  %i.pr = phi ptr [ %spec.select.i2414, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit2415 ], [ null, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit2412 ], [ null, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit ] ; 4 uses
  %i.ps = load ptr, ptr %i.nn, align 8, !tbaa !104
  %i.pt = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.ps, ptr nonnull @.str.4, i64 5) ; 2 uses
  %i.pu = extractvalue { i64, i8 } %i.pt, 1
  %i.pv = trunc nuw i8 %i.pu to i1
  br i1 %i.pv, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit2417, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit2424

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit2417: ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit2415.thread
  %i.pw = extractvalue { i64, i8 } %i.pt, 0
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.pw
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !118 ; 5 uses
  %.not.i2418 = icmp eq ptr %i.py, null
  br i1 %.not.i2418, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit2424, label %bb.j

bb.j:                                             ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit2417
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !81
  %i.qa = icmp eq i32 %i.pz, 1
  br i1 %i.qa, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit2424

_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit: ; preds = %bb.j
  %i.qb = getelementptr inbounds nuw i8, ptr %i.py, i64 8
  %i.qc = load i64, ptr %i.qb, align 8, !tbaa !127
  %i.qd = icmp eq i64 %i.qc, 2
  br i1 %i.qd, label %bb.k, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit2424

bb.k:                                             ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit
  %i.qe = getelementptr inbounds nuw i8, ptr %i.py, i64 16
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !118 ; 3 uses
  %.not.i2420 = icmp eq ptr %i.qf, null
  br i1 %.not.i2420, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !81
  %i.qh = icmp eq i32 %i.qg, 3
  %spec.select.i2421 = select i1 %i.qh, ptr %i.qf, ptr null
  br label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit

_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit: ; preds = %bb.k, %bb.l
  %i.qi = phi ptr [ null, %bb.k ], [ %spec.select.i2421, %bb.l ]
  %i.qj = getelementptr inbounds nuw i8, ptr %i.py, i64 24
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !118 ; 3 uses
  %.not.i2422 = icmp eq ptr %i.qk, null
  br i1 %.not.i2422, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit2424.thread, label %bb.m

bb.m:                                             ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !81
  %i.qm = icmp eq i32 %i.ql, 3
  %spec.select.i2423 = select i1 %i.qm, ptr %i.qk, ptr null
  br label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit2424

_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit2424: ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit2415.thread, %bb.j, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit2417, %bb.m, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit2415
  %.11613 = phi ptr [ %i.pn, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit2415 ], [ %spec.select.i2423, %bb.m ], [ %i.pr, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit ], [ %i.pr, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit2417 ], [ %i.pr, %bb.j ], [ %i.pr, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit2415.thread ] ; 2 uses
  %.1 = phi ptr [ %i.pg, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit2415 ], [ %i.qi, %bb.m ], [ %i.pg, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit ], [ %i.pg, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit2417 ], [ %i.pg, %bb.j ], [ %i.pg, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit2415.thread ] ; 2 uses
  %i.qn = icmp ne ptr %.1, null
  %i.qo = icmp ne ptr %.11613, null
  %or.cond3 = and i1 %i.qo, %i.qn
  br i1 %or.cond3, label %bb.n, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit2424.thread

bb.n:                                             ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit2424
  %i.qp = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.qq = load double, ptr %i.qp, align 8, !tbaa !129
  %i.qr = fptosi double %i.qq to i32              ; 4 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %.11613, i64 16
  %i.qt = load double, ptr %i.qs, align 8, !tbaa !129
  %i.qu = fptosi double %i.qt to i32              ; 3 uses
  %i.qv = icmp sgt i32 %i.qr, -1
  br i1 %i.qv, label %bb.o, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit2424.thread

bb.o:                                             ; preds = %bb.n
  %i.qw = load ptr, ptr %i.ow, align 8, !tbaa !78 ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 16
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !132
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qw, i64 8
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !134 ; 3 uses
  %i.rb = ptrtoint ptr %i.qy to i64
  %i.rc = ptrtoint ptr %i.ra to i64
  %i.rd = sub i64 %i.rb, %i.rc
  %i.re = trunc i64 %i.rd to i32                  ; 2 uses
  %i.rf = icmp sge i32 %i.qr, %i.re
  %.not1622 = icmp slt i32 %i.qu, %i.qr
  %or.cond1624 = select i1 %i.rf, i1 true, i1 %.not1622
  %.not1623 = icmp samesign ugt i32 %i.qu, %i.re
  %or.cond6945 = select i1 %or.cond1624, i1 true, i1 %.not1623
  br i1 %or.cond6945, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit2424.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.rg = zext nneg i32 %i.qr to i64
  %i.rh = getelementptr inbounds nuw i8, ptr %i.ra, i64 %i.rg
  %i.ri = zext nneg i32 %i.qu to i64
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ra, i64 %i.ri
  br label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit2424.thread

_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit2424.thread: ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit2424, %bb.p, %bb.o, %bb.n, %bb.g
  %.sroa.262.0 = phi ptr [ null, %bb.g ], [ null, %bb.o ], [ null, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit ], [ %i.rj, %bb.p ], [ null, %bb.n ], [ null, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit2424 ] ; 258 uses
  %.sroa.05524.0 = phi ptr [ null, %bb.g ], [ null, %bb.o ], [ null, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit ], [ %i.rh, %bb.p ], [ null, %bb.n ], [ null, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit2424 ] ; 258 uses
  %.sroa.01036.0.copyload = load ptr, ptr %11, align 8, !tbaa !126 ; 435 uses
  %.sroa.21037.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %.sroa.21037.0.copyload = load i64, ptr %.sroa.21037.0..sroa_idx, align 8, !tbaa !107 ; 2 uses
  switch i64 %.sroa.21037.0.copyload, label %_ZNK4llvh9StringRef6equalsES0_.exit1831.thread [
    i64 12, label %_ZNK4llvh9StringRef6equalsES0_.exit
    i64 14, label %_ZNK4llvh9StringRef6equalsES0_.exit1627
    i64 7, label %_ZNK4llvh9StringRef6equalsES0_.exit1630
    i64 15, label %_ZNK4llvh9StringRef6equalsES0_.exit1633
    i64 5, label %_ZNK4llvh9StringRef6equalsES0_.exit1636
    i64 8, label %_ZNK4llvh9StringRef6equalsES0_.exit1639
    i64 24, label %_ZNK4llvh9StringRef6equalsES0_.exit1786
    i64 18, label %_ZNK4llvh9StringRef6equalsES0_.exit1645
    i64 23, label %_ZNK4llvh9StringRef6equalsES0_.exit1648
    i64 19, label %_ZNK4llvh9StringRef6equalsES0_.exit1651
    i64 20, label %_ZNK4llvh9StringRef6equalsES0_.exit1654
    i64 10, label %_ZNK4llvh9StringRef6equalsES0_.exit1804
    i64 9, label %_ZNK4llvh9StringRef6equalsES0_.exit1798
    i64 16, label %_ZNK4llvh9StringRef6equalsES0_.exit1666
    i64 21, label %_ZNK4llvh9StringRef6equalsES0_.exit1792
    i64 17, label %_ZNK4llvh9StringRef6equalsES0_.exit1678
    i64 11, label %_ZNK4llvh9StringRef6equalsES0_.exit1687
    i64 13, label %_ZNK4llvh9StringRef6equalsES0_.exit1702
    i64 22, label %_ZNK4llvh9StringRef6equalsES0_.exit1771
  ]

_ZNK4llvh9StringRef6equalsES0_.exit:              ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit2424.thread
  %i.rk = load i64, ptr %.sroa.01036.0.copyload, align 1
  %i.rl = xor i64 %i.rk, 8101819944539481426
  %i.rm = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 8
  %i.rn = load i32, ptr %i.rm, align 1
  %i.ro = zext i32 %i.rn to i64
  %i.rp = xor i64 %i.ro, 2037674597
  %i.rq = or i64 %i.rl, %i.rp
  %i.rr = icmp ne i64 %i.rq, 0
  %i.rs = zext i1 %i.rr to i32
  %i.rt = icmp eq i32 %i.rs, 0
  br i1 %i.rt, label %_ZNK4llvh9StringRef6equalsES0_.exit1633.thread.thread7887, label %_ZNK4llvh9StringRef6equalsES0_.exit1675

_ZNK4llvh9StringRef6equalsES0_.exit1633.thread.thread7887: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit
  store ptr @.str.6, ptr %11, align 8, !tbaa !126
  store i64 11, ptr %.sroa.21037.0..sroa_idx, align 8, !tbaa !107
  br label %_ZNK4llvh9StringRef6equalsES0_.exit1687

_ZNK4llvh9StringRef6equalsES0_.exit1627:          ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit2424.thread
  %i.ru = load i64, ptr %.sroa.01036.0.copyload, align 1
  %i.rv = xor i64 %i.ru, 8237194087937241171
  %i.rw = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 6
  %i.rx = load i64, ptr %i.rw, align 1
  %i.ry = xor i64 %i.rx, 8751745755891331664
  %i.rz = or i64 %i.rv, %i.ry
  %i.sa = icmp ne i64 %i.rz, 0
  %i.sb = zext i1 %i.sa to i32
  %i.sc = icmp eq i32 %i.sb, 0
  br i1 %i.sc, label %_ZNK4llvh9StringRef6equalsES0_.exit1633.thread.thread7890, label %_ZNK4llvh9StringRef6equalsES0_.exit1660

_ZNK4llvh9StringRef6equalsES0_.exit1633.thread.thread7890: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1627
  store ptr @.str.8, ptr %11, align 8, !tbaa !126
  store i64 13, ptr %.sroa.21037.0..sroa_idx, align 8, !tbaa !107
  br label %_ZNK4llvh9StringRef6equalsES0_.exit1702

_ZNK4llvh9StringRef6equalsES0_.exit1630:          ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit2424.thread
  %i.sd = load i32, ptr %.sroa.01036.0.copyload, align 1
  %i.se = xor i32 %i.sd, 1702127948
  %i.sf = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 3
  %i.sg = load i32, ptr %i.sf, align 1
  %i.sh = xor i32 %i.sg, 1818325605
  %i.si = or i32 %i.se, %i.sh
  %i.sj = icmp ne i32 %i.si, 0
  %i.sk = zext i1 %i.sj to i32
  %i.sl = icmp eq i32 %i.sk, 0
  br i1 %i.sl, label %_ZNK4llvh9StringRef6equalsES0_.exit1630.thread6191, label %_ZNK4llvh9StringRef6equalsES0_.exit1642

_ZNK4llvh9StringRef6equalsES0_.exit1630.thread6191: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1630
  %i.sm = load ptr, ptr %i.nn, align 8, !tbaa !104
  %i.sn = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.sm, ptr nonnull @.str.945, i64 5) ; 2 uses
  %i.so = extractvalue { i64, i8 } %i.sn, 1
  %i.sp = trunc nuw i8 %i.so to i1
  br i1 %i.sp, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.thread.i

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1630.thread6191
  %i.sq = extractvalue { i64, i8 } %i.sn, 0
  %i.sr = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.sq
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !118 ; 5 uses
  %.not.i.i = icmp eq ptr %i.ss, null
  br i1 %.not.i.i, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.thread.i, label %bb.q

bb.q:                                             ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i
  %i.st = load i32, ptr %i.ss, align 4, !tbaa !81
  %i.su = icmp eq i32 %i.st, 0
  br i1 %i.su, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONObjectENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.i, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.thread.i

_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONObjectENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.i: ; preds = %bb.q
  %i.sv = getelementptr inbounds nuw i8, ptr %i.ss, i64 8 ; 2 uses
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !104
  %i.sx = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.sw, ptr nonnull @.str.149, i64 7) ; 2 uses
  %i.sy = extractvalue { i64, i8 } %i.sx, 1
  %i.sz = trunc nuw i8 %i.sy to i1
  br i1 %i.sz, label %bb.r, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i.i

bb.r:                                             ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONObjectENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.i
  %i.ta = extractvalue { i64, i8 } %i.sx, 0
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ss, i64 16
  %i.tc = getelementptr inbounds nuw [8 x i8], ptr %i.tb, i64 %i.ta
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !118
  br label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i.i

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i.i: ; preds = %bb.r, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONObjectENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.i
  %.0.i.i.i2427 = phi ptr [ %i.td, %bb.r ], [ null, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONObjectENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.i ] ; 2 uses
  %i.te = load i32, ptr %.0.i.i.i2427, align 4, !tbaa !81
  %i.tf = icmp eq i32 %i.te, 2
  br i1 %i.tf, label %bb.s, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit.i

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit.i: ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i.i
  %i.tg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !98, !nonnull !75, !align !76
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.ti = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.tj = getelementptr inbounds nuw i8, ptr %6, i64 17
  store i8 1, ptr %i.tj, align 1, !tbaa !99
  store ptr @.str.946, ptr %6, align 8, !tbaa !102
  store i8 3, ptr %i.ti, align 8, !tbaa !103
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.th, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %6, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %bb.aqs

bb.s:                                             ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i.i
  %i.tk = getelementptr inbounds nuw i8, ptr %.0.i.i.i2427, i64 16
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !120
  %i.tm = load ptr, ptr %i.sv, align 8, !tbaa !104
  %i.tn = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.tm, ptr nonnull @.str.151, i64 5) ; 2 uses
  %i.to = extractvalue { i64, i8 } %i.tn, 1
  %i.tp = trunc nuw i8 %i.to to i1
  br i1 %i.tp, label %bb.t, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i14.i

bb.t:                                             ; preds = %bb.s
  %i.tq = extractvalue { i64, i8 } %i.tn, 0
  %i.tr = getelementptr inbounds nuw i8, ptr %i.ss, i64 16
  %i.ts = getelementptr inbounds nuw [8 x i8], ptr %i.tr, i64 %i.tq
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !118
  br label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i14.i

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i14.i: ; preds = %bb.t, %bb.s
  %.0.i.i15.i = phi ptr [ %i.tt, %bb.t ], [ null, %bb.s ] ; 2 uses
  %i.tu = load i32, ptr %.0.i.i15.i, align 4, !tbaa !81
  %i.tv = icmp eq i32 %i.tu, 2
  br i1 %i.tv, label %bb.u, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit16.i

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit16.i: ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i14.i
  %i.tw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !98, !nonnull !75, !align !76
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %i.ty = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.tz = getelementptr inbounds nuw i8, ptr %7, i64 17
  store i8 1, ptr %i.tz, align 1, !tbaa !99
  store ptr @.str.947, ptr %7, align 8, !tbaa !102
  store i8 3, ptr %i.ty, align 8, !tbaa !103
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.tx, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %7, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %bb.aqs

bb.u:                                             ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i14.i
  %i.ua = getelementptr inbounds nuw i8, ptr %.0.i.i15.i, i64 16
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !120
  %i.uc = load ptr, ptr %0, align 8, !tbaa !84, !nonnull !75, !align !76 ; 3 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 24
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !85 ; 2 uses
  %i.uf = load i32, ptr %i.ue, align 8, !tbaa !86
  %i.ug = zext i32 %i.uf to i64
  %i.uh = load ptr, ptr %i.uc, align 8, !tbaa !93
  %i.ui = getelementptr inbounds nuw [8 x i8], ptr %i.uh, i64 %i.ug
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !94
  %i.uk = ptrtoint ptr %i.uj to i64               ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ue, i64 8 ; 3 uses
  %i.um = load i64, ptr %i.ul, align 8, !tbaa !96
  %i.un = add i64 %i.um, 7                        ; 2 uses
  %i.uo = add i64 %i.un, %i.uk
  %i.up = and i64 %i.uo, 7
  %i.uq = sub i64 %i.un, %i.up                    ; 3 uses
  store i64 %i.uq, ptr %i.ul, align 8, !tbaa !96
  %i.ur = add i64 %i.uq, 64                       ; 2 uses
  %i.us = icmp ugt i64 %i.ur, 262144
  br i1 %i.us, label %.critedge.i.i.i.i, label %bb.v, !prof !97

.critedge.i.i.i.i:                                ; preds = %bb.u
  %i.ut = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.uc, i64 noundef 64, i64 noundef 8) #11
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit.i

bb.v:                                             ; preds = %bb.u
  %i.uu = add i64 %i.uq, %i.uk
  %i.uv = inttoptr i64 %i.uu to ptr
  store i64 %i.ur, ptr %i.ul, align 8, !tbaa !96
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit.i

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit.i:  ; preds = %bb.v, %.critedge.i.i.i.i
  %.0.i.i.i.i = phi ptr [ %i.ut, %.critedge.i.i.i.i ], [ %i.uv, %bb.v ] ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.0.i.i.i.i, i8 0, i64 16, i1 false)
  %i.uw = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  store i32 38, ptr %i.uw, align 8, !tbaa !108
  %i.ux = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ux, i8 0, i64 28, i1 false)
  %i.uy = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 48
  store ptr %i.tl, ptr %i.uy, align 8, !tbaa !135
  %i.uz = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 56
  store ptr %i.ub, ptr %i.uz, align 8, !tbaa !137
  br label %bb.ag

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.thread.i: ; preds = %bb.q, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i, %_ZNK4llvh9StringRef6equalsES0_.exit1630.thread6191
  %i.va = load ptr, ptr %i.nn, align 8, !tbaa !104
  %i.vb = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.va, ptr nonnull @.str.142, i64 5) ; 2 uses
  %i.vc = extractvalue { i64, i8 } %i.vb, 1
  %i.vd = trunc nuw i8 %i.vc to i1
  br i1 %i.vd, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit18.i, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit18.thread.i

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit18.i: ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.thread.i
  %i.ve = extractvalue { i64, i8 } %i.vb, 0
  %i.vf = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.ve
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !118 ; 5 uses
  %.not13.i = icmp eq ptr %i.vg, null
  br i1 %.not13.i, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit18.thread.i, label %bb.w

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit18.thread.i: ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit18.i, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.thread.i
  %i.vh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.vi = load ptr, ptr %i.vh, align 8, !tbaa !98, !nonnull !75, !align !76
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %i.vj = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.vk = getelementptr inbounds nuw i8, ptr %8, i64 17
  store i8 1, ptr %i.vk, align 1, !tbaa !99
  store ptr @.str.948, ptr %8, align 8, !tbaa !102
  store i8 3, ptr %i.vj, align 8, !tbaa !103
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.vi, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %8, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  br label %bb.aqs

bb.w:                                             ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit18.i
  %i.vl = load i32, ptr %i.vg, align 4, !tbaa !81
  switch i32 %i.vl, label %bb.af [
    i32 2, label %bb.x
    i32 4, label %bb.z
    i32 5, label %bb.ab
    i32 3, label %bb.ad
  ]

bb.x:                                             ; preds = %bb.w
  %i.vm = load ptr, ptr %0, align 8, !tbaa !84, !nonnull !75, !align !76 ; 3 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 24
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !85 ; 2 uses
  %i.vp = load i32, ptr %i.vo, align 8, !tbaa !86
  %i.vq = zext i32 %i.vp to i64
  %i.vr = load ptr, ptr %i.vm, align 8, !tbaa !93
  %i.vs = getelementptr inbounds nuw [8 x i8], ptr %i.vr, i64 %i.vq
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !94
  %i.vu = ptrtoint ptr %i.vt to i64               ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vo, i64 8 ; 3 uses
  %i.vw = load i64, ptr %i.vv, align 8, !tbaa !96
  %i.vx = add i64 %i.vw, 7                        ; 2 uses
  %i.vy = add i64 %i.vx, %i.vu
  %i.vz = and i64 %i.vy, 7
  %i.wa = sub i64 %i.vx, %i.vz                    ; 3 uses
  store i64 %i.wa, ptr %i.vv, align 8, !tbaa !96
  %i.wb = add i64 %i.wa, 56                       ; 2 uses
  %i.wc = icmp ugt i64 %i.wb, 262144
  br i1 %i.wc, label %.critedge.i.i.i20.i, label %bb.y, !prof !97

.critedge.i.i.i20.i:                              ; preds = %bb.x
  %i.wd = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.vm, i64 noundef 56, i64 noundef 8) #11
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit21.i

bb.y:                                             ; preds = %bb.x
  %i.we = add i64 %i.wa, %i.vu
  %i.wf = inttoptr i64 %i.we to ptr
  store i64 %i.wb, ptr %i.vv, align 8, !tbaa !96
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit21.i

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit21.i: ; preds = %bb.y, %.critedge.i.i.i20.i
  %.0.i.i.i19.i = phi ptr [ %i.wd, %.critedge.i.i.i20.i ], [ %i.wf, %bb.y ] ; 5 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.vg, i64 16
  %i.wh = load ptr, ptr %i.wg, align 8, !tbaa !120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.0.i.i.i19.i, i8 0, i64 16, i1 false)
  %i.wi = getelementptr inbounds nuw i8, ptr %.0.i.i.i19.i, i64 16
  store i32 36, ptr %i.wi, align 8, !tbaa !108
  %i.wj = getelementptr inbounds nuw i8, ptr %.0.i.i.i19.i, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.wj, i8 0, i64 28, i1 false)
  %i.wk = getelementptr inbounds nuw i8, ptr %.0.i.i.i19.i, i64 48
  store ptr %i.wh, ptr %i.wk, align 8, !tbaa !138
  br label %bb.ag

bb.z:                                             ; preds = %bb.w
  %i.wl = load ptr, ptr %0, align 8, !tbaa !84, !nonnull !75, !align !76 ; 3 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 24
end_hunk_0
begin_hunk_1_@_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder5buildEPKNS_6parser9JSONValueE:bb.a
  %i.ww = add i64 %i.wv, 7                        ; 2 uses
  %i.wx = add i64 %i.ww, %i.wt
  %i.wy = and i64 %i.wx, 7
  %i.wz = sub i64 %i.ww, %i.wy                    ; 3 uses
  store i64 %i.wz, ptr %i.wu, align 8, !tbaa !96
  %i.xa = add i64 %i.wz, 56                       ; 2 uses
  %i.xb = icmp ugt i64 %i.xa, 262144
  br i1 %i.xb, label %.critedge.i.i.i23.i, label %bb.aa, !prof !97

.critedge.i.i.i23.i:                              ; preds = %bb.z
  %i.xc = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.wl, i64 noundef 56, i64 noundef 8) #11
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit24.i

bb.aa:                                            ; preds = %bb.z
  %i.xd = add i64 %i.wz, %i.wt
  %i.xe = inttoptr i64 %i.xd to ptr
  store i64 %i.xa, ptr %i.wu, align 8, !tbaa !96
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit24.i

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit24.i: ; preds = %bb.aa, %.critedge.i.i.i23.i
  %.0.i.i.i22.i = phi ptr [ %i.xc, %.critedge.i.i.i23.i ], [ %i.xe, %bb.aa ] ; 5 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %i.vg, i64 4
  %i.xg = load i8, ptr %i.xf, align 4, !tbaa !140, !range !142, !noundef !75
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %.0.i.i.i22.i, i8 0, i64 16, i1 false)
  %i.xh = getelementptr inbounds nuw i8, ptr %.0.i.i.i22.i, i64 16
  store i32 35, ptr %i.xh, align 8, !tbaa !108
  %i.xi = getelementptr inbounds nuw i8, ptr %.0.i.i.i22.i, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.xi, i8 0, i64 28, i1 false)
  %i.xj = getelementptr inbounds nuw i8, ptr %.0.i.i.i22.i, i64 48
  store i8 %i.xg, ptr %i.xj, align 8, !tbaa !143
  br label %bb.ag

bb.ab:                                            ; preds = %bb.w
  %i.xk = load ptr, ptr %0, align 8, !tbaa !84, !nonnull !75, !align !76 ; 3 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 24
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !85 ; 2 uses
  %i.xn = load i32, ptr %i.xm, align 8, !tbaa !86
  %i.xo = zext i32 %i.xn to i64
  %i.xp = load ptr, ptr %i.xk, align 8, !tbaa !93
  %i.xq = getelementptr inbounds nuw [8 x i8], ptr %i.xp, i64 %i.xo
  %i.xr = load ptr, ptr %i.xq, align 8, !tbaa !94
  %i.xs = ptrtoint ptr %i.xr to i64               ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xm, i64 8 ; 3 uses
  %i.xu = load i64, ptr %i.xt, align 8, !tbaa !96
  %i.xv = add i64 %i.xu, 7                        ; 2 uses
  %i.xw = add i64 %i.xv, %i.xs
  %i.xx = and i64 %i.xw, 7
  %i.xy = sub i64 %i.xv, %i.xx                    ; 3 uses
  store i64 %i.xy, ptr %i.xt, align 8, !tbaa !96
  %i.xz = add i64 %i.xy, 48                       ; 2 uses
  %i.ya = icmp ugt i64 %i.xz, 262144
  br i1 %i.ya, label %.critedge.i.i.i26.i, label %bb.ac, !prof !97

.critedge.i.i.i26.i:                              ; preds = %bb.ab
  %i.yb = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.xk, i64 noundef 48, i64 noundef 8) #11
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit27.i

bb.ac:                                            ; preds = %bb.ab
  %i.yc = add i64 %i.xy, %i.xs
  %i.yd = inttoptr i64 %i.yc to ptr
  store i64 %i.xz, ptr %i.xt, align 8, !tbaa !96
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit27.i

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit27.i: ; preds = %bb.ac, %.critedge.i.i.i26.i
  %.0.i.i.i25.i = phi ptr [ %i.yb, %.critedge.i.i.i26.i ], [ %i.yd, %bb.ac ] ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i25.i, i8 0, i64 16, i1 false)
  %i.ye = getelementptr inbounds nuw i8, ptr %.0.i.i.i25.i, i64 16
  store i32 34, ptr %i.ye, align 8, !tbaa !108
  %i.yf = getelementptr inbounds nuw i8, ptr %.0.i.i.i25.i, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.yf, i8 0, i64 28, i1 false)
  br label %bb.ag

bb.ad:                                            ; preds = %bb.w
  %i.yg = load ptr, ptr %0, align 8, !tbaa !84, !nonnull !75, !align !76 ; 3 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 24
  %i.yi = load ptr, ptr %i.yh, align 8, !tbaa !85 ; 2 uses
  %i.yj = load i32, ptr %i.yi, align 8, !tbaa !86
  %i.yk = zext i32 %i.yj to i64
  %i.yl = load ptr, ptr %i.yg, align 8, !tbaa !93
  %i.ym = getelementptr inbounds nuw [8 x i8], ptr %i.yl, i64 %i.yk
  %i.yn = load ptr, ptr %i.ym, align 8, !tbaa !94
  %i.yo = ptrtoint ptr %i.yn to i64               ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yi, i64 8 ; 3 uses
  %i.yq = load i64, ptr %i.yp, align 8, !tbaa !96
  %i.yr = add i64 %i.yq, 7                        ; 2 uses
  %i.ys = add i64 %i.yr, %i.yo
  %i.yt = and i64 %i.ys, 7
  %i.yu = sub i64 %i.yr, %i.yt                    ; 3 uses
  store i64 %i.yu, ptr %i.yp, align 8, !tbaa !96
  %i.yv = add i64 %i.yu, 56                       ; 2 uses
  %i.yw = icmp ugt i64 %i.yv, 262144
  br i1 %i.yw, label %.critedge.i.i.i29.i, label %bb.ae, !prof !97

.critedge.i.i.i29.i:                              ; preds = %bb.ad
  %i.yx = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.yg, i64 noundef 56, i64 noundef 8) #11
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit30.i

bb.ae:                                            ; preds = %bb.ad
  %i.yy = add i64 %i.yu, %i.yo
  %i.yz = inttoptr i64 %i.yy to ptr
  store i64 %i.yv, ptr %i.yp, align 8, !tbaa !96
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit30.i

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit30.i: ; preds = %bb.ae, %.critedge.i.i.i29.i
  %.0.i.i.i28.i = phi ptr [ %i.yx, %.critedge.i.i.i29.i ], [ %i.yz, %bb.ae ] ; 5 uses
  %i.za = getelementptr inbounds nuw i8, ptr %i.vg, i64 16
  %i.zb = load double, ptr %i.za, align 8, !tbaa !129
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.0.i.i.i28.i, i8 0, i64 16, i1 false)
  %i.zc = getelementptr inbounds nuw i8, ptr %.0.i.i.i28.i, i64 16
  store i32 37, ptr %i.zc, align 8, !tbaa !108
  %i.zd = getelementptr inbounds nuw i8, ptr %.0.i.i.i28.i, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.zd, i8 0, i64 28, i1 false)
  %i.ze = getelementptr inbounds nuw i8, ptr %.0.i.i.i28.i, i64 48
  store double %i.zb, ptr %i.ze, align 8, !tbaa !145
  br label %bb.ag

bb.af:                                            ; preds = %bb.w
  %i.zf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.zg = load ptr, ptr %i.zf, align 8, !tbaa !98, !nonnull !75, !align !76
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  %i.zh = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.zi = getelementptr inbounds nuw i8, ptr %9, i64 17
  store i8 1, ptr %i.zi, align 1, !tbaa !99
  store ptr @.str.948, ptr %9, align 8, !tbaa !102
  store i8 3, ptr %i.zh, align 8, !tbaa !103
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.zg, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %9, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %bb.aqs

bb.ag:                                            ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit21.i, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit24.i, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit27.i, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit30.i, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit.i
  %.sroa.047.2.i.ph.in = phi ptr [ %.0.i.i.i.i, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit.i ], [ %.0.i.i.i28.i, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit30.i ], [ %.0.i.i.i25.i, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit27.i ], [ %.0.i.i.i22.i, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit24.i ], [ %.0.i.i.i19.i, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit21.i ] ; 3 uses
  %.sroa.047.2.i.ph = ptrtoint ptr %.sroa.047.2.i.ph.in to i64
  %i.zj = getelementptr inbounds nuw i8, ptr %.sroa.047.2.i.ph.in, i64 24
  store ptr %.sroa.05524.0, ptr %i.zj, align 8, !tbaa !126
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.047.2.i.ph.in, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !126
  br label %bb.aqs

_ZNK4llvh9StringRef6equalsES0_.exit1633:          ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit2424.thread
  %i.zk = load i64, ptr %.sroa.01036.0.copyload, align 1
  %i.zl = xor i64 %i.zk, 7310575213499737428
  %i.zm = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 7
  %i.zn = load i64, ptr %i.zm, align 1
  %i.zo = xor i64 %i.zn, 8389754676365247845
  %i.zp = or i64 %i.zl, %i.zo
  %i.zq = icmp ne i64 %i.zp, 0
  %i.zr = zext i1 %i.zq to i32
  %i.zs = icmp eq i32 %i.zr, 0
  br i1 %i.zs, label %_ZNK4llvh9StringRef6equalsES0_.exit1633.thread6199, label %_ZNK4llvh9StringRef6equalsES0_.exit1657

_ZNK4llvh9StringRef6equalsES0_.exit1633.thread6199: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1633
  %i.zt = load ptr, ptr %i.nn, align 8, !tbaa !104
  %i.zu = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.zt, ptr nonnull @.str.275, i64 4) ; 2 uses
  %i.zv = extractvalue { i64, i8 } %i.zu, 1
  %i.zw = trunc nuw i8 %i.zv to i1
  br i1 %i.zw, label %bb.ah, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i.i2428

bb.ah:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1633.thread6199
  %i.zx = extractvalue { i64, i8 } %i.zu, 0
  %i.zy = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.zx
  %i.zz = load ptr, ptr %i.zy, align 8, !tbaa !118
  br label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i.i2428

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i.i2428: ; preds = %bb.ah, %_ZNK4llvh9StringRef6equalsES0_.exit1633.thread6199
  %.0.i.i.i2429 = phi ptr [ %i.zz, %bb.ah ], [ null, %_ZNK4llvh9StringRef6equalsES0_.exit1633.thread6199 ] ; 2 uses
  %i.aaa = load i32, ptr %.0.i.i.i2429, align 4, !tbaa !81
  %i.aab = icmp eq i32 %i.aaa, 4
  br i1 %i.aab, label %bb.ai, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit.i

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit.i: ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i.i2428
  %i.aac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aad = load ptr, ptr %i.aac, align 8, !tbaa !98, !nonnull !75, !align !76
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.aae = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aaf = getelementptr inbounds nuw i8, ptr %2, i64 17
  store i8 1, ptr %i.aaf, align 1, !tbaa !99
  store ptr @.str.276, ptr %2, align 8, !tbaa !102
  store i8 3, ptr %i.aae, align 8, !tbaa !103
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.aad, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %2, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.aqs

bb.ai:                                            ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i.i2428
  %i.aag = getelementptr inbounds nuw i8, ptr %.0.i.i.i2429, i64 4
  %i.aah = load i8, ptr %i.aag, align 4, !tbaa !140, !range !142, !noundef !75
  %i.aai = load ptr, ptr %i.nn, align 8, !tbaa !104
  %i.aaj = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.aai, ptr nonnull @.str.142, i64 5) ; 2 uses
  %i.aak = extractvalue { i64, i8 } %i.aaj, 1
  %i.aal = trunc nuw i8 %i.aak to i1
  br i1 %i.aal, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i2433, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.thread.i2432

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i2433: ; preds = %bb.ai
  %i.aam = extractvalue { i64, i8 } %i.aaj, 0
  %i.aan = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.aam
  %i.aao = load ptr, ptr %i.aan, align 8, !tbaa !118 ; 5 uses
  %.not.i.i2434 = icmp eq ptr %i.aao, null
  br i1 %.not.i.i2434, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.thread.i2432, label %bb.aj

bb.aj:                                            ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i2433
  %i.aap = load i32, ptr %i.aao, align 4, !tbaa !81
  %i.aaq = icmp eq i32 %i.aap, 0
  br i1 %i.aaq, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONObjectENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.i2436, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.thread.i2432

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.thread.i2432: ; preds = %bb.aj, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i2433, %bb.ai
  %i.aar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aas = load ptr, ptr %i.aar, align 8, !tbaa !98, !nonnull !75, !align !76
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.aat = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aau = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 1, ptr %i.aau, align 1, !tbaa !99
  store ptr @.str.949, ptr %3, align 8, !tbaa !102
  store i8 3, ptr %i.aat, align 8, !tbaa !103
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.aas, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %3, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.aqs

_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONObjectENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.i2436: ; preds = %bb.aj
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aao, i64 8 ; 2 uses
  %i.aaw = load ptr, ptr %i.aav, align 8, !tbaa !104
  %i.aax = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.aaw, ptr nonnull @.str.277, i64 6) ; 2 uses
  %i.aay = extractvalue { i64, i8 } %i.aax, 1
  %i.aaz = trunc nuw i8 %i.aay to i1
  br i1 %i.aaz, label %bb.ak, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i6.i

bb.ak:                                            ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONObjectENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.i2436
  %i.aba = extractvalue { i64, i8 } %i.aax, 0
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aao, i64 16
  %i.abc = getelementptr inbounds nuw [8 x i8], ptr %i.abb, i64 %i.aba
  %i.abd = load ptr, ptr %i.abc, align 8, !tbaa !118
  br label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i6.i

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i6.i: ; preds = %bb.ak, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONObjectENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.i2436
  %.0.i.i7.i = phi ptr [ %i.abd, %bb.ak ], [ null, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONObjectENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.i2436 ] ; 2 uses
  %i.abe = load i32, ptr %.0.i.i7.i, align 4, !tbaa !81
  %i.abf = icmp eq i32 %i.abe, 2
  br i1 %i.abf, label %bb.al, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit.i2437

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit.i2437: ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i6.i
  %i.abg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.abh = load ptr, ptr %i.abg, align 8, !tbaa !98, !nonnull !75, !align !76
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.abi = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.abj = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 1, ptr %i.abj, align 1, !tbaa !99
  store ptr @.str.950, ptr %4, align 8, !tbaa !102
  store i8 3, ptr %i.abi, align 8, !tbaa !103
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.abh, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %4, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %bb.aqs

bb.al:                                            ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i6.i
  %i.abk = getelementptr inbounds nuw i8, ptr %.0.i.i7.i, i64 16
  %i.abl = load ptr, ptr %i.abk, align 8, !tbaa !120
  %i.abm = load ptr, ptr %i.aav, align 8, !tbaa !104
  %i.abn = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.abm, ptr nonnull @.str.279, i64 3) ; 2 uses
  %i.abo = extractvalue { i64, i8 } %i.abn, 1
  %i.abp = trunc nuw i8 %i.abo to i1
  br i1 %i.abp, label %bb.am, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i8.i

bb.am:                                            ; preds = %bb.al
  %i.abq = extractvalue { i64, i8 } %i.abn, 0
  %i.abr = getelementptr inbounds nuw i8, ptr %i.aao, i64 16
  %i.abs = getelementptr inbounds nuw [8 x i8], ptr %i.abr, i64 %i.abq
  %i.abt = load ptr, ptr %i.abs, align 8, !tbaa !118
  br label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i8.i

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i8.i: ; preds = %bb.am, %bb.al
  %.0.i.i9.i = phi ptr [ %i.abt, %bb.am ], [ null, %bb.al ] ; 2 uses
  %i.abu = load i32, ptr %.0.i.i9.i, align 4, !tbaa !81
  %i.abv = icmp eq i32 %i.abu, 2
  br i1 %i.abv, label %bb.an, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit10.i

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit10.i: ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i8.i
  %i.abw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.abx = load ptr, ptr %i.abw, align 8, !tbaa !98, !nonnull !75, !align !76
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.aby = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.abz = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 1, ptr %i.abz, align 1, !tbaa !99
  store ptr @.str.951, ptr %5, align 8, !tbaa !102
  store i8 3, ptr %i.aby, align 8, !tbaa !103
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.abx, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %5, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %bb.aqs

bb.an:                                            ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i8.i
  %i.aca = getelementptr inbounds nuw i8, ptr %.0.i.i9.i, i64 16
  %i.acb = load ptr, ptr %i.aca, align 8, !tbaa !120
  %i.acc = load ptr, ptr %0, align 8, !tbaa !84, !nonnull !75, !align !76 ; 3 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acc, i64 24
  %i.ace = load ptr, ptr %i.acd, align 8, !tbaa !85 ; 2 uses
  %i.acf = load i32, ptr %i.ace, align 8, !tbaa !86
  %i.acg = zext i32 %i.acf to i64
  %i.ach = load ptr, ptr %i.acc, align 8, !tbaa !93
  %i.aci = getelementptr inbounds nuw [8 x i8], ptr %i.ach, i64 %i.acg
  %i.acj = load ptr, ptr %i.aci, align 8, !tbaa !94
  %i.ack = ptrtoint ptr %i.acj to i64             ; 2 uses
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ace, i64 8 ; 3 uses
  %i.acm = load i64, ptr %i.acl, align 8, !tbaa !96
  %i.acn = add i64 %i.acm, 7                      ; 2 uses
  %i.aco = add i64 %i.acn, %i.ack
  %i.acp = and i64 %i.aco, 7
  %i.acq = sub i64 %i.acn, %i.acp                 ; 3 uses
  store i64 %i.acq, ptr %i.acl, align 8, !tbaa !96
  %i.acr = add i64 %i.acq, 72                     ; 2 uses
  %i.acs = icmp ugt i64 %i.acr, 262144
  br i1 %i.acs, label %.critedge.i.i.i.i2440, label %bb.ao, !prof !97

.critedge.i.i.i.i2440:                            ; preds = %bb.an
  %i.act = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.acc, i64 noundef 72, i64 noundef 8) #11
  br label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.acu = add i64 %i.acq, %i.ack
  %i.acv = inttoptr i64 %i.acu to ptr
  store i64 %i.acr, ptr %i.acl, align 8, !tbaa !96
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.critedge.i.i.i.i2440
  %.0.i.i.i.i2439 = phi ptr [ %i.act, %.critedge.i.i.i.i2440 ], [ %i.acv, %bb.ao ] ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.0.i.i.i.i2439, i8 0, i64 16, i1 false)
  %i.acw = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i2439, i64 16
  store i32 75, ptr %i.acw, align 8, !tbaa !108
  %i.acx = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i2439, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.acx, i8 0, i64 28, i1 false)
  %i.acy = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i2439, i64 48
  store i8 %i.aah, ptr %i.acy, align 8, !tbaa !147
  %i.acz = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i2439, i64 56
  store ptr %i.abl, ptr %i.acz, align 8, !tbaa !149
  %i.ada = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i2439, i64 64
  store ptr %i.acb, ptr %i.ada, align 8, !tbaa !150
  %i.adb = ptrtoint ptr %.0.i.i.i.i2439 to i64
  %i.adc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i2439, i64 24
  store ptr %.sroa.05524.0, ptr %i.adc, align 8, !tbaa !126
  %.sroa.2.0..sroa_idx.i2441.a = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i2439, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2441.a, align 8, !tbaa !126
  br label %bb.aqs

_ZNK4llvh9StringRef6equalsES0_.exit1636:          ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit2424.thread
  %i.add = load i32, ptr %.sroa.01036.0.copyload, align 1
  %i.ade = xor i32 %i.add, 1953525061
  %i.adf = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 4
  %i.adg = load i8, ptr %i.adf, align 1
  %i.adh = zext i8 %i.adg to i32
  %i.adi = xor i32 %i.adh, 121
  %i.adj = or i32 %i.ade, %i.adi
  %i.adk = icmp ne i32 %i.adj, 0
  %i.adl = zext i1 %i.adk to i32
  %i.adm = icmp eq i32 %i.adl, 0
  br i1 %i.adm, label %_ZNK4llvh9StringRef6equalsES0_.exit1636.thread6207, label %_ZNK4llvh9StringRef6equalsES0_.exit1741

_ZNK4llvh9StringRef6equalsES0_.exit1636.thread6207: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1636
  %i.adn = load ptr, ptr %0, align 8, !tbaa !84, !nonnull !75, !align !76
  %i.ado = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 48, ptr noundef nonnull align 8 dereferenceable(656) %i.adn, i64 noundef 8) ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ado, i8 0, i64 48, i1 false)
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ado, i64 24
  store ptr %.sroa.05524.0, ptr %i.adp, align 8, !tbaa !126
  %.sroa.2.0..sroa_idx.i2442.a = getelementptr inbounds nuw i8, ptr %i.ado, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2442.a, align 8, !tbaa !126
  %i.adq = ptrtoint ptr %i.ado to i64
  br label %bb.aqs

_ZNK4llvh9StringRef6equalsES0_.exit1639:          ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit2424.thread
  %i.adr = load i64, ptr %.sroa.01036.0.copyload, align 1
  %i.ads = icmp ne i64 %i.adr, 7022344802737087821
  %i.adt = zext i1 %i.ads to i32
  %i.adu = icmp eq i32 %i.adt, 0
  br i1 %i.adu, label %_ZNK4llvh9StringRef6equalsES0_.exit1639.thread6209, label %_ZNK4llvh9StringRef6equalsES0_.exit1834

_ZNK4llvh9StringRef6equalsES0_.exit1639.thread6209: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1639
  %i.adv = load ptr, ptr %0, align 8, !tbaa !84, !nonnull !75, !align !76
  %i.adw = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 48, ptr noundef nonnull align 8 dereferenceable(656) %i.adv, i64 noundef 8) ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.adw, i8 0, i64 16, i1 false)
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adw, i64 16
  store i32 1, ptr %i.adx, align 8, !tbaa !108
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adw, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ady, i8 0, i64 28, i1 false)
  %i.adz = getelementptr inbounds nuw i8, ptr %i.adw, i64 24
  store ptr %.sroa.05524.0, ptr %i.adz, align 8, !tbaa !126
  %.sroa.2.0..sroa_idx.i2443.a = getelementptr inbounds nuw i8, ptr %i.adw, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2443.a, align 8, !tbaa !126
  %i.aea = ptrtoint ptr %i.adw to i64
  br label %bb.aqs

_ZNK4llvh9StringRef6equalsES0_.exit1642:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1630
  %i.aeb = load i32, ptr %.sroa.01036.0.copyload, align 1
  %i.aec = xor i32 %i.aeb, 1735357008
  %i.aed = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 3
  %i.aee = load i32, ptr %i.aed, align 1
  %i.aef = xor i32 %i.aee, 1835102823
  %i.aeg = or i32 %i.aec, %i.aef
  %i.aeh = icmp ne i32 %i.aeg, 0
  %i.aei = zext i1 %i.aeh to i32
  %i.aej = icmp eq i32 %i.aei, 0
  br i1 %i.aej, label %_ZNK4llvh9StringRef6equalsES0_.exit1642.thread6211, label %_ZNK4llvh9StringRef6equalsES0_.exit1975

_ZNK4llvh9StringRef6equalsES0_.exit1642.thread6211: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1642
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  store ptr %12, ptr %12, align 8, !tbaa !151
  %i.aek = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %12, ptr %i.aek, align 8, !tbaa !152
end_hunk_1
begin_hunk_2_@_ZN6hermes6ESTree11ESTreeVisitINS0_12_GLOBAL__N_124DebugLocationSynthesizerEEEvRT_PNS0_4NodeE:bb.a
  tail call fastcc void @_ZN6hermes6ESTree21TSMethodSignatureNode5visitINS0_12_GLOBAL__N_124DebugLocationSynthesizerEEEvRT_(ptr noundef nonnull align 8 dereferenceable(81) %0)
  br label %bb.iz

bb.ir:                                            ; preds = %bb.b
  tail call fastcc void @_ZN6hermes6ESTree20TSIndexSignatureNode5visitINS0_12_GLOBAL__N_124DebugLocationSynthesizerEEEvRT_(ptr noundef nonnull align 8 dereferenceable(72) %0)
  br label %bb.iz

bb.is:                                            ; preds = %bb.b
  tail call fastcc void @_ZN6hermes6ESTree30TSCallSignatureDeclarationNode5visitINS0_12_GLOBAL__N_124DebugLocationSynthesizerEEEvRT_(ptr noundef nonnull align 8 dereferenceable(72) %0)
  br label %bb.iz

bb.it:                                            ; preds = %bb.b
  tail call fastcc void @_ZN6hermes6ESTree15TSModifiersNode5visitINS0_12_GLOBAL__N_124DebugLocationSynthesizerEEEvRT_(ptr noundef nonnull align 8 dereferenceable(57) %0)
  br label %bb.iz

bb.iu:                                            ; preds = %bb.b
  tail call fastcc void @_ZN6hermes6ESTree18CoverEmptyArgsNode5visitINS0_12_GLOBAL__N_124DebugLocationSynthesizerEEEvRT_(ptr noundef nonnull align 8 dereferenceable(48) %0)
  br label %bb.iz

bb.iv:                                            ; preds = %bb.b
  tail call fastcc void @_ZN6hermes6ESTree22CoverTrailingCommaNode5visitINS0_12_GLOBAL__N_124DebugLocationSynthesizerEEEvRT_(ptr noundef nonnull align 8 dereferenceable(48) %0)
  br label %bb.iz

bb.iw:                                            ; preds = %bb.b
  tail call fastcc void @_ZN6hermes6ESTree20CoverInitializerNode5visitINS0_12_GLOBAL__N_124DebugLocationSynthesizerEEEvRT_(ptr noundef nonnull align 8 dereferenceable(56) %0)
  br label %bb.iz

bb.ix:                                            ; preds = %bb.b
  tail call fastcc void @_ZN6hermes6ESTree20CoverRestElementNode5visitINS0_12_GLOBAL__N_124DebugLocationSynthesizerEEEvRT_(ptr noundef nonnull align 8 dereferenceable(56) %0)
  br label %bb.iz

bb.iy:                                            ; preds = %bb.b
  tail call fastcc void @_ZN6hermes6ESTree24CoverTypedIdentifierNode5visitINS0_12_GLOBAL__N_124DebugLocationSynthesizerEEEvRT_(ptr noundef nonnull align 8 dereferenceable(65) %0)
  br label %bb.iz

bb.iz:                                            ; preds = %bb.a, %bb.iy, %bb.ix, %bb.iw, %bb.iv, %bb.iu, %bb.it, %bb.is, %bb.ir, %bb.iq, %bb.ip, %bb.io, %bb.in, %bb.im, %bb.il, %bb.ik, %bb.ij, %bb.ii, %bb.ih, %bb.ig, %bb.if, %bb.ie, %bb.id, %bb.ic, %bb.ib, %bb.ia, %bb.hz, %bb.hy, %bb.hx, %bb.hw, %bb.hv, %bb.hu, %bb.ht, %bb.hs, %bb.hr, %bb.hq, %bb.hp, %bb.ho, %bb.hn, %bb.hm, %bb.hl, %bb.hk, %bb.hj, %bb.hi, %bb.hh, %bb.hg, %bb.hf, %bb.he, %bb.hd, %bb.hc, %bb.hb, %bb.ha, %bb.gz, %bb.gy, %bb.gx, %bb.gw, %bb.gv, %bb.gu, %bb.gt, %bb.gs, %bb.gr, %bb.gq, %bb.gp, %bb.go, %bb.gn, %bb.gm, %bb.gl, %bb.gk, %bb.gj, %bb.gi, %bb.gh, %bb.gg, %bb.gf, %bb.ge, %bb.gd, %bb.gc, %bb.gb, %bb.ga, %bb.fz, %bb.fy, %bb.fx, %bb.fw, %bb.fv, %bb.fu, %bb.ft, %bb.fs, %bb.fr, %bb.fq, %bb.fp, %bb.fo, %bb.fn, %bb.fm, %bb.fl, %bb.fk, %bb.fj, %bb.fi, %bb.fh, %bb.fg, %bb.ff, %bb.fe, %bb.fd, %bb.fc, %bb.fb, %bb.fa, %bb.ez, %bb.ey, %bb.ex, %bb.ew, %bb.ev, %bb.eu, %bb.et, %bb.es, %bb.er, %bb.eq, %bb.ep, %bb.eo, %bb.en, %bb.em, %bb.el, %bb.ek, %bb.ej, %bb.ei, %bb.eh, %bb.eg, %bb.ef, %bb.ee, %bb.ed, %bb.ec, %bb.eb, %bb.ea, %bb.dz, %bb.dy, %bb.dx, %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dm, %bb.dl, %bb.dk, %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(656) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85   ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !86
  %i.d = zext i32 %i.c to i64
  %i.e = load ptr, ptr %1, align 8, !tbaa !93
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.d
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !94
  %i.h = ptrtoint ptr %i.g to i64                 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !96
  %i.k = add i64 %2, -1
  %i.l = add i64 %i.k, %i.h
  %i.m = add i64 %i.l, %i.j                       ; 2 uses
  %i.n = urem i64 %i.m, %2
  %i.o = add i64 %i.n, %i.h
  %i.p = sub i64 %i.m, %i.o                       ; 3 uses
  store i64 %i.p, ptr %i.i, align 8, !tbaa !96
  %i.q = icmp ugt i64 %0, 262144
  br i1 %i.q, label %.critedge.i.i, label %bb.b, !prof !97

bb.b:                                             ; preds = %bb.a
  %i.r = add i64 %i.p, %0                         ; 2 uses
  %i.s = icmp ugt i64 %i.r, 262144
  br i1 %i.s, label %.critedge.i.i, label %bb.c, !prof !97

.critedge.i.i:                                    ; preds = %bb.b, %bb.a
  %i.t = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %1, i64 noundef %0, i64 noundef %2) #11
  br label %_ZN6hermes7Context12allocateNodeEmm.exit

bb.c:                                             ; preds = %bb.b
  %i.u = add i64 %i.p, %i.h
  %i.v = inttoptr i64 %i.u to ptr
  store i64 %i.r, ptr %i.i, align 8, !tbaa !96
  br label %_ZN6hermes7Context12allocateNodeEmm.exit

_ZN6hermes7Context12allocateNodeEmm.exit:         ; preds = %.critedge.i.i, %bb.c
  %.0.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.v, %bb.c ]
  ret ptr %.0.i.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder15extractNodeListEPKNS_6parser10JSONObjectEN4llvh9StringRefERNS7_12simple_ilistINS0_4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly captures(none) %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #0 align 2 {
_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104
  %i.c = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr %2, i64 %3)
  %i.d = extractvalue { i64, i8 } %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.d
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !118  ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !81
  %.not = icmp eq i32 %i.h, 1
  br i1 %.not, label %bb.a, label %.critedge

bb.a:                                             ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !127  ; 2 uses
  %.idx = shl nuw nsw i64 %i.k, 3
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx
  %.not2325 = icmp eq i64 %i.k, 0
  br i1 %.not2325, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.02126 = phi ptr [ %i.v, %bb.b ], [ %i.i, %bb.a ] ; 2 uses
  %i.m = load ptr, ptr %.02126, align 8, !tbaa !118
  %i.n = tail call fastcc { i64, i8 } @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder5buildEPKNS_6parser9JSONValueE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.m) ; 2 uses
  %i.o = extractvalue { i64, i8 } %i.n, 1
  %i.p = trunc nuw i8 %i.o to i1                  ; 3 uses
  br i1 %i.p, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.q = extractvalue { i64, i8 } %i.n, 0
  %i.r = inttoptr i64 %i.q to ptr                 ; 4 uses
  %i.s = load ptr, ptr %4, align 8, !tbaa !151    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %4, ptr %i.t, align 8, !tbaa !152
  store ptr %i.s, ptr %i.r, align 8, !tbaa !151
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.r, ptr %i.u, align 8, !tbaa !152
  store ptr %i.r, ptr %4, align 8, !tbaa !151
  %i.v = getelementptr inbounds nuw i8, ptr %.02126, i64 8 ; 2 uses
  %.not23 = icmp eq ptr %i.v, %i.l
  br i1 %.not23, label %.critedge, label %.lr.ph

.critedge:                                        ; preds = %.lr.ph, %bb.b, %bb.a, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit
  %.3 = phi i1 [ false, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit ], [ true, %bb.a ], [ %i.p, %bb.b ], [ %i.p, %.lr.ph ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes6ESTree11ProgramNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %0, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 3, ptr %i.a, align 8, !tbaa !108
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(45) %i.b, i8 0, i64 45, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  store ptr %i.c, ptr %i.c, align 8, !tbaa !151
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.c, ptr %i.d, align 8, !tbaa !152
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 7 uses
  store ptr %i.e, ptr %i.e, align 8, !tbaa !151
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.e, ptr %i.f, align 8, !tbaa !152
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !152  ; 4 uses
  %i.i = icmp eq ptr %i.e, %1
  %i.j = icmp eq ptr %i.h, %1
  %or.cond.i.i.i.i.i = or i1 %i.i, %i.j
  br i1 %or.cond.i.i.i.i.i, label %_ZN4llvh12simple_ilistIN6hermes6ESTree4NodeEJEEC2EOS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %1, align 8, !tbaa !151    ; 2 uses
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !151  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %1, ptr %i.m, align 8, !tbaa !152
  store ptr %i.l, ptr %1, align 8, !tbaa !151
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !151  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.e, ptr %i.o, align 8, !tbaa !152
  store ptr %i.n, ptr %i.h, align 8, !tbaa !151
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.h, ptr %i.p, align 8, !tbaa !152
  store ptr %i.k, ptr %i.e, align 8, !tbaa !151
  br label %_ZN4llvh12simple_ilistIN6hermes6ESTree4NodeEJEEC2EOS4_.exit

_ZN4llvh12simple_ilistIN6hermes6ESTree4NodeEJEEC2EOS4_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly captures(none) %1, ptr %2, i64 %3, ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104
  %i.c = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr %2, i64 %3) ; 2 uses
  %i.d = extractvalue { i64, i8 } %i.c, 1
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONObjectENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.thread

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit: ; preds = %bb.a
  %i.f = extractvalue { i64, i8 } %i.c, 0
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !118  ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONObjectENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit
  %i.j = load i32, ptr %i.i, align 4, !tbaa !81
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONObjectENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONObjectENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.thread

_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONObjectENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit: ; preds = %bb.b
  %i.l = tail call fastcc { i64, i8 } @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder5buildEPKNS_6parser9JSONValueE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.i) ; 2 uses
  %i.m = extractvalue { i64, i8 } %i.l, 1
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.c, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONObjectENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.thread

bb.c:                                             ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONObjectENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit
  %i.o = extractvalue { i64, i8 } %i.l, 0
  %i.p = inttoptr i64 %i.o to ptr
  store ptr %i.p, ptr %4, align 8, !tbaa !153
  br label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONObjectENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.thread

_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONObjectENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.thread: ; preds = %bb.a, %bb.b, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit, %bb.c, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONObjectENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit
  %.1 = phi i1 [ true, %bb.c ], [ false, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONObjectENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit ], [ false, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes6ESTree22FunctionExpressionNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEES3_S3_S3_S3_bb(ptr noundef nonnull align 8 dereferenceable(130) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i1 noundef zeroext %7, i1 noundef zeroext %8) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %0, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 4, ptr %i.a, align 8, !tbaa !108
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(45) %i.b, i8 0, i64 45, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %1, ptr %i.c, align 8, !tbaa !737
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 7 uses
  store ptr %i.d, ptr %i.d, align 8, !tbaa !151
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.d, ptr %i.e, align 8, !tbaa !152
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !152  ; 4 uses
  %i.h = icmp eq ptr %i.d, %2
  %i.i = icmp eq ptr %i.g, %2
  %or.cond.i.i.i.i.i = or i1 %i.h, %i.i
  br i1 %or.cond.i.i.i.i.i, label %_ZN4llvh12simple_ilistIN6hermes6ESTree4NodeEJEEC2EOS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %2, align 8, !tbaa !151    ; 2 uses
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !151  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %2, ptr %i.l, align 8, !tbaa !152
  store ptr %i.k, ptr %2, align 8, !tbaa !151
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !151  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.d, ptr %i.n, align 8, !tbaa !152
  store ptr %i.m, ptr %i.g, align 8, !tbaa !151
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.g, ptr %i.o, align 8, !tbaa !152
  store ptr %i.j, ptr %i.d, align 8, !tbaa !151
  br label %_ZN4llvh12simple_ilistIN6hermes6ESTree4NodeEJEEC2EOS4_.exit

_ZN4llvh12simple_ilistIN6hermes6ESTree4NodeEJEEC2EOS4_.exit: ; preds = %bb.a, %bb.b
  %i.p = zext i1 %8 to i8
  %i.q = zext i1 %7 to i8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %3, ptr %i.r, align 8, !tbaa !744
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %4, ptr %i.s, align 8, !tbaa !745
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %5, ptr %i.t, align 8, !tbaa !746
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %6, ptr %i.u, align 8, !tbaa !747
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 %i.q, ptr %i.v, align 8, !tbaa !748
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 129
  store i8 %i.p, ptr %i.w, align 1, !tbaa !749
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes6ESTree27ArrowFunctionExpressionNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEES3_S3_S3_S3_bb(ptr noundef nonnull align 8 dereferenceable(130) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i1 noundef zeroext %7, i1 noundef zeroext %8) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %0, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 5, ptr %i.a, align 8, !tbaa !108
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(45) %i.b, i8 0, i64 45, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %1, ptr %i.c, align 8, !tbaa !750
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 7 uses
  store ptr %i.d, ptr %i.d, align 8, !tbaa !151
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.d, ptr %i.e, align 8, !tbaa !152
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !152  ; 4 uses
  %i.h = icmp eq ptr %i.d, %2
  %i.i = icmp eq ptr %i.g, %2
  %or.cond.i.i.i.i.i = or i1 %i.h, %i.i
  br i1 %or.cond.i.i.i.i.i, label %_ZN4llvh12simple_ilistIN6hermes6ESTree4NodeEJEEC2EOS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %2, align 8, !tbaa !151    ; 2 uses
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !151  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %2, ptr %i.l, align 8, !tbaa !152
  store ptr %i.k, ptr %2, align 8, !tbaa !151
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !151  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.d, ptr %i.n, align 8, !tbaa !152
  store ptr %i.m, ptr %i.g, align 8, !tbaa !151
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.g, ptr %i.o, align 8, !tbaa !152
  store ptr %i.j, ptr %i.d, align 8, !tbaa !151
  br label %_ZN4llvh12simple_ilistIN6hermes6ESTree4NodeEJEEC2EOS4_.exit

_ZN4llvh12simple_ilistIN6hermes6ESTree4NodeEJEEC2EOS4_.exit: ; preds = %bb.a, %bb.b
  %i.p = zext i1 %8 to i8
  %i.q = zext i1 %7 to i8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %3, ptr %i.r, align 8, !tbaa !752
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %4, ptr %i.s, align 8, !tbaa !753
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %5, ptr %i.t, align 8, !tbaa !754
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %6, ptr %i.u, align 8, !tbaa !755
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 %i.q, ptr %i.v, align 8, !tbaa !756
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 129
  store i8 %i.p, ptr %i.w, align 1, !tbaa !757
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes6ESTree23FunctionDeclarationNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEES3_S3_S3_S3_bb(ptr noundef nonnull align 8 dereferenceable(130) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i1 noundef zeroext %7, i1 noundef zeroext %8) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %0, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 6, ptr %i.a, align 8, !tbaa !108
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(45) %i.b, i8 0, i64 45, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %1, ptr %i.c, align 8, !tbaa !758
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 7 uses
  store ptr %i.d, ptr %i.d, align 8, !tbaa !151
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.d, ptr %i.e, align 8, !tbaa !152
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !152  ; 4 uses
  %i.h = icmp eq ptr %i.d, %2
  %i.i = icmp eq ptr %i.g, %2
  %or.cond.i.i.i.i.i = or i1 %i.h, %i.i
  br i1 %or.cond.i.i.i.i.i, label %_ZN4llvh12simple_ilistIN6hermes6ESTree4NodeEJEEC2EOS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %2, align 8, !tbaa !151    ; 2 uses
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !151  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %2, ptr %i.l, align 8, !tbaa !152
  store ptr %i.k, ptr %2, align 8, !tbaa !151
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !151  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.d, ptr %i.n, align 8, !tbaa !152
  store ptr %i.m, ptr %i.g, align 8, !tbaa !151
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.g, ptr %i.o, align 8, !tbaa !152
  store ptr %i.j, ptr %i.d, align 8, !tbaa !151
  br label %_ZN4llvh12simple_ilistIN6hermes6ESTree4NodeEJEEC2EOS4_.exit

_ZN4llvh12simple_ilistIN6hermes6ESTree4NodeEJEEC2EOS4_.exit: ; preds = %bb.a, %bb.b
  %i.p = zext i1 %8 to i8
  %i.q = zext i1 %7 to i8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %3, ptr %i.r, align 8, !tbaa !760
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %4, ptr %i.s, align 8, !tbaa !761
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %5, ptr %i.t, align 8, !tbaa !762
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %6, ptr %i.u, align 8, !tbaa !763
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 %i.q, ptr %i.v, align 8, !tbaa !764
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 129
  store i8 %i.p, ptr %i.w, align 1, !tbaa !765
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes6ESTree24ComponentDeclarationNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEES3_S3_S3_b(ptr noundef nonnull align 8 dereferenceable(121) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i1 noundef zeroext %6) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %0, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 7, ptr %i.a, align 8, !tbaa !108
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(45) %i.b, i8 0, i64 45, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %1, ptr %i.c, align 8, !tbaa !766
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 7 uses
  store ptr %i.d, ptr %i.d, align 8, !tbaa !151
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.d, ptr %i.e, align 8, !tbaa !152
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !152  ; 4 uses
  %i.h = icmp eq ptr %i.d, %2
  %i.i = icmp eq ptr %i.g, %2
  %or.cond.i.i.i.i.i = or i1 %i.h, %i.i
end_hunk_2
