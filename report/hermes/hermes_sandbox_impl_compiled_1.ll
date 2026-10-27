Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_1?download=true
inline.NumInlined: 26868
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Airgen0x3A0x3AESTreeIRGen0x3A0x3AgenExpression0x28hermes0x3A0x3AESTree0x3A0x3ANode0x2A0x2C0x20hermes0x3A0x3AIdentifier0x29:bb.a
  %.val14039 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.euh = getelementptr inbounds nuw i8, ptr %.val14039, i64 %i.eug
  %i.eui = getelementptr inbounds nuw i8, ptr %i.euh, i64 68
  store i32 6, ptr %i.eui, align 1
  %i.euj = add nuw nsw i64 %i.eug, 64             ; 2 uses
  %.val14038 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.euk = getelementptr inbounds nuw i8, ptr %.val14038, i64 %i.euj
  store i32 40445, ptr %i.euk, align 1
  %i.eul = add nuw nsw i64 %i.eug, 80             ; 2 uses
  %.val14037 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eum = getelementptr inbounds nuw i8, ptr %.val14037, i64 %i.eul
  store i32 %.0.copyload.i15742, ptr %i.eum, align 1
  %.val14453 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eun = getelementptr inbounds nuw i8, ptr %.val14453, i64 %i.euj
  %.0.copyload.i15743 = load i64, ptr %i.eun, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i15743) #7, !srcloc !20
  %.val14595 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.euo = getelementptr inbounds nuw i8, ptr %.val14595, i64 %i.eug
  %i.eup = getelementptr inbounds nuw i8, ptr %i.euo, i64 48
  store i64 %.0.copyload.i15743, ptr %i.eup, align 1
  %i.euq = add i32 %i.ett, -48
  %i.eur = tail call i32 @w2c_hermes_hermes0x3A0x3AIRBuilder0x3A0x3AgetLiteralString0x28llvh0x3A0x3AStringRef0x29(ptr noundef nonnull %0, i32 noundef %i.o, i32 noundef %i.euq)
  %i.eus = add nuw nsw i64 %i.eug, 84             ; 2 uses
  %.val14036 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eut = getelementptr inbounds nuw i8, ptr %.val14036, i64 %i.eus
  store i32 %i.eur, ptr %i.eut, align 1
  %i.euu = add nuw nsw i64 %i.eug, 92             ; 2 uses
  %.val14035 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.euv = getelementptr inbounds nuw i8, ptr %.val14035, i64 %i.euu
  store i32 2, ptr %i.euv, align 1
  %i.euw = add i32 %i.ett, -16                    ; 2 uses
  %i.eux = add nuw nsw i64 %i.eug, 88             ; 4 uses
  %.val14034 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.euy = getelementptr inbounds nuw i8, ptr %.val14034, i64 %i.eux
  store i32 %i.euw, ptr %i.euy, align 1
  %.val14452 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.euz = getelementptr inbounds nuw i8, ptr %.val14452, i64 %i.eux
  %.0.copyload.i15744 = load i64, ptr %i.euz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i15744) #7, !srcloc !20
  %.val14594 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eva = getelementptr inbounds nuw i8, ptr %.val14594, i64 %i.eug
  %i.evb = getelementptr inbounds nuw i8, ptr %i.eva, i64 40
  store i64 %.0.copyload.i15744, ptr %i.evb, align 1
  %i.evc = add i32 %i.ett, -56
  %i.evd = tail call i32 @w2c_hermes_hermes0x3A0x3AIRBuilder0x3A0x3AcreateCallBuiltinInst0x28hermes0x3A0x3ABuiltinMethod0x3A0x3AEnum0x2C0x20llvh0x3A0x3AArrayRef0x3Chermes0x3A0x3AValue0x2A0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.o, i32 noundef 41, i32 noundef %i.evc) #7 ; 2 uses
  %i.eve = add i32 %i.evd, 8
  %.not13242 = icmp eq i32 %i.evd, 0
  %i.evf = select i1 %.not13242, i32 0, i32 %i.eve ; 2 uses
  %.val13338 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.evg = getelementptr inbounds nuw i8, ptr %.val13338, i64 %i.egk
  %.0.copyload.i15745 = load i32, ptr %i.evg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i15745) #7, !srcloc !19
  %i.evh = add i32 %.0.copyload.i15745, 268
  %i.evi = tail call i32 @w2c_hermes_hermes0x3A0x3AIRBuilder0x3A0x3AcreateCompareBranchInst0x28hermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ABinaryOperatorInst0x3A0x3AOpKind0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.o, i32 noundef %i.evf, i32 noundef %i.evh, i32 noundef 3, i32 noundef %i.eue, i32 noundef %i.etz) #7 ; 0 uses
  %.val14033 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.evj = getelementptr inbounds nuw i8, ptr %.val14033, i64 %i.egl
  store i32 %i.etz, ptr %i.evj, align 1
  %i.evk = add i32 %i.etz, 36
  %.not13243 = icmp eq i32 %i.etz, 0
  %i.evl = select i1 %.not13243, i32 0, i32 %i.evk
  %.val14032 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.evm = getelementptr inbounds nuw i8, ptr %.val14032, i64 %i.ela
  store i32 %i.evl, ptr %i.evm, align 1
  %.val14593 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.evn = getelementptr inbounds nuw i8, ptr %.val14593, i64 %i.eug
  %i.evo = getelementptr inbounds nuw i8, ptr %i.evn, i64 32
  store i64 0, ptr %i.evo, align 1
  %.val14592 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.evp = getelementptr inbounds nuw i8, ptr %.val14592, i64 %i.eug
  %i.evq = getelementptr inbounds nuw i8, ptr %i.evp, i64 56
  store i64 0, ptr %i.evq, align 1
  %i.evr = add i32 %i.ett, -64
  %i.evs = tail call i32 @w2c_hermes_hermes0x3A0x3AIRBuilder0x3A0x3AcreateCallInst0x28hermes0x3A0x3ALiteralString0x2A0x2C0x20hermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3AValue0x2A0x2C0x20llvh0x3A0x3AArrayRef0x3Chermes0x3A0x3AValue0x2A0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.o, i32 noundef 0, i32 noundef %i.evf, i32 noundef %.0.copyload.i15742, i32 noundef %i.evr) #7 ; 2 uses
  %.val14031 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.evt = getelementptr inbounds nuw i8, ptr %.val14031, i64 %i.eug
  %i.evu = getelementptr inbounds nuw i8, ptr %i.evt, i64 76
  store i32 42, ptr %i.evu, align 1
  %i.evv = add nuw nsw i64 %i.eug, 72             ; 2 uses
  %.val14030 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.evw = getelementptr inbounds nuw i8, ptr %.val14030, i64 %i.evv
  store i32 31476, ptr %i.evw, align 1
  %i.evx = add i32 %i.evs, 8
  %.not13244 = icmp eq i32 %i.evs, 0
  %i.evy = select i1 %.not13244, i32 0, i32 %i.evx
  %.val14029 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.evz = getelementptr inbounds nuw i8, ptr %.val14029, i64 %i.eul
  store i32 %i.evy, ptr %i.evz, align 1
  %.val14451 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ewa = getelementptr inbounds nuw i8, ptr %.val14451, i64 %i.evv
  %.0.copyload.i15746 = load i64, ptr %i.ewa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i15746) #7, !srcloc !20
  %.val14591 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ewb = getelementptr inbounds nuw i8, ptr %.val14591, i64 %i.eug
  %i.ewc = getelementptr inbounds nuw i8, ptr %i.ewb, i64 24
  store i64 %.0.copyload.i15746, ptr %i.ewc, align 1
  %i.ewd = add i32 %i.ett, -72
  %i.ewe = tail call i32 @w2c_hermes_hermes0x3A0x3AIRBuilder0x3A0x3AgetLiteralString0x28llvh0x3A0x3AStringRef0x29(ptr noundef nonnull %0, i32 noundef %i.o, i32 noundef %i.ewd)
  %.val14028 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ewf = getelementptr inbounds nuw i8, ptr %.val14028, i64 %i.eus
  store i32 %i.ewe, ptr %i.ewf, align 1
  %.val14027 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ewg = getelementptr inbounds nuw i8, ptr %.val14027, i64 %i.euu
  store i32 2, ptr %i.ewg, align 1
  %.val14026 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ewh = getelementptr inbounds nuw i8, ptr %.val14026, i64 %i.eux
  store i32 %i.euw, ptr %i.ewh, align 1
  %.val14450 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ewi = getelementptr inbounds nuw i8, ptr %.val14450, i64 %i.eux
  %.0.copyload.i15747 = load i64, ptr %i.ewi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i15747) #7, !srcloc !20
  %.val14590 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ewj = getelementptr inbounds nuw i8, ptr %.val14590, i64 %i.eug
  %i.ewk = getelementptr inbounds nuw i8, ptr %i.ewj, i64 16
  store i64 %.0.copyload.i15747, ptr %i.ewk, align 1
  %i.ewl = add i32 %i.ett, -80
  %i.ewm = tail call i32 @w2c_hermes_hermes0x3A0x3AIRBuilder0x3A0x3AcreateCallBuiltinInst0x28hermes0x3A0x3ABuiltinMethod0x3A0x3AEnum0x2C0x20llvh0x3A0x3AArrayRef0x3Chermes0x3A0x3AValue0x2A0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.o, i32 noundef 40, i32 noundef %i.ewl) #7 ; 0 uses
  %i.ewn = tail call i32 @w2c_hermes_hermes0x3A0x3AIRBuilder0x3A0x3AcreateBranchInst0x28hermes0x3A0x3ABasicBlock0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.o, i32 noundef %i.eue) #7 ; 0 uses
  %.val14025 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ewo = getelementptr inbounds nuw i8, ptr %.val14025, i64 %i.egl
  store i32 %i.eue, ptr %i.ewo, align 1
  %i.ewp = add i32 %i.eue, 36
  %.not13245 = icmp eq i32 %i.eue, 0
  %i.ewq = select i1 %.not13245, i32 0, i32 %i.ewp
  %.val14024 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ewr = getelementptr inbounds nuw i8, ptr %.val14024, i64 %i.ela
  store i32 %i.ewq, ptr %i.ewr, align 1
  store i32 %i.ett, ptr %i.a, align 8, !tbaa !17
  %.val14023 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ews = getelementptr inbounds nuw i8, ptr %.val14023, i64 %i.ejj
  %i.ewt = getelementptr inbounds nuw i8, ptr %i.ews, i64 184
  store i32 43, ptr %i.ewt, align 1
  %i.ewu = add nuw nsw i64 %i.ejj, 180            ; 2 uses
  %.val14022 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ewv = getelementptr inbounds nuw i8, ptr %.val14022, i64 %i.ewu
  store i32 52989, ptr %i.ewv, align 1
  %.val14449 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eww = getelementptr inbounds nuw i8, ptr %.val14449, i64 %i.ewu
  %.0.copyload.i15748 = load i64, ptr %i.eww, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i15748) #7, !srcloc !20
  %.val14589 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ewx = getelementptr inbounds nuw i8, ptr %.val14589, i64 %i.ejj
  %i.ewy = getelementptr inbounds nuw i8, ptr %i.ewx, i64 8
  store i64 %.0.copyload.i15748, ptr %i.ewy, align 1
  %i.ewz = add i32 %i.egi, -232
  %i.exa = tail call i32 @w2c_hermes_hermes0x3A0x3AIRBuilder0x3A0x3AgetLiteralString0x28llvh0x3A0x3AStringRef0x29(ptr noundef nonnull %0, i32 noundef %i.o, i32 noundef %i.ewz)
  %.val14021 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.exb = getelementptr inbounds nuw i8, ptr %.val14021, i64 %i.ejj
  %i.exc = getelementptr inbounds nuw i8, ptr %i.exb, i64 196
  store i32 1, ptr %i.exc, align 1
  %.val14020 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.exd = getelementptr inbounds nuw i8, ptr %.val14020, i64 %i.ejj
  %i.exe = getelementptr inbounds nuw i8, ptr %i.exd, i64 188
  store i32 %i.exa, ptr %i.exe, align 1
  %i.exf = add i32 %i.egi, -52
  %i.exg = add nuw nsw i64 %i.ejj, 192            ; 2 uses
  %.val14019 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.exh = getelementptr inbounds nuw i8, ptr %.val14019, i64 %i.exg
  store i32 %i.exf, ptr %i.exh, align 1
  %.val14448 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.exi = getelementptr inbounds nuw i8, ptr %.val14448, i64 %i.exg
  %.0.copyload.i15749 = load i64, ptr %i.exi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i15749) #7, !srcloc !20
  %.val14588 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.exj = getelementptr inbounds nuw i8, ptr %.val14588, i64 %i.ejj
  store i64 %.0.copyload.i15749, ptr %i.exj, align 1
  %i.exk = tail call i32 @w2c_hermes_hermes0x3A0x3Airgen0x3A0x3AESTreeIRGen0x3A0x3AgenBuiltinCall0x28hermes0x3A0x3ABuiltinMethod0x3A0x3AEnum0x2C0x20llvh0x3A0x3AArrayRef0x3Chermes0x3A0x3AValue0x2A0x3E0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 42, i32 noundef %i.egj) ; 0 uses
  %.val13337 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.exl = getelementptr inbounds nuw i8, ptr %.val13337, i64 %i.egk
  %.0.copyload.i15750 = load i32, ptr %i.exl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i15750) #7, !srcloc !19
  %i.exm = add i32 %.0.copyload.i15750, 268
  tail call void @w2c_hermes_hermes0x3A0x3AIRBuilder0x3A0x3AcreateThrowInst0x28hermes0x3A0x3AValue0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.o, i32 noundef %i.exm)
  %.val14018 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.exn = getelementptr inbounds nuw i8, ptr %.val14018, i64 %i.egl
  store i32 %i.egs, ptr %i.exn, align 1
  %i.exo = add i32 %i.egs, 36
  %.not13246 = icmp eq i32 %i.egs, 0
  %i.exp = select i1 %.not13246, i32 0, i32 %i.exo
  %.val14017 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.exq = getelementptr inbounds nuw i8, ptr %.val14017, i64 %i.ela
  store i32 %i.exp, ptr %i.exq, align 1
  %i.exr = tail call i32 @w2c_hermes_hermes0x3A0x3AIRBuilder0x3A0x3AcreateLoadStackInst0x28hermes0x3A0x3AAllocStackInst0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.o, i32 noundef %i.ekv) #7 ; 2 uses
  %i.exs = add i32 %i.exr, 8
  %.not13247 = icmp eq i32 %i.exr, 0
  %i.ext = select i1 %.not13247, i32 0, i32 %i.exs
  %i.exu = tail call i32 @w2c_hermes_hermes0x3A0x3Airgen0x3A0x3AESTreeIRGen0x3A0x3AemitIteratorValueSlow0x28hermes0x3A0x3AValue0x2A0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.ext)
  store i32 %i.egi, ptr %i.a, align 8, !tbaa !17
  br label %.loopexit15791

bb.wz:                                            ; preds = %bb.wn
  %.val13336 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.exv = getelementptr inbounds nuw i8, ptr %.val13336, i64 %i.h
  %i.exw = getelementptr inbounds nuw i8, ptr %i.exv, i64 28
  %.0.copyload.i15751 = load i32, ptr %i.exw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i15751) #7, !srcloc !19
  %.not13219 = icmp eq i32 %.0.copyload.i15751, 0
  br i1 %.not13219, label %bb.xb, label %bb.xa

bb.xa:                                            ; preds = %bb.wz
  %i.exx = tail call i32 @w2c_hermes_hermes0x3A0x3Airgen0x3A0x3AESTreeIRGen0x3A0x3AgenExpression0x28hermes0x3A0x3AESTree0x3A0x3ANode0x2A0x2C0x20hermes0x3A0x3AIdentifier0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %.0.copyload.i15751, i32 noundef 0)
  %4 = tail call i32 @w2c_hermes_hermes0x3A0x3Airgen0x3A0x3AESTreeIRGen0x3A0x3AgenYieldOrAwaitExpr0x28hermes0x3A0x3AValue0x2A0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.exx)
  br label %.loopexit15791

bb.xb:                                            ; preds = %bb.wz
  %.val13335 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.exy = getelementptr inbounds nuw i8, ptr %.val13335, i64 %i.e
  %i.exz = getelementptr inbounds nuw i8, ptr %i.exy, i64 4
  %.0.copyload.i15752 = load i32, ptr %i.exz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i15752) #7, !srcloc !19
  %i.eya = add i32 %.0.copyload.i15752, 268
  %5 = tail call i32 @w2c_hermes_hermes0x3A0x3Airgen0x3A0x3AESTreeIRGen0x3A0x3AgenYieldOrAwaitExpr0x28hermes0x3A0x3AValue0x2A0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.eya)
  br label %.loopexit15791

bb.xc:                                            ; preds = %bb.wm
  %.not13248 = icmp eq i32 %.0.copyload.i14845, 45
  %or.cond13330 = select i1 %.not, i1 %.not13248, i1 false
  br i1 %or.cond13330, label %bb.xd, label %bb.xe

bb.xd:                                            ; preds = %bb.xc
  %.val13334 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eyb = getelementptr inbounds nuw i8, ptr %.val13334, i64 %i.h
  %i.eyc = getelementptr inbounds nuw i8, ptr %i.eyb, i64 28
  %.0.copyload.i15753 = load i32, ptr %i.eyc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i15753) #7, !srcloc !19
  %i.eyd = tail call i32 @w2c_hermes_hermes0x3A0x3Airgen0x3A0x3AESTreeIRGen0x3A0x3AgenExpression0x28hermes0x3A0x3AESTree0x3A0x3ANode0x2A0x2C0x20hermes0x3A0x3AIdentifier0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %.0.copyload.i15753, i32 noundef 0)
  %i.eye = tail call i32 @w2c_hermes_hermes0x3A0x3Airgen0x3A0x3AESTreeIRGen0x3A0x3AgenYieldOrAwaitExpr0x28hermes0x3A0x3AValue0x2A0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.eyd)
  br label %.loopexit15791

bb.xe:                                            ; preds = %bb.xc
  %i.eyf = zext i32 %i.o to i64                   ; 2 uses
  %.val13333 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eyg = getelementptr inbounds nuw i8, ptr %.val13333, i64 %i.eyf
  %.0.copyload.i15754 = load i32, ptr %i.eyg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i15754) #7, !srcloc !19
  %i.eyh = zext i32 %.0.copyload.i15754 to i64
  %.val13332 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eyi = getelementptr inbounds nuw i8, ptr %.val13332, i64 %i.eyh
  %i.eyj = getelementptr inbounds nuw i8, ptr %i.eyi, i64 28
  %.0.copyload.i15755 = load i32, ptr %i.eyj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i15755) #7, !srcloc !19
  %i.eyk = zext i32 %.0.copyload.i15755 to i64
  %.val13331 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eyl = getelementptr inbounds nuw i8, ptr %.val13331, i64 %i.eyk
  %i.eym = getelementptr inbounds nuw i8, ptr %i.eyl, i64 72
  %.0.copyload.i15756 = load i32, ptr %i.eym, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i15756) #7, !srcloc !19
  %.val14447 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eyn = getelementptr inbounds nuw i8, ptr %.val14447, i64 %i.h
  %i.eyo = getelementptr inbounds nuw i8, ptr %i.eyn, i64 16
  %.0.copyload.i15757 = load i64, ptr %i.eyo, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i15757) #7, !srcloc !20
  %i.eyp = zext i32 %i.c to i64                   ; 4 uses
  %.val14016 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eyq = getelementptr inbounds nuw i8, ptr %.val14016, i64 %i.eyp
  %i.eyr = getelementptr inbounds nuw i8, ptr %i.eyq, i64 20
  store i32 54318, ptr %i.eyr, align 1
  %.val14825 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eys = getelementptr inbounds nuw i8, ptr %.val14825, i64 %i.eyp
  %i.eyt = getelementptr inbounds nuw i8, ptr %i.eys, i64 28
  store i16 259, ptr %i.eyt, align 1
  %.val14587 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eyu = getelementptr inbounds nuw i8, ptr %.val14587, i64 %i.eyp
  store i64 %.0.copyload.i15757, ptr %i.eyu, align 1
  %.val14586 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eyv = getelementptr inbounds nuw i8, ptr %.val14586, i64 %i.eyp
  %i.eyw = getelementptr inbounds nuw i8, ptr %i.eyv, i64 40
  store i64 %.0.copyload.i15757, ptr %i.eyw, align 1
  %i.eyx = add i32 %i.b, -28
  tail call void @w2c_hermes_hermes0x3A0x3ASourceErrorManager0x3A0x3Amessage0x28hermes0x3A0x3ASourceErrorManager0x3A0x3ADiagKind0x2C0x20llvh0x3A0x3ASMRange0x2C0x20llvh0x3A0x3ATwine0x20const0x260x2C0x20hermes0x3A0x3ASubsystem0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i15756, i32 noundef 0, i32 noundef %i.c, i32 noundef %i.eyx, i32 noundef 0)
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eyy = getelementptr inbounds nuw i8, ptr %.val, i64 %i.eyf
  %.0.copyload.i15758 = load i32, ptr %i.eyy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i15758) #7, !srcloc !19
  %i.eyz = add i32 %.0.copyload.i15758, 268
  br label %.loopexit15791

.loopexit15791:                                   ; preds = %.preheader15790, %bb.nn, %bb.no, %bb.nm, %bb.gv, %bb.hg, %bb.gf, %bb.gl, %bb.fe, %bb.ff, %bb.fi, %bb.fh, %bb.be, %bb.bf, %bb.ru, %bb.ox, %bb.xa, %bb.xb, %bb.oy, %bb.xe, %bb.xd, %bb.wy, %bb.wl, %bb.sh, %bb.rs, %bb.rf, %bb.qu, %bb.qj, %bb.os, %bb.or, %bb.oo, %bb.mt, %.loopexit15770, %bb.hm, %bb.hk, %bb.hi, %bb.gn, %bb.az, %bb.ax, %bb.av, %bb.f, %bb.d, %bb.b
  %.21 = phi i32 [ %i.s, %bb.d ], [ %i.cbo, %bb.or ], [ %.0.copyload.i15376, %bb.os ], [ %i.eyz, %bb.xe ], [ %i.eye, %bb.xd ], [ %i.exu, %bb.wy ], [ %4, %bb.xa ], [ %5, %bb.xb ], [ %i.egf, %bb.wl ], [ %.2212612, %bb.sh ], [ %.11, %bb.ox ], [ %i.dcd, %bb.rs ], [ %i.cyf, %bb.rf ], [ %.12, %bb.qu ], [ %i.cnq, %bb.qj ], [ %i.ccn, %bb.oy ], [ %i.n, %bb.b ], [ %.10, %bb.oo ], [ %i.amh, %bb.gv ], [ %i.bqp, %bb.mt ], [ %i.bon, %.loopexit15770 ], [ %i.aqk, %bb.hm ], [ %.0.copyload.i15147, %bb.hk ], [ %.0.copyload.i15146, %bb.hi ], [ %.2, %bb.gf ], [ %i.ake, %bb.gn ], [ %.612564, %bb.fi ], [ %.412622, %bb.be ], [ %.1912609, %bb.nn ], [ %i.nb, %bb.az ], [ %i.mw, %bb.ax ], [ %i.mq, %bb.av ], [ %i.at, %bb.f ], [ %i.dcg, %bb.ru ], [ %.412622, %bb.bf ], [ %i.abg, %bb.fe ], [ %i.abn, %bb.ff ], [ %.612564, %bb.fh ], [ %i.akd, %bb.gl ], [ %i.apr, %bb.hg ], [ %i.buz, %bb.no ], [ %.1912609, %bb.nm ], [ %i.dck, %.preheader15790 ]
  %.val14015 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eza = getelementptr inbounds nuw i8, ptr %.val14015, i64 %i.f
  store i32 %.0.copyload.i, ptr %i.eza, align 1
  store i32 %i.b, ptr %i.a, align 8, !tbaa !17
  ret i32 %.21
}

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_hermes0x3A0x3Airgen0x3A0x3AESTreeIRGen0x3A0x3AgenIdentifierExpression0x28hermes0x3A0x3AESTree0x3A0x3AIdentifierNode0x2A0x2C0x20bool0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 13 uses
  %i.b = zext i32 %2 to i64
  %.val193 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %.val193, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %i.e = zext i32 %.0.copyload.i to i64           ; 2 uses
  %.val195 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val195, i64 %i.e
  %.0.copyload.i197 = load i64, ptr %i.f, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i197) #7, !srcloc !20
  %i.g = and i64 %.0.copyload.i197, -4294967296
  %.not = icmp eq i64 %i.g, 38654705664
  br i1 %.not, label %bb.b, label %.loopexit209

bb.b:                                             ; preds = %bb.a
  %i.h = trunc i64 %.0.copyload.i197 to i32
  %i.i = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %i.h, i32 noundef 33360, i32 noundef 9) #7
  %.not175 = icmp eq i32 %i.i, 0
  br i1 %.not175, label %bb.c, label %.loopexit209

bb.c:                                             ; preds = %bb.b
  %i.j = zext i32 %1 to i64                       ; 4 uses
  %.val192 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %.val192, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %.0.copyload.i198 = load i32, ptr %i.l, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i198) #7, !srcloc !19
  %.not176 = icmp eq i32 %.0.copyload.i198, 0
  br i1 %.not176, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val191 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %.val191, i64 %i.j
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 44
  %.0.copyload.i199 = load i32, ptr %i.n, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i199) #7, !srcloc !19
  %i.o = add i32 %.0.copyload.i198, -1            ; 2 uses
  %i.p = lshr i32 %.0.copyload.i, 4
  %i.q = lshr i32 %.0.copyload.i, 9
  %i.r = xor i32 %i.p, %i.q
  %i.s = and i32 %i.o, %i.r                       ; 2 uses
  %i.t = shl nuw nsw i32 %i.s, 3
  %i.u = add i32 %.0.copyload.i199, %i.t
  %i.v = zext i32 %i.u to i64
  %.val190 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %.val190, i64 %i.v
  %.0.copyload.i200 = load i32, ptr %i.w, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i200) #7, !srcloc !19
  %i.x = icmp eq i32 %.0.copyload.i, %.0.copyload.i200
  br i1 %i.x, label %.loopexit209, label %.preheader

.preheader:                                       ; preds = %bb.d, %bb.e
  %.0170 = phi i32 [ %i.aa, %bb.e ], [ 1, %bb.d ] ; 2 uses
  %.0169 = phi i32 [ %i.ab, %bb.e ], [ %i.s, %bb.d ]
  %.0168 = phi i32 [ %.0.copyload.i201, %bb.e ], [ %.0.copyload.i200, %bb.d ]
  %i.y = icmp eq i32 %.0168, -4
  br i1 %i.y, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.preheader
  %i.z = add i32 %.0169, %.0170
  %i.aa = add i32 %.0170, 1
  %i.ab = and i32 %i.z, %i.o                      ; 2 uses
  %i.ac = shl i32 %i.ab, 3
  %i.ad = add i32 %i.ac, %.0.copyload.i199
  %i.ae = zext i32 %i.ad to i64
  %.val189 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %.val189, i64 %i.ae
  %.0.copyload.i201 = load i32, ptr %i.af, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i201) #7, !srcloc !19
  %.not177 = icmp eq i32 %.0.copyload.i, %.0.copyload.i201
  br i1 %.not177, label %.loopexit209, label %.preheader

.loopexit209:                                     ; preds = %bb.e, %bb.d, %bb.b, %bb.a
  %i.ag = tail call i32 @w2c_hermes_hermes0x3A0x3Airgen0x3A0x3AESTreeIRGen0x3A0x3AensureVariableExists0x28hermes0x3A0x3AESTree0x3A0x3AIdentifierNode0x2A0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2) ; 2 uses
  %i.ah = zext i32 %i.ag to i64
  %.val196 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %.val196, i64 %i.ah
  %.0.copyload.i202 = load i8, ptr %i.ai, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i202) #7, !srcloc !21
  %.not181 = icmp eq i8 %.0.copyload.i202, 123
  br i1 %.not181, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.loopexit209
  %.val194 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %.val194, i64 %i.e
  %.0.copyload.i203 = load i64, ptr %i.aj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i203) #7, !srcloc !20
  %i.ak = and i64 %.0.copyload.i203, -4294967296
  %.not182 = icmp eq i64 %i.ak, 38654705664
  br i1 %.not182, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.al = trunc i64 %.0.copyload.i203 to i32
  %i.am = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %i.al, i32 noundef 54623, i32 noundef 9) #7
  %.not183 = icmp eq i32 %i.am, 0
  br i1 %.not183, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.an = zext i32 %1 to i64
  %.val188 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %.val188, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %.0.copyload.i204 = load i32, ptr %i.ap, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i204) #7, !srcloc !19
  %i.aq = add i32 %.0.copyload.i204, 268
  br label %bb.l

.loopexit:                                        ; preds = %.preheader, %bb.c
  %.val187 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %.val187, i64 %i.j
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %.0.copyload.i205 = load i32, ptr %i.as, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i205) #7, !srcloc !19
  %i.at = zext i32 %.0.copyload.i205 to i64       ; 2 uses
  %.val186 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %.val186, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 100
  %.0.copyload.i206 = load i32, ptr %i.av, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i206) #7, !srcloc !19
  %.not178 = icmp eq i32 %.0.copyload.i206, 0
  br i1 %.not178, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.loopexit
  %i.aw = add i32 %1, 4
  %.val185 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ax = getelementptr inbounds nuw i8, ptr %.val185, i64 %i.j
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 88
  %.0.copyload.i207 = load i32, ptr %i.ay, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i207) #7, !srcloc !19
  %i.az = tail call i32 @w2c_hermes_hermes0x3A0x3AIRBuilder0x3A0x3AcreateLoadFrameInst0x28hermes0x3A0x3AVariable0x2A0x2C0x20hermes0x3A0x3AScopeCreationInst0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.aw, i32 noundef %.0.copyload.i206, i32 noundef %.0.copyload.i207) #7 ; 2 uses
  %i.ba = add i32 %i.az, 8
  %.not180 = icmp eq i32 %i.az, 0
  %i.bb = select i1 %.not180, i32 0, i32 %i.ba
  br label %bb.l

bb.j:                                             ; preds = %.loopexit
  %.val = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bc = getelementptr inbounds nuw i8, ptr %.val, i64 %i.at
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 88
  %.0.copyload.i208 = load i32, ptr %i.bd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i208) #7, !srcloc !19
  %i.be = add i32 %.0.copyload.i208, 8
  %.not179 = icmp eq i32 %.0.copyload.i208, 0
  %i.bf = select i1 %.not179, i32 0, i32 %i.be
  br label %bb.l

bb.k:                                             ; preds = %bb.g, %bb.f, %.loopexit209
  %i.bg = tail call i32 @w2c_hermes_hermes0x3A0x3Airgen0x3A0x3AESTreeIRGen0x3A0x3AemitLoad0x28hermes0x3A0x3AValue0x2A0x2C0x20bool0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.ag, i32 noundef %3) ; 2 uses
  %i.bh = add i32 %i.bg, 8
  %.not184 = icmp eq i32 %i.bg, 0
  %i.bi = select i1 %.not184, i32 0, i32 %i.bh
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.0 = phi i32 [ %i.bi, %bb.k ], [ %i.aq, %bb.h ], [ %i.bb, %bb.i ], [ %i.bf, %bb.j ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_hermes0x3A0x3AIRBuilder0x3A0x3AgetLiteralString0x28llvh0x3A0x3AStringRef0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = add i32 %i.b, -16                        ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.e = zext i32 %1 to i64                       ; 2 uses
  %.val48 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val48, i64 %i.e
  %.0.copyload.i = load i32, ptr %i.f, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %i.g = zext i32 %.0.copyload.i to i64
  %.val47 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.val47, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %.0.copyload.i52 = load i32, ptr %i.i, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52) #7, !srcloc !19
  %i.j = zext i32 %2 to i64
  %.val49 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %.val49, i64 %i.j
  %.0.copyload.i53 = load i64, ptr %i.k, align 1  ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i53) #7, !srcloc !20
  %i.l = zext i32 %i.c to i64                     ; 2 uses
  %.val51 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %.val51, i64 %i.l
  store i64 %.0.copyload.i53, ptr %i.m, align 1
  %.val50 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %.val50, i64 %i.l
end_hunk_0
