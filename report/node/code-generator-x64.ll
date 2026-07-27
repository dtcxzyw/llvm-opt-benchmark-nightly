inline.NumInlined: 12588
inline.NumDeleted: 1676
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN2v88internal8compiler13CodeGenerator23AssembleArchInstructionEPNS1_11InstructionE:bb.a
  %i.fvu = trunc i64 %i.fvt to i8                 ; 3 uses
  %i.fvv = icmp samesign ult i8 %i.fvu, 16
  call void @llvm.assume(i1 %i.fvv)
  br i1 %i.fvk, label %bb.ya, label %bb.yb

bb.ya:                                            ; preds = %bb.xz
  %i.fvw = getelementptr i8, ptr %i.fvr, i64 8
  %i.fvx = load i64, ptr %i.fvw, align 8
  %i.fvy = lshr i64 %i.fvx, 32
  %i.fvz = trunc i64 %i.fvy to i8                 ; 2 uses
  %i.fwa = icmp samesign ult i8 %i.fvz, 16
  call void @llvm.assume(i1 %i.fwa)
  call void @_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_(ptr noundef nonnull align 8 dereferenceable(436) %i.ftt, i8 %i.fvu, i8 %i.fvz)
  br label %bb.yc

bb.yb:                                            ; preds = %bb.xz
  %i.fwb = call { i64, ptr } @_ZN2v88internal8compiler19X64OperandConverter12InputOperandEmi(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 1, i32 noundef 0) ; 2 uses
  %i.fwc = extractvalue { i64, ptr } %i.fwb, 0
  %i.fwd = extractvalue { i64, ptr } %i.fwb, 1
  call void @_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_(ptr noundef nonnull align 8 dereferenceable(436) %i.ftt, i8 %i.fvu, i64 %i.fwc, ptr %i.fwd)
  br label %bb.yc

bb.yc:                                            ; preds = %bb.yb, %bb.ya
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %i.ftt, ptr noundef nonnull %14) #18
  %i.fwe = getelementptr inbounds nuw i8, ptr %i.fts, i64 16
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %i.ftt, ptr noundef nonnull %i.fwe) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %bb.cld

bb.yd:                                            ; preds = %_ZN2v88internal8compiler42ShouldClearOutputRegisterBeforeInstructionEPNS1_13CodeGeneratorEPNS1_11InstructionE.exit
  %i.fwf = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.fwg = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.fwh = load i32, ptr %i.fwg, align 4
  %i.fwi = and i32 %i.fwh, 255
  %i.fwj = zext nneg i32 %i.fwi to i64
  %i.fwk = getelementptr [8 x i8], ptr %i.fwf, i64 %i.fwj
  %i.fwl = load i64, ptr %i.fwk, align 8          ; 4 uses
  %i.fwm = and i64 %i.fwl, 7
  %i.fwn = icmp samesign ugt i64 %i.fwm, 4
  %i.fwo = and i64 %i.fwl, 8
  %i.fwp = icmp eq i64 %i.fwo, 0
  %i.fwq = and i1 %i.fwn, %i.fwp
  %i.fwr = and i64 %i.fwl, 3840
  %i.fws = icmp ne i64 %i.fwr, 0
  %i.fwt = and i1 %i.fws, %i.fwq
  %i.fwu = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.fwv = load i64, ptr %i.fwf, align 8
  %i.fww = lshr i64 %i.fwv, 32
  %i.fwx = trunc i64 %i.fww to i8                 ; 3 uses
  %i.fwy = icmp samesign ult i8 %i.fwx, 16
  tail call void @llvm.assume(i1 %i.fwy)
  br i1 %i.fwt, label %bb.ye, label %bb.yf

bb.ye:                                            ; preds = %bb.yd
  %i.fwz = lshr i64 %i.fwl, 32
  %i.fxa = trunc i64 %i.fwz to i8                 ; 2 uses
  %i.fxb = icmp samesign ult i8 %i.fxa, 16
  tail call void @llvm.assume(i1 %i.fxb)
  tail call void @_ZN2v88internal24SharedMacroAssemblerBase6SqrtsdINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_(ptr noundef nonnull align 8 dereferenceable(436) %i.fwu, i8 %i.fwx, i8 %i.fxa)
  br label %bb.cld

bb.yf:                                            ; preds = %bb.yd
  %i.fxc = call { i64, ptr } @_ZN2v88internal8compiler19X64OperandConverter12InputOperandEmi(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 0, i32 noundef 0) ; 2 uses
  %i.fxd = extractvalue { i64, ptr } %i.fxc, 0
  %i.fxe = extractvalue { i64, ptr } %i.fxc, 1
  call void @_ZN2v88internal24SharedMacroAssemblerBase6SqrtsdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_(ptr noundef nonnull align 8 dereferenceable(436) %i.fwu, i8 %i.fwx, i64 %i.fxd, ptr %i.fxe)
  br label %bb.cld

bb.yg:                                            ; preds = %_ZN2v88internal8compiler42ShouldClearOutputRegisterBeforeInstructionEPNS1_13CodeGeneratorEPNS1_11InstructionE.exit
  %i.fxf = load i32, ptr %1, align 8
  %i.fxg = lshr i32 %i.fxf, 22
  %i.fxh = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.fxi = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.fxj = load i64, ptr %i.fxi, align 8
  %i.fxk = lshr i64 %i.fxj, 32
  %i.fxl = trunc i64 %i.fxk to i8                 ; 2 uses
  %i.fxm = icmp samesign ult i8 %i.fxl, 16
  tail call void @llvm.assume(i1 %i.fxm)
  %i.fxn = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.fxo = load i32, ptr %i.fxn, align 4
  %i.fxp = and i32 %i.fxo, 255
  %i.fxq = zext nneg i32 %i.fxp to i64
  %i.fxr = getelementptr [8 x i8], ptr %i.fxi, i64 %i.fxq
  %i.fxs = load i64, ptr %i.fxr, align 8
  %i.fxt = lshr i64 %i.fxs, 32
  %i.fxu = trunc i64 %i.fxt to i8                 ; 2 uses
  %i.fxv = icmp samesign ult i8 %i.fxu, 16
  tail call void @llvm.assume(i1 %i.fxv)
  tail call void @_ZN2v88internal24SharedMacroAssemblerBase7RoundsdINS0_11XMMRegisterES3_JNS0_12RoundingModeEEEEvT_T0_DpT1_(ptr noundef nonnull align 8 dereferenceable(436) %i.fxh, i8 %i.fxl, i8 %i.fxu, i32 noundef %i.fxg)
  br label %bb.cld

bb.yh:                                            ; preds = %_ZN2v88internal8compiler42ShouldClearOutputRegisterBeforeInstructionEPNS1_13CodeGeneratorEPNS1_11InstructionE.exit
  %i.fxw = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.fxx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.fxy = load i32, ptr %i.fxx, align 4          ; 2 uses
  %i.fxz = and i32 %i.fxy, 255
  %i.fya = zext nneg i32 %i.fxz to i64
  %i.fyb = lshr i32 %i.fxy, 8
  %i.fyc = and i32 %i.fyb, 65535
  %i.fyd = zext nneg i32 %i.fyc to i64
  %i.fye = getelementptr [8 x i8], ptr %i.fxw, i64 %i.fya ; 2 uses
  %i.fyf = getelementptr [8 x i8], ptr %i.fye, i64 %i.fyd ; 2 uses
  %i.fyg = load i64, ptr %i.fyf, align 8
  %i.fyh = lshr i64 %i.fyg, 32
  %i.fyi = trunc i64 %i.fyh to i8                 ; 3 uses
  %i.fyj = icmp samesign ult i8 %i.fyi, 16
  tail call void @llvm.assume(i1 %i.fyj)
  %i.fyk = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.fyl = load i64, ptr %i.fye, align 8
  %i.fym = lshr i64 %i.fyl, 32
  %i.fyn = trunc i64 %i.fym to i8                 ; 2 uses
  %i.fyo = icmp samesign ult i8 %i.fyn, 16
  tail call void @llvm.assume(i1 %i.fyo)
  %i.fyp = getelementptr i8, ptr %i.fyf, i64 8
  %i.fyq = load i64, ptr %i.fyp, align 8
  %i.fyr = lshr i64 %i.fyq, 32
  %i.fys = trunc i64 %i.fyr to i8                 ; 2 uses
  %i.fyt = icmp samesign ult i8 %i.fys, 16
  tail call void @llvm.assume(i1 %i.fyt)
  tail call void @_ZN2v88internal14MacroAssembler8Cvtpd2phENS0_11XMMRegisterES2_NS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %i.fyk, i8 %i.fyi, i8 %i.fyn, i8 %i.fys) #18
  %i.fyu = load i64, ptr %i.fxw, align 8
  %i.fyv = lshr i64 %i.fyu, 32
  %i.fyw = trunc i64 %i.fyv to i8                 ; 2 uses
  %i.fyx = icmp samesign ult i8 %i.fyw, 16
  tail call void @llvm.assume(i1 %i.fyx)
  tail call void @_ZN2v88internal24SharedMacroAssemblerBase6PextrwINS0_8RegisterENS0_11XMMRegisterEJhEEEvT_T0_DpT1_(ptr noundef nonnull align 8 dereferenceable(436) %i.fyk, i8 %i.fyw, i8 %i.fyi, i8 noundef zeroext 0)
  br label %bb.cld

bb.yi:                                            ; preds = %_ZN2v88internal8compiler42ShouldClearOutputRegisterBeforeInstructionEPNS1_13CodeGeneratorEPNS1_11InstructionE.exit
  %i.fyy = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.fyz = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.fza = load i32, ptr %i.fyz, align 4          ; 2 uses
  %i.fzb = and i32 %i.fza, 255
  %i.fzc = zext nneg i32 %i.fzb to i64
  %i.fzd = lshr i32 %i.fza, 8
  %i.fze = and i32 %i.fzd, 65535
  %i.fzf = zext nneg i32 %i.fze to i64
  %i.fzg = getelementptr [8 x i8], ptr %i.fyy, i64 %i.fzc ; 2 uses
  %i.fzh = getelementptr [8 x i8], ptr %i.fzg, i64 %i.fzf
  %i.fzi = load i64, ptr %i.fzh, align 8
  %i.fzj = lshr i64 %i.fzi, 32
  %i.fzk = trunc i64 %i.fzj to i8                 ; 3 uses
  %i.fzl = icmp samesign ult i8 %i.fzk, 16
  tail call void @llvm.assume(i1 %i.fzl)
  %i.fzm = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.fzn = load i64, ptr %i.fzg, align 8
  %i.fzo = lshr i64 %i.fzn, 32
  %i.fzp = trunc i64 %i.fzo to i8                 ; 2 uses
  %i.fzq = icmp samesign ult i8 %i.fzp, 16
  tail call void @llvm.assume(i1 %i.fzq)
  tail call void @_ZN2v88internal14MacroAssembler4MovqENS0_11XMMRegisterENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %i.fzm, i8 %i.fzk, i8 %i.fzp) #18
  %i.fzr = load i64, ptr %i.fyy, align 8
  %i.fzs = lshr i64 %i.fzr, 32
  %i.fzt = trunc i64 %i.fzs to i8                 ; 2 uses
  %i.fzu = icmp samesign ult i8 %i.fzt, 16
  tail call void @llvm.assume(i1 %i.fzu)
  tail call void @_ZN2v88internal14MacroAssembler8Cvtph2pdENS0_11XMMRegisterES2_(ptr noundef nonnull align 8 dereferenceable(436) %i.fzm, i8 %i.fzt, i8 %i.fzk) #18
  br label %bb.cld

bb.yj:                                            ; preds = %_ZN2v88internal8compiler42ShouldClearOutputRegisterBeforeInstructionEPNS1_13CodeGeneratorEPNS1_11InstructionE.exit
  %i.fzv = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.fzw = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.fzx = load i32, ptr %i.fzw, align 4
  %i.fzy = and i32 %i.fzx, 255
  %i.fzz = zext nneg i32 %i.fzy to i64
  %i.gaa = getelementptr [8 x i8], ptr %i.fzv, i64 %i.fzz
  %i.gab = load i64, ptr %i.gaa, align 8          ; 4 uses
  %i.gac = and i64 %i.gab, 7
  %i.gad = icmp samesign ugt i64 %i.gac, 4
  %i.gae = and i64 %i.gab, 8
  %i.gaf = icmp eq i64 %i.gae, 0
  %i.gag = and i1 %i.gad, %i.gaf
  %i.gah = and i64 %i.gab, 3840
  %i.gai = icmp ne i64 %i.gah, 0
  %i.gaj = and i1 %i.gai, %i.gag
  %i.gak = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.gal = load i64, ptr %i.fzv, align 8
  %i.gam = lshr i64 %i.gal, 32
  %i.gan = trunc i64 %i.gam to i8                 ; 3 uses
  %i.gao = icmp samesign ult i8 %i.gan, 16
  tail call void @llvm.assume(i1 %i.gao)
  br i1 %i.gaj, label %bb.yk, label %bb.yl

bb.yk:                                            ; preds = %bb.yj
  %i.gap = lshr i64 %i.gab, 32
  %i.gaq = trunc i64 %i.gap to i8                 ; 2 uses
  %i.gar = icmp samesign ult i8 %i.gaq, 16
  tail call void @llvm.assume(i1 %i.gar)
  tail call void @_ZN2v88internal14MacroAssembler8Cvtsd2ssENS0_11XMMRegisterES2_(ptr noundef nonnull align 8 dereferenceable(436) %i.gak, i8 %i.gan, i8 %i.gaq) #18
  br label %bb.cld

bb.yl:                                            ; preds = %bb.yj
  %i.gas = call { i64, ptr } @_ZN2v88internal8compiler19X64OperandConverter12InputOperandEmi(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 0, i32 noundef 0) ; 2 uses
  %i.gat = extractvalue { i64, ptr } %i.gas, 0
  %i.gau = extractvalue { i64, ptr } %i.gas, 1
  call void @_ZN2v88internal14MacroAssembler8Cvtsd2ssENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %i.gak, i8 %i.gan, i64 %i.gat, ptr %i.gau) #18
  br label %bb.cld

bb.ym:                                            ; preds = %_ZN2v88internal8compiler42ShouldClearOutputRegisterBeforeInstructionEPNS1_13CodeGeneratorEPNS1_11InstructionE.exit
  %i.gav = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.gaw = load i64, ptr %i.gav, align 8
  %i.gax = lshr i64 %i.gaw, 32
  %i.gay = trunc i64 %i.gax to i8                 ; 9 uses
  %i.gaz = icmp samesign ult i8 %i.gay, 16
  tail call void @llvm.assume(i1 %i.gaz)
  %i.gba = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.gbb = load i32, ptr %i.gba, align 4
  %i.gbc = and i32 %i.gbb, 255                    ; 2 uses
  %69 = icmp eq i32 %i.gbc, 1
  %70 = getelementptr i8, ptr %1, i64 48
  %71 = load i64, ptr %70, align 8                ; 5 uses
  br i1 %69, label %bb.yn, label %bb.yq

bb.yn:                                            ; preds = %bb.ym
  %i.gbd = and i64 %71, 7
  %i.gbe = icmp samesign ugt i64 %i.gbd, 4
  %i.gbf = and i64 %71, 8
  %i.gbg = icmp eq i64 %i.gbf, 0
  %i.gbh = and i1 %i.gbe, %i.gbg
  %i.gbi = and i64 %71, 3840
  %i.gbj = icmp ne i64 %i.gbi, 0
  %i.gbk = and i1 %i.gbj, %i.gbh
  %i.gbl = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  br i1 %i.gbk, label %bb.yo, label %bb.yp

bb.yo:                                            ; preds = %bb.yn
  %i.gbm = lshr i64 %71, 32
  %i.gbn = trunc i64 %i.gbm to i8                 ; 2 uses
  %i.gbo = icmp samesign ult i8 %i.gbn, 16
  tail call void @llvm.assume(i1 %i.gbo)
  tail call void @_ZN2v88internal14MacroAssembler9Cvttsd2siENS0_8RegisterENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(436) %i.gbl, i8 %i.gay, i8 %i.gbn) #18
  br label %bb.cld

bb.yp:                                            ; preds = %bb.yn
  %i.gbp = call { i64, ptr } @_ZN2v88internal8compiler19X64OperandConverter12InputOperandEmi(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 0, i32 noundef 0) ; 2 uses
  %i.gbq = extractvalue { i64, ptr } %i.gbp, 0
  %i.gbr = extractvalue { i64, ptr } %i.gbp, 1
  call void @_ZN2v88internal14MacroAssembler9Cvttsd2siENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %i.gbl, i8 %i.gay, i64 %i.gbq, ptr %i.gbr) #18
  br label %bb.cld

bb.yq:                                            ; preds = %bb.ym
  %72 = zext nneg i32 %i.gbc to i64
  %i.gbs = lshr i64 %71, 32
  %i.gbt = trunc i64 %i.gbs to i8                 ; 6 uses
  %i.gbu = icmp samesign ult i8 %i.gbt, 16
  tail call void @llvm.assume(i1 %i.gbu)
  %i.gbv = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.gbw = and i32 %i.gbv, 34
  %or.cond.not = icmp eq i32 %i.gbw, 0
  %i.gbx = getelementptr [8 x i8], ptr %i.gav, i64 %72
  %i.gby = load i64, ptr %i.gbx, align 8          ; 5 uses
  %i.gbz = and i64 %i.gby, 7
  %i.gca = icmp samesign ugt i64 %i.gbz, 4
  %i.gcb = and i64 %i.gby, 8
  %i.gcc = icmp eq i64 %i.gcb, 0
  %i.gcd = and i1 %i.gca, %i.gcc
  %i.gce = and i64 %i.gby, 3840
  %i.gcf = icmp ne i64 %i.gce, 0
  %i.gcg = and i1 %i.gcf, %i.gcd                  ; 2 uses
  %i.gch = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 6 uses
  br i1 %or.cond.not, label %bb.yv, label %bb.yr

bb.yr:                                            ; preds = %bb.yq
  br i1 %i.gcg, label %bb.ys, label %bb.yt

bb.ys:                                            ; preds = %bb.yr
  %i.gci = lshr i64 %i.gby, 32
  %i.gcj = trunc i64 %i.gci to i8                 ; 2 uses
  %i.gck = icmp samesign ult i8 %i.gcj, 16
  tail call void @llvm.assume(i1 %i.gck)
  tail call void @_ZN2v88internal24SharedMacroAssemblerBase7RoundsdINS0_11XMMRegisterES3_JNS0_12RoundingModeEEEEvT_T0_DpT1_(ptr noundef nonnull align 8 dereferenceable(436) %i.gch, i8 15, i8 %i.gcj, i32 noundef 3)
  %i.gcl = load i32, ptr %i.gba, align 4
  %i.gcm = and i32 %i.gcl, 255
  %i.gcn = zext nneg i32 %i.gcm to i64
  %i.gco = getelementptr [8 x i8], ptr %i.gav, i64 %i.gcn
  %i.gcp = load i64, ptr %i.gco, align 8
  %i.gcq = lshr i64 %i.gcp, 32
  %i.gcr = trunc i64 %i.gcq to i8                 ; 2 uses
  %i.gcs = icmp samesign ult i8 %i.gcr, 16
  tail call void @llvm.assume(i1 %i.gcs)
  tail call void @_ZN2v88internal14MacroAssembler9Cvttsd2siENS0_8RegisterENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(436) %i.gch, i8 %i.gay, i8 %i.gcr) #18
  br label %bb.yu

bb.yt:                                            ; preds = %bb.yr
  %i.gct = call { i64, ptr } @_ZN2v88internal8compiler19X64OperandConverter12InputOperandEmi(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 0, i32 noundef 0) ; 2 uses
  %i.gcu = extractvalue { i64, ptr } %i.gct, 0
  %i.gcv = extractvalue { i64, ptr } %i.gct, 1
  call void @_ZN2v88internal24SharedMacroAssemblerBase7RoundsdINS0_11XMMRegisterENS0_7OperandEJNS0_12RoundingModeEEEEvT_T0_DpT1_(ptr noundef nonnull align 8 dereferenceable(436) %i.gch, i8 15, i64 %i.gcu, ptr %i.gcv, i32 noundef 3)
  call void @_ZN2v88internal14MacroAssembler9Cvttsd2siENS0_8RegisterENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(436) %i.gch, i8 %i.gay, i8 15) #18
  %.pre9225 = load ptr, ptr %i.hw, align 8
  br label %bb.yu

bb.yu:                                            ; preds = %bb.yt, %bb.ys
  %i.gcw = phi ptr [ %.pre9225, %bb.yt ], [ %1, %bb.ys ] ; 2 uses
  %i.gcx = getelementptr inbounds nuw i8, ptr %i.gcw, i64 40
  %i.gcy = getelementptr inbounds nuw i8, ptr %i.gcw, i64 4
  %i.gcz = load i32, ptr %i.gcy, align 4          ; 2 uses
  %i.gda = and i32 %i.gcz, 255
  %i.gdb = zext nneg i32 %i.gda to i64
  %i.gdc = lshr i32 %i.gcz, 8
  %i.gdd = and i32 %i.gdc, 65535
  %i.gde = zext nneg i32 %i.gdd to i64
  %i.gdf = getelementptr [8 x i8], ptr %i.gcx, i64 %i.gdb
  %i.gdg = getelementptr [8 x i8], ptr %i.gdf, i64 %i.gde
  %i.gdh = load i64, ptr %i.gdg, align 8
  %i.gdi = lshr i64 %i.gdh, 32
  %i.gdj = trunc i64 %i.gdi to i8                 ; 4 uses
  %i.gdk = icmp samesign ult i8 %i.gdj, 16
  call void @llvm.assume(i1 %i.gdk)
  %i.gdl = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  call void @_ZN2v88internal14MacroAssembler9Cvtlsi2sdENS0_11XMMRegisterENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %i.gdl, i8 %i.gdj, i8 %i.gay) #18
  call void @_ZN2v88internal14MacroAssembler7CmpeqsdENS0_11XMMRegisterES2_(ptr noundef nonnull align 8 dereferenceable(436) %i.gdl, i8 %i.gdj, i8 15) #18
  call void @_ZN2v88internal14MacroAssembler4MovqENS0_8RegisterENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(436) %i.gdl, i8 %i.gbt, i8 %i.gdj) #18
  call void @_ZN2v88internal24SharedMacroAssemblerBase3AndENS0_8RegisterENS0_9ImmediateE(ptr noundef nonnull align 8 dereferenceable(436) %i.gdl, i8 %i.gbt, i64 1) #18
  br label %bb.cld

bb.yv:                                            ; preds = %bb.yq
  br i1 %i.gcg, label %bb.yw, label %bb.yx

bb.yw:                                            ; preds = %bb.yv
  %i.gdm = lshr i64 %i.gby, 32
  %i.gdn = trunc i64 %i.gdm to i8                 ; 2 uses
  %i.gdo = icmp samesign ult i8 %i.gdn, 16
  tail call void @llvm.assume(i1 %i.gdo)
  tail call void @_ZN2v88internal14MacroAssembler9Cvttsd2siENS0_8RegisterENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(436) %i.gch, i8 %i.gay, i8 %i.gdn) #18
  br label %bb.yy

bb.yx:                                            ; preds = %bb.yv
  %i.gdp = call { i64, ptr } @_ZN2v88internal8compiler19X64OperandConverter12InputOperandEmi(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 0, i32 noundef 0) ; 2 uses
  %i.gdq = extractvalue { i64, ptr } %i.gdp, 0
  %i.gdr = extractvalue { i64, ptr } %i.gdp, 1
  call void @_ZN2v88internal14MacroAssembler9Cvttsd2siENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %i.gch, i8 %i.gay, i64 %i.gdq, ptr %i.gdr) #18
  br label %bb.yy

bb.yy:                                            ; preds = %bb.yx, %bb.yw
  %i.gds = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 11 uses
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(436) %i.gds, i8 %i.gbt, i64 1, i32 noundef 4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  store i32 0, ptr %15, align 4
  %i.gdt = getelementptr inbounds nuw i8, ptr %15, i64 4
  store i32 0, ptr %i.gdt, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  store i32 0, ptr %16, align 4
  %i.gdu = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i32 0, ptr %i.gdu, align 4
  call void @_ZN2v88internal14MacroAssembler4MoveENS0_11XMMRegisterEm(ptr noundef nonnull align 8 dereferenceable(436) %i.gds, i8 15, i64 noundef -4476578029606273024) #18
  %i.gdv = load i32, ptr %i.gba, align 4
  %i.gdw = and i32 %i.gdv, 255
  %i.gdx = zext nneg i32 %i.gdw to i64
  %i.gdy = getelementptr [8 x i8], ptr %i.gav, i64 %i.gdx
  %i.gdz = load i64, ptr %i.gdy, align 8          ; 3 uses
  %i.gea = and i64 %i.gdz, 7
  %i.geb = icmp samesign ugt i64 %i.gea, 4
  %i.gec = and i64 %i.gdz, 8
  %i.ged = icmp eq i64 %i.gec, 0
  %i.gee = and i1 %i.geb, %i.ged
  %i.gef = and i64 %i.gdz, 3840
  %i.geg = icmp ne i64 %i.gef, 0
  %i.geh = and i1 %i.geg, %i.gee
  br i1 %i.geh, label %bb.yz, label %bb.za

bb.yz:                                            ; preds = %bb.yy
  %i.gei = load ptr, ptr %i.hw, align 8           ; 2 uses
  %i.gej = getelementptr inbounds nuw i8, ptr %i.gei, i64 40
  %i.gek = getelementptr inbounds nuw i8, ptr %i.gei, i64 4
  %i.gel = load i32, ptr %i.gek, align 4
  %i.gem = and i32 %i.gel, 255
  %i.gen = zext nneg i32 %i.gem to i64
  %i.geo = getelementptr [8 x i8], ptr %i.gej, i64 %i.gen
  %i.gep = load i64, ptr %i.geo, align 8
  %i.geq = lshr i64 %i.gep, 32
  %i.ger = trunc i64 %i.geq to i8                 ; 2 uses
  %i.ges = icmp samesign ult i8 %i.ger, 16
  call void @llvm.assume(i1 %i.ges)
  call void @_ZN2v88internal24SharedMacroAssemblerBase7UcomisdINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_(ptr noundef nonnull align 8 dereferenceable(436) %i.gds, i8 15, i8 %i.ger)
  br label %bb.zb

bb.za:                                            ; preds = %bb.yy
  %i.get = call { i64, ptr } @_ZN2v88internal8compiler19X64OperandConverter12InputOperandEmi(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 0, i32 noundef 0) ; 2 uses
  %i.geu = extractvalue { i64, ptr } %i.get, 0
  %i.gev = extractvalue { i64, ptr } %i.get, 1
  call void @_ZN2v88internal24SharedMacroAssemblerBase7UcomisdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_(ptr noundef nonnull align 8 dereferenceable(436) %i.gds, i8 15, i64 %i.geu, ptr %i.gev)
  br label %bb.zb

bb.zb:                                            ; preds = %bb.za, %bb.yz
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %i.gds, i32 noundef 10, ptr noundef nonnull %16, i32 noundef 0) #18
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %i.gds, i32 noundef 4, ptr noundef nonnull %15, i32 noundef 0) #18
  call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %i.gds, i8 noundef zeroext 7, i8 %i.gay, i64 1, i32 noundef 4) #18
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %i.gds, i32 noundef 1, ptr noundef nonnull %15, i32 noundef 0) #18
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %i.gds, ptr noundef nonnull %16) #18
  call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(436) %i.gds, i8 noundef zeroext 51, i8 %i.gbt, i8 %i.gbt, i32 noundef 4) #18
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %i.gds, ptr noundef nonnull %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %bb.cld

bb.zc:                                            ; preds = %_ZN2v88internal8compiler42ShouldClearOutputRegisterBeforeInstructionEPNS1_13CodeGeneratorEPNS1_11InstructionE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  store i32 0, ptr %17, align 4
  %i.gew = getelementptr inbounds nuw i8, ptr %17, i64 4
  store i32 0, ptr %i.gew, align 4
  %i.gex = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.gey = load i32, ptr %i.gex, align 4          ; 2 uses
  %i.gez = and i32 %i.gey, 254
  %.not9026 = icmp eq i32 %i.gez, 0
  br i1 %.not9026, label %bb.ze, label %bb.zd

bb.zd:                                            ; preds = %bb.zc
  %i.gfa = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.gfb = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.gfc = load i64, ptr %i.gfb, align 8
  %i.gfd = lshr i64 %i.gfc, 32
  %i.gfe = trunc i64 %i.gfd to i8                 ; 3 uses
  %i.gff = icmp samesign ult i8 %i.gfe, 16
  tail call void @llvm.assume(i1 %i.gff)
  tail call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(436) %i.gfa, i8 noundef zeroext 51, i8 %i.gfe, i8 %i.gfe, i32 noundef 4) #18
  %.pre9224 = load i32, ptr %i.gex, align 4
  br label %bb.ze

bb.ze:                                            ; preds = %bb.zd, %bb.zc
  %i.gfg = phi i32 [ %.pre9224, %bb.zd ], [ %i.gey, %bb.zc ]
  %i.gfh = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.gfi = and i32 %i.gfg, 255
  %i.gfj = zext nneg i32 %i.gfi to i64
  %i.gfk = getelementptr [8 x i8], ptr %i.gfh, i64 %i.gfj
  %i.gfl = load i64, ptr %i.gfk, align 8          ; 4 uses
  %i.gfm = and i64 %i.gfl, 7
  %i.gfn = icmp samesign ugt i64 %i.gfm, 4
  %i.gfo = and i64 %i.gfl, 8
  %i.gfp = icmp eq i64 %i.gfo, 0
  %i.gfq = and i1 %i.gfn, %i.gfp
  %i.gfr = and i64 %i.gfl, 3840
  %i.gfs = icmp ne i64 %i.gfr, 0
  %i.gft = and i1 %i.gfs, %i.gfq
  %i.gfu = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.gfv = load i64, ptr %i.gfh, align 8
  %i.gfw = lshr i64 %i.gfv, 32
  %i.gfx = trunc i64 %i.gfw to i8                 ; 3 uses
  %i.gfy = icmp samesign ult i8 %i.gfx, 16
  tail call void @llvm.assume(i1 %i.gfy)
  br i1 %i.gft, label %bb.zf, label %bb.zg

bb.zf:                                            ; preds = %bb.ze
  %i.gfz = lshr i64 %i.gfl, 32
  %i.gga = trunc i64 %i.gfz to i8                 ; 2 uses
  %i.ggb = icmp samesign ult i8 %i.gga, 16
  tail call void @llvm.assume(i1 %i.ggb)
  call void @_ZN2v88internal14MacroAssembler9Cvttsd2uiENS0_8RegisterENS0_11XMMRegisterEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(436) %i.gfu, i8 %i.gfx, i8 %i.gga, ptr noundef nonnull %17) #18
  br label %bb.zh

bb.zg:                                            ; preds = %bb.ze
  %i.ggc = call { i64, ptr } @_ZN2v88internal8compiler19X64OperandConverter12InputOperandEmi(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 0, i32 noundef 0) ; 2 uses
  %i.ggd = extractvalue { i64, ptr } %i.ggc, 0
  %i.gge = extractvalue { i64, ptr } %i.ggc, 1
  call void @_ZN2v88internal14MacroAssembler9Cvttsd2uiENS0_8RegisterENS0_7OperandEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(436) %i.gfu, i8 %i.gfx, i64 %i.ggd, ptr %i.gge, ptr noundef nonnull %17) #18
  br label %bb.zh

bb.zh:                                            ; preds = %bb.zg, %bb.zf
  %i.ggf = load i32, ptr %i.gex, align 4
  %i.ggg = and i32 %i.ggf, 254
  %.not9027 = icmp eq i32 %i.ggg, 0
  br i1 %.not9027, label %bb.zj, label %bb.zi

bb.zi:                                            ; preds = %bb.zh
  %i.ggh = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ggi = load ptr, ptr %i.hw, align 8
  %i.ggj = getelementptr inbounds nuw i8, ptr %i.ggi, i64 48
  %i.ggk = load i64, ptr %i.ggj, align 8
  %i.ggl = lshr i64 %i.ggk, 32
  %i.ggm = trunc i64 %i.ggl to i8                 ; 2 uses
  %i.ggn = icmp samesign ult i8 %i.ggm, 16
  call void @llvm.assume(i1 %i.ggn)
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(436) %i.ggh, i8 %i.ggm, i64 1, i32 noundef 4) #18
  br label %bb.zj

bb.zj:                                            ; preds = %bb.zi, %bb.zh
  %i.ggo = getelementptr inbounds nuw i8, ptr %0, i64 208
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %i.ggo, ptr noundef nonnull %17) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  br label %bb.cld

bb.zk:                                            ; preds = %_ZN2v88internal8compiler42ShouldClearOutputRegisterBeforeInstructionEPNS1_13CodeGeneratorEPNS1_11InstructionE.exit
  %i.ggp = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.ggq = load i64, ptr %i.ggp, align 8
  %i.ggr = lshr i64 %i.ggq, 32
  %i.ggs = trunc i64 %i.ggr to i8                 ; 9 uses
  %i.ggt = icmp samesign ult i8 %i.ggs, 16
  tail call void @llvm.assume(i1 %i.ggt)
  %i.ggu = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.ggv = load i32, ptr %i.ggu, align 4
  %i.ggw = and i32 %i.ggv, 255                    ; 2 uses
  %73 = icmp eq i32 %i.ggw, 1
  %74 = getelementptr i8, ptr %1, i64 48
  %75 = load i64, ptr %74, align 8                ; 5 uses
  br i1 %73, label %bb.zl, label %bb.zo

bb.zl:                                            ; preds = %bb.zk
  %i.ggx = and i64 %75, 7
  %i.ggy = icmp samesign ugt i64 %i.ggx, 4
  %i.ggz = and i64 %75, 8
  %i.gha = icmp eq i64 %i.ggz, 0
  %i.ghb = and i1 %i.ggy, %i.gha
  %i.ghc = and i64 %75, 3840
  %i.ghd = icmp ne i64 %i.ghc, 0
  %i.ghe = and i1 %i.ghd, %i.ghb
  %i.ghf = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  br i1 %i.ghe, label %bb.zm, label %bb.zn

bb.zm:                                            ; preds = %bb.zl
  %i.ghg = lshr i64 %75, 32
  %i.ghh = trunc i64 %i.ghg to i8                 ; 2 uses
  %i.ghi = icmp samesign ult i8 %i.ghh, 16
  tail call void @llvm.assume(i1 %i.ghi)
  tail call void @_ZN2v88internal14MacroAssembler10Cvttss2siqENS0_8RegisterENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(436) %i.ghf, i8 %i.ggs, i8 %i.ghh) #18
  br label %bb.cld

bb.zn:                                            ; preds = %bb.zl
  %i.ghj = call { i64, ptr } @_ZN2v88internal8compiler19X64OperandConverter12InputOperandEmi(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 0, i32 noundef 0) ; 2 uses
  %i.ghk = extractvalue { i64, ptr } %i.ghj, 0
  %i.ghl = extractvalue { i64, ptr } %i.ghj, 1
  call void @_ZN2v88internal14MacroAssembler10Cvttss2siqENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %i.ghf, i8 %i.ggs, i64 %i.ghk, ptr %i.ghl) #18
  br label %bb.cld

bb.zo:                                            ; preds = %bb.zk
  %76 = zext nneg i32 %i.ggw to i64
  %i.ghm = lshr i64 %75, 32
  %i.ghn = trunc i64 %i.ghm to i8                 ; 6 uses
  %i.gho = icmp samesign ult i8 %i.ghn, 16
  tail call void @llvm.assume(i1 %i.gho)
  %i.ghp = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.ghq = and i32 %i.ghp, 34
  %or.cond8833.not = icmp eq i32 %i.ghq, 0
  %i.ghr = getelementptr [8 x i8], ptr %i.ggp, i64 %76
  %i.ghs = load i64, ptr %i.ghr, align 8          ; 5 uses
  %i.ght = and i64 %i.ghs, 7
  %i.ghu = icmp samesign ugt i64 %i.ght, 4
  %i.ghv = and i64 %i.ghs, 8
  %i.ghw = icmp eq i64 %i.ghv, 0
  %i.ghx = and i1 %i.ghu, %i.ghw
  %i.ghy = and i64 %i.ghs, 3840
  %i.ghz = icmp ne i64 %i.ghy, 0
  %i.gia = and i1 %i.ghz, %i.ghx                  ; 2 uses
  %i.gib = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 6 uses
  br i1 %or.cond8833.not, label %bb.zt, label %bb.zp

bb.zp:                                            ; preds = %bb.zo
  br i1 %i.gia, label %bb.zq, label %bb.zr

bb.zq:                                            ; preds = %bb.zp
  %i.gic = lshr i64 %i.ghs, 32
  %i.gid = trunc i64 %i.gic to i8                 ; 2 uses
  %i.gie = icmp samesign ult i8 %i.gid, 16
  tail call void @llvm.assume(i1 %i.gie)
  tail call void @_ZN2v88internal24SharedMacroAssemblerBase7RoundssINS0_11XMMRegisterES3_JNS0_12RoundingModeEEEEvT_T0_DpT1_(ptr noundef nonnull align 8 dereferenceable(436) %i.gib, i8 15, i8 %i.gid, i32 noundef 3)
  %i.gif = load i32, ptr %i.ggu, align 4
  %i.gig = and i32 %i.gif, 255
  %i.gih = zext nneg i32 %i.gig to i64
  %i.gii = getelementptr [8 x i8], ptr %i.ggp, i64 %i.gih
  %i.gij = load i64, ptr %i.gii, align 8
  %i.gik = lshr i64 %i.gij, 32
  %i.gil = trunc i64 %i.gik to i8                 ; 2 uses
  %i.gim = icmp samesign ult i8 %i.gil, 16
  tail call void @llvm.assume(i1 %i.gim)
  tail call void @_ZN2v88internal14MacroAssembler10Cvttss2siqENS0_8RegisterENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(436) %i.gib, i8 %i.ggs, i8 %i.gil) #18
  br label %bb.zs

bb.zr:                                            ; preds = %bb.zp
  %i.gin = call { i64, ptr } @_ZN2v88internal8compiler19X64OperandConverter12InputOperandEmi(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 0, i32 noundef 0) ; 2 uses
  %i.gio = extractvalue { i64, ptr } %i.gin, 0
  %i.gip = extractvalue { i64, ptr } %i.gin, 1
  call void @_ZN2v88internal24SharedMacroAssemblerBase7RoundssINS0_11XMMRegisterENS0_7OperandEJNS0_12RoundingModeEEEEvT_T0_DpT1_(ptr noundef nonnull align 8 dereferenceable(436) %i.gib, i8 15, i64 %i.gio, ptr %i.gip, i32 noundef 3)
  call void @_ZN2v88internal14MacroAssembler10Cvttss2siqENS0_8RegisterENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(436) %i.gib, i8 %i.ggs, i8 15) #18
  %.pre9223 = load ptr, ptr %i.hw, align 8
  br label %bb.zs

bb.zs:                                            ; preds = %bb.zr, %bb.zq
  %i.giq = phi ptr [ %.pre9223, %bb.zr ], [ %1, %bb.zq ] ; 2 uses
  %i.gir = getelementptr inbounds nuw i8, ptr %i.giq, i64 40
  %i.gis = getelementptr inbounds nuw i8, ptr %i.giq, i64 4
  %i.git = load i32, ptr %i.gis, align 4          ; 2 uses
  %i.giu = and i32 %i.git, 255
  %i.giv = zext nneg i32 %i.giu to i64
  %i.giw = lshr i32 %i.git, 8
  %i.gix = and i32 %i.giw, 65535
  %i.giy = zext nneg i32 %i.gix to i64
  %i.giz = getelementptr [8 x i8], ptr %i.gir, i64 %i.giv
  %i.gja = getelementptr [8 x i8], ptr %i.giz, i64 %i.giy
  %i.gjb = load i64, ptr %i.gja, align 8
  %i.gjc = lshr i64 %i.gjb, 32
  %i.gjd = trunc i64 %i.gjc to i8                 ; 4 uses
  %i.gje = icmp samesign ult i8 %i.gjd, 16
  call void @llvm.assume(i1 %i.gje)
  %i.gjf = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  call void @_ZN2v88internal14MacroAssembler9Cvtqsi2ssENS0_11XMMRegisterENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %i.gjf, i8 %i.gjd, i8 %i.ggs) #18
  call void @_ZN2v88internal14MacroAssembler7CmpeqssENS0_11XMMRegisterES2_(ptr noundef nonnull align 8 dereferenceable(436) %i.gjf, i8 %i.gjd, i8 15) #18
  call void @_ZN2v88internal14MacroAssembler4MovqENS0_8RegisterENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(436) %i.gjf, i8 %i.ghn, i8 %i.gjd) #18
  call void @_ZN2v88internal24SharedMacroAssemblerBase3AndENS0_8RegisterENS0_9ImmediateE(ptr noundef nonnull align 8 dereferenceable(436) %i.gjf, i8 %i.ghn, i64 1) #18
  br label %bb.cld

bb.zt:                                            ; preds = %bb.zo
  br i1 %i.gia, label %bb.zu, label %bb.zv

bb.zu:                                            ; preds = %bb.zt
  %i.gjg = lshr i64 %i.ghs, 32
  %i.gjh = trunc i64 %i.gjg to i8                 ; 2 uses
  %i.gji = icmp samesign ult i8 %i.gjh, 16
  tail call void @llvm.assume(i1 %i.gji)
  tail call void @_ZN2v88internal14MacroAssembler10Cvttss2siqENS0_8RegisterENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(436) %i.gib, i8 %i.ggs, i8 %i.gjh) #18
  br label %bb.zw

bb.zv:                                            ; preds = %bb.zt
  %i.gjj = call { i64, ptr } @_ZN2v88internal8compiler19X64OperandConverter12InputOperandEmi(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 0, i32 noundef 0) ; 2 uses
  %i.gjk = extractvalue { i64, ptr } %i.gjj, 0
  %i.gjl = extractvalue { i64, ptr } %i.gjj, 1
  call void @_ZN2v88internal14MacroAssembler10Cvttss2siqENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %i.gib, i8 %i.ggs, i64 %i.gjk, ptr %i.gjl) #18
  br label %bb.zw

bb.zw:                                            ; preds = %bb.zv, %bb.zu
  %i.gjm = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 11 uses
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(436) %i.gjm, i8 %i.ghn, i64 1, i32 noundef 4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  store i32 0, ptr %18, align 4
  %i.gjn = getelementptr inbounds nuw i8, ptr %18, i64 4
  store i32 0, ptr %i.gjn, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  store i32 0, ptr %19, align 4
  %i.gjo = getelementptr inbounds nuw i8, ptr %19, i64 4
  store i32 0, ptr %i.gjo, align 4
  call void @_ZN2v88internal14MacroAssembler4MoveENS0_11XMMRegisterEj(ptr noundef nonnull align 8 dereferenceable(436) %i.gjm, i8 15, i32 noundef -553648128) #18
  %i.gjp = load i32, ptr %i.ggu, align 4
  %i.gjq = and i32 %i.gjp, 255
  %i.gjr = zext nneg i32 %i.gjq to i64
  %i.gjs = getelementptr [8 x i8], ptr %i.ggp, i64 %i.gjr
  %i.gjt = load i64, ptr %i.gjs, align 8          ; 3 uses
  %i.gju = and i64 %i.gjt, 7
  %i.gjv = icmp samesign ugt i64 %i.gju, 4
  %i.gjw = and i64 %i.gjt, 8
  %i.gjx = icmp eq i64 %i.gjw, 0
  %i.gjy = and i1 %i.gjv, %i.gjx
  %i.gjz = and i64 %i.gjt, 3840
  %i.gka = icmp ne i64 %i.gjz, 0
  %i.gkb = and i1 %i.gka, %i.gjy
  br i1 %i.gkb, label %bb.zx, label %bb.zy

bb.zx:                                            ; preds = %bb.zw
  %i.gkc = load ptr, ptr %i.hw, align 8           ; 2 uses
  %i.gkd = getelementptr inbounds nuw i8, ptr %i.gkc, i64 40
  %i.gke = getelementptr inbounds nuw i8, ptr %i.gkc, i64 4
  %i.gkf = load i32, ptr %i.gke, align 4
  %i.gkg = and i32 %i.gkf, 255
  %i.gkh = zext nneg i32 %i.gkg to i64
  %i.gki = getelementptr [8 x i8], ptr %i.gkd, i64 %i.gkh
  %i.gkj = load i64, ptr %i.gki, align 8
  %i.gkk = lshr i64 %i.gkj, 32
  %i.gkl = trunc i64 %i.gkk to i8                 ; 2 uses
  %i.gkm = icmp samesign ult i8 %i.gkl, 16
  call void @llvm.assume(i1 %i.gkm)
  call void @_ZN2v88internal24SharedMacroAssemblerBase7UcomissINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_(ptr noundef nonnull align 8 dereferenceable(436) %i.gjm, i8 15, i8 %i.gkl)
  br label %bb.zz

bb.zy:                                            ; preds = %bb.zw
  %i.gkn = call { i64, ptr } @_ZN2v88internal8compiler19X64OperandConverter12InputOperandEmi(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 0, i32 noundef 0) ; 2 uses
  %i.gko = extractvalue { i64, ptr } %i.gkn, 0
  %i.gkp = extractvalue { i64, ptr } %i.gkn, 1
  call void @_ZN2v88internal24SharedMacroAssemblerBase7UcomissINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_(ptr noundef nonnull align 8 dereferenceable(436) %i.gjm, i8 15, i64 %i.gko, ptr %i.gkp)
  br label %bb.zz

bb.zz:                                            ; preds = %bb.zy, %bb.zx
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %i.gjm, i32 noundef 10, ptr noundef nonnull %19, i32 noundef 0) #18
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %i.gjm, i32 noundef 4, ptr noundef nonnull %18, i32 noundef 0) #18
  call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %i.gjm, i8 noundef zeroext 7, i8 %i.ggs, i64 1, i32 noundef 8) #18
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %i.gjm, i32 noundef 1, ptr noundef nonnull %18, i32 noundef 0) #18
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %i.gjm, ptr noundef nonnull %19) #18
  call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(436) %i.gjm, i8 noundef zeroext 51, i8 %i.ghn, i8 %i.ghn, i32 noundef 4) #18
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %i.gjm, ptr noundef nonnull %18) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  br label %bb.cld

bb.aaa:                                           ; preds = %_ZN2v88internal8compiler42ShouldClearOutputRegisterBeforeInstructionEPNS1_13CodeGeneratorEPNS1_11InstructionE.exit
  %i.gkq = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.gkr = load i64, ptr %i.gkq, align 8
  %i.gks = lshr i64 %i.gkr, 32
  %i.gkt = trunc i64 %i.gks to i8                 ; 9 uses
  %i.gku = icmp samesign ult i8 %i.gkt, 16
  tail call void @llvm.assume(i1 %i.gku)
  %i.gkv = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.gkw = load i32, ptr %i.gkv, align 4
  %i.gkx = and i32 %i.gkw, 255                    ; 2 uses
  %77 = icmp eq i32 %i.gkx, 1
  %78 = getelementptr i8, ptr %1, i64 48
  %79 = load i64, ptr %78, align 8                ; 5 uses
  br i1 %77, label %bb.aab, label %bb.aae

bb.aab:                                           ; preds = %bb.aaa
  %i.gky = and i64 %79, 7
  %i.gkz = icmp samesign ugt i64 %i.gky, 4
  %i.gla = and i64 %79, 8
  %i.glb = icmp eq i64 %i.gla, 0
  %i.glc = and i1 %i.gkz, %i.glb
  %i.gld = and i64 %79, 3840
  %i.gle = icmp ne i64 %i.gld, 0
  %i.glf = and i1 %i.gle, %i.glc
  %i.glg = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  br i1 %i.glf, label %bb.aac, label %bb.aad

bb.aac:                                           ; preds = %bb.aab
  %i.glh = lshr i64 %79, 32
  %i.gli = trunc i64 %i.glh to i8                 ; 2 uses
  %i.glj = icmp samesign ult i8 %i.gli, 16
  tail call void @llvm.assume(i1 %i.glj)
  tail call void @_ZN2v88internal14MacroAssembler10Cvttsd2siqENS0_8RegisterENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(436) %i.glg, i8 %i.gkt, i8 %i.gli) #18
  br label %bb.cld

bb.aad:                                           ; preds = %bb.aab
  %i.glk = call { i64, ptr } @_ZN2v88internal8compiler19X64OperandConverter12InputOperandEmi(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 0, i32 noundef 0) ; 2 uses
  %i.gll = extractvalue { i64, ptr } %i.glk, 0
  %i.glm = extractvalue { i64, ptr } %i.glk, 1
  call void @_ZN2v88internal14MacroAssembler10Cvttsd2siqENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %i.glg, i8 %i.gkt, i64 %i.gll, ptr %i.glm) #18
  br label %bb.cld

bb.aae:                                           ; preds = %bb.aaa
  %80 = zext nneg i32 %i.gkx to i64
  %i.gln = lshr i64 %79, 32
  %i.glo = trunc i64 %i.gln to i8                 ; 6 uses
  %i.glp = icmp samesign ult i8 %i.glo, 16
  tail call void @llvm.assume(i1 %i.glp)
  %i.glq = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.glr = and i32 %i.glq, 34
  %or.cond8835.not = icmp eq i32 %i.glr, 0
  %i.gls = getelementptr [8 x i8], ptr %i.gkq, i64 %80
  %i.glt = load i64, ptr %i.gls, align 8          ; 5 uses
  %i.glu = and i64 %i.glt, 7
  %i.glv = icmp samesign ugt i64 %i.glu, 4
  %i.glw = and i64 %i.glt, 8
  %i.glx = icmp eq i64 %i.glw, 0
  %i.gly = and i1 %i.glv, %i.glx
  %i.glz = and i64 %i.glt, 3840
  %i.gma = icmp ne i64 %i.glz, 0
  %i.gmb = and i1 %i.gma, %i.gly                  ; 2 uses
  %i.gmc = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 6 uses
  br i1 %or.cond8835.not, label %bb.aaj, label %bb.aaf

bb.aaf:                                           ; preds = %bb.aae
  br i1 %i.gmb, label %bb.aag, label %bb.aah

bb.aag:                                           ; preds = %bb.aaf
  %i.gmd = lshr i64 %i.glt, 32
  %i.gme = trunc i64 %i.gmd to i8                 ; 2 uses
  %i.gmf = icmp samesign ult i8 %i.gme, 16
  tail call void @llvm.assume(i1 %i.gmf)
  tail call void @_ZN2v88internal24SharedMacroAssemblerBase7RoundsdINS0_11XMMRegisterES3_JNS0_12RoundingModeEEEEvT_T0_DpT1_(ptr noundef nonnull align 8 dereferenceable(436) %i.gmc, i8 15, i8 %i.gme, i32 noundef 3)
  %i.gmg = load i32, ptr %i.gkv, align 4
  %i.gmh = and i32 %i.gmg, 255
  %i.gmi = zext nneg i32 %i.gmh to i64
  %i.gmj = getelementptr [8 x i8], ptr %i.gkq, i64 %i.gmi
  %i.gmk = load i64, ptr %i.gmj, align 8
  %i.gml = lshr i64 %i.gmk, 32
  %i.gmm = trunc i64 %i.gml to i8                 ; 2 uses
  %i.gmn = icmp samesign ult i8 %i.gmm, 16
  tail call void @llvm.assume(i1 %i.gmn)
  tail call void @_ZN2v88internal14MacroAssembler10Cvttsd2siqENS0_8RegisterENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(436) %i.gmc, i8 %i.gkt, i8 %i.gmm) #18
  br label %bb.aai

bb.aah:                                           ; preds = %bb.aaf
  %i.gmo = call { i64, ptr } @_ZN2v88internal8compiler19X64OperandConverter12InputOperandEmi(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 0, i32 noundef 0) ; 2 uses
  %i.gmp = extractvalue { i64, ptr } %i.gmo, 0
  %i.gmq = extractvalue { i64, ptr } %i.gmo, 1
  call void @_ZN2v88internal24SharedMacroAssemblerBase7RoundsdINS0_11XMMRegisterENS0_7OperandEJNS0_12RoundingModeEEEEvT_T0_DpT1_(ptr noundef nonnull align 8 dereferenceable(436) %i.gmc, i8 15, i64 %i.gmp, ptr %i.gmq, i32 noundef 3)
  call void @_ZN2v88internal14MacroAssembler10Cvttsd2siqENS0_8RegisterENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(436) %i.gmc, i8 %i.gkt, i8 15) #18
  %.pre9222 = load ptr, ptr %i.hw, align 8
  br label %bb.aai

bb.aai:                                           ; preds = %bb.aah, %bb.aag
  %i.gmr = phi ptr [ %.pre9222, %bb.aah ], [ %1, %bb.aag ] ; 2 uses
  %i.gms = getelementptr inbounds nuw i8, ptr %i.gmr, i64 40
  %i.gmt = getelementptr inbounds nuw i8, ptr %i.gmr, i64 4
  %i.gmu = load i32, ptr %i.gmt, align 4          ; 2 uses
  %i.gmv = and i32 %i.gmu, 255
  %i.gmw = zext nneg i32 %i.gmv to i64
  %i.gmx = lshr i32 %i.gmu, 8
  %i.gmy = and i32 %i.gmx, 65535
  %i.gmz = zext nneg i32 %i.gmy to i64
  %i.gna = getelementptr [8 x i8], ptr %i.gms, i64 %i.gmw
  %i.gnb = getelementptr [8 x i8], ptr %i.gna, i64 %i.gmz
  %i.gnc = load i64, ptr %i.gnb, align 8
  %i.gnd = lshr i64 %i.gnc, 32
  %i.gne = trunc i64 %i.gnd to i8                 ; 4 uses
  %i.gnf = icmp samesign ult i8 %i.gne, 16
  call void @llvm.assume(i1 %i.gnf)
  %i.gng = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  call void @_ZN2v88internal14MacroAssembler9Cvtqsi2sdENS0_11XMMRegisterENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %i.gng, i8 %i.gne, i8 %i.gkt) #18
  call void @_ZN2v88internal14MacroAssembler7CmpeqsdENS0_11XMMRegisterES2_(ptr noundef nonnull align 8 dereferenceable(436) %i.gng, i8 %i.gne, i8 15) #18
  call void @_ZN2v88internal14MacroAssembler4MovqENS0_8RegisterENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(436) %i.gng, i8 %i.glo, i8 %i.gne) #18
  call void @_ZN2v88internal24SharedMacroAssemblerBase3AndENS0_8RegisterENS0_9ImmediateE(ptr noundef nonnull align 8 dereferenceable(436) %i.gng, i8 %i.glo, i64 1) #18
  br label %bb.cld

bb.aaj:                                           ; preds = %bb.aae
  br i1 %i.gmb, label %bb.aak, label %bb.aal

bb.aak:                                           ; preds = %bb.aaj
  %i.gnh = lshr i64 %i.glt, 32
  %i.gni = trunc i64 %i.gnh to i8                 ; 2 uses
  %i.gnj = icmp samesign ult i8 %i.gni, 16
  tail call void @llvm.assume(i1 %i.gnj)
  tail call void @_ZN2v88internal14MacroAssembler10Cvttsd2siqENS0_8RegisterENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(436) %i.gmc, i8 %i.gkt, i8 %i.gni) #18
  br label %bb.aam

bb.aal:                                           ; preds = %bb.aaj
  %i.gnk = call { i64, ptr } @_ZN2v88internal8compiler19X64OperandConverter12InputOperandEmi(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 0, i32 noundef 0) ; 2 uses
  %i.gnl = extractvalue { i64, ptr } %i.gnk, 0
  %i.gnm = extractvalue { i64, ptr } %i.gnk, 1
  call void @_ZN2v88internal14MacroAssembler10Cvttsd2siqENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %i.gmc, i8 %i.gkt, i64 %i.gnl, ptr %i.gnm) #18
  br label %bb.aam

bb.aam:                                           ; preds = %bb.aal, %bb.aak
  %i.gnn = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 11 uses
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(436) %i.gnn, i8 %i.glo, i64 1, i32 noundef 4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18
  store i32 0, ptr %20, align 4
  %i.gno = getelementptr inbounds nuw i8, ptr %20, i64 4
  store i32 0, ptr %i.gno, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #18
  store i32 0, ptr %21, align 4
  %i.gnp = getelementptr inbounds nuw i8, ptr %21, i64 4
  store i32 0, ptr %i.gnp, align 4
  call void @_ZN2v88internal14MacroAssembler4MoveENS0_11XMMRegisterEm(ptr noundef nonnull align 8 dereferenceable(436) %i.gnn, i8 15, i64 noundef -4332462841530417152) #18
  %i.gnq = load i32, ptr %i.gkv, align 4
  %i.gnr = and i32 %i.gnq, 255
  %i.gns = zext nneg i32 %i.gnr to i64
  %i.gnt = getelementptr [8 x i8], ptr %i.gkq, i64 %i.gns
  %i.gnu = load i64, ptr %i.gnt, align 8          ; 3 uses
  %i.gnv = and i64 %i.gnu, 7
  %i.gnw = icmp samesign ugt i64 %i.gnv, 4
  %i.gnx = and i64 %i.gnu, 8
  %i.gny = icmp eq i64 %i.gnx, 0
  %i.gnz = and i1 %i.gnw, %i.gny
  %i.goa = and i64 %i.gnu, 3840
  %i.gob = icmp ne i64 %i.goa, 0
  %i.goc = and i1 %i.gob, %i.gnz
  br i1 %i.goc, label %bb.aan, label %bb.aao

bb.aan:                                           ; preds = %bb.aam
  %i.god = load ptr, ptr %i.hw, align 8           ; 2 uses
  %i.goe = getelementptr inbounds nuw i8, ptr %i.god, i64 40
  %i.gof = getelementptr inbounds nuw i8, ptr %i.god, i64 4
  %i.gog = load i32, ptr %i.gof, align 4
  %i.goh = and i32 %i.gog, 255
  %i.goi = zext nneg i32 %i.goh to i64
  %i.goj = getelementptr [8 x i8], ptr %i.goe, i64 %i.goi
  %i.gok = load i64, ptr %i.goj, align 8
  %i.gol = lshr i64 %i.gok, 32
  %i.gom = trunc i64 %i.gol to i8                 ; 2 uses
  %i.gon = icmp samesign ult i8 %i.gom, 16
  call void @llvm.assume(i1 %i.gon)
  call void @_ZN2v88internal24SharedMacroAssemblerBase7UcomisdINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_(ptr noundef nonnull align 8 dereferenceable(436) %i.gnn, i8 15, i8 %i.gom)
  br label %bb.aap

bb.aao:                                           ; preds = %bb.aam
  %i.goo = call { i64, ptr } @_ZN2v88internal8compiler19X64OperandConverter12InputOperandEmi(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 0, i32 noundef 0) ; 2 uses
  %i.gop = extractvalue { i64, ptr } %i.goo, 0
  %i.goq = extractvalue { i64, ptr } %i.goo, 1
  call void @_ZN2v88internal24SharedMacroAssemblerBase7UcomisdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_(ptr noundef nonnull align 8 dereferenceable(436) %i.gnn, i8 15, i64 %i.gop, ptr %i.goq)
  br label %bb.aap

bb.aap:                                           ; preds = %bb.aao, %bb.aan
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %i.gnn, i32 noundef 10, ptr noundef nonnull %21, i32 noundef 0) #18
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %i.gnn, i32 noundef 4, ptr noundef nonnull %20, i32 noundef 0) #18
  call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %i.gnn, i8 noundef zeroext 7, i8 %i.gkt, i64 1, i32 noundef 8) #18
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %i.gnn, i32 noundef 1, ptr noundef nonnull %20, i32 noundef 0) #18
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %i.gnn, ptr noundef nonnull %21) #18
  call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(436) %i.gnn, i8 noundef zeroext 51, i8 %i.glo, i8 %i.glo, i32 noundef 4) #18
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %i.gnn, ptr noundef nonnull %20) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  br label %bb.cld

bb.aaq:                                           ; preds = %_ZN2v88internal8compiler42ShouldClearOutputRegisterBeforeInstructionEPNS1_13CodeGeneratorEPNS1_11InstructionE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #18
  store i32 0, ptr %22, align 4
  %i.gor = getelementptr inbounds nuw i8, ptr %22, i64 4
  store i32 0, ptr %i.gor, align 4
  %i.gos = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.got = load i32, ptr %i.gos, align 4          ; 2 uses
  %i.gou = and i32 %i.got, 254
  %.not9024 = icmp eq i32 %i.gou, 0
  br i1 %.not9024, label %bb.aas, label %bb.aar

bb.aar:                                           ; preds = %bb.aaq
  %i.gov = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.gow = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.gox = load i64, ptr %i.gow, align 8
  %i.goy = lshr i64 %i.gox, 32
  %i.goz = trunc i64 %i.goy to i8                 ; 3 uses
  %i.gpa = icmp samesign ult i8 %i.goz, 16
  tail call void @llvm.assume(i1 %i.gpa)
  tail call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(436) %i.gov, i8 noundef zeroext 51, i8 %i.goz, i8 %i.goz, i32 noundef 4) #18
  %.pre9221 = load i32, ptr %i.gos, align 4
  br label %bb.aas

bb.aas:                                           ; preds = %bb.aar, %bb.aaq
  %i.gpb = phi i32 [ %.pre9221, %bb.aar ], [ %i.got, %bb.aaq ]
  %i.gpc = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.gpd = and i32 %i.gpb, 255
  %i.gpe = zext nneg i32 %i.gpd to i64
  %i.gpf = getelementptr [8 x i8], ptr %i.gpc, i64 %i.gpe
  %i.gpg = load i64, ptr %i.gpf, align 8          ; 4 uses
  %i.gph = and i64 %i.gpg, 7
  %i.gpi = icmp samesign ugt i64 %i.gph, 4
  %i.gpj = and i64 %i.gpg, 8
  %i.gpk = icmp eq i64 %i.gpj, 0
  %i.gpl = and i1 %i.gpi, %i.gpk
  %i.gpm = and i64 %i.gpg, 3840
  %i.gpn = icmp ne i64 %i.gpm, 0
  %i.gpo = and i1 %i.gpn, %i.gpl
  %i.gpp = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.gpq = load i64, ptr %i.gpc, align 8
  %i.gpr = lshr i64 %i.gpq, 32
  %i.gps = trunc i64 %i.gpr to i8                 ; 3 uses
  %i.gpt = icmp samesign ult i8 %i.gps, 16
  tail call void @llvm.assume(i1 %i.gpt)
  br i1 %i.gpo, label %bb.aat, label %bb.aau

bb.aat:                                           ; preds = %bb.aas
  %i.gpu = lshr i64 %i.gpg, 32
  %i.gpv = trunc i64 %i.gpu to i8                 ; 2 uses
  %i.gpw = icmp samesign ult i8 %i.gpv, 16
  tail call void @llvm.assume(i1 %i.gpw)
  call void @_ZN2v88internal14MacroAssembler10Cvttss2uiqENS0_8RegisterENS0_11XMMRegisterEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(436) %i.gpp, i8 %i.gps, i8 %i.gpv, ptr noundef nonnull %22) #18
  br label %bb.aav

end_hunk_0
