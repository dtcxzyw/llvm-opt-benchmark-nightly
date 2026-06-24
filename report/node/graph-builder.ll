inline.NumInlined: 29995
inline.NumDeleted: 7796
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder7ProcessEPNS1_4NodeEPNS1_10BasicBlockERKNS_4base11SmallVectorIiLm16ESaIiEEERNS2_7OpIndexEPSt8optionalINS0_13BailoutReasonEEb:bb.a
  br label %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8347

_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8347: ; preds = %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8344, %bb.arr
  %.sroa.0.0.i.i.i8345 = phi i32 [ %.sroa.0.0.copyload.i.i.i8346, %bb.arr ], [ -1, %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8344 ]
  %.sroa.01402.0.copyload = load i16, ptr %i.lvu, align 1
  %i.lws = tail call i8 @_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE(i16 %.sroa.01402.0.copyload)
  %i.lwt = load ptr, ptr %i.b, align 8
  %i.lwu = icmp eq ptr %i.lwt, null
  br i1 %i.lwu, label %.critedge, label %bb.ars, !prof !9

bb.ars:                                           ; preds = %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8347
  %i.lwv = getelementptr inbounds nuw i8, ptr %i.lvu, i64 2
  %i.lww = load i8, ptr %i.lwv, align 1
  %i.lwx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.lwy = tail call i32 @_ZN2v88internal8compiler10turboshaft25ExplicitTruncationReducerINS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE15ReduceOperationILNS2_6OpcodeE78ENS2_21UniformReducerAdapterIS3_SH_E23ReduceStoreContinuationEJNS2_7OpIndexENS2_15OptionalOpIndexESO_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEihbNS0_18IndirectPointerTagEEEESO_DpT1_(ptr noundef nonnull align 8 dereferenceable(816) %i.lwx, i32 %.sroa.0.0.i.i.i8339, i32 %.sroa.0.0.i.i.i8342, i32 %.sroa.0.0.i.i.i8345, i8 17, i8 %i.lws, i8 noundef zeroext %i.lww, i32 noundef 1, i8 noundef zeroext %i.lvw, i1 noundef zeroext false, i64 noundef 0) ; 0 uses
  br label %.critedge

bb.art:                                           ; preds = %bb.b
  %i.lwz = load i32, ptr %i.e, align 4
  %i.lxa = and i32 %i.lwz, 251658240
  %.not.i.i8349 = icmp eq i32 %i.lxa, 251658240
  %i.lxb = ptrtoint ptr %1 to i64
  %i.lxc = add i64 %i.lxb, 32
  %i.lxd = inttoptr i64 %i.lxc to ptr             ; 2 uses
  br i1 %.not.i.i8349, label %bb.aru, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit8357

bb.aru:                                           ; preds = %bb.art
  %i.lxe = load ptr, ptr %i.lxd, align 8
  %i.lxf = ptrtoint ptr %i.lxe to i64
  %i.lxg = add i64 %i.lxf, 16
  %i.lxh = inttoptr i64 %i.lxg to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit8357

_ZNK2v88internal8compiler4Node7InputAtEi.exit8357: ; preds = %bb.art, %bb.aru
  %.pn = phi ptr [ %i.lxh, %bb.aru ], [ %i.lxd, %bb.art ] ; 3 uses
  %i.lxi = load ptr, ptr %.pn, align 8
  %.in14843 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %i.lxj = load ptr, ptr %.in14843, align 8
  %i.lxk = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  %i.lxl = load ptr, ptr %i.lxk, align 8
  %i.lxm = tail call noundef nonnull align 8 dereferenceable(19) ptr @_ZN2v88internal8compiler15ElementAccessOfEPKNS1_8OperatorE(ptr noundef nonnull %i.k) #23 ; 4 uses
  %i.lxn = load i8, ptr %i.lxm, align 8
  %i.lxo = icmp eq i8 %i.lxn, 1
  %spec.select.i8358 = select i1 %i.lxo, i8 17, i8 16
  call void @llvm.lifetime.start.p0(ptr nonnull %150) #23
  %i.lxp = getelementptr inbounds nuw i8, ptr %i.lxm, i64 16
  %.sroa.01393.0.copyload = load i16, ptr %i.lxp, align 8
  %i.lxq = tail call i8 @_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE(i16 %.sroa.01393.0.copyload) ; 2 uses
  store i8 %i.lxq, ptr %150, align 1
  %i.lxr = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.lxs = load i8, ptr %i.lxr, align 8, !range !5, !noundef !6
  %i.lxt = trunc nuw i8 %i.lxs to i1
  %i.lxu = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %.val4341 = load ptr, ptr %i.lxu, align 8       ; 4 uses
  %i.lxv = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %.val4342 = load ptr, ptr %i.lxv, align 8
  %i.lxw = getelementptr i8, ptr %i.lxi, i64 20
  %.val4343 = load i32, ptr %i.lxw, align 4
  %i.lxx = and i32 %.val4343, 16777215
  %i.lxy = zext nneg i32 %i.lxx to i64            ; 2 uses
  %i.lxz = ptrtoint ptr %.val4342 to i64
  %i.lya = ptrtoint ptr %.val4341 to i64
  %i.lyb = sub i64 %i.lxz, %i.lya
  %i.lyc = ashr exact i64 %i.lyb, 2               ; 3 uses
  %i.lyd = icmp ugt i64 %i.lyc, %i.lxy
  br i1 %i.lyd, label %bb.arv, label %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8361

bb.arv:                                           ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit8357
  %i.lye = getelementptr inbounds nuw [4 x i8], ptr %.val4341, i64 %i.lxy
  %.sroa.0.0.copyload.i.i.i8360 = load i32, ptr %i.lye, align 4
  br label %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8361

_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8361: ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit8357, %bb.arv
  %.sroa.0.0.i.i.i8359 = phi i32 [ %.sroa.0.0.copyload.i.i.i8360, %bb.arv ], [ -1, %_ZNK2v88internal8compiler4Node7InputAtEi.exit8357 ]
  %i.lyf = getelementptr i8, ptr %i.lxj, i64 20
  %.val4340 = load i32, ptr %i.lyf, align 4
  %i.lyg = and i32 %.val4340, 16777215
  %i.lyh = zext nneg i32 %i.lyg to i64            ; 2 uses
  %i.lyi = icmp ugt i64 %i.lyc, %i.lyh
  br i1 %i.lyi, label %bb.arw, label %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8364

bb.arw:                                           ; preds = %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8361
  %i.lyj = getelementptr inbounds nuw [4 x i8], ptr %.val4341, i64 %i.lyh
  %.sroa.0.0.copyload.i.i.i8363 = load i32, ptr %i.lyj, align 4
  br label %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8364

_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8364: ; preds = %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8361, %bb.arw
  %.sroa.0.0.i.i.i8362 = phi i32 [ %.sroa.0.0.copyload.i.i.i8363, %bb.arw ], [ -1, %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8361 ]
  %i.lyk = getelementptr i8, ptr %i.lxl, i64 20
  %.val4337 = load i32, ptr %i.lyk, align 4
  %i.lyl = and i32 %.val4337, 16777215
  %i.lym = zext nneg i32 %i.lyl to i64            ; 2 uses
  %i.lyn = icmp ugt i64 %i.lyc, %i.lym
  br i1 %i.lyn, label %bb.arx, label %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8367

bb.arx:                                           ; preds = %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8364
  %i.lyo = getelementptr inbounds nuw [4 x i8], ptr %.val4341, i64 %i.lym
  %.sroa.0.0.copyload.i.i.i8366 = load i32, ptr %i.lyo, align 4
  br label %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8367

_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8367: ; preds = %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8364, %bb.arx
  %.sroa.0.0.i.i.i8365 = phi i32 [ %.sroa.0.0.copyload.i.i.i8366, %bb.arx ], [ -1, %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8364 ]
  %i.lyp = getelementptr inbounds nuw i8, ptr %i.lxm, i64 18
  %i.lyq = load i8, ptr %i.lyp, align 2
  %i.lyr = getelementptr inbounds nuw i8, ptr %i.lxm, i64 4
  %i.lys = load i32, ptr %i.lyr, align 4
  %i.lyt = call noundef zeroext i8 @_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation15SizeInBytesLog2Ev(ptr noundef nonnull align 1 dereferenceable(1) %150)
  %i.lyu = load ptr, ptr %i.b, align 8
  %i.lyv = icmp eq ptr %i.lyu, null
  br i1 %i.lyv, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexENS2_15OptionalOpIndexESE_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEihbNS0_18IndirectPointerTagE.exit8368, label %bb.ary, !prof !9

bb.ary:                                           ; preds = %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8367
  %i.lyw = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.lyx = call i32 @_ZN2v88internal8compiler10turboshaft25ExplicitTruncationReducerINS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE15ReduceOperationILNS2_6OpcodeE78ENS2_21UniformReducerAdapterIS3_SH_E23ReduceStoreContinuationEJNS2_7OpIndexENS2_15OptionalOpIndexESO_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEihbNS0_18IndirectPointerTagEEEESO_DpT1_(ptr noundef nonnull align 8 dereferenceable(816) %i.lyw, i32 %.sroa.0.0.i.i.i8359, i32 %.sroa.0.0.i.i.i8362, i32 %.sroa.0.0.i.i.i8365, i8 %spec.select.i8358, i8 %i.lxq, i8 noundef zeroext %i.lyq, i32 noundef %i.lys, i8 noundef zeroext %i.lyt, i1 noundef zeroext %i.lxt, i64 noundef 0) ; 0 uses
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexENS2_15OptionalOpIndexESE_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEihbNS0_18IndirectPointerTagE.exit8368

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexENS2_15OptionalOpIndexESE_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEihbNS0_18IndirectPointerTagE.exit8368: ; preds = %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8367, %bb.ary
  call void @llvm.lifetime.end.p0(ptr nonnull %150) #23
  br label %.critedge

bb.arz:                                           ; preds = %bb.b
  %i.lyy = load i32, ptr %i.e, align 4
  %i.lyz = and i32 %i.lyy, 251658240
  %.not.i.i8369 = icmp eq i32 %i.lyz, 251658240   ; 2 uses
  %i.lza = ptrtoint ptr %1 to i64
  %i.lzb = add i64 %i.lza, 32
  %i.lzc = inttoptr i64 %i.lzb to ptr             ; 4 uses
  br i1 %.not.i.i8369, label %bb.asa, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit8371

bb.asa:                                           ; preds = %bb.arz
  %i.lzd = load ptr, ptr %i.lzc, align 8
  %i.lze = ptrtoint ptr %i.lzd to i64
  %i.lzf = add i64 %i.lze, 16
  %i.lzg = inttoptr i64 %i.lzf to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit8371

_ZNK2v88internal8compiler4Node7InputAtEi.exit8371: ; preds = %bb.arz, %bb.asa
  %.sink.i.i8370 = phi ptr [ %i.lzg, %bb.asa ], [ %i.lzc, %bb.arz ]
  %i.lzh = load ptr, ptr %.sink.i.i8370, align 8
  %i.lzi = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %.val4332 = load ptr, ptr %i.lzi, align 8       ; 3 uses
  %i.lzj = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %.val4333 = load ptr, ptr %i.lzj, align 8
  %i.lzk = getelementptr i8, ptr %i.lzh, i64 20
  %.val4334 = load i32, ptr %i.lzk, align 4
  %i.lzl = and i32 %.val4334, 16777215
  %i.lzm = zext nneg i32 %i.lzl to i64            ; 2 uses
  %i.lzn = ptrtoint ptr %.val4333 to i64
  %i.lzo = ptrtoint ptr %.val4332 to i64
  %i.lzp = sub i64 %i.lzn, %i.lzo
  %i.lzq = ashr exact i64 %i.lzp, 2               ; 2 uses
  %i.lzr = icmp ugt i64 %i.lzq, %i.lzm
  br i1 %i.lzr, label %bb.asb, label %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8374

bb.asb:                                           ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit8371
  %i.lzs = getelementptr inbounds nuw [4 x i8], ptr %.val4332, i64 %i.lzm
  %.sroa.0.0.copyload.i.i.i8373 = load i32, ptr %i.lzs, align 4
  br label %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8374

_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8374: ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit8371, %bb.asb
  %.sroa.0.0.i.i.i8372 = phi i32 [ %.sroa.0.0.copyload.i.i.i8373, %bb.asb ], [ -1, %_ZNK2v88internal8compiler4Node7InputAtEi.exit8371 ]
  br i1 %.not.i.i8369, label %bb.asc, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit8377

bb.asc:                                           ; preds = %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8374
  %i.lzt = load ptr, ptr %i.lzc, align 8
  %i.lzu = ptrtoint ptr %i.lzt to i64
  %i.lzv = add i64 %i.lzu, 16
  %i.lzw = inttoptr i64 %i.lzv to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit8377

_ZNK2v88internal8compiler4Node7InputAtEi.exit8377: ; preds = %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8374, %bb.asc
  %.sink.i.i8376 = phi ptr [ %i.lzw, %bb.asc ], [ %i.lzc, %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8374 ]
  %i.lzx = getelementptr inbounds nuw i8, ptr %.sink.i.i8376, i64 8
  %i.lzy = load ptr, ptr %i.lzx, align 8
  %i.lzz = getelementptr i8, ptr %i.lzy, i64 20
  %.val4331 = load i32, ptr %i.lzz, align 4
  %i.maa = and i32 %.val4331, 16777215
  %i.mab = zext nneg i32 %i.maa to i64            ; 2 uses
  %i.mac = icmp ugt i64 %i.lzq, %i.mab
  br i1 %i.mac, label %bb.asd, label %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8380

bb.asd:                                           ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit8377
  %i.mad = getelementptr inbounds nuw [4 x i8], ptr %.val4332, i64 %i.mab
  %.sroa.0.0.copyload.i.i.i8379 = load i32, ptr %i.mad, align 4
  br label %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8380

_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8380: ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit8377, %bb.asd
  %.sroa.0.0.i.i.i8378 = phi i32 [ %.sroa.0.0.copyload.i.i.i8379, %bb.asd ], [ -1, %_ZNK2v88internal8compiler4Node7InputAtEi.exit8377 ] ; 4 uses
  %i.mae = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZN2v88internal8compiler13FieldAccessOfEPKNS1_8OperatorE(ptr noundef nonnull %i.k) #23 ; 6 uses
  %i.maf = load i8, ptr %i.mae, align 8
  %i.mag = icmp eq i8 %i.maf, 1
  %spec.select.i8381 = select i1 %i.mag, i8 17, i8 16
  %i.mah = getelementptr inbounds nuw i8, ptr %i.mae, i64 32
  %i.mai = load i16, ptr %i.mah, align 8          ; 2 uses
  %i.maj = and i16 %i.mai, 255
  %i.mak = icmp eq i16 %i.maj, 6
  %i.mal = getelementptr inbounds nuw i8, ptr %i.mae, i64 60
  %i.mam = load i8, ptr %i.mal, align 4, !range !5, !noundef !6
  %i.man = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.mao = load i8, ptr %i.man, align 8, !range !5, !noundef !6
  %.sroa.012926.0.insert.insert = select i1 %i.mak, i16 2568, i16 %i.mai
  %i.map = tail call i8 @_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE(i16 %.sroa.012926.0.insert.insert) ; 2 uses
  %i.maq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.mar = load ptr, ptr %i.maq, align 8, !nonnull !6, !align !7
  %i.mas = getelementptr inbounds nuw i8, ptr %i.mar, i64 8
  %i.mat = load ptr, ptr %i.mas, align 8
  %i.mau = ptrtoint ptr %i.mat to i64
  %i.mav = zext i32 %.sroa.0.0.i.i.i8378 to i64
  %i.maw = add i64 %i.mau, %i.mav
  %i.max = inttoptr i64 %i.maw to ptr             ; 3 uses
  %.0.copyload.i.i.i = load i64, ptr %i.max, align 4
  %i.may = and i64 %.0.copyload.i.i.i, 1095216660735
  %.not14842 = icmp eq i64 %i.may, 4294967371
  br i1 %.not14842, label %bb.ase, label %bb.asg

bb.ase:                                           ; preds = %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8380
  switch i8 %i.map, label %bb.asg [
    i8 11, label %_ZN2v88internal8compiler10turboshafteqINS2_20MemoryRepresentation4EnumEJS5_S5_EEEbRKT_NS2_6any_ofIJDpT0_EEE.exit.thread
    i8 13, label %_ZN2v88internal8compiler10turboshafteqINS2_20MemoryRepresentation4EnumEJS5_S5_EEEbRKT_NS2_6any_ofIJDpT0_EEE.exit.thread
  ]

_ZN2v88internal8compiler10turboshafteqINS2_20MemoryRepresentation4EnumEJS5_S5_EEEbRKT_NS2_6any_ofIJDpT0_EEE.exit.thread: ; preds = %bb.ase, %bb.ase
  %i.maz = tail call noundef i64 @_ZNK2v88internal8compiler10turboshaft10ConstantOp15signed_integralEv(ptr noundef nonnull align 8 dereferenceable(16) %i.max)
  %i.mba = and i64 %i.maz, 4294967295
  %.0.i = icmp eq i64 %i.mba, 0
  br i1 %.0.i, label %bb.asf, label %bb.asg

bb.asf:                                           ; preds = %_ZN2v88internal8compiler10turboshafteqINS2_20MemoryRepresentation4EnumEJS5_S5_EEEbRKT_NS2_6any_ofIJDpT0_EEE.exit.thread
  %i.mbb = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.mbc = tail call noundef i64 @_ZNK2v88internal8compiler10turboshaft10ConstantOp15signed_integralEv(ptr noundef nonnull align 8 dereferenceable(16) %i.max)
  %i.mbd = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE(ptr noundef nonnull align 8 dereferenceable(136) %i.mbb, i64 %i.mbc)
  br label %bb.asg

bb.asg:                                           ; preds = %bb.ase, %bb.asf, %_ZN2v88internal8compiler10turboshafteqINS2_20MemoryRepresentation4EnumEJS5_S5_EEEbRKT_NS2_6any_ofIJDpT0_EEE.exit.thread, %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8380
  %.sroa.01384.0 = phi i32 [ %i.mbd, %bb.asf ], [ %.sroa.0.0.i.i.i8378, %_ZN2v88internal8compiler10turboshafteqINS2_20MemoryRepresentation4EnumEJS5_S5_EEEbRKT_NS2_6any_ofIJDpT0_EEE.exit.thread ], [ %.sroa.0.0.i.i.i8378, %bb.ase ], [ %.sroa.0.0.i.i.i8378, %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8380 ]
  %i.mbe = load ptr, ptr %i.b, align 8
  %i.mbf = icmp eq ptr %i.mbe, null
  br i1 %i.mbf, label %.critedge, label %bb.ash, !prof !9

bb.ash:                                           ; preds = %bb.asg
  %i.mbg = getelementptr inbounds nuw i8, ptr %i.mae, i64 64
  %i.mbh = load i64, ptr %i.mbg, align 8
  %209 = and i8 %i.mao, %i.mam
  %210 = icmp ne i8 %209, 0
  %i.mbi = getelementptr inbounds nuw i8, ptr %i.mae, i64 4
  %i.mbj = load i32, ptr %i.mbi, align 4
  %i.mbk = getelementptr inbounds nuw i8, ptr %i.mae, i64 34
  %i.mbl = load i8, ptr %i.mbk, align 2
  %i.mbm = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.mbn = tail call i32 @_ZN2v88internal8compiler10turboshaft25ExplicitTruncationReducerINS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE15ReduceOperationILNS2_6OpcodeE78ENS2_21UniformReducerAdapterIS3_SH_E23ReduceStoreContinuationEJNS2_7OpIndexENS2_15OptionalOpIndexESO_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEihbNS0_18IndirectPointerTagEEEESO_DpT1_(ptr noundef nonnull align 8 dereferenceable(816) %i.mbm, i32 %.sroa.0.0.i.i.i8372, i32 -1, i32 %.sroa.01384.0, i8 %spec.select.i8381, i8 %i.map, i8 noundef zeroext %i.mbl, i32 noundef %i.mbj, i8 noundef zeroext 0, i1 noundef zeroext %210, i64 noundef %i.mbh) ; 0 uses
  br label %.critedge

bb.asi:                                           ; preds = %bb.b, %bb.b
  %i.mbo = load i32, ptr %i.e, align 4
  %i.mbp = and i32 %i.mbo, 251658240
  %.not.i.i8384 = icmp eq i32 %i.mbp, 251658240
  %i.mbq = ptrtoint ptr %1 to i64
  %i.mbr = add i64 %i.mbq, 32
  %i.mbs = inttoptr i64 %i.mbr to ptr             ; 2 uses
  br i1 %.not.i.i8384, label %bb.asj, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit8389

bb.asj:                                           ; preds = %bb.asi
  %i.mbt = load ptr, ptr %i.mbs, align 8
  %i.mbu = ptrtoint ptr %i.mbt to i64
  %i.mbv = add i64 %i.mbu, 16
  %i.mbw = inttoptr i64 %i.mbv to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit8389

_ZNK2v88internal8compiler4Node7InputAtEi.exit8389: ; preds = %bb.asi, %bb.asj
  %.in14838 = phi ptr [ %i.mbw, %bb.asj ], [ %i.mbs, %bb.asi ] ; 2 uses
  %i.mbx = load ptr, ptr %.in14838, align 8
  %i.mby = getelementptr inbounds nuw i8, ptr %.in14838, i64 8
  %i.mbz = load ptr, ptr %i.mby, align 8
  %i.mca = tail call noundef nonnull align 1 dereferenceable(3) ptr @_ZN2v88internal8compiler14ObjectAccessOfEPKNS1_8OperatorE(ptr noundef nonnull %i.k) #23
  %.sroa.01360.0.copyload = load i16, ptr %i.mca, align 1
  %i.mcb = tail call i8 @_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE(i16 %.sroa.01360.0.copyload)
  %i.mcc = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.mcd = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %.val4326 = load ptr, ptr %i.mcd, align 8       ; 3 uses
  %i.mce = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %.val4327 = load ptr, ptr %i.mce, align 8
  %i.mcf = getelementptr i8, ptr %i.mbx, i64 20
  %.val4328 = load i32, ptr %i.mcf, align 4
  %i.mcg = and i32 %.val4328, 16777215
  %i.mch = zext nneg i32 %i.mcg to i64            ; 2 uses
  %i.mci = ptrtoint ptr %.val4327 to i64
  %i.mcj = ptrtoint ptr %.val4326 to i64
  %i.mck = sub i64 %i.mci, %i.mcj
  %i.mcl = ashr exact i64 %i.mck, 2               ; 2 uses
  %i.mcm = icmp ugt i64 %i.mcl, %i.mch
  br i1 %i.mcm, label %bb.ask, label %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8392

bb.ask:                                           ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit8389
  %i.mcn = getelementptr inbounds nuw [4 x i8], ptr %.val4326, i64 %i.mch
  %.sroa.0.0.copyload.i.i.i8391 = load i32, ptr %i.mcn, align 4
  br label %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8392

_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8392: ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit8389, %bb.ask
  %.sroa.0.0.i.i.i8390 = phi i32 [ %.sroa.0.0.copyload.i.i.i8391, %bb.ask ], [ -1, %_ZNK2v88internal8compiler4Node7InputAtEi.exit8389 ]
  %i.mco = getelementptr i8, ptr %i.mbz, i64 20
  %.val4325 = load i32, ptr %i.mco, align 4
  %i.mcp = and i32 %.val4325, 16777215
  %i.mcq = zext nneg i32 %i.mcp to i64            ; 2 uses
  %i.mcr = icmp ugt i64 %i.mcl, %i.mcq
  br i1 %i.mcr, label %bb.asl, label %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8395

bb.asl:                                           ; preds = %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8392
  %i.mcs = getelementptr inbounds nuw [4 x i8], ptr %.val4326, i64 %i.mcq
  %.sroa.0.0.copyload.i.i.i8394 = load i32, ptr %i.mcs, align 4
  br label %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8395

_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8395: ; preds = %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8392, %bb.asl
  %.sroa.0.0.i.i.i8393 = phi i32 [ %.sroa.0.0.copyload.i.i.i8394, %bb.asl ], [ -1, %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8392 ]
  %i.mct = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_15OptionalOpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEih(ptr noundef nonnull align 8 dereferenceable(136) %i.mcc, i32 %.sroa.0.0.i.i.i8390, i32 %.sroa.0.0.i.i.i8393, i8 17, i8 %i.mcb, i32 noundef 1, i8 noundef zeroext 0)
  br label %.critedge

bb.asm:                                           ; preds = %bb.b
  %i.mcu = load i32, ptr %i.e, align 4
  %i.mcv = and i32 %i.mcu, 251658240
  %.not.i.i8396 = icmp eq i32 %i.mcv, 251658240
  %i.mcw = ptrtoint ptr %1 to i64
  %i.mcx = add i64 %i.mcw, 32
  %i.mcy = inttoptr i64 %i.mcx to ptr             ; 2 uses
  br i1 %.not.i.i8396, label %bb.asn, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit8398

bb.asn:                                           ; preds = %bb.asm
  %i.mcz = load ptr, ptr %i.mcy, align 8
  %i.mda = ptrtoint ptr %i.mcz to i64
  %i.mdb = add i64 %i.mda, 16
  %i.mdc = inttoptr i64 %i.mdb to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit8398

_ZNK2v88internal8compiler4Node7InputAtEi.exit8398: ; preds = %bb.asm, %bb.asn
  %.sink.i.i8397 = phi ptr [ %i.mdc, %bb.asn ], [ %i.mcy, %bb.asm ]
  %i.mdd = load ptr, ptr %.sink.i.i8397, align 8
  %i.mde = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZN2v88internal8compiler13FieldAccessOfEPKNS1_8OperatorE(ptr noundef nonnull %i.k) #23 ; 3 uses
  %i.mdf = load i8, ptr %i.mde, align 8
  %i.mdg = icmp eq i8 %i.mdf, 1
  %spec.select.i8399 = select i1 %i.mdg, i8 17, i8 16
  %i.mdh = getelementptr inbounds nuw i8, ptr %i.mde, i64 32
  %i.mdi = load i16, ptr %i.mdh, align 8          ; 2 uses
  %i.mdj = and i16 %i.mdi, 255
  %i.mdk = icmp eq i16 %i.mdj, 6
  %.sroa.012919.0.insert.insert = select i1 %i.mdk, i16 2568, i16 %i.mdi
  %i.mdl = tail call i8 @_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE(i16 %.sroa.012919.0.insert.insert)
  %i.mdm = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.mdn = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %.val4320 = load ptr, ptr %i.mdn, align 8       ; 2 uses
  %i.mdo = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %.val4321 = load ptr, ptr %i.mdo, align 8
  %i.mdp = getelementptr i8, ptr %i.mdd, i64 20
  %.val4322 = load i32, ptr %i.mdp, align 4
  %i.mdq = and i32 %.val4322, 16777215
  %i.mdr = zext nneg i32 %i.mdq to i64            ; 2 uses
  %i.mds = ptrtoint ptr %.val4321 to i64
  %i.mdt = ptrtoint ptr %.val4320 to i64
  %i.mdu = sub i64 %i.mds, %i.mdt
  %i.mdv = ashr exact i64 %i.mdu, 2
  %i.mdw = icmp ugt i64 %i.mdv, %i.mdr
  br i1 %i.mdw, label %bb.aso, label %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8402

bb.aso:                                           ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit8398
  %i.mdx = getelementptr inbounds nuw [4 x i8], ptr %.val4320, i64 %i.mdr
  %.sroa.0.0.copyload.i.i.i8401 = load i32, ptr %i.mdx, align 4
  br label %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8402

_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8402: ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit8398, %bb.aso
  %.sroa.0.0.i.i.i8400 = phi i32 [ %.sroa.0.0.copyload.i.i.i8401, %bb.aso ], [ -1, %_ZNK2v88internal8compiler4Node7InputAtEi.exit8398 ]
  %i.mdy = getelementptr inbounds nuw i8, ptr %i.mde, i64 4
  %i.mdz = load i32, ptr %i.mdy, align 4
  %i.mea = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi(ptr noundef nonnull align 8 dereferenceable(136) %i.mdm, i32 %.sroa.0.0.i.i.i8400, i8 %spec.select.i8399, i8 %i.mdl, i32 noundef %i.mdz)
  br label %.critedge

bb.asp:                                           ; preds = %bb.b
  %i.meb = load i32, ptr %i.e, align 4
  %i.mec = and i32 %i.meb, 251658240
  %.not.i.i8403 = icmp eq i32 %i.mec, 251658240
  %i.med = ptrtoint ptr %1 to i64
  %i.mee = add i64 %i.med, 32
  %i.mef = inttoptr i64 %i.mee to ptr             ; 2 uses
  br i1 %.not.i.i8403, label %bb.asq, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit8408

bb.asq:                                           ; preds = %bb.asp
  %i.meg = load ptr, ptr %i.mef, align 8
  %i.meh = ptrtoint ptr %i.meg to i64
  %i.mei = add i64 %i.meh, 16
  %i.mej = inttoptr i64 %i.mei to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit8408

_ZNK2v88internal8compiler4Node7InputAtEi.exit8408: ; preds = %bb.asp, %bb.asq
  %.in14836 = phi ptr [ %i.mej, %bb.asq ], [ %i.mef, %bb.asp ] ; 2 uses
  %i.mek = load ptr, ptr %.in14836, align 8
  %i.mel = getelementptr inbounds nuw i8, ptr %.in14836, i64 8
  %i.mem = load ptr, ptr %i.mel, align 8
  %i.men = tail call noundef nonnull align 8 dereferenceable(19) ptr @_ZN2v88internal8compiler15ElementAccessOfEPKNS1_8OperatorE(ptr noundef nonnull %i.k) #23 ; 3 uses
  %i.meo = load i8, ptr %i.men, align 8
  %i.mep = icmp eq i8 %i.meo, 1
  %spec.select.i8409 = select i1 %i.mep, i8 17, i8 16
  call void @llvm.lifetime.start.p0(ptr nonnull %151) #23
  %i.meq = getelementptr inbounds nuw i8, ptr %i.men, i64 16
  %.sroa.01338.0.copyload = load i16, ptr %i.meq, align 8
  %i.mer = tail call i8 @_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE(i16 %.sroa.01338.0.copyload) ; 2 uses
  store i8 %i.mer, ptr %151, align 1
  %i.mes = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.met = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %.val4317 = load ptr, ptr %i.met, align 8       ; 3 uses
  %i.meu = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %.val4318 = load ptr, ptr %i.meu, align 8
  %i.mev = getelementptr i8, ptr %i.mek, i64 20
  %.val4319 = load i32, ptr %i.mev, align 4
  %i.mew = and i32 %.val4319, 16777215
  %i.mex = zext nneg i32 %i.mew to i64            ; 2 uses
  %i.mey = ptrtoint ptr %.val4318 to i64
  %i.mez = ptrtoint ptr %.val4317 to i64
  %i.mfa = sub i64 %i.mey, %i.mez
  %i.mfb = ashr exact i64 %i.mfa, 2               ; 2 uses
  %i.mfc = icmp ugt i64 %i.mfb, %i.mex
  br i1 %i.mfc, label %bb.asr, label %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8412

bb.asr:                                           ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit8408
  %i.mfd = getelementptr inbounds nuw [4 x i8], ptr %.val4317, i64 %i.mex
  %.sroa.0.0.copyload.i.i.i8411 = load i32, ptr %i.mfd, align 4
  br label %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8412

_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8412: ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit8408, %bb.asr
  %.sroa.0.0.i.i.i8410 = phi i32 [ %.sroa.0.0.copyload.i.i.i8411, %bb.asr ], [ -1, %_ZNK2v88internal8compiler4Node7InputAtEi.exit8408 ]
  %i.mfe = getelementptr i8, ptr %i.mem, i64 20
  %.val4316 = load i32, ptr %i.mfe, align 4
  %i.mff = and i32 %.val4316, 16777215
  %i.mfg = zext nneg i32 %i.mff to i64            ; 2 uses
  %i.mfh = icmp ugt i64 %i.mfb, %i.mfg
  br i1 %i.mfh, label %bb.ass, label %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8415

bb.ass:                                           ; preds = %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8412
  %i.mfi = getelementptr inbounds nuw [4 x i8], ptr %.val4317, i64 %i.mfg
  %.sroa.0.0.copyload.i.i.i8414 = load i32, ptr %i.mfi, align 4
  br label %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8415

_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8415: ; preds = %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8412, %bb.ass
  %.sroa.0.0.i.i.i8413 = phi i32 [ %.sroa.0.0.copyload.i.i.i8414, %bb.ass ], [ -1, %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8412 ]
  %i.mfj = getelementptr inbounds nuw i8, ptr %i.men, i64 4
  %i.mfk = load i32, ptr %i.mfj, align 4
  %i.mfl = call noundef zeroext i8 @_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation15SizeInBytesLog2Ev(ptr noundef nonnull align 1 dereferenceable(1) %151)
  %i.mfm = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_15OptionalOpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEih(ptr noundef nonnull align 8 dereferenceable(136) %i.mes, i32 %.sroa.0.0.i.i.i8410, i32 %.sroa.0.0.i.i.i8413, i8 %spec.select.i8409, i8 %i.mer, i32 noundef %i.mfk, i8 noundef zeroext %i.mfl)
  call void @llvm.lifetime.end.p0(ptr nonnull %151) #23
  br label %.critedge

bb.ast:                                           ; preds = %bb.b
  %i.mfn = load i32, ptr %i.e, align 4
  %i.mfo = and i32 %i.mfn, 251658240
end_hunk_0
