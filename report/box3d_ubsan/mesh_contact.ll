Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/mesh_contact?download=true
inline.NumInlined: 110
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@b3ComputeMeshManifolds:bb.a
  %i.atf = getelementptr inbounds nuw i8, ptr %0, i64 3832
  %i.atg = load ptr, ptr %i.atf, align 8, !tbaa !174 ; 3 uses
  %i.ath = zext nneg i32 %i.atc to i64            ; 2 uses
  %i.ati = mul nuw nsw i64 %i.ath, 40
  %i.atj = ptrtoint ptr %i.atg to i64, !nosanitize !9 ; 3 uses
  %i.atk = add i64 %i.ati, %i.atj, !nosanitize !9 ; 3 uses
  %i.atl = icmp ne ptr %i.atg, null, !nosanitize !9
  %i.atm = icmp eq i64 %i.atk, 0
  %i.atn = xor i1 %i.atl, %i.atm
  %i.ato = icmp uge i64 %i.atk, %i.atj, !nosanitize !9
  %i.atp = and i1 %i.ato, %i.atn, !nosanitize !9
  br i1 %i.atp, label %b3FreeManifolds.exit, label %bb.hs, !prof !10, !nosanitize !9

bb.hs:                                            ; preds = %bb.hr
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @232, i64 %i.atj, i64 %i.atk) #8, !nosanitize !9
  unreachable, !nosanitize !9

b3FreeManifolds.exit:                             ; preds = %bb.hr
  %i.atq = getelementptr inbounds nuw [40 x i8], ptr %i.atg, i64 %i.ath
  call void @b3FreeElement(ptr noundef %i.atq, ptr noundef %i.atb) #9
  %i.atr = load ptr, ptr %i.atd, align 8, !tbaa !173
  call void @b3UnlockMutex(ptr noundef %i.atr) #9
  store ptr null, ptr %i.ata, align 8, !tbaa !172
  store i32 0, ptr %i.asx, align 8, !tbaa !171
  br label %._crit_edge7573.thread

.split7568:                                       ; preds = %.loopexit1317
  %i.ats = mul i32 %.10, 40
  %i.att = call fastcc ptr @b3Bump(ptr noundef nonnull %9, i32 noundef %i.ats)
  %.fr8349 = freeze ptr %i.att                    ; 15 uses
  %i.atu = shl i32 %.10, 2
  %i.atv = call fastcc ptr @b3Bump(ptr noundef nonnull %9, i32 noundef %i.atu)
  %.fr8351 = freeze ptr %i.atv                    ; 6 uses
  %i.atw = icmp sgt i32 %.10, 0
  br i1 %i.atw, label %.lr.ph7572, label %._crit_edge7573.thread

.lr.ph7572:                                       ; preds = %.split7568
  %i.atx = ptrtoint ptr %.fr8351 to i64, !nosanitize !9 ; 5 uses
  %.not8352 = icmp eq ptr %.fr8351, null, !nosanitize !9
  %i.aty = ptrtoint ptr %.fr8353 to i64           ; 3 uses
  %i.atz = ptrtoint ptr %.fr8349 to i64           ; 9 uses
  %.not8350 = icmp ne ptr %.fr8349, null          ; 3 uses
  br i1 %.not8352, label %.split7581, label %.lr.ph7572.split, !prof !19

.lr.ph7572.split:                                 ; preds = %.lr.ph7572
  %.not8354 = icmp eq ptr %.fr8353, null
  br i1 %.not8354, label %.lr.ph7572.split.split.us, label %.lr.ph7572.split.split.preheader, !prof !19

.lr.ph7572.split.split.preheader:                 ; preds = %.lr.ph7572.split
  %wide.trip.count13071 = zext nneg i32 %.10 to i64
  br label %.lr.ph7572.split.split

.lr.ph7572.split.split.us:                        ; preds = %.lr.ph7572.split
  %i.aua = and i64 %i.atx, 3, !nosanitize !9
  %i.aub = icmp eq i64 %i.aua, 0, !nosanitize !9
  br i1 %i.aub, label %.split7598.us, label %.split7581, !prof !10, !nosanitize !9

.split7598.us:                                    ; preds = %.lr.ph7572.split.split.us
  store i32 -1, ptr %.fr8351, align 4, !tbaa !20
  br label %.split7598

._crit_edge7573:                                  ; preds = %bb.ip
  %.not1311 = icmp eq i32 %i.aux, 0
  br i1 %.not1311, label %._crit_edge7573.thread, label %bb.iq

.lr.ph7572.split.split:                           ; preds = %.lr.ph7572.split.split.preheader, %bb.ip
  %indvars.iv13068 = phi i64 [ 0, %.lr.ph7572.split.split.preheader ], [ %indvars.iv.next13069, %bb.ip ] ; 5 uses
  %.08507571 = phi i32 [ 0, %.lr.ph7572.split.split.preheader ], [ %.1851, %bb.ip ] ; 8 uses
  %.08527570 = phi i32 [ 0, %.lr.ph7572.split.split.preheader ], [ %i.aux, %bb.ip ] ; 2 uses
  %i.auc = getelementptr inbounds nuw [4 x i8], ptr %.fr8351, i64 %indvars.iv13068 ; 4 uses
  %i.aud = shl nuw nsw i64 %indvars.iv13068, 2
  %i.aue = add i64 %i.aud, %i.atx, !nosanitize !9 ; 2 uses
  %.not8355 = icmp ult i64 %i.aue, %i.atx, !nosanitize !9
  br i1 %.not8355, label %.split7577.us, label %bb.ht, !prof !19, !nosanitize !9

.split7577.us:                                    ; preds = %.lr.ph7572.split.split
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @96, i64 %i.atx, i64 %i.aue) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.ht:                                            ; preds = %.lr.ph7572.split.split
  %i.auf = ptrtoint ptr %i.auc to i64, !nosanitize !9 ; 2 uses
  %i.aug = and i64 %i.auf, 3, !nosanitize !9
  %i.auh = icmp eq i64 %i.aug, 0, !nosanitize !9
  br i1 %i.auh, label %bb.hu, label %.split7581, !prof !10, !nosanitize !9

.split7581:                                       ; preds = %bb.ht, %.lr.ph7572, %.lr.ph7572.split.split.us
  %.us-phi7582 = phi i64 [ 0, %.lr.ph7572 ], [ %i.atx, %.lr.ph7572.split.split.us ], [ %i.auf, %bb.ht ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @97, i64 %.us-phi7582) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.hu:                                            ; preds = %bb.ht
  store i32 -1, ptr %i.auc, align 4, !tbaa !20
  %i.aui = getelementptr inbounds nuw [8 x i8], ptr %.fr8353, i64 %indvars.iv13068 ; 2 uses
  %i.auj = shl nuw nsw i64 %indvars.iv13068, 3
  %i.auk = add i64 %i.auj, %i.aty, !nosanitize !9 ; 2 uses
  %.not = icmp ult i64 %i.auk, %i.aty, !nosanitize !9
  br i1 %.not, label %.split7594.us, label %bb.hv, !prof !19, !nosanitize !9

.split7594.us:                                    ; preds = %bb.hu
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @98, i64 %i.aty, i64 %i.auk) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.hv:                                            ; preds = %bb.hu
  %i.aul = ptrtoint ptr %i.aui to i64, !nosanitize !9 ; 2 uses
  %i.aum = and i64 %i.aul, 7, !nosanitize !9
  %i.aun = icmp eq i64 %i.aum, 0, !nosanitize !9
  br i1 %i.aun, label %bb.hw, label %.split7598, !prof !10, !nosanitize !9

.split7598:                                       ; preds = %bb.hv, %.split7598.us
  %.us-phi7599 = phi i64 [ 0, %.split7598.us ], [ %i.aul, %bb.hv ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @99, i64 %.us-phi7599) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.hw:                                            ; preds = %bb.hv
  %i.auo = load ptr, ptr %i.aui, align 8, !tbaa !158 ; 7 uses
  %i.aup = icmp ne ptr %i.auo, null, !nosanitize !9
  %i.auq = ptrtoint ptr %i.auo to i64, !nosanitize !9 ; 2 uses
  %i.aur = and i64 %i.auq, 7, !nosanitize !9
  %i.aus = icmp eq i64 %i.aur, 0, !nosanitize !9
  %i.aut = and i1 %i.aup, %i.aus, !nosanitize !9
  br i1 %i.aut, label %bb.hy, label %bb.hx, !prof !10, !nosanitize !9

bb.hx:                                            ; preds = %bb.hw
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @101, i64 %i.auq) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.hy:                                            ; preds = %bb.hw
  %i.auu = getelementptr inbounds nuw i8, ptr %i.auo, i64 32 ; 2 uses
  %i.auv = load i32, ptr %i.auu, align 8, !tbaa !139 ; 3 uses
  %i.auw = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.08527570, i32 %i.auv), !nosanitize !9 ; 2 uses
  %i.aux = extractvalue { i32, i1 } %i.auw, 0, !nosanitize !9 ; 3 uses
  %i.auy = extractvalue { i32, i1 } %i.auw, 1, !nosanitize !9
  br i1 %i.auy, label %bb.hz, label %.split7551, !prof !19, !nosanitize !9

bb.hz:                                            ; preds = %bb.hy
  %i.auz = zext i32 %.08527570 to i64, !nosanitize !9
  %i.ava = zext i32 %i.auv to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @103, i64 %i.auz, i64 %i.ava) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split7551:                                       ; preds = %bb.hy
  %.sroa.0277.0.copyload = load <2 x float>, ptr %i.auo, align 8, !tbaa !114 ; 2 uses
  %.sroa.5279.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.auo, i64 8
  %.sroa.5279.0.copyload = load float, ptr %.sroa.5279.0..sroa_idx, align 8, !tbaa !114 ; 2 uses
  %i.avb = getelementptr inbounds nuw i8, ptr %i.auo, i64 12
  %.sroa.0273.0.copyload = load <2 x float>, ptr %i.avb, align 4, !tbaa !114 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.auo, i64 20
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !114 ; 2 uses
  %i.avc = icmp sgt i32 %.08507571, 0
  br i1 %i.avc, label %.lr.ph7553, label %.critedge7.thread

.lr.ph7553:                                       ; preds = %.split7551
  br i1 %.not8350, label %.lr.ph7553.split.preheader, label %.split7562, !prof !10

.lr.ph7553.split.preheader:                       ; preds = %.lr.ph7553
  %wide.trip.count13066 = zext nneg i32 %.08507571 to i64
  %i.avd = insertelement <2 x float> poison, float %.sroa.5.0.copyload, i64 0
  %i.ave = insertelement <2 x float> %i.avd, float %.sroa.5279.0.copyload, i64 1
  br label %.lr.ph7553.split

.lr.ph7553.split:                                 ; preds = %.lr.ph7553.split.preheader, %bb.ic
  %indvars.iv13063 = phi i64 [ 0, %.lr.ph7553.split.preheader ], [ %indvars.iv.next13064, %bb.ic ] ; 6 uses
  %i.avf = getelementptr inbounds nuw [40 x i8], ptr %.fr8349, i64 %indvars.iv13063 ; 5 uses
  %i.avg = mul nuw nsw i64 %indvars.iv13063, 40
  %i.avh = add i64 %i.avg, %i.atz, !nosanitize !9 ; 2 uses
  %.not13277 = icmp ult i64 %i.avh, %i.atz, !nosanitize !9
  br i1 %.not13277, label %.split7558.us, label %bb.ia, !prof !19, !nosanitize !9

.split7558.us:                                    ; preds = %.lr.ph7553.split
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @104, i64 %i.atz, i64 %i.avh) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.ia:                                            ; preds = %.lr.ph7553.split
  %i.avi = ptrtoint ptr %i.avf to i64, !nosanitize !9 ; 2 uses
  %i.avj = and i64 %i.avi, 7, !nosanitize !9
  %i.avk = icmp eq i64 %i.avj, 0, !nosanitize !9
  br i1 %i.avk, label %bb.ib, label %.split7562, !prof !10, !nosanitize !9

.split7562:                                       ; preds = %.lr.ph7553, %bb.ia
  %.us-phi7563 = phi i64 [ %i.avi, %bb.ia ], [ 0, %.lr.ph7553 ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @106, i64 %.us-phi7563) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.ib:                                            ; preds = %bb.ia
  %.sroa.0262.0.copyload = load <2 x float>, ptr %i.avf, align 8
  %.sroa.2263.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.avf, i64 8
  %.sroa.2263.0.copyload = load float, ptr %.sroa.2263.0..sroa_idx, align 8
  %i.avl = fmul <2 x float> %.sroa.0277.0.copyload, %.sroa.0262.0.copyload ; 2 uses
  %i.avm = getelementptr inbounds nuw i8, ptr %i.avf, i64 12
  %.sroa.0257.0.copyload = load <2 x float>, ptr %i.avm, align 4
  %.sroa.2258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.avf, i64 20
  %.sroa.2258.0.copyload = load float, ptr %.sroa.2258.0..sroa_idx, align 4
  %i.avn = fmul <2 x float> %.sroa.0273.0.copyload, %.sroa.0257.0.copyload ; 2 uses
  %i.avo = shufflevector <2 x float> %i.avn, <2 x float> %i.avl, <2 x i32> <i32 0, i32 2>
  %i.avp = shufflevector <2 x float> %i.avn, <2 x float> %i.avl, <2 x i32> <i32 1, i32 3>
  %i.avq = fadd <2 x float> %i.avo, %i.avp
  %i.avr = insertelement <2 x float> poison, float %.sroa.2258.0.copyload, i64 0
  %i.avs = insertelement <2 x float> %i.avr, float %.sroa.2263.0.copyload, i64 1
  %i.avt = fmul <2 x float> %i.ave, %i.avs
  %i.avu = fadd <2 x float> %i.avt, %i.avq
  %25 = fcmp ole <2 x float> %i.avu, splat (float f0x3F7EF9DB) ; 2 uses
  %26 = extractelement <2 x i1> %25, i64 0
  %27 = extractelement <2 x i1> %25, i64 1
  %or.cond = select i1 %27, i1 true, i1 %26
  br i1 %or.cond, label %bb.ic, label %.critedge7

bb.ic:                                            ; preds = %bb.ib
  %indvars.iv.next13064 = add nuw nsw i64 %indvars.iv13063, 1 ; 2 uses
  %exitcond13067.not = icmp eq i64 %indvars.iv.next13064, %wide.trip.count13066
  br i1 %exitcond13067.not, label %.critedge7.thread, label %.lr.ph7553.split, !llvm.loop !40

.critedge7:                                       ; preds = %bb.ib
  %i.avv = trunc nuw nsw i64 %indvars.iv13063 to i32
  store i32 %i.avv, ptr %i.auc, align 4, !tbaa !20
  %i.avw = load i32, ptr %i.auu, align 8, !tbaa !139 ; 2 uses
  %i.avx = getelementptr inbounds nuw [40 x i8], ptr %.fr8349, i64 %indvars.iv13063 ; 2 uses
  %i.avy = mul nuw nsw i64 %indvars.iv13063, 40
  %i.avz = add i64 %i.avy, %i.atz, !nosanitize !9 ; 2 uses
  %.not17886 = icmp ult i64 %i.avz, %i.atz, !nosanitize !9
  br i1 %.not17886, label %bb.id, label %bb.ie, !prof !19, !nosanitize !9

bb.id:                                            ; preds = %.critedge7
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @107, i64 %i.atz, i64 %i.avz) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.ie:                                            ; preds = %.critedge7
  %i.awa = ptrtoint ptr %i.avx to i64, !nosanitize !9 ; 2 uses
  %i.awb = and i64 %i.awa, 7, !nosanitize !9
  %i.awc = icmp eq i64 %i.awb, 0, !nosanitize !9
  br i1 %i.awc, label %bb.ig, label %bb.if, !prof !10, !nosanitize !9

bb.if:                                            ; preds = %bb.ie
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @108, i64 %i.awa) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.ig:                                            ; preds = %bb.ie
  %i.awd = getelementptr inbounds nuw i8, ptr %i.avx, i64 32 ; 2 uses
  %i.awe = load i32, ptr %i.awd, align 8, !tbaa !176 ; 2 uses
  %i.awf = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.awe, i32 %i.avw), !nosanitize !9 ; 2 uses
  %i.awg = extractvalue { i32, i1 } %i.awf, 1, !nosanitize !9
  br i1 %i.awg, label %bb.ih, label %bb.ii, !prof !19, !nosanitize !9

bb.ih:                                            ; preds = %bb.ig
  %i.awh = zext i32 %i.awe to i64, !nosanitize !9
  %i.awi = zext i32 %i.avw to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @109, i64 %i.awh, i64 %i.awi) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.ii:                                            ; preds = %bb.ig
  %i.awj = extractvalue { i32, i1 } %i.awf, 0, !nosanitize !9
  store i32 %i.awj, ptr %i.awd, align 8, !tbaa !176
  br label %bb.ip

.critedge7.thread:                                ; preds = %bb.ic, %.split7551
  %i.awk = sext i32 %.08507571 to i64             ; 2 uses
  %i.awl = getelementptr inbounds [40 x i8], ptr %.fr8349, i64 %i.awk ; 6 uses
  %i.awm = mul nsw i64 %i.awk, 40
  %i.awn = add i64 %i.awm, %i.atz, !nosanitize !9 ; 3 uses
  %i.awo = icmp eq i64 %i.awn, 0
  %i.awp = xor i1 %.not8350, %i.awo
  %i.awq = icmp uge i64 %i.awn, %i.atz, !nosanitize !9
  %i.awr = icmp slt i32 %.08507571, 0
  %i.aws = xor i1 %i.awr, %i.awq
  %i.awt = and i1 %i.awp, %i.aws, !nosanitize !9
  br i1 %i.awt, label %bb.ik, label %bb.ij, !prof !10, !nosanitize !9

bb.ij:                                            ; preds = %.critedge7.thread
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @110, i64 %i.atz, i64 %i.awn) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.ik:                                            ; preds = %.critedge7.thread
  %i.awu = ptrtoint ptr %i.awl to i64, !nosanitize !9 ; 2 uses
  %i.awv = and i64 %i.awu, 7, !nosanitize !9
  %i.aww = icmp eq i64 %i.awv, 0, !nosanitize !9
  %i.awx = and i1 %.not8350, %i.aww
  br i1 %i.awx, label %bb.im, label %bb.il, !prof !10, !nosanitize !9

bb.il:                                            ; preds = %bb.ik
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @111, i64 %i.awu) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.im:                                            ; preds = %bb.ik
  store <2 x float> %.sroa.0277.0.copyload, ptr %i.awl, align 8, !tbaa !114
  %.sroa.5279.0..sroa_idx280 = getelementptr inbounds nuw i8, ptr %i.awl, i64 8
  store float %.sroa.5279.0.copyload, ptr %.sroa.5279.0..sroa_idx280, align 8, !tbaa !114
  %i.awy = getelementptr inbounds nuw i8, ptr %i.awl, i64 12
  store <2 x float> %.sroa.0273.0.copyload, ptr %i.awy, align 4, !tbaa !114
  %.sroa.5.0..sroa_idx275 = getelementptr inbounds nuw i8, ptr %i.awl, i64 20
  store float %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx275, align 4, !tbaa !114
  %i.awz = getelementptr inbounds nuw i8, ptr %i.awl, i64 32
  store i32 %i.auv, ptr %i.awz, align 8, !tbaa !176
  store i32 %.08507571, ptr %i.auc, align 4, !tbaa !20
  %i.axa = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.08507571, i32 1), !nosanitize !9 ; 2 uses
  %i.axb = extractvalue { i32, i1 } %i.axa, 1, !nosanitize !9
  br i1 %i.axb, label %bb.in, label %bb.io, !prof !19, !nosanitize !9

bb.in:                                            ; preds = %bb.im
  %i.axc = zext nneg i32 %.08507571 to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @112, i64 %i.axc, i64 1) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.io:                                            ; preds = %bb.im
  %i.axd = extractvalue { i32, i1 } %i.axa, 0, !nosanitize !9
  br label %bb.ip

bb.ip:                                            ; preds = %bb.ii, %bb.io
  %.1851 = phi i32 [ %.08507571, %bb.ii ], [ %i.axd, %bb.io ] ; 14 uses
  %indvars.iv.next13069 = add nuw nsw i64 %indvars.iv13068, 1 ; 2 uses
  %exitcond13072.not = icmp eq i64 %indvars.iv.next13069, %wide.trip.count13071
  br i1 %exitcond13072.not, label %._crit_edge7573, label %.lr.ph7572.split.split, !llvm.loop !41

bb.iq:                                            ; preds = %._crit_edge7573
  %i.axe = mul i32 %i.aux, 24
  %i.axf = call fastcc ptr @b3Bump(ptr noundef nonnull %9, i32 noundef %i.axe) ; 3 uses
  %i.axg = icmp sgt i32 %.1851, 0                 ; 4 uses
  br i1 %i.axg, label %.lr.ph7604.split.preheader, label %.lr.ph7918

.lr.ph7604.split.preheader:                       ; preds = %bb.iq
  %i.axh = ptrtoint ptr %.fr8349 to i64, !nosanitize !9 ; 3 uses
  %i.axi = ptrtoint ptr %i.axf to i64             ; 3 uses
  %i.axj = icmp ne ptr %i.axf, null
  %wide.trip.count13076 = zext nneg i32 %.1851 to i64
  br label %.lr.ph7604.split

bb.ir:                                            ; preds = %bb.iu
  %indvars.iv.next13074 = add nuw nsw i64 %indvars.iv13073, 1 ; 2 uses
  %i.axk = extractvalue { i32, i1 } %i.ayi, 0, !nosanitize !9
  %exitcond13077.not = icmp eq i64 %indvars.iv.next13074, %wide.trip.count13076
  br i1 %exitcond13077.not, label %.lr.ph7918, label %.lr.ph7604.split, !llvm.loop !42

.lr.ph7918:                                       ; preds = %bb.ir, %bb.iq
  %i.axl = ptrtoint ptr %.fr8351 to i64, !nosanitize !9 ; 3 uses
  %i.axm = ptrtoint ptr %.fr8353 to i64           ; 3 uses
  %i.axn = ptrtoint ptr %.fr8349 to i64           ; 3 uses
  %wide.trip.count13084 = zext nneg i32 %.10 to i64
  br label %.lr.ph7918.split

.lr.ph7604.split:                                 ; preds = %.lr.ph7604.split.preheader, %bb.ir
  %indvars.iv13073 = phi i64 [ 0, %.lr.ph7604.split.preheader ], [ %indvars.iv.next13074, %bb.ir ] ; 3 uses
  %.08497601 = phi i32 [ 0, %.lr.ph7604.split.preheader ], [ %i.axk, %bb.ir ] ; 4 uses
  %i.axo = getelementptr inbounds nuw [40 x i8], ptr %.fr8349, i64 %indvars.iv13073 ; 4 uses
  %i.axp = mul nuw nsw i64 %indvars.iv13073, 40
  %i.axq = add i64 %i.axp, %i.axh, !nosanitize !9 ; 2 uses
  %.not8357 = icmp ult i64 %i.axq, %i.axh, !nosanitize !9
  br i1 %.not8357, label %.split7606.us, label %bb.is, !prof !19, !nosanitize !9

.split7606.us:                                    ; preds = %.lr.ph7604.split
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @113, i64 %i.axh, i64 %i.axq) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.is:                                            ; preds = %.lr.ph7604.split
  %i.axr = sext i32 %.08497601 to i64             ; 2 uses
  %i.axs = getelementptr inbounds [24 x i8], ptr %i.axf, i64 %i.axr
  %i.axt = mul nsw i64 %i.axr, 24
  %i.axu = add i64 %i.axt, %i.axi, !nosanitize !9 ; 3 uses
  %i.axv = icmp eq i64 %i.axu, 0
  %i.axw = xor i1 %i.axj, %i.axv
  %i.axx = icmp uge i64 %i.axu, %i.axi, !nosanitize !9
  %i.axy = icmp slt i32 %.08497601, 0
  %i.axz = xor i1 %i.axy, %i.axx
  %i.aya = and i1 %i.axw, %i.axz, !nosanitize !9
  br i1 %i.aya, label %bb.it, label %.split7610.us, !prof !10, !nosanitize !9

.split7610.us:                                    ; preds = %bb.is
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @114, i64 %i.axi, i64 %i.axu) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.it:                                            ; preds = %bb.is
  %i.ayb = ptrtoint ptr %i.axo to i64, !nosanitize !9 ; 2 uses
  %i.ayc = and i64 %i.ayb, 7, !nosanitize !9
  %i.ayd = icmp eq i64 %i.ayc, 0, !nosanitize !9
  br i1 %i.ayd, label %bb.iu, label %.split7614, !prof !10, !nosanitize !9

.split7614:                                       ; preds = %bb.it
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @115, i64 %i.ayb) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.iu:                                            ; preds = %bb.it
  %i.aye = getelementptr inbounds nuw i8, ptr %i.axo, i64 24
  store ptr %i.axs, ptr %i.aye, align 8, !tbaa !177
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.axo, i64 36
  store i32 0, ptr %i.ayf, align 4, !tbaa !178
  %i.ayg = getelementptr inbounds nuw i8, ptr %i.axo, i64 32
  %i.ayh = load i32, ptr %i.ayg, align 8, !tbaa !176 ; 2 uses
  %i.ayi = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.08497601, i32 %i.ayh), !nosanitize !9 ; 2 uses
  %i.ayj = extractvalue { i32, i1 } %i.ayi, 1, !nosanitize !9
  br i1 %i.ayj, label %bb.iv, label %bb.ir, !prof !19, !nosanitize !9

bb.iv:                                            ; preds = %bb.iu
  %i.ayk = zext i32 %.08497601 to i64, !nosanitize !9
  %i.ayl = zext i32 %i.ayh to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @116, i64 %i.ayk, i64 %i.ayl) #8, !nosanitize !9
  unreachable, !nosanitize !9

.preheader.split:                                 ; preds = %.loopexit1315
  br i1 %i.axg, label %.lr.ph7957, label %._crit_edge7958

.lr.ph7957:                                       ; preds = %.preheader.split
  %i.aym = ptrtoint ptr %.fr8349 to i64, !nosanitize !9 ; 3 uses
  %.not8365 = icmp eq ptr %.fr8349, null, !nosanitize !9
  %i.ayn = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  %.not.i.i = icmp eq ptr %11, inttoptr (i64 -16 to ptr)
  %i.ayo = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 5 uses
  %.not217.i.i = icmp ugt ptr %11, inttoptr (i64 -33 to ptr)
  %i.ayp = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 2 uses
end_hunk_0
