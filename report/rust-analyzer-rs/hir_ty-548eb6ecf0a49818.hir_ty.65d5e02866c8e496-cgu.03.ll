Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_ty-548eb6ecf0a49818.hir_ty.65d5e02866c8e496-cgu.03?download=true
inline.NumInlined: 6210
inline.NumDeleted: 2657
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_RNvMs3_NtNtCs8K4cjrcxBsw_6hir_ty3mir5lowerNtB5_11MirLowerCtx34lower_expr_to_place_without_adjust:bb.a
  %.sroa.41813.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  %.sroa.41813.0.copyload = load i32, ptr %.sroa.41813.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef)
  store i32 8, ptr %0, align 8
  %.sroa.41822.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.41813.0.copyload, ptr %.sroa.41822.0..sroa_idx, align 4
  br label %bb.dm

bb.ma:                                            ; preds = %bb.cv
  %i.atg = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.atg, i64 24, i1 false)
  %.sroa.41839.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ath = load <2 x i32>, ptr %.sroa.41836.0..sroa_idx, align 8
  store <2 x i32> %i.ath, ptr %.sroa.41839.0..sroa_idx, align 8
  br label %bb.dm

bb.mb:                                            ; preds = %bb.cv
  %.sroa.51830.0.copyload = load i32, ptr %.sroa.41836.0..sroa_idx, align 8 ; 2 uses
  %.not2354 = icmp eq i32 %i.ta, -1
  br i1 %.not2354, label %bb.md, label %bb.mc

bb.mc:                                            ; preds = %bb.mb
  %.sroa.41829.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed)
  store i32 %i.ta, ptr %i.ed, align 8
  %.sroa.3711.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.3711.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.41829.0..sroa_idx, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6723)
  %i.ati = getelementptr inbounds nuw i8, ptr %1, i64 896 ; 3 uses
  %i.atj = load ptr, ptr %i.ati, align 8, !nonnull !11, !align !18, !noundef !11
  %i.atk = getelementptr inbounds nuw i8, ptr %i.atj, i64 408
  %i.atl = invoke noundef zeroext i1 @_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12contains_keyBO_ECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.atk, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.sy)
          to label %bb.me unwind label %bb.mq

bb.md:                                            ; preds = %bb.mb
  %i.atm = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.atm, align 4
  store i32 -1, ptr %0, align 8
  br label %bb.dm

bb.me:                                            ; preds = %bb.mc
  br i1 %i.atl, label %bb.mg, label %bb.mf

bb.mf:                                            ; preds = %bb.me
  %i.atn = load ptr, ptr %i.ati, align 8, !nonnull !11, !align !18, !noundef !11
  %i.ato = load i32, ptr %i.sy, align 4, !noundef !11
  %i.atp = invoke noundef nonnull ptr @_RNvMs9_NtCs8K4cjrcxBsw_6hir_ty5inferNtB5_15InferenceResult7expr_ty(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(496) %i.atn, i32 noundef %i.ato)
          to label %bb.mh unwind label %bb.mq     ; 3 uses

bb.mg:                                            ; preds = %bb.me
  %.sroa.6723.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6723, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.6723.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.ed, i64 32, i1 false)
  br label %bb.mp

bb.mh:                                            ; preds = %bb.mf
  %i.atq = load ptr, ptr %i.ati, align 8, !nonnull !11, !align !18, !noundef !11
  %i.atr = invoke noundef nonnull ptr @_RNvMs9_NtCs8K4cjrcxBsw_6hir_ty5inferNtB5_15InferenceResult7expr_ty(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(496) %i.atq, i32 noundef %2)
          to label %bb.mi unwind label %bb.mq     ; 2 uses

bb.mi:                                            ; preds = %bb.mh
  %.sroa.0.0.copyload.i2586 = load i32, ptr %i.atp, align 8, !noalias !12312 ; 2 uses
  %i.ats = icmp ne i32 %.sroa.0.0.copyload.i2586, 27
  tail call void @llvm.assume(i1 %i.ats)
  %i.att = icmp eq i32 %.sroa.0.0.copyload.i2586, 14
  br i1 %i.att, label %_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB2_2Ty12as_reference.exit, label %_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB2_2Ty12as_reference.exit.thread

_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB2_2Ty12as_reference.exit: ; preds = %bb.mi
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.atp, i64 24
  %.sroa.6.0.copyload.i = load i8, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !12312
  %.not2355 = icmp eq i8 %.sroa.6.0.copyload.i, 2
  br i1 %.not2355, label %_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB2_2Ty12as_reference.exit.thread, label %bb.mm

_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB2_2Ty12as_reference.exit.thread: ; preds = %bb.mi, %_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB2_2Ty12as_reference.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec)
  %i.atu = getelementptr inbounds nuw i8, ptr %1, i64 872
  %i.atv = load ptr, ptr %i.atu, align 8, !nonnull !11, !noundef !11
  %i.atw = getelementptr inbounds nuw i8, ptr %1, i64 880
  %i.atx = load ptr, ptr %i.atw, align 8, !nonnull !11, !align !18, !noundef !11
  invoke fastcc void @_RNvNtNtCs8K4cjrcxBsw_6hir_ty3mir5lower9cast_kind(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.ec, ptr noundef nonnull %i.atv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) %i.atx, ptr noundef nonnull %i.atp, ptr noundef nonnull %i.atr)
          to label %bb.mj unwind label %bb.mq

bb.mj:                                            ; preds = %_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB2_2Ty12as_reference.exit.thread
  %i.aty = load i32, ptr %i.ec, align 8, !range !29, !noundef !11 ; 2 uses
  %.not2356 = icmp eq i32 %i.aty, -1
  %i.atz = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %i.aua = load i8, ptr %i.atz, align 4           ; 2 uses
  br i1 %.not2356, label %bb.ml, label %bb.mk

bb.mk:                                            ; preds = %bb.mj
  %.sroa.51846.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 5
  %.sroa.51849.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %.sroa.51849.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(27) %.sroa.51846.0..sroa_idx, i64 27, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec)
  store i32 %i.aty, ptr %0, align 8
  %.sroa.41848.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.aua, ptr %.sroa.41848.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6723)
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty3mir11OperandKindEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ed)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed)
  br label %bb.dm

bb.ml:                                            ; preds = %bb.mj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec)
  br label %bb.mm

bb.mm:                                            ; preds = %_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB2_2Ty12as_reference.exit, %bb.ml
  %.sroa.0738.0 = phi i8 [ %i.aua, %bb.ml ], [ 6, %_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB2_2Ty12as_reference.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eb, ptr noundef nonnull align 8 dereferenceable(32) %i.ed, i64 32, i1 false)
  %i.aub = invoke fastcc noundef nonnull ptr @_RNvMsA_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB5_2Ty5store(ptr noundef nonnull %i.atr)
          to label %bb.mo unwind label %bb.mn

bb.mn:                                            ; preds = %bb.mm
  %i.auc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty3mir11OperandKindEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.eb)
          to label %common.resume3293 unwind label %bb.ee

bb.mo:                                            ; preds = %bb.mm
  %.sroa.6723.8..sroa_idx724 = getelementptr inbounds nuw i8, ptr %.sroa.6723, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.6723.8..sroa_idx724, ptr noundef nonnull align 8 dereferenceable(32) %i.eb, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb)
  br label %bb.mp

bb.mp:                                            ; preds = %bb.mg, %bb.mo
  %.sroa.9726.0 = phi i8 [ undef, %bb.mg ], [ %.sroa.0738.0, %bb.mo ]
  %.sroa.8725.0 = phi ptr [ undef, %bb.mg ], [ %i.aub, %bb.mo ]
  %.sroa.0722.0 = phi i32 [ 5, %bb.mg ], [ 11, %bb.mo ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea)
  store i32 %.sroa.0722.0, ptr %i.ea, align 8
  %.sroa.6723.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.6723.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.6723, i64 36, i1 false)
  %.sroa.8725.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ea, i64 40
  store ptr %.sroa.8725.0, ptr %.sroa.8725.0..sroa_idx, align 8
  %.sroa.9726.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  store i8 %.sroa.9726.0, ptr %.sroa.9726.0..sroa_idx, align 8
  %i.aud = load ptr, ptr %i.hs, align 8, !nonnull !11, !noundef !11
  %i.aue = load i32, ptr %i.hu, align 8, !noundef !11
  %i.auf = getelementptr inbounds nuw i8, ptr %1, i64 552
  %.val2496 = load ptr, ptr %i.auf, align 8
  %i.aug = getelementptr inbounds nuw i8, ptr %1, i64 560
  %.val2497 = load i64, ptr %i.aug, align 8
  call fastcc void @_RNvMs3_NtNtCs8K4cjrcxBsw_6hir_ty3mir5lowerNtB5_11MirLowerCtx15push_assignment(ptr %.val2496, i64 %.val2497, i32 noundef %.sroa.51830.0.copyload, ptr noundef nonnull %i.aud, i32 noundef %i.aue, ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.ea, i32 noundef 0, i32 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea)
  %i.auh = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.auh, align 4
  %i.aui = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.51830.0.copyload, ptr %i.aui, align 8
  store i32 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6723)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed)
  br label %bb.dm

bb.mq:                                            ; preds = %_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB2_2Ty12as_reference.exit.thread, %bb.mh, %bb.mf, %bb.mc
  %i.auj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty3mir11OperandKindEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ed)
          to label %common.resume3293 unwind label %bb.ee

bb.mr:                                            ; preds = %bb.cw
  %.sroa.41863.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  %.sroa.41863.0.copyload = load i32, ptr %.sroa.41863.0..sroa_idx, align 4
  %.sroa.51864.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %.sroa.51864.0.copyload = load ptr, ptr %.sroa.51864.0..sroa_idx, align 8
  %.sroa.61865.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %.sroa.41870.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.51871.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.61872.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.auk = load <4 x i32>, ptr %.sroa.61865.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy)
  store i32 %i.te, ptr %0, align 8
  store i32 %.sroa.41863.0.copyload, ptr %.sroa.41870.0..sroa_idx, align 4
  store ptr %.sroa.51864.0.copyload, ptr %.sroa.51871.0..sroa_idx, align 8
  store <4 x i32> %i.auk, ptr %.sroa.61872.0..sroa_idx, align 8
  br label %bb.dm

bb.ms:                                            ; preds = %bb.cw
  %i.aul = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %.sroa.01850.0.copyload = load ptr, ptr %i.aul, align 8 ; 2 uses
  %.sroa.41851.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %.sroa.41851.0.copyload = load i32, ptr %.sroa.41851.0..sroa_idx, align 8
  %.sroa.61853.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %.sroa.61853.0.copyload = load i32, ptr %.sroa.61853.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy)
  %.not2353 = icmp eq ptr %.sroa.01850.0.copyload, null
  br i1 %.not2353, label %bb.mt, label %bb.mu

bb.mt:                                            ; preds = %bb.ms
  %i.aum = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.aum, align 4
  store i32 -1, ptr %0, align 8
  br label %bb.dm

bb.mu:                                            ; preds = %bb.ms
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz)
  store ptr %.sroa.01850.0.copyload, ptr %i.dz, align 8
  %i.aun = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store i32 %.sroa.41851.0.copyload, ptr %i.aun, align 8
  %i.auo = getelementptr inbounds nuw i8, ptr %i.ie, i64 9
  %i.aup = load i8, ptr %i.auo, align 1, !range !19, !noundef !11
  %6 = shl nuw nsw i8 %i.aup, 1
  %..i = xor i8 %6, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx)
  %i.auq = call { ptr, i32 } @_RNvMs8_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_8PlaceRef5store(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.dz) ; 2 uses
  %i.aur = extractvalue { ptr, i32 } %i.auq, 0
  %i.aus = extractvalue { ptr, i32 } %i.auq, 1
  %i.aut = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  store i8 %..i, ptr %i.aut, align 8
  %i.auu = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store ptr %i.aur, ptr %i.auu, align 8
  %i.auv = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  store i32 %i.aus, ptr %i.auv, align 8
  store i32 7, ptr %i.dx, align 8
  %i.auw = load ptr, ptr %i.hs, align 8, !nonnull !11, !noundef !11
  %i.aux = load i32, ptr %i.hu, align 8, !noundef !11
  %i.auy = getelementptr inbounds nuw i8, ptr %1, i64 552
  %.val2494 = load ptr, ptr %i.auy, align 8
  %i.auz = getelementptr inbounds nuw i8, ptr %1, i64 560
  %.val2495 = load i64, ptr %i.auz, align 8
  call fastcc void @_RNvMs3_NtNtCs8K4cjrcxBsw_6hir_ty3mir5lowerNtB5_11MirLowerCtx15push_assignment(ptr %.val2494, i64 %.val2495, i32 noundef %.sroa.61853.0.copyload, ptr noundef nonnull %i.auw, i32 noundef %i.aux, ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.dx, i32 noundef 0, i32 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx)
  %i.ava = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.ava, align 4
  %i.avb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.61853.0.copyload, ptr %i.avb, align 8
  store i32 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz)
  br label %bb.dm

bb.mv:                                            ; preds = %bb.cx
  %i.avc = getelementptr inbounds nuw i8, ptr %i.ie, i64 4
  %i.avd = load i32, ptr %i.avc, align 4, !noundef !11
  call void @_RNvMs3_NtNtCs8K4cjrcxBsw_6hir_ty3mir5lowerNtB5_11MirLowerCtx26lower_expr_to_some_operand(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.bf, ptr noalias nofree noundef nonnull align 8 dereferenceable(952) %1, i32 noundef %i.avd, i32 noundef %5)
  %i.ave = load i32, ptr %i.bf, align 8, !range !65, !noundef !11 ; 3 uses
  %i.avf = icmp eq i32 %i.ave, -2
  %.sroa.41910.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 32 ; 2 uses
  br i1 %i.avf, label %bb.mw, label %bb.mx

bb.mw:                                            ; preds = %bb.mv
  %i.avg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.avg, i64 24, i1 false)
  %.sroa.41913.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.avh = load <2 x i32>, ptr %.sroa.41910.0..sroa_idx, align 8
  store <2 x i32> %i.avh, ptr %.sroa.41913.0..sroa_idx, align 8
  br label %bb.dm

bb.mx:                                            ; preds = %bb.mv
  %.sroa.51904.0.copyload = load i32, ptr %.sroa.41910.0..sroa_idx, align 8 ; 2 uses
  %.not2349 = icmp eq i32 %i.ave, -1
  br i1 %.not2349, label %bb.mz, label %bb.my

bb.my:                                            ; preds = %bb.mx
  %.sroa.41903.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt)
  store i32 %i.ave, ptr %i.dt, align 8
  %.sroa.3788.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.3788.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.41903.0..sroa_idx, i64 28, i1 false)
  %i.avi = load i8, ptr %i.tf, align 8, !range !20, !noundef !11
  switch i8 %i.avi, label %default.unreachable [
    i8 1, label %bb.nc
    i8 2, label %bb.na
    i8 0, label %bb.nb
  ], !prof !12313

bb.mz:                                            ; preds = %bb.mx
  %i.avj = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.avj, align 4
  store i32 -1, ptr %0, align 8
  br label %bb.dm

bb.na:                                            ; preds = %bb.my
  br label %bb.nc

bb.nb:                                            ; preds = %bb.my
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @275) #46
          to label %bb.lh unwind label %bb.nd

bb.nc:                                            ; preds = %bb.na, %bb.my
  %.sroa.0799.0 = phi i8 [ 1, %bb.na ], [ 0, %bb.my ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds)
  %i.avk = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.avk, ptr noundef nonnull align 8 dereferenceable(32) %i.dt, i64 32, i1 false)
  %i.avl = getelementptr inbounds nuw i8, ptr %i.ds, i64 40
  store i8 %.sroa.0799.0, ptr %i.avl, align 8
  store i32 15, ptr %i.ds, align 8
  %i.avm = load ptr, ptr %i.hs, align 8, !nonnull !11, !noundef !11
  %i.avn = load i32, ptr %i.hu, align 8, !noundef !11
  %i.avo = getelementptr inbounds nuw i8, ptr %1, i64 552
  %.val2492 = load ptr, ptr %i.avo, align 8
  %i.avp = getelementptr inbounds nuw i8, ptr %1, i64 560
  %.val2493 = load i64, ptr %i.avp, align 8
  call fastcc void @_RNvMs3_NtNtCs8K4cjrcxBsw_6hir_ty3mir5lowerNtB5_11MirLowerCtx15push_assignment(ptr %.val2492, i64 %.val2493, i32 noundef %.sroa.51904.0.copyload, ptr noundef nonnull %i.avm, i32 noundef %i.avn, ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.ds, i32 noundef 0, i32 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  %i.avq = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.avq, align 4
  %i.avr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.51904.0.copyload, ptr %i.avr, align 8
  store i32 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  br label %bb.dm

bb.nd:                                            ; preds = %bb.nb
  %i.avs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty3mir11OperandKindEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dt)
          to label %common.resume3293 unwind label %bb.ee

bb.ne:                                            ; preds = %bb.cy
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty3mir5lower13MirLowerErrorEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr)
  %i.avt = load i32, ptr %i.ti, align 4, !noundef !11
  %i.avu = getelementptr inbounds nuw i8, ptr %1, i64 896 ; 4 uses
  %.val2513 = load ptr, ptr %i.avu, align 8, !nonnull !11, !align !18, !noundef !11
  %i.avv = call noundef nonnull ptr @_RNvMs9_NtCs8K4cjrcxBsw_6hir_ty5inferNtB5_15InferenceResult7expr_ty(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(496) %.val2513, i32 noundef %i.avt) ; 3 uses
  %i.avw = getelementptr inbounds nuw i8, ptr %i.ie, i64 8 ; 4 uses
  %i.avx = load i32, ptr %i.avw, align 8, !noundef !11
  %.val2512 = load ptr, ptr %i.avu, align 8, !nonnull !11, !align !18, !noundef !11
  %i.avy = call noundef nonnull ptr @_RNvMs9_NtCs8K4cjrcxBsw_6hir_ty5inferNtB5_15InferenceResult7expr_ty(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(496) %.val2512, i32 noundef %i.avx) ; 3 uses
  %i.avz = icmp ne i8 %.sroa.0816.0.copyload, 5
  call void @llvm.assume(i1 %i.avz)
  %i.awa = add i8 %.sroa.0816.0.copyload, -3
  %i.awb = icmp ugt i8 %.sroa.0816.0.copyload, 2
  %narrow2327 = select i1 %i.awb, i8 %i.awa, i8 2 ; 4 uses
  switch i8 %narrow2327, label %bb.nm [
    i8 2, label %bb.ng
    i8 1, label %bb.nj
    i8 3, label %bb.nk
  ]

bb.nf:                                            ; preds = %bb.cy
  %.sroa.41312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %.sroa.41312.0.copyload = load i16, ptr %.sroa.41312.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr)
  store i32 2, ptr %0, align 8
  %.sroa.41923.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 %.sroa.41312.0.copyload, ptr %.sroa.41923.0..sroa_idx, align 4
  br label %bb.dm

bb.ng:                                            ; preds = %bb.ne
  %i.awc = icmp eq i8 %.sroa.0816.0.copyload, 2
  br i1 %i.awc, label %bb.nh, label %bb.nm

bb.nh:                                            ; preds = %bb.ng
  %.sroa.02786.0.copyload = load i32, ptr %i.avv, align 8 ; 2 uses
  %i.awd = icmp ne i32 %.sroa.02786.0.copyload, 27
  call void @llvm.assume(i1 %i.awd)
  %i.awe = icmp eq i32 %.sroa.02786.0.copyload, 13
  br i1 %i.awe, label %bb.ni, label %bb.nm

bb.ni:                                            ; preds = %bb.nh
  %.sroa.02788.0.copyload = load i32, ptr %i.avy, align 8 ; 2 uses
  %i.awf = icmp ne i32 %.sroa.02788.0.copyload, 27
  call void @llvm.assume(i1 %i.awf)
  %i.awg = icmp eq i32 %.sroa.02788.0.copyload, 13
  br i1 %i.awg, label %.thread2929, label %bb.nm

bb.nj:                                            ; preds = %bb.ne
  %.sroa.6818.0.copyload.off = add i8 %.sroa.6818.0.copyload, -5
  %switch = icmp ult i8 %.sroa.6818.0.copyload.off, 2
  br i1 %switch, label %bb.nl, label %bb.nm

bb.nk:                                            ; preds = %bb.ne
  %.sroa.6818.0.copyload.off2418 = add i8 %.sroa.6818.0.copyload, -5
  %switch2419 = icmp ult i8 %.sroa.6818.0.copyload.off2418, 2
  br i1 %switch2419, label %bb.nl, label %bb.nm

bb.nl:                                            ; preds = %bb.nk, %bb.nj
  br label %bb.nm

bb.nm:                                            ; preds = %bb.ni, %bb.nh, %bb.nk, %bb.nj, %bb.ne, %bb.ng, %bb.nl
  %.sroa.0834.0 = phi i1 [ true, %bb.nl ], [ false, %bb.ng ], [ false, %bb.nk ], [ false, %bb.nh ], [ false, %bb.ne ], [ false, %bb.nj ], [ false, %bb.ni ]
  %.sroa.02790.0.copyload = load i32, ptr %i.avv, align 8 ; 2 uses
  %i.awh = icmp ne i32 %.sroa.02790.0.copyload, 27
  call void @llvm.assume(i1 %i.awh)
  %i.awi = add i32 %.sroa.02790.0.copyload, -2
  %switch2416 = icmp ult i32 %i.awi, 5
  br i1 %switch2416, label %bb.nn, label %bb.no

bb.nn:                                            ; preds = %bb.nm
  %.sroa.02792.0.copyload = load i32, ptr %i.avy, align 8 ; 2 uses
  %i.awj = icmp ne i32 %.sroa.02792.0.copyload, 27
  call void @llvm.assume(i1 %i.awj)
  %i.awk = add i32 %.sroa.02792.0.copyload, -2
  %switch2417 = icmp ult i32 %i.awk, 5
  %i.awl = icmp eq ptr %i.avv, %i.avy
  %brmerge = or i1 %i.awl, %.sroa.0834.0
  %or.cond3016 = and i1 %brmerge, %switch2417
  br i1 %or.cond3016, label %bb.np, label %bb.no

bb.no:                                            ; preds = %bb.nn, %bb.nm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq)
  %i.awm = load ptr, ptr %i.avu, align 8, !nonnull !11, !align !18, !noundef !11
  call void @_RNvMs9_NtCs8K4cjrcxBsw_6hir_ty5inferNtB5_15InferenceResult17method_resolution(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.dq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(496) %i.awm, i32 noundef %2)
  %i.awn = load i32, ptr %i.dq, align 8, !noundef !11 ; 2 uses
  %.not2333 = icmp eq i32 %i.awn, 0
  br i1 %.not2333, label %bb.nr, label %bb.nq

bb.np:                                            ; preds = %bb.nn, %bb.nr
  %i.awo = icmp ne i8 %narrow2327, 3
  %.not2334 = icmp eq i8 %.sroa.6818.0.copyload, -1
  %or.cond = select i1 %i.awo, i1 true, i1 %.not2334
  br i1 %or.cond, label %.thread2929, label %bb.nu
end_hunk_0
