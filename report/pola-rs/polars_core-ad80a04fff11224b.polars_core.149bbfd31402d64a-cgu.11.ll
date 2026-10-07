Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_core-ad80a04fff11224b.polars_core.149bbfd31402d64a-cgu.11?download=true
inline.NumInlined: 12724
inline.NumDeleted: 4732
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 666
loop-unroll.NumUnrolled: 672
begin_hunk_0_@_RINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB3_19ListNumericOpHelper12__finish_implNtNtBb_9datatypes10Int128TypeEBb_:bb.a
bb.s:                                             ; preds = %.noexc629
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hl, i64 24, !dbg !63372
  %i.hv = atomicrmw add ptr %i.hu, i64 1 monotonic, align 8, !dbg !63373, !noalias !61059 ; 0 uses
  br label %bb.r, !dbg !63374

bb.t:                                             ; preds = %bb.r
  %i.hw = load i64, ptr %i.ht, align 8, !dbg !63375, !range !3591, !noalias !61060, !noundef !3448
  %i.hx = icmp eq i64 %i.hw, 3, !dbg !63376
  br i1 %i.hx, label %bb.v, label %bb.u, !dbg !63376

bb.u:                                             ; preds = %bb.t
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ht, i64 24, !dbg !63377
  %i.hz = atomicrmw add ptr %i.hy, i64 1 monotonic, align 8, !dbg !63378, !noalias !61060 ; 0 uses
  br label %bb.v, !dbg !63379

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hj, i64 64, !dbg !63380
  %i.ib = load <2 x i64>, ptr %i.ia, align 8, !dbg !63380, !noalias !61060
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hj, i64 80, !dbg !63381
  %i.id = load atomic i64, ptr %i.ic monotonic, align 8, !dbg !63382, !noalias !61060
  br label %bb.w, !dbg !63383

bb.w:                                             ; preds = %bb.v, %bb.r
  %.sroa.5.sroa.5.0.i621 = phi i64 [ undef, %bb.r ], [ %i.id, %bb.v ], !dbg !63384
  %i.ie = phi <2 x i64> [ undef, %bb.r ], [ %i.ib, %bb.v ], !dbg !63384
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.fa, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 32, i1 false), !dbg !63385
  %i.if = getelementptr inbounds nuw i8, ptr %i.fa, i64 32, !dbg !63385 ; 7 uses
  store ptr %i.hl, ptr %i.if, align 8, !dbg !63385, !alias.scope !61059
  %.sroa.4.0..sroa_idx.i624 = getelementptr inbounds nuw i8, ptr %i.fa, i64 40, !dbg !63385 ; 54 uses
  store ptr %i.hp, ptr %.sroa.4.0..sroa_idx.i624, align 8, !dbg !63385, !alias.scope !61059
  %.sroa.5.0..sroa_idx5.i625 = getelementptr inbounds nuw i8, ptr %i.fa, i64 48, !dbg !63385 ; 54 uses
  store i64 %i.hr, ptr %.sroa.5.0..sroa_idx5.i625, align 8, !dbg !63385, !alias.scope !61059
  %i.ig = getelementptr inbounds nuw i8, ptr %i.fa, i64 56, !dbg !63385 ; 22 uses
  store ptr %i.ht, ptr %i.ig, align 8, !dbg !63385, !alias.scope !61059
  %.sroa.5.0..sroa_idx.i626 = getelementptr inbounds nuw i8, ptr %i.fa, i64 64, !dbg !63385 ; 2 uses
  store <2 x i64> %i.ie, ptr %.sroa.5.0..sroa_idx.i626, align 8, !dbg !63385, !alias.scope !61059
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i628 = getelementptr inbounds nuw i8, ptr %i.fa, i64 80, !dbg !63385
  store i64 %.sroa.5.sroa.5.0.i621, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i628, align 8, !dbg !63385, !alias.scope !61059
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !63386, !noalias !61059
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 313, !dbg !63387 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 314, !dbg !63388 ; 3 uses
  %i.ij = load i8, ptr %i.ih, align 1, !dbg !63389, !range !3609, !noundef !3448
  %i.ik = icmp eq i8 %i.ij, 1, !dbg !63390
  br i1 %i.ik, label %bb.x, label %bb.y, !dbg !63390

bb.x:                                             ; preds = %bb.w
  %i.il = load i8, ptr %i.ii, align 2, !dbg !63389, !range !3609, !noundef !3448 ; 2 uses
  %i.im = icmp eq i8 %i.il, 1, !dbg !63390
  br i1 %i.im, label %.thread2033, label %bb.aa, !dbg !63390

bb.y:                                             ; preds = %bb.w
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 288, !dbg !63391
  %i.io = load ptr, ptr %i.in, align 16, !dbg !63391, !noundef !3448
  %.not467 = icmp eq ptr %i.io, null, !dbg !63391
  br i1 %.not467, label %bb.ac, label %.invoke4025, !dbg !63392, !prof !3552

bb.z:                                             ; preds = %bb.ac
  %.pr.pre = load i8, ptr %i.ih, align 1, !dbg !63393
  switch i8 %.pr.pre, label %default.unreachable [
    i8 0, label %bb.ae
    i8 1, label %.thread
    i8 2, label %.invoke4025
  ], !dbg !63394, !prof !3764

bb.aa:                                            ; preds = %bb.x
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 288, !dbg !63391
  %i.iq = load ptr, ptr %i.ip, align 16, !dbg !63391, !noundef !3448
  %.not468 = icmp eq ptr %i.iq, null, !dbg !63391
  br i1 %.not468, label %bb.ac, label %bb.ab, !dbg !63392

bb.ab:                                            ; preds = %bb.aa
  %i.ir = icmp eq i8 %i.il, 2, !dbg !63390
  br i1 %i.ir, label %.thread, label %.invoke4025, !dbg !63390, !prof !3552

bb.ac:                                            ; preds = %bb.aa, %bb.y
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 315, !dbg !63395
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !63396
  %i.iu = load i8, ptr %i.it, align 8, !dbg !63396, !range !3607, !noundef !3448
  %i.iv = trunc nuw i8 %i.iu to i1, !dbg !63396
  %.val599 = load i8, ptr %i.is, align 1, !dbg !63397, !range !3608, !noundef !3448
  invoke fastcc void @_RINvMNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic10list_utilsNtB3_9NumericOp34prepare_numeric_op_side_validitiesNtNtB9_9datatypes10Int128TypeEB9_(i8 %.val599, ptr noalias noundef align 8 dereferenceable(88) %i.fc, ptr noalias noundef align 8 dereferenceable(88) %i.fa, i1 noundef zeroext %i.iv)
          to label %bb.z unwind label %bb.ad, !dbg !63397

.critedge560:                                     ; preds = %.critedge566.thread2686, %.critedge566, %.critedge566.thread, %bb.ro, %bb.rp, %.body.i1547, %.critedge558.thread2680, %.critedge556.thread2677, %.critedge556, %.critedge556.thread, %bb.hi, %bb.hj, %.body.i961, %.critedge.thread2674, %.critedge, %.critedge.thread, %bb.di, %bb.dj, %.body.i, %bb.nr, %bb.ns, %bb.in, %bb.hp, %bb.gf, %bb.by, %bb.ad, %.thread2364, %bb.rq, %bb.jt, %.critedge558.thread, %.critedge558, %.loopexit.split-lp, %bb.dt
  %.sroa.0223.2 = phi i1 [ true, %bb.in ], [ true, %bb.dt ], [ true, %bb.nr ], [ true, %.loopexit.split-lp ], [ true, %.critedge.thread2674 ], [ true, %bb.jt ], [ true, %bb.hp ], [ false, %.critedge558.thread ], [ false, %.critedge558 ], [ true, %bb.rq ], [ false, %.critedge558.thread2680 ], [ true, %.thread2364 ], [ %.sroa.0223.3, %bb.ad ], [ true, %bb.by ], [ true, %bb.gf ], [ true, %bb.ns ], [ true, %bb.di ], [ true, %.body.i ], [ true, %bb.dj ], [ true, %.critedge.thread ], [ true, %.critedge ], [ true, %bb.hi ], [ true, %.body.i961 ], [ true, %bb.hj ], [ true, %.critedge556.thread ], [ true, %.critedge556 ], [ true, %.critedge556.thread2677 ], [ true, %bb.ro ], [ true, %.body.i1547 ], [ true, %bb.rp ], [ true, %.critedge566.thread ], [ true, %.critedge566 ], [ true, %.critedge566.thread2686 ], !dbg !63398
  %.pn530 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp2355, %bb.in ], [ %i.aje, %bb.dt ], [ %i.cnc, %bb.nr ], [ %lpad.phi, %.loopexit.split-lp ], [ %lpad.thr_comm.split-lp2187, %.critedge.thread2674 ], [ %.pn4872349, %bb.jt ], [ %i.brm, %bb.hp ], [ %.pn4852334, %.critedge558.thread ], [ %eh.lpad-body5742340, %.critedge558 ], [ %i.dkg, %bb.rq ], [ %i.brz, %.critedge558.thread2680 ], [ %.pn475.pn, %.thread2364 ], [ %i.iw, %bb.ad ], [ %i.agf, %bb.by ], [ %i.bnw, %bb.gf ], [ %i.cnc, %bb.ns ], [ %i.ahx, %bb.di ], [ %eh.lpad-body.i, %.body.i ], [ %i.ahx, %bb.dj ], [ %.pn5242179, %.critedge.thread ], [ %eh.lpad-body5802185, %.critedge ], [ %i.bpf, %bb.hi ], [ %eh.lpad-body.i962, %.body.i961 ], [ %i.bpf, %bb.hj ], [ %.pn5032318, %.critedge556.thread ], [ %eh.lpad-body5772324, %.critedge556 ], [ %lpad.thr_comm.split-lp2326, %.critedge556.thread2677 ], [ %i.dkd, %bb.ro ], [ %eh.lpad-body.i1548, %.body.i1547 ], [ %i.dkd, %bb.rp ], [ %.pn4802664, %.critedge566.thread ], [ %eh.lpad-body2670, %.critedge566 ], [ %i.djo, %.critedge566.thread2686 ] ; 2 uses
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraynEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.fa) #49
          to label %bb.m unwind label %bb.dg, !dbg !63399

bb.ad:                                            ; preds = %.invoke4025, %.invoke4023, %.invoke4021, %.invoke, %bb.gg, %bb.bz, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraynENtB7_5Array17is_null_uncheckedCs1LHh8CLbVkQ_11polars_core.exit.thread, %bb.ac, %bb.ju, %bb.dw, %bb.ai
  %.sroa.0223.3 = phi i1 [ true, %.invoke4025 ], [ true, %.invoke ], [ true, %bb.bz ], [ true, %bb.ai ], [ false, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraynENtB7_5Array17is_null_uncheckedCs1LHh8CLbVkQ_11polars_core.exit.thread ], [ true, %bb.ac ], [ true, %bb.ju ], [ true, %bb.gg ], [ true, %bb.dw ], [ true, %.invoke4021 ], [ true, %.invoke4023 ], !dbg !63398
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %.critedge560

default.unreachable3849:                          ; preds = %bb.nx, %bb.kf, %bb.dz, %bb.an, %bb.ae
  unreachable

default.unreachable:                              ; preds = %.thread, %bb.z
  unreachable

bb.ae:                                            ; preds = %bb.z
  %i.ix = load i8, ptr %i.ii, align 2, !dbg !63393, !range !3609, !noundef !3448
  switch i8 %i.ix, label %default.unreachable3849 [
    i8 0, label %.invoke4025
    i8 1, label %bb.af
    i8 2, label %bb.ag
  ], !dbg !63394, !prof !3765

.thread:                                          ; preds = %bb.ab, %bb.z
  %.pr2032 = load i8, ptr %i.ii, align 2, !dbg !63393
  switch i8 %.pr2032, label %default.unreachable [
    i8 0, label %.invoke4025
    i8 1, label %..thread2033_crit_edge
    i8 2, label %bb.hm
  ], !dbg !63394, !prof !3766

..thread2033_crit_edge:                           ; preds = %.thread
  %.pre = load i64, ptr %.sroa.5.0..sroa_idx5.i625, align 8, !dbg !63400
  br label %.thread2033, !dbg !63394

bb.af:                                            ; preds = %bb.ae
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !63401
  %i.iz = load ptr, ptr %i.iy, align 8, !dbg !63401, !nonnull !3448, !noundef !3448 ; 19 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !63402
  %i.jb = load i64, ptr %i.ja, align 16, !dbg !63402, !noundef !3448
  %.not509 = icmp eq i64 %i.jb, 0, !dbg !63403
  br i1 %.not509, label %.invoke4023, label %bb.ah, !dbg !63403

bb.ag:                                            ; preds = %bb.ae
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !63404
  %i.jd = load ptr, ptr %i.jc, align 8, !dbg !63404, !nonnull !3448, !noundef !3448 ; 8 uses
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !63405
  %i.jf = load i64, ptr %i.je, align 16, !dbg !63405, !noundef !3448
  %.not489 = icmp eq i64 %i.jf, 0, !dbg !63406
  br i1 %.not489, label %.invoke4023, label %bb.du, !dbg !63406

.invoke4025:                                      ; preds = %bb.ab, %bb.y, %bb.z, %bb.ae, %.thread
  %i.jg = phi ptr [ @41, %bb.z ], [ @41, %.thread ], [ @41, %bb.ae ], [ @27, %bb.y ], [ @27, %bb.ab ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jg) #48
          to label %.cont4026 unwind label %bb.ad, !dbg !61713

.cont4026:                                        ; preds = %.invoke4025
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !63407
  %i.ji = load ptr, ptr %i.jh, align 8, !dbg !63407, !nonnull !3448, !noundef !3448 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !63408
  %i.jk = load i64, ptr %i.jj, align 16, !dbg !63408, !noundef !3448
  %.not510 = icmp eq i64 %i.jk, 0, !dbg !63409
  br i1 %.not510, label %.invoke4023, label %bb.ai, !dbg !63409

bb.ai:                                            ; preds = %bb.ah
  %i.jl = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !63410, !noundef !3448 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn), !dbg !63411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !63412
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.an, i64 noundef %i.jl, i1 noundef zeroext false, i64 noundef 16, i64 noundef 16)
          to label %bb.aj unwind label %bb.ad, !dbg !63412

bb.aj:                                            ; preds = %bb.ai
  %i.jm = load i64, ptr %i.an, align 8, !dbg !63412, !range !3450, !noundef !3448
  %i.jn = trunc nuw i64 %i.jm to i1, !dbg !63413
  %i.jo = getelementptr inbounds nuw i8, ptr %i.an, i64 8, !dbg !63414
  %i.jp = load i64, ptr %i.jo, align 8, !dbg !63414, !range !3612, !noundef !3448 ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.an, i64 16, !dbg !63414 ; 2 uses
  br i1 %i.jn, label %bb.ak, label %bb.al, !dbg !63413, !prof !3502

bb.ak:                                            ; preds = %bb.aj
  %i.jr = load i64, ptr %i.jq, align 8, !dbg !63415
  br label %.invoke, !dbg !63416

bb.al:                                            ; preds = %bb.aj
  %i.js = load ptr, ptr %i.jq, align 8, !dbg !63417, !nonnull !3448, !noundef !3448 ; 17 uses
  %i.jt = icmp ule i64 %i.jl, %i.jp, !dbg !63418
  call void @llvm.assume(i1 %i.jt), !dbg !63419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !63420
  store i64 %i.jp, ptr %i.dn, align 8, !dbg !63421
  %i.ju = getelementptr inbounds nuw i8, ptr %i.dn, i64 8, !dbg !63421
  store ptr %i.js, ptr %i.ju, align 8, !dbg !63421
  %i.jv = getelementptr inbounds nuw i8, ptr %i.dn, i64 16, !dbg !63421 ; 2 uses
  store i64 0, ptr %i.jv, align 8, !dbg !63421
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ji, i64 16, !dbg !63422 ; 2 uses
  %i.jx = load i64, ptr %i.jw, align 8, !dbg !63422, !noundef !3448 ; 3 uses
  %i.jy = add i64 %i.jx, -1, !dbg !63423          ; 2 uses
  store i64 %i.jy, ptr %i.dm, align 8, !dbg !63423
  %i.jz = icmp eq i64 %i.jy, 1, !dbg !63424
  br i1 %i.jz, label %bb.an, label %bb.am, !dbg !63424, !prof !3552

bb.am:                                            ; preds = %bb.al
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @5, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #48
          to label %bb.l unwind label %bb.dt, !dbg !63425

bb.an:                                            ; preds = %bb.al
  %i.ka = getelementptr i8, ptr %i.ji, i64 8, !dbg !63426 ; 2 uses
  %i.kb = load ptr, ptr %i.ka, align 8, !dbg !63426, !nonnull !3448, !noundef !3448 ; 2 uses
  %i.kc = load i64, ptr %i.kb, align 8, !dbg !63427, !noundef !3448 ; 18 uses
  %.not.i631 = icmp ne i64 %i.jx, 0, !dbg !63428
  call void @llvm.assume(i1 %.not.i631), !dbg !63428
  %i.kd = getelementptr [8 x i8], ptr %i.kb, i64 %i.jx, !dbg !63429
  %i.ke = getelementptr i8, ptr %i.kd, i64 -8, !dbg !63429 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ke) ]
  %i.kf = load i64, ptr %i.ke, align 8, !dbg !63430, !noundef !3448
  %i.kg = sub i64 %i.kf, %i.kc, !dbg !63431       ; 21 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %1, i64 315, !dbg !63432
  %i.ki = load i8, ptr %i.kh, align 1, !dbg !63432, !range !3608, !noundef !3448
  switch i8 %i.ki, label %default.unreachable3849 [
    i8 0, label %bb.ao
    i8 1, label %bb.ap
    i8 2, label %bb.aq
    i8 3, label %bb.ar
    i8 4, label %bb.as
    i8 5, label %bb.at
  ], !dbg !63433

bb.ao:                                            ; preds = %bb.an
  %i.kj = getelementptr inbounds nuw i8, ptr %i.iz, i64 16, !dbg !63434
  %i.kk = load i64, ptr %i.kj, align 8, !dbg !63434, !noundef !3448 ; 2 uses
  %i.kl = icmp ult i64 %i.kk, 2, !dbg !63435
  br i1 %i.kl, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE22offset_and_length_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit, label %.lr.ph3402, !dbg !63435

.lr.ph3402:                                       ; preds = %bb.ao
  %i.km = getelementptr inbounds nuw i8, ptr %i.iz, i64 8, !dbg !63436
  %i.kn = load ptr, ptr %i.km, align 8, !dbg !63436, !noundef !3448
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.kp = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.kq = add i64 %i.kk, -2
  br label %bb.au, !dbg !63435

bb.ap:                                            ; preds = %bb.an
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !63437
  %i.ks = load i8, ptr %i.kr, align 8, !dbg !63437, !range !3607, !noundef !3448
  %i.kt = trunc nuw i8 %i.ks to i1, !dbg !63437
  %i.ku = getelementptr inbounds nuw i8, ptr %i.iz, i64 16, !dbg !63438
  %i.kv = load i64, ptr %i.ku, align 8, !dbg !63438, !noundef !3448 ; 3 uses
  %i.kw = icmp ult i64 %i.kv, 2, !dbg !63439      ; 2 uses
  br i1 %i.kt, label %bb.aw, label %bb.av, !dbg !63437

bb.aq:                                            ; preds = %bb.an
  %i.kx = getelementptr inbounds nuw i8, ptr %i.iz, i64 16, !dbg !63440
  %i.ky = load i64, ptr %i.kx, align 8, !dbg !63440, !noundef !3448 ; 2 uses
  %i.kz = icmp ult i64 %i.ky, 2, !dbg !63441
  br i1 %i.kz, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE22offset_and_length_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit, label %.lr.ph3378, !dbg !63441

.lr.ph3378:                                       ; preds = %bb.aq
  %i.la = getelementptr inbounds nuw i8, ptr %i.iz, i64 8, !dbg !63442
  %i.lb = load ptr, ptr %i.la, align 8, !dbg !63442, !noundef !3448
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ld = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.le = add i64 %i.ky, -2
  br label %bb.az, !dbg !63441

bb.ar:                                            ; preds = %bb.an
  %i.lf = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !63437
  %i.lg = load i8, ptr %i.lf, align 8, !dbg !63437, !range !3607, !noundef !3448
  %i.lh = trunc nuw i8 %i.lg to i1, !dbg !63437
  %i.li = getelementptr inbounds nuw i8, ptr %i.iz, i64 16, !dbg !63438
  %i.lj = load i64, ptr %i.li, align 8, !dbg !63438, !noundef !3448 ; 3 uses
  %i.lk = icmp ult i64 %i.lj, 2, !dbg !63439      ; 2 uses
  br i1 %i.lh, label %bb.bb, label %bb.ba, !dbg !63437

bb.as:                                            ; preds = %bb.an
  %i.ll = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !63437
  %i.lm = load i8, ptr %i.ll, align 8, !dbg !63437, !range !3607, !noundef !3448
  %i.ln = trunc nuw i8 %i.lm to i1, !dbg !63437
  %i.lo = getelementptr inbounds nuw i8, ptr %i.iz, i64 16, !dbg !63438
  %i.lp = load i64, ptr %i.lo, align 8, !dbg !63438, !noundef !3448 ; 3 uses
  %i.lq = icmp ult i64 %i.lp, 2, !dbg !63439      ; 2 uses
  br i1 %i.ln, label %bb.bj, label %bb.bi, !dbg !63437

bb.at:                                            ; preds = %bb.an
  %i.lr = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !63437
  %i.ls = load i8, ptr %i.lr, align 8, !dbg !63437, !range !3607, !noundef !3448
  %i.lt = trunc nuw i8 %i.ls to i1, !dbg !63437
  %i.lu = getelementptr inbounds nuw i8, ptr %i.iz, i64 16, !dbg !63438
  %i.lv = load i64, ptr %i.lu, align 8, !dbg !63438, !noundef !3448 ; 3 uses
  %i.lw = icmp ult i64 %i.lv, 2, !dbg !63439      ; 2 uses
  br i1 %i.lt, label %bb.br, label %bb.bq, !dbg !63437

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph3397
  %lcmp.mod4360.not = icmp eq i64 %xtraiter4359, 0, !dbg !63443
  br i1 %lcmp.mod4360.not, label %.loopexit, label %.lr.ph3397.epil.preheader, !dbg !63443

.lr.ph3397.epil.preheader:                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph3397.preheader
  %.sroa.0350.03396.epil.init = phi i64 [ 0, %.lr.ph3397.preheader ], [ %i.on, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod4361 = trunc i64 %.sroa.0.0.i634 to i1, !dbg !63443
  call void @llvm.assume(i1 %lcmp.mod4361), !dbg !63443
  %i.lx = add nuw i64 %.sroa.0350.03396.epil.init, %.val1.i.i.i, !dbg !63444 ; 3 uses
  %i.ly = add nuw i64 %.sroa.0350.03396.epil.init, %i.kc, !dbg !63445 ; 2 uses
  %i.lz = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !63446, !noundef !3448
  %i.ma = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !63447, !noundef !3448
  %i.mb = icmp ult i64 %i.lx, %i.ma, !dbg !63448
  call void @llvm.assume(i1 %i.mb), !dbg !63449
  %i.mc = getelementptr inbounds nuw [16 x i8], ptr %i.lz, i64 %i.lx, !dbg !63450
  %i.md = load i128, ptr %i.mc, align 16, !dbg !63451, !noundef !3448
  %i.me = load ptr, ptr %.sroa.4.0..sroa_idx.i624, align 8, !dbg !63452, !noundef !3448
  %i.mf = load i64, ptr %.sroa.5.0..sroa_idx5.i625, align 8, !dbg !63453, !noundef !3448
  %i.mg = icmp ult i64 %i.ly, %i.mf, !dbg !63454
  call void @llvm.assume(i1 %i.mg), !dbg !63455
  %i.mh = getelementptr inbounds nuw [16 x i8], ptr %i.me, i64 %i.ly, !dbg !63456
  %i.mi = load i128, ptr %i.mh, align 16, !dbg !63457, !noundef !3448
  %i.mj = add i128 %i.mi, %i.md, !dbg !63458
  %i.mk = getelementptr inbounds nuw [16 x i8], ptr %i.js, i64 %i.lx, !dbg !63459
  store i128 %i.mj, ptr %i.mk, align 16, !dbg !63460
  br label %.loopexit, !dbg !63435

.loopexit:                                        ; preds = %.lr.ph3397.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.au
  %exitcond3662 = icmp eq i64 %.sroa.10.03398, %i.kq, !dbg !63435
  br i1 %exitcond3662, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE22offset_and_length_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit, label %bb.au, !dbg !63435

bb.au:                                            ; preds = %.lr.ph3402, %.loopexit
  %.sroa.067.03401 = phi i64 [ 0, %.lr.ph3402 ], [ %spec.select, %.loopexit ] ; 2 uses
  %.sroa.01694.03400 = phi ptr [ %i.kn, %.lr.ph3402 ], [ %i.ml, %.loopexit ] ; 3 uses
  %.sroa.10.03398 = phi i64 [ 0, %.lr.ph3402 ], [ %i.mn, %.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01694.03400) ]
  %i.ml = getelementptr inbounds nuw i8, ptr %.sroa.01694.03400, i64 8, !dbg !63461 ; 2 uses
  %.val1.i.i.i = load i64, ptr %.sroa.01694.03400, align 8, !dbg !63462, !alias.scope !61170, !noalias !61171, !noundef !3448 ; 4 uses
  %.val.i.i.i = load i64, ptr %i.ml, align 8, !dbg !63463, !alias.scope !61170, !noalias !61171, !noundef !3448
  %i.mm = sub i64 %.val.i.i.i, %.val1.i.i.i, !dbg !63464 ; 2 uses
  %i.mn = add nuw i64 %.sroa.10.03398, 1, !dbg !63465
  %i.mo = icmp eq i64 %i.mm, %i.kg, !dbg !63466
  %i.mp = icmp eq i64 %.sroa.067.03401, %.sroa.10.03398, !dbg !63467
  %i.mq = and i1 %i.mp, %i.mo, !dbg !63468
  %i.mr = load ptr, ptr %i.ko, align 16, !dbg !63469, !nonnull !3448, !noundef !3448 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 40, !dbg !63470
  %i.mt = load i64, ptr %i.ms, align 8, !dbg !63470, !noundef !3448
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mr, i64 32, !dbg !63471
  %i.mv = load ptr, ptr %i.mu, align 8, !dbg !63471, !noundef !3448
  %i.mw = load i64, ptr %i.kp, align 8, !dbg !63472, !noundef !3448
  %i.mx = add i64 %i.mw, %.sroa.10.03398, !dbg !63472 ; 2 uses
  %i.my = lshr i64 %i.mx, 3, !dbg !63473          ; 2 uses
  %i.mz = icmp ult i64 %i.my, %i.mt, !dbg !63474
  call void @llvm.assume(i1 %i.mz), !dbg !63475
  %i.na = getelementptr inbounds nuw i8, ptr %i.mv, i64 %i.my, !dbg !63476
  %i.nb = load i8, ptr %i.na, align 1, !dbg !63477, !noundef !3448
  %i.nc = trunc i64 %i.mx to i8, !dbg !63478
  %i.nd = and i8 %i.nc, 7, !dbg !63478
  %i.ne = shl nuw i8 1, %i.nd, !dbg !63479
  %i.nf = and i8 %i.ne, %i.nb, !dbg !63479
  %.not527 = icmp eq i8 %i.nf, 0, !dbg !63479
  %i.ng = or i1 %i.mq, %.not527, !dbg !63468
  %i.nh = zext i1 %i.ng to i64, !dbg !63468
  %spec.select = add i64 %.sroa.067.03401, %i.nh, !dbg !63468 ; 2 uses
  %.sroa.0.0.i634 = call noundef i64 @llvm.umin.i64(i64 %i.kg, i64 %i.mm), !dbg !63480 ; 5 uses
  %.not3424 = icmp eq i64 %.sroa.0.0.i634, 0, !dbg !63481
  br i1 %.not3424, label %.loopexit, label %.lr.ph3397.preheader, !dbg !63443

.lr.ph3397.preheader:                             ; preds = %bb.au
  %xtraiter4359 = and i64 %.sroa.0.0.i634, 1, !dbg !63443
  %i.ni = icmp eq i64 %.sroa.0.0.i634, 1, !dbg !63443
  br i1 %i.ni, label %.lr.ph3397.epil.preheader, label %.lr.ph3397.preheader.new, !dbg !63443

.lr.ph3397.preheader.new:                         ; preds = %.lr.ph3397.preheader
  %unroll_iter4362 = and i64 %.sroa.0.0.i634, -2, !dbg !63443
  br label %.lr.ph3397, !dbg !63443

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE22offset_and_length_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %.loopexit2735, %.loopexit2733, %.loopexit2731, %.loopexit2729, %.loopexit2727, %.loopexit2725, %.loopexit2723, %.loopexit2721, %.loopexit2719, %.loopexit, %bb.bq, %bb.br, %bb.bi, %bb.bj, %bb.ba, %bb.bb, %bb.aq, %bb.av, %bb.aw, %bb.ao
  %.sroa.067.1 = phi i64 [ %spec.select538, %.loopexit2727 ], [ %spec.select536, %.loopexit2719 ], [ %spec.select540, %.loopexit2731 ], [ %spec.select, %.loopexit ], [ %spec.select539, %.loopexit2725 ], [ %spec.select535, %.loopexit2721 ], [ %spec.select541, %.loopexit2729 ], [ %spec.select537, %.loopexit2723 ], [ %spec.select543, %.loopexit2733 ], [ 0, %bb.ao ], [ 0, %bb.aw ], [ 0, %bb.av ], [ 0, %bb.aq ], [ 0, %bb.bb ], [ 0, %bb.ba ], [ 0, %bb.bj ], [ 0, %bb.bi ], [ 0, %bb.br ], [ 0, %bb.bq ], [ %spec.select542, %.loopexit2735 ], !dbg !63482
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl), !dbg !61623
  %i.nj = getelementptr i8, ptr %i.iz, i64 8, !dbg !61623
  %.val607 = load ptr, ptr %i.nj, align 8, !dbg !61623
  %i.nk = getelementptr i8, ptr %i.iz, i64 16, !dbg !61623
  %.val608 = load i64, ptr %i.nk, align 8, !dbg !61623, !noundef !3448
  %.val609 = load ptr, ptr %i.ka, align 8, !dbg !61623
  %.val610 = load i64, ptr %i.jw, align 8, !dbg !61623
  invoke fastcc void @_RNvNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB4_19ListNumericOpHelper12__finish_impl18check_mismatch_pos(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.dl, i64 noundef %.sroa.067.1, ptr %.val607, i64 %.val608, ptr %.val609, i64 %.val610)
          to label %bb.bw unwind label %bb.dt, !dbg !61623

.lr.ph3397:                                       ; preds = %.lr.ph3397, %.lr.ph3397.preheader.new
  %.sroa.0350.03396 = phi i64 [ 0, %.lr.ph3397.preheader.new ], [ %i.on, %.lr.ph3397 ] ; 4 uses
  %niter4363 = phi i64 [ 0, %.lr.ph3397.preheader.new ], [ %niter4363.next.1, %.lr.ph3397 ]
  %i.nl = add nuw i64 %.sroa.0350.03396, %.val1.i.i.i, !dbg !63444 ; 3 uses
  %i.nm = add nuw i64 %.sroa.0350.03396, %i.kc, !dbg !63445 ; 2 uses
  %i.nn = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !63446, !noundef !3448
  %i.no = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !63447, !noundef !3448
  %i.np = icmp ult i64 %i.nl, %i.no, !dbg !63448
  call void @llvm.assume(i1 %i.np), !dbg !63449
  %i.nq = getelementptr inbounds nuw [16 x i8], ptr %i.nn, i64 %i.nl, !dbg !63450
  %i.nr = load i128, ptr %i.nq, align 16, !dbg !63451, !noundef !3448
  %i.ns = load ptr, ptr %.sroa.4.0..sroa_idx.i624, align 8, !dbg !63452, !noundef !3448
  %i.nt = load i64, ptr %.sroa.5.0..sroa_idx5.i625, align 8, !dbg !63453, !noundef !3448
  %i.nu = icmp ult i64 %i.nm, %i.nt, !dbg !63454
  call void @llvm.assume(i1 %i.nu), !dbg !63455
  %i.nv = getelementptr inbounds nuw [16 x i8], ptr %i.ns, i64 %i.nm, !dbg !63456
  %i.nw = load i128, ptr %i.nv, align 16, !dbg !63457, !noundef !3448
  %i.nx = add i128 %i.nw, %i.nr, !dbg !63458
  %i.ny = or disjoint i64 %.sroa.0350.03396, 1, !dbg !63483 ; 2 uses
  %i.nz = getelementptr inbounds nuw [16 x i8], ptr %i.js, i64 %i.nl, !dbg !63459
  store i128 %i.nx, ptr %i.nz, align 16, !dbg !63460
  %i.oa = add nuw i64 %i.ny, %.val1.i.i.i, !dbg !63444 ; 3 uses
  %i.ob = add nuw i64 %i.ny, %i.kc, !dbg !63445   ; 2 uses
  %i.oc = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !63446, !noundef !3448
  %i.od = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !63447, !noundef !3448
  %i.oe = icmp ult i64 %i.oa, %i.od, !dbg !63448
  call void @llvm.assume(i1 %i.oe), !dbg !63449
  %i.of = getelementptr inbounds nuw [16 x i8], ptr %i.oc, i64 %i.oa, !dbg !63450
  %i.og = load i128, ptr %i.of, align 16, !dbg !63451, !noundef !3448
  %i.oh = load ptr, ptr %.sroa.4.0..sroa_idx.i624, align 8, !dbg !63452, !noundef !3448
  %i.oi = load i64, ptr %.sroa.5.0..sroa_idx5.i625, align 8, !dbg !63453, !noundef !3448
  %i.oj = icmp ult i64 %i.ob, %i.oi, !dbg !63454
  call void @llvm.assume(i1 %i.oj), !dbg !63455
  %i.ok = getelementptr inbounds nuw [16 x i8], ptr %i.oh, i64 %i.ob, !dbg !63456
end_hunk_0
begin_hunk_1_@_RINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB3_19ListNumericOpHelper12__finish_implNtNtBb_9datatypes10UInt16TypeEBb_:bb.a
bb.s:                                             ; preds = %.noexc640
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hl, i64 24, !dbg !70540
  %i.hv = atomicrmw add ptr %i.hu, i64 1 monotonic, align 8, !dbg !70541, !noalias !68221 ; 0 uses
  br label %bb.r, !dbg !70542

bb.t:                                             ; preds = %bb.r
  %i.hw = load i64, ptr %i.ht, align 8, !dbg !70543, !range !3591, !noalias !68222, !noundef !3448
  %i.hx = icmp eq i64 %i.hw, 3, !dbg !70544
  br i1 %i.hx, label %bb.v, label %bb.u, !dbg !70544

bb.u:                                             ; preds = %bb.t
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ht, i64 24, !dbg !70545
  %i.hz = atomicrmw add ptr %i.hy, i64 1 monotonic, align 8, !dbg !70546, !noalias !68222 ; 0 uses
  br label %bb.v, !dbg !70547

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hj, i64 64, !dbg !70548
  %i.ib = load <2 x i64>, ptr %i.ia, align 8, !dbg !70548, !noalias !68222
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hj, i64 80, !dbg !70549
  %i.id = load atomic i64, ptr %i.ic monotonic, align 8, !dbg !70550, !noalias !68222
  br label %bb.w, !dbg !70551

bb.w:                                             ; preds = %bb.v, %bb.r
  %.sroa.5.sroa.5.0.i632 = phi i64 [ undef, %bb.r ], [ %i.id, %bb.v ], !dbg !70552
  %i.ie = phi <2 x i64> [ undef, %bb.r ], [ %i.ib, %bb.v ], !dbg !70552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.fa, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 32, i1 false), !dbg !70553
  %i.if = getelementptr inbounds nuw i8, ptr %i.fa, i64 32, !dbg !70553 ; 7 uses
  store ptr %i.hl, ptr %i.if, align 8, !dbg !70553, !alias.scope !68221
  %.sroa.4.0..sroa_idx.i635 = getelementptr inbounds nuw i8, ptr %i.fa, i64 40, !dbg !70553 ; 58 uses
  store ptr %i.hp, ptr %.sroa.4.0..sroa_idx.i635, align 8, !dbg !70553, !alias.scope !68221
  %.sroa.5.0..sroa_idx5.i636 = getelementptr inbounds nuw i8, ptr %i.fa, i64 48, !dbg !70553 ; 58 uses
  store i64 %i.hr, ptr %.sroa.5.0..sroa_idx5.i636, align 8, !dbg !70553, !alias.scope !68221
  %i.ig = getelementptr inbounds nuw i8, ptr %i.fa, i64 56, !dbg !70553 ; 22 uses
  store ptr %i.ht, ptr %i.ig, align 8, !dbg !70553, !alias.scope !68221
  %.sroa.5.0..sroa_idx.i637 = getelementptr inbounds nuw i8, ptr %i.fa, i64 64, !dbg !70553 ; 2 uses
  store <2 x i64> %i.ie, ptr %.sroa.5.0..sroa_idx.i637, align 8, !dbg !70553, !alias.scope !68221
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i639 = getelementptr inbounds nuw i8, ptr %i.fa, i64 80, !dbg !70553
  store i64 %.sroa.5.sroa.5.0.i632, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i639, align 8, !dbg !70553, !alias.scope !68221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !70554, !noalias !68221
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 313, !dbg !70555 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 314, !dbg !70556 ; 3 uses
  %i.ij = load i8, ptr %i.ih, align 1, !dbg !70557, !range !3609, !noundef !3448
  %i.ik = icmp eq i8 %i.ij, 1, !dbg !70558
  br i1 %i.ik, label %bb.x, label %bb.y, !dbg !70558

bb.x:                                             ; preds = %bb.w
  %i.il = load i8, ptr %i.ii, align 2, !dbg !70557, !range !3609, !noundef !3448 ; 2 uses
  %i.im = icmp eq i8 %i.il, 1, !dbg !70558
  br i1 %i.im, label %.thread1909, label %bb.aa, !dbg !70558

bb.y:                                             ; preds = %bb.w
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 288, !dbg !70559
  %i.io = load ptr, ptr %i.in, align 16, !dbg !70559, !noundef !3448
  %.not467 = icmp eq ptr %i.io, null, !dbg !70559
  br i1 %.not467, label %bb.ac, label %.invoke3845, !dbg !70560, !prof !3552

bb.z:                                             ; preds = %bb.ac
  %.pr.pre = load i8, ptr %i.ih, align 1, !dbg !70561
  switch i8 %.pr.pre, label %default.unreachable [
    i8 0, label %bb.ae
    i8 1, label %.thread
    i8 2, label %.invoke3845
  ], !dbg !70562, !prof !3764

bb.aa:                                            ; preds = %bb.x
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 288, !dbg !70559
  %i.iq = load ptr, ptr %i.ip, align 16, !dbg !70559, !noundef !3448
  %.not468 = icmp eq ptr %i.iq, null, !dbg !70559
  br i1 %.not468, label %bb.ac, label %bb.ab, !dbg !70560

bb.ab:                                            ; preds = %bb.aa
  %i.ir = icmp eq i8 %i.il, 2, !dbg !70558
  br i1 %i.ir, label %.thread, label %.invoke3845, !dbg !70558, !prof !3552

bb.ac:                                            ; preds = %bb.aa, %bb.y
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 315, !dbg !70563
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !70564
  %i.iu = load i8, ptr %i.it, align 8, !dbg !70564, !range !3607, !noundef !3448
  %i.iv = trunc nuw i8 %i.iu to i1, !dbg !70564
  %.val609 = load i8, ptr %i.is, align 1, !dbg !70565, !range !3608, !noundef !3448
  invoke fastcc void @_RINvMNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic10list_utilsNtB3_9NumericOp34prepare_numeric_op_side_validitiesNtNtB9_9datatypes10UInt16TypeEB9_(i8 %.val609, ptr noalias noundef align 8 dereferenceable(88) %i.fc, ptr noalias noundef align 8 dereferenceable(88) %i.fa, i1 noundef zeroext %i.iv)
          to label %bb.z unwind label %bb.ad, !dbg !70565

.critedge560:                                     ; preds = %.critedge566.thread2562, %.critedge566, %.critedge566.thread, %bb.qs, %bb.qt, %.body.i1451, %.critedge558.thread2556, %.critedge556.thread2553, %.critedge556, %.critedge556.thread, %bb.gx, %bb.gy, %.body.i925, %.critedge.thread2550, %.critedge, %.critedge.thread, %bb.dd, %bb.de, %.body.i, %bb.mx, %bb.my, %bb.ib, %bb.hd, %bb.fu, %bb.bt, %bb.ad, %.thread2240, %bb.qu, %bb.jh, %.critedge558.thread, %.critedge558, %.loopexit.split-lp, %bb.dn
  %.sroa.0223.2 = phi i1 [ true, %bb.ib ], [ true, %bb.dn ], [ true, %bb.mx ], [ true, %.loopexit.split-lp ], [ true, %.critedge.thread2550 ], [ true, %bb.jh ], [ true, %bb.hd ], [ false, %.critedge558.thread ], [ false, %.critedge558 ], [ true, %bb.qu ], [ false, %.critedge558.thread2556 ], [ true, %.thread2240 ], [ %.sroa.0223.3, %bb.ad ], [ true, %bb.bt ], [ true, %bb.fu ], [ true, %bb.my ], [ true, %bb.dd ], [ true, %.body.i ], [ true, %bb.de ], [ true, %.critedge.thread ], [ true, %.critedge ], [ true, %bb.gx ], [ true, %.body.i925 ], [ true, %bb.gy ], [ true, %.critedge556.thread ], [ true, %.critedge556 ], [ true, %.critedge556.thread2553 ], [ true, %bb.qs ], [ true, %.body.i1451 ], [ true, %bb.qt ], [ true, %.critedge566.thread ], [ true, %.critedge566 ], [ true, %.critedge566.thread2562 ], !dbg !70566
  %.pn530 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp2231, %bb.ib ], [ %i.ajc, %bb.dn ], [ %i.cmu, %bb.mx ], [ %lpad.phi, %.loopexit.split-lp ], [ %lpad.thr_comm.split-lp2063, %.critedge.thread2550 ], [ %.pn4872225, %bb.jh ], [ %i.bri, %bb.hd ], [ %.pn4852210, %.critedge558.thread ], [ %eh.lpad-body5742216, %.critedge558 ], [ %i.dse, %bb.qu ], [ %i.brv, %.critedge558.thread2556 ], [ %.pn475.pn, %.thread2240 ], [ %i.iw, %bb.ad ], [ %i.agk, %bb.bt ], [ %i.bnz, %bb.fu ], [ %i.cmu, %bb.my ], [ %i.aic, %bb.dd ], [ %eh.lpad-body.i, %.body.i ], [ %i.aic, %bb.de ], [ %.pn5242055, %.critedge.thread ], [ %eh.lpad-body5802061, %.critedge ], [ %i.bpi, %bb.gx ], [ %eh.lpad-body.i926, %.body.i925 ], [ %i.bpi, %bb.gy ], [ %.pn5032194, %.critedge556.thread ], [ %eh.lpad-body5772200, %.critedge556 ], [ %lpad.thr_comm.split-lp2202, %.critedge556.thread2553 ], [ %i.dsb, %bb.qs ], [ %eh.lpad-body.i1452, %.body.i1451 ], [ %i.dsb, %bb.qt ], [ %.pn4802540, %.critedge566.thread ], [ %eh.lpad-body2546, %.critedge566 ], [ %i.drm, %.critedge566.thread2562 ] ; 2 uses
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.fa) #49
          to label %bb.m unwind label %bb.db, !dbg !70567

bb.ad:                                            ; preds = %.invoke3845, %.invoke3843, %.invoke3841, %.invoke, %bb.fv, %bb.bu, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array17is_null_uncheckedCs1LHh8CLbVkQ_11polars_core.exit.thread, %bb.ac, %bb.ji, %bb.dq, %bb.ai
  %.sroa.0223.3 = phi i1 [ true, %.invoke3845 ], [ true, %.invoke ], [ true, %bb.bu ], [ true, %bb.ai ], [ false, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array17is_null_uncheckedCs1LHh8CLbVkQ_11polars_core.exit.thread ], [ true, %bb.ac ], [ true, %bb.ji ], [ true, %bb.fv ], [ true, %bb.dq ], [ true, %.invoke3841 ], [ true, %.invoke3843 ], !dbg !70566
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %.critedge560

default.unreachable3670:                          ; preds = %bb.nd, %bb.jt, %bb.dt, %bb.an, %bb.ae
  unreachable

default.unreachable:                              ; preds = %.thread, %bb.z
  unreachable

bb.ae:                                            ; preds = %bb.z
  %i.ix = load i8, ptr %i.ii, align 2, !dbg !70561, !range !3609, !noundef !3448
  switch i8 %i.ix, label %default.unreachable3670 [
    i8 0, label %.invoke3845
    i8 1, label %bb.af
    i8 2, label %bb.ag
  ], !dbg !70562, !prof !3765

.thread:                                          ; preds = %bb.ab, %bb.z
  %.pr1908 = load i8, ptr %i.ii, align 2, !dbg !70561
  switch i8 %.pr1908, label %default.unreachable [
    i8 0, label %.invoke3845
    i8 1, label %..thread1909_crit_edge
    i8 2, label %bb.ha
  ], !dbg !70562, !prof !3766

..thread1909_crit_edge:                           ; preds = %.thread
  %.pre = load i64, ptr %.sroa.5.0..sroa_idx5.i636, align 8, !dbg !70568
  br label %.thread1909, !dbg !70562

bb.af:                                            ; preds = %bb.ae
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !70569
  %i.iz = load ptr, ptr %i.iy, align 8, !dbg !70569, !nonnull !3448, !noundef !3448 ; 19 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !70570
  %i.jb = load i64, ptr %i.ja, align 16, !dbg !70570, !noundef !3448
  %.not509 = icmp eq i64 %i.jb, 0, !dbg !70571
  br i1 %.not509, label %.invoke3843, label %bb.ah, !dbg !70571

bb.ag:                                            ; preds = %bb.ae
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !70572
  %i.jd = load ptr, ptr %i.jc, align 8, !dbg !70572, !nonnull !3448, !noundef !3448 ; 8 uses
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !70573
  %i.jf = load i64, ptr %i.je, align 16, !dbg !70573, !noundef !3448
  %.not489 = icmp eq i64 %i.jf, 0, !dbg !70574
  br i1 %.not489, label %.invoke3843, label %bb.do, !dbg !70574

.invoke3845:                                      ; preds = %bb.ab, %bb.y, %bb.z, %bb.ae, %.thread
  %i.jg = phi ptr [ @41, %bb.z ], [ @41, %.thread ], [ @41, %bb.ae ], [ @27, %bb.y ], [ @27, %bb.ab ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jg) #48
          to label %.cont3846 unwind label %bb.ad, !dbg !68875

.cont3846:                                        ; preds = %.invoke3845
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !70575
  %i.ji = load ptr, ptr %i.jh, align 8, !dbg !70575, !nonnull !3448, !noundef !3448 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !70576
  %i.jk = load i64, ptr %i.jj, align 16, !dbg !70576, !noundef !3448
  %.not510 = icmp eq i64 %i.jk, 0, !dbg !70577
  br i1 %.not510, label %.invoke3843, label %bb.ai, !dbg !70577

bb.ai:                                            ; preds = %bb.ah
  %i.jl = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !70578, !noundef !3448 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn), !dbg !70579
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !70580
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.an, i64 noundef %i.jl, i1 noundef zeroext false, i64 noundef 2, i64 noundef 2)
          to label %bb.aj unwind label %bb.ad, !dbg !70580

bb.aj:                                            ; preds = %bb.ai
  %i.jm = load i64, ptr %i.an, align 8, !dbg !70580, !range !3450, !noundef !3448
  %i.jn = trunc nuw i64 %i.jm to i1, !dbg !70581
  %i.jo = getelementptr inbounds nuw i8, ptr %i.an, i64 8, !dbg !70582
  %i.jp = load i64, ptr %i.jo, align 8, !dbg !70582, !range !3612, !noundef !3448 ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.an, i64 16, !dbg !70582 ; 2 uses
  br i1 %i.jn, label %bb.ak, label %bb.al, !dbg !70581, !prof !3502

bb.ak:                                            ; preds = %bb.aj
  %i.jr = load i64, ptr %i.jq, align 8, !dbg !70583
  br label %.invoke, !dbg !70584

bb.al:                                            ; preds = %bb.aj
  %i.js = load ptr, ptr %i.jq, align 8, !dbg !70585, !nonnull !3448, !noundef !3448 ; 19 uses
  %i.jt = icmp ule i64 %i.jl, %i.jp, !dbg !70586
  call void @llvm.assume(i1 %i.jt), !dbg !70587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !70588
  store i64 %i.jp, ptr %i.dn, align 8, !dbg !70589
  %i.ju = getelementptr inbounds nuw i8, ptr %i.dn, i64 8, !dbg !70589
  store ptr %i.js, ptr %i.ju, align 8, !dbg !70589
  %i.jv = getelementptr inbounds nuw i8, ptr %i.dn, i64 16, !dbg !70589 ; 2 uses
  store i64 0, ptr %i.jv, align 8, !dbg !70589
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ji, i64 16, !dbg !70590 ; 2 uses
  %i.jx = load i64, ptr %i.jw, align 8, !dbg !70590, !noundef !3448 ; 3 uses
  %i.jy = add i64 %i.jx, -1, !dbg !70591          ; 2 uses
  store i64 %i.jy, ptr %i.dm, align 8, !dbg !70591
  %i.jz = icmp eq i64 %i.jy, 1, !dbg !70592
  br i1 %i.jz, label %bb.an, label %bb.am, !dbg !70592, !prof !3552

bb.am:                                            ; preds = %bb.al
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @5, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #48
          to label %bb.l unwind label %bb.dn, !dbg !70593

bb.an:                                            ; preds = %bb.al
  %i.ka = getelementptr i8, ptr %i.ji, i64 8, !dbg !70594 ; 2 uses
  %i.kb = load ptr, ptr %i.ka, align 8, !dbg !70594, !nonnull !3448, !noundef !3448 ; 2 uses
  %i.kc = load i64, ptr %i.kb, align 8, !dbg !70595, !noundef !3448 ; 20 uses
  %.not.i642 = icmp ne i64 %i.jx, 0, !dbg !70596
  call void @llvm.assume(i1 %.not.i642), !dbg !70596
  %i.kd = getelementptr [8 x i8], ptr %i.kb, i64 %i.jx, !dbg !70597
  %i.ke = getelementptr i8, ptr %i.kd, i64 -8, !dbg !70597 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ke) ]
  %i.kf = load i64, ptr %i.ke, align 8, !dbg !70598, !noundef !3448
  %i.kg = sub i64 %i.kf, %i.kc, !dbg !70599       ; 21 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %1, i64 315, !dbg !70600
  %i.ki = load i8, ptr %i.kh, align 1, !dbg !70600, !range !3608, !noundef !3448
  switch i8 %i.ki, label %default.unreachable3670 [
    i8 0, label %bb.ao
    i8 1, label %bb.ap
    i8 2, label %bb.aq
    i8 3, label %bb.ar
    i8 4, label %bb.as
    i8 5, label %bb.at
  ], !dbg !70601

bb.ao:                                            ; preds = %bb.an
  %i.kj = getelementptr inbounds nuw i8, ptr %i.iz, i64 16, !dbg !70602
  %i.kk = load i64, ptr %i.kj, align 8, !dbg !70602, !noundef !3448 ; 2 uses
  %i.kl = icmp ult i64 %i.kk, 2, !dbg !70603
  br i1 %i.kl, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE22offset_and_length_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit, label %.lr.ph3237, !dbg !70603

.lr.ph3237:                                       ; preds = %bb.ao
  %i.km = getelementptr inbounds nuw i8, ptr %i.iz, i64 8, !dbg !70604
  %i.kn = load ptr, ptr %i.km, align 8, !dbg !70604, !noundef !3448
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.kp = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.kq = add i64 %i.kk, -2
  br label %bb.au, !dbg !70603

bb.ap:                                            ; preds = %bb.an
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !70605
  %i.ks = load i8, ptr %i.kr, align 8, !dbg !70605, !range !3607, !noundef !3448
  %i.kt = trunc nuw i8 %i.ks to i1, !dbg !70605
  %i.ku = getelementptr inbounds nuw i8, ptr %i.iz, i64 16, !dbg !70606
  %i.kv = load i64, ptr %i.ku, align 8, !dbg !70606, !noundef !3448 ; 3 uses
  %i.kw = icmp ult i64 %i.kv, 2, !dbg !70607      ; 2 uses
  br i1 %i.kt, label %bb.aw, label %bb.av, !dbg !70605

bb.aq:                                            ; preds = %bb.an
  %i.kx = getelementptr inbounds nuw i8, ptr %i.iz, i64 16, !dbg !70608
  %i.ky = load i64, ptr %i.kx, align 8, !dbg !70608, !noundef !3448 ; 2 uses
  %i.kz = icmp ult i64 %i.ky, 2, !dbg !70609
  br i1 %i.kz, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE22offset_and_length_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit, label %.lr.ph3213, !dbg !70609

.lr.ph3213:                                       ; preds = %bb.aq
  %i.la = getelementptr inbounds nuw i8, ptr %i.iz, i64 8, !dbg !70610
  %i.lb = load ptr, ptr %i.la, align 8, !dbg !70610, !noundef !3448
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ld = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.le = add i64 %i.ky, -2
  br label %bb.az, !dbg !70609

bb.ar:                                            ; preds = %bb.an
  %i.lf = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !70605
  %i.lg = load i8, ptr %i.lf, align 8, !dbg !70605, !range !3607, !noundef !3448
  %i.lh = trunc nuw i8 %i.lg to i1, !dbg !70605
  %i.li = getelementptr inbounds nuw i8, ptr %i.iz, i64 16, !dbg !70606
  %i.lj = load i64, ptr %i.li, align 8, !dbg !70606, !noundef !3448 ; 3 uses
  %i.lk = icmp ult i64 %i.lj, 2, !dbg !70607      ; 2 uses
  br i1 %i.lh, label %bb.bb, label %bb.ba, !dbg !70605

bb.as:                                            ; preds = %bb.an
  %i.ll = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !70605
  %i.lm = load i8, ptr %i.ll, align 8, !dbg !70605, !range !3607, !noundef !3448
  %i.ln = trunc nuw i8 %i.lm to i1, !dbg !70605
  %i.lo = getelementptr inbounds nuw i8, ptr %i.iz, i64 16, !dbg !70606
  %i.lp = load i64, ptr %i.lo, align 8, !dbg !70606, !noundef !3448 ; 3 uses
  %i.lq = icmp ult i64 %i.lp, 2, !dbg !70607      ; 2 uses
  br i1 %i.ln, label %bb.bh, label %bb.bg, !dbg !70605

bb.at:                                            ; preds = %bb.an
  %i.lr = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !70605
  %i.ls = load i8, ptr %i.lr, align 8, !dbg !70605, !range !3607, !noundef !3448
  %i.lt = trunc nuw i8 %i.ls to i1, !dbg !70605
  %i.lu = getelementptr inbounds nuw i8, ptr %i.iz, i64 16, !dbg !70606
  %i.lv = load i64, ptr %i.lu, align 8, !dbg !70606, !noundef !3448 ; 3 uses
  %i.lw = icmp ult i64 %i.lv, 2, !dbg !70607      ; 2 uses
  br i1 %i.lt, label %bb.bn, label %bb.bm, !dbg !70605

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph3232
  %lcmp.mod4512.not = icmp eq i64 %xtraiter4511, 0, !dbg !70611
  br i1 %lcmp.mod4512.not, label %.loopexit, label %.lr.ph3232.epil.preheader, !dbg !70611

.lr.ph3232.epil.preheader:                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph3232.preheader
  %.sroa.0350.03231.epil.init = phi i64 [ 0, %.lr.ph3232.preheader ], [ %i.on, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod4513 = trunc i64 %.sroa.0.0.i645 to i1, !dbg !70611
  call void @llvm.assume(i1 %lcmp.mod4513), !dbg !70611
  %i.lx = add nuw i64 %.sroa.0350.03231.epil.init, %.val1.i.i.i, !dbg !70612 ; 3 uses
  %i.ly = add nuw i64 %.sroa.0350.03231.epil.init, %i.kc, !dbg !70613 ; 2 uses
  %i.lz = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !70614, !noundef !3448
  %i.ma = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !70615, !noundef !3448
  %i.mb = icmp ult i64 %i.lx, %i.ma, !dbg !70616
  call void @llvm.assume(i1 %i.mb), !dbg !70617
  %i.mc = getelementptr inbounds nuw [2 x i8], ptr %i.lz, i64 %i.lx, !dbg !70618
  %i.md = load i16, ptr %i.mc, align 2, !dbg !70619, !noundef !3448
  %i.me = load ptr, ptr %.sroa.4.0..sroa_idx.i635, align 8, !dbg !70620, !noundef !3448
  %i.mf = load i64, ptr %.sroa.5.0..sroa_idx5.i636, align 8, !dbg !70621, !noundef !3448
  %i.mg = icmp ult i64 %i.ly, %i.mf, !dbg !70622
  call void @llvm.assume(i1 %i.mg), !dbg !70623
  %i.mh = getelementptr inbounds nuw [2 x i8], ptr %i.me, i64 %i.ly, !dbg !70624
  %i.mi = load i16, ptr %i.mh, align 2, !dbg !70625, !noundef !3448
  %i.mj = add i16 %i.mi, %i.md, !dbg !70626
  %i.mk = getelementptr inbounds nuw [2 x i8], ptr %i.js, i64 %i.lx, !dbg !70627
  store i16 %i.mj, ptr %i.mk, align 2, !dbg !70628
  br label %.loopexit, !dbg !70603

.loopexit:                                        ; preds = %.lr.ph3232.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.au
  %exitcond3489 = icmp eq i64 %.sroa.10.03233, %i.kq, !dbg !70603
  br i1 %exitcond3489, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE22offset_and_length_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit, label %bb.au, !dbg !70603

bb.au:                                            ; preds = %.lr.ph3237, %.loopexit
  %.sroa.067.03236 = phi i64 [ 0, %.lr.ph3237 ], [ %spec.select, %.loopexit ] ; 2 uses
  %.sroa.01594.03235 = phi ptr [ %i.kn, %.lr.ph3237 ], [ %i.ml, %.loopexit ] ; 3 uses
  %.sroa.10.03233 = phi i64 [ 0, %.lr.ph3237 ], [ %i.mn, %.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01594.03235) ]
  %i.ml = getelementptr inbounds nuw i8, ptr %.sroa.01594.03235, i64 8, !dbg !70629 ; 2 uses
  %.val1.i.i.i = load i64, ptr %.sroa.01594.03235, align 8, !dbg !70630, !alias.scope !68332, !noalias !68333, !noundef !3448 ; 4 uses
  %.val.i.i.i = load i64, ptr %i.ml, align 8, !dbg !70631, !alias.scope !68332, !noalias !68333, !noundef !3448
  %i.mm = sub i64 %.val.i.i.i, %.val1.i.i.i, !dbg !70632 ; 2 uses
  %i.mn = add nuw i64 %.sroa.10.03233, 1, !dbg !70633
  %i.mo = icmp eq i64 %i.mm, %i.kg, !dbg !70634
  %i.mp = icmp eq i64 %.sroa.067.03236, %.sroa.10.03233, !dbg !70635
  %i.mq = and i1 %i.mp, %i.mo, !dbg !70636
  %i.mr = load ptr, ptr %i.ko, align 16, !dbg !70637, !nonnull !3448, !noundef !3448 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 40, !dbg !70638
  %i.mt = load i64, ptr %i.ms, align 8, !dbg !70638, !noundef !3448
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mr, i64 32, !dbg !70639
  %i.mv = load ptr, ptr %i.mu, align 8, !dbg !70639, !noundef !3448
  %i.mw = load i64, ptr %i.kp, align 8, !dbg !70640, !noundef !3448
  %i.mx = add i64 %i.mw, %.sroa.10.03233, !dbg !70640 ; 2 uses
  %i.my = lshr i64 %i.mx, 3, !dbg !70641          ; 2 uses
  %i.mz = icmp ult i64 %i.my, %i.mt, !dbg !70642
  call void @llvm.assume(i1 %i.mz), !dbg !70643
  %i.na = getelementptr inbounds nuw i8, ptr %i.mv, i64 %i.my, !dbg !70644
  %i.nb = load i8, ptr %i.na, align 1, !dbg !70645, !noundef !3448
  %i.nc = trunc i64 %i.mx to i8, !dbg !70646
  %i.nd = and i8 %i.nc, 7, !dbg !70646
  %i.ne = shl nuw i8 1, %i.nd, !dbg !70647
  %i.nf = and i8 %i.ne, %i.nb, !dbg !70647
  %.not527 = icmp eq i8 %i.nf, 0, !dbg !70647
  %i.ng = or i1 %i.mq, %.not527, !dbg !70636
  %i.nh = zext i1 %i.ng to i64, !dbg !70636
  %spec.select = add i64 %.sroa.067.03236, %i.nh, !dbg !70636 ; 2 uses
  %.sroa.0.0.i645 = call noundef i64 @llvm.umin.i64(i64 %i.kg, i64 %i.mm), !dbg !70648 ; 5 uses
  %.not3257 = icmp eq i64 %.sroa.0.0.i645, 0, !dbg !70649
  br i1 %.not3257, label %.loopexit, label %.lr.ph3232.preheader, !dbg !70611

.lr.ph3232.preheader:                             ; preds = %bb.au
  %xtraiter4511 = and i64 %.sroa.0.0.i645, 1, !dbg !70611
  %i.ni = icmp eq i64 %.sroa.0.0.i645, 1, !dbg !70611
  br i1 %i.ni, label %.lr.ph3232.epil.preheader, label %.lr.ph3232.preheader.new, !dbg !70611

.lr.ph3232.preheader.new:                         ; preds = %.lr.ph3232.preheader
  %unroll_iter4514 = and i64 %.sroa.0.0.i645, -2, !dbg !70611
  br label %.lr.ph3232, !dbg !70611

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE22offset_and_length_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %.loopexit2581, %.loopexit2579, %.loopexit2577, %.loopexit2575, %.loopexit2573, %.loopexit2571, %.loopexit2569, %.loopexit2567, %.loopexit2565, %.loopexit, %bb.bm, %bb.bn, %bb.bg, %bb.bh, %bb.ba, %bb.bb, %bb.aq, %bb.av, %bb.aw, %bb.ao
  %.sroa.067.1 = phi i64 [ %spec.select538, %.loopexit2573 ], [ %spec.select536, %.loopexit2565 ], [ %spec.select540, %.loopexit2577 ], [ %spec.select, %.loopexit ], [ %spec.select539, %.loopexit2571 ], [ %spec.select535, %.loopexit2567 ], [ %spec.select541, %.loopexit2575 ], [ %spec.select537, %.loopexit2569 ], [ %spec.select543, %.loopexit2579 ], [ 0, %bb.ao ], [ 0, %bb.aw ], [ 0, %bb.av ], [ 0, %bb.aq ], [ 0, %bb.bb ], [ 0, %bb.ba ], [ 0, %bb.bh ], [ 0, %bb.bg ], [ 0, %bb.bn ], [ 0, %bb.bm ], [ %spec.select542, %.loopexit2581 ], !dbg !70650
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl), !dbg !68785
  %i.nj = getelementptr i8, ptr %i.iz, i64 8, !dbg !68785
  %.val617 = load ptr, ptr %i.nj, align 8, !dbg !68785
  %i.nk = getelementptr i8, ptr %i.iz, i64 16, !dbg !68785
  %.val618 = load i64, ptr %i.nk, align 8, !dbg !68785, !noundef !3448
  %.val619 = load ptr, ptr %i.ka, align 8, !dbg !68785
  %.val620 = load i64, ptr %i.jw, align 8, !dbg !68785
  invoke fastcc void @_RNvNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB4_19ListNumericOpHelper12__finish_impl18check_mismatch_pos(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.dl, i64 noundef %.sroa.067.1, ptr %.val617, i64 %.val618, ptr %.val619, i64 %.val620)
          to label %bb.br unwind label %bb.dn, !dbg !68785

.lr.ph3232:                                       ; preds = %.lr.ph3232, %.lr.ph3232.preheader.new
  %.sroa.0350.03231 = phi i64 [ 0, %.lr.ph3232.preheader.new ], [ %i.on, %.lr.ph3232 ] ; 4 uses
  %niter4515 = phi i64 [ 0, %.lr.ph3232.preheader.new ], [ %niter4515.next.1, %.lr.ph3232 ]
  %i.nl = add nuw i64 %.sroa.0350.03231, %.val1.i.i.i, !dbg !70612 ; 3 uses
  %i.nm = add nuw i64 %.sroa.0350.03231, %i.kc, !dbg !70613 ; 2 uses
  %i.nn = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !70614, !noundef !3448
  %i.no = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !70615, !noundef !3448
  %i.np = icmp ult i64 %i.nl, %i.no, !dbg !70616
  call void @llvm.assume(i1 %i.np), !dbg !70617
  %i.nq = getelementptr inbounds nuw [2 x i8], ptr %i.nn, i64 %i.nl, !dbg !70618
  %i.nr = load i16, ptr %i.nq, align 2, !dbg !70619, !noundef !3448
  %i.ns = load ptr, ptr %.sroa.4.0..sroa_idx.i635, align 8, !dbg !70620, !noundef !3448
  %i.nt = load i64, ptr %.sroa.5.0..sroa_idx5.i636, align 8, !dbg !70621, !noundef !3448
  %i.nu = icmp ult i64 %i.nm, %i.nt, !dbg !70622
  call void @llvm.assume(i1 %i.nu), !dbg !70623
  %i.nv = getelementptr inbounds nuw [2 x i8], ptr %i.ns, i64 %i.nm, !dbg !70624
  %i.nw = load i16, ptr %i.nv, align 2, !dbg !70625, !noundef !3448
  %i.nx = add i16 %i.nw, %i.nr, !dbg !70626
  %i.ny = or disjoint i64 %.sroa.0350.03231, 1, !dbg !70651 ; 2 uses
  %i.nz = getelementptr inbounds nuw [2 x i8], ptr %i.js, i64 %i.nl, !dbg !70627
  store i16 %i.nx, ptr %i.nz, align 2, !dbg !70628
  %i.oa = add nuw i64 %i.ny, %.val1.i.i.i, !dbg !70612 ; 3 uses
  %i.ob = add nuw i64 %i.ny, %i.kc, !dbg !70613   ; 2 uses
  %i.oc = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !70614, !noundef !3448
  %i.od = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !70615, !noundef !3448
  %i.oe = icmp ult i64 %i.oa, %i.od, !dbg !70616
  call void @llvm.assume(i1 %i.oe), !dbg !70617
  %i.of = getelementptr inbounds nuw [2 x i8], ptr %i.oc, i64 %i.oa, !dbg !70618
  %i.og = load i16, ptr %i.of, align 2, !dbg !70619, !noundef !3448
  %i.oh = load ptr, ptr %.sroa.4.0..sroa_idx.i635, align 8, !dbg !70620, !noundef !3448
  %i.oi = load i64, ptr %.sroa.5.0..sroa_idx5.i636, align 8, !dbg !70621, !noundef !3448
  %i.oj = icmp ult i64 %i.ob, %i.oi, !dbg !70622
  call void @llvm.assume(i1 %i.oj), !dbg !70623
  %i.ok = getelementptr inbounds nuw [2 x i8], ptr %i.oh, i64 %i.ob, !dbg !70624
end_hunk_1
begin_hunk_2_@_RINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB3_19ListNumericOpHelper12__finish_implNtNtBb_9datatypes10UInt32TypeEBb_:bb.a
bb.s:                                             ; preds = %.noexc640
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hl, i64 24, !dbg !77602
  %i.hv = atomicrmw add ptr %i.hu, i64 1 monotonic, align 8, !dbg !77603, !noalias !75283 ; 0 uses
  br label %bb.r, !dbg !77604

bb.t:                                             ; preds = %bb.r
  %i.hw = load i64, ptr %i.ht, align 8, !dbg !77605, !range !3591, !noalias !75284, !noundef !3448
  %i.hx = icmp eq i64 %i.hw, 3, !dbg !77606
  br i1 %i.hx, label %bb.v, label %bb.u, !dbg !77606

bb.u:                                             ; preds = %bb.t
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ht, i64 24, !dbg !77607
  %i.hz = atomicrmw add ptr %i.hy, i64 1 monotonic, align 8, !dbg !77608, !noalias !75284 ; 0 uses
  br label %bb.v, !dbg !77609

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hj, i64 64, !dbg !77610
  %i.ib = load <2 x i64>, ptr %i.ia, align 8, !dbg !77610, !noalias !75284
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hj, i64 80, !dbg !77611
  %i.id = load atomic i64, ptr %i.ic monotonic, align 8, !dbg !77612, !noalias !75284
  br label %bb.w, !dbg !77613

bb.w:                                             ; preds = %bb.v, %bb.r
  %.sroa.5.sroa.5.0.i632 = phi i64 [ undef, %bb.r ], [ %i.id, %bb.v ], !dbg !77614
  %i.ie = phi <2 x i64> [ undef, %bb.r ], [ %i.ib, %bb.v ], !dbg !77614
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.fa, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 32, i1 false), !dbg !77615
  %i.if = getelementptr inbounds nuw i8, ptr %i.fa, i64 32, !dbg !77615 ; 7 uses
  store ptr %i.hl, ptr %i.if, align 8, !dbg !77615, !alias.scope !75283
  %.sroa.4.0..sroa_idx.i635 = getelementptr inbounds nuw i8, ptr %i.fa, i64 40, !dbg !77615 ; 58 uses
  store ptr %i.hp, ptr %.sroa.4.0..sroa_idx.i635, align 8, !dbg !77615, !alias.scope !75283
  %.sroa.5.0..sroa_idx5.i636 = getelementptr inbounds nuw i8, ptr %i.fa, i64 48, !dbg !77615 ; 58 uses
  store i64 %i.hr, ptr %.sroa.5.0..sroa_idx5.i636, align 8, !dbg !77615, !alias.scope !75283
  %i.ig = getelementptr inbounds nuw i8, ptr %i.fa, i64 56, !dbg !77615 ; 22 uses
  store ptr %i.ht, ptr %i.ig, align 8, !dbg !77615, !alias.scope !75283
  %.sroa.5.0..sroa_idx.i637 = getelementptr inbounds nuw i8, ptr %i.fa, i64 64, !dbg !77615 ; 2 uses
  store <2 x i64> %i.ie, ptr %.sroa.5.0..sroa_idx.i637, align 8, !dbg !77615, !alias.scope !75283
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i639 = getelementptr inbounds nuw i8, ptr %i.fa, i64 80, !dbg !77615
  store i64 %.sroa.5.sroa.5.0.i632, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i639, align 8, !dbg !77615, !alias.scope !75283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !77616, !noalias !75283
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 313, !dbg !77617 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 314, !dbg !77618 ; 3 uses
  %i.ij = load i8, ptr %i.ih, align 1, !dbg !77619, !range !3609, !noundef !3448
  %i.ik = icmp eq i8 %i.ij, 1, !dbg !77620
  br i1 %i.ik, label %bb.x, label %bb.y, !dbg !77620

bb.x:                                             ; preds = %bb.w
  %i.il = load i8, ptr %i.ii, align 2, !dbg !77619, !range !3609, !noundef !3448 ; 2 uses
  %i.im = icmp eq i8 %i.il, 1, !dbg !77620
  br i1 %i.im, label %.thread1909, label %bb.aa, !dbg !77620

bb.y:                                             ; preds = %bb.w
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 288, !dbg !77621
  %i.io = load ptr, ptr %i.in, align 16, !dbg !77621, !noundef !3448
  %.not467 = icmp eq ptr %i.io, null, !dbg !77621
  br i1 %.not467, label %bb.ac, label %.invoke3845, !dbg !77622, !prof !3552

bb.z:                                             ; preds = %bb.ac
  %.pr.pre = load i8, ptr %i.ih, align 1, !dbg !77623
  switch i8 %.pr.pre, label %default.unreachable [
    i8 0, label %bb.ae
    i8 1, label %.thread
    i8 2, label %.invoke3845
  ], !dbg !77624, !prof !3764

bb.aa:                                            ; preds = %bb.x
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 288, !dbg !77621
  %i.iq = load ptr, ptr %i.ip, align 16, !dbg !77621, !noundef !3448
  %.not468 = icmp eq ptr %i.iq, null, !dbg !77621
  br i1 %.not468, label %bb.ac, label %bb.ab, !dbg !77622

bb.ab:                                            ; preds = %bb.aa
  %i.ir = icmp eq i8 %i.il, 2, !dbg !77620
  br i1 %i.ir, label %.thread, label %.invoke3845, !dbg !77620, !prof !3552

bb.ac:                                            ; preds = %bb.aa, %bb.y
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 315, !dbg !77625
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !77626
  %i.iu = load i8, ptr %i.it, align 8, !dbg !77626, !range !3607, !noundef !3448
  %i.iv = trunc nuw i8 %i.iu to i1, !dbg !77626
  %.val609 = load i8, ptr %i.is, align 1, !dbg !77627, !range !3608, !noundef !3448
  invoke fastcc void @_RINvMNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic10list_utilsNtB3_9NumericOp34prepare_numeric_op_side_validitiesNtNtB9_9datatypes10UInt32TypeEB9_(i8 %.val609, ptr noalias noundef align 8 dereferenceable(88) %i.fc, ptr noalias noundef align 8 dereferenceable(88) %i.fa, i1 noundef zeroext %i.iv)
          to label %bb.z unwind label %bb.ad, !dbg !77627

.critedge560:                                     ; preds = %.critedge566.thread2562, %.critedge566, %.critedge566.thread, %bb.qs, %bb.qt, %.body.i1451, %.critedge558.thread2556, %.critedge556.thread2553, %.critedge556, %.critedge556.thread, %bb.gx, %bb.gy, %.body.i925, %.critedge.thread2550, %.critedge, %.critedge.thread, %bb.dd, %bb.de, %.body.i, %bb.mx, %bb.my, %bb.ib, %bb.hd, %bb.fu, %bb.bt, %bb.ad, %.thread2240, %bb.qu, %bb.jh, %.critedge558.thread, %.critedge558, %.loopexit.split-lp, %bb.dn
  %.sroa.0223.2 = phi i1 [ true, %bb.ib ], [ true, %bb.dn ], [ true, %bb.mx ], [ true, %.loopexit.split-lp ], [ true, %.critedge.thread2550 ], [ true, %bb.jh ], [ true, %bb.hd ], [ false, %.critedge558.thread ], [ false, %.critedge558 ], [ true, %bb.qu ], [ false, %.critedge558.thread2556 ], [ true, %.thread2240 ], [ %.sroa.0223.3, %bb.ad ], [ true, %bb.bt ], [ true, %bb.fu ], [ true, %bb.my ], [ true, %bb.dd ], [ true, %.body.i ], [ true, %bb.de ], [ true, %.critedge.thread ], [ true, %.critedge ], [ true, %bb.gx ], [ true, %.body.i925 ], [ true, %bb.gy ], [ true, %.critedge556.thread ], [ true, %.critedge556 ], [ true, %.critedge556.thread2553 ], [ true, %bb.qs ], [ true, %.body.i1451 ], [ true, %bb.qt ], [ true, %.critedge566.thread ], [ true, %.critedge566 ], [ true, %.critedge566.thread2562 ], !dbg !77628
  %.pn530 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp2231, %bb.ib ], [ %i.ajc, %bb.dn ], [ %i.cpo, %bb.mx ], [ %lpad.phi, %.loopexit.split-lp ], [ %lpad.thr_comm.split-lp2063, %.critedge.thread2550 ], [ %.pn4872225, %bb.jh ], [ %i.bri, %bb.hd ], [ %.pn4852210, %.critedge558.thread ], [ %eh.lpad-body5742216, %.critedge558 ], [ %i.duj, %bb.qu ], [ %i.brv, %.critedge558.thread2556 ], [ %.pn475.pn, %.thread2240 ], [ %i.iw, %bb.ad ], [ %i.agk, %bb.bt ], [ %i.bnz, %bb.fu ], [ %i.cpo, %bb.my ], [ %i.aic, %bb.dd ], [ %eh.lpad-body.i, %.body.i ], [ %i.aic, %bb.de ], [ %.pn5242055, %.critedge.thread ], [ %eh.lpad-body5802061, %.critedge ], [ %i.bpi, %bb.gx ], [ %eh.lpad-body.i926, %.body.i925 ], [ %i.bpi, %bb.gy ], [ %.pn5032194, %.critedge556.thread ], [ %eh.lpad-body5772200, %.critedge556 ], [ %lpad.thr_comm.split-lp2202, %.critedge556.thread2553 ], [ %i.dug, %bb.qs ], [ %eh.lpad-body.i1452, %.body.i1451 ], [ %i.dug, %bb.qt ], [ %.pn4802540, %.critedge566.thread ], [ %eh.lpad-body2546, %.critedge566 ], [ %i.dtr, %.critedge566.thread2562 ] ; 2 uses
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.fa) #49
          to label %bb.m unwind label %bb.db, !dbg !77629

bb.ad:                                            ; preds = %.invoke3845, %.invoke3843, %.invoke3841, %.invoke, %bb.fv, %bb.bu, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymENtB7_5Array17is_null_uncheckedCs1LHh8CLbVkQ_11polars_core.exit.thread, %bb.ac, %bb.ji, %bb.dq, %bb.ai
  %.sroa.0223.3 = phi i1 [ true, %.invoke3845 ], [ true, %.invoke ], [ true, %bb.bu ], [ true, %bb.ai ], [ false, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymENtB7_5Array17is_null_uncheckedCs1LHh8CLbVkQ_11polars_core.exit.thread ], [ true, %bb.ac ], [ true, %bb.ji ], [ true, %bb.fv ], [ true, %bb.dq ], [ true, %.invoke3841 ], [ true, %.invoke3843 ], !dbg !77628
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %.critedge560

default.unreachable3670:                          ; preds = %bb.nd, %bb.jt, %bb.dt, %bb.an, %bb.ae
  unreachable

default.unreachable:                              ; preds = %.thread, %bb.z
  unreachable

bb.ae:                                            ; preds = %bb.z
  %i.ix = load i8, ptr %i.ii, align 2, !dbg !77623, !range !3609, !noundef !3448
  switch i8 %i.ix, label %default.unreachable3670 [
    i8 0, label %.invoke3845
    i8 1, label %bb.af
    i8 2, label %bb.ag
  ], !dbg !77624, !prof !3765

.thread:                                          ; preds = %bb.ab, %bb.z
  %.pr1908 = load i8, ptr %i.ii, align 2, !dbg !77623
  switch i8 %.pr1908, label %default.unreachable [
    i8 0, label %.invoke3845
    i8 1, label %..thread1909_crit_edge
    i8 2, label %bb.ha
  ], !dbg !77624, !prof !3766

..thread1909_crit_edge:                           ; preds = %.thread
  %.pre = load i64, ptr %.sroa.5.0..sroa_idx5.i636, align 8, !dbg !77630
  br label %.thread1909, !dbg !77624

bb.af:                                            ; preds = %bb.ae
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !77631
  %i.iz = load ptr, ptr %i.iy, align 8, !dbg !77631, !nonnull !3448, !noundef !3448 ; 19 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !77632
  %i.jb = load i64, ptr %i.ja, align 16, !dbg !77632, !noundef !3448
  %.not509 = icmp eq i64 %i.jb, 0, !dbg !77633
  br i1 %.not509, label %.invoke3843, label %bb.ah, !dbg !77633

bb.ag:                                            ; preds = %bb.ae
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !77634
  %i.jd = load ptr, ptr %i.jc, align 8, !dbg !77634, !nonnull !3448, !noundef !3448 ; 8 uses
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !77635
  %i.jf = load i64, ptr %i.je, align 16, !dbg !77635, !noundef !3448
  %.not489 = icmp eq i64 %i.jf, 0, !dbg !77636
  br i1 %.not489, label %.invoke3843, label %bb.do, !dbg !77636

.invoke3845:                                      ; preds = %bb.ab, %bb.y, %bb.z, %bb.ae, %.thread
  %i.jg = phi ptr [ @41, %bb.z ], [ @41, %.thread ], [ @41, %bb.ae ], [ @27, %bb.y ], [ @27, %bb.ab ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jg) #48
          to label %.cont3846 unwind label %bb.ad, !dbg !75937

.cont3846:                                        ; preds = %.invoke3845
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !77637
  %i.ji = load ptr, ptr %i.jh, align 8, !dbg !77637, !nonnull !3448, !noundef !3448 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !77638
  %i.jk = load i64, ptr %i.jj, align 16, !dbg !77638, !noundef !3448
  %.not510 = icmp eq i64 %i.jk, 0, !dbg !77639
  br i1 %.not510, label %.invoke3843, label %bb.ai, !dbg !77639

bb.ai:                                            ; preds = %bb.ah
  %i.jl = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !77640, !noundef !3448 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn), !dbg !77641
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !77642
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.an, i64 noundef %i.jl, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %bb.aj unwind label %bb.ad, !dbg !77642

bb.aj:                                            ; preds = %bb.ai
  %i.jm = load i64, ptr %i.an, align 8, !dbg !77642, !range !3450, !noundef !3448
  %i.jn = trunc nuw i64 %i.jm to i1, !dbg !77643
  %i.jo = getelementptr inbounds nuw i8, ptr %i.an, i64 8, !dbg !77644
  %i.jp = load i64, ptr %i.jo, align 8, !dbg !77644, !range !3612, !noundef !3448 ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.an, i64 16, !dbg !77644 ; 2 uses
  br i1 %i.jn, label %bb.ak, label %bb.al, !dbg !77643, !prof !3502

bb.ak:                                            ; preds = %bb.aj
  %i.jr = load i64, ptr %i.jq, align 8, !dbg !77645
  br label %.invoke, !dbg !77646

bb.al:                                            ; preds = %bb.aj
  %i.js = load ptr, ptr %i.jq, align 8, !dbg !77647, !nonnull !3448, !noundef !3448 ; 19 uses
  %i.jt = icmp ule i64 %i.jl, %i.jp, !dbg !77648
  call void @llvm.assume(i1 %i.jt), !dbg !77649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !77650
  store i64 %i.jp, ptr %i.dn, align 8, !dbg !77651
  %i.ju = getelementptr inbounds nuw i8, ptr %i.dn, i64 8, !dbg !77651
  store ptr %i.js, ptr %i.ju, align 8, !dbg !77651
  %i.jv = getelementptr inbounds nuw i8, ptr %i.dn, i64 16, !dbg !77651 ; 2 uses
  store i64 0, ptr %i.jv, align 8, !dbg !77651
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ji, i64 16, !dbg !77652 ; 2 uses
  %i.jx = load i64, ptr %i.jw, align 8, !dbg !77652, !noundef !3448 ; 3 uses
  %i.jy = add i64 %i.jx, -1, !dbg !77653          ; 2 uses
  store i64 %i.jy, ptr %i.dm, align 8, !dbg !77653
  %i.jz = icmp eq i64 %i.jy, 1, !dbg !77654
  br i1 %i.jz, label %bb.an, label %bb.am, !dbg !77654, !prof !3552

bb.am:                                            ; preds = %bb.al
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @5, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #48
          to label %bb.l unwind label %bb.dn, !dbg !77655

bb.an:                                            ; preds = %bb.al
  %i.ka = getelementptr i8, ptr %i.ji, i64 8, !dbg !77656 ; 2 uses
  %i.kb = load ptr, ptr %i.ka, align 8, !dbg !77656, !nonnull !3448, !noundef !3448 ; 2 uses
  %i.kc = load i64, ptr %i.kb, align 8, !dbg !77657, !noundef !3448 ; 20 uses
  %.not.i642 = icmp ne i64 %i.jx, 0, !dbg !77658
  call void @llvm.assume(i1 %.not.i642), !dbg !77658
  %i.kd = getelementptr [8 x i8], ptr %i.kb, i64 %i.jx, !dbg !77659
  %i.ke = getelementptr i8, ptr %i.kd, i64 -8, !dbg !77659 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ke) ]
  %i.kf = load i64, ptr %i.ke, align 8, !dbg !77660, !noundef !3448
  %i.kg = sub i64 %i.kf, %i.kc, !dbg !77661       ; 21 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %1, i64 315, !dbg !77662
  %i.ki = load i8, ptr %i.kh, align 1, !dbg !77662, !range !3608, !noundef !3448
  switch i8 %i.ki, label %default.unreachable3670 [
    i8 0, label %bb.ao
    i8 1, label %bb.ap
    i8 2, label %bb.aq
    i8 3, label %bb.ar
    i8 4, label %bb.as
    i8 5, label %bb.at
  ], !dbg !77663

bb.ao:                                            ; preds = %bb.an
  %i.kj = getelementptr inbounds nuw i8, ptr %i.iz, i64 16, !dbg !77664
  %i.kk = load i64, ptr %i.kj, align 8, !dbg !77664, !noundef !3448 ; 2 uses
  %i.kl = icmp ult i64 %i.kk, 2, !dbg !77665
  br i1 %i.kl, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE22offset_and_length_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit, label %.lr.ph3237, !dbg !77665

.lr.ph3237:                                       ; preds = %bb.ao
  %i.km = getelementptr inbounds nuw i8, ptr %i.iz, i64 8, !dbg !77666
  %i.kn = load ptr, ptr %i.km, align 8, !dbg !77666, !noundef !3448
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.kp = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.kq = add i64 %i.kk, -2
  br label %bb.au, !dbg !77665

bb.ap:                                            ; preds = %bb.an
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !77667
  %i.ks = load i8, ptr %i.kr, align 8, !dbg !77667, !range !3607, !noundef !3448
  %i.kt = trunc nuw i8 %i.ks to i1, !dbg !77667
  %i.ku = getelementptr inbounds nuw i8, ptr %i.iz, i64 16, !dbg !77668
  %i.kv = load i64, ptr %i.ku, align 8, !dbg !77668, !noundef !3448 ; 3 uses
  %i.kw = icmp ult i64 %i.kv, 2, !dbg !77669      ; 2 uses
  br i1 %i.kt, label %bb.aw, label %bb.av, !dbg !77667

bb.aq:                                            ; preds = %bb.an
  %i.kx = getelementptr inbounds nuw i8, ptr %i.iz, i64 16, !dbg !77670
  %i.ky = load i64, ptr %i.kx, align 8, !dbg !77670, !noundef !3448 ; 2 uses
  %i.kz = icmp ult i64 %i.ky, 2, !dbg !77671
  br i1 %i.kz, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE22offset_and_length_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit, label %.lr.ph3213, !dbg !77671

.lr.ph3213:                                       ; preds = %bb.aq
  %i.la = getelementptr inbounds nuw i8, ptr %i.iz, i64 8, !dbg !77672
  %i.lb = load ptr, ptr %i.la, align 8, !dbg !77672, !noundef !3448
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ld = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.le = add i64 %i.ky, -2
  br label %bb.az, !dbg !77671

bb.ar:                                            ; preds = %bb.an
  %i.lf = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !77667
  %i.lg = load i8, ptr %i.lf, align 8, !dbg !77667, !range !3607, !noundef !3448
  %i.lh = trunc nuw i8 %i.lg to i1, !dbg !77667
  %i.li = getelementptr inbounds nuw i8, ptr %i.iz, i64 16, !dbg !77668
  %i.lj = load i64, ptr %i.li, align 8, !dbg !77668, !noundef !3448 ; 3 uses
  %i.lk = icmp ult i64 %i.lj, 2, !dbg !77669      ; 2 uses
  br i1 %i.lh, label %bb.bb, label %bb.ba, !dbg !77667

bb.as:                                            ; preds = %bb.an
  %i.ll = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !77667
  %i.lm = load i8, ptr %i.ll, align 8, !dbg !77667, !range !3607, !noundef !3448
  %i.ln = trunc nuw i8 %i.lm to i1, !dbg !77667
  %i.lo = getelementptr inbounds nuw i8, ptr %i.iz, i64 16, !dbg !77668
  %i.lp = load i64, ptr %i.lo, align 8, !dbg !77668, !noundef !3448 ; 3 uses
  %i.lq = icmp ult i64 %i.lp, 2, !dbg !77669      ; 2 uses
  br i1 %i.ln, label %bb.bh, label %bb.bg, !dbg !77667

bb.at:                                            ; preds = %bb.an
  %i.lr = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !77667
  %i.ls = load i8, ptr %i.lr, align 8, !dbg !77667, !range !3607, !noundef !3448
  %i.lt = trunc nuw i8 %i.ls to i1, !dbg !77667
  %i.lu = getelementptr inbounds nuw i8, ptr %i.iz, i64 16, !dbg !77668
  %i.lv = load i64, ptr %i.lu, align 8, !dbg !77668, !noundef !3448 ; 3 uses
  %i.lw = icmp ult i64 %i.lv, 2, !dbg !77669      ; 2 uses
  br i1 %i.lt, label %bb.bn, label %bb.bm, !dbg !77667

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph3232
  %lcmp.mod4372.not = icmp eq i64 %xtraiter4371, 0, !dbg !77673
  br i1 %lcmp.mod4372.not, label %.loopexit, label %.lr.ph3232.epil.preheader, !dbg !77673

.lr.ph3232.epil.preheader:                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph3232.preheader
  %.sroa.0350.03231.epil.init = phi i64 [ 0, %.lr.ph3232.preheader ], [ %i.on, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod4373 = trunc i64 %.sroa.0.0.i645 to i1, !dbg !77673
  call void @llvm.assume(i1 %lcmp.mod4373), !dbg !77673
  %i.lx = add nuw i64 %.sroa.0350.03231.epil.init, %.val1.i.i.i, !dbg !77674 ; 3 uses
  %i.ly = add nuw i64 %.sroa.0350.03231.epil.init, %i.kc, !dbg !77675 ; 2 uses
  %i.lz = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !77676, !noundef !3448
  %i.ma = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !77677, !noundef !3448
  %i.mb = icmp ult i64 %i.lx, %i.ma, !dbg !77678
  call void @llvm.assume(i1 %i.mb), !dbg !77679
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %i.lx, !dbg !77680
  %i.md = load i32, ptr %i.mc, align 4, !dbg !77681, !noundef !3448
  %i.me = load ptr, ptr %.sroa.4.0..sroa_idx.i635, align 8, !dbg !77682, !noundef !3448
  %i.mf = load i64, ptr %.sroa.5.0..sroa_idx5.i636, align 8, !dbg !77683, !noundef !3448
  %i.mg = icmp ult i64 %i.ly, %i.mf, !dbg !77684
  call void @llvm.assume(i1 %i.mg), !dbg !77685
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %i.ly, !dbg !77686
  %i.mi = load i32, ptr %i.mh, align 4, !dbg !77687, !noundef !3448
  %i.mj = add i32 %i.mi, %i.md, !dbg !77688
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.lx, !dbg !77689
  store i32 %i.mj, ptr %i.mk, align 4, !dbg !77690
  br label %.loopexit, !dbg !77665

.loopexit:                                        ; preds = %.lr.ph3232.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.au
  %exitcond3489 = icmp eq i64 %.sroa.10.03233, %i.kq, !dbg !77665
  br i1 %exitcond3489, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE22offset_and_length_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit, label %bb.au, !dbg !77665

bb.au:                                            ; preds = %.lr.ph3237, %.loopexit
  %.sroa.067.03236 = phi i64 [ 0, %.lr.ph3237 ], [ %spec.select, %.loopexit ] ; 2 uses
  %.sroa.01594.03235 = phi ptr [ %i.kn, %.lr.ph3237 ], [ %i.ml, %.loopexit ] ; 3 uses
  %.sroa.10.03233 = phi i64 [ 0, %.lr.ph3237 ], [ %i.mn, %.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01594.03235) ]
  %i.ml = getelementptr inbounds nuw i8, ptr %.sroa.01594.03235, i64 8, !dbg !77691 ; 2 uses
  %.val1.i.i.i = load i64, ptr %.sroa.01594.03235, align 8, !dbg !77692, !alias.scope !75394, !noalias !75395, !noundef !3448 ; 4 uses
  %.val.i.i.i = load i64, ptr %i.ml, align 8, !dbg !77693, !alias.scope !75394, !noalias !75395, !noundef !3448
  %i.mm = sub i64 %.val.i.i.i, %.val1.i.i.i, !dbg !77694 ; 2 uses
  %i.mn = add nuw i64 %.sroa.10.03233, 1, !dbg !77695
  %i.mo = icmp eq i64 %i.mm, %i.kg, !dbg !77696
  %i.mp = icmp eq i64 %.sroa.067.03236, %.sroa.10.03233, !dbg !77697
  %i.mq = and i1 %i.mp, %i.mo, !dbg !77698
  %i.mr = load ptr, ptr %i.ko, align 16, !dbg !77699, !nonnull !3448, !noundef !3448 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 40, !dbg !77700
  %i.mt = load i64, ptr %i.ms, align 8, !dbg !77700, !noundef !3448
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mr, i64 32, !dbg !77701
  %i.mv = load ptr, ptr %i.mu, align 8, !dbg !77701, !noundef !3448
  %i.mw = load i64, ptr %i.kp, align 8, !dbg !77702, !noundef !3448
  %i.mx = add i64 %i.mw, %.sroa.10.03233, !dbg !77702 ; 2 uses
  %i.my = lshr i64 %i.mx, 3, !dbg !77703          ; 2 uses
  %i.mz = icmp ult i64 %i.my, %i.mt, !dbg !77704
  call void @llvm.assume(i1 %i.mz), !dbg !77705
  %i.na = getelementptr inbounds nuw i8, ptr %i.mv, i64 %i.my, !dbg !77706
  %i.nb = load i8, ptr %i.na, align 1, !dbg !77707, !noundef !3448
  %i.nc = trunc i64 %i.mx to i8, !dbg !77708
  %i.nd = and i8 %i.nc, 7, !dbg !77708
  %i.ne = shl nuw i8 1, %i.nd, !dbg !77709
  %i.nf = and i8 %i.ne, %i.nb, !dbg !77709
  %.not527 = icmp eq i8 %i.nf, 0, !dbg !77709
  %i.ng = or i1 %i.mq, %.not527, !dbg !77698
  %i.nh = zext i1 %i.ng to i64, !dbg !77698
  %spec.select = add i64 %.sroa.067.03236, %i.nh, !dbg !77698 ; 2 uses
  %.sroa.0.0.i645 = call noundef i64 @llvm.umin.i64(i64 %i.kg, i64 %i.mm), !dbg !77710 ; 5 uses
  %.not3257 = icmp eq i64 %.sroa.0.0.i645, 0, !dbg !77711
  br i1 %.not3257, label %.loopexit, label %.lr.ph3232.preheader, !dbg !77673

.lr.ph3232.preheader:                             ; preds = %bb.au
  %xtraiter4371 = and i64 %.sroa.0.0.i645, 1, !dbg !77673
  %i.ni = icmp eq i64 %.sroa.0.0.i645, 1, !dbg !77673
  br i1 %i.ni, label %.lr.ph3232.epil.preheader, label %.lr.ph3232.preheader.new, !dbg !77673

.lr.ph3232.preheader.new:                         ; preds = %.lr.ph3232.preheader
  %unroll_iter4374 = and i64 %.sroa.0.0.i645, -2, !dbg !77673
  br label %.lr.ph3232, !dbg !77673

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE22offset_and_length_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %.loopexit2581, %.loopexit2579, %.loopexit2577, %.loopexit2575, %.loopexit2573, %.loopexit2571, %.loopexit2569, %.loopexit2567, %.loopexit2565, %.loopexit, %bb.bm, %bb.bn, %bb.bg, %bb.bh, %bb.ba, %bb.bb, %bb.aq, %bb.av, %bb.aw, %bb.ao
  %.sroa.067.1 = phi i64 [ %spec.select538, %.loopexit2573 ], [ %spec.select536, %.loopexit2565 ], [ %spec.select540, %.loopexit2577 ], [ %spec.select, %.loopexit ], [ %spec.select539, %.loopexit2571 ], [ %spec.select535, %.loopexit2567 ], [ %spec.select541, %.loopexit2575 ], [ %spec.select537, %.loopexit2569 ], [ %spec.select543, %.loopexit2579 ], [ 0, %bb.ao ], [ 0, %bb.aw ], [ 0, %bb.av ], [ 0, %bb.aq ], [ 0, %bb.bb ], [ 0, %bb.ba ], [ 0, %bb.bh ], [ 0, %bb.bg ], [ 0, %bb.bn ], [ 0, %bb.bm ], [ %spec.select542, %.loopexit2581 ], !dbg !77712
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl), !dbg !75847
  %i.nj = getelementptr i8, ptr %i.iz, i64 8, !dbg !75847
  %.val617 = load ptr, ptr %i.nj, align 8, !dbg !75847
  %i.nk = getelementptr i8, ptr %i.iz, i64 16, !dbg !75847
  %.val618 = load i64, ptr %i.nk, align 8, !dbg !75847, !noundef !3448
  %.val619 = load ptr, ptr %i.ka, align 8, !dbg !75847
  %.val620 = load i64, ptr %i.jw, align 8, !dbg !75847
  invoke fastcc void @_RNvNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB4_19ListNumericOpHelper12__finish_impl18check_mismatch_pos(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.dl, i64 noundef %.sroa.067.1, ptr %.val617, i64 %.val618, ptr %.val619, i64 %.val620)
          to label %bb.br unwind label %bb.dn, !dbg !75847

.lr.ph3232:                                       ; preds = %.lr.ph3232, %.lr.ph3232.preheader.new
  %.sroa.0350.03231 = phi i64 [ 0, %.lr.ph3232.preheader.new ], [ %i.on, %.lr.ph3232 ] ; 4 uses
  %niter4375 = phi i64 [ 0, %.lr.ph3232.preheader.new ], [ %niter4375.next.1, %.lr.ph3232 ]
  %i.nl = add nuw i64 %.sroa.0350.03231, %.val1.i.i.i, !dbg !77674 ; 3 uses
  %i.nm = add nuw i64 %.sroa.0350.03231, %i.kc, !dbg !77675 ; 2 uses
  %i.nn = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !77676, !noundef !3448
  %i.no = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !77677, !noundef !3448
  %i.np = icmp ult i64 %i.nl, %i.no, !dbg !77678
  call void @llvm.assume(i1 %i.np), !dbg !77679
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.nn, i64 %i.nl, !dbg !77680
  %i.nr = load i32, ptr %i.nq, align 4, !dbg !77681, !noundef !3448
  %i.ns = load ptr, ptr %.sroa.4.0..sroa_idx.i635, align 8, !dbg !77682, !noundef !3448
  %i.nt = load i64, ptr %.sroa.5.0..sroa_idx5.i636, align 8, !dbg !77683, !noundef !3448
  %i.nu = icmp ult i64 %i.nm, %i.nt, !dbg !77684
  call void @llvm.assume(i1 %i.nu), !dbg !77685
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.ns, i64 %i.nm, !dbg !77686
  %i.nw = load i32, ptr %i.nv, align 4, !dbg !77687, !noundef !3448
  %i.nx = add i32 %i.nw, %i.nr, !dbg !77688
  %i.ny = or disjoint i64 %.sroa.0350.03231, 1, !dbg !77713 ; 2 uses
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.nl, !dbg !77689
  store i32 %i.nx, ptr %i.nz, align 4, !dbg !77690
  %i.oa = add nuw i64 %i.ny, %.val1.i.i.i, !dbg !77674 ; 3 uses
  %i.ob = add nuw i64 %i.ny, %i.kc, !dbg !77675   ; 2 uses
  %i.oc = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !77676, !noundef !3448
  %i.od = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !77677, !noundef !3448
  %i.oe = icmp ult i64 %i.oa, %i.od, !dbg !77678
  call void @llvm.assume(i1 %i.oe), !dbg !77679
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.oc, i64 %i.oa, !dbg !77680
  %i.og = load i32, ptr %i.of, align 4, !dbg !77681, !noundef !3448
  %i.oh = load ptr, ptr %.sroa.4.0..sroa_idx.i635, align 8, !dbg !77682, !noundef !3448
  %i.oi = load i64, ptr %.sroa.5.0..sroa_idx5.i636, align 8, !dbg !77683, !noundef !3448
  %i.oj = icmp ult i64 %i.ob, %i.oi, !dbg !77684
  call void @llvm.assume(i1 %i.oj), !dbg !77685
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %i.oh, i64 %i.ob, !dbg !77686
end_hunk_2
begin_hunk_3_@_RINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB3_19ListNumericOpHelper12__finish_implNtNtBb_9datatypes10UInt64TypeEBb_:bb.a
bb.s:                                             ; preds = %.noexc640
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hl, i64 24, !dbg !84636
  %i.hv = atomicrmw add ptr %i.hu, i64 1 monotonic, align 8, !dbg !84637, !noalias !82323 ; 0 uses
  br label %bb.r, !dbg !84638

bb.t:                                             ; preds = %bb.r
  %i.hw = load i64, ptr %i.ht, align 8, !dbg !84639, !range !3591, !noalias !82324, !noundef !3448
  %i.hx = icmp eq i64 %i.hw, 3, !dbg !84640
  br i1 %i.hx, label %bb.v, label %bb.u, !dbg !84640

bb.u:                                             ; preds = %bb.t
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ht, i64 24, !dbg !84641
  %i.hz = atomicrmw add ptr %i.hy, i64 1 monotonic, align 8, !dbg !84642, !noalias !82324 ; 0 uses
  br label %bb.v, !dbg !84643

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hj, i64 64, !dbg !84644
  %i.ib = load <2 x i64>, ptr %i.ia, align 8, !dbg !84644, !noalias !82324
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hj, i64 80, !dbg !84645
  %i.id = load atomic i64, ptr %i.ic monotonic, align 8, !dbg !84646, !noalias !82324
  br label %bb.w, !dbg !84647

bb.w:                                             ; preds = %bb.v, %bb.r
  %.sroa.5.sroa.5.0.i632 = phi i64 [ undef, %bb.r ], [ %i.id, %bb.v ], !dbg !84648
  %i.ie = phi <2 x i64> [ undef, %bb.r ], [ %i.ib, %bb.v ], !dbg !84648
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.fa, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 32, i1 false), !dbg !84649
  %i.if = getelementptr inbounds nuw i8, ptr %i.fa, i64 32, !dbg !84649 ; 7 uses
  store ptr %i.hl, ptr %i.if, align 8, !dbg !84649, !alias.scope !82323
  %.sroa.4.0..sroa_idx.i635 = getelementptr inbounds nuw i8, ptr %i.fa, i64 40, !dbg !84649 ; 58 uses
  store ptr %i.hp, ptr %.sroa.4.0..sroa_idx.i635, align 8, !dbg !84649, !alias.scope !82323
  %.sroa.5.0..sroa_idx5.i636 = getelementptr inbounds nuw i8, ptr %i.fa, i64 48, !dbg !84649 ; 58 uses
  store i64 %i.hr, ptr %.sroa.5.0..sroa_idx5.i636, align 8, !dbg !84649, !alias.scope !82323
  %i.ig = getelementptr inbounds nuw i8, ptr %i.fa, i64 56, !dbg !84649 ; 22 uses
  store ptr %i.ht, ptr %i.ig, align 8, !dbg !84649, !alias.scope !82323
  %.sroa.5.0..sroa_idx.i637 = getelementptr inbounds nuw i8, ptr %i.fa, i64 64, !dbg !84649 ; 2 uses
  store <2 x i64> %i.ie, ptr %.sroa.5.0..sroa_idx.i637, align 8, !dbg !84649, !alias.scope !82323
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i639 = getelementptr inbounds nuw i8, ptr %i.fa, i64 80, !dbg !84649
  store i64 %.sroa.5.sroa.5.0.i632, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i639, align 8, !dbg !84649, !alias.scope !82323
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !84650, !noalias !82323
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 313, !dbg !84651 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 314, !dbg !84652 ; 3 uses
  %i.ij = load i8, ptr %i.ih, align 1, !dbg !84653, !range !3609, !noundef !3448
  %i.ik = icmp eq i8 %i.ij, 1, !dbg !84654
  br i1 %i.ik, label %bb.x, label %bb.y, !dbg !84654

bb.x:                                             ; preds = %bb.w
  %i.il = load i8, ptr %i.ii, align 2, !dbg !84653, !range !3609, !noundef !3448 ; 2 uses
  %i.im = icmp eq i8 %i.il, 1, !dbg !84654
  br i1 %i.im, label %.thread1909, label %bb.aa, !dbg !84654

bb.y:                                             ; preds = %bb.w
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 288, !dbg !84655
  %i.io = load ptr, ptr %i.in, align 16, !dbg !84655, !noundef !3448
  %.not467 = icmp eq ptr %i.io, null, !dbg !84655
  br i1 %.not467, label %bb.ac, label %.invoke3845, !dbg !84656, !prof !3552

bb.z:                                             ; preds = %bb.ac
  %.pr.pre = load i8, ptr %i.ih, align 1, !dbg !84657
  switch i8 %.pr.pre, label %default.unreachable [
    i8 0, label %bb.ae
    i8 1, label %.thread
    i8 2, label %.invoke3845
  ], !dbg !84658, !prof !3764

bb.aa:                                            ; preds = %bb.x
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 288, !dbg !84655
  %i.iq = load ptr, ptr %i.ip, align 16, !dbg !84655, !noundef !3448
  %.not468 = icmp eq ptr %i.iq, null, !dbg !84655
  br i1 %.not468, label %bb.ac, label %bb.ab, !dbg !84656

bb.ab:                                            ; preds = %bb.aa
  %i.ir = icmp eq i8 %i.il, 2, !dbg !84654
  br i1 %i.ir, label %.thread, label %.invoke3845, !dbg !84654, !prof !3552

bb.ac:                                            ; preds = %bb.aa, %bb.y
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 315, !dbg !84659
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !84660
  %i.iu = load i8, ptr %i.it, align 8, !dbg !84660, !range !3607, !noundef !3448
  %i.iv = trunc nuw i8 %i.iu to i1, !dbg !84660
  %.val609 = load i8, ptr %i.is, align 1, !dbg !84661, !range !3608, !noundef !3448
  invoke fastcc void @_RINvMNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic10list_utilsNtB3_9NumericOp34prepare_numeric_op_side_validitiesNtNtB9_9datatypes10UInt64TypeEB9_(i8 %.val609, ptr noalias noundef align 8 dereferenceable(88) %i.fc, ptr noalias noundef align 8 dereferenceable(88) %i.fa, i1 noundef zeroext %i.iv)
          to label %bb.z unwind label %bb.ad, !dbg !84661

.critedge560:                                     ; preds = %.critedge566.thread2562, %.critedge566, %.critedge566.thread, %bb.qy, %bb.qz, %.body.i1451, %.critedge558.thread2556, %.critedge556.thread2553, %.critedge556, %.critedge556.thread, %bb.gx, %bb.gy, %.body.i925, %.critedge.thread2550, %.critedge, %.critedge.thread, %bb.dd, %bb.de, %.body.i, %bb.nd, %bb.ne, %bb.ib, %bb.hd, %bb.fu, %bb.bt, %bb.ad, %.thread2240, %bb.ra, %bb.jh, %.critedge558.thread, %.critedge558, %.loopexit.split-lp, %bb.dn
  %.sroa.0223.2 = phi i1 [ true, %bb.ib ], [ true, %bb.dn ], [ true, %bb.nd ], [ true, %.loopexit.split-lp ], [ true, %.critedge.thread2550 ], [ true, %bb.jh ], [ true, %bb.hd ], [ false, %.critedge558.thread ], [ false, %.critedge558 ], [ true, %bb.ra ], [ false, %.critedge558.thread2556 ], [ true, %.thread2240 ], [ %.sroa.0223.3, %bb.ad ], [ true, %bb.bt ], [ true, %bb.fu ], [ true, %bb.ne ], [ true, %bb.dd ], [ true, %.body.i ], [ true, %bb.de ], [ true, %.critedge.thread ], [ true, %.critedge ], [ true, %bb.gx ], [ true, %.body.i925 ], [ true, %bb.gy ], [ true, %.critedge556.thread ], [ true, %.critedge556 ], [ true, %.critedge556.thread2553 ], [ true, %bb.qy ], [ true, %.body.i1451 ], [ true, %bb.qz ], [ true, %.critedge566.thread ], [ true, %.critedge566 ], [ true, %.critedge566.thread2562 ], !dbg !84662
  %.pn530 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp2231, %bb.ib ], [ %i.ajc, %bb.dn ], [ %i.coj, %bb.nd ], [ %lpad.phi, %.loopexit.split-lp ], [ %lpad.thr_comm.split-lp2063, %.critedge.thread2550 ], [ %.pn4872225, %bb.jh ], [ %i.bri, %bb.hd ], [ %.pn4852210, %.critedge558.thread ], [ %eh.lpad-body5742216, %.critedge558 ], [ %i.dsg, %bb.ra ], [ %i.brv, %.critedge558.thread2556 ], [ %.pn475.pn, %.thread2240 ], [ %i.iw, %bb.ad ], [ %i.agk, %bb.bt ], [ %i.bnz, %bb.fu ], [ %i.coj, %bb.ne ], [ %i.aic, %bb.dd ], [ %eh.lpad-body.i, %.body.i ], [ %i.aic, %bb.de ], [ %.pn5242055, %.critedge.thread ], [ %eh.lpad-body5802061, %.critedge ], [ %i.bpi, %bb.gx ], [ %eh.lpad-body.i926, %.body.i925 ], [ %i.bpi, %bb.gy ], [ %.pn5032194, %.critedge556.thread ], [ %eh.lpad-body5772200, %.critedge556 ], [ %lpad.thr_comm.split-lp2202, %.critedge556.thread2553 ], [ %i.dsd, %bb.qy ], [ %eh.lpad-body.i1452, %.body.i1451 ], [ %i.dsd, %bb.qz ], [ %.pn4802540, %.critedge566.thread ], [ %eh.lpad-body2546, %.critedge566 ], [ %i.dro, %.critedge566.thread2562 ] ; 2 uses
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayyEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.fa) #49
          to label %bb.m unwind label %bb.db, !dbg !84663

bb.ad:                                            ; preds = %.invoke3845, %.invoke3843, %.invoke3841, %.invoke, %bb.fv, %bb.bu, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayyENtB7_5Array17is_null_uncheckedCs1LHh8CLbVkQ_11polars_core.exit.thread, %bb.ac, %bb.ji, %bb.dq, %bb.ai
  %.sroa.0223.3 = phi i1 [ true, %.invoke3845 ], [ true, %.invoke ], [ true, %bb.bu ], [ true, %bb.ai ], [ false, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayyENtB7_5Array17is_null_uncheckedCs1LHh8CLbVkQ_11polars_core.exit.thread ], [ true, %bb.ac ], [ true, %bb.ji ], [ true, %bb.fv ], [ true, %bb.dq ], [ true, %.invoke3841 ], [ true, %.invoke3843 ], !dbg !84662
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %.critedge560

default.unreachable3670:                          ; preds = %bb.nj, %bb.jt, %bb.dt, %bb.an, %bb.ae
  unreachable

default.unreachable:                              ; preds = %.thread, %bb.z
  unreachable

bb.ae:                                            ; preds = %bb.z
  %i.ix = load i8, ptr %i.ii, align 2, !dbg !84657, !range !3609, !noundef !3448
  switch i8 %i.ix, label %default.unreachable3670 [
    i8 0, label %.invoke3845
    i8 1, label %bb.af
    i8 2, label %bb.ag
  ], !dbg !84658, !prof !3765

.thread:                                          ; preds = %bb.ab, %bb.z
  %.pr1908 = load i8, ptr %i.ii, align 2, !dbg !84657
  switch i8 %.pr1908, label %default.unreachable [
    i8 0, label %.invoke3845
    i8 1, label %..thread1909_crit_edge
    i8 2, label %bb.ha
  ], !dbg !84658, !prof !3766

..thread1909_crit_edge:                           ; preds = %.thread
  %.pre = load i64, ptr %.sroa.5.0..sroa_idx5.i636, align 8, !dbg !84664
  br label %.thread1909, !dbg !84658

bb.af:                                            ; preds = %bb.ae
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !84665
  %i.iz = load ptr, ptr %i.iy, align 8, !dbg !84665, !nonnull !3448, !noundef !3448 ; 19 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !84666
  %i.jb = load i64, ptr %i.ja, align 16, !dbg !84666, !noundef !3448
  %.not509 = icmp eq i64 %i.jb, 0, !dbg !84667
  br i1 %.not509, label %.invoke3843, label %bb.ah, !dbg !84667

bb.ag:                                            ; preds = %bb.ae
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !84668
  %i.jd = load ptr, ptr %i.jc, align 8, !dbg !84668, !nonnull !3448, !noundef !3448 ; 8 uses
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !84669
  %i.jf = load i64, ptr %i.je, align 16, !dbg !84669, !noundef !3448
  %.not489 = icmp eq i64 %i.jf, 0, !dbg !84670
  br i1 %.not489, label %.invoke3843, label %bb.do, !dbg !84670

.invoke3845:                                      ; preds = %bb.ab, %bb.y, %bb.z, %bb.ae, %.thread
  %i.jg = phi ptr [ @41, %bb.z ], [ @41, %.thread ], [ @41, %bb.ae ], [ @27, %bb.y ], [ @27, %bb.ab ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jg) #48
          to label %.cont3846 unwind label %bb.ad, !dbg !82977

.cont3846:                                        ; preds = %.invoke3845
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !84671
  %i.ji = load ptr, ptr %i.jh, align 8, !dbg !84671, !nonnull !3448, !noundef !3448 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !84672
  %i.jk = load i64, ptr %i.jj, align 16, !dbg !84672, !noundef !3448
  %.not510 = icmp eq i64 %i.jk, 0, !dbg !84673
  br i1 %.not510, label %.invoke3843, label %bb.ai, !dbg !84673

bb.ai:                                            ; preds = %bb.ah
  %i.jl = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !84674, !noundef !3448 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn), !dbg !84675
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !84676
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.an, i64 noundef %i.jl, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %bb.aj unwind label %bb.ad, !dbg !84676

bb.aj:                                            ; preds = %bb.ai
  %i.jm = load i64, ptr %i.an, align 8, !dbg !84676, !range !3450, !noundef !3448
  %i.jn = trunc nuw i64 %i.jm to i1, !dbg !84677
  %i.jo = getelementptr inbounds nuw i8, ptr %i.an, i64 8, !dbg !84678
  %i.jp = load i64, ptr %i.jo, align 8, !dbg !84678, !range !3612, !noundef !3448 ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.an, i64 16, !dbg !84678 ; 2 uses
  br i1 %i.jn, label %bb.ak, label %bb.al, !dbg !84677, !prof !3502

bb.ak:                                            ; preds = %bb.aj
  %i.jr = load i64, ptr %i.jq, align 8, !dbg !84679
  br label %.invoke, !dbg !84680

bb.al:                                            ; preds = %bb.aj
  %i.js = load ptr, ptr %i.jq, align 8, !dbg !84681, !nonnull !3448, !noundef !3448 ; 19 uses
  %i.jt = icmp ule i64 %i.jl, %i.jp, !dbg !84682
  call void @llvm.assume(i1 %i.jt), !dbg !84683
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !84684
  store i64 %i.jp, ptr %i.dn, align 8, !dbg !84685
  %i.ju = getelementptr inbounds nuw i8, ptr %i.dn, i64 8, !dbg !84685
  store ptr %i.js, ptr %i.ju, align 8, !dbg !84685
  %i.jv = getelementptr inbounds nuw i8, ptr %i.dn, i64 16, !dbg !84685 ; 2 uses
  store i64 0, ptr %i.jv, align 8, !dbg !84685
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ji, i64 16, !dbg !84686 ; 2 uses
  %i.jx = load i64, ptr %i.jw, align 8, !dbg !84686, !noundef !3448 ; 3 uses
  %i.jy = add i64 %i.jx, -1, !dbg !84687          ; 2 uses
  store i64 %i.jy, ptr %i.dm, align 8, !dbg !84687
  %i.jz = icmp eq i64 %i.jy, 1, !dbg !84688
  br i1 %i.jz, label %bb.an, label %bb.am, !dbg !84688, !prof !3552

bb.am:                                            ; preds = %bb.al
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @5, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #48
          to label %bb.l unwind label %bb.dn, !dbg !84689

bb.an:                                            ; preds = %bb.al
  %i.ka = getelementptr i8, ptr %i.ji, i64 8, !dbg !84690 ; 2 uses
  %i.kb = load ptr, ptr %i.ka, align 8, !dbg !84690, !nonnull !3448, !noundef !3448 ; 2 uses
  %i.kc = load i64, ptr %i.kb, align 8, !dbg !84691, !noundef !3448 ; 20 uses
  %.not.i642 = icmp ne i64 %i.jx, 0, !dbg !84692
  call void @llvm.assume(i1 %.not.i642), !dbg !84692
  %i.kd = getelementptr [8 x i8], ptr %i.kb, i64 %i.jx, !dbg !84693
  %i.ke = getelementptr i8, ptr %i.kd, i64 -8, !dbg !84693 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ke) ]
  %i.kf = load i64, ptr %i.ke, align 8, !dbg !84694, !noundef !3448
  %i.kg = sub i64 %i.kf, %i.kc, !dbg !84695       ; 21 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %1, i64 315, !dbg !84696
  %i.ki = load i8, ptr %i.kh, align 1, !dbg !84696, !range !3608, !noundef !3448
  switch i8 %i.ki, label %default.unreachable3670 [
    i8 0, label %bb.ao
    i8 1, label %bb.ap
    i8 2, label %bb.aq
    i8 3, label %bb.ar
    i8 4, label %bb.as
    i8 5, label %bb.at
  ], !dbg !84697

bb.ao:                                            ; preds = %bb.an
  %i.kj = getelementptr inbounds nuw i8, ptr %i.iz, i64 16, !dbg !84698
  %i.kk = load i64, ptr %i.kj, align 8, !dbg !84698, !noundef !3448 ; 2 uses
  %i.kl = icmp ult i64 %i.kk, 2, !dbg !84699
  br i1 %i.kl, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE22offset_and_length_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit, label %.lr.ph3237, !dbg !84699

.lr.ph3237:                                       ; preds = %bb.ao
  %i.km = getelementptr inbounds nuw i8, ptr %i.iz, i64 8, !dbg !84700
  %i.kn = load ptr, ptr %i.km, align 8, !dbg !84700, !noundef !3448
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.kp = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.kq = add i64 %i.kk, -2
  br label %bb.au, !dbg !84699

bb.ap:                                            ; preds = %bb.an
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !84701
  %i.ks = load i8, ptr %i.kr, align 8, !dbg !84701, !range !3607, !noundef !3448
  %i.kt = trunc nuw i8 %i.ks to i1, !dbg !84701
  %i.ku = getelementptr inbounds nuw i8, ptr %i.iz, i64 16, !dbg !84702
  %i.kv = load i64, ptr %i.ku, align 8, !dbg !84702, !noundef !3448 ; 3 uses
  %i.kw = icmp ult i64 %i.kv, 2, !dbg !84703      ; 2 uses
  br i1 %i.kt, label %bb.aw, label %bb.av, !dbg !84701

bb.aq:                                            ; preds = %bb.an
  %i.kx = getelementptr inbounds nuw i8, ptr %i.iz, i64 16, !dbg !84704
  %i.ky = load i64, ptr %i.kx, align 8, !dbg !84704, !noundef !3448 ; 2 uses
  %i.kz = icmp ult i64 %i.ky, 2, !dbg !84705
  br i1 %i.kz, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE22offset_and_length_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit, label %.lr.ph3213, !dbg !84705

.lr.ph3213:                                       ; preds = %bb.aq
  %i.la = getelementptr inbounds nuw i8, ptr %i.iz, i64 8, !dbg !84706
  %i.lb = load ptr, ptr %i.la, align 8, !dbg !84706, !noundef !3448
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ld = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.le = add i64 %i.ky, -2
  br label %bb.az, !dbg !84705

bb.ar:                                            ; preds = %bb.an
  %i.lf = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !84701
  %i.lg = load i8, ptr %i.lf, align 8, !dbg !84701, !range !3607, !noundef !3448
  %i.lh = trunc nuw i8 %i.lg to i1, !dbg !84701
  %i.li = getelementptr inbounds nuw i8, ptr %i.iz, i64 16, !dbg !84702
  %i.lj = load i64, ptr %i.li, align 8, !dbg !84702, !noundef !3448 ; 3 uses
  %i.lk = icmp ult i64 %i.lj, 2, !dbg !84703      ; 2 uses
  br i1 %i.lh, label %bb.bb, label %bb.ba, !dbg !84701

bb.as:                                            ; preds = %bb.an
  %i.ll = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !84701
  %i.lm = load i8, ptr %i.ll, align 8, !dbg !84701, !range !3607, !noundef !3448
  %i.ln = trunc nuw i8 %i.lm to i1, !dbg !84701
  %i.lo = getelementptr inbounds nuw i8, ptr %i.iz, i64 16, !dbg !84702
  %i.lp = load i64, ptr %i.lo, align 8, !dbg !84702, !noundef !3448 ; 3 uses
  %i.lq = icmp ult i64 %i.lp, 2, !dbg !84703      ; 2 uses
  br i1 %i.ln, label %bb.bh, label %bb.bg, !dbg !84701

bb.at:                                            ; preds = %bb.an
  %i.lr = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !84701
  %i.ls = load i8, ptr %i.lr, align 8, !dbg !84701, !range !3607, !noundef !3448
  %i.lt = trunc nuw i8 %i.ls to i1, !dbg !84701
  %i.lu = getelementptr inbounds nuw i8, ptr %i.iz, i64 16, !dbg !84702
  %i.lv = load i64, ptr %i.lu, align 8, !dbg !84702, !noundef !3448 ; 3 uses
  %i.lw = icmp ult i64 %i.lv, 2, !dbg !84703      ; 2 uses
  br i1 %i.lt, label %bb.bn, label %bb.bm, !dbg !84701

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph3232
  %lcmp.mod4242.not = icmp eq i64 %xtraiter4241, 0, !dbg !84707
  br i1 %lcmp.mod4242.not, label %.loopexit, label %.lr.ph3232.epil.preheader, !dbg !84707

.lr.ph3232.epil.preheader:                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph3232.preheader
  %.sroa.0350.03231.epil.init = phi i64 [ 0, %.lr.ph3232.preheader ], [ %i.on, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod4243 = trunc i64 %.sroa.0.0.i645 to i1, !dbg !84707
  call void @llvm.assume(i1 %lcmp.mod4243), !dbg !84707
  %i.lx = add nuw i64 %.sroa.0350.03231.epil.init, %.val1.i.i.i, !dbg !84708 ; 3 uses
  %i.ly = add nuw i64 %.sroa.0350.03231.epil.init, %i.kc, !dbg !84709 ; 2 uses
  %i.lz = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !84710, !noundef !3448
  %i.ma = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !84711, !noundef !3448
  %i.mb = icmp ult i64 %i.lx, %i.ma, !dbg !84712
  call void @llvm.assume(i1 %i.mb), !dbg !84713
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %i.lx, !dbg !84714
  %i.md = load i64, ptr %i.mc, align 8, !dbg !84715, !noundef !3448
  %i.me = load ptr, ptr %.sroa.4.0..sroa_idx.i635, align 8, !dbg !84716, !noundef !3448
  %i.mf = load i64, ptr %.sroa.5.0..sroa_idx5.i636, align 8, !dbg !84717, !noundef !3448
  %i.mg = icmp ult i64 %i.ly, %i.mf, !dbg !84718
  call void @llvm.assume(i1 %i.mg), !dbg !84719
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.me, i64 %i.ly, !dbg !84720
  %i.mi = load i64, ptr %i.mh, align 8, !dbg !84721, !noundef !3448
  %i.mj = add i64 %i.mi, %i.md, !dbg !84722
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %i.lx, !dbg !84723
  store i64 %i.mj, ptr %i.mk, align 8, !dbg !84724
  br label %.loopexit, !dbg !84699

.loopexit:                                        ; preds = %.lr.ph3232.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.au
  %exitcond3489 = icmp eq i64 %.sroa.10.03233, %i.kq, !dbg !84699
  br i1 %exitcond3489, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE22offset_and_length_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit, label %bb.au, !dbg !84699

bb.au:                                            ; preds = %.lr.ph3237, %.loopexit
  %.sroa.067.03236 = phi i64 [ 0, %.lr.ph3237 ], [ %spec.select, %.loopexit ] ; 2 uses
  %.sroa.01594.03235 = phi ptr [ %i.kn, %.lr.ph3237 ], [ %i.ml, %.loopexit ] ; 3 uses
  %.sroa.10.03233 = phi i64 [ 0, %.lr.ph3237 ], [ %i.mn, %.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01594.03235) ]
  %i.ml = getelementptr inbounds nuw i8, ptr %.sroa.01594.03235, i64 8, !dbg !84725 ; 2 uses
  %.val1.i.i.i = load i64, ptr %.sroa.01594.03235, align 8, !dbg !84726, !alias.scope !82434, !noalias !82435, !noundef !3448 ; 4 uses
  %.val.i.i.i = load i64, ptr %i.ml, align 8, !dbg !84727, !alias.scope !82434, !noalias !82435, !noundef !3448
  %i.mm = sub i64 %.val.i.i.i, %.val1.i.i.i, !dbg !84728 ; 2 uses
  %i.mn = add nuw i64 %.sroa.10.03233, 1, !dbg !84729
  %i.mo = icmp eq i64 %i.mm, %i.kg, !dbg !84730
  %i.mp = icmp eq i64 %.sroa.067.03236, %.sroa.10.03233, !dbg !84731
  %i.mq = and i1 %i.mp, %i.mo, !dbg !84732
  %i.mr = load ptr, ptr %i.ko, align 16, !dbg !84733, !nonnull !3448, !noundef !3448 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 40, !dbg !84734
  %i.mt = load i64, ptr %i.ms, align 8, !dbg !84734, !noundef !3448
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mr, i64 32, !dbg !84735
  %i.mv = load ptr, ptr %i.mu, align 8, !dbg !84735, !noundef !3448
  %i.mw = load i64, ptr %i.kp, align 8, !dbg !84736, !noundef !3448
  %i.mx = add i64 %i.mw, %.sroa.10.03233, !dbg !84736 ; 2 uses
  %i.my = lshr i64 %i.mx, 3, !dbg !84737          ; 2 uses
  %i.mz = icmp ult i64 %i.my, %i.mt, !dbg !84738
  call void @llvm.assume(i1 %i.mz), !dbg !84739
  %i.na = getelementptr inbounds nuw i8, ptr %i.mv, i64 %i.my, !dbg !84740
  %i.nb = load i8, ptr %i.na, align 1, !dbg !84741, !noundef !3448
  %i.nc = trunc i64 %i.mx to i8, !dbg !84742
  %i.nd = and i8 %i.nc, 7, !dbg !84742
  %i.ne = shl nuw i8 1, %i.nd, !dbg !84743
  %i.nf = and i8 %i.ne, %i.nb, !dbg !84743
  %.not527 = icmp eq i8 %i.nf, 0, !dbg !84743
  %i.ng = or i1 %i.mq, %.not527, !dbg !84732
  %i.nh = zext i1 %i.ng to i64, !dbg !84732
  %spec.select = add i64 %.sroa.067.03236, %i.nh, !dbg !84732 ; 2 uses
  %.sroa.0.0.i645 = call noundef i64 @llvm.umin.i64(i64 %i.kg, i64 %i.mm), !dbg !84744 ; 5 uses
  %.not3257 = icmp eq i64 %.sroa.0.0.i645, 0, !dbg !84745
  br i1 %.not3257, label %.loopexit, label %.lr.ph3232.preheader, !dbg !84707

.lr.ph3232.preheader:                             ; preds = %bb.au
  %xtraiter4241 = and i64 %.sroa.0.0.i645, 1, !dbg !84707
  %i.ni = icmp eq i64 %.sroa.0.0.i645, 1, !dbg !84707
  br i1 %i.ni, label %.lr.ph3232.epil.preheader, label %.lr.ph3232.preheader.new, !dbg !84707

.lr.ph3232.preheader.new:                         ; preds = %.lr.ph3232.preheader
  %unroll_iter4244 = and i64 %.sroa.0.0.i645, -2, !dbg !84707
  br label %.lr.ph3232, !dbg !84707

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE22offset_and_length_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %.loopexit2581, %.loopexit2579, %.loopexit2577, %.loopexit2575, %.loopexit2573, %.loopexit2571, %.loopexit2569, %.loopexit2567, %.loopexit2565, %.loopexit, %bb.bm, %bb.bn, %bb.bg, %bb.bh, %bb.ba, %bb.bb, %bb.aq, %bb.av, %bb.aw, %bb.ao
  %.sroa.067.1 = phi i64 [ %spec.select538, %.loopexit2573 ], [ %spec.select536, %.loopexit2565 ], [ %spec.select540, %.loopexit2577 ], [ %spec.select, %.loopexit ], [ %spec.select539, %.loopexit2571 ], [ %spec.select535, %.loopexit2567 ], [ %spec.select541, %.loopexit2575 ], [ %spec.select537, %.loopexit2569 ], [ %spec.select543, %.loopexit2579 ], [ 0, %bb.ao ], [ 0, %bb.aw ], [ 0, %bb.av ], [ 0, %bb.aq ], [ 0, %bb.bb ], [ 0, %bb.ba ], [ 0, %bb.bh ], [ 0, %bb.bg ], [ 0, %bb.bn ], [ 0, %bb.bm ], [ %spec.select542, %.loopexit2581 ], !dbg !84746
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl), !dbg !82887
  %i.nj = getelementptr i8, ptr %i.iz, i64 8, !dbg !82887
  %.val617 = load ptr, ptr %i.nj, align 8, !dbg !82887
  %i.nk = getelementptr i8, ptr %i.iz, i64 16, !dbg !82887
  %.val618 = load i64, ptr %i.nk, align 8, !dbg !82887, !noundef !3448
  %.val619 = load ptr, ptr %i.ka, align 8, !dbg !82887
  %.val620 = load i64, ptr %i.jw, align 8, !dbg !82887
  invoke fastcc void @_RNvNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB4_19ListNumericOpHelper12__finish_impl18check_mismatch_pos(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.dl, i64 noundef %.sroa.067.1, ptr %.val617, i64 %.val618, ptr %.val619, i64 %.val620)
          to label %bb.br unwind label %bb.dn, !dbg !82887

.lr.ph3232:                                       ; preds = %.lr.ph3232, %.lr.ph3232.preheader.new
  %.sroa.0350.03231 = phi i64 [ 0, %.lr.ph3232.preheader.new ], [ %i.on, %.lr.ph3232 ] ; 4 uses
  %niter4245 = phi i64 [ 0, %.lr.ph3232.preheader.new ], [ %niter4245.next.1, %.lr.ph3232 ]
  %i.nl = add nuw i64 %.sroa.0350.03231, %.val1.i.i.i, !dbg !84708 ; 3 uses
  %i.nm = add nuw i64 %.sroa.0350.03231, %i.kc, !dbg !84709 ; 2 uses
  %i.nn = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !84710, !noundef !3448
  %i.no = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !84711, !noundef !3448
  %i.np = icmp ult i64 %i.nl, %i.no, !dbg !84712
  call void @llvm.assume(i1 %i.np), !dbg !84713
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.nn, i64 %i.nl, !dbg !84714
  %i.nr = load i64, ptr %i.nq, align 8, !dbg !84715, !noundef !3448
  %i.ns = load ptr, ptr %.sroa.4.0..sroa_idx.i635, align 8, !dbg !84716, !noundef !3448
  %i.nt = load i64, ptr %.sroa.5.0..sroa_idx5.i636, align 8, !dbg !84717, !noundef !3448
  %i.nu = icmp ult i64 %i.nm, %i.nt, !dbg !84718
  call void @llvm.assume(i1 %i.nu), !dbg !84719
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.ns, i64 %i.nm, !dbg !84720
  %i.nw = load i64, ptr %i.nv, align 8, !dbg !84721, !noundef !3448
  %i.nx = add i64 %i.nw, %i.nr, !dbg !84722
  %i.ny = or disjoint i64 %.sroa.0350.03231, 1, !dbg !84747 ; 2 uses
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %i.nl, !dbg !84723
  store i64 %i.nx, ptr %i.nz, align 8, !dbg !84724
  %i.oa = add nuw i64 %i.ny, %.val1.i.i.i, !dbg !84708 ; 3 uses
  %i.ob = add nuw i64 %i.ny, %i.kc, !dbg !84709   ; 2 uses
  %i.oc = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !84710, !noundef !3448
  %i.od = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !84711, !noundef !3448
  %i.oe = icmp ult i64 %i.oa, %i.od, !dbg !84712
  call void @llvm.assume(i1 %i.oe), !dbg !84713
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %i.oc, i64 %i.oa, !dbg !84714
  %i.og = load i64, ptr %i.of, align 8, !dbg !84715, !noundef !3448
  %i.oh = load ptr, ptr %.sroa.4.0..sroa_idx.i635, align 8, !dbg !84716, !noundef !3448
  %i.oi = load i64, ptr %.sroa.5.0..sroa_idx5.i636, align 8, !dbg !84717, !noundef !3448
  %i.oj = icmp ult i64 %i.ob, %i.oi, !dbg !84718
  call void @llvm.assume(i1 %i.oj), !dbg !84719
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %i.oh, i64 %i.ob, !dbg !84720
end_hunk_3
begin_hunk_4_@_RINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB3_19ListNumericOpHelper12__finish_implNtNtBb_9datatypes11Float16TypeEBb_:bb.a

bb.r:                                             ; preds = %bb.s, %.noexc680
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hj, i64 40, !dbg !91841
  %i.hp = load ptr, ptr %i.ho, align 8, !dbg !91841, !noalias !89522, !noundef !3448 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hj, i64 48, !dbg !91842
  %i.hr = load i64, ptr %i.hq, align 8, !dbg !91842, !noalias !89522, !noundef !3448 ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hj, i64 56, !dbg !91843
  %i.ht = load ptr, ptr %i.hs, align 8, !dbg !91843, !noalias !89522, !noundef !3448 ; 6 uses
  %.not.i671 = icmp eq ptr %i.ht, null, !dbg !91843 ; 2 uses
  br i1 %.not.i671, label %bb.w, label %bb.t, !dbg !91844

bb.s:                                             ; preds = %.noexc680
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hl, i64 24, !dbg !91845
  %i.hv = atomicrmw add ptr %i.hu, i64 1 monotonic, align 8, !dbg !91846, !noalias !89522 ; 0 uses
  br label %bb.r, !dbg !91847

bb.t:                                             ; preds = %bb.r
  %i.hw = load i64, ptr %i.ht, align 8, !dbg !91848, !range !3591, !noalias !89523, !noundef !3448
  %i.hx = icmp eq i64 %i.hw, 3, !dbg !91849
  br i1 %i.hx, label %bb.v, label %bb.u, !dbg !91849

bb.u:                                             ; preds = %bb.t
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ht, i64 24, !dbg !91850
  %i.hz = atomicrmw add ptr %i.hy, i64 1 monotonic, align 8, !dbg !91851, !noalias !89523 ; 0 uses
  br label %bb.v, !dbg !91852

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hj, i64 64, !dbg !91853
  %i.ib = load <2 x i64>, ptr %i.ia, align 8, !dbg !91853, !noalias !89523
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hj, i64 80, !dbg !91854
  %i.id = load atomic i64, ptr %i.ic monotonic, align 8, !dbg !91855, !noalias !89523
  br label %bb.w, !dbg !91856

bb.w:                                             ; preds = %bb.v, %bb.r
  %.sroa.5.sroa.5.0.i672 = phi i64 [ undef, %bb.r ], [ %i.id, %bb.v ], !dbg !91857
  %i.ie = phi <2 x i64> [ undef, %bb.r ], [ %i.ib, %bb.v ], !dbg !91857 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.fa, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 32, i1 false), !dbg !91858
  %i.if = getelementptr inbounds nuw i8, ptr %i.fa, i64 32, !dbg !91858 ; 7 uses
  store ptr %i.hl, ptr %i.if, align 8, !dbg !91858, !alias.scope !89522
  %.sroa.4.0..sroa_idx.i675 = getelementptr inbounds nuw i8, ptr %i.fa, i64 40, !dbg !91858 ; 41 uses
  store ptr %i.hp, ptr %.sroa.4.0..sroa_idx.i675, align 8, !dbg !91858, !alias.scope !89522
  %.sroa.5.0..sroa_idx5.i676 = getelementptr inbounds nuw i8, ptr %i.fa, i64 48, !dbg !91858 ; 41 uses
  store i64 %i.hr, ptr %.sroa.5.0..sroa_idx5.i676, align 8, !dbg !91858, !alias.scope !89522
  %i.ig = getelementptr inbounds nuw i8, ptr %i.fa, i64 56, !dbg !91858 ; 21 uses
  store ptr %i.ht, ptr %i.ig, align 8, !dbg !91858, !alias.scope !89522
  %.sroa.5.0..sroa_idx.i677 = getelementptr inbounds nuw i8, ptr %i.fa, i64 64, !dbg !91858
  store <2 x i64> %i.ie, ptr %.sroa.5.0..sroa_idx.i677, align 8, !dbg !91858, !alias.scope !89522
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i679 = getelementptr inbounds nuw i8, ptr %i.fa, i64 80, !dbg !91858
  store i64 %.sroa.5.sroa.5.0.i672, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i679, align 8, !dbg !91858, !alias.scope !89522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !91859, !noalias !89522
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 313, !dbg !91860
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 314, !dbg !91861 ; 3 uses
  %i.ij = load i8, ptr %i.ih, align 1, !dbg !91862, !range !3609, !noundef !3448 ; 2 uses
  %i.ik = icmp eq i8 %i.ij, 1, !dbg !91863
  br i1 %i.ik, label %bb.x, label %bb.y, !dbg !91863

bb.x:                                             ; preds = %bb.w
  %i.il = load i8, ptr %i.ii, align 2, !dbg !91862, !range !3609, !noundef !3448 ; 3 uses
  %i.im = icmp eq i8 %i.il, 1, !dbg !91863
  br i1 %i.im, label %.thread1972.thread, label %bb.aa, !dbg !91863

bb.y:                                             ; preds = %bb.w
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 288, !dbg !91864
  %i.io = load ptr, ptr %i.in, align 16, !dbg !91864, !noundef !3448
  %.not467 = icmp eq ptr %i.io, null, !dbg !91864
  br i1 %.not467, label %bb.z, label %.invoke4043, !dbg !91865, !prof !3552

bb.z:                                             ; preds = %bb.y
  switch i8 %i.ij, label %default.unreachable3852 [
    i8 0, label %bb.ac
    i8 1, label %..thread1972_crit_edge
    i8 2, label %.invoke4043
  ], !dbg !91866, !prof !3838

..thread1972_crit_edge:                           ; preds = %bb.z
  %.pr.pre = load i8, ptr %i.ii, align 2, !dbg !91867
  br label %.thread1972, !dbg !91866

bb.aa:                                            ; preds = %bb.x
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 288, !dbg !91864
  %i.iq = load ptr, ptr %i.ip, align 16, !dbg !91864, !noundef !3448 ; 2 uses
  %.not468 = icmp eq ptr %i.iq, null, !dbg !91864
  %i.ir = icmp eq i8 %i.il, 2
  %or.cond = or i1 %i.ir, %.not468, !dbg !91865
  br i1 %or.cond, label %.thread1972, label %.invoke4043, !dbg !91865, !prof !3839

.critedge560:                                     ; preds = %.critedge566.thread2626, %.critedge566, %.critedge566.thread, %bb.pp, %bb.pq, %.body.i1511, %.critedge558.thread2620, %.critedge556.thread2617, %.critedge556, %.critedge556.thread, %bb.gj, %bb.gk, %.body.i975, %.critedge.thread2614, %.critedge, %.critedge.thread, %bb.cw, %bb.cx, %.body.i, %bb.me, %bb.mf, %bb.hm, %bb.go, %bb.fg, %bb.bm, %bb.ab, %.thread2304, %.loopexit.split-lp, %bb.is, %.critedge558.thread, %.critedge558, %.loopexit.split-lp2785, %.loopexit.split-lp2739
  %.sroa.0223.2 = phi i1 [ true, %bb.hm ], [ true, %.loopexit.split-lp2739 ], [ true, %bb.me ], [ true, %.loopexit.split-lp2785 ], [ true, %.critedge.thread2614 ], [ true, %bb.is ], [ true, %bb.go ], [ false, %.critedge558.thread ], [ false, %.critedge558 ], [ true, %.loopexit.split-lp ], [ false, %.critedge558.thread2620 ], [ true, %.thread2304 ], [ %.sroa.0223.3, %bb.ab ], [ true, %bb.bm ], [ true, %bb.fg ], [ true, %bb.mf ], [ true, %bb.cw ], [ true, %.body.i ], [ true, %bb.cx ], [ true, %.critedge.thread ], [ true, %.critedge ], [ true, %bb.gj ], [ true, %.body.i975 ], [ true, %bb.gk ], [ true, %.critedge556.thread ], [ true, %.critedge556 ], [ true, %.critedge556.thread2617 ], [ true, %bb.pp ], [ true, %.body.i1511 ], [ true, %bb.pq ], [ true, %.critedge566.thread ], [ true, %.critedge566 ], [ true, %.critedge566.thread2626 ], !dbg !91868
  %.pn530 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp2295, %bb.hm ], [ %lpad.phi2741, %.loopexit.split-lp2739 ], [ %i.bzo, %bb.me ], [ %lpad.phi2787, %.loopexit.split-lp2785 ], [ %lpad.thr_comm.split-lp2127, %.critedge.thread2614 ], [ %.pn4872289, %bb.is ], [ %i.bht, %bb.go ], [ %.pn4852274, %.critedge558.thread ], [ %eh.lpad-body5742280, %.critedge558 ], [ %lpad.phi, %.loopexit.split-lp ], [ %i.big, %.critedge558.thread2620 ], [ %.pn475.pn, %.thread2304 ], [ %i.is, %bb.ab ], [ %i.abt, %bb.bm ], [ %i.bet, %bb.fg ], [ %i.bzo, %bb.mf ], [ %i.adl, %bb.cw ], [ %eh.lpad-body.i, %.body.i ], [ %i.adl, %bb.cx ], [ %.pn5242119, %.critedge.thread ], [ %eh.lpad-body5802125, %.critedge ], [ %i.bgc, %bb.gj ], [ %eh.lpad-body.i976, %.body.i975 ], [ %i.bgc, %bb.gk ], [ %.pn5032258, %.critedge556.thread ], [ %eh.lpad-body5772264, %.critedge556 ], [ %lpad.thr_comm.split-lp2266, %.critedge556.thread2617 ], [ %i.cpc, %bb.pp ], [ %eh.lpad-body.i1512, %.body.i1511 ], [ %i.cpc, %bb.pq ], [ %.pn4802604, %.critedge566.thread ], [ %eh.lpad-body2610, %.critedge566 ], [ %i.con, %.critedge566.thread2626 ] ; 2 uses
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16EECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.fa) #49
          to label %bb.m unwind label %bb.cu, !dbg !91869

bb.ab:                                            ; preds = %.invoke4043, %.invoke4041, %.invoke4039, %.invoke, %bb.fh, %bb.bn, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtB7_5Array17is_null_uncheckedCs1LHh8CLbVkQ_11polars_core.exit.thread, %bb.it, %bb.dh, %bb.ag
  %.sroa.0223.3 = phi i1 [ true, %.invoke4043 ], [ true, %.invoke4039 ], [ true, %bb.bn ], [ true, %bb.ag ], [ true, %bb.it ], [ false, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtB7_5Array17is_null_uncheckedCs1LHh8CLbVkQ_11polars_core.exit.thread ], [ true, %.invoke ], [ true, %bb.fh ], [ true, %bb.dh ], [ true, %.invoke4041 ], !dbg !91868
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %.critedge560

default.unreachable3852:                          ; preds = %bb.mj, %bb.jd, %bb.dk, %bb.al, %bb.ac, %bb.z
  unreachable

default.unreachable:                              ; preds = %.thread1972
  unreachable

bb.ac:                                            ; preds = %bb.z
  %i.it = load i8, ptr %i.ii, align 2, !dbg !91867, !range !3609, !noundef !3448
  switch i8 %i.it, label %default.unreachable3852 [
    i8 0, label %.invoke4043
    i8 1, label %bb.ad
    i8 2, label %bb.ae
  ], !dbg !91866, !prof !3765

.thread1972:                                      ; preds = %..thread1972_crit_edge, %bb.aa
  %i.iu = phi ptr [ null, %..thread1972_crit_edge ], [ %i.iq, %bb.aa ] ; 6 uses
  %.pr = phi i8 [ %.pr.pre, %..thread1972_crit_edge ], [ %i.il, %bb.aa ], !dbg !91867
  switch i8 %.pr, label %default.unreachable [
    i8 0, label %.invoke4043
    i8 1, label %.thread1972.thread
    i8 2, label %bb.gl
  ], !dbg !91866, !prof !3766

bb.ad:                                            ; preds = %bb.ac
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !91870
  %i.iw = load ptr, ptr %i.iv, align 8, !dbg !91870, !nonnull !3448, !noundef !3448 ; 19 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !91871
  %i.iy = load i64, ptr %i.ix, align 16, !dbg !91871, !noundef !3448
  %.not509 = icmp eq i64 %i.iy, 0, !dbg !91872
  br i1 %.not509, label %.invoke4041, label %bb.af, !dbg !91872

bb.ae:                                            ; preds = %bb.ac
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !91873
  %i.ja = load ptr, ptr %i.iz, align 8, !dbg !91873, !nonnull !3448, !noundef !3448 ; 8 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !91874
  %i.jc = load i64, ptr %i.jb, align 16, !dbg !91874, !noundef !3448
  %.not489 = icmp eq i64 %i.jc, 0, !dbg !91875
  br i1 %.not489, label %.invoke4041, label %bb.df, !dbg !91875

.invoke4043:                                      ; preds = %bb.y, %bb.aa, %bb.z, %bb.ac, %.thread1972
  %i.jd = phi ptr [ @41, %bb.z ], [ @41, %.thread1972 ], [ @41, %bb.ac ], [ @27, %bb.aa ], [ @27, %bb.y ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jd) #48
          to label %.cont4044 unwind label %bb.ab, !dbg !90174

.cont4044:                                        ; preds = %.invoke4043
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !91876
  %i.jf = load ptr, ptr %i.je, align 8, !dbg !91876, !nonnull !3448, !noundef !3448 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !91877
  %i.jh = load i64, ptr %i.jg, align 16, !dbg !91877, !noundef !3448
  %.not510 = icmp eq i64 %i.jh, 0, !dbg !91878
  br i1 %.not510, label %.invoke4041, label %bb.ag, !dbg !91878

bb.ag:                                            ; preds = %bb.af
  %i.ji = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !91879, !noundef !3448 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn), !dbg !91880
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !91881
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.an, i64 noundef %i.ji, i1 noundef zeroext false, i64 noundef 2, i64 noundef 2)
          to label %bb.ah unwind label %bb.ab, !dbg !91881

bb.ah:                                            ; preds = %bb.ag
  %i.jj = load i64, ptr %i.an, align 8, !dbg !91881, !range !3450, !noundef !3448
  %i.jk = trunc nuw i64 %i.jj to i1, !dbg !91882
  %i.jl = getelementptr inbounds nuw i8, ptr %i.an, i64 8, !dbg !91883
  %i.jm = load i64, ptr %i.jl, align 8, !dbg !91883, !range !3612, !noundef !3448 ; 3 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.an, i64 16, !dbg !91883 ; 2 uses
  br i1 %i.jk, label %bb.ai, label %bb.aj, !dbg !91882, !prof !3502

bb.ai:                                            ; preds = %bb.ah
  %i.jo = load i64, ptr %i.jn, align 8, !dbg !91884
  br label %.invoke, !dbg !91885

bb.aj:                                            ; preds = %bb.ah
  %i.jp = load ptr, ptr %i.jn, align 8, !dbg !91886, !nonnull !3448, !noundef !3448 ; 11 uses
  %i.jq = icmp ule i64 %i.ji, %i.jm, !dbg !91887
  tail call void @llvm.assume(i1 %i.jq), !dbg !91888
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !91889
  store i64 %i.jm, ptr %i.dn, align 8, !dbg !91890
  %i.jr = getelementptr inbounds nuw i8, ptr %i.dn, i64 8, !dbg !91890
  store ptr %i.jp, ptr %i.jr, align 8, !dbg !91890
  %i.js = getelementptr inbounds nuw i8, ptr %i.dn, i64 16, !dbg !91890 ; 2 uses
  store i64 0, ptr %i.js, align 8, !dbg !91890
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jf, i64 16, !dbg !91891 ; 2 uses
  %i.ju = load i64, ptr %i.jt, align 8, !dbg !91891, !noundef !3448 ; 3 uses
  %i.jv = add i64 %i.ju, -1, !dbg !91892          ; 2 uses
  store i64 %i.jv, ptr %i.dm, align 8, !dbg !91892
  %i.jw = icmp eq i64 %i.jv, 1, !dbg !91893
  br i1 %i.jw, label %bb.al, label %bb.ak, !dbg !91893, !prof !3552

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @5, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #48
          to label %bb.l unwind label %.loopexit.split-lp2739.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !91894

bb.al:                                            ; preds = %bb.aj
  %i.jx = getelementptr i8, ptr %i.jf, i64 8, !dbg !91895 ; 2 uses
  %i.jy = load ptr, ptr %i.jx, align 8, !dbg !91895, !nonnull !3448, !noundef !3448 ; 2 uses
  %i.jz = load i64, ptr %i.jy, align 8, !dbg !91896, !noundef !3448 ; 12 uses
  %.not.i682 = icmp ne i64 %i.ju, 0, !dbg !91897
  tail call void @llvm.assume(i1 %.not.i682), !dbg !91897
  %i.ka = getelementptr [8 x i8], ptr %i.jy, i64 %i.ju, !dbg !91898
  %i.kb = getelementptr i8, ptr %i.ka, i64 -8, !dbg !91898 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.kb) ]
  %i.kc = load i64, ptr %i.kb, align 8, !dbg !91899, !noundef !3448
  %i.kd = sub i64 %i.kc, %i.jz, !dbg !91900       ; 21 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %1, i64 315, !dbg !91901
  %i.kf = load i8, ptr %i.ke, align 1, !dbg !91901, !range !3608, !noundef !3448
  switch i8 %i.kf, label %default.unreachable3852 [
    i8 0, label %bb.am
    i8 1, label %bb.an
    i8 2, label %bb.ao
    i8 3, label %bb.ap
    i8 4, label %bb.aq
    i8 5, label %bb.ar
  ], !dbg !91902

bb.am:                                            ; preds = %bb.al
  %i.kg = getelementptr inbounds nuw i8, ptr %i.iw, i64 16, !dbg !91903
  %i.kh = load i64, ptr %i.kg, align 8, !dbg !91903, !noundef !3448 ; 2 uses
  %i.ki = icmp ult i64 %i.kh, 2, !dbg !91904
  br i1 %i.ki, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE22offset_and_length_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit, label %.lr.ph3160, !dbg !91904

.lr.ph3160:                                       ; preds = %bb.am
  %i.kj = getelementptr inbounds nuw i8, ptr %i.iw, i64 8, !dbg !91905
  %i.kk = load ptr, ptr %i.kj, align 8, !dbg !91905, !noundef !3448
  %i.kl = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.kn = add i64 %i.kh, -2
  br label %bb.as, !dbg !91904

bb.an:                                            ; preds = %bb.al
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !91906
  %i.kp = load i8, ptr %i.ko, align 8, !dbg !91906, !range !3607, !noundef !3448
  %i.kq = trunc nuw i8 %i.kp to i1, !dbg !91906
  %i.kr = getelementptr inbounds nuw i8, ptr %i.iw, i64 16, !dbg !91907
  %i.ks = load i64, ptr %i.kr, align 8, !dbg !91907, !noundef !3448 ; 3 uses
  %i.kt = icmp ult i64 %i.ks, 2, !dbg !91908      ; 2 uses
  br i1 %i.kq, label %bb.au, label %bb.at, !dbg !91906

bb.ao:                                            ; preds = %bb.al
  %i.ku = getelementptr inbounds nuw i8, ptr %i.iw, i64 16, !dbg !91909
  %i.kv = load i64, ptr %i.ku, align 8, !dbg !91909, !noundef !3448 ; 2 uses
  %i.kw = icmp ult i64 %i.kv, 2, !dbg !91910
  br i1 %i.kw, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE22offset_and_length_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit, label %.lr.ph3136, !dbg !91910

.lr.ph3136:                                       ; preds = %bb.ao
  %i.kx = getelementptr inbounds nuw i8, ptr %i.iw, i64 8, !dbg !91911
  %i.ky = load ptr, ptr %i.kx, align 8, !dbg !91911, !noundef !3448
  %i.kz = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.la = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.lb = add i64 %i.kv, -2
  br label %bb.ax, !dbg !91910

bb.ap:                                            ; preds = %bb.al
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !91906
  %i.ld = load i8, ptr %i.lc, align 8, !dbg !91906, !range !3607, !noundef !3448
  %i.le = trunc nuw i8 %i.ld to i1, !dbg !91906
  %i.lf = getelementptr inbounds nuw i8, ptr %i.iw, i64 16, !dbg !91907
  %i.lg = load i64, ptr %i.lf, align 8, !dbg !91907, !noundef !3448 ; 3 uses
  %i.lh = icmp ult i64 %i.lg, 2, !dbg !91908      ; 2 uses
  br i1 %i.le, label %bb.az, label %bb.ay, !dbg !91906

bb.aq:                                            ; preds = %bb.al
  %i.li = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !91906
  %i.lj = load i8, ptr %i.li, align 8, !dbg !91906, !range !3607, !noundef !3448
  %i.lk = trunc nuw i8 %i.lj to i1, !dbg !91906
  %i.ll = getelementptr inbounds nuw i8, ptr %i.iw, i64 16, !dbg !91907
  %i.lm = load i64, ptr %i.ll, align 8, !dbg !91907, !noundef !3448 ; 3 uses
  %i.ln = icmp ult i64 %i.lm, 2, !dbg !91908      ; 2 uses
  br i1 %i.lk, label %bb.bd, label %bb.bc, !dbg !91906

bb.ar:                                            ; preds = %bb.al
  %i.lo = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !91906
  %i.lp = load i8, ptr %i.lo, align 8, !dbg !91906, !range !3607, !noundef !3448
  %i.lq = trunc nuw i8 %i.lp to i1, !dbg !91906
  %i.lr = getelementptr inbounds nuw i8, ptr %i.iw, i64 16, !dbg !91907
  %i.ls = load i64, ptr %i.lr, align 8, !dbg !91907, !noundef !3448 ; 3 uses
  %i.lt = icmp ult i64 %i.ls, 2, !dbg !91908      ; 2 uses
  br i1 %i.lq, label %bb.bh, label %bb.bg, !dbg !91906

.loopexit2737:                                    ; preds = %_RNvXs8_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numNtNtCs2mZqlW55729_12polars_utils7float164pf16NtB5_15PlNumArithmetic12wrapping_add.exit584, %bb.as
  %exitcond3654 = icmp eq i64 %.sroa.10.03156, %i.kn, !dbg !91904
  br i1 %exitcond3654, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE22offset_and_length_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit, label %bb.as, !dbg !91904

bb.as:                                            ; preds = %.lr.ph3160, %.loopexit2737
  %.sroa.067.03159 = phi i64 [ 0, %.lr.ph3160 ], [ %spec.select, %.loopexit2737 ] ; 2 uses
  %.sroa.01655.03158 = phi ptr [ %i.kk, %.lr.ph3160 ], [ %i.lu, %.loopexit2737 ] ; 3 uses
  %.sroa.10.03156 = phi i64 [ 0, %.lr.ph3160 ], [ %i.lw, %.loopexit2737 ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01655.03158) ]
  %i.lu = getelementptr inbounds nuw i8, ptr %.sroa.01655.03158, i64 8, !dbg !91912 ; 2 uses
  %.val1.i.i.i = load i64, ptr %.sroa.01655.03158, align 8, !dbg !91913, !alias.scope !89607, !noalias !89608, !noundef !3448 ; 2 uses
  %.val.i.i.i = load i64, ptr %i.lu, align 8, !dbg !91914, !alias.scope !89607, !noalias !89608, !noundef !3448
  %i.lv = sub i64 %.val.i.i.i, %.val1.i.i.i, !dbg !91915 ; 2 uses
  %i.lw = add nuw i64 %.sroa.10.03156, 1, !dbg !91916
  %i.lx = icmp eq i64 %i.lv, %i.kd, !dbg !91917
  %i.ly = icmp eq i64 %.sroa.067.03159, %.sroa.10.03156, !dbg !91918
  %i.lz = and i1 %i.ly, %i.lx, !dbg !91919
  %i.ma = load ptr, ptr %i.kl, align 16, !dbg !91920, !nonnull !3448, !noundef !3448 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 40, !dbg !91921
  %i.mc = load i64, ptr %i.mb, align 8, !dbg !91921, !noundef !3448
  %i.md = getelementptr inbounds nuw i8, ptr %i.ma, i64 32, !dbg !91922
  %i.me = load ptr, ptr %i.md, align 8, !dbg !91922, !noundef !3448
  %i.mf = load i64, ptr %i.km, align 8, !dbg !91923, !noundef !3448
  %i.mg = add i64 %i.mf, %.sroa.10.03156, !dbg !91923 ; 2 uses
  %i.mh = lshr i64 %i.mg, 3, !dbg !91924          ; 2 uses
  %i.mi = icmp ult i64 %i.mh, %i.mc, !dbg !91925
  tail call void @llvm.assume(i1 %i.mi), !dbg !91926
  %i.mj = getelementptr inbounds nuw i8, ptr %i.me, i64 %i.mh, !dbg !91927
  %i.mk = load i8, ptr %i.mj, align 1, !dbg !91928, !noundef !3448
  %i.ml = trunc i64 %i.mg to i8, !dbg !91929
  %i.mm = and i8 %i.ml, 7, !dbg !91929
  %i.mn = shl nuw i8 1, %i.mm, !dbg !91930
  %i.mo = and i8 %i.mn, %i.mk, !dbg !91930
  %.not527 = icmp eq i8 %i.mo, 0, !dbg !91930
  %i.mp = or i1 %i.lz, %.not527, !dbg !91919
  %i.mq = zext i1 %i.mp to i64, !dbg !91919
  %spec.select = add i64 %.sroa.067.03159, %i.mq, !dbg !91919 ; 2 uses
  %.sroa.0.0.i685 = tail call noundef i64 @llvm.umin.i64(i64 %i.kd, i64 %i.lv), !dbg !91931 ; 2 uses
  %.not3439 = icmp eq i64 %.sroa.0.0.i685, 0, !dbg !91932
  br i1 %.not3439, label %.loopexit2737, label %.lr.ph3155, !dbg !91933

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE22offset_and_length_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %.loopexit2778, %.loopexit2774, %.loopexit2769, %.loopexit2765, %.loopexit2760, %.loopexit2756, %.loopexit2751, %.loopexit2747, %.loopexit2742, %.loopexit2737, %bb.bg, %bb.bh, %bb.bc, %bb.bd, %bb.ay, %bb.az, %bb.ao, %bb.at, %bb.au, %bb.am
  %.sroa.067.1 = phi i64 [ %spec.select538, %.loopexit2760 ], [ %spec.select536, %.loopexit2742 ], [ %spec.select540, %.loopexit2769 ], [ %spec.select, %.loopexit2737 ], [ %spec.select539, %.loopexit2756 ], [ %spec.select535, %.loopexit2747 ], [ %spec.select541, %.loopexit2765 ], [ %spec.select537, %.loopexit2751 ], [ %spec.select543, %.loopexit2774 ], [ 0, %bb.am ], [ 0, %bb.au ], [ 0, %bb.at ], [ 0, %bb.ao ], [ 0, %bb.az ], [ 0, %bb.ay ], [ 0, %bb.bd ], [ 0, %bb.bc ], [ 0, %bb.bh ], [ 0, %bb.bg ], [ %spec.select542, %.loopexit2778 ], !dbg !91934
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl), !dbg !90084
  %i.mr = getelementptr i8, ptr %i.iw, i64 8, !dbg !90084
  %.val657 = load ptr, ptr %i.mr, align 8, !dbg !90084
  %i.ms = getelementptr i8, ptr %i.iw, i64 16, !dbg !90084
  %.val658 = load i64, ptr %i.ms, align 8, !dbg !90084, !noundef !3448
  %.val659 = load ptr, ptr %i.jx, align 8, !dbg !90084
  %.val660 = load i64, ptr %i.jt, align 8, !dbg !90084
  invoke fastcc void @_RNvNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB4_19ListNumericOpHelper12__finish_impl18check_mismatch_pos(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.dl, i64 noundef %.sroa.067.1, ptr %.val657, i64 %.val658, ptr %.val659, i64 %.val660)
          to label %bb.bk unwind label %.loopexit.split-lp2739.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !90084

.lr.ph3155:                                       ; preds = %bb.as, %_RNvXs8_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numNtNtCs2mZqlW55729_12polars_utils7float164pf16NtB5_15PlNumArithmetic12wrapping_add.exit584
  %.sroa.0350.03154 = phi i64 [ %i.ng, %_RNvXs8_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numNtNtCs2mZqlW55729_12polars_utils7float164pf16NtB5_15PlNumArithmetic12wrapping_add.exit584 ], [ 0, %bb.as ] ; 3 uses
  %i.mt = add nuw i64 %.sroa.0350.03154, %.val1.i.i.i, !dbg !91935 ; 3 uses
  %i.mu = add nuw i64 %.sroa.0350.03154, %i.jz, !dbg !91936 ; 2 uses
  %i.mv = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !91937, !noundef !3448
  %i.mw = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !91938, !noundef !3448
  %i.mx = icmp ult i64 %i.mt, %i.mw, !dbg !91939
  tail call void @llvm.assume(i1 %i.mx), !dbg !91940
  %i.my = getelementptr inbounds nuw [2 x i8], ptr %i.mv, i64 %i.mt, !dbg !91941
  %i.mz = load i16, ptr %i.my, align 2, !dbg !91942, !noundef !3448
  %i.na = load ptr, ptr %.sroa.4.0..sroa_idx.i675, align 8, !dbg !91943, !noundef !3448
  %i.nb = load i64, ptr %.sroa.5.0..sroa_idx5.i676, align 8, !dbg !91944, !noundef !3448
  %i.nc = icmp ult i64 %i.mu, %i.nb, !dbg !91945
  tail call void @llvm.assume(i1 %i.nc), !dbg !91946
  %i.nd = getelementptr inbounds nuw [2 x i8], ptr %i.na, i64 %i.mu, !dbg !91947
  %i.ne = load i16, ptr %i.nd, align 2, !dbg !91948, !noundef !3448
  %i.nf = invoke fastcc noundef i16 @_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch16add_f16_fallback(i16 noundef %i.mz, i16 noundef %i.ne) #47
          to label %_RNvXs8_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numNtNtCs2mZqlW55729_12polars_utils7float164pf16NtB5_15PlNumArithmetic12wrapping_add.exit584 unwind label %.loopexit2738, !dbg !91949

_RNvXs8_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numNtNtCs2mZqlW55729_12polars_utils7float164pf16NtB5_15PlNumArithmetic12wrapping_add.exit584: ; preds = %.lr.ph3155
  %i.ng = add nuw i64 %.sroa.0350.03154, 1, !dbg !91950 ; 2 uses
  %i.nh = getelementptr inbounds nuw [2 x i8], ptr %i.jp, i64 %i.mt, !dbg !91951
  store i16 %i.nf, ptr %i.nh, align 2, !dbg !91952
  %exitcond3653.not = icmp eq i64 %i.ng, %.sroa.0.0.i685, !dbg !91932
  br i1 %exitcond3653.not, label %.loopexit2737, label %.lr.ph3155, !dbg !91933

bb.at:                                            ; preds = %bb.an
  br i1 %i.kt, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE22offset_and_length_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit, label %.lr.ph3144, !dbg !91953

.lr.ph3144:                                       ; preds = %bb.at
  %i.ni = getelementptr inbounds nuw i8, ptr %i.iw, i64 8, !dbg !91954
  %i.nj = load ptr, ptr %i.ni, align 8, !dbg !91954, !noundef !3448
  %i.nk = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.nl = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.nm = add i64 %i.ks, -2
  br label %bb.av, !dbg !91953

bb.au:                                            ; preds = %bb.an
  br i1 %i.kt, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE22offset_and_length_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit, label %.lr.ph3152, !dbg !91955

.lr.ph3152:                                       ; preds = %bb.au
  %i.nn = getelementptr inbounds nuw i8, ptr %i.iw, i64 8, !dbg !91956
  %i.no = load ptr, ptr %i.nn, align 8, !dbg !91956, !noundef !3448
  %i.np = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.nq = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.nr = add i64 %i.ks, -2
  br label %bb.aw, !dbg !91955

.loopexit2747:                                    ; preds = %_RNvXs8_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numNtNtCs2mZqlW55729_12polars_utils7float164pf16NtB5_15PlNumArithmetic12wrapping_sub.exit616, %bb.av
  %exitcond3650 = icmp eq i64 %.sroa.101672.03140, %i.nm, !dbg !91953
  br i1 %exitcond3650, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE22offset_and_length_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit, label %bb.av, !dbg !91953

bb.av:                                            ; preds = %.lr.ph3144, %.loopexit2747
  %.sroa.067.33143 = phi i64 [ 0, %.lr.ph3144 ], [ %spec.select535, %.loopexit2747 ] ; 2 uses
  %.sroa.01669.03142 = phi ptr [ %i.nj, %.lr.ph3144 ], [ %i.ns, %.loopexit2747 ] ; 3 uses
  %.sroa.101672.03140 = phi i64 [ 0, %.lr.ph3144 ], [ %i.nu, %.loopexit2747 ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01669.03142) ]
  %i.ns = getelementptr inbounds nuw i8, ptr %.sroa.01669.03142, i64 8, !dbg !91957 ; 2 uses
  %.val1.i.i.i686 = load i64, ptr %.sroa.01669.03142, align 8, !dbg !91958, !alias.scope !89661, !noalias !89662, !noundef !3448 ; 2 uses
  %.val.i.i.i687 = load i64, ptr %i.ns, align 8, !dbg !91959, !alias.scope !89661, !noalias !89662, !noundef !3448
  %i.nt = sub i64 %.val.i.i.i687, %.val1.i.i.i686, !dbg !91960 ; 2 uses
  %i.nu = add nuw i64 %.sroa.101672.03140, 1, !dbg !91961
  %i.nv = icmp eq i64 %i.nt, %i.kd, !dbg !91962
  %i.nw = icmp eq i64 %.sroa.067.33143, %.sroa.101672.03140, !dbg !91963
  %i.nx = and i1 %i.nw, %i.nv, !dbg !91964
  %i.ny = load ptr, ptr %i.nk, align 16, !dbg !91965, !nonnull !3448, !noundef !3448 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 40, !dbg !91966
  %i.oa = load i64, ptr %i.nz, align 8, !dbg !91966, !noundef !3448
  %i.ob = getelementptr inbounds nuw i8, ptr %i.ny, i64 32, !dbg !91967
  %i.oc = load ptr, ptr %i.ob, align 8, !dbg !91967, !noundef !3448
end_hunk_4
begin_hunk_5_@_RINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB3_19ListNumericOpHelper12__finish_implNtNtBb_9datatypes11Float32TypeEBb_:bb.a

bb.r:                                             ; preds = %bb.s, %.noexc625
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hj, i64 40, !dbg !98881
  %i.hp = load ptr, ptr %i.ho, align 8, !dbg !98881, !noalias !96562, !noundef !3448 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hj, i64 48, !dbg !98882
  %i.hr = load i64, ptr %i.hq, align 8, !dbg !98882, !noalias !96562, !noundef !3448 ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hj, i64 56, !dbg !98883
  %i.ht = load ptr, ptr %i.hs, align 8, !dbg !98883, !noalias !96562, !noundef !3448 ; 6 uses
  %.not.i616 = icmp eq ptr %i.ht, null, !dbg !98883 ; 2 uses
  br i1 %.not.i616, label %bb.w, label %bb.t, !dbg !98884

bb.s:                                             ; preds = %.noexc625
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hl, i64 24, !dbg !98885
  %i.hv = atomicrmw add ptr %i.hu, i64 1 monotonic, align 8, !dbg !98886, !noalias !96562 ; 0 uses
  br label %bb.r, !dbg !98887

bb.t:                                             ; preds = %bb.r
  %i.hw = load i64, ptr %i.ht, align 8, !dbg !98888, !range !3591, !noalias !96563, !noundef !3448
  %i.hx = icmp eq i64 %i.hw, 3, !dbg !98889
  br i1 %i.hx, label %bb.v, label %bb.u, !dbg !98889

bb.u:                                             ; preds = %bb.t
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ht, i64 24, !dbg !98890
  %i.hz = atomicrmw add ptr %i.hy, i64 1 monotonic, align 8, !dbg !98891, !noalias !96563 ; 0 uses
  br label %bb.v, !dbg !98892

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hj, i64 64, !dbg !98893
  %i.ib = load <2 x i64>, ptr %i.ia, align 8, !dbg !98893, !noalias !96563
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hj, i64 80, !dbg !98894
  %i.id = load atomic i64, ptr %i.ic monotonic, align 8, !dbg !98895, !noalias !96563
  br label %bb.w, !dbg !98896

bb.w:                                             ; preds = %bb.v, %bb.r
  %.sroa.5.sroa.5.0.i617 = phi i64 [ undef, %bb.r ], [ %i.id, %bb.v ], !dbg !98897
  %i.ie = phi <2 x i64> [ undef, %bb.r ], [ %i.ib, %bb.v ], !dbg !98897 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.fa, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 32, i1 false), !dbg !98898
  %i.if = getelementptr inbounds nuw i8, ptr %i.fa, i64 32, !dbg !98898 ; 7 uses
  store ptr %i.hl, ptr %i.if, align 8, !dbg !98898, !alias.scope !96562
  %.sroa.4.0..sroa_idx.i620 = getelementptr inbounds nuw i8, ptr %i.fa, i64 40, !dbg !98898 ; 81 uses
  store ptr %i.hp, ptr %.sroa.4.0..sroa_idx.i620, align 8, !dbg !98898, !alias.scope !96562
  %.sroa.5.0..sroa_idx5.i621 = getelementptr inbounds nuw i8, ptr %i.fa, i64 48, !dbg !98898 ; 81 uses
  store i64 %i.hr, ptr %.sroa.5.0..sroa_idx5.i621, align 8, !dbg !98898, !alias.scope !96562
  %i.ig = getelementptr inbounds nuw i8, ptr %i.fa, i64 56, !dbg !98898 ; 21 uses
  store ptr %i.ht, ptr %i.ig, align 8, !dbg !98898, !alias.scope !96562
  %.sroa.5.0..sroa_idx.i622 = getelementptr inbounds nuw i8, ptr %i.fa, i64 64, !dbg !98898
  store <2 x i64> %i.ie, ptr %.sroa.5.0..sroa_idx.i622, align 8, !dbg !98898, !alias.scope !96562
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i624 = getelementptr inbounds nuw i8, ptr %i.fa, i64 80, !dbg !98898
  store i64 %.sroa.5.sroa.5.0.i617, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i624, align 8, !dbg !98898, !alias.scope !96562
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !98899, !noalias !96562
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 313, !dbg !98900
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 314, !dbg !98901 ; 3 uses
  %i.ij = load i8, ptr %i.ih, align 1, !dbg !98902, !range !3609, !noundef !3448 ; 2 uses
  %i.ik = icmp eq i8 %i.ij, 1, !dbg !98903
  br i1 %i.ik, label %bb.x, label %bb.y, !dbg !98903

bb.x:                                             ; preds = %bb.w
  %i.il = load i8, ptr %i.ii, align 2, !dbg !98902, !range !3609, !noundef !3448 ; 3 uses
  %i.im = icmp eq i8 %i.il, 1, !dbg !98903
  br i1 %i.im, label %.thread1885.thread, label %bb.aa, !dbg !98903

bb.y:                                             ; preds = %bb.w
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 288, !dbg !98904
  %i.io = load ptr, ptr %i.in, align 16, !dbg !98904, !noundef !3448
  %.not467 = icmp eq ptr %i.io, null, !dbg !98904
  br i1 %.not467, label %bb.z, label %.invoke3730, !dbg !98905, !prof !3552

bb.z:                                             ; preds = %bb.y
  switch i8 %i.ij, label %default.unreachable3559 [
    i8 0, label %bb.ac
    i8 1, label %..thread1885_crit_edge
    i8 2, label %.invoke3730
  ], !dbg !98906, !prof !3838

..thread1885_crit_edge:                           ; preds = %bb.z
  %.pr.pre = load i8, ptr %i.ii, align 2, !dbg !98907
  br label %.thread1885, !dbg !98906

bb.aa:                                            ; preds = %bb.x
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 288, !dbg !98904
  %i.iq = load ptr, ptr %i.ip, align 16, !dbg !98904, !noundef !3448 ; 2 uses
  %.not468 = icmp eq ptr %i.iq, null, !dbg !98904
  %i.ir = icmp eq i8 %i.il, 2
  %or.cond = or i1 %i.ir, %.not468, !dbg !98905
  br i1 %or.cond, label %.thread1885, label %.invoke3730, !dbg !98905, !prof !3839

.critedge560:                                     ; preds = %.critedge566.thread2539, %.critedge566, %.critedge566.thread, %bb.pr, %bb.ps, %.body.i1426, %.critedge558.thread2533, %.critedge556.thread2530, %.critedge556, %.critedge556.thread, %bb.gk, %bb.gl, %.body.i906, %.critedge.thread2527, %.critedge, %.critedge.thread, %bb.cw, %bb.cx, %.body.i, %bb.mf, %bb.mg, %bb.hn, %bb.gp, %bb.fh, %bb.bm, %bb.ab, %.thread2217, %bb.pt, %bb.it, %.critedge558.thread, %.critedge558, %.loopexit.split-lp, %bb.df
  %.sroa.0223.2 = phi i1 [ true, %bb.hn ], [ true, %bb.df ], [ true, %bb.mf ], [ true, %.loopexit.split-lp ], [ true, %.critedge.thread2527 ], [ true, %bb.it ], [ true, %bb.gp ], [ false, %.critedge558.thread ], [ false, %.critedge558 ], [ true, %bb.pt ], [ false, %.critedge558.thread2533 ], [ true, %.thread2217 ], [ %.sroa.0223.3, %bb.ab ], [ true, %bb.bm ], [ true, %bb.fh ], [ true, %bb.mg ], [ true, %bb.cw ], [ true, %.body.i ], [ true, %bb.cx ], [ true, %.critedge.thread ], [ true, %.critedge ], [ true, %bb.gk ], [ true, %.body.i906 ], [ true, %bb.gl ], [ true, %.critedge556.thread ], [ true, %.critedge556 ], [ true, %.critedge556.thread2530 ], [ true, %bb.pr ], [ true, %.body.i1426 ], [ true, %bb.ps ], [ true, %.critedge566.thread ], [ true, %.critedge566 ], [ true, %.critedge566.thread2539 ], !dbg !98908
  %.pn530 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp2208, %bb.hn ], [ %i.aqp, %bb.df ], [ %i.dav, %bb.mf ], [ %lpad.phi, %.loopexit.split-lp ], [ %lpad.thr_comm.split-lp2040, %.critedge.thread2527 ], [ %.pn4872202, %bb.it ], [ %i.cgc, %bb.gp ], [ %.pn4852187, %.critedge558.thread ], [ %eh.lpad-body5742193, %.critedge558 ], [ %i.ebz, %bb.pt ], [ %i.cgp, %.critedge558.thread2533 ], [ %.pn475.pn, %.thread2217 ], [ %i.is, %bb.ab ], [ %i.anh, %bb.bm ], [ %i.ccm, %bb.fh ], [ %i.dav, %bb.mg ], [ %i.aoz, %bb.cw ], [ %eh.lpad-body.i, %.body.i ], [ %i.aoz, %bb.cx ], [ %.pn5242032, %.critedge.thread ], [ %eh.lpad-body5802038, %.critedge ], [ %i.cdv, %bb.gk ], [ %eh.lpad-body.i907, %.body.i906 ], [ %i.cdv, %bb.gl ], [ %.pn5032171, %.critedge556.thread ], [ %eh.lpad-body5772177, %.critedge556 ], [ %lpad.thr_comm.split-lp2179, %.critedge556.thread2530 ], [ %i.ebw, %bb.pr ], [ %eh.lpad-body.i1427, %.body.i1426 ], [ %i.ebw, %bb.ps ], [ %.pn4802517, %.critedge566.thread ], [ %eh.lpad-body2523, %.critedge566 ], [ %i.ebh, %.critedge566.thread2539 ] ; 2 uses
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayfEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.fa) #49
          to label %bb.m unwind label %bb.cu, !dbg !98909

bb.ab:                                            ; preds = %.invoke3730, %.invoke3728, %.invoke3726, %.invoke, %bb.fi, %bb.bn, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayfENtB7_5Array17is_null_uncheckedCs1LHh8CLbVkQ_11polars_core.exit.thread, %bb.iu, %bb.di, %bb.ag
  %.sroa.0223.3 = phi i1 [ true, %.invoke3730 ], [ true, %.invoke3726 ], [ true, %bb.bn ], [ true, %bb.ag ], [ true, %bb.iu ], [ false, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayfENtB7_5Array17is_null_uncheckedCs1LHh8CLbVkQ_11polars_core.exit.thread ], [ true, %.invoke ], [ true, %bb.fi ], [ true, %bb.di ], [ true, %.invoke3728 ], !dbg !98908
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %.critedge560

default.unreachable3559:                          ; preds = %bb.ml, %bb.je, %bb.dl, %bb.al, %bb.ac, %bb.z
  unreachable

default.unreachable:                              ; preds = %.thread1885
  unreachable

bb.ac:                                            ; preds = %bb.z
  %i.it = load i8, ptr %i.ii, align 2, !dbg !98907, !range !3609, !noundef !3448
  switch i8 %i.it, label %default.unreachable3559 [
    i8 0, label %.invoke3730
    i8 1, label %bb.ad
    i8 2, label %bb.ae
  ], !dbg !98906, !prof !3765

.thread1885:                                      ; preds = %..thread1885_crit_edge, %bb.aa
  %i.iu = phi ptr [ null, %..thread1885_crit_edge ], [ %i.iq, %bb.aa ] ; 6 uses
  %.pr = phi i8 [ %.pr.pre, %..thread1885_crit_edge ], [ %i.il, %bb.aa ], !dbg !98907
  switch i8 %.pr, label %default.unreachable [
    i8 0, label %.invoke3730
    i8 1, label %.thread1885.thread
    i8 2, label %bb.gm
  ], !dbg !98906, !prof !3766

bb.ad:                                            ; preds = %bb.ac
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !98910
  %i.iw = load ptr, ptr %i.iv, align 8, !dbg !98910, !nonnull !3448, !noundef !3448 ; 19 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !98911
  %i.iy = load i64, ptr %i.ix, align 16, !dbg !98911, !noundef !3448
  %.not509 = icmp eq i64 %i.iy, 0, !dbg !98912
  br i1 %.not509, label %.invoke3728, label %bb.af, !dbg !98912

bb.ae:                                            ; preds = %bb.ac
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !98913
  %i.ja = load ptr, ptr %i.iz, align 8, !dbg !98913, !nonnull !3448, !noundef !3448 ; 8 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !98914
  %i.jc = load i64, ptr %i.jb, align 16, !dbg !98914, !noundef !3448
  %.not489 = icmp eq i64 %i.jc, 0, !dbg !98915
  br i1 %.not489, label %.invoke3728, label %bb.dg, !dbg !98915

.invoke3730:                                      ; preds = %bb.y, %bb.aa, %bb.z, %bb.ac, %.thread1885
  %i.jd = phi ptr [ @41, %bb.z ], [ @41, %.thread1885 ], [ @41, %bb.ac ], [ @27, %bb.aa ], [ @27, %bb.y ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jd) #48
          to label %.cont3731 unwind label %bb.ab, !dbg !97214

.cont3731:                                        ; preds = %.invoke3730
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !98916
  %i.jf = load ptr, ptr %i.je, align 8, !dbg !98916, !nonnull !3448, !noundef !3448 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !98917
  %i.jh = load i64, ptr %i.jg, align 16, !dbg !98917, !noundef !3448
  %.not510 = icmp eq i64 %i.jh, 0, !dbg !98918
  br i1 %.not510, label %.invoke3728, label %bb.ag, !dbg !98918

bb.ag:                                            ; preds = %bb.af
  %i.ji = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !98919, !noundef !3448 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn), !dbg !98920
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !98921
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.an, i64 noundef %i.ji, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %bb.ah unwind label %bb.ab, !dbg !98921

bb.ah:                                            ; preds = %bb.ag
  %i.jj = load i64, ptr %i.an, align 8, !dbg !98921, !range !3450, !noundef !3448
  %i.jk = trunc nuw i64 %i.jj to i1, !dbg !98922
  %i.jl = getelementptr inbounds nuw i8, ptr %i.an, i64 8, !dbg !98923
  %i.jm = load i64, ptr %i.jl, align 8, !dbg !98923, !range !3612, !noundef !3448 ; 3 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.an, i64 16, !dbg !98923 ; 2 uses
  br i1 %i.jk, label %bb.ai, label %bb.aj, !dbg !98922, !prof !3502

bb.ai:                                            ; preds = %bb.ah
  %i.jo = load i64, ptr %i.jn, align 8, !dbg !98924
  br label %.invoke, !dbg !98925

bb.aj:                                            ; preds = %bb.ah
  %i.jp = load ptr, ptr %i.jn, align 8, !dbg !98926, !nonnull !3448, !noundef !3448 ; 31 uses
  %i.jq = icmp ule i64 %i.ji, %i.jm, !dbg !98927
  tail call void @llvm.assume(i1 %i.jq), !dbg !98928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !98929
  store i64 %i.jm, ptr %i.dn, align 8, !dbg !98930
  %i.jr = getelementptr inbounds nuw i8, ptr %i.dn, i64 8, !dbg !98930
  store ptr %i.jp, ptr %i.jr, align 8, !dbg !98930
  %i.js = getelementptr inbounds nuw i8, ptr %i.dn, i64 16, !dbg !98930 ; 2 uses
  store i64 0, ptr %i.js, align 8, !dbg !98930
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jf, i64 16, !dbg !98931 ; 2 uses
  %i.ju = load i64, ptr %i.jt, align 8, !dbg !98931, !noundef !3448 ; 3 uses
  %i.jv = add i64 %i.ju, -1, !dbg !98932          ; 2 uses
  store i64 %i.jv, ptr %i.dm, align 8, !dbg !98932
  %i.jw = icmp eq i64 %i.jv, 1, !dbg !98933
  br i1 %i.jw, label %bb.al, label %bb.ak, !dbg !98933, !prof !3552

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @5, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #48
          to label %bb.l unwind label %bb.df, !dbg !98934

bb.al:                                            ; preds = %bb.aj
  %i.jx = getelementptr i8, ptr %i.jf, i64 8, !dbg !98935 ; 2 uses
  %i.jy = load ptr, ptr %i.jx, align 8, !dbg !98935, !nonnull !3448, !noundef !3448 ; 2 uses
  %i.jz = load i64, ptr %i.jy, align 8, !dbg !98936, !noundef !3448 ; 32 uses
  %.not.i627 = icmp ne i64 %i.ju, 0, !dbg !98937
  tail call void @llvm.assume(i1 %.not.i627), !dbg !98937
  %i.ka = getelementptr [8 x i8], ptr %i.jy, i64 %i.ju, !dbg !98938
  %i.kb = getelementptr i8, ptr %i.ka, i64 -8, !dbg !98938 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.kb) ]
  %i.kc = load i64, ptr %i.kb, align 8, !dbg !98939, !noundef !3448
  %i.kd = sub i64 %i.kc, %i.jz, !dbg !98940       ; 21 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %1, i64 315, !dbg !98941
  %i.kf = load i8, ptr %i.ke, align 1, !dbg !98941, !range !3608, !noundef !3448
  switch i8 %i.kf, label %default.unreachable3559 [
    i8 0, label %bb.am
    i8 1, label %bb.an
    i8 2, label %bb.ao
    i8 3, label %bb.ap
    i8 4, label %bb.aq
    i8 5, label %bb.ar
  ], !dbg !98942

bb.am:                                            ; preds = %bb.al
  %i.kg = getelementptr inbounds nuw i8, ptr %i.iw, i64 16, !dbg !98943
  %i.kh = load i64, ptr %i.kg, align 8, !dbg !98943, !noundef !3448 ; 2 uses
  %i.ki = icmp ult i64 %i.kh, 2, !dbg !98944
  br i1 %i.ki, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE22offset_and_length_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit, label %.lr.ph2947, !dbg !98944

.lr.ph2947:                                       ; preds = %bb.am
  %i.kj = getelementptr inbounds nuw i8, ptr %i.iw, i64 8, !dbg !98945
  %i.kk = load ptr, ptr %i.kj, align 8, !dbg !98945, !noundef !3448
  %i.kl = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.kn = add i64 %i.kh, -2
  br label %bb.as, !dbg !98944

bb.an:                                            ; preds = %bb.al
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !98946
  %i.kp = load i8, ptr %i.ko, align 8, !dbg !98946, !range !3607, !noundef !3448
  %i.kq = trunc nuw i8 %i.kp to i1, !dbg !98946
  %i.kr = getelementptr inbounds nuw i8, ptr %i.iw, i64 16, !dbg !98947
  %i.ks = load i64, ptr %i.kr, align 8, !dbg !98947, !noundef !3448 ; 3 uses
  %i.kt = icmp ult i64 %i.ks, 2, !dbg !98948      ; 2 uses
  br i1 %i.kq, label %bb.au, label %bb.at, !dbg !98946

bb.ao:                                            ; preds = %bb.al
  %i.ku = getelementptr inbounds nuw i8, ptr %i.iw, i64 16, !dbg !98949
  %i.kv = load i64, ptr %i.ku, align 8, !dbg !98949, !noundef !3448 ; 2 uses
  %i.kw = icmp ult i64 %i.kv, 2, !dbg !98950
  br i1 %i.kw, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE22offset_and_length_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit, label %.lr.ph2923, !dbg !98950

.lr.ph2923:                                       ; preds = %bb.ao
  %i.kx = getelementptr inbounds nuw i8, ptr %i.iw, i64 8, !dbg !98951
  %i.ky = load ptr, ptr %i.kx, align 8, !dbg !98951, !noundef !3448
  %i.kz = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.la = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.lb = add i64 %i.kv, -2
  br label %bb.ax, !dbg !98950

bb.ap:                                            ; preds = %bb.al
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !98946
  %i.ld = load i8, ptr %i.lc, align 8, !dbg !98946, !range !3607, !noundef !3448
  %i.le = trunc nuw i8 %i.ld to i1, !dbg !98946
  %i.lf = getelementptr inbounds nuw i8, ptr %i.iw, i64 16, !dbg !98947
  %i.lg = load i64, ptr %i.lf, align 8, !dbg !98947, !noundef !3448 ; 3 uses
  %i.lh = icmp ult i64 %i.lg, 2, !dbg !98948      ; 2 uses
  br i1 %i.le, label %bb.az, label %bb.ay, !dbg !98946

bb.aq:                                            ; preds = %bb.al
  %i.li = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !98946
  %i.lj = load i8, ptr %i.li, align 8, !dbg !98946, !range !3607, !noundef !3448
  %i.lk = trunc nuw i8 %i.lj to i1, !dbg !98946
  %i.ll = getelementptr inbounds nuw i8, ptr %i.iw, i64 16, !dbg !98947
  %i.lm = load i64, ptr %i.ll, align 8, !dbg !98947, !noundef !3448 ; 3 uses
  %i.ln = icmp ult i64 %i.lm, 2, !dbg !98948      ; 2 uses
  br i1 %i.lk, label %bb.bd, label %bb.bc, !dbg !98946

bb.ar:                                            ; preds = %bb.al
  %i.lo = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !98946
  %i.lp = load i8, ptr %i.lo, align 8, !dbg !98946, !range !3607, !noundef !3448
  %i.lq = trunc nuw i8 %i.lp to i1, !dbg !98946
  %i.lr = getelementptr inbounds nuw i8, ptr %i.iw, i64 16, !dbg !98947
  %i.ls = load i64, ptr %i.lr, align 8, !dbg !98947, !noundef !3448 ; 3 uses
  %i.lt = icmp ult i64 %i.ls, 2, !dbg !98948      ; 2 uses
  br i1 %i.lq, label %bb.bh, label %bb.bg, !dbg !98946

.loopexit2599.loopexit.unr-lcssa:                 ; preds = %.lr.ph2942
  %lcmp.mod4221.not = icmp eq i64 %xtraiter4220, 0, !dbg !98952
  br i1 %lcmp.mod4221.not, label %.loopexit2599, label %.lr.ph2942.epil.preheader, !dbg !98952

.lr.ph2942.epil.preheader:                        ; preds = %.loopexit2599.loopexit.unr-lcssa, %.lr.ph2942.preheader
  %.sroa.0350.02941.epil.init = phi i64 [ 0, %.lr.ph2942.preheader ], [ %i.ok, %.loopexit2599.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod4222 = trunc i64 %.sroa.0.0.i630 to i1, !dbg !98952
  tail call void @llvm.assume(i1 %lcmp.mod4222), !dbg !98952
  %i.lu = add nuw i64 %.sroa.0350.02941.epil.init, %.val1.i.i.i, !dbg !98953 ; 3 uses
  %i.lv = add nuw i64 %.sroa.0350.02941.epil.init, %i.jz, !dbg !98954 ; 2 uses
  %i.lw = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !98955, !noundef !3448
  %i.lx = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !98956, !noundef !3448
  %i.ly = icmp ult i64 %i.lu, %i.lx, !dbg !98957
  tail call void @llvm.assume(i1 %i.ly), !dbg !98958
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %i.lu, !dbg !98959
  %i.ma = load float, ptr %i.lz, align 4, !dbg !98960, !noundef !3448
  %i.mb = load ptr, ptr %.sroa.4.0..sroa_idx.i620, align 8, !dbg !98961, !noundef !3448
  %i.mc = load i64, ptr %.sroa.5.0..sroa_idx5.i621, align 8, !dbg !98962, !noundef !3448
  %i.md = icmp ult i64 %i.lv, %i.mc, !dbg !98963
  tail call void @llvm.assume(i1 %i.md), !dbg !98964
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %i.lv, !dbg !98965
  %i.mf = load float, ptr %i.me, align 4, !dbg !98966, !noundef !3448
  %i.mg = fadd float %i.ma, %i.mf, !dbg !98967
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %i.lu, !dbg !98968
  store float %i.mg, ptr %i.mh, align 4, !dbg !98969
  br label %.loopexit2599, !dbg !98944

.loopexit2599:                                    ; preds = %.lr.ph2942.epil.preheader, %.loopexit2599.loopexit.unr-lcssa, %bb.as
  %exitcond3401 = icmp eq i64 %.sroa.10.02943, %i.kn, !dbg !98944
  br i1 %exitcond3401, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE22offset_and_length_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit, label %bb.as, !dbg !98944

bb.as:                                            ; preds = %.lr.ph2947, %.loopexit2599
  %.sroa.067.02946 = phi i64 [ 0, %.lr.ph2947 ], [ %spec.select, %.loopexit2599 ] ; 2 uses
  %.sroa.01568.02945 = phi ptr [ %i.kk, %.lr.ph2947 ], [ %i.mi, %.loopexit2599 ] ; 3 uses
  %.sroa.10.02943 = phi i64 [ 0, %.lr.ph2947 ], [ %i.mk, %.loopexit2599 ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01568.02945) ]
  %i.mi = getelementptr inbounds nuw i8, ptr %.sroa.01568.02945, i64 8, !dbg !98970 ; 2 uses
  %.val1.i.i.i = load i64, ptr %.sroa.01568.02945, align 8, !dbg !98971, !alias.scope !96671, !noalias !96672, !noundef !3448 ; 4 uses
  %.val.i.i.i = load i64, ptr %i.mi, align 8, !dbg !98972, !alias.scope !96671, !noalias !96672, !noundef !3448
  %i.mj = sub i64 %.val.i.i.i, %.val1.i.i.i, !dbg !98973 ; 2 uses
  %i.mk = add nuw i64 %.sroa.10.02943, 1, !dbg !98974
  %i.ml = icmp eq i64 %i.mj, %i.kd, !dbg !98975
  %i.mm = icmp eq i64 %.sroa.067.02946, %.sroa.10.02943, !dbg !98976
  %i.mn = and i1 %i.mm, %i.ml, !dbg !98977
  %i.mo = load ptr, ptr %i.kl, align 16, !dbg !98978, !nonnull !3448, !noundef !3448 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 40, !dbg !98979
  %i.mq = load i64, ptr %i.mp, align 8, !dbg !98979, !noundef !3448
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mo, i64 32, !dbg !98980
  %i.ms = load ptr, ptr %i.mr, align 8, !dbg !98980, !noundef !3448
  %i.mt = load i64, ptr %i.km, align 8, !dbg !98981, !noundef !3448
  %i.mu = add i64 %i.mt, %.sroa.10.02943, !dbg !98981 ; 2 uses
  %i.mv = lshr i64 %i.mu, 3, !dbg !98982          ; 2 uses
  %i.mw = icmp ult i64 %i.mv, %i.mq, !dbg !98983
  tail call void @llvm.assume(i1 %i.mw), !dbg !98984
  %i.mx = getelementptr inbounds nuw i8, ptr %i.ms, i64 %i.mv, !dbg !98985
  %i.my = load i8, ptr %i.mx, align 1, !dbg !98986, !noundef !3448
  %i.mz = trunc i64 %i.mu to i8, !dbg !98987
  %i.na = and i8 %i.mz, 7, !dbg !98987
  %i.nb = shl nuw i8 1, %i.na, !dbg !98988
  %i.nc = and i8 %i.nb, %i.my, !dbg !98988
  %.not527 = icmp eq i8 %i.nc, 0, !dbg !98988
  %i.nd = or i1 %i.mn, %.not527, !dbg !98977
  %i.ne = zext i1 %i.nd to i64, !dbg !98977
  %spec.select = add i64 %.sroa.067.02946, %i.ne, !dbg !98977 ; 2 uses
  %.sroa.0.0.i630 = tail call noundef i64 @llvm.umin.i64(i64 %i.kd, i64 %i.mj), !dbg !98989 ; 5 uses
  %.not3206 = icmp eq i64 %.sroa.0.0.i630, 0, !dbg !98990
  br i1 %.not3206, label %.loopexit2599, label %.lr.ph2942.preheader, !dbg !98952

.lr.ph2942.preheader:                             ; preds = %bb.as
  %xtraiter4220 = and i64 %.sroa.0.0.i630, 1, !dbg !98952
  %i.nf = icmp eq i64 %.sroa.0.0.i630, 1, !dbg !98952
  br i1 %i.nf, label %.lr.ph2942.epil.preheader, label %.lr.ph2942.preheader.new, !dbg !98952

.lr.ph2942.preheader.new:                         ; preds = %.lr.ph2942.preheader
  %unroll_iter4223 = and i64 %.sroa.0.0.i630, -2, !dbg !98952
  br label %.lr.ph2942, !dbg !98952

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE22offset_and_length_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %.loopexit2616, %.loopexit2614, %.loopexit2612, %.loopexit2610, %.loopexit2608, %.loopexit2606, %.loopexit2604, %.loopexit2602, %.loopexit2600, %.loopexit2599, %bb.bg, %bb.bh, %bb.bc, %bb.bd, %bb.ay, %bb.az, %bb.ao, %bb.at, %bb.au, %bb.am
  %.sroa.067.1 = phi i64 [ %spec.select538, %.loopexit2608 ], [ %spec.select536, %.loopexit2600 ], [ %spec.select540, %.loopexit2612 ], [ %spec.select, %.loopexit2599 ], [ %spec.select539, %.loopexit2606 ], [ %spec.select535, %.loopexit2602 ], [ %spec.select541, %.loopexit2610 ], [ %spec.select537, %.loopexit2604 ], [ %spec.select543, %.loopexit2614 ], [ 0, %bb.am ], [ 0, %bb.au ], [ 0, %bb.at ], [ 0, %bb.ao ], [ 0, %bb.az ], [ 0, %bb.ay ], [ 0, %bb.bd ], [ 0, %bb.bc ], [ 0, %bb.bh ], [ 0, %bb.bg ], [ %spec.select542, %.loopexit2616 ], !dbg !98991
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl), !dbg !97147
  %i.ng = getelementptr i8, ptr %i.iw, i64 8, !dbg !97147
  %.val603 = load ptr, ptr %i.ng, align 8, !dbg !97147
  %i.nh = getelementptr i8, ptr %i.iw, i64 16, !dbg !97147
  %.val604 = load i64, ptr %i.nh, align 8, !dbg !97147, !noundef !3448
  %.val605 = load ptr, ptr %i.jx, align 8, !dbg !97147
  %.val606 = load i64, ptr %i.jt, align 8, !dbg !97147
  invoke fastcc void @_RNvNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB4_19ListNumericOpHelper12__finish_impl18check_mismatch_pos(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.dl, i64 noundef %.sroa.067.1, ptr %.val603, i64 %.val604, ptr %.val605, i64 %.val606)
          to label %bb.bk unwind label %bb.df, !dbg !97147

.lr.ph2942:                                       ; preds = %.lr.ph2942, %.lr.ph2942.preheader.new
  %.sroa.0350.02941 = phi i64 [ 0, %.lr.ph2942.preheader.new ], [ %i.ok, %.lr.ph2942 ] ; 4 uses
  %niter4224 = phi i64 [ 0, %.lr.ph2942.preheader.new ], [ %niter4224.next.1, %.lr.ph2942 ]
  %i.ni = add nuw i64 %.sroa.0350.02941, %.val1.i.i.i, !dbg !98953 ; 3 uses
  %i.nj = add nuw i64 %.sroa.0350.02941, %i.jz, !dbg !98954 ; 2 uses
  %i.nk = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !98955, !noundef !3448
  %i.nl = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !98956, !noundef !3448
  %i.nm = icmp ult i64 %i.ni, %i.nl, !dbg !98957
  tail call void @llvm.assume(i1 %i.nm), !dbg !98958
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.ni, !dbg !98959
  %i.no = load float, ptr %i.nn, align 4, !dbg !98960, !noundef !3448
  %i.np = load ptr, ptr %.sroa.4.0..sroa_idx.i620, align 8, !dbg !98961, !noundef !3448
  %i.nq = load i64, ptr %.sroa.5.0..sroa_idx5.i621, align 8, !dbg !98962, !noundef !3448
  %i.nr = icmp ult i64 %i.nj, %i.nq, !dbg !98963
  tail call void @llvm.assume(i1 %i.nr), !dbg !98964
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.np, i64 %i.nj, !dbg !98965
  %i.nt = load float, ptr %i.ns, align 4, !dbg !98966, !noundef !3448
  %i.nu = fadd float %i.no, %i.nt, !dbg !98967
  %i.nv = or disjoint i64 %.sroa.0350.02941, 1, !dbg !98992 ; 2 uses
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %i.ni, !dbg !98968
  store float %i.nu, ptr %i.nw, align 4, !dbg !98969
  %i.nx = add nuw i64 %i.nv, %.val1.i.i.i, !dbg !98953 ; 3 uses
  %i.ny = add nuw i64 %i.nv, %i.jz, !dbg !98954   ; 2 uses
  %i.nz = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !98955, !noundef !3448
  %i.oa = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !98956, !noundef !3448
  %i.ob = icmp ult i64 %i.nx, %i.oa, !dbg !98957
  tail call void @llvm.assume(i1 %i.ob), !dbg !98958
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %i.nx, !dbg !98959
  %i.od = load float, ptr %i.oc, align 4, !dbg !98960, !noundef !3448
  %i.oe = load ptr, ptr %.sroa.4.0..sroa_idx.i620, align 8, !dbg !98961, !noundef !3448
  %i.of = load i64, ptr %.sroa.5.0..sroa_idx5.i621, align 8, !dbg !98962, !noundef !3448
  %i.og = icmp ult i64 %i.ny, %i.of, !dbg !98963
  tail call void @llvm.assume(i1 %i.og), !dbg !98964
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.oe, i64 %i.ny, !dbg !98965
end_hunk_5
begin_hunk_6_@_RINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB3_19ListNumericOpHelper12__finish_implNtNtBb_9datatypes11Float64TypeEBb_:bb.a

bb.r:                                             ; preds = %bb.s, %.noexc625
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hj, i64 40, !dbg !105921
  %i.hp = load ptr, ptr %i.ho, align 8, !dbg !105921, !noalias !103602, !noundef !3448 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hj, i64 48, !dbg !105922
  %i.hr = load i64, ptr %i.hq, align 8, !dbg !105922, !noalias !103602, !noundef !3448 ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hj, i64 56, !dbg !105923
  %i.ht = load ptr, ptr %i.hs, align 8, !dbg !105923, !noalias !103602, !noundef !3448 ; 6 uses
  %.not.i616 = icmp eq ptr %i.ht, null, !dbg !105923 ; 2 uses
  br i1 %.not.i616, label %bb.w, label %bb.t, !dbg !105924

bb.s:                                             ; preds = %.noexc625
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hl, i64 24, !dbg !105925
  %i.hv = atomicrmw add ptr %i.hu, i64 1 monotonic, align 8, !dbg !105926, !noalias !103602 ; 0 uses
  br label %bb.r, !dbg !105927

bb.t:                                             ; preds = %bb.r
  %i.hw = load i64, ptr %i.ht, align 8, !dbg !105928, !range !3591, !noalias !103603, !noundef !3448
  %i.hx = icmp eq i64 %i.hw, 3, !dbg !105929
  br i1 %i.hx, label %bb.v, label %bb.u, !dbg !105929

bb.u:                                             ; preds = %bb.t
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ht, i64 24, !dbg !105930
  %i.hz = atomicrmw add ptr %i.hy, i64 1 monotonic, align 8, !dbg !105931, !noalias !103603 ; 0 uses
  br label %bb.v, !dbg !105932

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hj, i64 64, !dbg !105933
  %i.ib = load <2 x i64>, ptr %i.ia, align 8, !dbg !105933, !noalias !103603
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hj, i64 80, !dbg !105934
  %i.id = load atomic i64, ptr %i.ic monotonic, align 8, !dbg !105935, !noalias !103603
  br label %bb.w, !dbg !105936

bb.w:                                             ; preds = %bb.v, %bb.r
  %.sroa.5.sroa.5.0.i617 = phi i64 [ undef, %bb.r ], [ %i.id, %bb.v ], !dbg !105937
  %i.ie = phi <2 x i64> [ undef, %bb.r ], [ %i.ib, %bb.v ], !dbg !105937 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.fa, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 32, i1 false), !dbg !105938
  %i.if = getelementptr inbounds nuw i8, ptr %i.fa, i64 32, !dbg !105938 ; 7 uses
  store ptr %i.hl, ptr %i.if, align 8, !dbg !105938, !alias.scope !103602
  %.sroa.4.0..sroa_idx.i620 = getelementptr inbounds nuw i8, ptr %i.fa, i64 40, !dbg !105938 ; 81 uses
  store ptr %i.hp, ptr %.sroa.4.0..sroa_idx.i620, align 8, !dbg !105938, !alias.scope !103602
  %.sroa.5.0..sroa_idx5.i621 = getelementptr inbounds nuw i8, ptr %i.fa, i64 48, !dbg !105938 ; 81 uses
  store i64 %i.hr, ptr %.sroa.5.0..sroa_idx5.i621, align 8, !dbg !105938, !alias.scope !103602
  %i.ig = getelementptr inbounds nuw i8, ptr %i.fa, i64 56, !dbg !105938 ; 21 uses
  store ptr %i.ht, ptr %i.ig, align 8, !dbg !105938, !alias.scope !103602
  %.sroa.5.0..sroa_idx.i622 = getelementptr inbounds nuw i8, ptr %i.fa, i64 64, !dbg !105938
  store <2 x i64> %i.ie, ptr %.sroa.5.0..sroa_idx.i622, align 8, !dbg !105938, !alias.scope !103602
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i624 = getelementptr inbounds nuw i8, ptr %i.fa, i64 80, !dbg !105938
  store i64 %.sroa.5.sroa.5.0.i617, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i624, align 8, !dbg !105938, !alias.scope !103602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !105939, !noalias !103602
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 313, !dbg !105940
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 314, !dbg !105941 ; 3 uses
  %i.ij = load i8, ptr %i.ih, align 1, !dbg !105942, !range !3609, !noundef !3448 ; 2 uses
  %i.ik = icmp eq i8 %i.ij, 1, !dbg !105943
  br i1 %i.ik, label %bb.x, label %bb.y, !dbg !105943

bb.x:                                             ; preds = %bb.w
  %i.il = load i8, ptr %i.ii, align 2, !dbg !105942, !range !3609, !noundef !3448 ; 3 uses
  %i.im = icmp eq i8 %i.il, 1, !dbg !105943
  br i1 %i.im, label %.thread1885.thread, label %bb.aa, !dbg !105943

bb.y:                                             ; preds = %bb.w
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 288, !dbg !105944
  %i.io = load ptr, ptr %i.in, align 16, !dbg !105944, !noundef !3448
  %.not467 = icmp eq ptr %i.io, null, !dbg !105944
  br i1 %.not467, label %bb.z, label %.invoke3730, !dbg !105945, !prof !3552

bb.z:                                             ; preds = %bb.y
  switch i8 %i.ij, label %default.unreachable3559 [
    i8 0, label %bb.ac
    i8 1, label %..thread1885_crit_edge
    i8 2, label %.invoke3730
  ], !dbg !105946, !prof !3838

..thread1885_crit_edge:                           ; preds = %bb.z
  %.pr.pre = load i8, ptr %i.ii, align 2, !dbg !105947
  br label %.thread1885, !dbg !105946

bb.aa:                                            ; preds = %bb.x
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 288, !dbg !105944
  %i.iq = load ptr, ptr %i.ip, align 16, !dbg !105944, !noundef !3448 ; 2 uses
  %.not468 = icmp eq ptr %i.iq, null, !dbg !105944
  %i.ir = icmp eq i8 %i.il, 2
  %or.cond = or i1 %i.ir, %.not468, !dbg !105945
  br i1 %or.cond, label %.thread1885, label %.invoke3730, !dbg !105945, !prof !3839

.critedge560:                                     ; preds = %.critedge566.thread2539, %.critedge566, %.critedge566.thread, %bb.pr, %bb.ps, %.body.i1426, %.critedge558.thread2533, %.critedge556.thread2530, %.critedge556, %.critedge556.thread, %bb.gk, %bb.gl, %.body.i906, %.critedge.thread2527, %.critedge, %.critedge.thread, %bb.cw, %bb.cx, %.body.i, %bb.mf, %bb.mg, %bb.hn, %bb.gp, %bb.fh, %bb.bm, %bb.ab, %.thread2217, %bb.pt, %bb.it, %.critedge558.thread, %.critedge558, %.loopexit.split-lp, %bb.df
  %.sroa.0223.2 = phi i1 [ true, %bb.hn ], [ true, %bb.df ], [ true, %bb.mf ], [ true, %.loopexit.split-lp ], [ true, %.critedge.thread2527 ], [ true, %bb.it ], [ true, %bb.gp ], [ false, %.critedge558.thread ], [ false, %.critedge558 ], [ true, %bb.pt ], [ false, %.critedge558.thread2533 ], [ true, %.thread2217 ], [ %.sroa.0223.3, %bb.ab ], [ true, %bb.bm ], [ true, %bb.fh ], [ true, %bb.mg ], [ true, %bb.cw ], [ true, %.body.i ], [ true, %bb.cx ], [ true, %.critedge.thread ], [ true, %.critedge ], [ true, %bb.gk ], [ true, %.body.i906 ], [ true, %bb.gl ], [ true, %.critedge556.thread ], [ true, %.critedge556 ], [ true, %.critedge556.thread2530 ], [ true, %bb.pr ], [ true, %.body.i1426 ], [ true, %bb.ps ], [ true, %.critedge566.thread ], [ true, %.critedge566 ], [ true, %.critedge566.thread2539 ], !dbg !105948
  %.pn530 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp2208, %bb.hn ], [ %i.aqp, %bb.df ], [ %i.dav, %bb.mf ], [ %lpad.phi, %.loopexit.split-lp ], [ %lpad.thr_comm.split-lp2040, %.critedge.thread2527 ], [ %.pn4872202, %bb.it ], [ %i.cgc, %bb.gp ], [ %.pn4852187, %.critedge558.thread ], [ %eh.lpad-body5742193, %.critedge558 ], [ %i.ebz, %bb.pt ], [ %i.cgp, %.critedge558.thread2533 ], [ %.pn475.pn, %.thread2217 ], [ %i.is, %bb.ab ], [ %i.anh, %bb.bm ], [ %i.ccm, %bb.fh ], [ %i.dav, %bb.mg ], [ %i.aoz, %bb.cw ], [ %eh.lpad-body.i, %.body.i ], [ %i.aoz, %bb.cx ], [ %.pn5242032, %.critedge.thread ], [ %eh.lpad-body5802038, %.critedge ], [ %i.cdv, %bb.gk ], [ %eh.lpad-body.i907, %.body.i906 ], [ %i.cdv, %bb.gl ], [ %.pn5032171, %.critedge556.thread ], [ %eh.lpad-body5772177, %.critedge556 ], [ %lpad.thr_comm.split-lp2179, %.critedge556.thread2530 ], [ %i.ebw, %bb.pr ], [ %eh.lpad-body.i1427, %.body.i1426 ], [ %i.ebw, %bb.ps ], [ %.pn4802517, %.critedge566.thread ], [ %eh.lpad-body2523, %.critedge566 ], [ %i.ebh, %.critedge566.thread2539 ] ; 2 uses
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.fa) #49
          to label %bb.m unwind label %bb.cu, !dbg !105949

bb.ab:                                            ; preds = %.invoke3730, %.invoke3728, %.invoke3726, %.invoke, %bb.fi, %bb.bn, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydENtB7_5Array17is_null_uncheckedCs1LHh8CLbVkQ_11polars_core.exit.thread, %bb.iu, %bb.di, %bb.ag
  %.sroa.0223.3 = phi i1 [ true, %.invoke3730 ], [ true, %.invoke3726 ], [ true, %bb.bn ], [ true, %bb.ag ], [ true, %bb.iu ], [ false, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydENtB7_5Array17is_null_uncheckedCs1LHh8CLbVkQ_11polars_core.exit.thread ], [ true, %.invoke ], [ true, %bb.fi ], [ true, %bb.di ], [ true, %.invoke3728 ], !dbg !105948
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %.critedge560

default.unreachable3559:                          ; preds = %bb.ml, %bb.je, %bb.dl, %bb.al, %bb.ac, %bb.z
  unreachable

default.unreachable:                              ; preds = %.thread1885
  unreachable

bb.ac:                                            ; preds = %bb.z
  %i.it = load i8, ptr %i.ii, align 2, !dbg !105947, !range !3609, !noundef !3448
  switch i8 %i.it, label %default.unreachable3559 [
    i8 0, label %.invoke3730
    i8 1, label %bb.ad
    i8 2, label %bb.ae
  ], !dbg !105946, !prof !3765

.thread1885:                                      ; preds = %..thread1885_crit_edge, %bb.aa
  %i.iu = phi ptr [ null, %..thread1885_crit_edge ], [ %i.iq, %bb.aa ] ; 6 uses
  %.pr = phi i8 [ %.pr.pre, %..thread1885_crit_edge ], [ %i.il, %bb.aa ], !dbg !105947
  switch i8 %.pr, label %default.unreachable [
    i8 0, label %.invoke3730
    i8 1, label %.thread1885.thread
    i8 2, label %bb.gm
  ], !dbg !105946, !prof !3766

bb.ad:                                            ; preds = %bb.ac
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !105950
  %i.iw = load ptr, ptr %i.iv, align 8, !dbg !105950, !nonnull !3448, !noundef !3448 ; 19 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !105951
  %i.iy = load i64, ptr %i.ix, align 16, !dbg !105951, !noundef !3448
  %.not509 = icmp eq i64 %i.iy, 0, !dbg !105952
  br i1 %.not509, label %.invoke3728, label %bb.af, !dbg !105952

bb.ae:                                            ; preds = %bb.ac
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !105953
  %i.ja = load ptr, ptr %i.iz, align 8, !dbg !105953, !nonnull !3448, !noundef !3448 ; 8 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !105954
  %i.jc = load i64, ptr %i.jb, align 16, !dbg !105954, !noundef !3448
  %.not489 = icmp eq i64 %i.jc, 0, !dbg !105955
  br i1 %.not489, label %.invoke3728, label %bb.dg, !dbg !105955

.invoke3730:                                      ; preds = %bb.y, %bb.aa, %bb.z, %bb.ac, %.thread1885
  %i.jd = phi ptr [ @41, %bb.z ], [ @41, %.thread1885 ], [ @41, %bb.ac ], [ @27, %bb.aa ], [ @27, %bb.y ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jd) #48
          to label %.cont3731 unwind label %bb.ab, !dbg !104254

.cont3731:                                        ; preds = %.invoke3730
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !105956
  %i.jf = load ptr, ptr %i.je, align 8, !dbg !105956, !nonnull !3448, !noundef !3448 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !105957
  %i.jh = load i64, ptr %i.jg, align 16, !dbg !105957, !noundef !3448
  %.not510 = icmp eq i64 %i.jh, 0, !dbg !105958
  br i1 %.not510, label %.invoke3728, label %bb.ag, !dbg !105958

bb.ag:                                            ; preds = %bb.af
  %i.ji = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !105959, !noundef !3448 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn), !dbg !105960
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !105961
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.an, i64 noundef %i.ji, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %bb.ah unwind label %bb.ab, !dbg !105961

bb.ah:                                            ; preds = %bb.ag
  %i.jj = load i64, ptr %i.an, align 8, !dbg !105961, !range !3450, !noundef !3448
  %i.jk = trunc nuw i64 %i.jj to i1, !dbg !105962
  %i.jl = getelementptr inbounds nuw i8, ptr %i.an, i64 8, !dbg !105963
  %i.jm = load i64, ptr %i.jl, align 8, !dbg !105963, !range !3612, !noundef !3448 ; 3 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.an, i64 16, !dbg !105963 ; 2 uses
  br i1 %i.jk, label %bb.ai, label %bb.aj, !dbg !105962, !prof !3502

bb.ai:                                            ; preds = %bb.ah
  %i.jo = load i64, ptr %i.jn, align 8, !dbg !105964
  br label %.invoke, !dbg !105965

bb.aj:                                            ; preds = %bb.ah
  %i.jp = load ptr, ptr %i.jn, align 8, !dbg !105966, !nonnull !3448, !noundef !3448 ; 31 uses
  %i.jq = icmp ule i64 %i.ji, %i.jm, !dbg !105967
  tail call void @llvm.assume(i1 %i.jq), !dbg !105968
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !105969
  store i64 %i.jm, ptr %i.dn, align 8, !dbg !105970
  %i.jr = getelementptr inbounds nuw i8, ptr %i.dn, i64 8, !dbg !105970
  store ptr %i.jp, ptr %i.jr, align 8, !dbg !105970
  %i.js = getelementptr inbounds nuw i8, ptr %i.dn, i64 16, !dbg !105970 ; 2 uses
  store i64 0, ptr %i.js, align 8, !dbg !105970
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jf, i64 16, !dbg !105971 ; 2 uses
  %i.ju = load i64, ptr %i.jt, align 8, !dbg !105971, !noundef !3448 ; 3 uses
  %i.jv = add i64 %i.ju, -1, !dbg !105972         ; 2 uses
  store i64 %i.jv, ptr %i.dm, align 8, !dbg !105972
  %i.jw = icmp eq i64 %i.jv, 1, !dbg !105973
  br i1 %i.jw, label %bb.al, label %bb.ak, !dbg !105973, !prof !3552

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @5, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #48
          to label %bb.l unwind label %bb.df, !dbg !105974

bb.al:                                            ; preds = %bb.aj
  %i.jx = getelementptr i8, ptr %i.jf, i64 8, !dbg !105975 ; 2 uses
  %i.jy = load ptr, ptr %i.jx, align 8, !dbg !105975, !nonnull !3448, !noundef !3448 ; 2 uses
  %i.jz = load i64, ptr %i.jy, align 8, !dbg !105976, !noundef !3448 ; 32 uses
  %.not.i627 = icmp ne i64 %i.ju, 0, !dbg !105977
  tail call void @llvm.assume(i1 %.not.i627), !dbg !105977
  %i.ka = getelementptr [8 x i8], ptr %i.jy, i64 %i.ju, !dbg !105978
  %i.kb = getelementptr i8, ptr %i.ka, i64 -8, !dbg !105978 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.kb) ]
  %i.kc = load i64, ptr %i.kb, align 8, !dbg !105979, !noundef !3448
  %i.kd = sub i64 %i.kc, %i.jz, !dbg !105980      ; 21 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %1, i64 315, !dbg !105981
  %i.kf = load i8, ptr %i.ke, align 1, !dbg !105981, !range !3608, !noundef !3448
  switch i8 %i.kf, label %default.unreachable3559 [
    i8 0, label %bb.am
    i8 1, label %bb.an
    i8 2, label %bb.ao
    i8 3, label %bb.ap
    i8 4, label %bb.aq
    i8 5, label %bb.ar
  ], !dbg !105982

bb.am:                                            ; preds = %bb.al
  %i.kg = getelementptr inbounds nuw i8, ptr %i.iw, i64 16, !dbg !105983
  %i.kh = load i64, ptr %i.kg, align 8, !dbg !105983, !noundef !3448 ; 2 uses
  %i.ki = icmp ult i64 %i.kh, 2, !dbg !105984
  br i1 %i.ki, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE22offset_and_length_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit, label %.lr.ph2947, !dbg !105984

.lr.ph2947:                                       ; preds = %bb.am
  %i.kj = getelementptr inbounds nuw i8, ptr %i.iw, i64 8, !dbg !105985
  %i.kk = load ptr, ptr %i.kj, align 8, !dbg !105985, !noundef !3448
  %i.kl = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.kn = add i64 %i.kh, -2
  br label %bb.as, !dbg !105984

bb.an:                                            ; preds = %bb.al
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !105986
  %i.kp = load i8, ptr %i.ko, align 8, !dbg !105986, !range !3607, !noundef !3448
  %i.kq = trunc nuw i8 %i.kp to i1, !dbg !105986
  %i.kr = getelementptr inbounds nuw i8, ptr %i.iw, i64 16, !dbg !105987
  %i.ks = load i64, ptr %i.kr, align 8, !dbg !105987, !noundef !3448 ; 3 uses
  %i.kt = icmp ult i64 %i.ks, 2, !dbg !105988     ; 2 uses
  br i1 %i.kq, label %bb.au, label %bb.at, !dbg !105986

bb.ao:                                            ; preds = %bb.al
  %i.ku = getelementptr inbounds nuw i8, ptr %i.iw, i64 16, !dbg !105989
  %i.kv = load i64, ptr %i.ku, align 8, !dbg !105989, !noundef !3448 ; 2 uses
  %i.kw = icmp ult i64 %i.kv, 2, !dbg !105990
  br i1 %i.kw, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE22offset_and_length_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit, label %.lr.ph2923, !dbg !105990

.lr.ph2923:                                       ; preds = %bb.ao
  %i.kx = getelementptr inbounds nuw i8, ptr %i.iw, i64 8, !dbg !105991
  %i.ky = load ptr, ptr %i.kx, align 8, !dbg !105991, !noundef !3448
  %i.kz = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.la = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.lb = add i64 %i.kv, -2
  br label %bb.ax, !dbg !105990

bb.ap:                                            ; preds = %bb.al
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !105986
  %i.ld = load i8, ptr %i.lc, align 8, !dbg !105986, !range !3607, !noundef !3448
  %i.le = trunc nuw i8 %i.ld to i1, !dbg !105986
  %i.lf = getelementptr inbounds nuw i8, ptr %i.iw, i64 16, !dbg !105987
  %i.lg = load i64, ptr %i.lf, align 8, !dbg !105987, !noundef !3448 ; 3 uses
  %i.lh = icmp ult i64 %i.lg, 2, !dbg !105988     ; 2 uses
  br i1 %i.le, label %bb.az, label %bb.ay, !dbg !105986

bb.aq:                                            ; preds = %bb.al
  %i.li = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !105986
  %i.lj = load i8, ptr %i.li, align 8, !dbg !105986, !range !3607, !noundef !3448
  %i.lk = trunc nuw i8 %i.lj to i1, !dbg !105986
  %i.ll = getelementptr inbounds nuw i8, ptr %i.iw, i64 16, !dbg !105987
  %i.lm = load i64, ptr %i.ll, align 8, !dbg !105987, !noundef !3448 ; 3 uses
  %i.ln = icmp ult i64 %i.lm, 2, !dbg !105988     ; 2 uses
  br i1 %i.lk, label %bb.bd, label %bb.bc, !dbg !105986

bb.ar:                                            ; preds = %bb.al
  %i.lo = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !105986
  %i.lp = load i8, ptr %i.lo, align 8, !dbg !105986, !range !3607, !noundef !3448
  %i.lq = trunc nuw i8 %i.lp to i1, !dbg !105986
  %i.lr = getelementptr inbounds nuw i8, ptr %i.iw, i64 16, !dbg !105987
  %i.ls = load i64, ptr %i.lr, align 8, !dbg !105987, !noundef !3448 ; 3 uses
  %i.lt = icmp ult i64 %i.ls, 2, !dbg !105988     ; 2 uses
  br i1 %i.lq, label %bb.bh, label %bb.bg, !dbg !105986

.loopexit2599.loopexit.unr-lcssa:                 ; preds = %.lr.ph2942
  %lcmp.mod4221.not = icmp eq i64 %xtraiter4220, 0, !dbg !105992
  br i1 %lcmp.mod4221.not, label %.loopexit2599, label %.lr.ph2942.epil.preheader, !dbg !105992

.lr.ph2942.epil.preheader:                        ; preds = %.loopexit2599.loopexit.unr-lcssa, %.lr.ph2942.preheader
  %.sroa.0350.02941.epil.init = phi i64 [ 0, %.lr.ph2942.preheader ], [ %i.ok, %.loopexit2599.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod4222 = trunc i64 %.sroa.0.0.i630 to i1, !dbg !105992
  tail call void @llvm.assume(i1 %lcmp.mod4222), !dbg !105992
  %i.lu = add nuw i64 %.sroa.0350.02941.epil.init, %.val1.i.i.i, !dbg !105993 ; 3 uses
  %i.lv = add nuw i64 %.sroa.0350.02941.epil.init, %i.jz, !dbg !105994 ; 2 uses
  %i.lw = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !105995, !noundef !3448
  %i.lx = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !105996, !noundef !3448
  %i.ly = icmp ult i64 %i.lu, %i.lx, !dbg !105997
  tail call void @llvm.assume(i1 %i.ly), !dbg !105998
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %i.lu, !dbg !105999
  %i.ma = load double, ptr %i.lz, align 8, !dbg !106000, !noundef !3448
  %i.mb = load ptr, ptr %.sroa.4.0..sroa_idx.i620, align 8, !dbg !106001, !noundef !3448
  %i.mc = load i64, ptr %.sroa.5.0..sroa_idx5.i621, align 8, !dbg !106002, !noundef !3448
  %i.md = icmp ult i64 %i.lv, %i.mc, !dbg !106003
  tail call void @llvm.assume(i1 %i.md), !dbg !106004
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.mb, i64 %i.lv, !dbg !106005
  %i.mf = load double, ptr %i.me, align 8, !dbg !106006, !noundef !3448
  %i.mg = fadd double %i.ma, %i.mf, !dbg !106007
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %i.lu, !dbg !106008
  store double %i.mg, ptr %i.mh, align 8, !dbg !106009
  br label %.loopexit2599, !dbg !105984

.loopexit2599:                                    ; preds = %.lr.ph2942.epil.preheader, %.loopexit2599.loopexit.unr-lcssa, %bb.as
  %exitcond3401 = icmp eq i64 %.sroa.10.02943, %i.kn, !dbg !105984
  br i1 %exitcond3401, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE22offset_and_length_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit, label %bb.as, !dbg !105984

bb.as:                                            ; preds = %.lr.ph2947, %.loopexit2599
  %.sroa.067.02946 = phi i64 [ 0, %.lr.ph2947 ], [ %spec.select, %.loopexit2599 ] ; 2 uses
  %.sroa.01568.02945 = phi ptr [ %i.kk, %.lr.ph2947 ], [ %i.mi, %.loopexit2599 ] ; 3 uses
  %.sroa.10.02943 = phi i64 [ 0, %.lr.ph2947 ], [ %i.mk, %.loopexit2599 ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01568.02945) ]
  %i.mi = getelementptr inbounds nuw i8, ptr %.sroa.01568.02945, i64 8, !dbg !106010 ; 2 uses
  %.val1.i.i.i = load i64, ptr %.sroa.01568.02945, align 8, !dbg !106011, !alias.scope !103711, !noalias !103712, !noundef !3448 ; 4 uses
  %.val.i.i.i = load i64, ptr %i.mi, align 8, !dbg !106012, !alias.scope !103711, !noalias !103712, !noundef !3448
  %i.mj = sub i64 %.val.i.i.i, %.val1.i.i.i, !dbg !106013 ; 2 uses
  %i.mk = add nuw i64 %.sroa.10.02943, 1, !dbg !106014
  %i.ml = icmp eq i64 %i.mj, %i.kd, !dbg !106015
  %i.mm = icmp eq i64 %.sroa.067.02946, %.sroa.10.02943, !dbg !106016
  %i.mn = and i1 %i.mm, %i.ml, !dbg !106017
  %i.mo = load ptr, ptr %i.kl, align 16, !dbg !106018, !nonnull !3448, !noundef !3448 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 40, !dbg !106019
  %i.mq = load i64, ptr %i.mp, align 8, !dbg !106019, !noundef !3448
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mo, i64 32, !dbg !106020
  %i.ms = load ptr, ptr %i.mr, align 8, !dbg !106020, !noundef !3448
  %i.mt = load i64, ptr %i.km, align 8, !dbg !106021, !noundef !3448
  %i.mu = add i64 %i.mt, %.sroa.10.02943, !dbg !106021 ; 2 uses
  %i.mv = lshr i64 %i.mu, 3, !dbg !106022         ; 2 uses
  %i.mw = icmp ult i64 %i.mv, %i.mq, !dbg !106023
  tail call void @llvm.assume(i1 %i.mw), !dbg !106024
  %i.mx = getelementptr inbounds nuw i8, ptr %i.ms, i64 %i.mv, !dbg !106025
  %i.my = load i8, ptr %i.mx, align 1, !dbg !106026, !noundef !3448
  %i.mz = trunc i64 %i.mu to i8, !dbg !106027
  %i.na = and i8 %i.mz, 7, !dbg !106027
  %i.nb = shl nuw i8 1, %i.na, !dbg !106028
  %i.nc = and i8 %i.nb, %i.my, !dbg !106028
  %.not527 = icmp eq i8 %i.nc, 0, !dbg !106028
  %i.nd = or i1 %i.mn, %.not527, !dbg !106017
  %i.ne = zext i1 %i.nd to i64, !dbg !106017
  %spec.select = add i64 %.sroa.067.02946, %i.ne, !dbg !106017 ; 2 uses
  %.sroa.0.0.i630 = tail call noundef i64 @llvm.umin.i64(i64 %i.kd, i64 %i.mj), !dbg !106029 ; 5 uses
  %.not3206 = icmp eq i64 %.sroa.0.0.i630, 0, !dbg !106030
  br i1 %.not3206, label %.loopexit2599, label %.lr.ph2942.preheader, !dbg !105992

.lr.ph2942.preheader:                             ; preds = %bb.as
  %xtraiter4220 = and i64 %.sroa.0.0.i630, 1, !dbg !105992
  %i.nf = icmp eq i64 %.sroa.0.0.i630, 1, !dbg !105992
  br i1 %i.nf, label %.lr.ph2942.epil.preheader, label %.lr.ph2942.preheader.new, !dbg !105992

.lr.ph2942.preheader.new:                         ; preds = %.lr.ph2942.preheader
  %unroll_iter4223 = and i64 %.sroa.0.0.i630, -2, !dbg !105992
  br label %.lr.ph2942, !dbg !105992

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE22offset_and_length_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %.loopexit2616, %.loopexit2614, %.loopexit2612, %.loopexit2610, %.loopexit2608, %.loopexit2606, %.loopexit2604, %.loopexit2602, %.loopexit2600, %.loopexit2599, %bb.bg, %bb.bh, %bb.bc, %bb.bd, %bb.ay, %bb.az, %bb.ao, %bb.at, %bb.au, %bb.am
  %.sroa.067.1 = phi i64 [ %spec.select538, %.loopexit2608 ], [ %spec.select536, %.loopexit2600 ], [ %spec.select540, %.loopexit2612 ], [ %spec.select, %.loopexit2599 ], [ %spec.select539, %.loopexit2606 ], [ %spec.select535, %.loopexit2602 ], [ %spec.select541, %.loopexit2610 ], [ %spec.select537, %.loopexit2604 ], [ %spec.select543, %.loopexit2614 ], [ 0, %bb.am ], [ 0, %bb.au ], [ 0, %bb.at ], [ 0, %bb.ao ], [ 0, %bb.az ], [ 0, %bb.ay ], [ 0, %bb.bd ], [ 0, %bb.bc ], [ 0, %bb.bh ], [ 0, %bb.bg ], [ %spec.select542, %.loopexit2616 ], !dbg !106031
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl), !dbg !104187
  %i.ng = getelementptr i8, ptr %i.iw, i64 8, !dbg !104187
  %.val603 = load ptr, ptr %i.ng, align 8, !dbg !104187
  %i.nh = getelementptr i8, ptr %i.iw, i64 16, !dbg !104187
  %.val604 = load i64, ptr %i.nh, align 8, !dbg !104187, !noundef !3448
  %.val605 = load ptr, ptr %i.jx, align 8, !dbg !104187
  %.val606 = load i64, ptr %i.jt, align 8, !dbg !104187
  invoke fastcc void @_RNvNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB4_19ListNumericOpHelper12__finish_impl18check_mismatch_pos(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.dl, i64 noundef %.sroa.067.1, ptr %.val603, i64 %.val604, ptr %.val605, i64 %.val606)
          to label %bb.bk unwind label %bb.df, !dbg !104187

.lr.ph2942:                                       ; preds = %.lr.ph2942, %.lr.ph2942.preheader.new
  %.sroa.0350.02941 = phi i64 [ 0, %.lr.ph2942.preheader.new ], [ %i.ok, %.lr.ph2942 ] ; 4 uses
  %niter4224 = phi i64 [ 0, %.lr.ph2942.preheader.new ], [ %niter4224.next.1, %.lr.ph2942 ]
  %i.ni = add nuw i64 %.sroa.0350.02941, %.val1.i.i.i, !dbg !105993 ; 3 uses
  %i.nj = add nuw i64 %.sroa.0350.02941, %i.jz, !dbg !105994 ; 2 uses
  %i.nk = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !105995, !noundef !3448
  %i.nl = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !105996, !noundef !3448
  %i.nm = icmp ult i64 %i.ni, %i.nl, !dbg !105997
  tail call void @llvm.assume(i1 %i.nm), !dbg !105998
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.nk, i64 %i.ni, !dbg !105999
  %i.no = load double, ptr %i.nn, align 8, !dbg !106000, !noundef !3448
  %i.np = load ptr, ptr %.sroa.4.0..sroa_idx.i620, align 8, !dbg !106001, !noundef !3448
  %i.nq = load i64, ptr %.sroa.5.0..sroa_idx5.i621, align 8, !dbg !106002, !noundef !3448
  %i.nr = icmp ult i64 %i.nj, %i.nq, !dbg !106003
  tail call void @llvm.assume(i1 %i.nr), !dbg !106004
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %i.np, i64 %i.nj, !dbg !106005
  %i.nt = load double, ptr %i.ns, align 8, !dbg !106006, !noundef !3448
  %i.nu = fadd double %i.no, %i.nt, !dbg !106007
  %i.nv = or disjoint i64 %.sroa.0350.02941, 1, !dbg !106032 ; 2 uses
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %i.ni, !dbg !106008
  store double %i.nu, ptr %i.nw, align 8, !dbg !106009
  %i.nx = add nuw i64 %i.nv, %.val1.i.i.i, !dbg !105993 ; 3 uses
  %i.ny = add nuw i64 %i.nv, %i.jz, !dbg !105994  ; 2 uses
  %i.nz = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !105995, !noundef !3448
  %i.oa = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !105996, !noundef !3448
  %i.ob = icmp ult i64 %i.nx, %i.oa, !dbg !105997
  tail call void @llvm.assume(i1 %i.ob), !dbg !105998
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %i.nz, i64 %i.nx, !dbg !105999
  %i.od = load double, ptr %i.oc, align 8, !dbg !106000, !noundef !3448
  %i.oe = load ptr, ptr %.sroa.4.0..sroa_idx.i620, align 8, !dbg !106001, !noundef !3448
  %i.of = load i64, ptr %.sroa.5.0..sroa_idx5.i621, align 8, !dbg !106002, !noundef !3448
  %i.og = icmp ult i64 %i.ny, %i.of, !dbg !106003
  tail call void @llvm.assume(i1 %i.og), !dbg !106004
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %i.oe, i64 %i.ny, !dbg !106005
end_hunk_6
begin_hunk_7_@_RINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB3_19ListNumericOpHelper12__finish_implNtNtBb_9datatypes11UInt128TypeEBb_:bb.a
bb.s:                                             ; preds = %.noexc640
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hl, i64 24, !dbg !112921
  %i.hv = atomicrmw add ptr %i.hu, i64 1 monotonic, align 8, !dbg !112922, !noalias !110608 ; 0 uses
  br label %bb.r, !dbg !112923

bb.t:                                             ; preds = %bb.r
  %i.hw = load i64, ptr %i.ht, align 8, !dbg !112924, !range !3591, !noalias !110609, !noundef !3448
  %i.hx = icmp eq i64 %i.hw, 3, !dbg !112925
  br i1 %i.hx, label %bb.v, label %bb.u, !dbg !112925

bb.u:                                             ; preds = %bb.t
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ht, i64 24, !dbg !112926
  %i.hz = atomicrmw add ptr %i.hy, i64 1 monotonic, align 8, !dbg !112927, !noalias !110609 ; 0 uses
  br label %bb.v, !dbg !112928

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hj, i64 64, !dbg !112929
  %i.ib = load <2 x i64>, ptr %i.ia, align 8, !dbg !112929, !noalias !110609
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hj, i64 80, !dbg !112930
  %i.id = load atomic i64, ptr %i.ic monotonic, align 8, !dbg !112931, !noalias !110609
  br label %bb.w, !dbg !112932

bb.w:                                             ; preds = %bb.v, %bb.r
  %.sroa.5.sroa.5.0.i632 = phi i64 [ undef, %bb.r ], [ %i.id, %bb.v ], !dbg !112933
  %i.ie = phi <2 x i64> [ undef, %bb.r ], [ %i.ib, %bb.v ], !dbg !112933
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.fa, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 32, i1 false), !dbg !112934
  %i.if = getelementptr inbounds nuw i8, ptr %i.fa, i64 32, !dbg !112934 ; 7 uses
  store ptr %i.hl, ptr %i.if, align 8, !dbg !112934, !alias.scope !110608
  %.sroa.4.0..sroa_idx.i635 = getelementptr inbounds nuw i8, ptr %i.fa, i64 40, !dbg !112934 ; 54 uses
  store ptr %i.hp, ptr %.sroa.4.0..sroa_idx.i635, align 8, !dbg !112934, !alias.scope !110608
  %.sroa.5.0..sroa_idx5.i636 = getelementptr inbounds nuw i8, ptr %i.fa, i64 48, !dbg !112934 ; 54 uses
  store i64 %i.hr, ptr %.sroa.5.0..sroa_idx5.i636, align 8, !dbg !112934, !alias.scope !110608
  %i.ig = getelementptr inbounds nuw i8, ptr %i.fa, i64 56, !dbg !112934 ; 22 uses
  store ptr %i.ht, ptr %i.ig, align 8, !dbg !112934, !alias.scope !110608
  %.sroa.5.0..sroa_idx.i637 = getelementptr inbounds nuw i8, ptr %i.fa, i64 64, !dbg !112934 ; 2 uses
  store <2 x i64> %i.ie, ptr %.sroa.5.0..sroa_idx.i637, align 8, !dbg !112934, !alias.scope !110608
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i639 = getelementptr inbounds nuw i8, ptr %i.fa, i64 80, !dbg !112934
  store i64 %.sroa.5.sroa.5.0.i632, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i639, align 8, !dbg !112934, !alias.scope !110608
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !112935, !noalias !110608
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 313, !dbg !112936 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 314, !dbg !112937 ; 3 uses
  %i.ij = load i8, ptr %i.ih, align 1, !dbg !112938, !range !3609, !noundef !3448
  %i.ik = icmp eq i8 %i.ij, 1, !dbg !112939
  br i1 %i.ik, label %bb.x, label %bb.y, !dbg !112939

bb.x:                                             ; preds = %bb.w
  %i.il = load i8, ptr %i.ii, align 2, !dbg !112938, !range !3609, !noundef !3448 ; 2 uses
  %i.im = icmp eq i8 %i.il, 1, !dbg !112939
  br i1 %i.im, label %.thread1909, label %bb.aa, !dbg !112939

bb.y:                                             ; preds = %bb.w
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 288, !dbg !112940
  %i.io = load ptr, ptr %i.in, align 16, !dbg !112940, !noundef !3448
  %.not467 = icmp eq ptr %i.io, null, !dbg !112940
  br i1 %.not467, label %bb.ac, label %.invoke3845, !dbg !112941, !prof !3552

bb.z:                                             ; preds = %bb.ac
  %.pr.pre = load i8, ptr %i.ih, align 1, !dbg !112942
  switch i8 %.pr.pre, label %default.unreachable [
    i8 0, label %bb.ae
    i8 1, label %.thread
    i8 2, label %.invoke3845
  ], !dbg !112943, !prof !3764

bb.aa:                                            ; preds = %bb.x
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 288, !dbg !112940
  %i.iq = load ptr, ptr %i.ip, align 16, !dbg !112940, !noundef !3448
  %.not468 = icmp eq ptr %i.iq, null, !dbg !112940
  br i1 %.not468, label %bb.ac, label %bb.ab, !dbg !112941

bb.ab:                                            ; preds = %bb.aa
  %i.ir = icmp eq i8 %i.il, 2, !dbg !112939
  br i1 %i.ir, label %.thread, label %.invoke3845, !dbg !112939, !prof !3552

bb.ac:                                            ; preds = %bb.aa, %bb.y
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 315, !dbg !112944
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !112945
  %i.iu = load i8, ptr %i.it, align 8, !dbg !112945, !range !3607, !noundef !3448
  %i.iv = trunc nuw i8 %i.iu to i1, !dbg !112945
  %.val609 = load i8, ptr %i.is, align 1, !dbg !112946, !range !3608, !noundef !3448
  invoke fastcc void @_RINvMNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic10list_utilsNtB3_9NumericOp34prepare_numeric_op_side_validitiesNtNtB9_9datatypes11UInt128TypeEB9_(i8 %.val609, ptr noalias noundef align 8 dereferenceable(88) %i.fc, ptr noalias noundef align 8 dereferenceable(88) %i.fa, i1 noundef zeroext %i.iv)
          to label %bb.z unwind label %bb.ad, !dbg !112946

.critedge560:                                     ; preds = %.critedge566.thread2562, %.critedge566, %.critedge566.thread, %bb.qs, %bb.qt, %.body.i1451, %.critedge558.thread2556, %.critedge556.thread2553, %.critedge556, %.critedge556.thread, %bb.gx, %bb.gy, %.body.i925, %.critedge.thread2550, %.critedge, %.critedge.thread, %bb.dd, %bb.de, %.body.i, %bb.nd, %bb.ne, %bb.ib, %bb.hd, %bb.fu, %bb.bt, %bb.ad, %.thread2240, %bb.qu, %bb.jh, %.critedge558.thread, %.critedge558, %.loopexit.split-lp, %bb.dn
  %.sroa.0223.2 = phi i1 [ true, %bb.ib ], [ true, %bb.dn ], [ true, %bb.nd ], [ true, %.loopexit.split-lp ], [ true, %.critedge.thread2550 ], [ true, %bb.jh ], [ true, %bb.hd ], [ false, %.critedge558.thread ], [ false, %.critedge558 ], [ true, %bb.qu ], [ false, %.critedge558.thread2556 ], [ true, %.thread2240 ], [ %.sroa.0223.3, %bb.ad ], [ true, %bb.bt ], [ true, %bb.fu ], [ true, %bb.ne ], [ true, %bb.dd ], [ true, %.body.i ], [ true, %bb.de ], [ true, %.critedge.thread ], [ true, %.critedge ], [ true, %bb.gx ], [ true, %.body.i925 ], [ true, %bb.gy ], [ true, %.critedge556.thread ], [ true, %.critedge556 ], [ true, %.critedge556.thread2553 ], [ true, %bb.qs ], [ true, %.body.i1451 ], [ true, %bb.qt ], [ true, %.critedge566.thread ], [ true, %.critedge566 ], [ true, %.critedge566.thread2562 ], !dbg !112947
  %.pn530 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp2231, %bb.ib ], [ %i.ahy, %bb.dn ], [ %i.cly, %bb.nd ], [ %lpad.phi, %.loopexit.split-lp ], [ %lpad.thr_comm.split-lp2063, %.critedge.thread2550 ], [ %.pn4872225, %bb.jh ], [ %i.bpa, %bb.hd ], [ %.pn4852210, %.critedge558.thread ], [ %eh.lpad-body5742216, %.critedge558 ], [ %i.djb, %bb.qu ], [ %i.bpn, %.critedge558.thread2556 ], [ %.pn475.pn, %.thread2240 ], [ %i.iw, %bb.ad ], [ %i.afg, %bb.bt ], [ %i.blr, %bb.fu ], [ %i.cly, %bb.ne ], [ %i.agy, %bb.dd ], [ %eh.lpad-body.i, %.body.i ], [ %i.agy, %bb.de ], [ %.pn5242055, %.critedge.thread ], [ %eh.lpad-body5802061, %.critedge ], [ %i.bna, %bb.gx ], [ %eh.lpad-body.i926, %.body.i925 ], [ %i.bna, %bb.gy ], [ %.pn5032194, %.critedge556.thread ], [ %eh.lpad-body5772200, %.critedge556 ], [ %lpad.thr_comm.split-lp2202, %.critedge556.thread2553 ], [ %i.diy, %bb.qs ], [ %eh.lpad-body.i1452, %.body.i1451 ], [ %i.diy, %bb.qt ], [ %.pn4802540, %.critedge566.thread ], [ %eh.lpad-body2546, %.critedge566 ], [ %i.dij, %.critedge566.thread2562 ] ; 2 uses
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayoEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.fa) #49
          to label %bb.m unwind label %bb.db, !dbg !112948

bb.ad:                                            ; preds = %.invoke3845, %.invoke3843, %.invoke3841, %.invoke, %bb.fv, %bb.bu, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayoENtB7_5Array17is_null_uncheckedCs1LHh8CLbVkQ_11polars_core.exit.thread, %bb.ac, %bb.ji, %bb.dq, %bb.ai
  %.sroa.0223.3 = phi i1 [ true, %.invoke3845 ], [ true, %.invoke ], [ true, %bb.bu ], [ true, %bb.ai ], [ false, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayoENtB7_5Array17is_null_uncheckedCs1LHh8CLbVkQ_11polars_core.exit.thread ], [ true, %bb.ac ], [ true, %bb.ji ], [ true, %bb.fv ], [ true, %bb.dq ], [ true, %.invoke3841 ], [ true, %.invoke3843 ], !dbg !112947
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %.critedge560

default.unreachable3670:                          ; preds = %bb.nj, %bb.jt, %bb.dt, %bb.an, %bb.ae
  unreachable

default.unreachable:                              ; preds = %.thread, %bb.z
  unreachable

bb.ae:                                            ; preds = %bb.z
  %i.ix = load i8, ptr %i.ii, align 2, !dbg !112942, !range !3609, !noundef !3448
  switch i8 %i.ix, label %default.unreachable3670 [
    i8 0, label %.invoke3845
    i8 1, label %bb.af
    i8 2, label %bb.ag
  ], !dbg !112943, !prof !3765

.thread:                                          ; preds = %bb.ab, %bb.z
  %.pr1908 = load i8, ptr %i.ii, align 2, !dbg !112942
  switch i8 %.pr1908, label %default.unreachable [
    i8 0, label %.invoke3845
    i8 1, label %..thread1909_crit_edge
    i8 2, label %bb.ha
  ], !dbg !112943, !prof !3766

..thread1909_crit_edge:                           ; preds = %.thread
  %.pre = load i64, ptr %.sroa.5.0..sroa_idx5.i636, align 8, !dbg !112949
  br label %.thread1909, !dbg !112943

bb.af:                                            ; preds = %bb.ae
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !112950
  %i.iz = load ptr, ptr %i.iy, align 8, !dbg !112950, !nonnull !3448, !noundef !3448 ; 19 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !112951
  %i.jb = load i64, ptr %i.ja, align 16, !dbg !112951, !noundef !3448
  %.not509 = icmp eq i64 %i.jb, 0, !dbg !112952
  br i1 %.not509, label %.invoke3843, label %bb.ah, !dbg !112952

bb.ag:                                            ; preds = %bb.ae
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !112953
  %i.jd = load ptr, ptr %i.jc, align 8, !dbg !112953, !nonnull !3448, !noundef !3448 ; 8 uses
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !112954
  %i.jf = load i64, ptr %i.je, align 16, !dbg !112954, !noundef !3448
  %.not489 = icmp eq i64 %i.jf, 0, !dbg !112955
  br i1 %.not489, label %.invoke3843, label %bb.do, !dbg !112955

.invoke3845:                                      ; preds = %bb.ab, %bb.y, %bb.z, %bb.ae, %.thread
  %i.jg = phi ptr [ @41, %bb.z ], [ @41, %.thread ], [ @41, %bb.ae ], [ @27, %bb.y ], [ @27, %bb.ab ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jg) #48
          to label %.cont3846 unwind label %bb.ad, !dbg !111262

.cont3846:                                        ; preds = %.invoke3845
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !112956
  %i.ji = load ptr, ptr %i.jh, align 8, !dbg !112956, !nonnull !3448, !noundef !3448 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !112957
  %i.jk = load i64, ptr %i.jj, align 16, !dbg !112957, !noundef !3448
  %.not510 = icmp eq i64 %i.jk, 0, !dbg !112958
  br i1 %.not510, label %.invoke3843, label %bb.ai, !dbg !112958

bb.ai:                                            ; preds = %bb.ah
  %i.jl = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !112959, !noundef !3448 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn), !dbg !112960
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !112961
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.an, i64 noundef %i.jl, i1 noundef zeroext false, i64 noundef 16, i64 noundef 16)
          to label %bb.aj unwind label %bb.ad, !dbg !112961

bb.aj:                                            ; preds = %bb.ai
  %i.jm = load i64, ptr %i.an, align 8, !dbg !112961, !range !3450, !noundef !3448
  %i.jn = trunc nuw i64 %i.jm to i1, !dbg !112962
  %i.jo = getelementptr inbounds nuw i8, ptr %i.an, i64 8, !dbg !112963
  %i.jp = load i64, ptr %i.jo, align 8, !dbg !112963, !range !3612, !noundef !3448 ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.an, i64 16, !dbg !112963 ; 2 uses
  br i1 %i.jn, label %bb.ak, label %bb.al, !dbg !112962, !prof !3502

bb.ak:                                            ; preds = %bb.aj
  %i.jr = load i64, ptr %i.jq, align 8, !dbg !112964
  br label %.invoke, !dbg !112965

bb.al:                                            ; preds = %bb.aj
  %i.js = load ptr, ptr %i.jq, align 8, !dbg !112966, !nonnull !3448, !noundef !3448 ; 17 uses
  %i.jt = icmp ule i64 %i.jl, %i.jp, !dbg !112967
  call void @llvm.assume(i1 %i.jt), !dbg !112968
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !112969
  store i64 %i.jp, ptr %i.dn, align 8, !dbg !112970
  %i.ju = getelementptr inbounds nuw i8, ptr %i.dn, i64 8, !dbg !112970
  store ptr %i.js, ptr %i.ju, align 8, !dbg !112970
  %i.jv = getelementptr inbounds nuw i8, ptr %i.dn, i64 16, !dbg !112970 ; 2 uses
  store i64 0, ptr %i.jv, align 8, !dbg !112970
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ji, i64 16, !dbg !112971 ; 2 uses
  %i.jx = load i64, ptr %i.jw, align 8, !dbg !112971, !noundef !3448 ; 3 uses
  %i.jy = add i64 %i.jx, -1, !dbg !112972         ; 2 uses
  store i64 %i.jy, ptr %i.dm, align 8, !dbg !112972
  %i.jz = icmp eq i64 %i.jy, 1, !dbg !112973
  br i1 %i.jz, label %bb.an, label %bb.am, !dbg !112973, !prof !3552

bb.am:                                            ; preds = %bb.al
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @5, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #48
          to label %bb.l unwind label %bb.dn, !dbg !112974

bb.an:                                            ; preds = %bb.al
  %i.ka = getelementptr i8, ptr %i.ji, i64 8, !dbg !112975 ; 2 uses
  %i.kb = load ptr, ptr %i.ka, align 8, !dbg !112975, !nonnull !3448, !noundef !3448 ; 2 uses
  %i.kc = load i64, ptr %i.kb, align 8, !dbg !112976, !noundef !3448 ; 18 uses
  %.not.i642 = icmp ne i64 %i.jx, 0, !dbg !112977
  call void @llvm.assume(i1 %.not.i642), !dbg !112977
  %i.kd = getelementptr [8 x i8], ptr %i.kb, i64 %i.jx, !dbg !112978
  %i.ke = getelementptr i8, ptr %i.kd, i64 -8, !dbg !112978 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ke) ]
  %i.kf = load i64, ptr %i.ke, align 8, !dbg !112979, !noundef !3448
  %i.kg = sub i64 %i.kf, %i.kc, !dbg !112980      ; 21 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %1, i64 315, !dbg !112981
  %i.ki = load i8, ptr %i.kh, align 1, !dbg !112981, !range !3608, !noundef !3448
  switch i8 %i.ki, label %default.unreachable3670 [
    i8 0, label %bb.ao
    i8 1, label %bb.ap
    i8 2, label %bb.aq
    i8 3, label %bb.ar
    i8 4, label %bb.as
    i8 5, label %bb.at
  ], !dbg !112982

bb.ao:                                            ; preds = %bb.an
  %i.kj = getelementptr inbounds nuw i8, ptr %i.iz, i64 16, !dbg !112983
  %i.kk = load i64, ptr %i.kj, align 8, !dbg !112983, !noundef !3448 ; 2 uses
  %i.kl = icmp ult i64 %i.kk, 2, !dbg !112984
  br i1 %i.kl, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE22offset_and_length_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit, label %.lr.ph3237, !dbg !112984

.lr.ph3237:                                       ; preds = %bb.ao
  %i.km = getelementptr inbounds nuw i8, ptr %i.iz, i64 8, !dbg !112985
  %i.kn = load ptr, ptr %i.km, align 8, !dbg !112985, !noundef !3448
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.kp = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.kq = add i64 %i.kk, -2
  br label %bb.au, !dbg !112984

bb.ap:                                            ; preds = %bb.an
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !112986
  %i.ks = load i8, ptr %i.kr, align 8, !dbg !112986, !range !3607, !noundef !3448
  %i.kt = trunc nuw i8 %i.ks to i1, !dbg !112986
  %i.ku = getelementptr inbounds nuw i8, ptr %i.iz, i64 16, !dbg !112987
  %i.kv = load i64, ptr %i.ku, align 8, !dbg !112987, !noundef !3448 ; 3 uses
  %i.kw = icmp ult i64 %i.kv, 2, !dbg !112988     ; 2 uses
  br i1 %i.kt, label %bb.aw, label %bb.av, !dbg !112986

bb.aq:                                            ; preds = %bb.an
  %i.kx = getelementptr inbounds nuw i8, ptr %i.iz, i64 16, !dbg !112989
  %i.ky = load i64, ptr %i.kx, align 8, !dbg !112989, !noundef !3448 ; 2 uses
  %i.kz = icmp ult i64 %i.ky, 2, !dbg !112990
  br i1 %i.kz, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE22offset_and_length_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit, label %.lr.ph3213, !dbg !112990

.lr.ph3213:                                       ; preds = %bb.aq
  %i.la = getelementptr inbounds nuw i8, ptr %i.iz, i64 8, !dbg !112991
  %i.lb = load ptr, ptr %i.la, align 8, !dbg !112991, !noundef !3448
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ld = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.le = add i64 %i.ky, -2
  br label %bb.az, !dbg !112990

bb.ar:                                            ; preds = %bb.an
  %i.lf = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !112986
  %i.lg = load i8, ptr %i.lf, align 8, !dbg !112986, !range !3607, !noundef !3448
  %i.lh = trunc nuw i8 %i.lg to i1, !dbg !112986
  %i.li = getelementptr inbounds nuw i8, ptr %i.iz, i64 16, !dbg !112987
  %i.lj = load i64, ptr %i.li, align 8, !dbg !112987, !noundef !3448 ; 3 uses
  %i.lk = icmp ult i64 %i.lj, 2, !dbg !112988     ; 2 uses
  br i1 %i.lh, label %bb.bb, label %bb.ba, !dbg !112986

bb.as:                                            ; preds = %bb.an
  %i.ll = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !112986
  %i.lm = load i8, ptr %i.ll, align 8, !dbg !112986, !range !3607, !noundef !3448
  %i.ln = trunc nuw i8 %i.lm to i1, !dbg !112986
  %i.lo = getelementptr inbounds nuw i8, ptr %i.iz, i64 16, !dbg !112987
  %i.lp = load i64, ptr %i.lo, align 8, !dbg !112987, !noundef !3448 ; 3 uses
  %i.lq = icmp ult i64 %i.lp, 2, !dbg !112988     ; 2 uses
  br i1 %i.ln, label %bb.bh, label %bb.bg, !dbg !112986

bb.at:                                            ; preds = %bb.an
  %i.lr = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !112986
  %i.ls = load i8, ptr %i.lr, align 8, !dbg !112986, !range !3607, !noundef !3448
  %i.lt = trunc nuw i8 %i.ls to i1, !dbg !112986
  %i.lu = getelementptr inbounds nuw i8, ptr %i.iz, i64 16, !dbg !112987
  %i.lv = load i64, ptr %i.lu, align 8, !dbg !112987, !noundef !3448 ; 3 uses
  %i.lw = icmp ult i64 %i.lv, 2, !dbg !112988     ; 2 uses
  br i1 %i.lt, label %bb.bn, label %bb.bm, !dbg !112986

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph3232
  %lcmp.mod4193.not = icmp eq i64 %xtraiter4192, 0, !dbg !112992
  br i1 %lcmp.mod4193.not, label %.loopexit, label %.lr.ph3232.epil.preheader, !dbg !112992

.lr.ph3232.epil.preheader:                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph3232.preheader
  %.sroa.0350.03231.epil.init = phi i64 [ 0, %.lr.ph3232.preheader ], [ %i.on, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod4194 = trunc i64 %.sroa.0.0.i645 to i1, !dbg !112992
  call void @llvm.assume(i1 %lcmp.mod4194), !dbg !112992
  %i.lx = add nuw i64 %.sroa.0350.03231.epil.init, %.val1.i.i.i, !dbg !112993 ; 3 uses
  %i.ly = add nuw i64 %.sroa.0350.03231.epil.init, %i.kc, !dbg !112994 ; 2 uses
  %i.lz = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !112995, !noundef !3448
  %i.ma = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !112996, !noundef !3448
  %i.mb = icmp ult i64 %i.lx, %i.ma, !dbg !112997
  call void @llvm.assume(i1 %i.mb), !dbg !112998
  %i.mc = getelementptr inbounds nuw [16 x i8], ptr %i.lz, i64 %i.lx, !dbg !112999
  %i.md = load i128, ptr %i.mc, align 16, !dbg !113000, !noundef !3448
  %i.me = load ptr, ptr %.sroa.4.0..sroa_idx.i635, align 8, !dbg !113001, !noundef !3448
  %i.mf = load i64, ptr %.sroa.5.0..sroa_idx5.i636, align 8, !dbg !113002, !noundef !3448
  %i.mg = icmp ult i64 %i.ly, %i.mf, !dbg !113003
  call void @llvm.assume(i1 %i.mg), !dbg !113004
  %i.mh = getelementptr inbounds nuw [16 x i8], ptr %i.me, i64 %i.ly, !dbg !113005
  %i.mi = load i128, ptr %i.mh, align 16, !dbg !113006, !noundef !3448
  %i.mj = add i128 %i.mi, %i.md, !dbg !113007
  %i.mk = getelementptr inbounds nuw [16 x i8], ptr %i.js, i64 %i.lx, !dbg !113008
  store i128 %i.mj, ptr %i.mk, align 16, !dbg !113009
  br label %.loopexit, !dbg !112984

.loopexit:                                        ; preds = %.lr.ph3232.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.au
  %exitcond3489 = icmp eq i64 %.sroa.10.03233, %i.kq, !dbg !112984
  br i1 %exitcond3489, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE22offset_and_length_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit, label %bb.au, !dbg !112984

bb.au:                                            ; preds = %.lr.ph3237, %.loopexit
  %.sroa.067.03236 = phi i64 [ 0, %.lr.ph3237 ], [ %spec.select, %.loopexit ] ; 2 uses
  %.sroa.01594.03235 = phi ptr [ %i.kn, %.lr.ph3237 ], [ %i.ml, %.loopexit ] ; 3 uses
  %.sroa.10.03233 = phi i64 [ 0, %.lr.ph3237 ], [ %i.mn, %.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01594.03235) ]
  %i.ml = getelementptr inbounds nuw i8, ptr %.sroa.01594.03235, i64 8, !dbg !113010 ; 2 uses
  %.val1.i.i.i = load i64, ptr %.sroa.01594.03235, align 8, !dbg !113011, !alias.scope !110719, !noalias !110720, !noundef !3448 ; 4 uses
  %.val.i.i.i = load i64, ptr %i.ml, align 8, !dbg !113012, !alias.scope !110719, !noalias !110720, !noundef !3448
  %i.mm = sub i64 %.val.i.i.i, %.val1.i.i.i, !dbg !113013 ; 2 uses
  %i.mn = add nuw i64 %.sroa.10.03233, 1, !dbg !113014
  %i.mo = icmp eq i64 %i.mm, %i.kg, !dbg !113015
  %i.mp = icmp eq i64 %.sroa.067.03236, %.sroa.10.03233, !dbg !113016
  %i.mq = and i1 %i.mp, %i.mo, !dbg !113017
  %i.mr = load ptr, ptr %i.ko, align 16, !dbg !113018, !nonnull !3448, !noundef !3448 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 40, !dbg !113019
  %i.mt = load i64, ptr %i.ms, align 8, !dbg !113019, !noundef !3448
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mr, i64 32, !dbg !113020
  %i.mv = load ptr, ptr %i.mu, align 8, !dbg !113020, !noundef !3448
  %i.mw = load i64, ptr %i.kp, align 8, !dbg !113021, !noundef !3448
  %i.mx = add i64 %i.mw, %.sroa.10.03233, !dbg !113021 ; 2 uses
  %i.my = lshr i64 %i.mx, 3, !dbg !113022         ; 2 uses
  %i.mz = icmp ult i64 %i.my, %i.mt, !dbg !113023
  call void @llvm.assume(i1 %i.mz), !dbg !113024
  %i.na = getelementptr inbounds nuw i8, ptr %i.mv, i64 %i.my, !dbg !113025
  %i.nb = load i8, ptr %i.na, align 1, !dbg !113026, !noundef !3448
  %i.nc = trunc i64 %i.mx to i8, !dbg !113027
  %i.nd = and i8 %i.nc, 7, !dbg !113027
  %i.ne = shl nuw i8 1, %i.nd, !dbg !113028
  %i.nf = and i8 %i.ne, %i.nb, !dbg !113028
  %.not527 = icmp eq i8 %i.nf, 0, !dbg !113028
  %i.ng = or i1 %i.mq, %.not527, !dbg !113017
  %i.nh = zext i1 %i.ng to i64, !dbg !113017
  %spec.select = add i64 %.sroa.067.03236, %i.nh, !dbg !113017 ; 2 uses
  %.sroa.0.0.i645 = call noundef i64 @llvm.umin.i64(i64 %i.kg, i64 %i.mm), !dbg !113029 ; 5 uses
  %.not3257 = icmp eq i64 %.sroa.0.0.i645, 0, !dbg !113030
  br i1 %.not3257, label %.loopexit, label %.lr.ph3232.preheader, !dbg !112992

.lr.ph3232.preheader:                             ; preds = %bb.au
  %xtraiter4192 = and i64 %.sroa.0.0.i645, 1, !dbg !112992
  %i.ni = icmp eq i64 %.sroa.0.0.i645, 1, !dbg !112992
  br i1 %i.ni, label %.lr.ph3232.epil.preheader, label %.lr.ph3232.preheader.new, !dbg !112992

.lr.ph3232.preheader.new:                         ; preds = %.lr.ph3232.preheader
  %unroll_iter4195 = and i64 %.sroa.0.0.i645, -2, !dbg !112992
  br label %.lr.ph3232, !dbg !112992

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE22offset_and_length_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %.loopexit2581, %.loopexit2579, %.loopexit2577, %.loopexit2575, %.loopexit2573, %.loopexit2571, %.loopexit2569, %.loopexit2567, %.loopexit2565, %.loopexit, %bb.bm, %bb.bn, %bb.bg, %bb.bh, %bb.ba, %bb.bb, %bb.aq, %bb.av, %bb.aw, %bb.ao
  %.sroa.067.1 = phi i64 [ %spec.select538, %.loopexit2573 ], [ %spec.select536, %.loopexit2565 ], [ %spec.select540, %.loopexit2577 ], [ %spec.select, %.loopexit ], [ %spec.select539, %.loopexit2571 ], [ %spec.select535, %.loopexit2567 ], [ %spec.select541, %.loopexit2575 ], [ %spec.select537, %.loopexit2569 ], [ %spec.select543, %.loopexit2579 ], [ 0, %bb.ao ], [ 0, %bb.aw ], [ 0, %bb.av ], [ 0, %bb.aq ], [ 0, %bb.bb ], [ 0, %bb.ba ], [ 0, %bb.bh ], [ 0, %bb.bg ], [ 0, %bb.bn ], [ 0, %bb.bm ], [ %spec.select542, %.loopexit2581 ], !dbg !113031
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl), !dbg !111172
  %i.nj = getelementptr i8, ptr %i.iz, i64 8, !dbg !111172
  %.val617 = load ptr, ptr %i.nj, align 8, !dbg !111172
  %i.nk = getelementptr i8, ptr %i.iz, i64 16, !dbg !111172
  %.val618 = load i64, ptr %i.nk, align 8, !dbg !111172, !noundef !3448
  %.val619 = load ptr, ptr %i.ka, align 8, !dbg !111172
  %.val620 = load i64, ptr %i.jw, align 8, !dbg !111172
  invoke fastcc void @_RNvNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB4_19ListNumericOpHelper12__finish_impl18check_mismatch_pos(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.dl, i64 noundef %.sroa.067.1, ptr %.val617, i64 %.val618, ptr %.val619, i64 %.val620)
          to label %bb.br unwind label %bb.dn, !dbg !111172

.lr.ph3232:                                       ; preds = %.lr.ph3232, %.lr.ph3232.preheader.new
  %.sroa.0350.03231 = phi i64 [ 0, %.lr.ph3232.preheader.new ], [ %i.on, %.lr.ph3232 ] ; 4 uses
  %niter4196 = phi i64 [ 0, %.lr.ph3232.preheader.new ], [ %niter4196.next.1, %.lr.ph3232 ]
  %i.nl = add nuw i64 %.sroa.0350.03231, %.val1.i.i.i, !dbg !112993 ; 3 uses
  %i.nm = add nuw i64 %.sroa.0350.03231, %i.kc, !dbg !112994 ; 2 uses
  %i.nn = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !112995, !noundef !3448
  %i.no = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !112996, !noundef !3448
  %i.np = icmp ult i64 %i.nl, %i.no, !dbg !112997
  call void @llvm.assume(i1 %i.np), !dbg !112998
  %i.nq = getelementptr inbounds nuw [16 x i8], ptr %i.nn, i64 %i.nl, !dbg !112999
  %i.nr = load i128, ptr %i.nq, align 16, !dbg !113000, !noundef !3448
  %i.ns = load ptr, ptr %.sroa.4.0..sroa_idx.i635, align 8, !dbg !113001, !noundef !3448
  %i.nt = load i64, ptr %.sroa.5.0..sroa_idx5.i636, align 8, !dbg !113002, !noundef !3448
  %i.nu = icmp ult i64 %i.nm, %i.nt, !dbg !113003
  call void @llvm.assume(i1 %i.nu), !dbg !113004
  %i.nv = getelementptr inbounds nuw [16 x i8], ptr %i.ns, i64 %i.nm, !dbg !113005
  %i.nw = load i128, ptr %i.nv, align 16, !dbg !113006, !noundef !3448
  %i.nx = add i128 %i.nw, %i.nr, !dbg !113007
  %i.ny = or disjoint i64 %.sroa.0350.03231, 1, !dbg !113032 ; 2 uses
  %i.nz = getelementptr inbounds nuw [16 x i8], ptr %i.js, i64 %i.nl, !dbg !113008
  store i128 %i.nx, ptr %i.nz, align 16, !dbg !113009
  %i.oa = add nuw i64 %i.ny, %.val1.i.i.i, !dbg !112993 ; 3 uses
  %i.ob = add nuw i64 %i.ny, %i.kc, !dbg !112994  ; 2 uses
  %i.oc = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !112995, !noundef !3448
  %i.od = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !112996, !noundef !3448
  %i.oe = icmp ult i64 %i.oa, %i.od, !dbg !112997
  call void @llvm.assume(i1 %i.oe), !dbg !112998
  %i.of = getelementptr inbounds nuw [16 x i8], ptr %i.oc, i64 %i.oa, !dbg !112999
  %i.og = load i128, ptr %i.of, align 16, !dbg !113000, !noundef !3448
  %i.oh = load ptr, ptr %.sroa.4.0..sroa_idx.i635, align 8, !dbg !113001, !noundef !3448
  %i.oi = load i64, ptr %.sroa.5.0..sroa_idx5.i636, align 8, !dbg !113002, !noundef !3448
  %i.oj = icmp ult i64 %i.ob, %i.oi, !dbg !113003
  call void @llvm.assume(i1 %i.oj), !dbg !113004
  %i.ok = getelementptr inbounds nuw [16 x i8], ptr %i.oh, i64 %i.ob, !dbg !113005
end_hunk_7
begin_hunk_8_@_RINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB3_19ListNumericOpHelper12__finish_implNtNtBb_9datatypes8Int8TypeEBb_:bb.a
bb.s:                                             ; preds = %.noexc629
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hl, i64 24, !dbg !120144
  %i.hv = atomicrmw add ptr %i.hu, i64 1 monotonic, align 8, !dbg !120145, !noalias !117823 ; 0 uses
  br label %bb.r, !dbg !120146

bb.t:                                             ; preds = %bb.r
  %i.hw = load i64, ptr %i.ht, align 8, !dbg !120147, !range !3591, !noalias !117824, !noundef !3448
  %i.hx = icmp eq i64 %i.hw, 3, !dbg !120148
  br i1 %i.hx, label %bb.v, label %bb.u, !dbg !120148

bb.u:                                             ; preds = %bb.t
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ht, i64 24, !dbg !120149
  %i.hz = atomicrmw add ptr %i.hy, i64 1 monotonic, align 8, !dbg !120150, !noalias !117824 ; 0 uses
  br label %bb.v, !dbg !120151

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hj, i64 64, !dbg !120152
  %i.ib = load <2 x i64>, ptr %i.ia, align 8, !dbg !120152, !noalias !117824
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hj, i64 80, !dbg !120153
  %i.id = load atomic i64, ptr %i.ic monotonic, align 8, !dbg !120154, !noalias !117824
  br label %bb.w, !dbg !120155

bb.w:                                             ; preds = %bb.v, %bb.r
  %.sroa.5.sroa.5.0.i621 = phi i64 [ undef, %bb.r ], [ %i.id, %bb.v ], !dbg !120156
  %i.ie = phi <2 x i64> [ undef, %bb.r ], [ %i.ib, %bb.v ], !dbg !120156
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.fa, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 32, i1 false), !dbg !120157
  %i.if = getelementptr inbounds nuw i8, ptr %i.fa, i64 32, !dbg !120157 ; 7 uses
  store ptr %i.hl, ptr %i.if, align 8, !dbg !120157, !alias.scope !117823
  %.sroa.4.0..sroa_idx.i624 = getelementptr inbounds nuw i8, ptr %i.fa, i64 40, !dbg !120157 ; 58 uses
  store ptr %i.hp, ptr %.sroa.4.0..sroa_idx.i624, align 8, !dbg !120157, !alias.scope !117823
  %.sroa.5.0..sroa_idx5.i625 = getelementptr inbounds nuw i8, ptr %i.fa, i64 48, !dbg !120157 ; 58 uses
  store i64 %i.hr, ptr %.sroa.5.0..sroa_idx5.i625, align 8, !dbg !120157, !alias.scope !117823
  %i.ig = getelementptr inbounds nuw i8, ptr %i.fa, i64 56, !dbg !120157 ; 22 uses
  store ptr %i.ht, ptr %i.ig, align 8, !dbg !120157, !alias.scope !117823
  %.sroa.5.0..sroa_idx.i626 = getelementptr inbounds nuw i8, ptr %i.fa, i64 64, !dbg !120157 ; 2 uses
  store <2 x i64> %i.ie, ptr %.sroa.5.0..sroa_idx.i626, align 8, !dbg !120157, !alias.scope !117823
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i628 = getelementptr inbounds nuw i8, ptr %i.fa, i64 80, !dbg !120157
  store i64 %.sroa.5.sroa.5.0.i621, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i628, align 8, !dbg !120157, !alias.scope !117823
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !120158, !noalias !117823
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 313, !dbg !120159 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 314, !dbg !120160 ; 3 uses
  %i.ij = load i8, ptr %i.ih, align 1, !dbg !120161, !range !3609, !noundef !3448
  %i.ik = icmp eq i8 %i.ij, 1, !dbg !120162
  br i1 %i.ik, label %bb.x, label %bb.y, !dbg !120162

bb.x:                                             ; preds = %bb.w
  %i.il = load i8, ptr %i.ii, align 2, !dbg !120161, !range !3609, !noundef !3448 ; 2 uses
  %i.im = icmp eq i8 %i.il, 1, !dbg !120162
  br i1 %i.im, label %.thread1998, label %bb.aa, !dbg !120162

bb.y:                                             ; preds = %bb.w
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 288, !dbg !120163
  %i.io = load ptr, ptr %i.in, align 16, !dbg !120163, !noundef !3448
  %.not467 = icmp eq ptr %i.io, null, !dbg !120163
  br i1 %.not467, label %bb.ac, label %.invoke4014, !dbg !120164, !prof !3552

bb.z:                                             ; preds = %bb.ac
  %.pr.pre = load i8, ptr %i.ih, align 1, !dbg !120165
  switch i8 %.pr.pre, label %default.unreachable [
    i8 0, label %bb.ae
    i8 1, label %.thread
    i8 2, label %.invoke4014
  ], !dbg !120166, !prof !3764

bb.aa:                                            ; preds = %bb.x
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 288, !dbg !120163
  %i.iq = load ptr, ptr %i.ip, align 16, !dbg !120163, !noundef !3448
  %.not468 = icmp eq ptr %i.iq, null, !dbg !120163
  br i1 %.not468, label %bb.ac, label %bb.ab, !dbg !120164

bb.ab:                                            ; preds = %bb.aa
  %i.ir = icmp eq i8 %i.il, 2, !dbg !120162
  br i1 %i.ir, label %.thread, label %.invoke4014, !dbg !120162, !prof !3552

bb.ac:                                            ; preds = %bb.aa, %bb.y
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 315, !dbg !120167
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !120168
  %i.iu = load i8, ptr %i.it, align 8, !dbg !120168, !range !3607, !noundef !3448
  %i.iv = trunc nuw i8 %i.iu to i1, !dbg !120168
  %.val599 = load i8, ptr %i.is, align 1, !dbg !120169, !range !3608, !noundef !3448
  invoke fastcc void @_RINvMNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic10list_utilsNtB3_9NumericOp34prepare_numeric_op_side_validitiesNtNtB9_9datatypes8Int8TypeEB9_(i8 %.val599, ptr noalias noundef align 8 dereferenceable(88) %i.fc, ptr noalias noundef align 8 dereferenceable(88) %i.fa, i1 noundef zeroext %i.iv)
          to label %bb.z unwind label %bb.ad, !dbg !120169

.critedge560:                                     ; preds = %.critedge566.thread2651, %.critedge566, %.critedge566.thread, %bb.rm, %bb.rn, %.body.i1536, %.critedge558.thread2645, %.critedge556.thread2642, %.critedge556, %.critedge556.thread, %bb.ho, %bb.hp, %.body.i955, %.critedge.thread2639, %.critedge, %.critedge.thread, %bb.dl, %bb.dm, %.body.i, %bb.ns, %bb.nt, %bb.it, %bb.hv, %bb.gl, %bb.cb, %bb.ad, %.thread2329, %bb.ro, %bb.jz, %.critedge558.thread, %.critedge558, %.loopexit.split-lp, %bb.dw
  %.sroa.0223.2 = phi i1 [ true, %bb.it ], [ true, %bb.dw ], [ true, %bb.ns ], [ true, %.loopexit.split-lp ], [ true, %.critedge.thread2639 ], [ true, %bb.jz ], [ true, %bb.hv ], [ false, %.critedge558.thread ], [ false, %.critedge558 ], [ true, %bb.ro ], [ false, %.critedge558.thread2645 ], [ true, %.thread2329 ], [ %.sroa.0223.3, %bb.ad ], [ true, %bb.cb ], [ true, %bb.gl ], [ true, %bb.nt ], [ true, %bb.dl ], [ true, %.body.i ], [ true, %bb.dm ], [ true, %.critedge.thread ], [ true, %.critedge ], [ true, %bb.ho ], [ true, %.body.i955 ], [ true, %bb.hp ], [ true, %.critedge556.thread ], [ true, %.critedge556 ], [ true, %.critedge556.thread2642 ], [ true, %bb.rm ], [ true, %.body.i1536 ], [ true, %bb.rn ], [ true, %.critedge566.thread ], [ true, %.critedge566 ], [ true, %.critedge566.thread2651 ], !dbg !120170
  %.pn530 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp2320, %bb.it ], [ %i.aki, %bb.dw ], [ %i.cwr, %bb.ns ], [ %lpad.phi, %.loopexit.split-lp ], [ %lpad.thr_comm.split-lp2152, %.critedge.thread2639 ], [ %.pn4872314, %bb.jz ], [ %i.btu, %bb.hv ], [ %.pn4852299, %.critedge558.thread ], [ %eh.lpad-body5742305, %.critedge558 ], [ %i.een, %bb.ro ], [ %i.buh, %.critedge558.thread2645 ], [ %.pn475.pn, %.thread2329 ], [ %i.iw, %bb.ad ], [ %i.ahj, %bb.cb ], [ %i.bqe, %bb.gl ], [ %i.cwr, %bb.nt ], [ %i.ajb, %bb.dl ], [ %eh.lpad-body.i, %.body.i ], [ %i.ajb, %bb.dm ], [ %.pn5242144, %.critedge.thread ], [ %eh.lpad-body5802150, %.critedge ], [ %i.brn, %bb.ho ], [ %eh.lpad-body.i956, %.body.i955 ], [ %i.brn, %bb.hp ], [ %.pn5032283, %.critedge556.thread ], [ %eh.lpad-body5772289, %.critedge556 ], [ %lpad.thr_comm.split-lp2291, %.critedge556.thread2642 ], [ %i.eek, %bb.rm ], [ %eh.lpad-body.i1537, %.body.i1536 ], [ %i.eek, %bb.rn ], [ %.pn4802629, %.critedge566.thread ], [ %eh.lpad-body2635, %.critedge566 ], [ %i.edv, %.critedge566.thread2651 ] ; 2 uses
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.fa) #49
          to label %bb.m unwind label %bb.dj, !dbg !120171

bb.ad:                                            ; preds = %.invoke4014, %.invoke4012, %.invoke4010, %.invoke, %bb.gm, %bb.cc, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array17is_null_uncheckedCs1LHh8CLbVkQ_11polars_core.exit.thread, %bb.ac, %bb.ka, %bb.dz, %bb.ai
  %.sroa.0223.3 = phi i1 [ true, %.invoke4014 ], [ true, %.invoke ], [ true, %bb.cc ], [ true, %bb.ai ], [ false, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array17is_null_uncheckedCs1LHh8CLbVkQ_11polars_core.exit.thread ], [ true, %bb.ac ], [ true, %bb.ka ], [ true, %bb.gm ], [ true, %bb.dz ], [ true, %.invoke4010 ], [ true, %.invoke4012 ], !dbg !120170
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %.critedge560

default.unreachable3834:                          ; preds = %bb.ny, %bb.kl, %bb.ec, %bb.an, %bb.ae
  unreachable

default.unreachable:                              ; preds = %.thread, %bb.z
  unreachable

bb.ae:                                            ; preds = %bb.z
  %i.ix = load i8, ptr %i.ii, align 2, !dbg !120165, !range !3609, !noundef !3448
  switch i8 %i.ix, label %default.unreachable3834 [
    i8 0, label %.invoke4014
    i8 1, label %bb.af
    i8 2, label %bb.ag
  ], !dbg !120166, !prof !3765

.thread:                                          ; preds = %bb.ab, %bb.z
  %.pr1997 = load i8, ptr %i.ii, align 2, !dbg !120165
  switch i8 %.pr1997, label %default.unreachable [
    i8 0, label %.invoke4014
    i8 1, label %..thread1998_crit_edge
    i8 2, label %bb.hs
  ], !dbg !120166, !prof !3766

..thread1998_crit_edge:                           ; preds = %.thread
  %.pre = load i64, ptr %.sroa.5.0..sroa_idx5.i625, align 8, !dbg !120172
  br label %.thread1998, !dbg !120166

bb.af:                                            ; preds = %bb.ae
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !120173
  %i.iz = load ptr, ptr %i.iy, align 8, !dbg !120173, !nonnull !3448, !noundef !3448 ; 19 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !120174
  %i.jb = load i64, ptr %i.ja, align 16, !dbg !120174, !noundef !3448
  %.not509 = icmp eq i64 %i.jb, 0, !dbg !120175
  br i1 %.not509, label %.invoke4012, label %bb.ah, !dbg !120175

bb.ag:                                            ; preds = %bb.ae
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !120176
  %i.jd = load ptr, ptr %i.jc, align 8, !dbg !120176, !nonnull !3448, !noundef !3448 ; 8 uses
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !120177
  %i.jf = load i64, ptr %i.je, align 16, !dbg !120177, !noundef !3448
  %.not489 = icmp eq i64 %i.jf, 0, !dbg !120178
  br i1 %.not489, label %.invoke4012, label %bb.dx, !dbg !120178

.invoke4014:                                      ; preds = %bb.ab, %bb.y, %bb.z, %bb.ae, %.thread
  %i.jg = phi ptr [ @41, %bb.z ], [ @41, %.thread ], [ @41, %bb.ae ], [ @27, %bb.y ], [ @27, %bb.ab ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jg) #48
          to label %.cont4015 unwind label %bb.ad, !dbg !118477

.cont4015:                                        ; preds = %.invoke4014
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !120179
  %i.ji = load ptr, ptr %i.jh, align 8, !dbg !120179, !nonnull !3448, !noundef !3448 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !120180
  %i.jk = load i64, ptr %i.jj, align 16, !dbg !120180, !noundef !3448
  %.not510 = icmp eq i64 %i.jk, 0, !dbg !120181
  br i1 %.not510, label %.invoke4012, label %bb.ai, !dbg !120181

bb.ai:                                            ; preds = %bb.ah
  %i.jl = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !120182, !noundef !3448 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn), !dbg !120183
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !120184
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.an, i64 noundef %i.jl, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.aj unwind label %bb.ad, !dbg !120184

bb.aj:                                            ; preds = %bb.ai
  %i.jm = load i64, ptr %i.an, align 8, !dbg !120184, !range !3450, !noundef !3448
  %i.jn = trunc nuw i64 %i.jm to i1, !dbg !120185
  %i.jo = getelementptr inbounds nuw i8, ptr %i.an, i64 8, !dbg !120186
  %i.jp = load i64, ptr %i.jo, align 8, !dbg !120186, !range !3612, !noundef !3448 ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.an, i64 16, !dbg !120186 ; 2 uses
  br i1 %i.jn, label %bb.ak, label %bb.al, !dbg !120185, !prof !3502

bb.ak:                                            ; preds = %bb.aj
  %i.jr = load i64, ptr %i.jq, align 8, !dbg !120187
  br label %.invoke, !dbg !120188

bb.al:                                            ; preds = %bb.aj
  %i.js = load ptr, ptr %i.jq, align 8, !dbg !120189, !nonnull !3448, !noundef !3448 ; 19 uses
  %i.jt = icmp ule i64 %i.jl, %i.jp, !dbg !120190
  call void @llvm.assume(i1 %i.jt), !dbg !120191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !120192
  store i64 %i.jp, ptr %i.dn, align 8, !dbg !120193
  %i.ju = getelementptr inbounds nuw i8, ptr %i.dn, i64 8, !dbg !120193
  store ptr %i.js, ptr %i.ju, align 8, !dbg !120193
  %i.jv = getelementptr inbounds nuw i8, ptr %i.dn, i64 16, !dbg !120193 ; 2 uses
  store i64 0, ptr %i.jv, align 8, !dbg !120193
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ji, i64 16, !dbg !120194 ; 2 uses
  %i.jx = load i64, ptr %i.jw, align 8, !dbg !120194, !noundef !3448 ; 3 uses
  %i.jy = add i64 %i.jx, -1, !dbg !120195         ; 2 uses
  store i64 %i.jy, ptr %i.dm, align 8, !dbg !120195
  %i.jz = icmp eq i64 %i.jy, 1, !dbg !120196
  br i1 %i.jz, label %bb.an, label %bb.am, !dbg !120196, !prof !3552

bb.am:                                            ; preds = %bb.al
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @5, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #48
          to label %bb.l unwind label %bb.dw, !dbg !120197

bb.an:                                            ; preds = %bb.al
  %i.ka = getelementptr i8, ptr %i.ji, i64 8, !dbg !120198 ; 2 uses
  %i.kb = load ptr, ptr %i.ka, align 8, !dbg !120198, !nonnull !3448, !noundef !3448 ; 2 uses
  %i.kc = load i64, ptr %i.kb, align 8, !dbg !120199, !noundef !3448 ; 20 uses
  %.not.i631 = icmp ne i64 %i.jx, 0, !dbg !120200
  call void @llvm.assume(i1 %.not.i631), !dbg !120200
  %i.kd = getelementptr [8 x i8], ptr %i.kb, i64 %i.jx, !dbg !120201
  %i.ke = getelementptr i8, ptr %i.kd, i64 -8, !dbg !120201 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ke) ]
  %i.kf = load i64, ptr %i.ke, align 8, !dbg !120202, !noundef !3448
  %i.kg = sub i64 %i.kf, %i.kc, !dbg !120203      ; 21 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %1, i64 315, !dbg !120204
  %i.ki = load i8, ptr %i.kh, align 1, !dbg !120204, !range !3608, !noundef !3448
  switch i8 %i.ki, label %default.unreachable3834 [
    i8 0, label %bb.ao
    i8 1, label %bb.ap
    i8 2, label %bb.aq
    i8 3, label %bb.ar
    i8 4, label %bb.as
    i8 5, label %bb.at
  ], !dbg !120205

bb.ao:                                            ; preds = %bb.an
  %i.kj = getelementptr inbounds nuw i8, ptr %i.iz, i64 16, !dbg !120206
  %i.kk = load i64, ptr %i.kj, align 8, !dbg !120206, !noundef !3448 ; 2 uses
  %i.kl = icmp ult i64 %i.kk, 2, !dbg !120207
  br i1 %i.kl, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE22offset_and_length_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit, label %.lr.ph3383, !dbg !120207

.lr.ph3383:                                       ; preds = %bb.ao
  %i.km = getelementptr inbounds nuw i8, ptr %i.iz, i64 8, !dbg !120208
  %i.kn = load ptr, ptr %i.km, align 8, !dbg !120208, !noundef !3448
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.kp = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.kq = add i64 %i.kk, -2
  br label %bb.au, !dbg !120207

bb.ap:                                            ; preds = %bb.an
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !120209
  %i.ks = load i8, ptr %i.kr, align 8, !dbg !120209, !range !3607, !noundef !3448
  %i.kt = trunc nuw i8 %i.ks to i1, !dbg !120209
  %i.ku = getelementptr inbounds nuw i8, ptr %i.iz, i64 16, !dbg !120210
  %i.kv = load i64, ptr %i.ku, align 8, !dbg !120210, !noundef !3448 ; 3 uses
  %i.kw = icmp ult i64 %i.kv, 2, !dbg !120211     ; 2 uses
  br i1 %i.kt, label %bb.aw, label %bb.av, !dbg !120209

bb.aq:                                            ; preds = %bb.an
  %i.kx = getelementptr inbounds nuw i8, ptr %i.iz, i64 16, !dbg !120212
  %i.ky = load i64, ptr %i.kx, align 8, !dbg !120212, !noundef !3448 ; 2 uses
  %i.kz = icmp ult i64 %i.ky, 2, !dbg !120213
  br i1 %i.kz, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE22offset_and_length_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit, label %.lr.ph3359, !dbg !120213

.lr.ph3359:                                       ; preds = %bb.aq
  %i.la = getelementptr inbounds nuw i8, ptr %i.iz, i64 8, !dbg !120214
  %i.lb = load ptr, ptr %i.la, align 8, !dbg !120214, !noundef !3448
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ld = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.le = add i64 %i.ky, -2
  br label %bb.az, !dbg !120213

bb.ar:                                            ; preds = %bb.an
  %i.lf = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !120209
  %i.lg = load i8, ptr %i.lf, align 8, !dbg !120209, !range !3607, !noundef !3448
  %i.lh = trunc nuw i8 %i.lg to i1, !dbg !120209
  %i.li = getelementptr inbounds nuw i8, ptr %i.iz, i64 16, !dbg !120210
  %i.lj = load i64, ptr %i.li, align 8, !dbg !120210, !noundef !3448 ; 3 uses
  %i.lk = icmp ult i64 %i.lj, 2, !dbg !120211     ; 2 uses
  br i1 %i.lh, label %bb.bb, label %bb.ba, !dbg !120209

bb.as:                                            ; preds = %bb.an
  %i.ll = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !120209
  %i.lm = load i8, ptr %i.ll, align 8, !dbg !120209, !range !3607, !noundef !3448
  %i.ln = trunc nuw i8 %i.lm to i1, !dbg !120209
  %i.lo = getelementptr inbounds nuw i8, ptr %i.iz, i64 16, !dbg !120210
  %i.lp = load i64, ptr %i.lo, align 8, !dbg !120210, !noundef !3448 ; 3 uses
  %i.lq = icmp ult i64 %i.lp, 2, !dbg !120211     ; 2 uses
  br i1 %i.ln, label %bb.bk, label %bb.bj, !dbg !120209

bb.at:                                            ; preds = %bb.an
  %i.lr = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !120209
  %i.ls = load i8, ptr %i.lr, align 8, !dbg !120209, !range !3607, !noundef !3448
  %i.lt = trunc nuw i8 %i.ls to i1, !dbg !120209
  %i.lu = getelementptr inbounds nuw i8, ptr %i.iz, i64 16, !dbg !120210
  %i.lv = load i64, ptr %i.lu, align 8, !dbg !120210, !noundef !3448 ; 3 uses
  %i.lw = icmp ult i64 %i.lv, 2, !dbg !120211     ; 2 uses
  br i1 %i.lt, label %bb.bt, label %bb.bs, !dbg !120209

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph3378
  %lcmp.mod4895.not = icmp eq i64 %xtraiter4894, 0, !dbg !120215
  br i1 %lcmp.mod4895.not, label %.loopexit, label %.lr.ph3378.epil.preheader, !dbg !120215

.lr.ph3378.epil.preheader:                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph3378.preheader
  %.sroa.0350.03377.epil.init = phi i64 [ 0, %.lr.ph3378.preheader ], [ %i.on, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod4896 = trunc i64 %.sroa.0.0.i634 to i1, !dbg !120215
  call void @llvm.assume(i1 %lcmp.mod4896), !dbg !120215
  %i.lx = add nuw i64 %.sroa.0350.03377.epil.init, %.val1.i.i.i, !dbg !120216 ; 3 uses
  %i.ly = add nuw i64 %.sroa.0350.03377.epil.init, %i.kc, !dbg !120217 ; 2 uses
  %i.lz = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !120218, !noundef !3448
  %i.ma = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !120219, !noundef !3448
  %i.mb = icmp ult i64 %i.lx, %i.ma, !dbg !120220
  call void @llvm.assume(i1 %i.mb), !dbg !120221
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.lx, !dbg !120222
  %i.md = load i8, ptr %i.mc, align 1, !dbg !120223, !noundef !3448
  %i.me = load ptr, ptr %.sroa.4.0..sroa_idx.i624, align 8, !dbg !120224, !noundef !3448
  %i.mf = load i64, ptr %.sroa.5.0..sroa_idx5.i625, align 8, !dbg !120225, !noundef !3448
  %i.mg = icmp ult i64 %i.ly, %i.mf, !dbg !120226
  call void @llvm.assume(i1 %i.mg), !dbg !120227
  %i.mh = getelementptr inbounds nuw i8, ptr %i.me, i64 %i.ly, !dbg !120228
  %i.mi = load i8, ptr %i.mh, align 1, !dbg !120229, !noundef !3448
  %i.mj = add i8 %i.mi, %i.md, !dbg !120230
  %i.mk = getelementptr inbounds nuw i8, ptr %i.js, i64 %i.lx, !dbg !120231
  store i8 %i.mj, ptr %i.mk, align 1, !dbg !120232
  br label %.loopexit, !dbg !120207

.loopexit:                                        ; preds = %.lr.ph3378.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.au
  %exitcond3651 = icmp eq i64 %.sroa.10.03379, %i.kq, !dbg !120207
  br i1 %exitcond3651, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE22offset_and_length_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit, label %bb.au, !dbg !120207

bb.au:                                            ; preds = %.lr.ph3383, %.loopexit
  %.sroa.067.03382 = phi i64 [ 0, %.lr.ph3383 ], [ %spec.select, %.loopexit ] ; 2 uses
  %.sroa.01683.03381 = phi ptr [ %i.kn, %.lr.ph3383 ], [ %i.ml, %.loopexit ] ; 3 uses
  %.sroa.10.03379 = phi i64 [ 0, %.lr.ph3383 ], [ %i.mn, %.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01683.03381) ]
  %i.ml = getelementptr inbounds nuw i8, ptr %.sroa.01683.03381, i64 8, !dbg !120233 ; 2 uses
  %.val1.i.i.i = load i64, ptr %.sroa.01683.03381, align 8, !dbg !120234, !alias.scope !117934, !noalias !117935, !noundef !3448 ; 4 uses
  %.val.i.i.i = load i64, ptr %i.ml, align 8, !dbg !120235, !alias.scope !117934, !noalias !117935, !noundef !3448
  %i.mm = sub i64 %.val.i.i.i, %.val1.i.i.i, !dbg !120236 ; 2 uses
  %i.mn = add nuw i64 %.sroa.10.03379, 1, !dbg !120237
  %i.mo = icmp eq i64 %i.mm, %i.kg, !dbg !120238
  %i.mp = icmp eq i64 %.sroa.067.03382, %.sroa.10.03379, !dbg !120239
  %i.mq = and i1 %i.mp, %i.mo, !dbg !120240
  %i.mr = load ptr, ptr %i.ko, align 16, !dbg !120241, !nonnull !3448, !noundef !3448 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 40, !dbg !120242
  %i.mt = load i64, ptr %i.ms, align 8, !dbg !120242, !noundef !3448
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mr, i64 32, !dbg !120243
  %i.mv = load ptr, ptr %i.mu, align 8, !dbg !120243, !noundef !3448
  %i.mw = load i64, ptr %i.kp, align 8, !dbg !120244, !noundef !3448
  %i.mx = add i64 %i.mw, %.sroa.10.03379, !dbg !120244 ; 2 uses
  %i.my = lshr i64 %i.mx, 3, !dbg !120245         ; 2 uses
  %i.mz = icmp ult i64 %i.my, %i.mt, !dbg !120246
  call void @llvm.assume(i1 %i.mz), !dbg !120247
  %i.na = getelementptr inbounds nuw i8, ptr %i.mv, i64 %i.my, !dbg !120248
  %i.nb = load i8, ptr %i.na, align 1, !dbg !120249, !noundef !3448
  %i.nc = trunc i64 %i.mx to i8, !dbg !120250
  %i.nd = and i8 %i.nc, 7, !dbg !120250
  %i.ne = shl nuw i8 1, %i.nd, !dbg !120251
  %i.nf = and i8 %i.ne, %i.nb, !dbg !120251
  %.not527 = icmp eq i8 %i.nf, 0, !dbg !120251
  %i.ng = or i1 %i.mq, %.not527, !dbg !120240
  %i.nh = zext i1 %i.ng to i64, !dbg !120240
  %spec.select = add i64 %.sroa.067.03382, %i.nh, !dbg !120240 ; 2 uses
  %.sroa.0.0.i634 = call noundef i64 @llvm.umin.i64(i64 %i.kg, i64 %i.mm), !dbg !120252 ; 5 uses
  %.not3405 = icmp eq i64 %.sroa.0.0.i634, 0, !dbg !120253
  br i1 %.not3405, label %.loopexit, label %.lr.ph3378.preheader, !dbg !120215

.lr.ph3378.preheader:                             ; preds = %bb.au
  %xtraiter4894 = and i64 %.sroa.0.0.i634, 1, !dbg !120215
  %i.ni = icmp eq i64 %.sroa.0.0.i634, 1, !dbg !120215
  br i1 %i.ni, label %.lr.ph3378.epil.preheader, label %.lr.ph3378.preheader.new, !dbg !120215

.lr.ph3378.preheader.new:                         ; preds = %.lr.ph3378.preheader
  %unroll_iter4897 = and i64 %.sroa.0.0.i634, -2, !dbg !120215
  br label %.lr.ph3378, !dbg !120215

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE22offset_and_length_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %.loopexit2700, %.loopexit2698, %.loopexit2696, %.loopexit2694, %.loopexit2692, %.loopexit2690, %.loopexit2688, %.loopexit2686, %.loopexit2684, %.loopexit, %bb.bs, %bb.bt, %bb.bj, %bb.bk, %bb.ba, %bb.bb, %bb.aq, %bb.av, %bb.aw, %bb.ao
  %.sroa.067.1 = phi i64 [ %spec.select538, %.loopexit2692 ], [ %spec.select536, %.loopexit2684 ], [ %spec.select540, %.loopexit2696 ], [ %spec.select, %.loopexit ], [ %spec.select539, %.loopexit2690 ], [ %spec.select535, %.loopexit2686 ], [ %spec.select541, %.loopexit2694 ], [ %spec.select537, %.loopexit2688 ], [ %spec.select543, %.loopexit2698 ], [ 0, %bb.ao ], [ 0, %bb.aw ], [ 0, %bb.av ], [ 0, %bb.aq ], [ 0, %bb.bb ], [ 0, %bb.ba ], [ 0, %bb.bk ], [ 0, %bb.bj ], [ 0, %bb.bt ], [ 0, %bb.bs ], [ %spec.select542, %.loopexit2700 ], !dbg !120254
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl), !dbg !118387
  %i.nj = getelementptr i8, ptr %i.iz, i64 8, !dbg !118387
  %.val607 = load ptr, ptr %i.nj, align 8, !dbg !118387
  %i.nk = getelementptr i8, ptr %i.iz, i64 16, !dbg !118387
  %.val608 = load i64, ptr %i.nk, align 8, !dbg !118387, !noundef !3448
  %.val609 = load ptr, ptr %i.ka, align 8, !dbg !118387
  %.val610 = load i64, ptr %i.jw, align 8, !dbg !118387
  invoke fastcc void @_RNvNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB4_19ListNumericOpHelper12__finish_impl18check_mismatch_pos(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.dl, i64 noundef %.sroa.067.1, ptr %.val607, i64 %.val608, ptr %.val609, i64 %.val610)
          to label %bb.bz unwind label %bb.dw, !dbg !118387

.lr.ph3378:                                       ; preds = %.lr.ph3378, %.lr.ph3378.preheader.new
  %.sroa.0350.03377 = phi i64 [ 0, %.lr.ph3378.preheader.new ], [ %i.on, %.lr.ph3378 ] ; 4 uses
  %niter4898 = phi i64 [ 0, %.lr.ph3378.preheader.new ], [ %niter4898.next.1, %.lr.ph3378 ]
  %i.nl = add nuw i64 %.sroa.0350.03377, %.val1.i.i.i, !dbg !120216 ; 3 uses
  %i.nm = add nuw i64 %.sroa.0350.03377, %i.kc, !dbg !120217 ; 2 uses
  %i.nn = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !120218, !noundef !3448
  %i.no = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !120219, !noundef !3448
  %i.np = icmp ult i64 %i.nl, %i.no, !dbg !120220
  call void @llvm.assume(i1 %i.np), !dbg !120221
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nn, i64 %i.nl, !dbg !120222
  %i.nr = load i8, ptr %i.nq, align 1, !dbg !120223, !noundef !3448
  %i.ns = load ptr, ptr %.sroa.4.0..sroa_idx.i624, align 8, !dbg !120224, !noundef !3448
  %i.nt = load i64, ptr %.sroa.5.0..sroa_idx5.i625, align 8, !dbg !120225, !noundef !3448
  %i.nu = icmp ult i64 %i.nm, %i.nt, !dbg !120226
  call void @llvm.assume(i1 %i.nu), !dbg !120227
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.nm, !dbg !120228
  %i.nw = load i8, ptr %i.nv, align 1, !dbg !120229, !noundef !3448
  %i.nx = add i8 %i.nw, %i.nr, !dbg !120230
  %i.ny = or disjoint i64 %.sroa.0350.03377, 1, !dbg !120255 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.js, i64 %i.nl, !dbg !120231
  store i8 %i.nx, ptr %i.nz, align 1, !dbg !120232
  %i.oa = add nuw i64 %i.ny, %.val1.i.i.i, !dbg !120216 ; 3 uses
  %i.ob = add nuw i64 %i.ny, %i.kc, !dbg !120217  ; 2 uses
  %i.oc = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !120218, !noundef !3448
  %i.od = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !120219, !noundef !3448
  %i.oe = icmp ult i64 %i.oa, %i.od, !dbg !120220
  call void @llvm.assume(i1 %i.oe), !dbg !120221
  %i.of = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.oa, !dbg !120222
  %i.og = load i8, ptr %i.of, align 1, !dbg !120223, !noundef !3448
  %i.oh = load ptr, ptr %.sroa.4.0..sroa_idx.i624, align 8, !dbg !120224, !noundef !3448
  %i.oi = load i64, ptr %.sroa.5.0..sroa_idx5.i625, align 8, !dbg !120225, !noundef !3448
  %i.oj = icmp ult i64 %i.ob, %i.oi, !dbg !120226
  call void @llvm.assume(i1 %i.oj), !dbg !120227
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oh, i64 %i.ob, !dbg !120228
end_hunk_8
begin_hunk_9_@_RINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB3_19ListNumericOpHelper12__finish_implNtNtBb_9datatypes9Int16TypeEBb_:bb.a
bb.s:                                             ; preds = %.noexc629
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hl, i64 24, !dbg !127437
  %i.hv = atomicrmw add ptr %i.hu, i64 1 monotonic, align 8, !dbg !127438, !noalias !125116 ; 0 uses
  br label %bb.r, !dbg !127439

bb.t:                                             ; preds = %bb.r
  %i.hw = load i64, ptr %i.ht, align 8, !dbg !127440, !range !3591, !noalias !125117, !noundef !3448
  %i.hx = icmp eq i64 %i.hw, 3, !dbg !127441
  br i1 %i.hx, label %bb.v, label %bb.u, !dbg !127441

bb.u:                                             ; preds = %bb.t
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ht, i64 24, !dbg !127442
  %i.hz = atomicrmw add ptr %i.hy, i64 1 monotonic, align 8, !dbg !127443, !noalias !125117 ; 0 uses
  br label %bb.v, !dbg !127444

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hj, i64 64, !dbg !127445
  %i.ib = load <2 x i64>, ptr %i.ia, align 8, !dbg !127445, !noalias !125117
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hj, i64 80, !dbg !127446
  %i.id = load atomic i64, ptr %i.ic monotonic, align 8, !dbg !127447, !noalias !125117
  br label %bb.w, !dbg !127448

bb.w:                                             ; preds = %bb.v, %bb.r
  %.sroa.5.sroa.5.0.i621 = phi i64 [ undef, %bb.r ], [ %i.id, %bb.v ], !dbg !127449
  %i.ie = phi <2 x i64> [ undef, %bb.r ], [ %i.ib, %bb.v ], !dbg !127449
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.fa, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 32, i1 false), !dbg !127450
  %i.if = getelementptr inbounds nuw i8, ptr %i.fa, i64 32, !dbg !127450 ; 7 uses
  store ptr %i.hl, ptr %i.if, align 8, !dbg !127450, !alias.scope !125116
  %.sroa.4.0..sroa_idx.i624 = getelementptr inbounds nuw i8, ptr %i.fa, i64 40, !dbg !127450 ; 58 uses
  store ptr %i.hp, ptr %.sroa.4.0..sroa_idx.i624, align 8, !dbg !127450, !alias.scope !125116
  %.sroa.5.0..sroa_idx5.i625 = getelementptr inbounds nuw i8, ptr %i.fa, i64 48, !dbg !127450 ; 58 uses
  store i64 %i.hr, ptr %.sroa.5.0..sroa_idx5.i625, align 8, !dbg !127450, !alias.scope !125116
  %i.ig = getelementptr inbounds nuw i8, ptr %i.fa, i64 56, !dbg !127450 ; 22 uses
  store ptr %i.ht, ptr %i.ig, align 8, !dbg !127450, !alias.scope !125116
  %.sroa.5.0..sroa_idx.i626 = getelementptr inbounds nuw i8, ptr %i.fa, i64 64, !dbg !127450 ; 2 uses
  store <2 x i64> %i.ie, ptr %.sroa.5.0..sroa_idx.i626, align 8, !dbg !127450, !alias.scope !125116
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i628 = getelementptr inbounds nuw i8, ptr %i.fa, i64 80, !dbg !127450
  store i64 %.sroa.5.sroa.5.0.i621, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i628, align 8, !dbg !127450, !alias.scope !125116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !127451, !noalias !125116
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 313, !dbg !127452 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 314, !dbg !127453 ; 3 uses
  %i.ij = load i8, ptr %i.ih, align 1, !dbg !127454, !range !3609, !noundef !3448
  %i.ik = icmp eq i8 %i.ij, 1, !dbg !127455
  br i1 %i.ik, label %bb.x, label %bb.y, !dbg !127455

bb.x:                                             ; preds = %bb.w
  %i.il = load i8, ptr %i.ii, align 2, !dbg !127454, !range !3609, !noundef !3448 ; 2 uses
  %i.im = icmp eq i8 %i.il, 1, !dbg !127455
  br i1 %i.im, label %.thread1998, label %bb.aa, !dbg !127455

bb.y:                                             ; preds = %bb.w
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 288, !dbg !127456
  %i.io = load ptr, ptr %i.in, align 16, !dbg !127456, !noundef !3448
  %.not467 = icmp eq ptr %i.io, null, !dbg !127456
  br i1 %.not467, label %bb.ac, label %.invoke4014, !dbg !127457, !prof !3552

bb.z:                                             ; preds = %bb.ac
  %.pr.pre = load i8, ptr %i.ih, align 1, !dbg !127458
  switch i8 %.pr.pre, label %default.unreachable [
    i8 0, label %bb.ae
    i8 1, label %.thread
    i8 2, label %.invoke4014
  ], !dbg !127459, !prof !3764

bb.aa:                                            ; preds = %bb.x
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 288, !dbg !127456
  %i.iq = load ptr, ptr %i.ip, align 16, !dbg !127456, !noundef !3448
  %.not468 = icmp eq ptr %i.iq, null, !dbg !127456
  br i1 %.not468, label %bb.ac, label %bb.ab, !dbg !127457

bb.ab:                                            ; preds = %bb.aa
  %i.ir = icmp eq i8 %i.il, 2, !dbg !127455
  br i1 %i.ir, label %.thread, label %.invoke4014, !dbg !127455, !prof !3552

bb.ac:                                            ; preds = %bb.aa, %bb.y
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 315, !dbg !127460
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !127461
  %i.iu = load i8, ptr %i.it, align 8, !dbg !127461, !range !3607, !noundef !3448
  %i.iv = trunc nuw i8 %i.iu to i1, !dbg !127461
  %.val599 = load i8, ptr %i.is, align 1, !dbg !127462, !range !3608, !noundef !3448
  invoke fastcc void @_RINvMNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic10list_utilsNtB3_9NumericOp34prepare_numeric_op_side_validitiesNtNtB9_9datatypes9Int16TypeEB9_(i8 %.val599, ptr noalias noundef align 8 dereferenceable(88) %i.fc, ptr noalias noundef align 8 dereferenceable(88) %i.fa, i1 noundef zeroext %i.iv)
          to label %bb.z unwind label %bb.ad, !dbg !127462

.critedge560:                                     ; preds = %.critedge566.thread2651, %.critedge566, %.critedge566.thread, %bb.rm, %bb.rn, %.body.i1536, %.critedge558.thread2645, %.critedge556.thread2642, %.critedge556, %.critedge556.thread, %bb.ho, %bb.hp, %.body.i955, %.critedge.thread2639, %.critedge, %.critedge.thread, %bb.dl, %bb.dm, %.body.i, %bb.ns, %bb.nt, %bb.it, %bb.hv, %bb.gl, %bb.cb, %bb.ad, %.thread2329, %bb.ro, %bb.jz, %.critedge558.thread, %.critedge558, %.loopexit.split-lp, %bb.dw
  %.sroa.0223.2 = phi i1 [ true, %bb.it ], [ true, %bb.dw ], [ true, %bb.ns ], [ true, %.loopexit.split-lp ], [ true, %.critedge.thread2639 ], [ true, %bb.jz ], [ true, %bb.hv ], [ false, %.critedge558.thread ], [ false, %.critedge558 ], [ true, %bb.ro ], [ false, %.critedge558.thread2645 ], [ true, %.thread2329 ], [ %.sroa.0223.3, %bb.ad ], [ true, %bb.cb ], [ true, %bb.gl ], [ true, %bb.nt ], [ true, %bb.dl ], [ true, %.body.i ], [ true, %bb.dm ], [ true, %.critedge.thread ], [ true, %.critedge ], [ true, %bb.ho ], [ true, %.body.i955 ], [ true, %bb.hp ], [ true, %.critedge556.thread ], [ true, %.critedge556 ], [ true, %.critedge556.thread2642 ], [ true, %bb.rm ], [ true, %.body.i1536 ], [ true, %bb.rn ], [ true, %.critedge566.thread ], [ true, %.critedge566 ], [ true, %.critedge566.thread2651 ], !dbg !127463
  %.pn530 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp2320, %bb.it ], [ %i.aki, %bb.dw ], [ %i.ctm, %bb.ns ], [ %lpad.phi, %.loopexit.split-lp ], [ %lpad.thr_comm.split-lp2152, %.critedge.thread2639 ], [ %.pn4872314, %bb.jz ], [ %i.btu, %bb.hv ], [ %.pn4852299, %.critedge558.thread ], [ %eh.lpad-body5742305, %.critedge558 ], [ %i.ebq, %bb.ro ], [ %i.buh, %.critedge558.thread2645 ], [ %.pn475.pn, %.thread2329 ], [ %i.iw, %bb.ad ], [ %i.ahj, %bb.cb ], [ %i.bqe, %bb.gl ], [ %i.ctm, %bb.nt ], [ %i.ajb, %bb.dl ], [ %eh.lpad-body.i, %.body.i ], [ %i.ajb, %bb.dm ], [ %.pn5242144, %.critedge.thread ], [ %eh.lpad-body5802150, %.critedge ], [ %i.brn, %bb.ho ], [ %eh.lpad-body.i956, %.body.i955 ], [ %i.brn, %bb.hp ], [ %.pn5032283, %.critedge556.thread ], [ %eh.lpad-body5772289, %.critedge556 ], [ %lpad.thr_comm.split-lp2291, %.critedge556.thread2642 ], [ %i.ebn, %bb.rm ], [ %eh.lpad-body.i1537, %.body.i1536 ], [ %i.ebn, %bb.rn ], [ %.pn4802629, %.critedge566.thread ], [ %eh.lpad-body2635, %.critedge566 ], [ %i.eay, %.critedge566.thread2651 ] ; 2 uses
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.fa) #49
          to label %bb.m unwind label %bb.dj, !dbg !127464

bb.ad:                                            ; preds = %.invoke4014, %.invoke4012, %.invoke4010, %.invoke, %bb.gm, %bb.cc, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array17is_null_uncheckedCs1LHh8CLbVkQ_11polars_core.exit.thread, %bb.ac, %bb.ka, %bb.dz, %bb.ai
  %.sroa.0223.3 = phi i1 [ true, %.invoke4014 ], [ true, %.invoke ], [ true, %bb.cc ], [ true, %bb.ai ], [ false, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array17is_null_uncheckedCs1LHh8CLbVkQ_11polars_core.exit.thread ], [ true, %bb.ac ], [ true, %bb.ka ], [ true, %bb.gm ], [ true, %bb.dz ], [ true, %.invoke4010 ], [ true, %.invoke4012 ], !dbg !127463
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %.critedge560

default.unreachable3834:                          ; preds = %bb.ny, %bb.kl, %bb.ec, %bb.an, %bb.ae
  unreachable

default.unreachable:                              ; preds = %.thread, %bb.z
  unreachable

bb.ae:                                            ; preds = %bb.z
  %i.ix = load i8, ptr %i.ii, align 2, !dbg !127458, !range !3609, !noundef !3448
  switch i8 %i.ix, label %default.unreachable3834 [
    i8 0, label %.invoke4014
    i8 1, label %bb.af
    i8 2, label %bb.ag
  ], !dbg !127459, !prof !3765

.thread:                                          ; preds = %bb.ab, %bb.z
  %.pr1997 = load i8, ptr %i.ii, align 2, !dbg !127458
  switch i8 %.pr1997, label %default.unreachable [
    i8 0, label %.invoke4014
    i8 1, label %..thread1998_crit_edge
    i8 2, label %bb.hs
  ], !dbg !127459, !prof !3766

..thread1998_crit_edge:                           ; preds = %.thread
  %.pre = load i64, ptr %.sroa.5.0..sroa_idx5.i625, align 8, !dbg !127465
  br label %.thread1998, !dbg !127459

bb.af:                                            ; preds = %bb.ae
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !127466
  %i.iz = load ptr, ptr %i.iy, align 8, !dbg !127466, !nonnull !3448, !noundef !3448 ; 19 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !127467
  %i.jb = load i64, ptr %i.ja, align 16, !dbg !127467, !noundef !3448
  %.not509 = icmp eq i64 %i.jb, 0, !dbg !127468
  br i1 %.not509, label %.invoke4012, label %bb.ah, !dbg !127468

bb.ag:                                            ; preds = %bb.ae
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !127469
  %i.jd = load ptr, ptr %i.jc, align 8, !dbg !127469, !nonnull !3448, !noundef !3448 ; 8 uses
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !127470
  %i.jf = load i64, ptr %i.je, align 16, !dbg !127470, !noundef !3448
  %.not489 = icmp eq i64 %i.jf, 0, !dbg !127471
  br i1 %.not489, label %.invoke4012, label %bb.dx, !dbg !127471

.invoke4014:                                      ; preds = %bb.ab, %bb.y, %bb.z, %bb.ae, %.thread
  %i.jg = phi ptr [ @41, %bb.z ], [ @41, %.thread ], [ @41, %bb.ae ], [ @27, %bb.y ], [ @27, %bb.ab ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jg) #48
          to label %.cont4015 unwind label %bb.ad, !dbg !125770

.cont4015:                                        ; preds = %.invoke4014
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !127472
  %i.ji = load ptr, ptr %i.jh, align 8, !dbg !127472, !nonnull !3448, !noundef !3448 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !127473
  %i.jk = load i64, ptr %i.jj, align 16, !dbg !127473, !noundef !3448
  %.not510 = icmp eq i64 %i.jk, 0, !dbg !127474
  br i1 %.not510, label %.invoke4012, label %bb.ai, !dbg !127474

bb.ai:                                            ; preds = %bb.ah
  %i.jl = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !127475, !noundef !3448 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn), !dbg !127476
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !127477
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.an, i64 noundef %i.jl, i1 noundef zeroext false, i64 noundef 2, i64 noundef 2)
          to label %bb.aj unwind label %bb.ad, !dbg !127477

bb.aj:                                            ; preds = %bb.ai
  %i.jm = load i64, ptr %i.an, align 8, !dbg !127477, !range !3450, !noundef !3448
  %i.jn = trunc nuw i64 %i.jm to i1, !dbg !127478
  %i.jo = getelementptr inbounds nuw i8, ptr %i.an, i64 8, !dbg !127479
  %i.jp = load i64, ptr %i.jo, align 8, !dbg !127479, !range !3612, !noundef !3448 ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.an, i64 16, !dbg !127479 ; 2 uses
  br i1 %i.jn, label %bb.ak, label %bb.al, !dbg !127478, !prof !3502

bb.ak:                                            ; preds = %bb.aj
  %i.jr = load i64, ptr %i.jq, align 8, !dbg !127480
  br label %.invoke, !dbg !127481

bb.al:                                            ; preds = %bb.aj
  %i.js = load ptr, ptr %i.jq, align 8, !dbg !127482, !nonnull !3448, !noundef !3448 ; 19 uses
  %i.jt = icmp ule i64 %i.jl, %i.jp, !dbg !127483
  call void @llvm.assume(i1 %i.jt), !dbg !127484
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !127485
  store i64 %i.jp, ptr %i.dn, align 8, !dbg !127486
  %i.ju = getelementptr inbounds nuw i8, ptr %i.dn, i64 8, !dbg !127486
  store ptr %i.js, ptr %i.ju, align 8, !dbg !127486
  %i.jv = getelementptr inbounds nuw i8, ptr %i.dn, i64 16, !dbg !127486 ; 2 uses
  store i64 0, ptr %i.jv, align 8, !dbg !127486
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ji, i64 16, !dbg !127487 ; 2 uses
  %i.jx = load i64, ptr %i.jw, align 8, !dbg !127487, !noundef !3448 ; 3 uses
  %i.jy = add i64 %i.jx, -1, !dbg !127488         ; 2 uses
  store i64 %i.jy, ptr %i.dm, align 8, !dbg !127488
  %i.jz = icmp eq i64 %i.jy, 1, !dbg !127489
  br i1 %i.jz, label %bb.an, label %bb.am, !dbg !127489, !prof !3552

bb.am:                                            ; preds = %bb.al
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @5, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #48
          to label %bb.l unwind label %bb.dw, !dbg !127490

bb.an:                                            ; preds = %bb.al
  %i.ka = getelementptr i8, ptr %i.ji, i64 8, !dbg !127491 ; 2 uses
  %i.kb = load ptr, ptr %i.ka, align 8, !dbg !127491, !nonnull !3448, !noundef !3448 ; 2 uses
  %i.kc = load i64, ptr %i.kb, align 8, !dbg !127492, !noundef !3448 ; 20 uses
  %.not.i631 = icmp ne i64 %i.jx, 0, !dbg !127493
  call void @llvm.assume(i1 %.not.i631), !dbg !127493
  %i.kd = getelementptr [8 x i8], ptr %i.kb, i64 %i.jx, !dbg !127494
  %i.ke = getelementptr i8, ptr %i.kd, i64 -8, !dbg !127494 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ke) ]
  %i.kf = load i64, ptr %i.ke, align 8, !dbg !127495, !noundef !3448
  %i.kg = sub i64 %i.kf, %i.kc, !dbg !127496      ; 21 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %1, i64 315, !dbg !127497
  %i.ki = load i8, ptr %i.kh, align 1, !dbg !127497, !range !3608, !noundef !3448
  switch i8 %i.ki, label %default.unreachable3834 [
    i8 0, label %bb.ao
    i8 1, label %bb.ap
    i8 2, label %bb.aq
    i8 3, label %bb.ar
    i8 4, label %bb.as
    i8 5, label %bb.at
  ], !dbg !127498

bb.ao:                                            ; preds = %bb.an
  %i.kj = getelementptr inbounds nuw i8, ptr %i.iz, i64 16, !dbg !127499
  %i.kk = load i64, ptr %i.kj, align 8, !dbg !127499, !noundef !3448 ; 2 uses
  %i.kl = icmp ult i64 %i.kk, 2, !dbg !127500
  br i1 %i.kl, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE22offset_and_length_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit, label %.lr.ph3383, !dbg !127500

.lr.ph3383:                                       ; preds = %bb.ao
  %i.km = getelementptr inbounds nuw i8, ptr %i.iz, i64 8, !dbg !127501
  %i.kn = load ptr, ptr %i.km, align 8, !dbg !127501, !noundef !3448
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.kp = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.kq = add i64 %i.kk, -2
  br label %bb.au, !dbg !127500

bb.ap:                                            ; preds = %bb.an
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !127502
  %i.ks = load i8, ptr %i.kr, align 8, !dbg !127502, !range !3607, !noundef !3448
  %i.kt = trunc nuw i8 %i.ks to i1, !dbg !127502
  %i.ku = getelementptr inbounds nuw i8, ptr %i.iz, i64 16, !dbg !127503
  %i.kv = load i64, ptr %i.ku, align 8, !dbg !127503, !noundef !3448 ; 3 uses
  %i.kw = icmp ult i64 %i.kv, 2, !dbg !127504     ; 2 uses
  br i1 %i.kt, label %bb.aw, label %bb.av, !dbg !127502

bb.aq:                                            ; preds = %bb.an
  %i.kx = getelementptr inbounds nuw i8, ptr %i.iz, i64 16, !dbg !127505
  %i.ky = load i64, ptr %i.kx, align 8, !dbg !127505, !noundef !3448 ; 2 uses
  %i.kz = icmp ult i64 %i.ky, 2, !dbg !127506
  br i1 %i.kz, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE22offset_and_length_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit, label %.lr.ph3359, !dbg !127506

.lr.ph3359:                                       ; preds = %bb.aq
  %i.la = getelementptr inbounds nuw i8, ptr %i.iz, i64 8, !dbg !127507
  %i.lb = load ptr, ptr %i.la, align 8, !dbg !127507, !noundef !3448
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ld = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.le = add i64 %i.ky, -2
  br label %bb.az, !dbg !127506

bb.ar:                                            ; preds = %bb.an
  %i.lf = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !127502
  %i.lg = load i8, ptr %i.lf, align 8, !dbg !127502, !range !3607, !noundef !3448
  %i.lh = trunc nuw i8 %i.lg to i1, !dbg !127502
  %i.li = getelementptr inbounds nuw i8, ptr %i.iz, i64 16, !dbg !127503
  %i.lj = load i64, ptr %i.li, align 8, !dbg !127503, !noundef !3448 ; 3 uses
  %i.lk = icmp ult i64 %i.lj, 2, !dbg !127504     ; 2 uses
  br i1 %i.lh, label %bb.bb, label %bb.ba, !dbg !127502

bb.as:                                            ; preds = %bb.an
  %i.ll = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !127502
  %i.lm = load i8, ptr %i.ll, align 8, !dbg !127502, !range !3607, !noundef !3448
  %i.ln = trunc nuw i8 %i.lm to i1, !dbg !127502
  %i.lo = getelementptr inbounds nuw i8, ptr %i.iz, i64 16, !dbg !127503
  %i.lp = load i64, ptr %i.lo, align 8, !dbg !127503, !noundef !3448 ; 3 uses
  %i.lq = icmp ult i64 %i.lp, 2, !dbg !127504     ; 2 uses
  br i1 %i.ln, label %bb.bk, label %bb.bj, !dbg !127502

bb.at:                                            ; preds = %bb.an
  %i.lr = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !127502
  %i.ls = load i8, ptr %i.lr, align 8, !dbg !127502, !range !3607, !noundef !3448
  %i.lt = trunc nuw i8 %i.ls to i1, !dbg !127502
  %i.lu = getelementptr inbounds nuw i8, ptr %i.iz, i64 16, !dbg !127503
  %i.lv = load i64, ptr %i.lu, align 8, !dbg !127503, !noundef !3448 ; 3 uses
  %i.lw = icmp ult i64 %i.lv, 2, !dbg !127504     ; 2 uses
  br i1 %i.lt, label %bb.bt, label %bb.bs, !dbg !127502

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph3378
  %lcmp.mod4804.not = icmp eq i64 %xtraiter4803, 0, !dbg !127508
  br i1 %lcmp.mod4804.not, label %.loopexit, label %.lr.ph3378.epil.preheader, !dbg !127508

.lr.ph3378.epil.preheader:                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph3378.preheader
  %.sroa.0350.03377.epil.init = phi i64 [ 0, %.lr.ph3378.preheader ], [ %i.on, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod4805 = trunc i64 %.sroa.0.0.i634 to i1, !dbg !127508
  call void @llvm.assume(i1 %lcmp.mod4805), !dbg !127508
  %i.lx = add nuw i64 %.sroa.0350.03377.epil.init, %.val1.i.i.i, !dbg !127509 ; 3 uses
  %i.ly = add nuw i64 %.sroa.0350.03377.epil.init, %i.kc, !dbg !127510 ; 2 uses
  %i.lz = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !127511, !noundef !3448
  %i.ma = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !127512, !noundef !3448
  %i.mb = icmp ult i64 %i.lx, %i.ma, !dbg !127513
  call void @llvm.assume(i1 %i.mb), !dbg !127514
  %i.mc = getelementptr inbounds nuw [2 x i8], ptr %i.lz, i64 %i.lx, !dbg !127515
  %i.md = load i16, ptr %i.mc, align 2, !dbg !127516, !noundef !3448
  %i.me = load ptr, ptr %.sroa.4.0..sroa_idx.i624, align 8, !dbg !127517, !noundef !3448
  %i.mf = load i64, ptr %.sroa.5.0..sroa_idx5.i625, align 8, !dbg !127518, !noundef !3448
  %i.mg = icmp ult i64 %i.ly, %i.mf, !dbg !127519
  call void @llvm.assume(i1 %i.mg), !dbg !127520
  %i.mh = getelementptr inbounds nuw [2 x i8], ptr %i.me, i64 %i.ly, !dbg !127521
  %i.mi = load i16, ptr %i.mh, align 2, !dbg !127522, !noundef !3448
  %i.mj = add i16 %i.mi, %i.md, !dbg !127523
  %i.mk = getelementptr inbounds nuw [2 x i8], ptr %i.js, i64 %i.lx, !dbg !127524
  store i16 %i.mj, ptr %i.mk, align 2, !dbg !127525
  br label %.loopexit, !dbg !127500

.loopexit:                                        ; preds = %.lr.ph3378.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.au
  %exitcond3651 = icmp eq i64 %.sroa.10.03379, %i.kq, !dbg !127500
  br i1 %exitcond3651, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE22offset_and_length_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit, label %bb.au, !dbg !127500

bb.au:                                            ; preds = %.lr.ph3383, %.loopexit
  %.sroa.067.03382 = phi i64 [ 0, %.lr.ph3383 ], [ %spec.select, %.loopexit ] ; 2 uses
  %.sroa.01683.03381 = phi ptr [ %i.kn, %.lr.ph3383 ], [ %i.ml, %.loopexit ] ; 3 uses
  %.sroa.10.03379 = phi i64 [ 0, %.lr.ph3383 ], [ %i.mn, %.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01683.03381) ]
  %i.ml = getelementptr inbounds nuw i8, ptr %.sroa.01683.03381, i64 8, !dbg !127526 ; 2 uses
  %.val1.i.i.i = load i64, ptr %.sroa.01683.03381, align 8, !dbg !127527, !alias.scope !125227, !noalias !125228, !noundef !3448 ; 4 uses
  %.val.i.i.i = load i64, ptr %i.ml, align 8, !dbg !127528, !alias.scope !125227, !noalias !125228, !noundef !3448
  %i.mm = sub i64 %.val.i.i.i, %.val1.i.i.i, !dbg !127529 ; 2 uses
  %i.mn = add nuw i64 %.sroa.10.03379, 1, !dbg !127530
  %i.mo = icmp eq i64 %i.mm, %i.kg, !dbg !127531
  %i.mp = icmp eq i64 %.sroa.067.03382, %.sroa.10.03379, !dbg !127532
  %i.mq = and i1 %i.mp, %i.mo, !dbg !127533
  %i.mr = load ptr, ptr %i.ko, align 16, !dbg !127534, !nonnull !3448, !noundef !3448 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 40, !dbg !127535
  %i.mt = load i64, ptr %i.ms, align 8, !dbg !127535, !noundef !3448
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mr, i64 32, !dbg !127536
  %i.mv = load ptr, ptr %i.mu, align 8, !dbg !127536, !noundef !3448
  %i.mw = load i64, ptr %i.kp, align 8, !dbg !127537, !noundef !3448
  %i.mx = add i64 %i.mw, %.sroa.10.03379, !dbg !127537 ; 2 uses
  %i.my = lshr i64 %i.mx, 3, !dbg !127538         ; 2 uses
  %i.mz = icmp ult i64 %i.my, %i.mt, !dbg !127539
  call void @llvm.assume(i1 %i.mz), !dbg !127540
  %i.na = getelementptr inbounds nuw i8, ptr %i.mv, i64 %i.my, !dbg !127541
  %i.nb = load i8, ptr %i.na, align 1, !dbg !127542, !noundef !3448
  %i.nc = trunc i64 %i.mx to i8, !dbg !127543
  %i.nd = and i8 %i.nc, 7, !dbg !127543
  %i.ne = shl nuw i8 1, %i.nd, !dbg !127544
  %i.nf = and i8 %i.ne, %i.nb, !dbg !127544
  %.not527 = icmp eq i8 %i.nf, 0, !dbg !127544
  %i.ng = or i1 %i.mq, %.not527, !dbg !127533
  %i.nh = zext i1 %i.ng to i64, !dbg !127533
  %spec.select = add i64 %.sroa.067.03382, %i.nh, !dbg !127533 ; 2 uses
  %.sroa.0.0.i634 = call noundef i64 @llvm.umin.i64(i64 %i.kg, i64 %i.mm), !dbg !127545 ; 5 uses
  %.not3405 = icmp eq i64 %.sroa.0.0.i634, 0, !dbg !127546
  br i1 %.not3405, label %.loopexit, label %.lr.ph3378.preheader, !dbg !127508

.lr.ph3378.preheader:                             ; preds = %bb.au
  %xtraiter4803 = and i64 %.sroa.0.0.i634, 1, !dbg !127508
  %i.ni = icmp eq i64 %.sroa.0.0.i634, 1, !dbg !127508
  br i1 %i.ni, label %.lr.ph3378.epil.preheader, label %.lr.ph3378.preheader.new, !dbg !127508

.lr.ph3378.preheader.new:                         ; preds = %.lr.ph3378.preheader
  %unroll_iter4806 = and i64 %.sroa.0.0.i634, -2, !dbg !127508
  br label %.lr.ph3378, !dbg !127508

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE22offset_and_length_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %.loopexit2700, %.loopexit2698, %.loopexit2696, %.loopexit2694, %.loopexit2692, %.loopexit2690, %.loopexit2688, %.loopexit2686, %.loopexit2684, %.loopexit, %bb.bs, %bb.bt, %bb.bj, %bb.bk, %bb.ba, %bb.bb, %bb.aq, %bb.av, %bb.aw, %bb.ao
  %.sroa.067.1 = phi i64 [ %spec.select538, %.loopexit2692 ], [ %spec.select536, %.loopexit2684 ], [ %spec.select540, %.loopexit2696 ], [ %spec.select, %.loopexit ], [ %spec.select539, %.loopexit2690 ], [ %spec.select535, %.loopexit2686 ], [ %spec.select541, %.loopexit2694 ], [ %spec.select537, %.loopexit2688 ], [ %spec.select543, %.loopexit2698 ], [ 0, %bb.ao ], [ 0, %bb.aw ], [ 0, %bb.av ], [ 0, %bb.aq ], [ 0, %bb.bb ], [ 0, %bb.ba ], [ 0, %bb.bk ], [ 0, %bb.bj ], [ 0, %bb.bt ], [ 0, %bb.bs ], [ %spec.select542, %.loopexit2700 ], !dbg !127547
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl), !dbg !125680
  %i.nj = getelementptr i8, ptr %i.iz, i64 8, !dbg !125680
  %.val607 = load ptr, ptr %i.nj, align 8, !dbg !125680
  %i.nk = getelementptr i8, ptr %i.iz, i64 16, !dbg !125680
  %.val608 = load i64, ptr %i.nk, align 8, !dbg !125680, !noundef !3448
  %.val609 = load ptr, ptr %i.ka, align 8, !dbg !125680
  %.val610 = load i64, ptr %i.jw, align 8, !dbg !125680
  invoke fastcc void @_RNvNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB4_19ListNumericOpHelper12__finish_impl18check_mismatch_pos(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.dl, i64 noundef %.sroa.067.1, ptr %.val607, i64 %.val608, ptr %.val609, i64 %.val610)
          to label %bb.bz unwind label %bb.dw, !dbg !125680

.lr.ph3378:                                       ; preds = %.lr.ph3378, %.lr.ph3378.preheader.new
  %.sroa.0350.03377 = phi i64 [ 0, %.lr.ph3378.preheader.new ], [ %i.on, %.lr.ph3378 ] ; 4 uses
  %niter4807 = phi i64 [ 0, %.lr.ph3378.preheader.new ], [ %niter4807.next.1, %.lr.ph3378 ]
  %i.nl = add nuw i64 %.sroa.0350.03377, %.val1.i.i.i, !dbg !127509 ; 3 uses
  %i.nm = add nuw i64 %.sroa.0350.03377, %i.kc, !dbg !127510 ; 2 uses
  %i.nn = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !127511, !noundef !3448
  %i.no = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !127512, !noundef !3448
  %i.np = icmp ult i64 %i.nl, %i.no, !dbg !127513
  call void @llvm.assume(i1 %i.np), !dbg !127514
  %i.nq = getelementptr inbounds nuw [2 x i8], ptr %i.nn, i64 %i.nl, !dbg !127515
  %i.nr = load i16, ptr %i.nq, align 2, !dbg !127516, !noundef !3448
  %i.ns = load ptr, ptr %.sroa.4.0..sroa_idx.i624, align 8, !dbg !127517, !noundef !3448
  %i.nt = load i64, ptr %.sroa.5.0..sroa_idx5.i625, align 8, !dbg !127518, !noundef !3448
  %i.nu = icmp ult i64 %i.nm, %i.nt, !dbg !127519
  call void @llvm.assume(i1 %i.nu), !dbg !127520
  %i.nv = getelementptr inbounds nuw [2 x i8], ptr %i.ns, i64 %i.nm, !dbg !127521
  %i.nw = load i16, ptr %i.nv, align 2, !dbg !127522, !noundef !3448
  %i.nx = add i16 %i.nw, %i.nr, !dbg !127523
  %i.ny = or disjoint i64 %.sroa.0350.03377, 1, !dbg !127548 ; 2 uses
  %i.nz = getelementptr inbounds nuw [2 x i8], ptr %i.js, i64 %i.nl, !dbg !127524
  store i16 %i.nx, ptr %i.nz, align 2, !dbg !127525
  %i.oa = add nuw i64 %i.ny, %.val1.i.i.i, !dbg !127509 ; 3 uses
  %i.ob = add nuw i64 %i.ny, %i.kc, !dbg !127510  ; 2 uses
  %i.oc = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !127511, !noundef !3448
  %i.od = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !127512, !noundef !3448
  %i.oe = icmp ult i64 %i.oa, %i.od, !dbg !127513
  call void @llvm.assume(i1 %i.oe), !dbg !127514
  %i.of = getelementptr inbounds nuw [2 x i8], ptr %i.oc, i64 %i.oa, !dbg !127515
  %i.og = load i16, ptr %i.of, align 2, !dbg !127516, !noundef !3448
  %i.oh = load ptr, ptr %.sroa.4.0..sroa_idx.i624, align 8, !dbg !127517, !noundef !3448
  %i.oi = load i64, ptr %.sroa.5.0..sroa_idx5.i625, align 8, !dbg !127518, !noundef !3448
  %i.oj = icmp ult i64 %i.ob, %i.oi, !dbg !127519
  call void @llvm.assume(i1 %i.oj), !dbg !127520
  %i.ok = getelementptr inbounds nuw [2 x i8], ptr %i.oh, i64 %i.ob, !dbg !127521
end_hunk_9
begin_hunk_10_@_RINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB3_19ListNumericOpHelper12__finish_implNtNtBb_9datatypes9Int32TypeEBb_:bb.a
bb.s:                                             ; preds = %.noexc629
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hl, i64 24, !dbg !134720
  %i.hv = atomicrmw add ptr %i.hu, i64 1 monotonic, align 8, !dbg !134721, !noalias !132399 ; 0 uses
  br label %bb.r, !dbg !134722

bb.t:                                             ; preds = %bb.r
  %i.hw = load i64, ptr %i.ht, align 8, !dbg !134723, !range !3591, !noalias !132400, !noundef !3448
  %i.hx = icmp eq i64 %i.hw, 3, !dbg !134724
  br i1 %i.hx, label %bb.v, label %bb.u, !dbg !134724

bb.u:                                             ; preds = %bb.t
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ht, i64 24, !dbg !134725
  %i.hz = atomicrmw add ptr %i.hy, i64 1 monotonic, align 8, !dbg !134726, !noalias !132400 ; 0 uses
  br label %bb.v, !dbg !134727

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hj, i64 64, !dbg !134728
  %i.ib = load <2 x i64>, ptr %i.ia, align 8, !dbg !134728, !noalias !132400
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hj, i64 80, !dbg !134729
  %i.id = load atomic i64, ptr %i.ic monotonic, align 8, !dbg !134730, !noalias !132400
  br label %bb.w, !dbg !134731

bb.w:                                             ; preds = %bb.v, %bb.r
  %.sroa.5.sroa.5.0.i621 = phi i64 [ undef, %bb.r ], [ %i.id, %bb.v ], !dbg !134732
  %i.ie = phi <2 x i64> [ undef, %bb.r ], [ %i.ib, %bb.v ], !dbg !134732
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.fa, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 32, i1 false), !dbg !134733
  %i.if = getelementptr inbounds nuw i8, ptr %i.fa, i64 32, !dbg !134733 ; 7 uses
  store ptr %i.hl, ptr %i.if, align 8, !dbg !134733, !alias.scope !132399
  %.sroa.4.0..sroa_idx.i624 = getelementptr inbounds nuw i8, ptr %i.fa, i64 40, !dbg !134733 ; 58 uses
  store ptr %i.hp, ptr %.sroa.4.0..sroa_idx.i624, align 8, !dbg !134733, !alias.scope !132399
  %.sroa.5.0..sroa_idx5.i625 = getelementptr inbounds nuw i8, ptr %i.fa, i64 48, !dbg !134733 ; 58 uses
  store i64 %i.hr, ptr %.sroa.5.0..sroa_idx5.i625, align 8, !dbg !134733, !alias.scope !132399
  %i.ig = getelementptr inbounds nuw i8, ptr %i.fa, i64 56, !dbg !134733 ; 22 uses
  store ptr %i.ht, ptr %i.ig, align 8, !dbg !134733, !alias.scope !132399
  %.sroa.5.0..sroa_idx.i626 = getelementptr inbounds nuw i8, ptr %i.fa, i64 64, !dbg !134733 ; 2 uses
  store <2 x i64> %i.ie, ptr %.sroa.5.0..sroa_idx.i626, align 8, !dbg !134733, !alias.scope !132399
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i628 = getelementptr inbounds nuw i8, ptr %i.fa, i64 80, !dbg !134733
  store i64 %.sroa.5.sroa.5.0.i621, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i628, align 8, !dbg !134733, !alias.scope !132399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !134734, !noalias !132399
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 313, !dbg !134735 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 314, !dbg !134736 ; 3 uses
  %i.ij = load i8, ptr %i.ih, align 1, !dbg !134737, !range !3609, !noundef !3448
  %i.ik = icmp eq i8 %i.ij, 1, !dbg !134738
  br i1 %i.ik, label %bb.x, label %bb.y, !dbg !134738

bb.x:                                             ; preds = %bb.w
  %i.il = load i8, ptr %i.ii, align 2, !dbg !134737, !range !3609, !noundef !3448 ; 2 uses
  %i.im = icmp eq i8 %i.il, 1, !dbg !134738
  br i1 %i.im, label %.thread1998, label %bb.aa, !dbg !134738

bb.y:                                             ; preds = %bb.w
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 288, !dbg !134739
  %i.io = load ptr, ptr %i.in, align 16, !dbg !134739, !noundef !3448
  %.not467 = icmp eq ptr %i.io, null, !dbg !134739
  br i1 %.not467, label %bb.ac, label %.invoke4014, !dbg !134740, !prof !3552

bb.z:                                             ; preds = %bb.ac
  %.pr.pre = load i8, ptr %i.ih, align 1, !dbg !134741
  switch i8 %.pr.pre, label %default.unreachable [
    i8 0, label %bb.ae
    i8 1, label %.thread
    i8 2, label %.invoke4014
  ], !dbg !134742, !prof !3764

bb.aa:                                            ; preds = %bb.x
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 288, !dbg !134739
  %i.iq = load ptr, ptr %i.ip, align 16, !dbg !134739, !noundef !3448
  %.not468 = icmp eq ptr %i.iq, null, !dbg !134739
  br i1 %.not468, label %bb.ac, label %bb.ab, !dbg !134740

bb.ab:                                            ; preds = %bb.aa
  %i.ir = icmp eq i8 %i.il, 2, !dbg !134738
  br i1 %i.ir, label %.thread, label %.invoke4014, !dbg !134738, !prof !3552

bb.ac:                                            ; preds = %bb.aa, %bb.y
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 315, !dbg !134743
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !134744
  %i.iu = load i8, ptr %i.it, align 8, !dbg !134744, !range !3607, !noundef !3448
  %i.iv = trunc nuw i8 %i.iu to i1, !dbg !134744
  %.val599 = load i8, ptr %i.is, align 1, !dbg !134745, !range !3608, !noundef !3448
  invoke fastcc void @_RINvMNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic10list_utilsNtB3_9NumericOp34prepare_numeric_op_side_validitiesNtNtB9_9datatypes9Int32TypeEB9_(i8 %.val599, ptr noalias noundef align 8 dereferenceable(88) %i.fc, ptr noalias noundef align 8 dereferenceable(88) %i.fa, i1 noundef zeroext %i.iv)
          to label %bb.z unwind label %bb.ad, !dbg !134745

.critedge560:                                     ; preds = %.critedge566.thread2651, %.critedge566, %.critedge566.thread, %bb.rm, %bb.rn, %.body.i1536, %.critedge558.thread2645, %.critedge556.thread2642, %.critedge556, %.critedge556.thread, %bb.ho, %bb.hp, %.body.i955, %.critedge.thread2639, %.critedge, %.critedge.thread, %bb.dl, %bb.dm, %.body.i, %bb.ns, %bb.nt, %bb.it, %bb.hv, %bb.gl, %bb.cb, %bb.ad, %.thread2329, %bb.ro, %bb.jz, %.critedge558.thread, %.critedge558, %.loopexit.split-lp, %bb.dw
  %.sroa.0223.2 = phi i1 [ true, %bb.it ], [ true, %bb.dw ], [ true, %bb.ns ], [ true, %.loopexit.split-lp ], [ true, %.critedge.thread2639 ], [ true, %bb.jz ], [ true, %bb.hv ], [ false, %.critedge558.thread ], [ false, %.critedge558 ], [ true, %bb.ro ], [ false, %.critedge558.thread2645 ], [ true, %.thread2329 ], [ %.sroa.0223.3, %bb.ad ], [ true, %bb.cb ], [ true, %bb.gl ], [ true, %bb.nt ], [ true, %bb.dl ], [ true, %.body.i ], [ true, %bb.dm ], [ true, %.critedge.thread ], [ true, %.critedge ], [ true, %bb.ho ], [ true, %.body.i955 ], [ true, %bb.hp ], [ true, %.critedge556.thread ], [ true, %.critedge556 ], [ true, %.critedge556.thread2642 ], [ true, %bb.rm ], [ true, %.body.i1536 ], [ true, %bb.rn ], [ true, %.critedge566.thread ], [ true, %.critedge566 ], [ true, %.critedge566.thread2651 ], !dbg !134746
  %.pn530 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp2320, %bb.it ], [ %i.aki, %bb.dw ], [ %i.csc, %bb.ns ], [ %lpad.phi, %.loopexit.split-lp ], [ %lpad.thr_comm.split-lp2152, %.critedge.thread2639 ], [ %.pn4872314, %bb.jz ], [ %i.btu, %bb.hv ], [ %.pn4852299, %.critedge558.thread ], [ %eh.lpad-body5742305, %.critedge558 ], [ %i.dzm, %bb.ro ], [ %i.buh, %.critedge558.thread2645 ], [ %.pn475.pn, %.thread2329 ], [ %i.iw, %bb.ad ], [ %i.ahj, %bb.cb ], [ %i.bqe, %bb.gl ], [ %i.csc, %bb.nt ], [ %i.ajb, %bb.dl ], [ %eh.lpad-body.i, %.body.i ], [ %i.ajb, %bb.dm ], [ %.pn5242144, %.critedge.thread ], [ %eh.lpad-body5802150, %.critedge ], [ %i.brn, %bb.ho ], [ %eh.lpad-body.i956, %.body.i955 ], [ %i.brn, %bb.hp ], [ %.pn5032283, %.critedge556.thread ], [ %eh.lpad-body5772289, %.critedge556 ], [ %lpad.thr_comm.split-lp2291, %.critedge556.thread2642 ], [ %i.dzj, %bb.rm ], [ %eh.lpad-body.i1537, %.body.i1536 ], [ %i.dzj, %bb.rn ], [ %.pn4802629, %.critedge566.thread ], [ %eh.lpad-body2635, %.critedge566 ], [ %i.dyu, %.critedge566.thread2651 ] ; 2 uses
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraylEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.fa) #49
          to label %bb.m unwind label %bb.dj, !dbg !134747

bb.ad:                                            ; preds = %.invoke4014, %.invoke4012, %.invoke4010, %.invoke, %bb.gm, %bb.cc, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraylENtB7_5Array17is_null_uncheckedCs1LHh8CLbVkQ_11polars_core.exit.thread, %bb.ac, %bb.ka, %bb.dz, %bb.ai
  %.sroa.0223.3 = phi i1 [ true, %.invoke4014 ], [ true, %.invoke ], [ true, %bb.cc ], [ true, %bb.ai ], [ false, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraylENtB7_5Array17is_null_uncheckedCs1LHh8CLbVkQ_11polars_core.exit.thread ], [ true, %bb.ac ], [ true, %bb.ka ], [ true, %bb.gm ], [ true, %bb.dz ], [ true, %.invoke4010 ], [ true, %.invoke4012 ], !dbg !134746
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %.critedge560

default.unreachable3834:                          ; preds = %bb.ny, %bb.kl, %bb.ec, %bb.an, %bb.ae
  unreachable

default.unreachable:                              ; preds = %.thread, %bb.z
  unreachable

bb.ae:                                            ; preds = %bb.z
  %i.ix = load i8, ptr %i.ii, align 2, !dbg !134741, !range !3609, !noundef !3448
  switch i8 %i.ix, label %default.unreachable3834 [
    i8 0, label %.invoke4014
    i8 1, label %bb.af
    i8 2, label %bb.ag
  ], !dbg !134742, !prof !3765

.thread:                                          ; preds = %bb.ab, %bb.z
  %.pr1997 = load i8, ptr %i.ii, align 2, !dbg !134741
  switch i8 %.pr1997, label %default.unreachable [
    i8 0, label %.invoke4014
    i8 1, label %..thread1998_crit_edge
    i8 2, label %bb.hs
  ], !dbg !134742, !prof !3766

..thread1998_crit_edge:                           ; preds = %.thread
  %.pre = load i64, ptr %.sroa.5.0..sroa_idx5.i625, align 8, !dbg !134748
  br label %.thread1998, !dbg !134742

bb.af:                                            ; preds = %bb.ae
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !134749
  %i.iz = load ptr, ptr %i.iy, align 8, !dbg !134749, !nonnull !3448, !noundef !3448 ; 19 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !134750
  %i.jb = load i64, ptr %i.ja, align 16, !dbg !134750, !noundef !3448
  %.not509 = icmp eq i64 %i.jb, 0, !dbg !134751
  br i1 %.not509, label %.invoke4012, label %bb.ah, !dbg !134751

bb.ag:                                            ; preds = %bb.ae
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !134752
  %i.jd = load ptr, ptr %i.jc, align 8, !dbg !134752, !nonnull !3448, !noundef !3448 ; 8 uses
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !134753
  %i.jf = load i64, ptr %i.je, align 16, !dbg !134753, !noundef !3448
  %.not489 = icmp eq i64 %i.jf, 0, !dbg !134754
  br i1 %.not489, label %.invoke4012, label %bb.dx, !dbg !134754

.invoke4014:                                      ; preds = %bb.ab, %bb.y, %bb.z, %bb.ae, %.thread
  %i.jg = phi ptr [ @41, %bb.z ], [ @41, %.thread ], [ @41, %bb.ae ], [ @27, %bb.y ], [ @27, %bb.ab ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jg) #48
          to label %.cont4015 unwind label %bb.ad, !dbg !133053

.cont4015:                                        ; preds = %.invoke4014
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !134755
  %i.ji = load ptr, ptr %i.jh, align 8, !dbg !134755, !nonnull !3448, !noundef !3448 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !134756
  %i.jk = load i64, ptr %i.jj, align 16, !dbg !134756, !noundef !3448
  %.not510 = icmp eq i64 %i.jk, 0, !dbg !134757
  br i1 %.not510, label %.invoke4012, label %bb.ai, !dbg !134757

bb.ai:                                            ; preds = %bb.ah
  %i.jl = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !134758, !noundef !3448 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn), !dbg !134759
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !134760
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.an, i64 noundef %i.jl, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %bb.aj unwind label %bb.ad, !dbg !134760

bb.aj:                                            ; preds = %bb.ai
  %i.jm = load i64, ptr %i.an, align 8, !dbg !134760, !range !3450, !noundef !3448
  %i.jn = trunc nuw i64 %i.jm to i1, !dbg !134761
  %i.jo = getelementptr inbounds nuw i8, ptr %i.an, i64 8, !dbg !134762
  %i.jp = load i64, ptr %i.jo, align 8, !dbg !134762, !range !3612, !noundef !3448 ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.an, i64 16, !dbg !134762 ; 2 uses
  br i1 %i.jn, label %bb.ak, label %bb.al, !dbg !134761, !prof !3502

bb.ak:                                            ; preds = %bb.aj
  %i.jr = load i64, ptr %i.jq, align 8, !dbg !134763
  br label %.invoke, !dbg !134764

bb.al:                                            ; preds = %bb.aj
  %i.js = load ptr, ptr %i.jq, align 8, !dbg !134765, !nonnull !3448, !noundef !3448 ; 19 uses
  %i.jt = icmp ule i64 %i.jl, %i.jp, !dbg !134766
  call void @llvm.assume(i1 %i.jt), !dbg !134767
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !134768
  store i64 %i.jp, ptr %i.dn, align 8, !dbg !134769
  %i.ju = getelementptr inbounds nuw i8, ptr %i.dn, i64 8, !dbg !134769
  store ptr %i.js, ptr %i.ju, align 8, !dbg !134769
  %i.jv = getelementptr inbounds nuw i8, ptr %i.dn, i64 16, !dbg !134769 ; 2 uses
  store i64 0, ptr %i.jv, align 8, !dbg !134769
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ji, i64 16, !dbg !134770 ; 2 uses
  %i.jx = load i64, ptr %i.jw, align 8, !dbg !134770, !noundef !3448 ; 3 uses
  %i.jy = add i64 %i.jx, -1, !dbg !134771         ; 2 uses
  store i64 %i.jy, ptr %i.dm, align 8, !dbg !134771
  %i.jz = icmp eq i64 %i.jy, 1, !dbg !134772
  br i1 %i.jz, label %bb.an, label %bb.am, !dbg !134772, !prof !3552

bb.am:                                            ; preds = %bb.al
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @5, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #48
          to label %bb.l unwind label %bb.dw, !dbg !134773

bb.an:                                            ; preds = %bb.al
  %i.ka = getelementptr i8, ptr %i.ji, i64 8, !dbg !134774 ; 2 uses
  %i.kb = load ptr, ptr %i.ka, align 8, !dbg !134774, !nonnull !3448, !noundef !3448 ; 2 uses
  %i.kc = load i64, ptr %i.kb, align 8, !dbg !134775, !noundef !3448 ; 20 uses
  %.not.i631 = icmp ne i64 %i.jx, 0, !dbg !134776
  call void @llvm.assume(i1 %.not.i631), !dbg !134776
  %i.kd = getelementptr [8 x i8], ptr %i.kb, i64 %i.jx, !dbg !134777
  %i.ke = getelementptr i8, ptr %i.kd, i64 -8, !dbg !134777 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ke) ]
  %i.kf = load i64, ptr %i.ke, align 8, !dbg !134778, !noundef !3448
  %i.kg = sub i64 %i.kf, %i.kc, !dbg !134779      ; 21 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %1, i64 315, !dbg !134780
  %i.ki = load i8, ptr %i.kh, align 1, !dbg !134780, !range !3608, !noundef !3448
  switch i8 %i.ki, label %default.unreachable3834 [
    i8 0, label %bb.ao
    i8 1, label %bb.ap
    i8 2, label %bb.aq
    i8 3, label %bb.ar
    i8 4, label %bb.as
    i8 5, label %bb.at
  ], !dbg !134781

bb.ao:                                            ; preds = %bb.an
  %i.kj = getelementptr inbounds nuw i8, ptr %i.iz, i64 16, !dbg !134782
  %i.kk = load i64, ptr %i.kj, align 8, !dbg !134782, !noundef !3448 ; 2 uses
  %i.kl = icmp ult i64 %i.kk, 2, !dbg !134783
  br i1 %i.kl, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE22offset_and_length_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit, label %.lr.ph3383, !dbg !134783

.lr.ph3383:                                       ; preds = %bb.ao
  %i.km = getelementptr inbounds nuw i8, ptr %i.iz, i64 8, !dbg !134784
  %i.kn = load ptr, ptr %i.km, align 8, !dbg !134784, !noundef !3448
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.kp = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.kq = add i64 %i.kk, -2
  br label %bb.au, !dbg !134783

bb.ap:                                            ; preds = %bb.an
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !134785
  %i.ks = load i8, ptr %i.kr, align 8, !dbg !134785, !range !3607, !noundef !3448
  %i.kt = trunc nuw i8 %i.ks to i1, !dbg !134785
  %i.ku = getelementptr inbounds nuw i8, ptr %i.iz, i64 16, !dbg !134786
  %i.kv = load i64, ptr %i.ku, align 8, !dbg !134786, !noundef !3448 ; 3 uses
  %i.kw = icmp ult i64 %i.kv, 2, !dbg !134787     ; 2 uses
  br i1 %i.kt, label %bb.aw, label %bb.av, !dbg !134785

bb.aq:                                            ; preds = %bb.an
  %i.kx = getelementptr inbounds nuw i8, ptr %i.iz, i64 16, !dbg !134788
  %i.ky = load i64, ptr %i.kx, align 8, !dbg !134788, !noundef !3448 ; 2 uses
  %i.kz = icmp ult i64 %i.ky, 2, !dbg !134789
  br i1 %i.kz, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE22offset_and_length_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit, label %.lr.ph3359, !dbg !134789

.lr.ph3359:                                       ; preds = %bb.aq
  %i.la = getelementptr inbounds nuw i8, ptr %i.iz, i64 8, !dbg !134790
  %i.lb = load ptr, ptr %i.la, align 8, !dbg !134790, !noundef !3448
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ld = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.le = add i64 %i.ky, -2
  br label %bb.az, !dbg !134789

bb.ar:                                            ; preds = %bb.an
  %i.lf = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !134785
  %i.lg = load i8, ptr %i.lf, align 8, !dbg !134785, !range !3607, !noundef !3448
  %i.lh = trunc nuw i8 %i.lg to i1, !dbg !134785
  %i.li = getelementptr inbounds nuw i8, ptr %i.iz, i64 16, !dbg !134786
  %i.lj = load i64, ptr %i.li, align 8, !dbg !134786, !noundef !3448 ; 3 uses
  %i.lk = icmp ult i64 %i.lj, 2, !dbg !134787     ; 2 uses
  br i1 %i.lh, label %bb.bb, label %bb.ba, !dbg !134785

bb.as:                                            ; preds = %bb.an
  %i.ll = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !134785
  %i.lm = load i8, ptr %i.ll, align 8, !dbg !134785, !range !3607, !noundef !3448
  %i.ln = trunc nuw i8 %i.lm to i1, !dbg !134785
  %i.lo = getelementptr inbounds nuw i8, ptr %i.iz, i64 16, !dbg !134786
  %i.lp = load i64, ptr %i.lo, align 8, !dbg !134786, !noundef !3448 ; 3 uses
  %i.lq = icmp ult i64 %i.lp, 2, !dbg !134787     ; 2 uses
  br i1 %i.ln, label %bb.bk, label %bb.bj, !dbg !134785

bb.at:                                            ; preds = %bb.an
  %i.lr = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !134785
  %i.ls = load i8, ptr %i.lr, align 8, !dbg !134785, !range !3607, !noundef !3448
  %i.lt = trunc nuw i8 %i.ls to i1, !dbg !134785
  %i.lu = getelementptr inbounds nuw i8, ptr %i.iz, i64 16, !dbg !134786
  %i.lv = load i64, ptr %i.lu, align 8, !dbg !134786, !noundef !3448 ; 3 uses
  %i.lw = icmp ult i64 %i.lv, 2, !dbg !134787     ; 2 uses
  br i1 %i.lt, label %bb.bt, label %bb.bs, !dbg !134785

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph3378
  %lcmp.mod4631.not = icmp eq i64 %xtraiter4630, 0, !dbg !134791
  br i1 %lcmp.mod4631.not, label %.loopexit, label %.lr.ph3378.epil.preheader, !dbg !134791

.lr.ph3378.epil.preheader:                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph3378.preheader
  %.sroa.0350.03377.epil.init = phi i64 [ 0, %.lr.ph3378.preheader ], [ %i.on, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod4632 = trunc i64 %.sroa.0.0.i634 to i1, !dbg !134791
  call void @llvm.assume(i1 %lcmp.mod4632), !dbg !134791
  %i.lx = add nuw i64 %.sroa.0350.03377.epil.init, %.val1.i.i.i, !dbg !134792 ; 3 uses
  %i.ly = add nuw i64 %.sroa.0350.03377.epil.init, %i.kc, !dbg !134793 ; 2 uses
  %i.lz = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !134794, !noundef !3448
  %i.ma = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !134795, !noundef !3448
  %i.mb = icmp ult i64 %i.lx, %i.ma, !dbg !134796
  call void @llvm.assume(i1 %i.mb), !dbg !134797
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %i.lx, !dbg !134798
  %i.md = load i32, ptr %i.mc, align 4, !dbg !134799, !noundef !3448
  %i.me = load ptr, ptr %.sroa.4.0..sroa_idx.i624, align 8, !dbg !134800, !noundef !3448
  %i.mf = load i64, ptr %.sroa.5.0..sroa_idx5.i625, align 8, !dbg !134801, !noundef !3448
  %i.mg = icmp ult i64 %i.ly, %i.mf, !dbg !134802
  call void @llvm.assume(i1 %i.mg), !dbg !134803
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %i.ly, !dbg !134804
  %i.mi = load i32, ptr %i.mh, align 4, !dbg !134805, !noundef !3448
  %i.mj = add i32 %i.mi, %i.md, !dbg !134806
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.lx, !dbg !134807
  store i32 %i.mj, ptr %i.mk, align 4, !dbg !134808
  br label %.loopexit, !dbg !134783

.loopexit:                                        ; preds = %.lr.ph3378.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.au
  %exitcond3651 = icmp eq i64 %.sroa.10.03379, %i.kq, !dbg !134783
  br i1 %exitcond3651, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE22offset_and_length_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit, label %bb.au, !dbg !134783

bb.au:                                            ; preds = %.lr.ph3383, %.loopexit
  %.sroa.067.03382 = phi i64 [ 0, %.lr.ph3383 ], [ %spec.select, %.loopexit ] ; 2 uses
  %.sroa.01683.03381 = phi ptr [ %i.kn, %.lr.ph3383 ], [ %i.ml, %.loopexit ] ; 3 uses
  %.sroa.10.03379 = phi i64 [ 0, %.lr.ph3383 ], [ %i.mn, %.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01683.03381) ]
  %i.ml = getelementptr inbounds nuw i8, ptr %.sroa.01683.03381, i64 8, !dbg !134809 ; 2 uses
  %.val1.i.i.i = load i64, ptr %.sroa.01683.03381, align 8, !dbg !134810, !alias.scope !132510, !noalias !132511, !noundef !3448 ; 4 uses
  %.val.i.i.i = load i64, ptr %i.ml, align 8, !dbg !134811, !alias.scope !132510, !noalias !132511, !noundef !3448
  %i.mm = sub i64 %.val.i.i.i, %.val1.i.i.i, !dbg !134812 ; 2 uses
  %i.mn = add nuw i64 %.sroa.10.03379, 1, !dbg !134813
  %i.mo = icmp eq i64 %i.mm, %i.kg, !dbg !134814
  %i.mp = icmp eq i64 %.sroa.067.03382, %.sroa.10.03379, !dbg !134815
  %i.mq = and i1 %i.mp, %i.mo, !dbg !134816
  %i.mr = load ptr, ptr %i.ko, align 16, !dbg !134817, !nonnull !3448, !noundef !3448 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 40, !dbg !134818
  %i.mt = load i64, ptr %i.ms, align 8, !dbg !134818, !noundef !3448
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mr, i64 32, !dbg !134819
  %i.mv = load ptr, ptr %i.mu, align 8, !dbg !134819, !noundef !3448
  %i.mw = load i64, ptr %i.kp, align 8, !dbg !134820, !noundef !3448
  %i.mx = add i64 %i.mw, %.sroa.10.03379, !dbg !134820 ; 2 uses
  %i.my = lshr i64 %i.mx, 3, !dbg !134821         ; 2 uses
  %i.mz = icmp ult i64 %i.my, %i.mt, !dbg !134822
  call void @llvm.assume(i1 %i.mz), !dbg !134823
  %i.na = getelementptr inbounds nuw i8, ptr %i.mv, i64 %i.my, !dbg !134824
  %i.nb = load i8, ptr %i.na, align 1, !dbg !134825, !noundef !3448
  %i.nc = trunc i64 %i.mx to i8, !dbg !134826
  %i.nd = and i8 %i.nc, 7, !dbg !134826
  %i.ne = shl nuw i8 1, %i.nd, !dbg !134827
  %i.nf = and i8 %i.ne, %i.nb, !dbg !134827
  %.not527 = icmp eq i8 %i.nf, 0, !dbg !134827
  %i.ng = or i1 %i.mq, %.not527, !dbg !134816
  %i.nh = zext i1 %i.ng to i64, !dbg !134816
  %spec.select = add i64 %.sroa.067.03382, %i.nh, !dbg !134816 ; 2 uses
  %.sroa.0.0.i634 = call noundef i64 @llvm.umin.i64(i64 %i.kg, i64 %i.mm), !dbg !134828 ; 5 uses
  %.not3405 = icmp eq i64 %.sroa.0.0.i634, 0, !dbg !134829
  br i1 %.not3405, label %.loopexit, label %.lr.ph3378.preheader, !dbg !134791

.lr.ph3378.preheader:                             ; preds = %bb.au
  %xtraiter4630 = and i64 %.sroa.0.0.i634, 1, !dbg !134791
  %i.ni = icmp eq i64 %.sroa.0.0.i634, 1, !dbg !134791
  br i1 %i.ni, label %.lr.ph3378.epil.preheader, label %.lr.ph3378.preheader.new, !dbg !134791

.lr.ph3378.preheader.new:                         ; preds = %.lr.ph3378.preheader
  %unroll_iter4633 = and i64 %.sroa.0.0.i634, -2, !dbg !134791
  br label %.lr.ph3378, !dbg !134791

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE22offset_and_length_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %.loopexit2700, %.loopexit2698, %.loopexit2696, %.loopexit2694, %.loopexit2692, %.loopexit2690, %.loopexit2688, %.loopexit2686, %.loopexit2684, %.loopexit, %bb.bs, %bb.bt, %bb.bj, %bb.bk, %bb.ba, %bb.bb, %bb.aq, %bb.av, %bb.aw, %bb.ao
  %.sroa.067.1 = phi i64 [ %spec.select538, %.loopexit2692 ], [ %spec.select536, %.loopexit2684 ], [ %spec.select540, %.loopexit2696 ], [ %spec.select, %.loopexit ], [ %spec.select539, %.loopexit2690 ], [ %spec.select535, %.loopexit2686 ], [ %spec.select541, %.loopexit2694 ], [ %spec.select537, %.loopexit2688 ], [ %spec.select543, %.loopexit2698 ], [ 0, %bb.ao ], [ 0, %bb.aw ], [ 0, %bb.av ], [ 0, %bb.aq ], [ 0, %bb.bb ], [ 0, %bb.ba ], [ 0, %bb.bk ], [ 0, %bb.bj ], [ 0, %bb.bt ], [ 0, %bb.bs ], [ %spec.select542, %.loopexit2700 ], !dbg !134830
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl), !dbg !132963
  %i.nj = getelementptr i8, ptr %i.iz, i64 8, !dbg !132963
  %.val607 = load ptr, ptr %i.nj, align 8, !dbg !132963
  %i.nk = getelementptr i8, ptr %i.iz, i64 16, !dbg !132963
  %.val608 = load i64, ptr %i.nk, align 8, !dbg !132963, !noundef !3448
  %.val609 = load ptr, ptr %i.ka, align 8, !dbg !132963
  %.val610 = load i64, ptr %i.jw, align 8, !dbg !132963
  invoke fastcc void @_RNvNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB4_19ListNumericOpHelper12__finish_impl18check_mismatch_pos(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.dl, i64 noundef %.sroa.067.1, ptr %.val607, i64 %.val608, ptr %.val609, i64 %.val610)
          to label %bb.bz unwind label %bb.dw, !dbg !132963

.lr.ph3378:                                       ; preds = %.lr.ph3378, %.lr.ph3378.preheader.new
  %.sroa.0350.03377 = phi i64 [ 0, %.lr.ph3378.preheader.new ], [ %i.on, %.lr.ph3378 ] ; 4 uses
  %niter4634 = phi i64 [ 0, %.lr.ph3378.preheader.new ], [ %niter4634.next.1, %.lr.ph3378 ]
  %i.nl = add nuw i64 %.sroa.0350.03377, %.val1.i.i.i, !dbg !134792 ; 3 uses
  %i.nm = add nuw i64 %.sroa.0350.03377, %i.kc, !dbg !134793 ; 2 uses
  %i.nn = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !134794, !noundef !3448
  %i.no = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !134795, !noundef !3448
  %i.np = icmp ult i64 %i.nl, %i.no, !dbg !134796
  call void @llvm.assume(i1 %i.np), !dbg !134797
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.nn, i64 %i.nl, !dbg !134798
  %i.nr = load i32, ptr %i.nq, align 4, !dbg !134799, !noundef !3448
  %i.ns = load ptr, ptr %.sroa.4.0..sroa_idx.i624, align 8, !dbg !134800, !noundef !3448
  %i.nt = load i64, ptr %.sroa.5.0..sroa_idx5.i625, align 8, !dbg !134801, !noundef !3448
  %i.nu = icmp ult i64 %i.nm, %i.nt, !dbg !134802
  call void @llvm.assume(i1 %i.nu), !dbg !134803
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.ns, i64 %i.nm, !dbg !134804
  %i.nw = load i32, ptr %i.nv, align 4, !dbg !134805, !noundef !3448
  %i.nx = add i32 %i.nw, %i.nr, !dbg !134806
  %i.ny = or disjoint i64 %.sroa.0350.03377, 1, !dbg !134831 ; 2 uses
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.nl, !dbg !134807
  store i32 %i.nx, ptr %i.nz, align 4, !dbg !134808
  %i.oa = add nuw i64 %i.ny, %.val1.i.i.i, !dbg !134792 ; 3 uses
  %i.ob = add nuw i64 %i.ny, %i.kc, !dbg !134793  ; 2 uses
  %i.oc = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !134794, !noundef !3448
  %i.od = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !134795, !noundef !3448
  %i.oe = icmp ult i64 %i.oa, %i.od, !dbg !134796
  call void @llvm.assume(i1 %i.oe), !dbg !134797
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.oc, i64 %i.oa, !dbg !134798
  %i.og = load i32, ptr %i.of, align 4, !dbg !134799, !noundef !3448
  %i.oh = load ptr, ptr %.sroa.4.0..sroa_idx.i624, align 8, !dbg !134800, !noundef !3448
  %i.oi = load i64, ptr %.sroa.5.0..sroa_idx5.i625, align 8, !dbg !134801, !noundef !3448
  %i.oj = icmp ult i64 %i.ob, %i.oi, !dbg !134802
  call void @llvm.assume(i1 %i.oj), !dbg !134803
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %i.oh, i64 %i.ob, !dbg !134804
end_hunk_10
begin_hunk_11_@_RINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB3_19ListNumericOpHelper12__finish_implNtNtBb_9datatypes9Int64TypeEBb_:bb.a
bb.s:                                             ; preds = %.noexc629
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hl, i64 24, !dbg !141959
  %i.hv = atomicrmw add ptr %i.hu, i64 1 monotonic, align 8, !dbg !141960, !noalias !139646 ; 0 uses
  br label %bb.r, !dbg !141961

bb.t:                                             ; preds = %bb.r
  %i.hw = load i64, ptr %i.ht, align 8, !dbg !141962, !range !3591, !noalias !139647, !noundef !3448
  %i.hx = icmp eq i64 %i.hw, 3, !dbg !141963
  br i1 %i.hx, label %bb.v, label %bb.u, !dbg !141963

bb.u:                                             ; preds = %bb.t
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ht, i64 24, !dbg !141964
  %i.hz = atomicrmw add ptr %i.hy, i64 1 monotonic, align 8, !dbg !141965, !noalias !139647 ; 0 uses
  br label %bb.v, !dbg !141966

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hj, i64 64, !dbg !141967
  %i.ib = load <2 x i64>, ptr %i.ia, align 8, !dbg !141967, !noalias !139647
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hj, i64 80, !dbg !141968
  %i.id = load atomic i64, ptr %i.ic monotonic, align 8, !dbg !141969, !noalias !139647
  br label %bb.w, !dbg !141970

bb.w:                                             ; preds = %bb.v, %bb.r
  %.sroa.5.sroa.5.0.i621 = phi i64 [ undef, %bb.r ], [ %i.id, %bb.v ], !dbg !141971
  %i.ie = phi <2 x i64> [ undef, %bb.r ], [ %i.ib, %bb.v ], !dbg !141971
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.fa, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 32, i1 false), !dbg !141972
  %i.if = getelementptr inbounds nuw i8, ptr %i.fa, i64 32, !dbg !141972 ; 7 uses
  store ptr %i.hl, ptr %i.if, align 8, !dbg !141972, !alias.scope !139646
  %.sroa.4.0..sroa_idx.i624 = getelementptr inbounds nuw i8, ptr %i.fa, i64 40, !dbg !141972 ; 58 uses
  store ptr %i.hp, ptr %.sroa.4.0..sroa_idx.i624, align 8, !dbg !141972, !alias.scope !139646
  %.sroa.5.0..sroa_idx5.i625 = getelementptr inbounds nuw i8, ptr %i.fa, i64 48, !dbg !141972 ; 58 uses
  store i64 %i.hr, ptr %.sroa.5.0..sroa_idx5.i625, align 8, !dbg !141972, !alias.scope !139646
  %i.ig = getelementptr inbounds nuw i8, ptr %i.fa, i64 56, !dbg !141972 ; 22 uses
  store ptr %i.ht, ptr %i.ig, align 8, !dbg !141972, !alias.scope !139646
  %.sroa.5.0..sroa_idx.i626 = getelementptr inbounds nuw i8, ptr %i.fa, i64 64, !dbg !141972 ; 2 uses
  store <2 x i64> %i.ie, ptr %.sroa.5.0..sroa_idx.i626, align 8, !dbg !141972, !alias.scope !139646
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i628 = getelementptr inbounds nuw i8, ptr %i.fa, i64 80, !dbg !141972
  store i64 %.sroa.5.sroa.5.0.i621, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i628, align 8, !dbg !141972, !alias.scope !139646
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !141973, !noalias !139646
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 313, !dbg !141974 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 314, !dbg !141975 ; 3 uses
  %i.ij = load i8, ptr %i.ih, align 1, !dbg !141976, !range !3609, !noundef !3448
  %i.ik = icmp eq i8 %i.ij, 1, !dbg !141977
  br i1 %i.ik, label %bb.x, label %bb.y, !dbg !141977

bb.x:                                             ; preds = %bb.w
  %i.il = load i8, ptr %i.ii, align 2, !dbg !141976, !range !3609, !noundef !3448 ; 2 uses
  %i.im = icmp eq i8 %i.il, 1, !dbg !141977
  br i1 %i.im, label %.thread1998, label %bb.aa, !dbg !141977

bb.y:                                             ; preds = %bb.w
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 288, !dbg !141978
  %i.io = load ptr, ptr %i.in, align 16, !dbg !141978, !noundef !3448
  %.not467 = icmp eq ptr %i.io, null, !dbg !141978
  br i1 %.not467, label %bb.ac, label %.invoke4014, !dbg !141979, !prof !3552

bb.z:                                             ; preds = %bb.ac
  %.pr.pre = load i8, ptr %i.ih, align 1, !dbg !141980
  switch i8 %.pr.pre, label %default.unreachable [
    i8 0, label %bb.ae
    i8 1, label %.thread
    i8 2, label %.invoke4014
  ], !dbg !141981, !prof !3764

bb.aa:                                            ; preds = %bb.x
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 288, !dbg !141978
  %i.iq = load ptr, ptr %i.ip, align 16, !dbg !141978, !noundef !3448
  %.not468 = icmp eq ptr %i.iq, null, !dbg !141978
  br i1 %.not468, label %bb.ac, label %bb.ab, !dbg !141979

bb.ab:                                            ; preds = %bb.aa
  %i.ir = icmp eq i8 %i.il, 2, !dbg !141977
  br i1 %i.ir, label %.thread, label %.invoke4014, !dbg !141977, !prof !3552

bb.ac:                                            ; preds = %bb.aa, %bb.y
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 315, !dbg !141982
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !141983
  %i.iu = load i8, ptr %i.it, align 8, !dbg !141983, !range !3607, !noundef !3448
  %i.iv = trunc nuw i8 %i.iu to i1, !dbg !141983
  %.val599 = load i8, ptr %i.is, align 1, !dbg !141984, !range !3608, !noundef !3448
  invoke fastcc void @_RINvMNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic10list_utilsNtB3_9NumericOp34prepare_numeric_op_side_validitiesNtNtB9_9datatypes9Int64TypeEB9_(i8 %.val599, ptr noalias noundef align 8 dereferenceable(88) %i.fc, ptr noalias noundef align 8 dereferenceable(88) %i.fa, i1 noundef zeroext %i.iv)
          to label %bb.z unwind label %bb.ad, !dbg !141984

.critedge560:                                     ; preds = %.critedge566.thread2651, %.critedge566, %.critedge566.thread, %bb.ro, %bb.rp, %.body.i1536, %.critedge558.thread2645, %.critedge556.thread2642, %.critedge556, %.critedge556.thread, %bb.ho, %bb.hp, %.body.i955, %.critedge.thread2639, %.critedge, %.critedge.thread, %bb.dl, %bb.dm, %.body.i, %bb.nu, %bb.nv, %bb.it, %bb.hv, %bb.gl, %bb.cb, %bb.ad, %.thread2329, %bb.rq, %bb.jz, %.critedge558.thread, %.critedge558, %.loopexit.split-lp, %bb.dw
  %.sroa.0223.2 = phi i1 [ true, %bb.it ], [ true, %bb.dw ], [ true, %bb.nu ], [ true, %.loopexit.split-lp ], [ true, %.critedge.thread2639 ], [ true, %bb.jz ], [ true, %bb.hv ], [ false, %.critedge558.thread ], [ false, %.critedge558 ], [ true, %bb.rq ], [ false, %.critedge558.thread2645 ], [ true, %.thread2329 ], [ %.sroa.0223.3, %bb.ad ], [ true, %bb.cb ], [ true, %bb.gl ], [ true, %bb.nv ], [ true, %bb.dl ], [ true, %.body.i ], [ true, %bb.dm ], [ true, %.critedge.thread ], [ true, %.critedge ], [ true, %bb.ho ], [ true, %.body.i955 ], [ true, %bb.hp ], [ true, %.critedge556.thread ], [ true, %.critedge556 ], [ true, %.critedge556.thread2642 ], [ true, %bb.ro ], [ true, %.body.i1536 ], [ true, %bb.rp ], [ true, %.critedge566.thread ], [ true, %.critedge566 ], [ true, %.critedge566.thread2651 ], !dbg !141985
  %.pn530 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp2320, %bb.it ], [ %i.aki, %bb.dw ], [ %i.cps, %bb.nu ], [ %lpad.phi, %.loopexit.split-lp ], [ %lpad.thr_comm.split-lp2152, %.critedge.thread2639 ], [ %.pn4872314, %bb.jz ], [ %i.btu, %bb.hv ], [ %.pn4852299, %.critedge558.thread ], [ %eh.lpad-body5742305, %.critedge558 ], [ %i.dvw, %bb.rq ], [ %i.buh, %.critedge558.thread2645 ], [ %.pn475.pn, %.thread2329 ], [ %i.iw, %bb.ad ], [ %i.ahj, %bb.cb ], [ %i.bqe, %bb.gl ], [ %i.cps, %bb.nv ], [ %i.ajb, %bb.dl ], [ %eh.lpad-body.i, %.body.i ], [ %i.ajb, %bb.dm ], [ %.pn5242144, %.critedge.thread ], [ %eh.lpad-body5802150, %.critedge ], [ %i.brn, %bb.ho ], [ %eh.lpad-body.i956, %.body.i955 ], [ %i.brn, %bb.hp ], [ %.pn5032283, %.critedge556.thread ], [ %eh.lpad-body5772289, %.critedge556 ], [ %lpad.thr_comm.split-lp2291, %.critedge556.thread2642 ], [ %i.dvt, %bb.ro ], [ %eh.lpad-body.i1537, %.body.i1536 ], [ %i.dvt, %bb.rp ], [ %.pn4802629, %.critedge566.thread ], [ %eh.lpad-body2635, %.critedge566 ], [ %i.dve, %.critedge566.thread2651 ] ; 2 uses
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayxEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.fa) #49
          to label %bb.m unwind label %bb.dj, !dbg !141986

bb.ad:                                            ; preds = %.invoke4014, %.invoke4012, %.invoke4010, %.invoke, %bb.gm, %bb.cc, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayxENtB7_5Array17is_null_uncheckedCs1LHh8CLbVkQ_11polars_core.exit.thread, %bb.ac, %bb.ka, %bb.dz, %bb.ai
  %.sroa.0223.3 = phi i1 [ true, %.invoke4014 ], [ true, %.invoke ], [ true, %bb.cc ], [ true, %bb.ai ], [ false, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayxENtB7_5Array17is_null_uncheckedCs1LHh8CLbVkQ_11polars_core.exit.thread ], [ true, %bb.ac ], [ true, %bb.ka ], [ true, %bb.gm ], [ true, %bb.dz ], [ true, %.invoke4010 ], [ true, %.invoke4012 ], !dbg !141985
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %.critedge560

default.unreachable3834:                          ; preds = %bb.oa, %bb.kl, %bb.ec, %bb.an, %bb.ae
  unreachable

default.unreachable:                              ; preds = %.thread, %bb.z
  unreachable

bb.ae:                                            ; preds = %bb.z
  %i.ix = load i8, ptr %i.ii, align 2, !dbg !141980, !range !3609, !noundef !3448
  switch i8 %i.ix, label %default.unreachable3834 [
    i8 0, label %.invoke4014
    i8 1, label %bb.af
    i8 2, label %bb.ag
  ], !dbg !141981, !prof !3765

.thread:                                          ; preds = %bb.ab, %bb.z
  %.pr1997 = load i8, ptr %i.ii, align 2, !dbg !141980
  switch i8 %.pr1997, label %default.unreachable [
    i8 0, label %.invoke4014
    i8 1, label %..thread1998_crit_edge
    i8 2, label %bb.hs
  ], !dbg !141981, !prof !3766

..thread1998_crit_edge:                           ; preds = %.thread
  %.pre = load i64, ptr %.sroa.5.0..sroa_idx5.i625, align 8, !dbg !141987
  br label %.thread1998, !dbg !141981

bb.af:                                            ; preds = %bb.ae
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !141988
  %i.iz = load ptr, ptr %i.iy, align 8, !dbg !141988, !nonnull !3448, !noundef !3448 ; 19 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !141989
  %i.jb = load i64, ptr %i.ja, align 16, !dbg !141989, !noundef !3448
  %.not509 = icmp eq i64 %i.jb, 0, !dbg !141990
  br i1 %.not509, label %.invoke4012, label %bb.ah, !dbg !141990

bb.ag:                                            ; preds = %bb.ae
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !141991
  %i.jd = load ptr, ptr %i.jc, align 8, !dbg !141991, !nonnull !3448, !noundef !3448 ; 8 uses
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !141992
  %i.jf = load i64, ptr %i.je, align 16, !dbg !141992, !noundef !3448
  %.not489 = icmp eq i64 %i.jf, 0, !dbg !141993
  br i1 %.not489, label %.invoke4012, label %bb.dx, !dbg !141993

.invoke4014:                                      ; preds = %bb.ab, %bb.y, %bb.z, %bb.ae, %.thread
  %i.jg = phi ptr [ @41, %bb.z ], [ @41, %.thread ], [ @41, %bb.ae ], [ @27, %bb.y ], [ @27, %bb.ab ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jg) #48
          to label %.cont4015 unwind label %bb.ad, !dbg !140300

.cont4015:                                        ; preds = %.invoke4014
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !141994
  %i.ji = load ptr, ptr %i.jh, align 8, !dbg !141994, !nonnull !3448, !noundef !3448 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !141995
  %i.jk = load i64, ptr %i.jj, align 16, !dbg !141995, !noundef !3448
  %.not510 = icmp eq i64 %i.jk, 0, !dbg !141996
  br i1 %.not510, label %.invoke4012, label %bb.ai, !dbg !141996

bb.ai:                                            ; preds = %bb.ah
  %i.jl = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !141997, !noundef !3448 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn), !dbg !141998
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !141999
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.an, i64 noundef %i.jl, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %bb.aj unwind label %bb.ad, !dbg !141999

bb.aj:                                            ; preds = %bb.ai
  %i.jm = load i64, ptr %i.an, align 8, !dbg !141999, !range !3450, !noundef !3448
  %i.jn = trunc nuw i64 %i.jm to i1, !dbg !142000
  %i.jo = getelementptr inbounds nuw i8, ptr %i.an, i64 8, !dbg !142001
  %i.jp = load i64, ptr %i.jo, align 8, !dbg !142001, !range !3612, !noundef !3448 ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.an, i64 16, !dbg !142001 ; 2 uses
  br i1 %i.jn, label %bb.ak, label %bb.al, !dbg !142000, !prof !3502

bb.ak:                                            ; preds = %bb.aj
  %i.jr = load i64, ptr %i.jq, align 8, !dbg !142002
  br label %.invoke, !dbg !142003

bb.al:                                            ; preds = %bb.aj
  %i.js = load ptr, ptr %i.jq, align 8, !dbg !142004, !nonnull !3448, !noundef !3448 ; 19 uses
  %i.jt = icmp ule i64 %i.jl, %i.jp, !dbg !142005
  call void @llvm.assume(i1 %i.jt), !dbg !142006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !142007
  store i64 %i.jp, ptr %i.dn, align 8, !dbg !142008
  %i.ju = getelementptr inbounds nuw i8, ptr %i.dn, i64 8, !dbg !142008
  store ptr %i.js, ptr %i.ju, align 8, !dbg !142008
  %i.jv = getelementptr inbounds nuw i8, ptr %i.dn, i64 16, !dbg !142008 ; 2 uses
  store i64 0, ptr %i.jv, align 8, !dbg !142008
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ji, i64 16, !dbg !142009 ; 2 uses
  %i.jx = load i64, ptr %i.jw, align 8, !dbg !142009, !noundef !3448 ; 3 uses
  %i.jy = add i64 %i.jx, -1, !dbg !142010         ; 2 uses
  store i64 %i.jy, ptr %i.dm, align 8, !dbg !142010
  %i.jz = icmp eq i64 %i.jy, 1, !dbg !142011
  br i1 %i.jz, label %bb.an, label %bb.am, !dbg !142011, !prof !3552

bb.am:                                            ; preds = %bb.al
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @5, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #48
          to label %bb.l unwind label %bb.dw, !dbg !142012

bb.an:                                            ; preds = %bb.al
  %i.ka = getelementptr i8, ptr %i.ji, i64 8, !dbg !142013 ; 2 uses
  %i.kb = load ptr, ptr %i.ka, align 8, !dbg !142013, !nonnull !3448, !noundef !3448 ; 2 uses
  %i.kc = load i64, ptr %i.kb, align 8, !dbg !142014, !noundef !3448 ; 20 uses
  %.not.i631 = icmp ne i64 %i.jx, 0, !dbg !142015
  call void @llvm.assume(i1 %.not.i631), !dbg !142015
  %i.kd = getelementptr [8 x i8], ptr %i.kb, i64 %i.jx, !dbg !142016
  %i.ke = getelementptr i8, ptr %i.kd, i64 -8, !dbg !142016 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ke) ]
  %i.kf = load i64, ptr %i.ke, align 8, !dbg !142017, !noundef !3448
  %i.kg = sub i64 %i.kf, %i.kc, !dbg !142018      ; 21 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %1, i64 315, !dbg !142019
  %i.ki = load i8, ptr %i.kh, align 1, !dbg !142019, !range !3608, !noundef !3448
  switch i8 %i.ki, label %default.unreachable3834 [
    i8 0, label %bb.ao
    i8 1, label %bb.ap
    i8 2, label %bb.aq
    i8 3, label %bb.ar
    i8 4, label %bb.as
    i8 5, label %bb.at
  ], !dbg !142020

bb.ao:                                            ; preds = %bb.an
  %i.kj = getelementptr inbounds nuw i8, ptr %i.iz, i64 16, !dbg !142021
  %i.kk = load i64, ptr %i.kj, align 8, !dbg !142021, !noundef !3448 ; 2 uses
  %i.kl = icmp ult i64 %i.kk, 2, !dbg !142022
  br i1 %i.kl, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE22offset_and_length_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit, label %.lr.ph3383, !dbg !142022

.lr.ph3383:                                       ; preds = %bb.ao
  %i.km = getelementptr inbounds nuw i8, ptr %i.iz, i64 8, !dbg !142023
  %i.kn = load ptr, ptr %i.km, align 8, !dbg !142023, !noundef !3448
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.kp = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.kq = add i64 %i.kk, -2
  br label %bb.au, !dbg !142022

bb.ap:                                            ; preds = %bb.an
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !142024
  %i.ks = load i8, ptr %i.kr, align 8, !dbg !142024, !range !3607, !noundef !3448
  %i.kt = trunc nuw i8 %i.ks to i1, !dbg !142024
  %i.ku = getelementptr inbounds nuw i8, ptr %i.iz, i64 16, !dbg !142025
  %i.kv = load i64, ptr %i.ku, align 8, !dbg !142025, !noundef !3448 ; 3 uses
  %i.kw = icmp ult i64 %i.kv, 2, !dbg !142026     ; 2 uses
  br i1 %i.kt, label %bb.aw, label %bb.av, !dbg !142024

bb.aq:                                            ; preds = %bb.an
  %i.kx = getelementptr inbounds nuw i8, ptr %i.iz, i64 16, !dbg !142027
  %i.ky = load i64, ptr %i.kx, align 8, !dbg !142027, !noundef !3448 ; 2 uses
  %i.kz = icmp ult i64 %i.ky, 2, !dbg !142028
  br i1 %i.kz, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE22offset_and_length_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit, label %.lr.ph3359, !dbg !142028

.lr.ph3359:                                       ; preds = %bb.aq
  %i.la = getelementptr inbounds nuw i8, ptr %i.iz, i64 8, !dbg !142029
  %i.lb = load ptr, ptr %i.la, align 8, !dbg !142029, !noundef !3448
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ld = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.le = add i64 %i.ky, -2
  br label %bb.az, !dbg !142028

bb.ar:                                            ; preds = %bb.an
  %i.lf = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !142024
  %i.lg = load i8, ptr %i.lf, align 8, !dbg !142024, !range !3607, !noundef !3448
  %i.lh = trunc nuw i8 %i.lg to i1, !dbg !142024
  %i.li = getelementptr inbounds nuw i8, ptr %i.iz, i64 16, !dbg !142025
  %i.lj = load i64, ptr %i.li, align 8, !dbg !142025, !noundef !3448 ; 3 uses
  %i.lk = icmp ult i64 %i.lj, 2, !dbg !142026     ; 2 uses
  br i1 %i.lh, label %bb.bb, label %bb.ba, !dbg !142024

bb.as:                                            ; preds = %bb.an
  %i.ll = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !142024
  %i.lm = load i8, ptr %i.ll, align 8, !dbg !142024, !range !3607, !noundef !3448
  %i.ln = trunc nuw i8 %i.lm to i1, !dbg !142024
  %i.lo = getelementptr inbounds nuw i8, ptr %i.iz, i64 16, !dbg !142025
  %i.lp = load i64, ptr %i.lo, align 8, !dbg !142025, !noundef !3448 ; 3 uses
  %i.lq = icmp ult i64 %i.lp, 2, !dbg !142026     ; 2 uses
  br i1 %i.ln, label %bb.bk, label %bb.bj, !dbg !142024

bb.at:                                            ; preds = %bb.an
  %i.lr = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !142024
  %i.ls = load i8, ptr %i.lr, align 8, !dbg !142024, !range !3607, !noundef !3448
  %i.lt = trunc nuw i8 %i.ls to i1, !dbg !142024
  %i.lu = getelementptr inbounds nuw i8, ptr %i.iz, i64 16, !dbg !142025
  %i.lv = load i64, ptr %i.lu, align 8, !dbg !142025, !noundef !3448 ; 3 uses
  %i.lw = icmp ult i64 %i.lv, 2, !dbg !142026     ; 2 uses
  br i1 %i.lt, label %bb.bt, label %bb.bs, !dbg !142024

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph3378
  %lcmp.mod4432.not = icmp eq i64 %xtraiter4431, 0, !dbg !142030
  br i1 %lcmp.mod4432.not, label %.loopexit, label %.lr.ph3378.epil.preheader, !dbg !142030

.lr.ph3378.epil.preheader:                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph3378.preheader
  %.sroa.0350.03377.epil.init = phi i64 [ 0, %.lr.ph3378.preheader ], [ %i.on, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod4433 = trunc i64 %.sroa.0.0.i634 to i1, !dbg !142030
  call void @llvm.assume(i1 %lcmp.mod4433), !dbg !142030
  %i.lx = add nuw i64 %.sroa.0350.03377.epil.init, %.val1.i.i.i, !dbg !142031 ; 3 uses
  %i.ly = add nuw i64 %.sroa.0350.03377.epil.init, %i.kc, !dbg !142032 ; 2 uses
  %i.lz = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !142033, !noundef !3448
  %i.ma = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !142034, !noundef !3448
  %i.mb = icmp ult i64 %i.lx, %i.ma, !dbg !142035
  call void @llvm.assume(i1 %i.mb), !dbg !142036
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %i.lx, !dbg !142037
  %i.md = load i64, ptr %i.mc, align 8, !dbg !142038, !noundef !3448
  %i.me = load ptr, ptr %.sroa.4.0..sroa_idx.i624, align 8, !dbg !142039, !noundef !3448
  %i.mf = load i64, ptr %.sroa.5.0..sroa_idx5.i625, align 8, !dbg !142040, !noundef !3448
  %i.mg = icmp ult i64 %i.ly, %i.mf, !dbg !142041
  call void @llvm.assume(i1 %i.mg), !dbg !142042
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.me, i64 %i.ly, !dbg !142043
  %i.mi = load i64, ptr %i.mh, align 8, !dbg !142044, !noundef !3448
  %i.mj = add i64 %i.mi, %i.md, !dbg !142045
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %i.lx, !dbg !142046
  store i64 %i.mj, ptr %i.mk, align 8, !dbg !142047
  br label %.loopexit, !dbg !142022

.loopexit:                                        ; preds = %.lr.ph3378.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.au
  %exitcond3651 = icmp eq i64 %.sroa.10.03379, %i.kq, !dbg !142022
  br i1 %exitcond3651, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE22offset_and_length_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit, label %bb.au, !dbg !142022

bb.au:                                            ; preds = %.lr.ph3383, %.loopexit
  %.sroa.067.03382 = phi i64 [ 0, %.lr.ph3383 ], [ %spec.select, %.loopexit ] ; 2 uses
  %.sroa.01683.03381 = phi ptr [ %i.kn, %.lr.ph3383 ], [ %i.ml, %.loopexit ] ; 3 uses
  %.sroa.10.03379 = phi i64 [ 0, %.lr.ph3383 ], [ %i.mn, %.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01683.03381) ]
  %i.ml = getelementptr inbounds nuw i8, ptr %.sroa.01683.03381, i64 8, !dbg !142048 ; 2 uses
  %.val1.i.i.i = load i64, ptr %.sroa.01683.03381, align 8, !dbg !142049, !alias.scope !139757, !noalias !139758, !noundef !3448 ; 4 uses
  %.val.i.i.i = load i64, ptr %i.ml, align 8, !dbg !142050, !alias.scope !139757, !noalias !139758, !noundef !3448
  %i.mm = sub i64 %.val.i.i.i, %.val1.i.i.i, !dbg !142051 ; 2 uses
  %i.mn = add nuw i64 %.sroa.10.03379, 1, !dbg !142052
  %i.mo = icmp eq i64 %i.mm, %i.kg, !dbg !142053
  %i.mp = icmp eq i64 %.sroa.067.03382, %.sroa.10.03379, !dbg !142054
  %i.mq = and i1 %i.mp, %i.mo, !dbg !142055
  %i.mr = load ptr, ptr %i.ko, align 16, !dbg !142056, !nonnull !3448, !noundef !3448 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 40, !dbg !142057
  %i.mt = load i64, ptr %i.ms, align 8, !dbg !142057, !noundef !3448
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mr, i64 32, !dbg !142058
  %i.mv = load ptr, ptr %i.mu, align 8, !dbg !142058, !noundef !3448
  %i.mw = load i64, ptr %i.kp, align 8, !dbg !142059, !noundef !3448
  %i.mx = add i64 %i.mw, %.sroa.10.03379, !dbg !142059 ; 2 uses
  %i.my = lshr i64 %i.mx, 3, !dbg !142060         ; 2 uses
  %i.mz = icmp ult i64 %i.my, %i.mt, !dbg !142061
  call void @llvm.assume(i1 %i.mz), !dbg !142062
  %i.na = getelementptr inbounds nuw i8, ptr %i.mv, i64 %i.my, !dbg !142063
  %i.nb = load i8, ptr %i.na, align 1, !dbg !142064, !noundef !3448
  %i.nc = trunc i64 %i.mx to i8, !dbg !142065
  %i.nd = and i8 %i.nc, 7, !dbg !142065
  %i.ne = shl nuw i8 1, %i.nd, !dbg !142066
  %i.nf = and i8 %i.ne, %i.nb, !dbg !142066
  %.not527 = icmp eq i8 %i.nf, 0, !dbg !142066
  %i.ng = or i1 %i.mq, %.not527, !dbg !142055
  %i.nh = zext i1 %i.ng to i64, !dbg !142055
  %spec.select = add i64 %.sroa.067.03382, %i.nh, !dbg !142055 ; 2 uses
  %.sroa.0.0.i634 = call noundef i64 @llvm.umin.i64(i64 %i.kg, i64 %i.mm), !dbg !142067 ; 5 uses
  %.not3405 = icmp eq i64 %.sroa.0.0.i634, 0, !dbg !142068
  br i1 %.not3405, label %.loopexit, label %.lr.ph3378.preheader, !dbg !142030

.lr.ph3378.preheader:                             ; preds = %bb.au
  %xtraiter4431 = and i64 %.sroa.0.0.i634, 1, !dbg !142030
  %i.ni = icmp eq i64 %.sroa.0.0.i634, 1, !dbg !142030
  br i1 %i.ni, label %.lr.ph3378.epil.preheader, label %.lr.ph3378.preheader.new, !dbg !142030

.lr.ph3378.preheader.new:                         ; preds = %.lr.ph3378.preheader
  %unroll_iter4434 = and i64 %.sroa.0.0.i634, -2, !dbg !142030
  br label %.lr.ph3378, !dbg !142030

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE22offset_and_length_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %.loopexit2700, %.loopexit2698, %.loopexit2696, %.loopexit2694, %.loopexit2692, %.loopexit2690, %.loopexit2688, %.loopexit2686, %.loopexit2684, %.loopexit, %bb.bs, %bb.bt, %bb.bj, %bb.bk, %bb.ba, %bb.bb, %bb.aq, %bb.av, %bb.aw, %bb.ao
  %.sroa.067.1 = phi i64 [ %spec.select538, %.loopexit2692 ], [ %spec.select536, %.loopexit2684 ], [ %spec.select540, %.loopexit2696 ], [ %spec.select, %.loopexit ], [ %spec.select539, %.loopexit2690 ], [ %spec.select535, %.loopexit2686 ], [ %spec.select541, %.loopexit2694 ], [ %spec.select537, %.loopexit2688 ], [ %spec.select543, %.loopexit2698 ], [ 0, %bb.ao ], [ 0, %bb.aw ], [ 0, %bb.av ], [ 0, %bb.aq ], [ 0, %bb.bb ], [ 0, %bb.ba ], [ 0, %bb.bk ], [ 0, %bb.bj ], [ 0, %bb.bt ], [ 0, %bb.bs ], [ %spec.select542, %.loopexit2700 ], !dbg !142069
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl), !dbg !140210
  %i.nj = getelementptr i8, ptr %i.iz, i64 8, !dbg !140210
  %.val607 = load ptr, ptr %i.nj, align 8, !dbg !140210
  %i.nk = getelementptr i8, ptr %i.iz, i64 16, !dbg !140210
  %.val608 = load i64, ptr %i.nk, align 8, !dbg !140210, !noundef !3448
  %.val609 = load ptr, ptr %i.ka, align 8, !dbg !140210
  %.val610 = load i64, ptr %i.jw, align 8, !dbg !140210
  invoke fastcc void @_RNvNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB4_19ListNumericOpHelper12__finish_impl18check_mismatch_pos(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.dl, i64 noundef %.sroa.067.1, ptr %.val607, i64 %.val608, ptr %.val609, i64 %.val610)
          to label %bb.bz unwind label %bb.dw, !dbg !140210

.lr.ph3378:                                       ; preds = %.lr.ph3378, %.lr.ph3378.preheader.new
  %.sroa.0350.03377 = phi i64 [ 0, %.lr.ph3378.preheader.new ], [ %i.on, %.lr.ph3378 ] ; 4 uses
  %niter4435 = phi i64 [ 0, %.lr.ph3378.preheader.new ], [ %niter4435.next.1, %.lr.ph3378 ]
  %i.nl = add nuw i64 %.sroa.0350.03377, %.val1.i.i.i, !dbg !142031 ; 3 uses
  %i.nm = add nuw i64 %.sroa.0350.03377, %i.kc, !dbg !142032 ; 2 uses
  %i.nn = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !142033, !noundef !3448
  %i.no = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !142034, !noundef !3448
  %i.np = icmp ult i64 %i.nl, %i.no, !dbg !142035
  call void @llvm.assume(i1 %i.np), !dbg !142036
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.nn, i64 %i.nl, !dbg !142037
  %i.nr = load i64, ptr %i.nq, align 8, !dbg !142038, !noundef !3448
  %i.ns = load ptr, ptr %.sroa.4.0..sroa_idx.i624, align 8, !dbg !142039, !noundef !3448
  %i.nt = load i64, ptr %.sroa.5.0..sroa_idx5.i625, align 8, !dbg !142040, !noundef !3448
  %i.nu = icmp ult i64 %i.nm, %i.nt, !dbg !142041
  call void @llvm.assume(i1 %i.nu), !dbg !142042
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.ns, i64 %i.nm, !dbg !142043
  %i.nw = load i64, ptr %i.nv, align 8, !dbg !142044, !noundef !3448
  %i.nx = add i64 %i.nw, %i.nr, !dbg !142045
  %i.ny = or disjoint i64 %.sroa.0350.03377, 1, !dbg !142070 ; 2 uses
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %i.nl, !dbg !142046
  store i64 %i.nx, ptr %i.nz, align 8, !dbg !142047
  %i.oa = add nuw i64 %i.ny, %.val1.i.i.i, !dbg !142031 ; 3 uses
  %i.ob = add nuw i64 %i.ny, %i.kc, !dbg !142032  ; 2 uses
  %i.oc = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !142033, !noundef !3448
  %i.od = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !142034, !noundef !3448
  %i.oe = icmp ult i64 %i.oa, %i.od, !dbg !142035
  call void @llvm.assume(i1 %i.oe), !dbg !142036
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %i.oc, i64 %i.oa, !dbg !142037
  %i.og = load i64, ptr %i.of, align 8, !dbg !142038, !noundef !3448
  %i.oh = load ptr, ptr %.sroa.4.0..sroa_idx.i624, align 8, !dbg !142039, !noundef !3448
  %i.oi = load i64, ptr %.sroa.5.0..sroa_idx5.i625, align 8, !dbg !142040, !noundef !3448
  %i.oj = icmp ult i64 %i.ob, %i.oi, !dbg !142041
  call void @llvm.assume(i1 %i.oj), !dbg !142042
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %i.oh, i64 %i.ob, !dbg !142043
end_hunk_11
begin_hunk_12_@_RINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB3_19ListNumericOpHelper12__finish_implNtNtBb_9datatypes9UInt8TypeEBb_:bb.a
bb.s:                                             ; preds = %.noexc640
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hl, i64 24, !dbg !149111
  %i.hv = atomicrmw add ptr %i.hu, i64 1 monotonic, align 8, !dbg !149112, !noalias !146792 ; 0 uses
  br label %bb.r, !dbg !149113

bb.t:                                             ; preds = %bb.r
  %i.hw = load i64, ptr %i.ht, align 8, !dbg !149114, !range !3591, !noalias !146793, !noundef !3448
  %i.hx = icmp eq i64 %i.hw, 3, !dbg !149115
  br i1 %i.hx, label %bb.v, label %bb.u, !dbg !149115

bb.u:                                             ; preds = %bb.t
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ht, i64 24, !dbg !149116
  %i.hz = atomicrmw add ptr %i.hy, i64 1 monotonic, align 8, !dbg !149117, !noalias !146793 ; 0 uses
  br label %bb.v, !dbg !149118

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hj, i64 64, !dbg !149119
  %i.ib = load <2 x i64>, ptr %i.ia, align 8, !dbg !149119, !noalias !146793
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hj, i64 80, !dbg !149120
  %i.id = load atomic i64, ptr %i.ic monotonic, align 8, !dbg !149121, !noalias !146793
  br label %bb.w, !dbg !149122

bb.w:                                             ; preds = %bb.v, %bb.r
  %.sroa.5.sroa.5.0.i632 = phi i64 [ undef, %bb.r ], [ %i.id, %bb.v ], !dbg !149123
  %i.ie = phi <2 x i64> [ undef, %bb.r ], [ %i.ib, %bb.v ], !dbg !149123
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.fa, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 32, i1 false), !dbg !149124
  %i.if = getelementptr inbounds nuw i8, ptr %i.fa, i64 32, !dbg !149124 ; 7 uses
  store ptr %i.hl, ptr %i.if, align 8, !dbg !149124, !alias.scope !146792
  %.sroa.4.0..sroa_idx.i635 = getelementptr inbounds nuw i8, ptr %i.fa, i64 40, !dbg !149124 ; 58 uses
  store ptr %i.hp, ptr %.sroa.4.0..sroa_idx.i635, align 8, !dbg !149124, !alias.scope !146792
  %.sroa.5.0..sroa_idx5.i636 = getelementptr inbounds nuw i8, ptr %i.fa, i64 48, !dbg !149124 ; 58 uses
  store i64 %i.hr, ptr %.sroa.5.0..sroa_idx5.i636, align 8, !dbg !149124, !alias.scope !146792
  %i.ig = getelementptr inbounds nuw i8, ptr %i.fa, i64 56, !dbg !149124 ; 22 uses
  store ptr %i.ht, ptr %i.ig, align 8, !dbg !149124, !alias.scope !146792
  %.sroa.5.0..sroa_idx.i637 = getelementptr inbounds nuw i8, ptr %i.fa, i64 64, !dbg !149124 ; 2 uses
  store <2 x i64> %i.ie, ptr %.sroa.5.0..sroa_idx.i637, align 8, !dbg !149124, !alias.scope !146792
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i639 = getelementptr inbounds nuw i8, ptr %i.fa, i64 80, !dbg !149124
  store i64 %.sroa.5.sroa.5.0.i632, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i639, align 8, !dbg !149124, !alias.scope !146792
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !149125, !noalias !146792
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 313, !dbg !149126 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 314, !dbg !149127 ; 3 uses
  %i.ij = load i8, ptr %i.ih, align 1, !dbg !149128, !range !3609, !noundef !3448
  %i.ik = icmp eq i8 %i.ij, 1, !dbg !149129
  br i1 %i.ik, label %bb.x, label %bb.y, !dbg !149129

bb.x:                                             ; preds = %bb.w
  %i.il = load i8, ptr %i.ii, align 2, !dbg !149128, !range !3609, !noundef !3448 ; 2 uses
  %i.im = icmp eq i8 %i.il, 1, !dbg !149129
  br i1 %i.im, label %.thread1909, label %bb.aa, !dbg !149129

bb.y:                                             ; preds = %bb.w
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 288, !dbg !149130
  %i.io = load ptr, ptr %i.in, align 16, !dbg !149130, !noundef !3448
  %.not467 = icmp eq ptr %i.io, null, !dbg !149130
  br i1 %.not467, label %bb.ac, label %.invoke3845, !dbg !149131, !prof !3552

bb.z:                                             ; preds = %bb.ac
  %.pr.pre = load i8, ptr %i.ih, align 1, !dbg !149132
  switch i8 %.pr.pre, label %default.unreachable [
    i8 0, label %bb.ae
    i8 1, label %.thread
    i8 2, label %.invoke3845
  ], !dbg !149133, !prof !3764

bb.aa:                                            ; preds = %bb.x
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 288, !dbg !149130
  %i.iq = load ptr, ptr %i.ip, align 16, !dbg !149130, !noundef !3448
  %.not468 = icmp eq ptr %i.iq, null, !dbg !149130
  br i1 %.not468, label %bb.ac, label %bb.ab, !dbg !149131

bb.ab:                                            ; preds = %bb.aa
  %i.ir = icmp eq i8 %i.il, 2, !dbg !149129
  br i1 %i.ir, label %.thread, label %.invoke3845, !dbg !149129, !prof !3552

bb.ac:                                            ; preds = %bb.aa, %bb.y
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 315, !dbg !149134
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !149135
  %i.iu = load i8, ptr %i.it, align 8, !dbg !149135, !range !3607, !noundef !3448
  %i.iv = trunc nuw i8 %i.iu to i1, !dbg !149135
  %.val609 = load i8, ptr %i.is, align 1, !dbg !149136, !range !3608, !noundef !3448
  invoke fastcc void @_RINvMNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic10list_utilsNtB3_9NumericOp34prepare_numeric_op_side_validitiesNtNtB9_9datatypes9UInt8TypeEB9_(i8 %.val609, ptr noalias noundef align 8 dereferenceable(88) %i.fc, ptr noalias noundef align 8 dereferenceable(88) %i.fa, i1 noundef zeroext %i.iv)
          to label %bb.z unwind label %bb.ad, !dbg !149136

.critedge560:                                     ; preds = %.critedge566.thread2562, %.critedge566, %.critedge566.thread, %bb.qs, %bb.qt, %.body.i1451, %.critedge558.thread2556, %.critedge556.thread2553, %.critedge556, %.critedge556.thread, %bb.gx, %bb.gy, %.body.i925, %.critedge.thread2550, %.critedge, %.critedge.thread, %bb.dd, %bb.de, %.body.i, %bb.mx, %bb.my, %bb.ib, %bb.hd, %bb.fu, %bb.bt, %bb.ad, %.thread2240, %bb.qu, %bb.jh, %.critedge558.thread, %.critedge558, %.loopexit.split-lp, %bb.dn
  %.sroa.0223.2 = phi i1 [ true, %bb.ib ], [ true, %bb.dn ], [ true, %bb.mx ], [ true, %.loopexit.split-lp ], [ true, %.critedge.thread2550 ], [ true, %bb.jh ], [ true, %bb.hd ], [ false, %.critedge558.thread ], [ false, %.critedge558 ], [ true, %bb.qu ], [ false, %.critedge558.thread2556 ], [ true, %.thread2240 ], [ %.sroa.0223.3, %bb.ad ], [ true, %bb.bt ], [ true, %bb.fu ], [ true, %bb.my ], [ true, %bb.dd ], [ true, %.body.i ], [ true, %bb.de ], [ true, %.critedge.thread ], [ true, %.critedge ], [ true, %bb.gx ], [ true, %.body.i925 ], [ true, %bb.gy ], [ true, %.critedge556.thread ], [ true, %.critedge556 ], [ true, %.critedge556.thread2553 ], [ true, %bb.qs ], [ true, %.body.i1451 ], [ true, %bb.qt ], [ true, %.critedge566.thread ], [ true, %.critedge566 ], [ true, %.critedge566.thread2562 ], !dbg !149137
  %.pn530 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp2231, %bb.ib ], [ %i.ajc, %bb.dn ], [ %i.cob, %bb.mx ], [ %lpad.phi, %.loopexit.split-lp ], [ %lpad.thr_comm.split-lp2063, %.critedge.thread2550 ], [ %.pn4872225, %bb.jh ], [ %i.bri, %bb.hd ], [ %.pn4852210, %.critedge558.thread ], [ %eh.lpad-body5742216, %.critedge558 ], [ %i.dtf, %bb.qu ], [ %i.brv, %.critedge558.thread2556 ], [ %.pn475.pn, %.thread2240 ], [ %i.iw, %bb.ad ], [ %i.agk, %bb.bt ], [ %i.bnz, %bb.fu ], [ %i.cob, %bb.my ], [ %i.aic, %bb.dd ], [ %eh.lpad-body.i, %.body.i ], [ %i.aic, %bb.de ], [ %.pn5242055, %.critedge.thread ], [ %eh.lpad-body5802061, %.critedge ], [ %i.bpi, %bb.gx ], [ %eh.lpad-body.i926, %.body.i925 ], [ %i.bpi, %bb.gy ], [ %.pn5032194, %.critedge556.thread ], [ %eh.lpad-body5772200, %.critedge556 ], [ %lpad.thr_comm.split-lp2202, %.critedge556.thread2553 ], [ %i.dtc, %bb.qs ], [ %eh.lpad-body.i1452, %.body.i1451 ], [ %i.dtc, %bb.qt ], [ %.pn4802540, %.critedge566.thread ], [ %eh.lpad-body2546, %.critedge566 ], [ %i.dsn, %.critedge566.thread2562 ] ; 2 uses
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.fa) #49
          to label %bb.m unwind label %bb.db, !dbg !149138

bb.ad:                                            ; preds = %.invoke3845, %.invoke3843, %.invoke3841, %.invoke, %bb.fv, %bb.bu, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array17is_null_uncheckedCs1LHh8CLbVkQ_11polars_core.exit.thread, %bb.ac, %bb.ji, %bb.dq, %bb.ai
  %.sroa.0223.3 = phi i1 [ true, %.invoke3845 ], [ true, %.invoke ], [ true, %bb.bu ], [ true, %bb.ai ], [ false, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array17is_null_uncheckedCs1LHh8CLbVkQ_11polars_core.exit.thread ], [ true, %bb.ac ], [ true, %bb.ji ], [ true, %bb.fv ], [ true, %bb.dq ], [ true, %.invoke3841 ], [ true, %.invoke3843 ], !dbg !149137
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %.critedge560

default.unreachable3670:                          ; preds = %bb.nd, %bb.jt, %bb.dt, %bb.an, %bb.ae
  unreachable

default.unreachable:                              ; preds = %.thread, %bb.z
  unreachable

bb.ae:                                            ; preds = %bb.z
  %i.ix = load i8, ptr %i.ii, align 2, !dbg !149132, !range !3609, !noundef !3448
  switch i8 %i.ix, label %default.unreachable3670 [
    i8 0, label %.invoke3845
    i8 1, label %bb.af
    i8 2, label %bb.ag
  ], !dbg !149133, !prof !3765

.thread:                                          ; preds = %bb.ab, %bb.z
  %.pr1908 = load i8, ptr %i.ii, align 2, !dbg !149132
  switch i8 %.pr1908, label %default.unreachable [
    i8 0, label %.invoke3845
    i8 1, label %..thread1909_crit_edge
    i8 2, label %bb.ha
  ], !dbg !149133, !prof !3766

..thread1909_crit_edge:                           ; preds = %.thread
  %.pre = load i64, ptr %.sroa.5.0..sroa_idx5.i636, align 8, !dbg !149139
  br label %.thread1909, !dbg !149133

bb.af:                                            ; preds = %bb.ae
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !149140
  %i.iz = load ptr, ptr %i.iy, align 8, !dbg !149140, !nonnull !3448, !noundef !3448 ; 19 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !149141
  %i.jb = load i64, ptr %i.ja, align 16, !dbg !149141, !noundef !3448
  %.not509 = icmp eq i64 %i.jb, 0, !dbg !149142
  br i1 %.not509, label %.invoke3843, label %bb.ah, !dbg !149142

bb.ag:                                            ; preds = %bb.ae
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !149143
  %i.jd = load ptr, ptr %i.jc, align 8, !dbg !149143, !nonnull !3448, !noundef !3448 ; 8 uses
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !149144
  %i.jf = load i64, ptr %i.je, align 16, !dbg !149144, !noundef !3448
  %.not489 = icmp eq i64 %i.jf, 0, !dbg !149145
  br i1 %.not489, label %.invoke3843, label %bb.do, !dbg !149145

.invoke3845:                                      ; preds = %bb.ab, %bb.y, %bb.z, %bb.ae, %.thread
  %i.jg = phi ptr [ @41, %bb.z ], [ @41, %.thread ], [ @41, %bb.ae ], [ @27, %bb.y ], [ @27, %bb.ab ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jg) #48
          to label %.cont3846 unwind label %bb.ad, !dbg !147446

.cont3846:                                        ; preds = %.invoke3845
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !149146
  %i.ji = load ptr, ptr %i.jh, align 8, !dbg !149146, !nonnull !3448, !noundef !3448 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !149147
  %i.jk = load i64, ptr %i.jj, align 16, !dbg !149147, !noundef !3448
  %.not510 = icmp eq i64 %i.jk, 0, !dbg !149148
  br i1 %.not510, label %.invoke3843, label %bb.ai, !dbg !149148

bb.ai:                                            ; preds = %bb.ah
  %i.jl = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !149149, !noundef !3448 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn), !dbg !149150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !149151
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.an, i64 noundef %i.jl, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.aj unwind label %bb.ad, !dbg !149151

bb.aj:                                            ; preds = %bb.ai
  %i.jm = load i64, ptr %i.an, align 8, !dbg !149151, !range !3450, !noundef !3448
  %i.jn = trunc nuw i64 %i.jm to i1, !dbg !149152
  %i.jo = getelementptr inbounds nuw i8, ptr %i.an, i64 8, !dbg !149153
  %i.jp = load i64, ptr %i.jo, align 8, !dbg !149153, !range !3612, !noundef !3448 ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.an, i64 16, !dbg !149153 ; 2 uses
  br i1 %i.jn, label %bb.ak, label %bb.al, !dbg !149152, !prof !3502

bb.ak:                                            ; preds = %bb.aj
  %i.jr = load i64, ptr %i.jq, align 8, !dbg !149154
  br label %.invoke, !dbg !149155

bb.al:                                            ; preds = %bb.aj
  %i.js = load ptr, ptr %i.jq, align 8, !dbg !149156, !nonnull !3448, !noundef !3448 ; 19 uses
  %i.jt = icmp ule i64 %i.jl, %i.jp, !dbg !149157
  call void @llvm.assume(i1 %i.jt), !dbg !149158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !149159
  store i64 %i.jp, ptr %i.dn, align 8, !dbg !149160
  %i.ju = getelementptr inbounds nuw i8, ptr %i.dn, i64 8, !dbg !149160
  store ptr %i.js, ptr %i.ju, align 8, !dbg !149160
  %i.jv = getelementptr inbounds nuw i8, ptr %i.dn, i64 16, !dbg !149160 ; 2 uses
  store i64 0, ptr %i.jv, align 8, !dbg !149160
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ji, i64 16, !dbg !149161 ; 2 uses
  %i.jx = load i64, ptr %i.jw, align 8, !dbg !149161, !noundef !3448 ; 3 uses
  %i.jy = add i64 %i.jx, -1, !dbg !149162         ; 2 uses
  store i64 %i.jy, ptr %i.dm, align 8, !dbg !149162
  %i.jz = icmp eq i64 %i.jy, 1, !dbg !149163
  br i1 %i.jz, label %bb.an, label %bb.am, !dbg !149163, !prof !3552

bb.am:                                            ; preds = %bb.al
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @5, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #48
          to label %bb.l unwind label %bb.dn, !dbg !149164

bb.an:                                            ; preds = %bb.al
  %i.ka = getelementptr i8, ptr %i.ji, i64 8, !dbg !149165 ; 2 uses
  %i.kb = load ptr, ptr %i.ka, align 8, !dbg !149165, !nonnull !3448, !noundef !3448 ; 2 uses
  %i.kc = load i64, ptr %i.kb, align 8, !dbg !149166, !noundef !3448 ; 20 uses
  %.not.i642 = icmp ne i64 %i.jx, 0, !dbg !149167
  call void @llvm.assume(i1 %.not.i642), !dbg !149167
  %i.kd = getelementptr [8 x i8], ptr %i.kb, i64 %i.jx, !dbg !149168
  %i.ke = getelementptr i8, ptr %i.kd, i64 -8, !dbg !149168 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ke) ]
  %i.kf = load i64, ptr %i.ke, align 8, !dbg !149169, !noundef !3448
  %i.kg = sub i64 %i.kf, %i.kc, !dbg !149170      ; 21 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %1, i64 315, !dbg !149171
  %i.ki = load i8, ptr %i.kh, align 1, !dbg !149171, !range !3608, !noundef !3448
  switch i8 %i.ki, label %default.unreachable3670 [
    i8 0, label %bb.ao
    i8 1, label %bb.ap
    i8 2, label %bb.aq
    i8 3, label %bb.ar
    i8 4, label %bb.as
    i8 5, label %bb.at
  ], !dbg !149172

bb.ao:                                            ; preds = %bb.an
  %i.kj = getelementptr inbounds nuw i8, ptr %i.iz, i64 16, !dbg !149173
  %i.kk = load i64, ptr %i.kj, align 8, !dbg !149173, !noundef !3448 ; 2 uses
  %i.kl = icmp ult i64 %i.kk, 2, !dbg !149174
  br i1 %i.kl, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE22offset_and_length_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit, label %.lr.ph3237, !dbg !149174

.lr.ph3237:                                       ; preds = %bb.ao
  %i.km = getelementptr inbounds nuw i8, ptr %i.iz, i64 8, !dbg !149175
  %i.kn = load ptr, ptr %i.km, align 8, !dbg !149175, !noundef !3448
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.kp = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.kq = add i64 %i.kk, -2
  br label %bb.au, !dbg !149174

bb.ap:                                            ; preds = %bb.an
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !149176
  %i.ks = load i8, ptr %i.kr, align 8, !dbg !149176, !range !3607, !noundef !3448
  %i.kt = trunc nuw i8 %i.ks to i1, !dbg !149176
  %i.ku = getelementptr inbounds nuw i8, ptr %i.iz, i64 16, !dbg !149177
  %i.kv = load i64, ptr %i.ku, align 8, !dbg !149177, !noundef !3448 ; 3 uses
  %i.kw = icmp ult i64 %i.kv, 2, !dbg !149178     ; 2 uses
  br i1 %i.kt, label %bb.aw, label %bb.av, !dbg !149176

bb.aq:                                            ; preds = %bb.an
  %i.kx = getelementptr inbounds nuw i8, ptr %i.iz, i64 16, !dbg !149179
  %i.ky = load i64, ptr %i.kx, align 8, !dbg !149179, !noundef !3448 ; 2 uses
  %i.kz = icmp ult i64 %i.ky, 2, !dbg !149180
  br i1 %i.kz, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE22offset_and_length_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit, label %.lr.ph3213, !dbg !149180

.lr.ph3213:                                       ; preds = %bb.aq
  %i.la = getelementptr inbounds nuw i8, ptr %i.iz, i64 8, !dbg !149181
  %i.lb = load ptr, ptr %i.la, align 8, !dbg !149181, !noundef !3448
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ld = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.le = add i64 %i.ky, -2
  br label %bb.az, !dbg !149180

bb.ar:                                            ; preds = %bb.an
  %i.lf = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !149176
  %i.lg = load i8, ptr %i.lf, align 8, !dbg !149176, !range !3607, !noundef !3448
  %i.lh = trunc nuw i8 %i.lg to i1, !dbg !149176
  %i.li = getelementptr inbounds nuw i8, ptr %i.iz, i64 16, !dbg !149177
  %i.lj = load i64, ptr %i.li, align 8, !dbg !149177, !noundef !3448 ; 3 uses
  %i.lk = icmp ult i64 %i.lj, 2, !dbg !149178     ; 2 uses
  br i1 %i.lh, label %bb.bb, label %bb.ba, !dbg !149176

bb.as:                                            ; preds = %bb.an
  %i.ll = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !149176
  %i.lm = load i8, ptr %i.ll, align 8, !dbg !149176, !range !3607, !noundef !3448
  %i.ln = trunc nuw i8 %i.lm to i1, !dbg !149176
  %i.lo = getelementptr inbounds nuw i8, ptr %i.iz, i64 16, !dbg !149177
  %i.lp = load i64, ptr %i.lo, align 8, !dbg !149177, !noundef !3448 ; 3 uses
  %i.lq = icmp ult i64 %i.lp, 2, !dbg !149178     ; 2 uses
  br i1 %i.ln, label %bb.bh, label %bb.bg, !dbg !149176

bb.at:                                            ; preds = %bb.an
  %i.lr = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !149176
  %i.ls = load i8, ptr %i.lr, align 8, !dbg !149176, !range !3607, !noundef !3448
  %i.lt = trunc nuw i8 %i.ls to i1, !dbg !149176
  %i.lu = getelementptr inbounds nuw i8, ptr %i.iz, i64 16, !dbg !149177
  %i.lv = load i64, ptr %i.lu, align 8, !dbg !149177, !noundef !3448 ; 3 uses
  %i.lw = icmp ult i64 %i.lv, 2, !dbg !149178     ; 2 uses
  br i1 %i.lt, label %bb.bn, label %bb.bm, !dbg !149176

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph3232
  %lcmp.mod4595.not = icmp eq i64 %xtraiter4594, 0, !dbg !149182
  br i1 %lcmp.mod4595.not, label %.loopexit, label %.lr.ph3232.epil.preheader, !dbg !149182

.lr.ph3232.epil.preheader:                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph3232.preheader
  %.sroa.0350.03231.epil.init = phi i64 [ 0, %.lr.ph3232.preheader ], [ %i.on, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod4596 = trunc i64 %.sroa.0.0.i645 to i1, !dbg !149182
  call void @llvm.assume(i1 %lcmp.mod4596), !dbg !149182
  %i.lx = add nuw i64 %.sroa.0350.03231.epil.init, %.val1.i.i.i, !dbg !149183 ; 3 uses
  %i.ly = add nuw i64 %.sroa.0350.03231.epil.init, %i.kc, !dbg !149184 ; 2 uses
  %i.lz = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !149185, !noundef !3448
  %i.ma = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !149186, !noundef !3448
  %i.mb = icmp ult i64 %i.lx, %i.ma, !dbg !149187
  call void @llvm.assume(i1 %i.mb), !dbg !149188
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.lx, !dbg !149189
  %i.md = load i8, ptr %i.mc, align 1, !dbg !149190, !noundef !3448
  %i.me = load ptr, ptr %.sroa.4.0..sroa_idx.i635, align 8, !dbg !149191, !noundef !3448
  %i.mf = load i64, ptr %.sroa.5.0..sroa_idx5.i636, align 8, !dbg !149192, !noundef !3448
  %i.mg = icmp ult i64 %i.ly, %i.mf, !dbg !149193
  call void @llvm.assume(i1 %i.mg), !dbg !149194
  %i.mh = getelementptr inbounds nuw i8, ptr %i.me, i64 %i.ly, !dbg !149195
  %i.mi = load i8, ptr %i.mh, align 1, !dbg !149196, !noundef !3448
  %i.mj = add i8 %i.mi, %i.md, !dbg !149197
  %i.mk = getelementptr inbounds nuw i8, ptr %i.js, i64 %i.lx, !dbg !149198
  store i8 %i.mj, ptr %i.mk, align 1, !dbg !149199
  br label %.loopexit, !dbg !149174

.loopexit:                                        ; preds = %.lr.ph3232.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.au
  %exitcond3489 = icmp eq i64 %.sroa.10.03233, %i.kq, !dbg !149174
  br i1 %exitcond3489, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE22offset_and_length_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit, label %bb.au, !dbg !149174

bb.au:                                            ; preds = %.lr.ph3237, %.loopexit
  %.sroa.067.03236 = phi i64 [ 0, %.lr.ph3237 ], [ %spec.select, %.loopexit ] ; 2 uses
  %.sroa.01594.03235 = phi ptr [ %i.kn, %.lr.ph3237 ], [ %i.ml, %.loopexit ] ; 3 uses
  %.sroa.10.03233 = phi i64 [ 0, %.lr.ph3237 ], [ %i.mn, %.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01594.03235) ]
  %i.ml = getelementptr inbounds nuw i8, ptr %.sroa.01594.03235, i64 8, !dbg !149200 ; 2 uses
  %.val1.i.i.i = load i64, ptr %.sroa.01594.03235, align 8, !dbg !149201, !alias.scope !146903, !noalias !146904, !noundef !3448 ; 4 uses
  %.val.i.i.i = load i64, ptr %i.ml, align 8, !dbg !149202, !alias.scope !146903, !noalias !146904, !noundef !3448
  %i.mm = sub i64 %.val.i.i.i, %.val1.i.i.i, !dbg !149203 ; 2 uses
  %i.mn = add nuw i64 %.sroa.10.03233, 1, !dbg !149204
  %i.mo = icmp eq i64 %i.mm, %i.kg, !dbg !149205
  %i.mp = icmp eq i64 %.sroa.067.03236, %.sroa.10.03233, !dbg !149206
  %i.mq = and i1 %i.mp, %i.mo, !dbg !149207
  %i.mr = load ptr, ptr %i.ko, align 16, !dbg !149208, !nonnull !3448, !noundef !3448 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 40, !dbg !149209
  %i.mt = load i64, ptr %i.ms, align 8, !dbg !149209, !noundef !3448
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mr, i64 32, !dbg !149210
  %i.mv = load ptr, ptr %i.mu, align 8, !dbg !149210, !noundef !3448
  %i.mw = load i64, ptr %i.kp, align 8, !dbg !149211, !noundef !3448
  %i.mx = add i64 %i.mw, %.sroa.10.03233, !dbg !149211 ; 2 uses
  %i.my = lshr i64 %i.mx, 3, !dbg !149212         ; 2 uses
  %i.mz = icmp ult i64 %i.my, %i.mt, !dbg !149213
  call void @llvm.assume(i1 %i.mz), !dbg !149214
  %i.na = getelementptr inbounds nuw i8, ptr %i.mv, i64 %i.my, !dbg !149215
  %i.nb = load i8, ptr %i.na, align 1, !dbg !149216, !noundef !3448
  %i.nc = trunc i64 %i.mx to i8, !dbg !149217
  %i.nd = and i8 %i.nc, 7, !dbg !149217
  %i.ne = shl nuw i8 1, %i.nd, !dbg !149218
  %i.nf = and i8 %i.ne, %i.nb, !dbg !149218
  %.not527 = icmp eq i8 %i.nf, 0, !dbg !149218
  %i.ng = or i1 %i.mq, %.not527, !dbg !149207
  %i.nh = zext i1 %i.ng to i64, !dbg !149207
  %spec.select = add i64 %.sroa.067.03236, %i.nh, !dbg !149207 ; 2 uses
  %.sroa.0.0.i645 = call noundef i64 @llvm.umin.i64(i64 %i.kg, i64 %i.mm), !dbg !149219 ; 5 uses
  %.not3257 = icmp eq i64 %.sroa.0.0.i645, 0, !dbg !149220
  br i1 %.not3257, label %.loopexit, label %.lr.ph3232.preheader, !dbg !149182

.lr.ph3232.preheader:                             ; preds = %bb.au
  %xtraiter4594 = and i64 %.sroa.0.0.i645, 1, !dbg !149182
  %i.ni = icmp eq i64 %.sroa.0.0.i645, 1, !dbg !149182
  br i1 %i.ni, label %.lr.ph3232.epil.preheader, label %.lr.ph3232.preheader.new, !dbg !149182

.lr.ph3232.preheader.new:                         ; preds = %.lr.ph3232.preheader
  %unroll_iter4597 = and i64 %.sroa.0.0.i645, -2, !dbg !149182
  br label %.lr.ph3232, !dbg !149182

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE22offset_and_length_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %.loopexit2581, %.loopexit2579, %.loopexit2577, %.loopexit2575, %.loopexit2573, %.loopexit2571, %.loopexit2569, %.loopexit2567, %.loopexit2565, %.loopexit, %bb.bm, %bb.bn, %bb.bg, %bb.bh, %bb.ba, %bb.bb, %bb.aq, %bb.av, %bb.aw, %bb.ao
  %.sroa.067.1 = phi i64 [ %spec.select538, %.loopexit2573 ], [ %spec.select536, %.loopexit2565 ], [ %spec.select540, %.loopexit2577 ], [ %spec.select, %.loopexit ], [ %spec.select539, %.loopexit2571 ], [ %spec.select535, %.loopexit2567 ], [ %spec.select541, %.loopexit2575 ], [ %spec.select537, %.loopexit2569 ], [ %spec.select543, %.loopexit2579 ], [ 0, %bb.ao ], [ 0, %bb.aw ], [ 0, %bb.av ], [ 0, %bb.aq ], [ 0, %bb.bb ], [ 0, %bb.ba ], [ 0, %bb.bh ], [ 0, %bb.bg ], [ 0, %bb.bn ], [ 0, %bb.bm ], [ %spec.select542, %.loopexit2581 ], !dbg !149221
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl), !dbg !147356
  %i.nj = getelementptr i8, ptr %i.iz, i64 8, !dbg !147356
  %.val617 = load ptr, ptr %i.nj, align 8, !dbg !147356
  %i.nk = getelementptr i8, ptr %i.iz, i64 16, !dbg !147356
  %.val618 = load i64, ptr %i.nk, align 8, !dbg !147356, !noundef !3448
  %.val619 = load ptr, ptr %i.ka, align 8, !dbg !147356
  %.val620 = load i64, ptr %i.jw, align 8, !dbg !147356
  invoke fastcc void @_RNvNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB4_19ListNumericOpHelper12__finish_impl18check_mismatch_pos(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.dl, i64 noundef %.sroa.067.1, ptr %.val617, i64 %.val618, ptr %.val619, i64 %.val620)
          to label %bb.br unwind label %bb.dn, !dbg !147356

.lr.ph3232:                                       ; preds = %.lr.ph3232, %.lr.ph3232.preheader.new
  %.sroa.0350.03231 = phi i64 [ 0, %.lr.ph3232.preheader.new ], [ %i.on, %.lr.ph3232 ] ; 4 uses
  %niter4598 = phi i64 [ 0, %.lr.ph3232.preheader.new ], [ %niter4598.next.1, %.lr.ph3232 ]
  %i.nl = add nuw i64 %.sroa.0350.03231, %.val1.i.i.i, !dbg !149183 ; 3 uses
  %i.nm = add nuw i64 %.sroa.0350.03231, %i.kc, !dbg !149184 ; 2 uses
  %i.nn = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !149185, !noundef !3448
  %i.no = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !149186, !noundef !3448
  %i.np = icmp ult i64 %i.nl, %i.no, !dbg !149187
  call void @llvm.assume(i1 %i.np), !dbg !149188
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nn, i64 %i.nl, !dbg !149189
  %i.nr = load i8, ptr %i.nq, align 1, !dbg !149190, !noundef !3448
  %i.ns = load ptr, ptr %.sroa.4.0..sroa_idx.i635, align 8, !dbg !149191, !noundef !3448
  %i.nt = load i64, ptr %.sroa.5.0..sroa_idx5.i636, align 8, !dbg !149192, !noundef !3448
  %i.nu = icmp ult i64 %i.nm, %i.nt, !dbg !149193
  call void @llvm.assume(i1 %i.nu), !dbg !149194
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.nm, !dbg !149195
  %i.nw = load i8, ptr %i.nv, align 1, !dbg !149196, !noundef !3448
  %i.nx = add i8 %i.nw, %i.nr, !dbg !149197
  %i.ny = or disjoint i64 %.sroa.0350.03231, 1, !dbg !149222 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.js, i64 %i.nl, !dbg !149198
  store i8 %i.nx, ptr %i.nz, align 1, !dbg !149199
  %i.oa = add nuw i64 %i.ny, %.val1.i.i.i, !dbg !149183 ; 3 uses
  %i.ob = add nuw i64 %i.ny, %i.kc, !dbg !149184  ; 2 uses
  %i.oc = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !149185, !noundef !3448
  %i.od = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !149186, !noundef !3448
  %i.oe = icmp ult i64 %i.oa, %i.od, !dbg !149187
  call void @llvm.assume(i1 %i.oe), !dbg !149188
  %i.of = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.oa, !dbg !149189
  %i.og = load i8, ptr %i.of, align 1, !dbg !149190, !noundef !3448
  %i.oh = load ptr, ptr %.sroa.4.0..sroa_idx.i635, align 8, !dbg !149191, !noundef !3448
  %i.oi = load i64, ptr %.sroa.5.0..sroa_idx5.i636, align 8, !dbg !149192, !noundef !3448
  %i.oj = icmp ult i64 %i.ob, %i.oi, !dbg !149193
  call void @llvm.assume(i1 %i.oj), !dbg !149194
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oh, i64 %i.ob, !dbg !149195
end_hunk_12
