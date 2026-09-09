Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/mesh_contact?download=true
inline.NumInlined: 110
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@b3ComputeMeshManifolds:bb.a
  call void @b3FreeElement(ptr noundef %i.btk, ptr noundef %i.bso) #9
  %i.btl = load ptr, ptr %i.bsv, align 8, !tbaa !173
  call void @b3UnlockMutex(ptr noundef %i.btl) #9
  br label %b3FreeManifolds.exit1110

b3FreeManifolds.exit1110:                         ; preds = %bb.pa, %bb.pf
  %i.btm = icmp eq i32 %.1851, 0
  br i1 %i.btm, label %b3AllocateManifolds.exit, label %bb.pg

bb.pg:                                            ; preds = %b3FreeManifolds.exit1110
  %i.btn = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.1851, i32 -1) ; 2 uses
  %i.bto = extractvalue { i32, i1 } %i.btn, 0, !nosanitize !9 ; 2 uses
  %i.btp = extractvalue { i32, i1 } %i.btn, 1, !nosanitize !9
  br i1 %i.btp, label %bb.ph, label %bb.pi, !prof !19, !nosanitize !9

bb.ph:                                            ; preds = %bb.pg
  %i.btq = zext i32 %.1851 to i64, !nosanitize !9
  call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @293, i64 %i.btq, i64 1) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.pi:                                            ; preds = %bb.pg
  %i.btr = getelementptr inbounds nuw i8, ptr %0, i64 3848 ; 2 uses
  %i.bts = load ptr, ptr %i.btr, align 8, !tbaa !173
  call void @b3LockMutex(ptr noundef %i.bts) #9
  %i.btt = getelementptr inbounds nuw i8, ptr %0, i64 3832 ; 4 uses
  %i.btu = getelementptr inbounds nuw i8, ptr %0, i64 3840 ; 4 uses
  %i.btv = load i32, ptr %i.btu, align 8, !tbaa !189 ; 2 uses
  %i.btw = icmp slt i32 %i.btv, %.1851
  br i1 %i.btw, label %.lr.ph.i1113, label %._crit_edge.i1111

.lr.ph.i1113:                                     ; preds = %bb.pi
  %i.btx = getelementptr inbounds nuw i8, ptr %0, i64 3844 ; 2 uses
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i1113, %bb.pp
  %.054.us.i = phi i32 [ %i.bty, %bb.pp ], [ %i.btv, %.lr.ph.i1113 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  %i.bty = add nsw i32 %.054.us.i, 1              ; 3 uses
  %i.btz = mul i32 %i.bty, 268
  call void @b3CreateBlockAllocator(ptr dead_on_unwind nonnull writable sret(%struct.b3BlockAllocator) align 8 %10, i32 noundef %i.btz, i32 noundef 512) #9
  %i.bua = load i32, ptr %i.btu, align 8, !tbaa !189 ; 2 uses
  %i.bub = load i32, ptr %i.btx, align 4, !tbaa !190 ; 6 uses
  %.not37.us.i = icmp slt i32 %i.bua, %i.bub
  br i1 %.not37.us.i, label %bb.pm, label %bb.pj

bb.pj:                                            ; preds = %.lr.ph.split.us.i
  %i.buc = mul i32 %i.bub, 40
  %i.bud = icmp eq i32 %i.bub, 0
  br i1 %i.bud, label %bb.pl, label %bb.pk

bb.pk:                                            ; preds = %bb.pj
  %i.bue = shl nsw i32 %i.bub, 1
  %i.buf = add i32 %i.bub, 1073741824
  %i.bug = icmp sgt i32 %i.buf, -1
  br i1 %i.bug, label %bb.pl, label %.split.us.i1115, !prof !10, !nosanitize !9

bb.pl:                                            ; preds = %bb.pk, %bb.pj
  %i.buh = phi i32 [ 8, %bb.pj ], [ %i.bue, %bb.pk ] ; 2 uses
  %i.bui = mul i32 %i.buh, 40
  %i.buj = load ptr, ptr %i.btt, align 8, !tbaa !174
  %i.buk = call ptr @b3GrowAlloc(ptr noundef %i.buj, i32 noundef %i.buc, i32 noundef %i.bui) #9
  store ptr %i.buk, ptr %i.btt, align 8, !tbaa !174
  store i32 %i.buh, ptr %i.btx, align 4, !tbaa !190
  %.pre.i = load i32, ptr %i.btu, align 8, !tbaa !189
  br label %bb.pm

bb.pm:                                            ; preds = %bb.pl, %.lr.ph.split.us.i
  %i.bul = phi i32 [ %.pre.i, %bb.pl ], [ %i.bua, %.lr.ph.split.us.i ] ; 4 uses
  %i.bum = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.bul, i32 1), !nosanitize !9 ; 2 uses
  %i.bun = extractvalue { i32, i1 } %i.bum, 1, !nosanitize !9
  br i1 %i.bun, label %.split56.us.i, label %bb.pn, !prof !19, !nosanitize !9

bb.pn:                                            ; preds = %bb.pm
  %i.buo = load ptr, ptr %i.btt, align 8, !tbaa !174 ; 3 uses
  %i.bup = extractvalue { i32, i1 } %i.bum, 0, !nosanitize !9
  store i32 %i.bup, ptr %i.btu, align 8, !tbaa !189
  %i.buq = sext i32 %i.bul to i64                 ; 2 uses
  %i.bur = getelementptr inbounds [40 x i8], ptr %i.buo, i64 %i.buq ; 2 uses
  %i.bus = mul nsw i64 %i.buq, 40
  %i.but = ptrtoint ptr %i.buo to i64, !nosanitize !9 ; 3 uses
  %i.buu = add i64 %i.bus, %i.but, !nosanitize !9 ; 3 uses
  %i.buv = icmp ne ptr %i.buo, null, !nosanitize !9 ; 2 uses
  %i.buw = icmp eq i64 %i.buu, 0
  %i.bux = xor i1 %i.buv, %i.buw
  %i.buy = icmp uge i64 %i.buu, %i.but, !nosanitize !9
  %i.buz = icmp slt i32 %i.bul, 0
  %i.bva = xor i1 %i.buz, %i.buy
  %i.bvb = and i1 %i.bux, %i.bva, !nosanitize !9
  br i1 %i.bvb, label %bb.po, label %.split59.us.i, !prof !10, !nosanitize !9

bb.po:                                            ; preds = %bb.pn
  %i.bvc = ptrtoint ptr %i.bur to i64, !nosanitize !9 ; 2 uses
  %i.bvd = and i64 %i.bvc, 7, !nosanitize !9
  %i.bve = icmp eq i64 %i.bvd, 0, !nosanitize !9
  %i.bvf = and i1 %i.buv, %i.bve
  br i1 %i.bvf, label %bb.pp, label %.split63.us.i, !prof !10, !nosanitize !9

bb.pp:                                            ; preds = %bb.po
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bur, ptr noundef nonnull align 8 dereferenceable(40) %10, i64 40, i1 false), !tbaa.struct !194
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  %exitcond.not.i1116 = icmp eq i32 %i.bty, %.1851
  br i1 %exitcond.not.i1116, label %._crit_edge.i1111, label %.lr.ph.split.us.i, !llvm.loop !51

.split.us.i1115:                                  ; preds = %bb.pk
  %i.bvg = zext i32 %i.bub to i64, !nosanitize !9
  call void @__ubsan_handle_mul_overflow_abort(ptr nonnull @294, i64 2, i64 %i.bvg) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split56.us.i:                                    ; preds = %bb.pm
  %i.bvh = zext nneg i32 %i.bul to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @295, i64 %i.bvh, i64 1) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split59.us.i:                                    ; preds = %bb.pn
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @296, i64 %i.but, i64 %i.buu) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split63.us.i:                                    ; preds = %bb.po
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @298, i64 %i.bvc) #8, !nosanitize !9
  unreachable, !nosanitize !9

._crit_edge.i1111:                                ; preds = %bb.pp, %bb.pi
  %i.bvi = load ptr, ptr %i.btt, align 8, !tbaa !174 ; 3 uses
  %i.bvj = sext i32 %i.bto to i64                 ; 2 uses
  %i.bvk = mul nsw i64 %i.bvj, 40
  %i.bvl = ptrtoint ptr %i.bvi to i64, !nosanitize !9 ; 3 uses
  %i.bvm = add i64 %i.bvk, %i.bvl, !nosanitize !9 ; 3 uses
  %i.bvn = icmp ne ptr %i.bvi, null, !nosanitize !9
  %i.bvo = icmp eq i64 %i.bvm, 0
  %i.bvp = xor i1 %i.bvn, %i.bvo
  %i.bvq = icmp uge i64 %i.bvm, %i.bvl, !nosanitize !9
  %i.bvr = icmp slt i32 %i.bto, 0
  %i.bvs = xor i1 %i.bvr, %i.bvq
  %i.bvt = and i1 %i.bvp, %i.bvs, !nosanitize !9
  br i1 %i.bvt, label %bb.pr, label %bb.pq, !prof !10, !nosanitize !9

bb.pq:                                            ; preds = %._crit_edge.i1111
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @299, i64 %i.bvl, i64 %i.bvm) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.pr:                                            ; preds = %._crit_edge.i1111
  %i.bvu = getelementptr inbounds [40 x i8], ptr %i.bvi, i64 %i.bvj
  %i.bvv = call ptr @b3AllocateElement(ptr noundef %i.bvu) #9 ; 3 uses
  %i.bvw = load ptr, ptr %i.btr, align 8, !tbaa !173
  call void @b3UnlockMutex(ptr noundef %i.bvw) #9
  %.not.i1112 = icmp eq ptr %i.bvv, null, !nosanitize !9
  br i1 %.not.i1112, label %bb.ps, label %bb.pt, !prof !19, !nosanitize !9

bb.ps:                                            ; preds = %bb.pr
  call void @__ubsan_handle_nonnull_arg_abort(ptr nonnull @300) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.pt:                                            ; preds = %bb.pr
  %i.bvx = sext i32 %.1851 to i64
  %i.bvy = mul nsw i64 %i.bvx, 268
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bvv, i8 0, i64 %i.bvy, i1 false)
  br label %b3AllocateManifolds.exit

b3AllocateManifolds.exit:                         ; preds = %b3FreeManifolds.exit1110, %bb.pt
  %.030.i = phi ptr [ %i.bvv, %bb.pt ], [ null, %b3FreeManifolds.exit1110 ]
  store ptr %.030.i, ptr %i.bsn, align 8, !tbaa !172
  %i.bvz = and i32 %.1851, 65535
  store i32 %i.bvz, ptr %i.bry, align 8, !tbaa !171
  br label %bb.px

bb.pu:                                            ; preds = %bb.oz
  %.not990 = icmp eq ptr %i.bso, null, !nosanitize !9
  br i1 %.not990, label %bb.pv, label %bb.pw, !prof !19, !nosanitize !9

bb.pv:                                            ; preds = %bb.pu
  call void @__ubsan_handle_nonnull_arg_abort(ptr nonnull @136) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.pw:                                            ; preds = %bb.pu
  %i.bwa = load i32, ptr %i.bry, align 8, !tbaa !171
  %i.bwb = sext i32 %i.bwa to i64
  %i.bwc = mul nsw i64 %i.bwb, 268
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bso, i8 0, i64 %i.bwc, i1 false)
  br label %bb.px

bb.px:                                            ; preds = %bb.pw, %b3AllocateManifolds.exit
  br i1 %i.bsa, label %bb.py, label %bb.qb

bb.py:                                            ; preds = %bb.px
  %i.bwd = call fastcc ptr @b3Bump(ptr noundef nonnull %9, i32 noundef %i.brz)
  %i.bwe = freeze ptr %i.bwd                      ; 3 uses
  %.not991 = icmp eq ptr %i.bwe, null, !nosanitize !9
  br i1 %.not991, label %bb.pz, label %bb.qa, !prof !19, !nosanitize !9

bb.pz:                                            ; preds = %bb.py
  call void @__ubsan_handle_nonnull_arg_abort(ptr nonnull @137) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.qa:                                            ; preds = %bb.py
  %i.bwf = zext nneg i32 %i.brz to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bwe, i8 0, i64 %i.bwf, i1 false)
  br label %bb.qb

bb.qb:                                            ; preds = %bb.qa, %bb.px
  %.0843 = phi ptr [ %i.bwe, %bb.qa ], [ null, %bb.px ] ; 5 uses
  %i.bwg = load <2 x float>, ptr %.sroa.61280.0..sroa_idx, align 4 ; 12 uses
  %i.bwh = load <2 x float>, ptr %.sroa.81282.0..sroa_idx, align 4 ; 9 uses
  %.sroa.01289.0.vec.extract = extractelement <2 x float> %i.bwg, i64 0 ; 2 uses
  %.sroa.01289.4.vec.extract = extractelement <2 x float> %i.bwg, i64 1 ; 2 uses
  %.sroa.51290.8.vec.extract = extractelement <2 x float> %i.bwh, i64 0
  %.sroa.51290.12.vec.extract = extractelement <2 x float> %i.bwh, i64 1 ; 2 uses
  %i.bwi = fmul float %.sroa.01289.0.vec.extract, %.sroa.51290.12.vec.extract ; 2 uses
  %i.bwj = fmul float %.sroa.01289.4.vec.extract, %.sroa.51290.12.vec.extract ; 2 uses
  %i.bwk = fmul float %.sroa.01289.4.vec.extract, %.sroa.51290.8.vec.extract ; 2 uses
  %foldExtExtBinop20465 = fmul <2 x float> %i.bwg, %i.bwh
  %i.bwl = extractelement <2 x float> %foldExtExtBinop20465, i64 0 ; 2 uses
  %i.bwm = fmul <2 x float> %i.bwg, %i.bwg        ; 3 uses
  %25 = shufflevector <2 x float> %i.bwg, <2 x float> %i.bwh, <3 x i32> <i32 0, i32 3, i32 2>
  %26 = shufflevector <2 x float> %i.bwg, <2 x float> %i.bwh, <3 x i32> <i32 1, i32 2, i32 2>
  %27 = fmul <3 x float> %25, %26                 ; 3 uses
  %28 = shufflevector <3 x float> %27, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.bwn = fadd <2 x float> %i.bwm, %28
  %i.bwo = fmul <2 x float> %i.bwn, splat (float 2.000000e+00)
  %29 = extractelement <3 x float> %27, i64 0     ; 2 uses
  %30 = extractelement <3 x float> %27, i64 1     ; 2 uses
  %i.bwp = fadd float %29, %30
  %i.bwq = fsub float %29, %30
  %i.bwr = fsub float %i.bwl, %i.bwj
  %i.bws = fmul float %i.bwr, 2.000000e+00        ; 3 uses
  %i.bwt = insertelement <2 x float> poison, float %i.bwp, i64 0
  %i.bwu = insertelement <2 x float> %i.bwt, float %i.bwq, i64 1
  %i.bwv = fmul <2 x float> %i.bwu, splat (float 2.000000e+00) ; 4 uses
  %i.bww = fsub <2 x float> splat (float 1.000000e+00), %i.bwo ; 4 uses
  %i.bwx = fadd float %i.bwk, %i.bwi
  %i.bwy = fmul float %i.bwx, 2.000000e+00        ; 3 uses
  %i.bwz = fsub float %i.bwk, %i.bwi
  %i.bxa = fadd float %i.bwl, %i.bwj
  %i.bxb = insertelement <2 x float> poison, float %i.bwz, i64 0
  %i.bxc = insertelement <2 x float> %i.bxb, float %i.bxa, i64 1
  %i.bxd = fmul <2 x float> %i.bxc, splat (float 2.000000e+00) ; 4 uses
  %shift20467 = shufflevector <2 x float> %i.bwm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop20468 = fadd <2 x float> %i.bwm, %shift20467
  %i.bxe = extractelement <2 x float> %foldExtExtBinop20468, i64 0
  %i.bxf = fmul float %i.bxe, 2.000000e+00
  %i.bxg = fsub float 1.000000e+00, %i.bxf        ; 3 uses
  %.sroa.0196.0.copyload = load <2 x float>, ptr %7, align 8
  %.sroa.2197.0.copyload = load float, ptr %.sroa.51279.0..sroa_idx, align 8
  %.sroa.0194.0.copyload = load <2 x float>, ptr %5, align 8
  %.sroa.2195.0.copyload = load float, ptr %.sroa.51295.0..sroa_idx, align 8
  %i.bxh = fsub <2 x float> %.sroa.0196.0.copyload, %.sroa.0194.0.copyload
  %i.bxi = fsub float %.sroa.2197.0.copyload, %.sroa.2195.0.copyload
  br i1 %i.ayx, label %.lr.ph8216, label %._crit_edge8217

.lr.ph8216:                                       ; preds = %bb.qb
  %i.bxj = ptrtoint ptr %.fr8416 to i64, !nosanitize !9 ; 3 uses
  %.not8435 = icmp eq ptr %.fr8416, null, !nosanitize !9
  %i.bxk = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bxl = ptrtoint ptr %.0843 to i64             ; 6 uses
  %.not8434 = icmp eq ptr %.0843, null
  %i.bxm = ptrtoint ptr %.0844 to i64             ; 6 uses
  %i.bxn = icmp ne ptr %.0844, null               ; 4 uses
  %i.bxo = icmp ne ptr %.0843, null               ; 2 uses
  br i1 %.not8435, label %.split8223, label %.lr.ph8216.split.split.us.preheader, !prof !19

.lr.ph8216.split.split.us.preheader:              ; preds = %.lr.ph8216
  %wide.trip.count13510 = zext nneg i32 %.1851 to i64
  %wide.trip.count13488 = zext nneg i32 %i.brz to i64
  %i.bxp = extractelement <2 x float> %i.bxd, i64 0
  %i.bxq = insertelement <2 x float> %i.bxd, float %i.bxg, i64 0
  %i.bxr = shufflevector <2 x float> %i.bww, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bxs = insertelement <2 x float> %i.bxr, float %i.bwy, i64 1
  %i.bxt = insertelement <2 x float> %i.bwv, float %i.bws, i64 0
  br label %.lr.ph8216.split.split.us

.lr.ph8216.split.split.us:                        ; preds = %.lr.ph8216.split.split.us.preheader, %._crit_edge8213.us
  %indvars.iv13507 = phi i64 [ 0, %.lr.ph8216.split.split.us.preheader ], [ %indvars.iv.next13508, %._crit_edge8213.us ] ; 5 uses
  %i.bxu = getelementptr inbounds nuw [40 x i8], ptr %.fr8416, i64 %indvars.iv13507 ; 6 uses
  %i.bxv = mul nuw nsw i64 %indvars.iv13507, 40
  %i.bxw = add i64 %i.bxv, %i.bxj, !nosanitize !9 ; 2 uses
  %.not13668 = icmp ult i64 %i.bxw, %i.bxj, !nosanitize !9
  br i1 %.not13668, label %.split8219.us, label %bb.qc, !prof !19, !nosanitize !9

bb.qc:                                            ; preds = %.lr.ph8216.split.split.us
  %i.bxx = ptrtoint ptr %i.bxu to i64, !nosanitize !9 ; 2 uses
  %i.bxy = and i64 %i.bxx, 7, !nosanitize !9
  %i.bxz = icmp eq i64 %i.bxy, 0, !nosanitize !9
  br i1 %i.bxz, label %bb.qd, label %.split8223, !prof !10, !nosanitize !9

bb.qd:                                            ; preds = %bb.qc
  %i.bya = getelementptr inbounds nuw i8, ptr %i.bxu, i64 36
  %i.byb = load i32, ptr %i.bya, align 4, !tbaa !178 ; 3 uses
  %i.byc = load ptr, ptr %i.bxk, align 8, !tbaa !172 ; 3 uses
  %i.byd = getelementptr inbounds nuw [268 x i8], ptr %i.byc, i64 %indvars.iv13507 ; 8 uses
  %i.bye = mul nuw nsw i64 %indvars.iv13507, 268
  %i.byf = ptrtoint ptr %i.byc to i64, !nosanitize !9 ; 3 uses
  %i.byg = add i64 %i.bye, %i.byf, !nosanitize !9 ; 3 uses
  %i.byh = icmp ne ptr %i.byc, null, !nosanitize !9 ; 2 uses
  %i.byi = icmp eq i64 %i.byg, 0
  %i.byj = xor i1 %i.byh, %i.byi
  %i.byk = icmp uge i64 %i.byg, %i.byf, !nosanitize !9
  %i.byl = and i1 %i.byj, %i.byk, !nosanitize !9
  br i1 %i.byl, label %bb.qe, label %.split8241.us, !prof !10, !nosanitize !9

bb.qe:                                            ; preds = %bb.qd
  %i.bym = ptrtoint ptr %i.byd to i64, !nosanitize !9 ; 5 uses
  %i.byn = and i64 %i.bym, 3, !nosanitize !9
  %i.byo = icmp eq i64 %i.byn, 0, !nosanitize !9
  %i.byp = and i1 %i.byh, %i.byo
  br i1 %i.byp, label %bb.qf, label %.split8245.us, !prof !10, !nosanitize !9

bb.qf:                                            ; preds = %bb.qe
  %i.byq = getelementptr inbounds nuw i8, ptr %i.byd, i64 264
  store i32 %i.byb, ptr %i.byq, align 4, !tbaa !196
  %i.byr = getelementptr inbounds nuw i8, ptr %i.byd, i64 224
  %.sroa.0170.0.copyload.us = load <2 x float>, ptr %i.bxu, align 8 ; 4 uses
  %.sroa.2171.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.bxu, i64 8 ; 2 uses
  %.sroa.2171.0.copyload.us = load float, ptr %.sroa.2171.0..sroa_idx.us, align 8 ; 2 uses
  %.sroa.0.0.vec.extract.i1128.us = extractelement <2 x float> %.sroa.0170.0.copyload.us, i64 0
  %.sroa.0.4.vec.extract.i1129.us = extractelement <2 x float> %.sroa.0170.0.copyload.us, i64 1
  %i.bys = fmul float %i.bws, %.sroa.0.0.vec.extract.i1128.us
  %i.byt = fmul float %i.bwy, %.sroa.0.4.vec.extract.i1129.us
  %i.byu = fadd float %i.bys, %i.byt
  %i.byv = fmul <2 x float> %i.bwv, %.sroa.0170.0.copyload.us
  %i.byw = shufflevector <2 x float> %.sroa.0170.0.copyload.us, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.byx = fmul <2 x float> %i.bww, %i.byw
  %i.byy = fadd <2 x float> %i.byv, %i.byx
  %i.byz = insertelement <2 x float> poison, float %.sroa.2171.0.copyload.us, i64 0
  %i.bza = shufflevector <2 x float> %i.byz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bzb = fmul <2 x float> %i.bxd, %i.bza
  %i.bzc = fadd <2 x float> %i.bzb, %i.byy
  %i.bzd = shufflevector <2 x float> %i.bzc, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bze = fmul float %i.bxg, %.sroa.2171.0.copyload.us
  %i.bzf = fadd float %i.bze, %i.byu
  store <2 x float> %i.bzd, ptr %i.byr, align 4
  %.sroa.4173.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.byd, i64 232
  store float %i.bzf, ptr %.sroa.4173.0..sroa_idx.us, align 4, !tbaa !114
  %.sroa.0162.0.copyload.us = load <2 x float>, ptr %i.bxu, align 8 ; 4 uses
  %.sroa.2163.0.copyload.us = load float, ptr %.sroa.2171.0..sroa_idx.us, align 8 ; 2 uses
  %foldExtExtBinop20470 = fmul <2 x float> %i.bwv, %.sroa.0162.0.copyload.us
  %shift20472 = shufflevector <2 x float> %.sroa.0162.0.copyload.us, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop20473 = fmul <2 x float> %i.bww, %shift20472
  %foldExtExtBinop20475 = fadd <2 x float> %foldExtExtBinop20470, %foldExtExtBinop20473
  %i.bzg = extractelement <2 x float> %foldExtExtBinop20475, i64 0
  %i.bzh = fmul float %i.bxp, %.sroa.2163.0.copyload.us
  %i.bzi = fadd float %i.bzh, %i.bzg
  %i.bzj = fmul <2 x float> %i.bxs, %.sroa.0162.0.copyload.us
  %i.bzk = shufflevector <2 x float> %i.bzj, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bzl = fmul <2 x float> %i.bxt, %.sroa.0162.0.copyload.us
  %i.bzm = fadd <2 x float> %i.bzk, %i.bzl
  %i.bzn = insertelement <2 x float> poison, float %.sroa.2163.0.copyload.us, i64 0
  %i.bzo = shufflevector <2 x float> %i.bzn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bzp = fmul <2 x float> %i.bxq, %i.bzo
  %i.bzq = fadd <2 x float> %i.bzp, %i.bzm
  br i1 %i.bsa, label %.lr.ph8190.us, label %._crit_edge8191.us.thread

.lr.ph8190.us:                                    ; preds = %bb.qf
  br i1 %.not8434, label %.split8198.us, label %.lr.ph8190.split.us8227, !prof !19

.lr.ph8190.split.us8227:                          ; preds = %.lr.ph8190.us, %bb.ql
  %indvars.iv13485 = phi i64 [ %indvars.iv.next13486, %bb.ql ], [ 0, %.lr.ph8190.us ] ; 6 uses
  %.08318187.us8229 = phi i32 [ %.2833.us, %bb.ql ], [ -1, %.lr.ph8190.us ] ; 2 uses
  %.08348186.us8230 = phi float [ %.2836.us, %bb.ql ], [ 9.950000e-01, %.lr.ph8190.us ] ; 3 uses
  %i.bzr = add i64 %indvars.iv13485, %i.bxl, !nosanitize !9 ; 2 uses
  %.not8438 = icmp ult i64 %i.bzr, %i.bxl, !nosanitize !9
  br i1 %.not8438, label %.split8194.us, label %bb.qg, !prof !19, !nosanitize !9

bb.qg:                                            ; preds = %.lr.ph8190.split.us8227
  %i.bzs = getelementptr inbounds nuw i8, ptr %.0843, i64 %indvars.iv13485
  %i.bzt = load i8, ptr %i.bzs, align 1, !tbaa !197 ; 3 uses
  %i.bzu = icmp ult i8 %i.bzt, 2
  br i1 %i.bzu, label %bb.qh, label %.split8261.us, !prof !10, !nosanitize !9

bb.qh:                                            ; preds = %bb.qg
  %i.bzv = trunc nuw i8 %i.bzt to i1
  br i1 %i.bzv, label %bb.ql, label %bb.qi

bb.qi:                                            ; preds = %bb.qh
  %i.bzw = getelementptr inbounds nuw [268 x i8], ptr %.0844, i64 %indvars.iv13485 ; 3 uses
  %i.bzx = mul nuw nsw i64 %indvars.iv13485, 268
  %i.bzy = add i64 %i.bzx, %i.bxm, !nosanitize !9 ; 3 uses
  %i.bzz = icmp eq i64 %i.bzy, 0
  %i.caa = xor i1 %i.bxn, %i.bzz
  %i.cab = icmp uge i64 %i.bzy, %i.bxm, !nosanitize !9
  %i.cac = and i1 %i.cab, %i.caa, !nosanitize !9
  br i1 %i.cac, label %bb.qj, label %.split8264.us, !prof !10, !nosanitize !9

bb.qj:                                            ; preds = %bb.qi
  br i1 %i.bxn, label %bb.qk, label %.split8268.us, !prof !10, !nosanitize !9

bb.qk:                                            ; preds = %bb.qj
  %i.cad = getelementptr inbounds nuw i8, ptr %i.bzw, i64 224
  %.sroa.0145.0.copyload.us = load <2 x float>, ptr %i.cad, align 4 ; 2 uses
  %.sroa.2146.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.bzw, i64 232
  %.sroa.2146.0.copyload.us = load float, ptr %.sroa.2146.0..sroa_idx.us, align 4
  %.sroa.03.4.vec.extract.i1142.us = extractelement <2 x float> %.sroa.0145.0.copyload.us, i64 1
  %i.cae = fmul float %i.bzi, %.sroa.03.4.vec.extract.i1142.us
  %i.caf = shufflevector <2 x float> %.sroa.0145.0.copyload.us, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cag = insertelement <2 x float> %i.caf, float %.sroa.2146.0.copyload.us, i64 0
  %i.cah = fmul <2 x float> %i.bzq, %i.cag        ; 2 uses
  %i.cai = extractelement <2 x float> %i.cah, i64 1
  %i.caj = fadd float %i.cai, %i.cae
  %i.cak = extractelement <2 x float> %i.cah, i64 0
  %i.cal = fadd float %i.cak, %i.caj              ; 2 uses
  %i.cam = fcmp ogt float %i.cal, %.08348186.us8230 ; 2 uses
  %.1835.us = select i1 %i.cam, float %i.cal, float %.08348186.us8230
  %i.can = trunc nuw nsw i64 %indvars.iv13485 to i32
  %.1832.us = select i1 %i.cam, i32 %i.can, i32 %.08318187.us8229
  br label %bb.ql

bb.ql:                                            ; preds = %bb.qk, %bb.qh
  %.2836.us = phi float [ %.08348186.us8230, %bb.qh ], [ %.1835.us, %bb.qk ]
  %.2833.us = phi i32 [ %.08318187.us8229, %bb.qh ], [ %.1832.us, %bb.qk ] ; 4 uses
  %indvars.iv.next13486 = add nuw nsw i64 %indvars.iv13485, 1 ; 2 uses
  %exitcond13489.not = icmp eq i64 %indvars.iv.next13486, %wide.trip.count13488
  br i1 %exitcond13489.not, label %._crit_edge8191.us, label %.lr.ph8190.split.us8227, !llvm.loop !52

._crit_edge8191.us:                               ; preds = %bb.ql
  %.not995.us = icmp eq i32 %.2833.us, -1
  br i1 %.not995.us, label %._crit_edge8191.us.thread, label %bb.qm

bb.qm:                                            ; preds = %._crit_edge8191.us
  %i.cao = sext i32 %.2833.us to i64              ; 4 uses
  %i.cap = getelementptr inbounds [268 x i8], ptr %.0844, i64 %i.cao ; 5 uses
  %i.caq = mul nsw i64 %i.cao, 268
  %i.car = add i64 %i.caq, %i.bxm, !nosanitize !9 ; 3 uses
  %i.cas = icmp eq i64 %i.car, 0
  %i.cat = xor i1 %i.bxn, %i.cas
end_hunk_0
