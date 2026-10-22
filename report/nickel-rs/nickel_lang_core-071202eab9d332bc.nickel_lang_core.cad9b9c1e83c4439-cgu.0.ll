Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_core-071202eab9d332bc.nickel_lang_core.cad9b9c1e83c4439-cgu.0?download=true
inline.NumInlined: 37290
inline.NumDeleted: 15086
loop-unroll.NumCompletelyUnrolled: 98
loop-unroll.NumRuntimeUnrolled: 96
loop-unroll.NumUnrolled: 197
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@"_ZN16nickel_lang_core4eval27VirtualMachine$LT$R$C$C$GT$17eval_closure_impl17hf7dbabf42d816823E":bb.a
  ], !prof !150

bb.sv:                                            ; preds = %bb.su
  %i.bkr = icmp samesign ugt i64 %i.bkq, 1
  br i1 %i.bkr, label %.invoke7626, label %_ZN16nickel_lang_core4eval5value11NickelValue14inline_pos_idx17h15c7f43697e607a8E.exit.i718, !prof !147

.invoke7626:                                      ; preds = %bb.sv, %bb.su
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1704, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1715, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @463) #82
          to label %.cont7627 unwind label %bb.sy

.cont7627:                                        ; preds = %.invoke7626
  unreachable

_ZN16nickel_lang_core4eval5value11NickelValue14inline_pos_idx17h15c7f43697e607a8E.exit.i718: ; preds = %bb.sv
  %.not.not.i.i719 = icmp eq i64 %i.bkq, 0
  %i.bks = lshr i64 %i.bkp, 32
  %i.bkt = trunc nuw i64 %i.bks to i32
  %.sroa.3.0.i.i720 = select i1 %.not.not.i.i719, i32 undef, i32 %i.bkt
  %i.bku = trunc i64 %i.bkp to i1
  br i1 %i.bku, label %_ZN16nickel_lang_core4eval5value11NickelValue7pos_idx17h071dc4c03a649931E.exit724, label %bb.sx, !prof !154

bb.sw:                                            ; preds = %bb.su
  %i.bkv = getelementptr inbounds nuw i8, ptr %i.bko, i64 8
  %i.bkw = load i32, ptr %i.bkv, align 8, !noalias !41950, !noundef !145
  br label %_ZN16nickel_lang_core4eval5value11NickelValue7pos_idx17h071dc4c03a649931E.exit724

bb.sx:                                            ; preds = %_ZN16nickel_lang_core4eval5value11NickelValue14inline_pos_idx17h15c7f43697e607a8E.exit.i718
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @740) #82
          to label %.noexc723 unwind label %bb.sy

.noexc723:                                        ; preds = %bb.sx
  unreachable

bb.sy:                                            ; preds = %.invoke7626, %bb.sx
  %i.bkx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr52drop_in_place$LT$nickel_lang_core..eval..Closure$GT$17h7d607a1ec5bd1fdaE"(ptr noalias noundef align 8 dereferenceable(24) %i.ft) #86
          to label %bb.sp unwind label %bb.cn

_ZN16nickel_lang_core4eval5value11NickelValue7pos_idx17h071dc4c03a649931E.exit724: ; preds = %bb.sw, %_ZN16nickel_lang_core4eval5value11NickelValue14inline_pos_idx17h15c7f43697e607a8E.exit.i718
  %.sroa.0.0.i717 = phi i32 [ %i.bkw, %bb.sw ], [ %.sroa.3.0.i.i720, %_ZN16nickel_lang_core4eval5value11NickelValue14inline_pos_idx17h15c7f43697e607a8E.exit.i718 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fv, ptr noundef nonnull align 8 dereferenceable(40) %i.fu, i64 40, i1 false)
  store i32 %i.bjq, ptr %i.hn, align 8
  store i32 %.sroa.0.0.i, ptr %i.ho, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hp, ptr noundef nonnull align 8 dereferenceable(24) %i.ft, i64 24, i1 false)
  store i32 %.sroa.0.0.i717, ptr %i.hq, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ft)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fu)
  call void @llvm.experimental.noalias.scope.decl(metadata !41951)
  %i.bky = load i64, ptr %i.gu, align 8, !alias.scope !41951, !noundef !145 ; 5 uses
  %i.bkz = icmp sgt i64 %i.bky, -1
  call void @llvm.assume(i1 %i.bkz)
  %i.bla = load i64, ptr %1, align 8, !range !146, !alias.scope !41952, !noundef !145
  %i.blb = sub nsw i64 %i.bla, %i.bky
  %i.blc = icmp ult i64 %i.blb, 81
  br i1 %i.blc, label %bb.ta, label %bb.tc, !prof !147

bb.sz:                                            ; preds = %bb.ta
  %i.bld = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr68drop_in_place$LT$nickel_lang_core..eval..stack..Op2FirstContItem$GT$17h21e97cc428a406c0E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(80) %i.fv) #86
          to label %.thread unwind label %bb.tb, !noalias !41951

bb.ta:                                            ; preds = %_ZN16nickel_lang_core4eval5value11NickelValue7pos_idx17h071dc4c03a649931E.exit724
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h668137d68fb7f885E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.bky, i64 noundef 81, i64 noundef 1, i64 noundef 1)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit_crit_edge.i726" unwind label %bb.sz, !noalias !41953

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit_crit_edge.i726": ; preds = %bb.ta
  %.pre.i727 = load i64, ptr %i.gu, align 8, !alias.scope !41951
  br label %bb.tc

bb.tb:                                            ; preds = %bb.sz
  %i.ble = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85, !noalias !41954
  unreachable

bb.tc:                                            ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit_crit_edge.i726", %_ZN16nickel_lang_core4eval5value11NickelValue7pos_idx17h071dc4c03a649931E.exit724
  %i.blf = phi i64 [ %.pre.i727, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit_crit_edge.i726" ], [ %i.bky, %_ZN16nickel_lang_core4eval5value11NickelValue7pos_idx17h071dc4c03a649931E.exit724 ] ; 2 uses
  %i.blg = load ptr, ptr %i.gt, align 8, !alias.scope !41951, !nonnull !145, !noundef !145
  %i.blh = icmp sgt i64 %i.blf, -1
  call void @llvm.assume(i1 %i.blh)
  %i.bli = getelementptr inbounds nuw i8, ptr %i.blg, i64 %i.blf ; 2 uses
  %i.blj = getelementptr inbounds nuw i8, ptr %i.bli, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(80) %i.bli, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.fv, i64 80, i1 false), !noalias !41951
  store i8 5, ptr %i.blj, align 1, !noalias !41954
  %i.blk = add nuw i64 %i.bky, 81
  store i64 %i.blk, ptr %i.gu, align 8, !alias.scope !41951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fv)
  %.val358 = load ptr, ptr %i.bkn, align 8, !nonnull !145, !noundef !145 ; 4 uses
  %i.bll = ptrtoint ptr %.val358 to i64
  %i.blm = and i64 %i.bll, 3
  %..i732 = call i64 @llvm.umin.i64(i64 %i.blm, i64 2)
  switch i64 %..i732, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit735" [
    i64 2, label %.invoke
    i64 0, label %bb.td
  ], !prof !150

bb.td:                                            ; preds = %bb.tc
  %i.bln = load i64, ptr %.val358, align 8, !noundef !145 ; 3 uses
  %i.blo = and i64 %i.bln, 72057594037927935      ; 3 uses
  %i.blp = icmp ne i64 %i.blo, 0
  call void @llvm.assume(i1 %i.blp)
  %i.blq = add nuw nsw i64 %i.blo, 1
  %i.blr = and i64 %i.bln, 1080863910568919040
  %i.bls = icmp ult i64 %i.bln, 864691128455135232
  call void @llvm.assume(i1 %i.bls)
  %i.blt = or i64 %i.blq, %i.blr
  store i64 %i.blt, ptr %.val358, align 8
  %i.blu = icmp eq i64 %i.blo, 72057594037927935
  br i1 %i.blu, label %bb.te, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit735", !prof !147

bb.te:                                            ; preds = %bb.td
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr @2796, ptr %i.v, align 8
  br label %.invoke7614

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit735": ; preds = %bb.td, %bb.tc
  %i.blv = load ptr, ptr %i.go, align 16, !nonnull !145, !noundef !145
  %i.blw = load ptr, ptr %i.gs, align 8, !noundef !145
  %i.blx = ptrtoint ptr %i.blw to i64
  br label %.thread1353.sink.split

switch.lookup:                                    ; preds = %bb.aq
  %i.bly = getelementptr inbounds nuw i8, ptr %i.lv, i64 48
  %i.blz = load i8, ptr %i.bly, align 8, !range !229, !noundef !145 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !41955
  store i64 0, ptr %i.u, align 8, !noalias !41955
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !41955
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !41955
  %i.bma = zext nneg i8 %i.blz to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_opn28_$u7b$$u7b$closure$u7d$$u7d$17h3302ddcce2a821cfE", i64 %i.bma
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.bmb = zext nneg i8 %i.blz to i64
  %switch.gep9223 = getelementptr inbounds nuw i8, ptr @"switch.table._ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_opn28_$u7b$$u7b$closure$u7d$$u7d$17h3302ddcce2a821cfE.5895", i64 %i.bmb
  %switch.load9224 = load i8, ptr %switch.gep9223, align 1
  %switch.ext = zext i8 %switch.load9224 to i64   ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !41956)
  call void @llvm.experimental.noalias.scope.decl(metadata !41957)
  call void @llvm.experimental.noalias.scope.decl(metadata !41958)
  call void @llvm.experimental.noalias.scope.decl(metadata !41959)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h668137d68fb7f885E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u, i64 noundef 0, i64 noundef %switch.ext, i64 noundef 1, i64 noundef 1)
          to label %bb.th unwind label %bb.tf, !noalias !41955

bb.tf:                                            ; preds = %switch.lookup
  %i.bmc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !41960)
  call void @llvm.experimental.noalias.scope.decl(metadata !41961)
  %.val.i.i.i736 = load i64, ptr %i.u, align 8, !range !146, !alias.scope !41962, !noalias !41955, !noundef !145 ; 2 uses
  %i.bmd = icmp eq i64 %.val.i.i.i736, 0
  br i1 %i.bmd, label %.thread, label %bb.tg

bb.tg:                                            ; preds = %bb.tf
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !41962, !noalias !41955, !nonnull !145, !noundef !145
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i736, i64 noundef range(i64 1, -9223372036854775807) 1) #83, !noalias !41963
  br label %.thread

bb.th:                                            ; preds = %switch.lookup
  %i.bme = icmp eq i8 %i.blz, 4
  %.321 = select i1 %i.bme, i64 4, i64 3
  %.pre.i.i.i.i.i737 = load i64, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !41964, !noalias !41955 ; 3 uses
  %i.bmf = icmp sgt i64 %.pre.i.i.i.i.i737, -1
  call void @llvm.assume(i1 %i.bmf)
  %i.bmg = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !41964, !noalias !41955, !nonnull !145, !noundef !145
  %i.bmh = getelementptr inbounds nuw i8, ptr %i.bmg, i64 %.pre.i.i.i.i.i737
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bmh, ptr noundef nonnull readonly align 1 dereferenceable(1) %switch.load, i64 %switch.ext, i1 false), !noalias !41965
  %i.bmi = add nuw i64 %.pre.i.i.i.i.i737, %switch.ext
  store i64 %i.bmi, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !41964, !noalias !41955
  %.sroa.01015.0.copyload = load ptr, ptr %i.u, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.42.0..sroa_idx.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !41955
  store i64 27, ptr %i.dx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store ptr %.sroa.01015.0.copyload, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  store i64 %.321, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 40
  store i32 %.sroa.0.0.i, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  %i.bmj = invoke fastcc noundef ptr @_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E(i64 noundef 392, i64 noundef 8)
          to label %bb.ui unwind label %bb.ti, !noalias !41966 ; 2 uses

bb.ti:                                            ; preds = %bb.th
  %i.bmk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17hc2be2c52d5dcc099E"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.dx) #86
          to label %.thread unwind label %bb.tj

bb.tj:                                            ; preds = %bb.ti
  %i.bml = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85
  unreachable

bb.tk:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !41967
  %gepdiff = add nsw i64 %.idx, -8                ; 3 uses
  %i.bmm = lshr exact i64 %gepdiff, 3             ; 3 uses
  %i.bmn = mul nuw nsw i64 %i.bmm, 24             ; 2 uses
  %or.cond.i.i.i.i.i.i.i = icmp ugt i64 %gepdiff, 3074457345618258600
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.tm, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i747, !prof !151

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i747: ; preds = %bb.tk
  %i.bmo = icmp eq i64 %gepdiff, 0
  br i1 %i.bmo, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h743fc863ed342438E.exit.i.i.i.i.i.i", label %bb.tl

bb.tl:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i747
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83, !noalias !41968
  %i.bmp = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.bmn, i64 noundef range(i64 1, 9) 8) #83, !noalias !41968 ; 2 uses
  %i.bmq = icmp eq ptr %i.bmp, null
  br i1 %i.bmq, label %bb.tm, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h743fc863ed342438E.exit.i.i.i.i.i.i"

bb.tm:                                            ; preds = %bb.tl, %bb.tk
  %.sroa.10.0.ph.i.i.i.i.i = phi i64 [ %i.bmn, %bb.tl ], [ undef, %bb.tk ]
  %.sroa.4.0.ph.i.i.i.i.i754 = phi i64 [ 8, %bb.tl ], [ 0, %bb.tk ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i754, i64 %.sroa.10.0.ph.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1687) #82
          to label %.noexc755 unwind label %.loopexit.split-lp1466

.noexc755:                                        ; preds = %bb.tm
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h743fc863ed342438E.exit.i.i.i.i.i.i": ; preds = %bb.tl, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i747
  %.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i747 ], [ %i.bmp, %bb.tl ] ; 2 uses
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i747 ], [ %i.bmm, %bb.tl ] ; 2 uses
  %i.bmr = icmp samesign ule i64 %i.bmm, %.sroa.4.0.i.i.i.i.i
  call void @llvm.assume(i1 %i.bmr)
  store i64 %.sroa.4.0.i.i.i.i.i, ptr %i.t, align 8, !noalias !41967
  store ptr %.sroa.10.0.i.i.i.i.i, ptr %i.ha, align 8, !noalias !41967
  call void @llvm.experimental.noalias.scope.decl(metadata !41969)
  call void @llvm.experimental.noalias.scope.decl(metadata !41970)
  %i.bms = icmp eq i64 %i.qc, 1
  br i1 %i.bms, label %.loopexit1464, label %.lr.ph.i.i.i.i.i.i.i.i.i.i748

.lr.ph.i.i.i.i.i.i.i.i.i.i748:                    ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h743fc863ed342438E.exit.i.i.i.i.i.i", %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h68051b920f4928d5E.exit.i.i.i.i.i.i.i.i.i.i"
  %.val7.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bnp, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h68051b920f4928d5E.exit.i.i.i.i.i.i.i.i.i.i" ], [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h743fc863ed342438E.exit.i.i.i.i.i.i" ] ; 3 uses
  %.sroa.2.013.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bmt, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h68051b920f4928d5E.exit.i.i.i.i.i.i.i.i.i.i" ], [ %i.qd, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h743fc863ed342438E.exit.i.i.i.i.i.i" ]
  %i.bmt = getelementptr inbounds i8, ptr %.sroa.2.013.i.i.i.i.i.i.i.i.i.i, i64 -8 ; 3 uses
  %.val8.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bmt, align 8, !noalias !41971, !nonnull !145, !noundef !145 ; 4 uses
  %i.bmu = ptrtoint ptr %.val8.i.i.i.i.i.i.i.i.i.i to i64
  %i.bmv = and i64 %i.bmu, 3
  %..i.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bmv, i64 2)
  switch i64 %..i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i.i.i.i.i.i.i.i.i.i.i" [
    i64 2, label %bb.tn
    i64 0, label %bb.to
  ], !prof !150

bb.tn:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i748
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1704, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1715, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @463) #82
          to label %.noexc.i.i.i.i.i.i.i.i.i.i753 unwind label %.body.i.i.i.i752, !noalias !41971

.noexc.i.i.i.i.i.i.i.i.i.i753:                    ; preds = %bb.tn
  unreachable

bb.to:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i748
  %i.bmw = load i64, ptr %.val8.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !41972, !noundef !145 ; 3 uses
  %i.bmx = and i64 %i.bmw, 72057594037927935      ; 3 uses
  %i.bmy = icmp ne i64 %i.bmx, 0
  call void @llvm.assume(i1 %i.bmy)
  %i.bmz = add nuw nsw i64 %i.bmx, 1
  %i.bna = and i64 %i.bmw, 1080863910568919040
  %i.bnb = icmp ult i64 %i.bmw, 864691128455135232
  call void @llvm.assume(i1 %i.bnb)
  %i.bnc = or i64 %i.bmz, %i.bna
  store i64 %i.bnc, ptr %.val8.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !41972
  %i.bnd = icmp eq i64 %i.bmx, 72057594037927935
  br i1 %i.bnd, label %bb.tp, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i.i.i.i.i.i.i.i.i.i.i", !prof !147

bb.tp:                                            ; preds = %bb.to
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !41972
  store ptr @2796, ptr %i.s, align 8, !noalias !41972
  %i.bne = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 1, ptr %i.bne, align 8, !noalias !41972
  %i.bnf = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr null, ptr %i.bnf, align 8, !noalias !41972
  %i.bng = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.bng, align 8, !noalias !41972
  %i.bnh = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i64 0, ptr %i.bnh, align 8, !noalias !41972
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2797) #82
          to label %.noexc9.i.i.i.i.i.i.i.i.i.i unwind label %.body.i.i.i.i752, !noalias !41971

.noexc9.i.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.tp
  unreachable

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.to, %.lr.ph.i.i.i.i.i.i.i.i.i.i748
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.go, align 16, !noalias !41972, !nonnull !145, !noundef !145 ; 3 uses
  %.val2.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.gs, align 8, !noalias !41972 ; 4 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i749 = load i64, ptr %.val1.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !41972, !noundef !145 ; 2 uses
  %i.bni = icmp ne i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i749, 0
  call void @llvm.assume(i1 %i.bni)
  %i.bnj = add i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i749, 1 ; 2 uses
  store i64 %i.bnj, ptr %.val1.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !41972
  %i.bnk = icmp eq i64 %i.bnj, 0
  br i1 %i.bnk, label %bb.tq, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h41c23a9b09e3f58cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !147

bb.tq:                                            ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h41c23a9b09e3f58cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i750 = icmp eq ptr %.val2.i.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i750, label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h68051b920f4928d5E.exit.i.i.i.i.i.i.i.i.i.i", label %bb.tr

bb.tr:                                            ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h41c23a9b09e3f58cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.val.i2.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.val2.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !41972, !noundef !145 ; 2 uses
  %i.bnl = icmp ne i64 %.val.i2.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  call void @llvm.assume(i1 %i.bnl)
  %i.bnm = add i64 %.val.i2.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  store i64 %i.bnm, ptr %.val2.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !41972
  %i.bnn = icmp eq i64 %i.bnm, 0
  br i1 %i.bnn, label %bb.ts, label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h68051b920f4928d5E.exit.i.i.i.i.i.i.i.i.i.i", !prof !147

bb.ts:                                            ; preds = %bb.tr
  call void @llvm.trap()
  unreachable

"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h68051b920f4928d5E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.tr, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h41c23a9b09e3f58cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bno = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i.i.i.i.i, i64 %.val7.i.i.i.i.i.i.i.i.i.i ; 3 uses
  store ptr %.val8.i.i.i.i.i.i.i.i.i.i, ptr %i.bno, align 8, !noalias !41973
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i751 = getelementptr inbounds nuw i8, ptr %i.bno, i64 8
  store ptr %.val1.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i751, align 8, !noalias !41973
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bno, i64 16
  store ptr %.val2.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !41973
  %i.bnp = add nuw nsw i64 %.val7.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bnq = icmp eq ptr %.sroa.064.0, %i.bmt
  br i1 %i.bnq, label %.loopexit1464, label %.lr.ph.i.i.i.i.i.i.i.i.i.i748

.body.i.i.i.i752:                                 ; preds = %bb.tp, %bb.tn
  %i.bnr = landingpad { ptr, i32 }
          cleanup
  store i64 %.val7.i.i.i.i.i.i.i.i.i.i, ptr %i.hb, align 8, !alias.scope !41974, !noalias !41975
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..eval..Closure$GT$$GT$17h150c5618fa11f746E"(ptr noalias noundef align 8 dereferenceable(24) %i.t) #86
          to label %.thread unwind label %bb.tt, !noalias !41967

bb.tt:                                            ; preds = %.body.i.i.i.i752
  %i.bns = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85, !noalias !41967
  unreachable

.loopexit1464:                                    ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h68051b920f4928d5E.exit.i.i.i.i.i.i.i.i.i.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h743fc863ed342438E.exit.i.i.i.i.i.i"
  %.val5.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h743fc863ed342438E.exit.i.i.i.i.i.i" ], [ %i.bnp, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h68051b920f4928d5E.exit.i.i.i.i.i.i.i.i.i.i" ]
  store i64 %.val5.i.i.i.i.i.i.i.i.i.i, ptr %i.hb, align 8, !alias.scope !41974, !noalias !41975
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fq, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !41967
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fs)
  %i.bnt = getelementptr inbounds nuw i8, ptr %i.lv, i64 48
  %i.bnu = load i8, ptr %i.bnt, align 8, !range !229, !noundef !145
  %i.bnv = load i64, ptr %i.hc, align 8, !noundef !145 ; 2 uses
  %i.bnw = icmp ult i64 %i.bnv, 288230376151711744
  call void @llvm.assume(i1 %i.bnw)
  %i.bnx = trunc i64 %i.bnv to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fr)
  %i.bny = load i64, ptr %i.hd, align 8, !noundef !145 ; 3 uses
  %i.bnz = icmp ult i64 %i.bny, 384307168202282326
  call void @llvm.assume(i1 %i.bnz)
  %i.boa = add nuw nsw i64 %i.bny, 1              ; 2 uses
  %i.bob = icmp samesign ugt i64 %i.bny, 288230376151711742
  br i1 %i.bob, label %bb.tu, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i, !prof !151

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i: ; preds = %.loopexit1464
  %i.boc = shl nuw nsw i64 %i.boa, 5              ; 2 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83, !noalias !41976
  %i.bod = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.boc, i64 noundef range(i64 1, 9) 8) #83, !noalias !41976 ; 2 uses
  %i.boe = icmp eq ptr %i.bod, null
  br i1 %i.boe, label %bb.tu, label %bb.tv

bb.tu:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i, %.loopexit1464
  %.sroa.10.0.ph.i = phi i64 [ %i.boc, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i ], [ undef, %.loopexit1464 ]
  %.sroa.4.0.ph.i = phi i64 [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i ], [ 0, %.loopexit1464 ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i, i64 %.sroa.10.0.ph.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @684) #82
          to label %.noexc760 unwind label %bb.uh

.noexc760:                                        ; preds = %bb.tu
  unreachable

bb.tv:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  store i64 %i.boa, ptr %i.fr, align 8
  store ptr %i.bod, ptr %i.he, align 8
  store i64 0, ptr %i.hf, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !41977)
  %i.bof = load ptr, ptr %i.qa, align 8, !alias.scope !41977, !nonnull !145, !noundef !145 ; 2 uses
  %i.bog = ptrtoint ptr %i.bof to i64             ; 3 uses
  %i.boh = and i64 %i.bog, 3                      ; 3 uses
  %..i761 = call i64 @llvm.umin.i64(i64 %i.boh, i64 2)
  switch i64 %..i761, label %bb.tw [
    i64 2, label %.invoke7628
    i64 0, label %bb.tx
  ], !prof !150

bb.tw:                                            ; preds = %bb.tv
  %i.boi = icmp samesign ugt i64 %i.boh, 1
  br i1 %i.boi, label %.invoke7628, label %_ZN16nickel_lang_core4eval5value11NickelValue14inline_pos_idx17h15c7f43697e607a8E.exit.i763, !prof !147

.invoke7628:                                      ; preds = %bb.tw, %bb.tv
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1704, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1715, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @463) #82
          to label %.cont7629 unwind label %bb.tz

.cont7629:                                        ; preds = %.invoke7628
  unreachable

_ZN16nickel_lang_core4eval5value11NickelValue14inline_pos_idx17h15c7f43697e607a8E.exit.i763: ; preds = %bb.tw
  %.not.not.i.i764 = icmp eq i64 %i.boh, 0
  %i.boj = lshr i64 %i.bog, 32
end_hunk_0
