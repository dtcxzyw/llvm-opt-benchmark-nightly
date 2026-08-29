Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/code-generator-x64?download=true
inline.NumInlined: 12588
inline.NumDeleted: 1676
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN2v88internal8compiler13CodeGenerator23AssembleArchInstructionEPNS1_11InstructionE:bb.a
  %i.vkb = load i32, ptr %i.vka, align 4
  %i.vkc = and i32 %i.vkb, 255
  %i.vkd = zext nneg i32 %i.vkc to i64
  %i.vke = getelementptr [8 x i8], ptr %i.vjz, i64 %i.vkd
  %i.vkf = getelementptr i8, ptr %i.vke, i64 56
  %i.vkg = call { i64, i64 } @_ZNK2v88internal8compiler27InstructionOperandConverter10ToConstantEPNS1_18InstructionOperandE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.vkf)
  %i.vkh = extractvalue { i64, i64 } %i.vkg, 1
  %i.vki = load ptr, ptr %i.hw, align 8           ; 2 uses
  %i.vkj = getelementptr inbounds nuw i8, ptr %i.vki, i64 4
  %i.vkk = load i32, ptr %i.vkj, align 4
  %i.vkl = and i32 %i.vkk, 255
  %i.vkm = zext nneg i32 %i.vkl to i64
  %i.vkn = getelementptr [8 x i8], ptr %i.vki, i64 %i.vkm
  %i.vko = getelementptr i8, ptr %i.vkn, i64 48
  %i.vkp = call { i64, i64 } @_ZNK2v88internal8compiler27InstructionOperandConverter10ToConstantEPNS1_18InstructionOperandE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.vko)
  %i.vkq = extractvalue { i64, i64 } %i.vkp, 1
  %i.vkr = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %.sroa.0.sroa.5.0.insert.ext = shl i64 %i.vkh, 32
  %.sroa.0.sroa.09124.0.insert.ext = and i64 %i.vkq, 4294967295
  %.sroa.0.sroa.09124.0.insert.insert = or disjoint i64 %.sroa.0.sroa.5.0.insert.ext, %.sroa.0.sroa.09124.0.insert.ext
  call void @_ZN2v88internal14MacroAssembler4MoveENS0_11XMMRegisterEmm(ptr noundef nonnull align 8 dereferenceable(436) %i.vkr, i8 %i.vjj, i64 noundef %.sroa.6.8.insert.insert, i64 noundef %.sroa.0.sroa.09124.0.insert.insert) #18
  call void @_ZN2v88internal24SharedMacroAssemblerBase6PshufbINS0_11XMMRegisterEEEvS3_T_(ptr noundef nonnull align 8 dereferenceable(436) %i.vkr, i8 %i.viw, i8 %i.vjj)
  br label %bb.cld

bb.bwg:                                           ; preds = %bb.bwe
  %i.vks = load i64, ptr %i.vjf, align 8          ; 4 uses
  %i.vkt = and i64 %i.vks, 7
  %i.vku = icmp samesign ugt i64 %i.vkt, 4
  %i.vkv = and i64 %i.vks, 8
  %i.vkw = icmp eq i64 %i.vkv, 0
  %i.vkx = and i1 %i.vku, %i.vkw
  %i.vky = lshr i64 %i.vks, 4
  %i.vkz = trunc i64 %i.vky to i8
  %i.vla = add i8 %i.vkz, -19
  %i.vlb = icmp ult i8 %i.vla, 2
  %.0.i7196 = and i1 %i.vkx, %i.vlb
  %i.vlc = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  br i1 %.0.i7196, label %bb.bwh, label %bb.bwi

bb.bwh:                                           ; preds = %bb.bwg
  %i.vld = lshr i64 %i.vks, 32
  %i.vle = trunc i64 %i.vld to i8                 ; 2 uses
  %i.vlf = icmp samesign ult i8 %i.vle, 16
  tail call void @llvm.assume(i1 %i.vlf)
  tail call void @_ZN2v88internal24SharedMacroAssemblerBase6MovdquINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_(ptr noundef nonnull align 8 dereferenceable(436) %i.vlc, i8 15, i8 %i.vle)
  br label %bb.bwj

bb.bwi:                                           ; preds = %bb.bwg
  %i.vlg = call { i64, ptr } @_ZN2v88internal8compiler19X64OperandConverter12InputOperandEmi(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 0, i32 noundef 0) ; 2 uses
  %i.vlh = extractvalue { i64, ptr } %i.vlg, 0
  %i.vli = extractvalue { i64, ptr } %i.vlg, 1
  call void @_ZN2v88internal24SharedMacroAssemblerBase6MovdquINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_(ptr noundef nonnull align 8 dereferenceable(436) %i.vlc, i8 15, i64 %i.vlh, ptr %i.vli)
  %.pre = load ptr, ptr %i.hw, align 8
  br label %bb.bwj

bb.bwj:                                           ; preds = %bb.bwi, %bb.bwh
  %i.vlj = phi ptr [ %.pre, %bb.bwi ], [ %1, %bb.bwh ] ; 2 uses
  %i.vlk = getelementptr inbounds nuw i8, ptr %i.vlj, i64 4
  %i.vll = load i32, ptr %i.vlk, align 4
  %i.vlm = and i32 %i.vll, 255
  %i.vln = zext nneg i32 %i.vlm to i64
  %i.vlo = getelementptr [8 x i8], ptr %i.vlj, i64 %i.vln
  %i.vlp = getelementptr i8, ptr %i.vlo, i64 80
  %i.vlq = call { i64, i64 } @_ZNK2v88internal8compiler27InstructionOperandConverter10ToConstantEPNS1_18InstructionOperandE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.vlp)
  %i.vlr = extractvalue { i64, i64 } %i.vlq, 1
  %i.vls = load ptr, ptr %i.hw, align 8           ; 2 uses
  %i.vlt = getelementptr inbounds nuw i8, ptr %i.vls, i64 4
  %i.vlu = load i32, ptr %i.vlt, align 4
  %i.vlv = and i32 %i.vlu, 255
  %i.vlw = zext nneg i32 %i.vlv to i64
  %i.vlx = getelementptr [8 x i8], ptr %i.vls, i64 %i.vlw
  %i.vly = getelementptr i8, ptr %i.vlx, i64 72
  %i.vlz = call { i64, i64 } @_ZNK2v88internal8compiler27InstructionOperandConverter10ToConstantEPNS1_18InstructionOperandE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.vly)
  %i.vma = extractvalue { i64, i64 } %i.vlz, 1
  %i.vmb = insertelement <2 x i64> poison, i64 %i.vlr, i64 0
  %i.vmc = insertelement <2 x i64> %i.vmb, i64 %i.vma, i64 1
  %i.vmd = trunc <2 x i64> %i.vmc to <2 x i32>    ; 5 uses
  %i.vme = and <2 x i32> %i.vmd, splat (i32 255)  ; 2 uses
  %i.vmf = icmp samesign ult <2 x i32> %i.vme, splat (i32 16)
  %i.vmg = select <2 x i1> %i.vmf, <2 x i32> %i.vme, <2 x i32> splat (i32 128)
  %i.vmh = lshr <2 x i32> %i.vmd, splat (i32 8)
  %i.vmi = and <2 x i32> %i.vmh, splat (i32 255)  ; 2 uses
  %i.vmj = icmp samesign ult <2 x i32> %i.vmi, splat (i32 16)
  %i.vmk = shl nuw nsw <2 x i32> %i.vmi, splat (i32 8)
  %i.vml = select <2 x i1> %i.vmj, <2 x i32> %i.vmk, <2 x i32> splat (i32 32768)
  %i.vmm = or disjoint <2 x i32> %i.vmg, %i.vml
  %i.vmn = lshr <2 x i32> %i.vmd, splat (i32 16)
  %i.vmo = and <2 x i32> %i.vmn, splat (i32 255)  ; 2 uses
  %i.vmp = icmp samesign ult <2 x i32> %i.vmo, splat (i32 16)
  %i.vmq = shl nuw nsw <2 x i32> %i.vmo, splat (i32 16)
  %i.vmr = select <2 x i1> %i.vmp, <2 x i32> %i.vmq, <2 x i32> splat (i32 8388608)
  %i.vms = or disjoint <2 x i32> %i.vmm, %i.vmr
  %i.vmt = and <2 x i32> %i.vmd, splat (i32 -16777216)
  %i.vmu = icmp ult <2 x i32> %i.vmd, splat (i32 268435456)
  %i.vmv = select <2 x i1> %i.vmu, <2 x i32> %i.vmt, <2 x i32> splat (i32 -2147483648)
  %i.vmw = or disjoint <2 x i32> %i.vms, %i.vmv   ; 2 uses
  %i.vmx = extractelement <2 x i32> %i.vmw, i64 0
  %i.vmy = zext i32 %i.vmx to i64
  %.sroa.89118.12.insert.shift = shl nuw i64 %i.vmy, 32
  %i.vmz = extractelement <2 x i32> %i.vmw, i64 1
  %i.vna = zext i32 %i.vmz to i64
  %.sroa.89118.8.insert.insert = or disjoint i64 %.sroa.89118.12.insert.shift, %i.vna
  %i.vnb = load ptr, ptr %i.hw, align 8           ; 2 uses
  %i.vnc = getelementptr inbounds nuw i8, ptr %i.vnb, i64 4
  %i.vnd = load i32, ptr %i.vnc, align 4
  %i.vne = and i32 %i.vnd, 255
  %i.vnf = zext nneg i32 %i.vne to i64
  %i.vng = getelementptr [8 x i8], ptr %i.vnb, i64 %i.vnf
  %i.vnh = getelementptr i8, ptr %i.vng, i64 64
  %i.vni = call { i64, i64 } @_ZNK2v88internal8compiler27InstructionOperandConverter10ToConstantEPNS1_18InstructionOperandE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.vnh)
  %i.vnj = extractvalue { i64, i64 } %i.vni, 1
  %i.vnk = load ptr, ptr %i.hw, align 8           ; 2 uses
  %i.vnl = getelementptr inbounds nuw i8, ptr %i.vnk, i64 4
  %i.vnm = load i32, ptr %i.vnl, align 4
  %i.vnn = and i32 %i.vnm, 255
  %i.vno = zext nneg i32 %i.vnn to i64
  %i.vnp = getelementptr [8 x i8], ptr %i.vnk, i64 %i.vno
  %i.vnq = getelementptr i8, ptr %i.vnp, i64 56
  %i.vnr = call { i64, i64 } @_ZNK2v88internal8compiler27InstructionOperandConverter10ToConstantEPNS1_18InstructionOperandE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.vnq)
  %i.vns = extractvalue { i64, i64 } %i.vnr, 1
  %i.vnt = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 7 uses
  %i.vnu = insertelement <2 x i64> poison, i64 %i.vnj, i64 0
  %i.vnv = insertelement <2 x i64> %i.vnu, i64 %i.vns, i64 1
  %i.vnw = trunc <2 x i64> %i.vnv to <2 x i32>    ; 5 uses
  %i.vnx = and <2 x i32> %i.vnw, splat (i32 255)  ; 2 uses
  %i.vny = icmp samesign ult <2 x i32> %i.vnx, splat (i32 16)
  %i.vnz = select <2 x i1> %i.vny, <2 x i32> %i.vnx, <2 x i32> splat (i32 128)
  %i.voa = lshr <2 x i32> %i.vnw, splat (i32 8)
  %i.vob = and <2 x i32> %i.voa, splat (i32 255)  ; 2 uses
  %i.voc = icmp samesign ult <2 x i32> %i.vob, splat (i32 16)
  %i.vod = shl nuw nsw <2 x i32> %i.vob, splat (i32 8)
  %i.voe = select <2 x i1> %i.voc, <2 x i32> %i.vod, <2 x i32> splat (i32 32768)
  %i.vof = or disjoint <2 x i32> %i.vnz, %i.voe
  %i.vog = lshr <2 x i32> %i.vnw, splat (i32 16)
  %i.voh = and <2 x i32> %i.vog, splat (i32 255)  ; 2 uses
  %i.voi = icmp samesign ult <2 x i32> %i.voh, splat (i32 16)
  %i.voj = shl nuw nsw <2 x i32> %i.voh, splat (i32 16)
  %i.vok = select <2 x i1> %i.voi, <2 x i32> %i.voj, <2 x i32> splat (i32 8388608)
  %i.vol = or disjoint <2 x i32> %i.vof, %i.vok
  %i.vom = and <2 x i32> %i.vnw, splat (i32 -16777216)
  %i.von = icmp ult <2 x i32> %i.vnw, splat (i32 268435456)
  %i.voo = select <2 x i1> %i.von, <2 x i32> %i.vom, <2 x i32> splat (i32 -2147483648)
  %i.vop = or disjoint <2 x i32> %i.vol, %i.voo   ; 2 uses
  %i.voq = extractelement <2 x i32> %i.vop, i64 0
  %i.vor = zext i32 %i.voq to i64
  %.sroa.0.sroa.69121.0.insert.shift = shl nuw i64 %i.vor, 32
  %i.vos = extractelement <2 x i32> %i.vop, i64 1
  %i.vot = zext i32 %i.vos to i64
  %.sroa.0.sroa.09120.0.insert.insert = or disjoint i64 %.sroa.0.sroa.69121.0.insert.shift, %i.vot
  call void @_ZN2v88internal14MacroAssembler4MoveENS0_11XMMRegisterEmm(ptr noundef nonnull align 8 dereferenceable(436) %i.vnt, i8 %i.vjj, i64 noundef %.sroa.89118.8.insert.insert, i64 noundef %.sroa.0.sroa.09120.0.insert.insert) #18
  call void @_ZN2v88internal24SharedMacroAssemblerBase6PshufbINS0_11XMMRegisterEEEvS3_T_(ptr noundef nonnull align 8 dereferenceable(436) %i.vnt, i8 15, i8 %i.vjj)
  %i.vou = load i32, ptr %i.viy, align 4
  %i.vov = and i32 %i.vou, 255
  %i.vow = zext nneg i32 %i.vov to i64
  %i.vox = getelementptr [8 x i8], ptr %i.vit, i64 %i.vow
  %i.voy = getelementptr i8, ptr %i.vox, i64 8
  %i.voz = load i64, ptr %i.voy, align 8          ; 2 uses
  %i.vpa = and i64 %i.voz, 7
  %i.vpb = icmp samesign ugt i64 %i.vpa, 4
  %i.vpc = and i64 %i.voz, 4088
  %i.vpd = icmp eq i64 %i.vpc, 304
  %i.vpe = and i1 %i.vpb, %i.vpd
  br i1 %i.vpe, label %bb.bwk, label %bb.bwm

bb.bwk:                                           ; preds = %bb.bwj
  %i.vpf = load ptr, ptr %i.hw, align 8           ; 2 uses
  %i.vpg = getelementptr inbounds nuw i8, ptr %i.vpf, i64 4
  %i.vph = load i32, ptr %i.vpg, align 4
  %i.vpi = and i32 %i.vph, 255
  %i.vpj = zext nneg i32 %i.vpi to i64
  %i.vpk = getelementptr [8 x i8], ptr %i.vpf, i64 %i.vpj
  %i.vpl = getelementptr i8, ptr %i.vpk, i64 48
  %i.vpm = load i64, ptr %i.vpl, align 8
  %i.vpn = lshr i64 %i.vpm, 32
  %i.vpo = trunc i64 %i.vpn to i8                 ; 3 uses
  %i.vpp = icmp samesign ult i8 %i.vpo, 16
  call void @llvm.assume(i1 %i.vpp)
  %.not8888 = icmp eq i8 %i.vpo, %i.viw
  br i1 %.not8888, label %bb.bwn, label %bb.bwl

bb.bwl:                                           ; preds = %bb.bwk
  call void @_ZN2v88internal24SharedMacroAssemblerBase6MovdqaINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_(ptr noundef nonnull align 8 dereferenceable(436) %i.vnt, i8 %i.viw, i8 %i.vpo)
  br label %bb.bwn

bb.bwm:                                           ; preds = %bb.bwj
  %i.vpq = call { i64, ptr } @_ZN2v88internal8compiler19X64OperandConverter12InputOperandEmi(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 1, i32 noundef 0) ; 2 uses
  %i.vpr = extractvalue { i64, ptr } %i.vpq, 0
  %i.vps = extractvalue { i64, ptr } %i.vpq, 1
  call void @_ZN2v88internal24SharedMacroAssemblerBase6MovdquINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_(ptr noundef nonnull align 8 dereferenceable(436) %i.vnt, i8 %i.viw, i64 %i.vpr, ptr %i.vps)
  br label %bb.bwn

bb.bwn:                                           ; preds = %bb.bwk, %bb.bwl, %bb.bwm
  %i.vpt = load ptr, ptr %i.hw, align 8           ; 2 uses
  %i.vpu = getelementptr inbounds nuw i8, ptr %i.vpt, i64 4
  %i.vpv = load i32, ptr %i.vpu, align 4
  %i.vpw = and i32 %i.vpv, 255
  %i.vpx = zext nneg i32 %i.vpw to i64
  %i.vpy = getelementptr [8 x i8], ptr %i.vpt, i64 %i.vpx
  %i.vpz = getelementptr i8, ptr %i.vpy, i64 80
  %i.vqa = call { i64, i64 } @_ZNK2v88internal8compiler27InstructionOperandConverter10ToConstantEPNS1_18InstructionOperandE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.vpz)
  %i.vqb = extractvalue { i64, i64 } %i.vqa, 1    ; 2 uses
  %69 = trunc i64 %i.vqb to i32
  %70 = insertelement <4 x i32> poison, i32 %69, i64 0
  %71 = shufflevector <4 x i32> %70, <4 x i32> poison, <4 x i32> zeroinitializer
  %72 = and <4 x i32> %71, <i32 240, i32 61440, i32 15728640, i32 -1>
  %73 = icmp ult <4 x i32> %72, <i32 1, i32 1, i32 1, i32 268435456>
  %74 = trunc i64 %i.vqb to i32
  %75 = insertelement <4 x i32> poison, i32 %74, i64 0
  %76 = shufflevector <4 x i32> %75, <4 x i32> poison, <4 x i32> zeroinitializer
  %77 = and <4 x i32> %76, <i32 15, i32 3840, i32 983040, i32 251658240>
  %78 = select <4 x i1> %73, <4 x i32> <i32 128, i32 32768, i32 8388608, i32 -2147483648>, <4 x i32> %77
  %79 = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %78)
  %80 = zext i32 %79 to i64
  %.sroa.8.12.insert.shift = shl nuw i64 %80, 32
  %81 = load ptr, ptr %i.hw, align 8              ; 2 uses
  %82 = getelementptr inbounds nuw i8, ptr %81, i64 4
  %83 = load i32, ptr %82, align 4
  %84 = and i32 %83, 255
  %85 = zext nneg i32 %84 to i64
  %86 = getelementptr [8 x i8], ptr %81, i64 %85
  %87 = getelementptr i8, ptr %86, i64 72
  %88 = call { i64, i64 } @_ZNK2v88internal8compiler27InstructionOperandConverter10ToConstantEPNS1_18InstructionOperandE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %87)
  %89 = extractvalue { i64, i64 } %88, 1          ; 2 uses
  %90 = trunc i64 %89 to i32
  %91 = insertelement <4 x i32> poison, i32 %90, i64 0
  %92 = shufflevector <4 x i32> %91, <4 x i32> poison, <4 x i32> zeroinitializer
  %93 = and <4 x i32> %92, <i32 240, i32 61440, i32 15728640, i32 -1>
  %94 = icmp ult <4 x i32> %93, <i32 1, i32 1, i32 1, i32 268435456>
  %95 = insertelement <4 x i64> poison, i64 %89, i64 0
  %96 = shufflevector <4 x i64> %95, <4 x i64> poison, <4 x i32> zeroinitializer
  %97 = and <4 x i64> %96, <i64 15, i64 3840, i64 983040, i64 251658240>
  %98 = select <4 x i1> %94, <4 x i64> <i64 128, i64 32768, i64 8388608, i64 2147483648>, <4 x i64> %97
  %99 = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %98)
  %op.rdx = or disjoint i64 %99, %.sroa.8.12.insert.shift
  %i.vqc = load ptr, ptr %i.hw, align 8           ; 2 uses
  %i.vqd = getelementptr inbounds nuw i8, ptr %i.vqc, i64 4
  %i.vqe = load i32, ptr %i.vqd, align 4
  %i.vqf = and i32 %i.vqe, 255
  %i.vqg = zext nneg i32 %i.vqf to i64
  %i.vqh = getelementptr [8 x i8], ptr %i.vqc, i64 %i.vqg
  %i.vqi = getelementptr i8, ptr %i.vqh, i64 64
  %i.vqj = call { i64, i64 } @_ZNK2v88internal8compiler27InstructionOperandConverter10ToConstantEPNS1_18InstructionOperandE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.vqi)
  %i.vqk = extractvalue { i64, i64 } %i.vqj, 1    ; 2 uses
  %100 = trunc i64 %i.vqk to i32
  %101 = insertelement <4 x i32> poison, i32 %100, i64 0
  %102 = shufflevector <4 x i32> %101, <4 x i32> poison, <4 x i32> zeroinitializer
  %103 = and <4 x i32> %102, <i32 240, i32 61440, i32 15728640, i32 -1>
  %104 = icmp ult <4 x i32> %103, <i32 1, i32 1, i32 1, i32 268435456>
  %105 = trunc i64 %i.vqk to i32
  %106 = insertelement <4 x i32> poison, i32 %105, i64 0
  %107 = shufflevector <4 x i32> %106, <4 x i32> poison, <4 x i32> zeroinitializer
  %108 = and <4 x i32> %107, <i32 15, i32 3840, i32 983040, i32 251658240>
  %109 = select <4 x i1> %104, <4 x i32> <i32 128, i32 32768, i32 8388608, i32 -2147483648>, <4 x i32> %108
  %110 = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %109)
  %111 = zext i32 %110 to i64
  %112 = load ptr, ptr %i.hw, align 8             ; 2 uses
  %113 = getelementptr inbounds nuw i8, ptr %112, i64 4
  %114 = load i32, ptr %113, align 4
  %115 = and i32 %114, 255
  %116 = zext nneg i32 %115 to i64
  %117 = getelementptr [8 x i8], ptr %112, i64 %116
  %118 = getelementptr i8, ptr %117, i64 56
  %119 = call { i64, i64 } @_ZNK2v88internal8compiler27InstructionOperandConverter10ToConstantEPNS1_18InstructionOperandE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %118)
  %120 = extractvalue { i64, i64 } %119, 1        ; 2 uses
  %121 = trunc i64 %120 to i32
  %122 = insertelement <4 x i32> poison, i32 %121, i64 0
  %123 = shufflevector <4 x i32> %122, <4 x i32> poison, <4 x i32> zeroinitializer
  %124 = and <4 x i32> %123, <i32 240, i32 61440, i32 15728640, i32 -1>
  %125 = icmp ult <4 x i32> %124, <i32 1, i32 1, i32 1, i32 268435456>
  %126 = insertelement <4 x i64> poison, i64 %120, i64 0
  %127 = shufflevector <4 x i64> %126, <4 x i64> poison, <4 x i32> zeroinitializer
  %128 = and <4 x i64> %127, <i64 15, i64 3840, i64 983040, i64 251658240>
  %129 = select <4 x i1> %125, <4 x i64> <i64 128, i64 32768, i64 8388608, i64 2147483648>, <4 x i64> %128
  %.sroa.0.sroa.6.0.insert.shift = shl nuw i64 %111, 32
  %130 = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %129)
  %op.rdx9308 = or disjoint i64 %130, %.sroa.0.sroa.6.0.insert.shift
  call void @_ZN2v88internal14MacroAssembler4MoveENS0_11XMMRegisterEmm(ptr noundef nonnull align 8 dereferenceable(436) %i.vnt, i8 %i.vjj, i64 noundef %op.rdx, i64 noundef %op.rdx9308) #18
  call void @_ZN2v88internal24SharedMacroAssemblerBase6PshufbINS0_11XMMRegisterEEEvS3_T_(ptr noundef nonnull align 8 dereferenceable(436) %i.vnt, i8 %i.viw, i8 %i.vjj)
  call void @_ZN2v88internal24SharedMacroAssemblerBase3PorINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_(ptr noundef nonnull align 8 dereferenceable(436) %i.vnt, i8 %i.viw, i8 15)
  br label %bb.cld

bb.bwo:                                           ; preds = %_ZN2v88internal8compiler42ShouldClearOutputRegisterBeforeInstructionEPNS1_13CodeGeneratorEPNS1_11InstructionE.exit
  %i.vql = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.vqm = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.vqn = load i64, ptr %i.vqm, align 8
  %i.vqo = lshr i64 %i.vqn, 32
  %i.vqp = trunc i64 %i.vqo to i8                 ; 2 uses
  %i.vqq = icmp samesign ult i8 %i.vqp, 16
  tail call void @llvm.assume(i1 %i.vqq)
  %i.vqr = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.vqs = load i32, ptr %i.vqr, align 4          ; 2 uses
  %i.vqt = and i32 %i.vqs, 255
  %i.vqu = zext nneg i32 %i.vqt to i64
  %i.vqv = getelementptr [8 x i8], ptr %i.vqm, i64 %i.vqu ; 2 uses
  %i.vqw = load i64, ptr %i.vqv, align 8
  %i.vqx = lshr i64 %i.vqw, 32
  %i.vqy = trunc i64 %i.vqx to i8                 ; 2 uses
  %i.vqz = icmp samesign ult i8 %i.vqy, 16
  tail call void @llvm.assume(i1 %i.vqz)
  %i.vra = lshr i32 %i.vqs, 8
  %i.vrb = and i32 %i.vra, 65535
  %i.vrc = zext nneg i32 %i.vrb to i64
  %i.vrd = getelementptr [8 x i8], ptr %i.vqv, i64 %i.vrc
  %i.vre = load i64, ptr %i.vrd, align 8
  %i.vrf = lshr i64 %i.vre, 32
  %i.vrg = trunc i64 %i.vrf to i8                 ; 2 uses
  %i.vrh = icmp samesign ult i8 %i.vrg, 16
  tail call void @llvm.assume(i1 %i.vrh)
  tail call void @_ZN2v88internal20SharedMacroAssemblerINS0_14MacroAssemblerEE11I8x16PopcntENS0_11XMMRegisterES4_S4_S4_NS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %i.vql, i8 %i.vqp, i8 %i.vqy, i8 %i.vrg, i8 15, i8 10)
  br label %bb.cld

bb.bwp:                                           ; preds = %_ZN2v88internal8compiler42ShouldClearOutputRegisterBeforeInstructionEPNS1_13CodeGeneratorEPNS1_11InstructionE.exit
  %i.vri = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.val6962 = load i32, ptr %1, align 8
  %i.vrj = lshr i32 %.val6962, 30
  %i.vrk = add nsw i32 %i.vrj, -1
  %or.cond.i7197 = icmp ult i32 %i.vrk, 2
  br i1 %or.cond.i7197, label %bb.bwq, label %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7198

bb.bwq:                                           ; preds = %bb.bwp
  %i.vrl = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.vrm = load ptr, ptr %i.vrl, align 8
  %i.vrn = ptrtoint ptr %i.vrm to i64
  %i.vro = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.vrp = load ptr, ptr %i.vro, align 8
  %i.vrq = ptrtoint ptr %i.vrp to i64
  %i.vrr = sub i64 %i.vrn, %i.vrq
  %i.vrs = trunc i64 %i.vrr to i32
  tail call void @_ZN2v88internal8compiler13CodeGenerator26RecordProtectedInstructionEj(ptr noundef nonnull align 8 dereferenceable(1560) %0, i32 noundef %i.vrs) #18
  br label %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7198

_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7198: ; preds = %bb.bwp, %bb.bwq
  %i.vrt = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.vru = load i64, ptr %i.vrt, align 8
  %i.vrv = lshr i64 %i.vru, 32
  %i.vrw = trunc i64 %i.vrv to i8                 ; 2 uses
  %i.vrx = icmp samesign ult i8 %i.vrw, 16
  tail call void @llvm.assume(i1 %i.vrx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb)
  store i64 0, ptr %i.eb, align 8
  %i.vry = call { i64, ptr } @_ZN2v88internal8compiler19X64OperandConverter13MemoryOperandEPm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.eb) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb)
  %i.vrz = extractvalue { i64, ptr } %i.vry, 0
  %i.vsa = extractvalue { i64, ptr } %i.vry, 1
  call void @_ZN2v88internal24SharedMacroAssemblerBase14S128Load8SplatENS0_11XMMRegisterENS0_7OperandES2_(ptr noundef nonnull align 8 dereferenceable(436) %i.vri, i8 %i.vrw, i64 %i.vrz, ptr %i.vsa, i8 15) #18
  br label %bb.cld

bb.bwr:                                           ; preds = %_ZN2v88internal8compiler42ShouldClearOutputRegisterBeforeInstructionEPNS1_13CodeGeneratorEPNS1_11InstructionE.exit
  %i.vsb = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.val6961 = load i32, ptr %1, align 8
  %i.vsc = lshr i32 %.val6961, 30
  %i.vsd = add nsw i32 %i.vsc, -1
  %or.cond.i7199 = icmp ult i32 %i.vsd, 2
  br i1 %or.cond.i7199, label %bb.bws, label %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7200

bb.bws:                                           ; preds = %bb.bwr
  %i.vse = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.vsf = load ptr, ptr %i.vse, align 8
  %i.vsg = ptrtoint ptr %i.vsf to i64
  %i.vsh = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.vsi = load ptr, ptr %i.vsh, align 8
  %i.vsj = ptrtoint ptr %i.vsi to i64
  %i.vsk = sub i64 %i.vsg, %i.vsj
  %i.vsl = trunc i64 %i.vsk to i32
  tail call void @_ZN2v88internal8compiler13CodeGenerator26RecordProtectedInstructionEj(ptr noundef nonnull align 8 dereferenceable(1560) %0, i32 noundef %i.vsl) #18
  br label %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7200

_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7200: ; preds = %bb.bwr, %bb.bws
  %i.vsm = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.vsn = load i64, ptr %i.vsm, align 8
  %i.vso = lshr i64 %i.vsn, 32
  %i.vsp = trunc i64 %i.vso to i8                 ; 2 uses
  %i.vsq = icmp samesign ult i8 %i.vsp, 16
  tail call void @llvm.assume(i1 %i.vsq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea)
  store i64 0, ptr %i.ea, align 8
  %i.vsr = call { i64, ptr } @_ZN2v88internal8compiler19X64OperandConverter13MemoryOperandEPm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.ea) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea)
  %i.vss = extractvalue { i64, ptr } %i.vsr, 0
  %i.vst = extractvalue { i64, ptr } %i.vsr, 1
  call void @_ZN2v88internal24SharedMacroAssemblerBase15S128Load16SplatENS0_11XMMRegisterENS0_7OperandES2_(ptr noundef nonnull align 8 dereferenceable(436) %i.vsb, i8 %i.vsp, i64 %i.vss, ptr %i.vst, i8 15) #18
  br label %bb.cld

bb.bwt:                                           ; preds = %_ZN2v88internal8compiler42ShouldClearOutputRegisterBeforeInstructionEPNS1_13CodeGeneratorEPNS1_11InstructionE.exit
  %i.vsu = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.val6960 = load i32, ptr %1, align 8
  %i.vsv = lshr i32 %.val6960, 30
  %i.vsw = add nsw i32 %i.vsv, -1
  %or.cond.i7201 = icmp ult i32 %i.vsw, 2
  br i1 %or.cond.i7201, label %bb.bwu, label %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7202

bb.bwu:                                           ; preds = %bb.bwt
  %i.vsx = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.vsy = load ptr, ptr %i.vsx, align 8
  %i.vsz = ptrtoint ptr %i.vsy to i64
  %i.vta = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.vtb = load ptr, ptr %i.vta, align 8
  %i.vtc = ptrtoint ptr %i.vtb to i64
  %i.vtd = sub i64 %i.vsz, %i.vtc
  %i.vte = trunc i64 %i.vtd to i32
  tail call void @_ZN2v88internal8compiler13CodeGenerator26RecordProtectedInstructionEj(ptr noundef nonnull align 8 dereferenceable(1560) %0, i32 noundef %i.vte) #18
  br label %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7202

_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7202: ; preds = %bb.bwt, %bb.bwu
  %i.vtf = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.vtg = load i64, ptr %i.vtf, align 8
  %i.vth = lshr i64 %i.vtg, 32
  %i.vti = trunc i64 %i.vth to i8                 ; 2 uses
  %i.vtj = icmp samesign ult i8 %i.vti, 16
  tail call void @llvm.assume(i1 %i.vtj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz)
  store i64 0, ptr %i.dz, align 8
  %i.vtk = call { i64, ptr } @_ZN2v88internal8compiler19X64OperandConverter13MemoryOperandEPm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.dz) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz)
  %i.vtl = extractvalue { i64, ptr } %i.vtk, 0
  %i.vtm = extractvalue { i64, ptr } %i.vtk, 1
  call void @_ZN2v88internal24SharedMacroAssemblerBase15S128Load32SplatENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %i.vsu, i8 %i.vti, i64 %i.vtl, ptr %i.vtm) #18
  br label %bb.cld

bb.bwv:                                           ; preds = %_ZN2v88internal8compiler42ShouldClearOutputRegisterBeforeInstructionEPNS1_13CodeGeneratorEPNS1_11InstructionE.exit
  %i.vtn = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.val6959 = load i32, ptr %1, align 8
  %i.vto = lshr i32 %.val6959, 30
  %i.vtp = add nsw i32 %i.vto, -1
  %or.cond.i7203 = icmp ult i32 %i.vtp, 2
  br i1 %or.cond.i7203, label %bb.bww, label %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7204

bb.bww:                                           ; preds = %bb.bwv
  %i.vtq = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.vtr = load ptr, ptr %i.vtq, align 8
  %i.vts = ptrtoint ptr %i.vtr to i64
  %i.vtt = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.vtu = load ptr, ptr %i.vtt, align 8
  %i.vtv = ptrtoint ptr %i.vtu to i64
  %i.vtw = sub i64 %i.vts, %i.vtv
  %i.vtx = trunc i64 %i.vtw to i32
  tail call void @_ZN2v88internal8compiler13CodeGenerator26RecordProtectedInstructionEj(ptr noundef nonnull align 8 dereferenceable(1560) %0, i32 noundef %i.vtx) #18
  br label %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7204

_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7204: ; preds = %bb.bwv, %bb.bww
  %i.vty = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.vtz = load i64, ptr %i.vty, align 8
  %i.vua = lshr i64 %i.vtz, 32
  %i.vub = trunc i64 %i.vua to i8                 ; 2 uses
  %i.vuc = icmp samesign ult i8 %i.vub, 16
  tail call void @llvm.assume(i1 %i.vuc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy)
  store i64 0, ptr %i.dy, align 8
  %i.vud = call { i64, ptr } @_ZN2v88internal8compiler19X64OperandConverter13MemoryOperandEPm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.dy) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy)
  %i.vue = extractvalue { i64, ptr } %i.vud, 0
  %i.vuf = extractvalue { i64, ptr } %i.vud, 1
  call void @_ZN2v88internal24SharedMacroAssemblerBase7MovddupINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_(ptr noundef nonnull align 8 dereferenceable(436) %i.vtn, i8 %i.vub, i64 %i.vue, ptr %i.vuf)
  br label %bb.cld

bb.bwx:                                           ; preds = %_ZN2v88internal8compiler42ShouldClearOutputRegisterBeforeInstructionEPNS1_13CodeGeneratorEPNS1_11InstructionE.exit
  %i.vug = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.val6958 = load i32, ptr %1, align 8
  %i.vuh = lshr i32 %.val6958, 30
  %i.vui = add nsw i32 %i.vuh, -1
  %or.cond.i7205 = icmp ult i32 %i.vui, 2
  br i1 %or.cond.i7205, label %bb.bwy, label %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7206

bb.bwy:                                           ; preds = %bb.bwx
  %i.vuj = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.vuk = load ptr, ptr %i.vuj, align 8
  %i.vul = ptrtoint ptr %i.vuk to i64
  %i.vum = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.vun = load ptr, ptr %i.vum, align 8
  %i.vuo = ptrtoint ptr %i.vun to i64
  %i.vup = sub i64 %i.vul, %i.vuo
  %i.vuq = trunc i64 %i.vup to i32
  tail call void @_ZN2v88internal8compiler13CodeGenerator26RecordProtectedInstructionEj(ptr noundef nonnull align 8 dereferenceable(1560) %0, i32 noundef %i.vuq) #18
  br label %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7206

_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7206: ; preds = %bb.bwx, %bb.bwy
  %i.vur = getelementptr inbounds nuw i8, ptr %1, i64 40
end_hunk_0
begin_hunk_1_@_ZN2v88internal9Assembler7vmovdquENS0_7OperandENS0_11XMMRegisterE
declare void @_ZN2v88internal9Assembler7vmovdquENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(408), i64, ptr, i8) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler8emit_decENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408), i8, i32 noundef) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler8emit_incENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408), i8, i32 noundef) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler8vmovddupENS0_11XMMRegisterES2_(ptr noundef nonnull align 8 dereferenceable(408), i8, i8) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler7movddupENS0_11XMMRegisterES2_(ptr noundef nonnull align 8 dereferenceable(408), i8, i8) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler8vmovddupENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408), i8, i64, ptr) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler7movddupENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408), i8, i64, ptr) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler8insertpsENS0_11XMMRegisterES2_h(ptr noundef nonnull align 8 dereferenceable(408), i8, i8, i8 noundef zeroext) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler8insertpsENS0_11XMMRegisterENS0_7OperandEh(ptr noundef nonnull align 8 dereferenceable(408), i8, i64, ptr, i8 noundef zeroext) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler8cvtdq2pdENS0_11XMMRegisterES2_(ptr noundef nonnull align 8 dereferenceable(408), i8, i8) local_unnamed_addr #4

declare i64 @_ZN2v88internal17ExternalReference50address_of_wasm_f64x2_convert_low_i32x4_u_int_maskEv() local_unnamed_addr #4

declare i64 @_ZN2v88internal17ExternalReference33address_of_wasm_double_2_power_52Ev() local_unnamed_addr #4

declare i64 @_ZN2v88internal17ExternalReference35address_of_wasm_int32_max_as_doubleEv() local_unnamed_addr #4

declare i64 @_ZN2v88internal17ExternalReference36address_of_wasm_uint32_max_as_doubleEv() local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler7roundpdENS0_11XMMRegisterES2_NS0_12RoundingModeE(ptr noundef nonnull align 8 dereferenceable(408), i8, i8, i32 noundef) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler6shufpsENS0_11XMMRegisterES2_h(ptr noundef nonnull align 8 dereferenceable(408), i8, i8, i8 noundef zeroext) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler3vpsEhNS0_11XMMRegisterES2_S2_h(ptr noundef nonnull align 8 dereferenceable(408), i8 noundef zeroext, i8, i8, i8, i8 noundef zeroext) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler7roundpsENS0_11XMMRegisterES2_NS0_12RoundingModeE(ptr noundef nonnull align 8 dereferenceable(408), i8, i8, i32 noundef) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler6pshufdENS0_11XMMRegisterES2_h(ptr noundef nonnull align 8 dereferenceable(408), i8, i8, i8 noundef zeroext) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler11ssse3_instrENS0_11XMMRegisterES2_hhhh(ptr noundef nonnull align 8 dereferenceable(408), i8, i8, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler9vpmovmskbENS0_8RegisterENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(408), i8, i8) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler8pmovmskbENS0_8RegisterENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(408), i8, i8) local_unnamed_addr #4

declare i64 @_ZN2v88internal17ExternalReference39address_of_wasm_int32_overflow_as_floatEv() local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler6movapsENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408), i8, i64, ptr) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler9cvttps2dqENS0_11XMMRegisterES2_(ptr noundef nonnull align 8 dereferenceable(408), i8, i8) local_unnamed_addr #4

declare i64 @_ZN2v88internal17ExternalReference34address_of_wasm_i16x8_splat_0x0001Ev() local_unnamed_addr #4

declare i64 @_ZN2v88internal17ExternalReference32address_of_wasm_i8x16_splat_0x01Ev() local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler7vmovdqaENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408), i8, i64, ptr) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler11ssse3_instrENS0_11XMMRegisterENS0_7OperandEhhhh(ptr noundef nonnull align 8 dereferenceable(408), i8, i64, ptr, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler6pinsrbENS0_11XMMRegisterENS0_7OperandEh(ptr noundef nonnull align 8 dereferenceable(408), i8, i64, ptr, i8 noundef zeroext) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler6pinsrbENS0_11XMMRegisterENS0_8RegisterEh(ptr noundef nonnull align 8 dereferenceable(408), i8, i8, i8 noundef zeroext) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler6pinsrwENS0_11XMMRegisterENS0_7OperandEh(ptr noundef nonnull align 8 dereferenceable(408), i8, i64, ptr, i8 noundef zeroext) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler6pinsrwENS0_11XMMRegisterENS0_8RegisterEh(ptr noundef nonnull align 8 dereferenceable(408), i8, i8, i8 noundef zeroext) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler6pinsrdENS0_11XMMRegisterENS0_7OperandEh(ptr noundef nonnull align 8 dereferenceable(408), i8, i64, ptr, i8 noundef zeroext) local_unnamed_addr #4

declare void @_ZN2v88internal14MacroAssembler14PinsrdPreSse41ENS0_11XMMRegisterENS0_7OperandEhPj(ptr noundef nonnull align 8 dereferenceable(436), i8, i64, ptr, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler6pinsrdENS0_11XMMRegisterENS0_8RegisterEh(ptr noundef nonnull align 8 dereferenceable(408), i8, i8, i8 noundef zeroext) local_unnamed_addr #4

declare void @_ZN2v88internal14MacroAssembler14PinsrdPreSse41ENS0_11XMMRegisterENS0_8RegisterEhPj(ptr noundef nonnull align 8 dereferenceable(436), i8, i8, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

declare i64 @_ZN2v88internal17ExternalReference34address_of_wasm_i8x16_swizzle_maskEv() local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler7vmovdquENS0_11XMMRegisterES2_(ptr noundef nonnull align 8 dereferenceable(408), i8, i8) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler6movupsENS0_11XMMRegisterES2_(ptr noundef nonnull align 8 dereferenceable(408), i8, i8) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler7vmovdqaENS0_11XMMRegisterES2_(ptr noundef nonnull align 8 dereferenceable(408), i8, i8) local_unnamed_addr #4

declare i64 @_ZN2v88internal17ExternalReference32address_of_wasm_i8x16_splat_0x0fEv() local_unnamed_addr #4

declare i64 @_ZN2v88internal17ExternalReference33address_of_wasm_i8x16_popcnt_maskEv() local_unnamed_addr #4

declare i64 @_ZN2v88internal17ExternalReference32address_of_wasm_i8x16_splat_0x55Ev() local_unnamed_addr #4

declare i64 @_ZN2v88internal17ExternalReference32address_of_wasm_i8x16_splat_0x33Ev() local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler10sse4_instrENS0_11XMMRegisterENS0_7OperandEhhhh(ptr noundef nonnull align 8 dereferenceable(408), i8, i64, ptr, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler6pshufdENS0_11XMMRegisterENS0_7OperandEh(ptr noundef nonnull align 8 dereferenceable(408), i8, i64, ptr, i8 noundef zeroext) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler7pshuflwENS0_11XMMRegisterES2_h(ptr noundef nonnull align 8 dereferenceable(408), i8, i8, i8 noundef zeroext) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler7pshuflwENS0_11XMMRegisterENS0_7OperandEh(ptr noundef nonnull align 8 dereferenceable(408), i8, i64, ptr, i8 noundef zeroext) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler7pshufhwENS0_11XMMRegisterES2_h(ptr noundef nonnull align 8 dereferenceable(408), i8, i8, i8 noundef zeroext) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler7pshufhwENS0_11XMMRegisterENS0_7OperandEh(ptr noundef nonnull align 8 dereferenceable(408), i8, i64, ptr, i8 noundef zeroext) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler9emit_xchgENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408), i8, i64, ptr, i32 noundef) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler12emit_cmpxchgENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408), i64, ptr, i8, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN2v88internal8compiler13OutOfLineCodeD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #14

; Function Attrs: inlinehint mustprogress noreturn nounwind uwtable
define internal void @_ZN2v88internal8compiler12_GLOBAL__N_117WasmOutOfLineTrapD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #16 align 2 {
bb.a:
  tail call void @_ZN2v88internal8compiler13OutOfLineCodeD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) #18
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4) #19
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN2v88internal8compiler12_GLOBAL__N_117WasmOutOfLineTrap8GenerateEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #3 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::compiler::X64OperandConverter", align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8
  store <2 x ptr> %i.d, ptr %1, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = lshr i32 %i.f, 8
  %i.h = and i32 %i.g, 65535
  %i.i = zext nneg i32 %i.h to i64
  %i.j = and i32 %i.f, 255
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr [8 x i8], ptr %i.c, i64 %i.k
  %i.m = getelementptr [8 x i8], ptr %i.l, i64 %i.i
  %i.n = getelementptr i8, ptr %i.m, i64 32
  %i.o = call { i64, i64 } @_ZNK2v88internal8compiler27InstructionOperandConverter10ToConstantEPNS1_18InstructionOperandE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.n)
  %i.p = extractvalue { i64, i64 } %i.o, 1
  %i.q = load ptr, ptr %i.a, align 8
  %i.r = load ptr, ptr %i.b, align 8
  call void @_ZN2v88internal8compiler13CodeGenerator22AssembleSourcePositionEPNS1_11InstructionE(ptr noundef nonnull align 8 dereferenceable(1560) %i.q, ptr noundef %i.r) #18
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8
  %sext = shl i64 %i.p, 32
  %i.u = ashr exact i64 %sext, 32
  call void @_ZN2v88internal9Assembler9near_callElNS0_9RelocInfo4ModeE(ptr noundef nonnull align 8 dereferenceable(408) %i.t, i64 noundef %i.u, i8 noundef signext 6) #18
  %i.v = load ptr, ptr %i.a, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8              ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.ac = sub i64 %i.z, %i.ab
  %i.ad = icmp ult i64 %i.ac, 40
  br i1 %i.ad, label %bb.b, label %_ZN2v88internal8compiler12_GLOBAL__N_117WasmOutOfLineTrap18GenerateWithTrapIdENS1_6TrapIdE.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.x, i64 noundef 40) #18
  %.pre.i.i.i.i = load i64, ptr %i.aa, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_117WasmOutOfLineTrap18GenerateWithTrapIdENS1_6TrapIdE.exit

_ZN2v88internal8compiler12_GLOBAL__N_117WasmOutOfLineTrap18GenerateWithTrapIdENS1_6TrapIdE.exit: ; preds = %bb.a, %bb.b
  %i.ae = phi i64 [ %.pre.i.i.i.i, %bb.b ], [ %i.ab, %bb.a ] ; 2 uses
  %i.af = inttoptr i64 %i.ae to ptr               ; 4 uses
  %i.ag = add i64 %i.ae, 40
  store i64 %i.ag, ptr %i.aa, align 8
  store ptr %i.x, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store i32 -1, ptr %i.ai, align 8
  %i.aj = load ptr, ptr %i.a, align 8
  call void @_ZN2v88internal8compiler13CodeGenerator15RecordSafepointEPNS1_12ReferenceMapEi(ptr noundef nonnull align 8 dereferenceable(1560) %i.aj, ptr noundef nonnull %i.af, i32 noundef 0) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret void
}

declare void @_ZN2v88internal8compiler13CodeGenerator22AssembleSourcePositionEPNS1_11InstructionE(ptr noundef nonnull align 8 dereferenceable(1560), ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctpop.i16(i16) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctlz.i16(i16, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v4i64(<4 x i64>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i16> @llvm.ctpop.v2i16(<2 x i16>) #17

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { builtin nounwind }
attributes #21 = { builtin nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{i8 0, i8 2}
!6 = !{}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!10 = !{!11}
!11 = distinct !{!11, !12, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!12 = distinct !{!12, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!13 = !{!14}
!14 = distinct !{!14, !15, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!15 = distinct !{!15, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!16 = !{!17}
!17 = distinct !{!17, !18, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!18 = distinct !{!18, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!19 = !{!20}
!20 = distinct !{!20, !21, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!21 = distinct !{!21, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!22 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!25 = distinct !{!25, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!28 = distinct !{!28, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!29 = !{!30}
!30 = distinct !{!30, !31, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!31 = distinct !{!31, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!32 = !{!33}
!33 = distinct !{!33, !34, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!34 = distinct !{!34, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!37 = distinct !{!37, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!40 = distinct !{!40, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!41 = !{!42}
!42 = distinct !{!42, !43, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!43 = distinct !{!43, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!44 = !{!45}
!45 = distinct !{!45, !46, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!46 = distinct !{!46, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!47 = !{!48}
!48 = distinct !{!48, !49, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!49 = distinct !{!49, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!50 = !{!51}
!51 = distinct !{!51, !52, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!52 = distinct !{!52, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!53 = !{!54}
!54 = distinct !{!54, !55, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!55 = distinct !{!55, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!58 = distinct !{!58, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!61 = distinct !{!61, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!64 = distinct !{!64, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!67 = distinct !{!67, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!68 = !{!69}
!69 = distinct !{!69, !70, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!70 = distinct !{!70, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!73 = distinct !{!73, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!74 = !{!75}
!75 = distinct !{!75, !76, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!76 = distinct !{!76, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!77 = !{!78}
!78 = distinct !{!78, !79, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!79 = distinct !{!79, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!80 = !{!81}
!81 = distinct !{!81, !82, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!82 = distinct !{!82, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!83 = !{!84}
!84 = distinct !{!84, !85, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!85 = distinct !{!85, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!86 = !{!87}
!87 = distinct !{!87, !88, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!88 = distinct !{!88, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!89 = !{!90}
!90 = distinct !{!90, !91, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!91 = distinct !{!91, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!94 = distinct !{!94, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!95 = !{!96}
!96 = distinct !{!96, !97, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!97 = distinct !{!97, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!98 = !{!99}
!99 = distinct !{!99, !100, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!100 = distinct !{!100, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!101 = !{!102}
!102 = distinct !{!102, !103, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!103 = distinct !{!103, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!104 = !{!105}
!105 = distinct !{!105, !106, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!106 = distinct !{!106, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!107 = !{!108}
!108 = distinct !{!108, !109, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!109 = distinct !{!109, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!110 = !{!111}
!111 = distinct !{!111, !112, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!112 = distinct !{!112, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!113 = !{!114}
!114 = distinct !{!114, !115, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!115 = distinct !{!115, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!116 = !{!117}
!117 = distinct !{!117, !118, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!118 = distinct !{!118, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!119 = !{!120}
!120 = distinct !{!120, !121, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!121 = distinct !{!121, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!124 = distinct !{!124, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!125 = !{!126}
!126 = distinct !{!126, !127, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!127 = distinct !{!127, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!128 = !{!129}
!129 = distinct !{!129, !130, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!130 = distinct !{!130, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!131 = !{!132}
!132 = distinct !{!132, !133, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!133 = distinct !{!133, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!134 = !{!135}
!135 = distinct !{!135, !136, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!136 = distinct !{!136, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!137 = !{!138}
!138 = distinct !{!138, !139, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!139 = distinct !{!139, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!140 = !{!141}
!141 = distinct !{!141, !142, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!142 = distinct !{!142, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!143 = !{!144}
!144 = distinct !{!144, !145, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!145 = distinct !{!145, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!146 = !{!147}
!147 = distinct !{!147, !148, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!148 = distinct !{!148, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!149 = !{!150}
!150 = distinct !{!150, !151, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!151 = distinct !{!151, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!152 = !{!153}
!153 = distinct !{!153, !154, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!154 = distinct !{!154, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!155 = !{!156}
!156 = distinct !{!156, !157, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!157 = distinct !{!157, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!158 = !{!159}
!159 = distinct !{!159, !160, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!160 = distinct !{!160, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!161 = !{!162}
!162 = distinct !{!162, !163, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!163 = distinct !{!163, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!164 = !{!165}
!165 = distinct !{!165, !166, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!166 = distinct !{!166, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!167 = !{!168}
!168 = distinct !{!168, !169, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!169 = distinct !{!169, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!170 = !{!171}
!171 = distinct !{!171, !172, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
end_hunk_1
