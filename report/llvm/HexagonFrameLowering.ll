Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonFrameLowering?download=true
inline.NumInlined: 5341
inline.NumDeleted: 2406
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZNK4llvm20HexagonFrameLowering12emitPrologueERNS_15MachineFunctionERNS_17MachineBasicBlockE:bb.a
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !812
  %i.jv = load ptr, ptr %i.js, align 8, !tbaa !367
  %i.jw = ptrtoint ptr %i.ju to i64
  %i.jx = ptrtoint ptr %i.jv to i64
  %i.jy = sub i64 %i.jw, %i.jx
  %i.jz = lshr exact i64 %i.jy, 3
  %i.ka = trunc i64 %i.jz to i32                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  %i.kb = add i32 %i.ka, 1                        ; 7 uses
  %i.kc = add i32 %i.ka, 64                       ; 2 uses
  %i.kd = lshr i32 %i.kc, 6                       ; 7 uses
  %i.ke = zext nneg i32 %i.kd to i64              ; 5 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  store ptr %i.kf, ptr %13, align 8, !tbaa !46
  %i.kg = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %13, i64 12
  store i32 6, ptr %i.kh, align 4, !tbaa !204
  %i.ki = icmp ugt i32 %i.kc, 447
  br i1 %i.ki, label %_ZN4llvm9BitVectorC2Ejb.exit83.loopexit, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i

_ZN4llvm9BitVectorC2Ejb.exit83.loopexit:          ; preds = %bb.x
  store i32 0, ptr %i.kg, align 8, !tbaa !203
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %13, ptr noundef nonnull %i.kf, i64 noundef %i.ke, i64 noundef 8) #27
  %i.kj = load ptr, ptr %13, align 8, !tbaa !46
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ke, 3 ; 3 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.kj, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !52
  store i32 %i.kd, ptr %i.kg, align 8, !tbaa !203
  %i.kk = getelementptr inbounds nuw i8, ptr %13, i64 64
  store i32 %i.kb, ptr %i.kk, align 8, !tbaa !275
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  %i.kl = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  store ptr %i.kl, ptr %14, align 8, !tbaa !46
  %i.km = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %14, i64 12
  store i32 6, ptr %i.kn, align 4, !tbaa !204
  store i32 0, ptr %i.km, align 8, !tbaa !203
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %14, ptr noundef nonnull %i.kl, i64 noundef %i.ke, i64 noundef 8) #27
  %i.ko = load ptr, ptr %14, align 8, !tbaa !46
  call void @llvm.memset.p0.i64(ptr align 8 %i.ko, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !52
  store i32 %i.kd, ptr %i.km, align 8, !tbaa !203
  %i.kp = getelementptr inbounds nuw i8, ptr %14, i64 64
  store i32 %i.kb, ptr %i.kp, align 8, !tbaa !275
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  %i.kq = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  store ptr %i.kq, ptr %15, align 8, !tbaa !46
  %i.kr = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %15, i64 12
  store i32 6, ptr %i.ks, align 4, !tbaa !204
  store i32 0, ptr %i.kr, align 8, !tbaa !203
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %15, ptr noundef nonnull %i.kq, i64 noundef %i.ke, i64 noundef 8) #27
  %i.kt = load ptr, ptr %15, align 8, !tbaa !46
  call void @llvm.memset.p0.i64(ptr align 8 %i.kt, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !52
  br label %_ZN4llvm9BitVectorC2Ejb.exit83

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i:        ; preds = %bb.x
  %.not.i.i = icmp eq i32 %i.kd, 0
  br i1 %.not.i.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i73.thread, label %_ZN4llvm9BitVectorC2Ejb.exit83.loopexit158

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i73.thread: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i
  store i32 0, ptr %i.kg, align 8, !tbaa !203
  %i.ku = getelementptr inbounds nuw i8, ptr %13, i64 64
  store i32 %i.kb, ptr %i.ku, align 8, !tbaa !275
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  %i.kv = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  store ptr %i.kv, ptr %14, align 8, !tbaa !46
  %i.kw = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.kx = getelementptr inbounds nuw i8, ptr %14, i64 12
  store i32 6, ptr %i.kx, align 4, !tbaa !204
  store i32 0, ptr %i.kw, align 8, !tbaa !203
  %i.ky = getelementptr inbounds nuw i8, ptr %14, i64 64
  store i32 %i.kb, ptr %i.ky, align 8, !tbaa !275
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  %i.kz = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  store ptr %i.kz, ptr %15, align 8, !tbaa !46
  %i.la = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.lb = getelementptr inbounds nuw i8, ptr %15, i64 12
  store i32 6, ptr %i.lb, align 4, !tbaa !204
  br label %_ZN4llvm9BitVectorC2Ejb.exit83

_ZN4llvm9BitVectorC2Ejb.exit83.loopexit158:       ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ke, 3  ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.kf, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !52
  store i32 %i.kd, ptr %i.kg, align 8, !tbaa !203
  %i.lc = getelementptr inbounds nuw i8, ptr %13, i64 64
  store i32 %i.kb, ptr %i.lc, align 8, !tbaa !275
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  %i.ld = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  store ptr %i.ld, ptr %14, align 8, !tbaa !46
  %i.le = getelementptr inbounds nuw i8, ptr %14, i64 12
  store i32 6, ptr %i.le, align 4, !tbaa !204
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ld, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !52
  %i.lf = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 %i.kd, ptr %i.lf, align 8, !tbaa !203
  %i.lg = getelementptr inbounds nuw i8, ptr %14, i64 64
  store i32 %i.kb, ptr %i.lg, align 8, !tbaa !275
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  %i.lh = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  store ptr %i.lh, ptr %15, align 8, !tbaa !46
  %i.li = getelementptr inbounds nuw i8, ptr %15, i64 12
  store i32 6, ptr %i.li, align 4, !tbaa !204
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.lh, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !52
  %i.lj = getelementptr inbounds nuw i8, ptr %15, i64 8
  br label %_ZN4llvm9BitVectorC2Ejb.exit83

_ZN4llvm9BitVectorC2Ejb.exit83:                   ; preds = %_ZN4llvm9BitVectorC2Ejb.exit83.loopexit158, %_ZN4llvm9BitVectorC2Ejb.exit83.loopexit, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i73.thread
  %i.lk = phi ptr [ %i.kr, %_ZN4llvm9BitVectorC2Ejb.exit83.loopexit ], [ %i.la, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i73.thread ], [ %i.lj, %_ZN4llvm9BitVectorC2Ejb.exit83.loopexit158 ]
  %i.ll = phi ptr [ %i.kq, %_ZN4llvm9BitVectorC2Ejb.exit83.loopexit ], [ %i.kz, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i73.thread ], [ %i.lh, %_ZN4llvm9BitVectorC2Ejb.exit83.loopexit158 ]
  %i.lm = phi ptr [ %i.kl, %_ZN4llvm9BitVectorC2Ejb.exit83.loopexit ], [ %i.kv, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i73.thread ], [ %i.ld, %_ZN4llvm9BitVectorC2Ejb.exit83.loopexit158 ]
  store i32 %i.kd, ptr %i.lk, align 8, !tbaa !203
  %i.ln = getelementptr inbounds nuw i8, ptr %15, i64 64
  store i32 %i.kb, ptr %i.ln, align 8, !tbaa !275
  %i.lo = call noundef zeroext i1 @_ZNK4llvm20HexagonFrameLowering15updateExitPathsERNS_17MachineBasicBlockES2_RNS_9BitVectorES4_S4_(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(360) %i.jr, ptr noundef nonnull align 8 dereferenceable(360) %i.jr, ptr noundef nonnull align 8 dereferenceable(68) %13, ptr noundef nonnull align 8 dereferenceable(68) %14, ptr noundef nonnull align 8 dereferenceable(68) %15) ; 0 uses
  %i.lp = load ptr, ptr %15, align 8, !tbaa !46   ; 2 uses
  %i.lq = icmp eq ptr %i.lp, %i.ll
  br i1 %i.lq, label %_ZN4llvm9BitVectorD2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZN4llvm9BitVectorC2Ejb.exit83
  call void @free(ptr noundef %i.lp) #27
  br label %_ZN4llvm9BitVectorD2Ev.exit

_ZN4llvm9BitVectorD2Ev.exit:                      ; preds = %_ZN4llvm9BitVectorC2Ejb.exit83, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  %i.lr = load ptr, ptr %14, align 8, !tbaa !46   ; 2 uses
  %i.ls = icmp eq ptr %i.lr, %i.lm
  br i1 %i.ls, label %_ZN4llvm9BitVectorD2Ev.exit84, label %bb.z

bb.z:                                             ; preds = %_ZN4llvm9BitVectorD2Ev.exit
  call void @free(ptr noundef %i.lr) #27
  br label %_ZN4llvm9BitVectorD2Ev.exit84

_ZN4llvm9BitVectorD2Ev.exit84:                    ; preds = %_ZN4llvm9BitVectorD2Ev.exit, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  %i.lt = load ptr, ptr %13, align 8, !tbaa !46   ; 2 uses
  %i.lu = icmp eq ptr %i.lt, %i.kf
  br i1 %i.lu, label %_ZN4llvm9BitVectorD2Ev.exit85, label %bb.aa

bb.aa:                                            ; preds = %_ZN4llvm9BitVectorD2Ev.exit84
  call void @free(ptr noundef %i.lt) #27
  br label %_ZN4llvm9BitVectorD2Ev.exit85

_ZN4llvm9BitVectorD2Ev.exit85:                    ; preds = %_ZN4llvm9BitVectorD2Ev.exit84, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvm9BitVectorD2Ev.exit85, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm20HexagonFrameLowering22insertCSRSpillsInBlockERNS_17MachineBasicBlockERKSt6vectorINS_15CalleeSavedInfoESaIS4_EERKNS_19HexagonRegisterInfoERb(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(316) %3, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %4) local_unnamed_addr #3 align 2 {
bb.a:
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %6 = alloca %"class.llvm::MachineOperand", align 8 ; 8 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !366
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !366
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_ZN4llvm17MachineBasicBlock6spliceENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPS0_S3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !295  ; 13 uses
  store i8 0, ptr %4, align 1, !tbaa !321
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !313  ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !174, !nonnull !43, !align !175 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef ptr %i.m(ptr noundef nonnull align 8 dereferenceable(519600) %i.j) #27 ; 3 uses
  %i.o = tail call noundef zeroext i1 @_ZNK4llvm20HexagonFrameLowering15shouldInlineCSRERKNS_15MachineFunctionERKSt6vectorINS_15CalleeSavedInfoESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(1065) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(24) %2)
  %.pre150 = load ptr, ptr %2, align 8, !tbaa !366 ; 3 uses
  %.pre152 = load ptr, ptr %i.b, align 8, !tbaa !366 ; 3 uses
  br i1 %i.o, label %_ZNK4llvm20HexagonFrameLowering16useSpillFunctionERKNS_15MachineFunctionERKSt6vectorINS_15CalleeSavedInfoESaIS5_EE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = ptrtoint ptr %.pre152 to i64
  %i.q = ptrtoint ptr %.pre150 to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = sdiv exact i64 %i.r, 12
  %i.t = trunc i64 %i.s to i32                    ; 2 uses
  %i.u = icmp ult i32 %i.t, 2
  br i1 %i.u, label %_ZNK4llvm20HexagonFrameLowering16useSpillFunctionERKNS_15MachineFunctionERKSt6vectorINS_15CalleeSavedInfoESaIS5_EE.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val.i = load ptr, ptr %i.h, align 8, !tbaa !186 ; 3 uses
  %i.v = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %.val.i, i32 noundef 51) #27
  br i1 %i.v, label %_ZL9isOptSizeRKN4llvm15MachineFunctionE.exit.i, label %_ZNK4llvm8Function10hasOptSizeEv.exit.i.i

_ZNK4llvm8Function10hasOptSizeEv.exit.i.i:        ; preds = %bb.d
  %i.w = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %.val.i, i32 noundef 19) #27
  br i1 %i.w, label %_ZL9isOptSizeRKN4llvm15MachineFunctionE.exit.i, label %_ZNK4llvm20HexagonFrameLowering16useSpillFunctionERKNS_15MachineFunctionERKSt6vectorINS_15CalleeSavedInfoESaIS5_EE.exit

_ZL9isOptSizeRKN4llvm15MachineFunctionE.exit.i:   ; preds = %_ZNK4llvm8Function10hasOptSizeEv.exit.i.i, %bb.d
  %i.x = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %.val.i, i32 noundef 19) #27
  %spec.select.i = select i1 %i.x, ptr @_ZL18SpillFuncThreshold, ptr @_ZL20SpillFuncThresholdOs
  br label %_ZNK4llvm20HexagonFrameLowering16useSpillFunctionERKNS_15MachineFunctionERKSt6vectorINS_15CalleeSavedInfoESaIS5_EE.exit

_ZNK4llvm20HexagonFrameLowering16useSpillFunctionERKNS_15MachineFunctionERKSt6vectorINS_15CalleeSavedInfoESaIS5_EE.exit: ; preds = %_ZNK4llvm8Function10hasOptSizeEv.exit.i.i, %_ZL9isOptSizeRKN4llvm15MachineFunctionE.exit.i
  %i.y = phi ptr [ @_ZL18SpillFuncThreshold, %_ZNK4llvm8Function10hasOptSizeEv.exit.i.i ], [ %spec.select.i, %_ZL9isOptSizeRKN4llvm15MachineFunctionE.exit.i ]
  %7 = getelementptr inbounds nuw i8, ptr %i.y, i64 120
  %i.z = load i32, ptr %7, align 8, !tbaa !372
  %i.aa = icmp ult i32 %i.z, %i.t
  %.pre151 = load ptr, ptr %2, align 8, !tbaa !366 ; 5 uses
  %.pre153 = load ptr, ptr %i.b, align 8, !tbaa !366 ; 3 uses
  br i1 %i.aa, label %bb.e, label %_ZNK4llvm20HexagonFrameLowering16useSpillFunctionERKNS_15MachineFunctionERKSt6vectorINS_15CalleeSavedInfoESaIS5_EE.exit.thread

bb.e:                                             ; preds = %_ZNK4llvm20HexagonFrameLowering16useSpillFunctionERKNS_15MachineFunctionERKSt6vectorINS_15CalleeSavedInfoESaIS5_EE.exit
  store i8 1, ptr %4, align 1, !tbaa !321
  %i.ab = ptrtoint ptr %.pre153 to i64
  %i.ac = ptrtoint ptr %.pre151 to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = sdiv exact i64 %i.ad, 12                ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 56
  %.val75 = load ptr, ptr %i.ag, align 8          ; 2 uses
  %i.ah = icmp ne ptr %.pre153, %.pre151
  tail call void @llvm.assume(i1 %i.ah)
  %.sroa.0.0.copyload.i.i = load i32, ptr %.pre151, align 4, !tbaa !196 ; 4 uses
  %i.ai = add i32 %.sroa.0.0.copyload.i.i, -73
  %or.cond.i.i = icmp ult i32 %i.ai, -16
  br i1 %or.cond.i.i, label %_ZL22getMax32BitSubRegisterN4llvm8RegisterERKNS_18TargetRegisterInfoEb.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = zext nneg i32 %.sroa.0.0.copyload.i.i to i64
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !294, !noalias !827
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %.val75, i64 %i.an ; 2 uses
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !276, !noalias !827 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %i.ap, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZL22getMax32BitSubRegisterN4llvm8RegisterERKNS_18TargetRegisterInfoEb.exit.i, label %_ZN4llvm16MCSubRegIteratorppEv.exit.preheader.i.i

_ZN4llvm16MCSubRegIteratorppEv.exit.preheader.i.i: ; preds = %bb.f
  %i.aq = zext i16 %i.ap to i32
  %i.ar = add nuw nsw i32 %.sroa.0.0.copyload.i.i, %i.aq
  br label %_ZN4llvm16MCSubRegIteratorppEv.exit.i.i

_ZN4llvm16MCSubRegIteratorppEv.exit.i.i:          ; preds = %_ZN4llvm16MCSubRegIteratorppEv.exit.i.i, %_ZN4llvm16MCSubRegIteratorppEv.exit.preheader.i.i
  %.sroa.013.018.i.i = phi i32 [ %spec.select15.i.i, %_ZN4llvm16MCSubRegIteratorppEv.exit.i.i ], [ 0, %_ZN4llvm16MCSubRegIteratorppEv.exit.preheader.i.i ]
  %.sroa.02.017.i.i = phi i32 [ %i.av, %_ZN4llvm16MCSubRegIteratorppEv.exit.i.i ], [ %i.ar, %_ZN4llvm16MCSubRegIteratorppEv.exit.preheader.i.i ] ; 2 uses
  %.sroa.53.016.pn.i.i = phi ptr [ %.sroa.53.016.i.i, %_ZN4llvm16MCSubRegIteratorppEv.exit.i.i ], [ %i.ao, %_ZN4llvm16MCSubRegIteratorppEv.exit.preheader.i.i ]
  %.sroa.53.016.i.i = getelementptr inbounds nuw i8, ptr %.sroa.53.016.pn.i.i, i64 2 ; 2 uses
  %i.as = and i32 %.sroa.02.017.i.i, 65535
  %spec.select15.i.i = tail call i32 @llvm.umax.i32(i32 %.sroa.013.018.i.i, i32 %i.as) ; 2 uses
  %i.at = load i16, ptr %.sroa.53.016.i.i, align 2, !tbaa !276 ; 2 uses
  %i.au = zext i16 %i.at to i32
  %i.av = add i32 %.sroa.02.017.i.i, %i.au
  %.not.i.i.i.i = icmp eq i16 %i.at, 0
  br i1 %.not.i.i.i.i, label %_ZL22getMax32BitSubRegisterN4llvm8RegisterERKNS_18TargetRegisterInfoEb.exit.i, label %_ZN4llvm16MCSubRegIteratorppEv.exit.i.i

_ZL22getMax32BitSubRegisterN4llvm8RegisterERKNS_18TargetRegisterInfoEb.exit.i: ; preds = %_ZN4llvm16MCSubRegIteratorppEv.exit.i.i, %bb.f, %bb.e
  %.sroa.013.2.i.i = phi i32 [ %.sroa.0.0.copyload.i.i, %bb.e ], [ 0, %bb.f ], [ %spec.select15.i.i, %_ZN4llvm16MCSubRegIteratorppEv.exit.i.i ] ; 2 uses
  %i.aw = and i64 %i.ae, 4294967294
  %.not.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i, label %_ZL20getMaxCalleeSavedRegN4llvm8ArrayRefINS_15CalleeSavedInfoEEERKNS_18TargetRegisterInfoE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZL22getMax32BitSubRegisterN4llvm8RegisterERKNS_18TargetRegisterInfoEb.exit.i
  %wide.trip.count.i = and i64 %i.ae, 4294967295
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZL22getMax32BitSubRegisterN4llvm8RegisterERKNS_18TargetRegisterInfoEb.exit21.thread.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %_ZL22getMax32BitSubRegisterN4llvm8RegisterERKNS_18TargetRegisterInfoEb.exit21.thread.i ] ; 2 uses
  %.sroa.07.010.i = phi i32 [ %.sroa.013.2.i.i, %.lr.ph.preheader.i ], [ %.sroa.07.1.i, %_ZL22getMax32BitSubRegisterN4llvm8RegisterERKNS_18TargetRegisterInfoEb.exit21.thread.i ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [12 x i8], ptr %.pre151, i64 %indvars.iv.i
  %.sroa.0.0.copyload.i9.i = load i32, ptr %i.ax, align 4, !tbaa !196 ; 4 uses
  %i.ay = add i32 %.sroa.0.0.copyload.i9.i, -73
  %or.cond.i10.i = icmp ult i32 %i.ay, -16
  br i1 %or.cond.i10.i, label %_ZL22getMax32BitSubRegisterN4llvm8RegisterERKNS_18TargetRegisterInfoEb.exit21.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.az = zext nneg i32 %.sroa.0.0.copyload.i9.i to i64
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !294, !noalias !828
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %.val75, i64 %i.bd ; 2 uses
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !276, !noalias !828 ; 2 uses
  %.not.i.i.i.i.i11.i = icmp eq i16 %i.bf, 0
  br i1 %.not.i.i.i.i.i11.i, label %_ZL22getMax32BitSubRegisterN4llvm8RegisterERKNS_18TargetRegisterInfoEb.exit21.thread.i, label %_ZN4llvm16MCSubRegIteratorppEv.exit.preheader.i12.i

_ZN4llvm16MCSubRegIteratorppEv.exit.preheader.i12.i: ; preds = %bb.g
  %i.bg = zext i16 %i.bf to i32
  %i.bh = add nuw nsw i32 %.sroa.0.0.copyload.i9.i, %i.bg
  br label %_ZN4llvm16MCSubRegIteratorppEv.exit.i13.i

_ZN4llvm16MCSubRegIteratorppEv.exit.i13.i:        ; preds = %_ZN4llvm16MCSubRegIteratorppEv.exit.i13.i, %_ZN4llvm16MCSubRegIteratorppEv.exit.preheader.i12.i
  %.sroa.013.018.i14.i = phi i32 [ %spec.select15.i18.i, %_ZN4llvm16MCSubRegIteratorppEv.exit.i13.i ], [ 0, %_ZN4llvm16MCSubRegIteratorppEv.exit.preheader.i12.i ]
  %.sroa.02.017.i15.i = phi i32 [ %i.bl, %_ZN4llvm16MCSubRegIteratorppEv.exit.i13.i ], [ %i.bh, %_ZN4llvm16MCSubRegIteratorppEv.exit.preheader.i12.i ] ; 2 uses
  %.sroa.53.016.pn.i16.i = phi ptr [ %.sroa.53.016.i17.i, %_ZN4llvm16MCSubRegIteratorppEv.exit.i13.i ], [ %i.be, %_ZN4llvm16MCSubRegIteratorppEv.exit.preheader.i12.i ]
  %.sroa.53.016.i17.i = getelementptr inbounds nuw i8, ptr %.sroa.53.016.pn.i16.i, i64 2 ; 2 uses
  %i.bi = and i32 %.sroa.02.017.i15.i, 65535
  %spec.select15.i18.i = tail call i32 @llvm.umax.i32(i32 %.sroa.013.018.i14.i, i32 %i.bi) ; 2 uses
  %i.bj = load i16, ptr %.sroa.53.016.i17.i, align 2, !tbaa !276 ; 2 uses
  %i.bk = zext i16 %i.bj to i32
  %i.bl = add i32 %.sroa.02.017.i15.i, %i.bk
  %.not.i.i.i19.i = icmp eq i16 %i.bj, 0
  br i1 %.not.i.i.i19.i, label %_ZL22getMax32BitSubRegisterN4llvm8RegisterERKNS_18TargetRegisterInfoEb.exit21.i, label %_ZN4llvm16MCSubRegIteratorppEv.exit.i13.i

_ZL22getMax32BitSubRegisterN4llvm8RegisterERKNS_18TargetRegisterInfoEb.exit21.i: ; preds = %_ZN4llvm16MCSubRegIteratorppEv.exit.i13.i, %.lr.ph.i
  %.sroa.013.2.i20.i = phi i32 [ %.sroa.0.0.copyload.i9.i, %.lr.ph.i ], [ %spec.select15.i18.i, %_ZN4llvm16MCSubRegIteratorppEv.exit.i13.i ]
  %spec.select.i76 = tail call i32 @llvm.umax.i32(i32 %.sroa.013.2.i20.i, i32 %.sroa.07.010.i)
  br label %_ZL22getMax32BitSubRegisterN4llvm8RegisterERKNS_18TargetRegisterInfoEb.exit21.thread.i

_ZL22getMax32BitSubRegisterN4llvm8RegisterERKNS_18TargetRegisterInfoEb.exit21.thread.i: ; preds = %_ZL22getMax32BitSubRegisterN4llvm8RegisterERKNS_18TargetRegisterInfoEb.exit21.i, %bb.g
  %.sroa.07.1.i = phi i32 [ %.sroa.07.010.i, %bb.g ], [ %spec.select.i76, %_ZL22getMax32BitSubRegisterN4llvm8RegisterERKNS_18TargetRegisterInfoEb.exit21.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZL20getMaxCalleeSavedRegN4llvm8ArrayRefINS_15CalleeSavedInfoEEERKNS_18TargetRegisterInfoE.exit, label %.lr.ph.i, !llvm.loop !6

_ZL20getMaxCalleeSavedRegN4llvm8ArrayRefINS_15CalleeSavedInfoEEERKNS_18TargetRegisterInfoE.exit: ; preds = %_ZL22getMax32BitSubRegisterN4llvm8RegisterERKNS_18TargetRegisterInfoEb.exit21.thread.i, %_ZL22getMax32BitSubRegisterN4llvm8RegisterERKNS_18TargetRegisterInfoEb.exit.i
  %.sroa.07.2.i = phi i32 [ %.sroa.013.2.i.i, %_ZL22getMax32BitSubRegisterN4llvm8RegisterERKNS_18TargetRegisterInfoEb.exit.i ], [ %.sroa.07.1.i, %_ZL22getMax32BitSubRegisterN4llvm8RegisterERKNS_18TargetRegisterInfoEb.exit21.thread.i ]
  %i.bm = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL23EnableStackOVFSanitizer, i64 120), align 8, !tbaa !320, !range !42, !noundef !43
  %i.bn = trunc nuw i8 %i.bm to i1                ; 7 uses
  %..sroa.sel.i = select i1 %i.bn, ptr @__const._ZL19getSpillFunctionForN4llvm8RegisterE9SpillKindb.V4SpillToMemoryStkchkFunctions, ptr @__const._ZL19getSpillFunctionForN4llvm8RegisterE9SpillKindb.V4SpillToMemoryFunctions
  switch i32 %.sroa.07.2.i, label %_ZL20getMaxCalleeSavedRegN4llvm8ArrayRefINS_15CalleeSavedInfoEEERKNS_18TargetRegisterInfoE.exit.thread [
    i32 135, label %_ZL19getSpillFunctionForN4llvm8RegisterE9SpillKindb.exit
    i32 137, label %bb.h
    i32 139, label %bb.i
    i32 141, label %bb.j
    i32 143, label %bb.k
    i32 145, label %bb.l
  ]

bb.h:                                             ; preds = %_ZL20getMaxCalleeSavedRegN4llvm8ArrayRefINS_15CalleeSavedInfoEEERKNS_18TargetRegisterInfoE.exit
  %i.bo = select i1 %i.bn, ptr getelementptr inbounds nuw (i8, ptr @__const._ZL19getSpillFunctionForN4llvm8RegisterE9SpillKindb.V4SpillToMemoryStkchkFunctions, i64 8), ptr getelementptr inbounds nuw (i8, ptr @__const._ZL19getSpillFunctionForN4llvm8RegisterE9SpillKindb.V4SpillToMemoryFunctions, i64 8)
  br label %_ZL19getSpillFunctionForN4llvm8RegisterE9SpillKindb.exit

bb.i:                                             ; preds = %_ZL20getMaxCalleeSavedRegN4llvm8ArrayRefINS_15CalleeSavedInfoEEERKNS_18TargetRegisterInfoE.exit
  %i.bp = select i1 %i.bn, ptr getelementptr inbounds nuw (i8, ptr @__const._ZL19getSpillFunctionForN4llvm8RegisterE9SpillKindb.V4SpillToMemoryStkchkFunctions, i64 16), ptr getelementptr inbounds nuw (i8, ptr @__const._ZL19getSpillFunctionForN4llvm8RegisterE9SpillKindb.V4SpillToMemoryFunctions, i64 16)
  br label %_ZL19getSpillFunctionForN4llvm8RegisterE9SpillKindb.exit

bb.j:                                             ; preds = %_ZL20getMaxCalleeSavedRegN4llvm8ArrayRefINS_15CalleeSavedInfoEEERKNS_18TargetRegisterInfoE.exit
  %i.bq = select i1 %i.bn, ptr getelementptr inbounds nuw (i8, ptr @__const._ZL19getSpillFunctionForN4llvm8RegisterE9SpillKindb.V4SpillToMemoryStkchkFunctions, i64 24), ptr getelementptr inbounds nuw (i8, ptr @__const._ZL19getSpillFunctionForN4llvm8RegisterE9SpillKindb.V4SpillToMemoryFunctions, i64 24)
  br label %_ZL19getSpillFunctionForN4llvm8RegisterE9SpillKindb.exit

bb.k:                                             ; preds = %_ZL20getMaxCalleeSavedRegN4llvm8ArrayRefINS_15CalleeSavedInfoEEERKNS_18TargetRegisterInfoE.exit
  %i.br = select i1 %i.bn, ptr getelementptr inbounds nuw (i8, ptr @__const._ZL19getSpillFunctionForN4llvm8RegisterE9SpillKindb.V4SpillToMemoryStkchkFunctions, i64 32), ptr getelementptr inbounds nuw (i8, ptr @__const._ZL19getSpillFunctionForN4llvm8RegisterE9SpillKindb.V4SpillToMemoryFunctions, i64 32)
  br label %_ZL19getSpillFunctionForN4llvm8RegisterE9SpillKindb.exit

bb.l:                                             ; preds = %_ZL20getMaxCalleeSavedRegN4llvm8ArrayRefINS_15CalleeSavedInfoEEERKNS_18TargetRegisterInfoE.exit
  %i.bs = select i1 %i.bn, ptr getelementptr inbounds nuw (i8, ptr @__const._ZL19getSpillFunctionForN4llvm8RegisterE9SpillKindb.V4SpillToMemoryStkchkFunctions, i64 40), ptr getelementptr inbounds nuw (i8, ptr @__const._ZL19getSpillFunctionForN4llvm8RegisterE9SpillKindb.V4SpillToMemoryFunctions, i64 40)
  br label %_ZL19getSpillFunctionForN4llvm8RegisterE9SpillKindb.exit

_ZL20getMaxCalleeSavedRegN4llvm8ArrayRefINS_15CalleeSavedInfoEEERKNS_18TargetRegisterInfoE.exit.thread: ; preds = %_ZL20getMaxCalleeSavedRegN4llvm8ArrayRefINS_15CalleeSavedInfoEEERKNS_18TargetRegisterInfoE.exit
  unreachable

_ZL19getSpillFunctionForN4llvm8RegisterE9SpillKindb.exit: ; preds = %_ZL20getMaxCalleeSavedRegN4llvm8ArrayRefINS_15CalleeSavedInfoEEERKNS_18TargetRegisterInfoE.exit, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.09.in.i = phi ptr [ %i.bs, %bb.l ], [ %i.bo, %bb.h ], [ %i.bp, %bb.i ], [ %i.bq, %bb.j ], [ %i.br, %bb.k ], [ %..sroa.sel.i, %_ZL20getMaxCalleeSavedRegN4llvm8ArrayRefINS_15CalleeSavedInfoEEERKNS_18TargetRegisterInfoE.exit ]
  %.09.i = load ptr, ptr %.09.in.i, align 8, !tbaa !50
  %i.bt = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !373, !nonnull !43, !align !175
  %i.bv = tail call noundef zeroext i1 @_ZNK4llvm13TargetMachine21isPositionIndependentEv(ptr noundef nonnull align 8 dereferenceable(1728) %i.bu) #27 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.j, i64 348
  %i.bx = load i8, ptr %i.bw, align 4, !tbaa !455, !range !42, !noundef !43
  %i.by = trunc nuw i8 %i.bx to i1
  %i.bz = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL21EnableSaveRestoreLong, i64 120), align 8, !range !42
  %i.ca = trunc nuw i8 %i.bz to i1
  %i.cb = select i1 %i.by, i1 true, i1 %i.ca      ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.not = icmp eq ptr %i.f, %i.cc
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZL19getSpillFunctionForN4llvm8RegisterE9SpillKindb.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !322
  %i.cf = inttoptr i64 %i.ce to ptr
  br label %bb.n

bb.n:                                             ; preds = %_ZL19getSpillFunctionForN4llvm8RegisterE9SpillKindb.exit, %bb.m
  %.sroa.0119.0 = phi ptr [ %i.cf, %bb.m ], [ null, %_ZL19getSpillFunctionForN4llvm8RegisterE9SpillKindb.exit ]
  br i1 %i.bn, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  br i1 %i.cb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.neg = select i1 %i.bv, i64 -2622, i64 -2621
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit

bb.q:                                             ; preds = %bb.o
  %.neg127 = select i1 %i.bv, i64 -2623, i64 -2620
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit

bb.r:                                             ; preds = %bb.n
  br i1 %i.cb, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %.neg128 = select i1 %i.bv, i64 -2625, i64 -2624
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit

bb.t:                                             ; preds = %bb.r
  %.neg129 = select i1 %i.bv, i64 -2626, i64 -2619
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit: ; preds = %bb.q, %bb.p, %bb.t, %bb.s
  %.074.neg = phi i64 [ %.neg, %bb.p ], [ %.neg127, %bb.q ], [ %.neg128, %bb.s ], [ %.neg129, %bb.t ]
  %i.cg = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !324
  %i.ci = getelementptr inbounds [32 x i8], ptr %i.ch, i64 %.074.neg
end_hunk_0
begin_hunk_1_@_ZNK4llvm20HexagonFrameLowering9hasFPImplERKNS_15MachineFunctionE:bb.a
bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !475
  %.not = icmp ne i64 %i.ae, 0
  %i.af = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL23EnableStackOVFSanitizer, i64 120), align 8, !range !42
  %i.ag = trunc nuw i8 %i.af to i1
  %or.cond22 = select i1 %.not, i1 %i.ag, i1 false
  br i1 %or.cond22, label %_ZL20enableAllocFrameElimRKN4llvm15MachineFunctionE.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !478
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 66
  %i.ak = load i8, ptr %i.aj, align 2, !tbaa !1204, !range !42, !noundef !43
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.am = load ptr, ptr %1, align 8, !tbaa !186, !nonnull !43, !align !175 ; 3 uses
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !315
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !174, !nonnull !43, !align !175
  %i.ap = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.am, i32 noundef 40) #27
  br i1 %i.ap, label %bb.g, label %_ZL20enableAllocFrameElimRKN4llvm15MachineFunctionE.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.aq = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.am, i32 noundef 45) #27
  br i1 %i.aq, label %bb.h, label %_ZL20enableAllocFrameElimRKN4llvm15MachineFunctionE.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ar = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.am, i32 noundef 102) #27
  br i1 %i.ar, label %_ZL20enableAllocFrameElimRKN4llvm15MachineFunctionE.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 424
  %i.at = load i8, ptr %i.as, align 8, !tbaa !499, !range !42, !noundef !43
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %_ZL20enableAllocFrameElimRKN4llvm15MachineFunctionE.exit, label %_ZL20enableAllocFrameElimRKN4llvm15MachineFunctionE.exit.thread

_ZL20enableAllocFrameElimRKN4llvm15MachineFunctionE.exit: ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !475
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.j, label %_ZL20enableAllocFrameElimRKN4llvm15MachineFunctionE.exit.thread

bb.j:                                             ; preds = %_ZL20enableAllocFrameElimRKN4llvm15MachineFunctionE.exit, %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !1205, !range !42, !noundef !43
  %i.ba = trunc nuw i8 %i.az to i1
  br label %_ZL20enableAllocFrameElimRKN4llvm15MachineFunctionE.exit.thread

_ZL20enableAllocFrameElimRKN4llvm15MachineFunctionE.exit.thread: ; preds = %bb.d, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.c, %_ZL20enableAllocFrameElimRKN4llvm15MachineFunctionE.exit, %_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit
  %.2 = phi i1 [ true, %_ZL20enableAllocFrameElimRKN4llvm15MachineFunctionE.exit ], [ true, %_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit ], [ true, %bb.d ], [ true, %bb.c ], [ true, %bb.f ], [ %i.ba, %bb.j ], [ true, %bb.i ], [ true, %bb.h ], [ true, %bb.g ]
  ret i1 %.2
}

declare noundef zeroext i1 @_ZNK4llvm13TargetOptions23DisableFramePointerElimERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(440), ptr noundef nonnull align 8 dereferenceable(1065)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local { i64, i64 } @_ZNK4llvm20HexagonFrameLowering22getFrameIndexReferenceERKNS_15MachineFunctionEiRNS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1, i32 noundef %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %3) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !315  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !174, !nonnull !43, !align !175 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(519600) %i.d) #27 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !486
  %i.l = add i32 %i.k, %2
  %i.m = zext i32 %i.l to i64
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !487
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %i.m
  %i.p = load i64, ptr %i.o, align 8, !tbaa !527  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.r = load i8, ptr %i.q, align 4, !tbaa !529, !range !42, !noundef !43
  %i.s = trunc nuw i8 %i.r to i1                  ; 3 uses
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !34
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 536
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(316) %i.h, ptr noundef nonnull align 8 dereferenceable(1065) %1) #27, !inline_history !11
  br i1 %i.w, label %bb.b, label %_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit

bb.b:                                             ; preds = %bb.a
  %i.x = load ptr, ptr %i.h, align 8, !tbaa !34
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 528
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(316) %i.h, ptr noundef nonnull align 8 dereferenceable(1065) %1) #27, !inline_history !11
  br label %_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit

_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit: ; preds = %bb.a, %bb.b
  %i.ab = phi i1 [ false, %bb.a ], [ %i.aa, %bb.b ] ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !373, !nonnull !43, !align !175
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1064
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !627
  %i.ag = icmp ne i32 %i.af, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !478
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !475
  %i.al = tail call i32 @_ZNK4llvm19HexagonRegisterInfo16getStackRegisterEv(ptr noundef nonnull align 8 dereferenceable(316) %i.h) #27
  %i.am = tail call i32 @_ZNK4llvm19HexagonRegisterInfo16getFrameRegisterEv(ptr noundef nonnull align 8 dereferenceable(316) %i.h) #27
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  %.sroa.0.0.copyload.i = load i32, ptr %i.an, align 4, !tbaa !196
  %or.cond = or i1 %i.ab, %i.ag
  %.048 = xor i1 %or.cond, true                   ; 2 uses
  %i.ao = icmp slt i32 %2, 0
  %i.ap = load i32, ptr %i.j, align 8             ; 2 uses
  %i.aq = sub nsw i32 0, %i.ap
  %i.ar = icmp sge i32 %2, %i.aq
  %i.as = select i1 %i.ao, i1 %i.ar, i1 false
  br i1 %i.as, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit
  %i.at = add i32 %i.ap, %2
  %i.au = zext i32 %i.at to i64
  %i.av = load ptr, ptr %i.i, align 8, !tbaa !487
  %i.aw = getelementptr inbounds nuw [40 x i8], ptr %i.av, i64 %i.au
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !1206, !range !42, !noundef !43
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit
  %i.ba = or i1 %i.ab, %i.s
  %i.bb = or i1 %i.ba, %.048
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %not. = xor i1 %i.ab, true
  %spec.select52 = select i1 %i.s, i1 %not., i1 %.048
  %spec.select53 = and i1 %i.ab, %i.s
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1 = phi i1 [ %i.bb, %bb.d ], [ %spec.select52, %bb.e ] ; 2 uses
  %.047 = phi i1 [ false, %bb.d ], [ %spec.select53, %bb.e ] ; 2 uses
  %i.bc = load ptr, ptr %1, align 8, !tbaa !186, !nonnull !43, !align !175
  %i.bd = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.bc, i32 noundef 21) #27
  br i1 %i.bd, label %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.be = load ptr, ptr %0, align 8, !tbaa !34
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 384
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = tail call noundef zeroext i1 %i.bg(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) #27, !inline_history !7
  br label %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit

_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit: ; preds = %bb.f, %bb.g
  %i.bi = phi i1 [ false, %bb.f ], [ %i.bh, %bb.g ]
  %.sroa.0.0.copyload.i. = select i1 %.047, i32 %.sroa.0.0.copyload.i, i32 %i.al
  %.sroa.0.0.copyload.i.sink = select i1 %.1, i32 %i.am, i32 %.sroa.0.0.copyload.i.
  store i32 %.sroa.0.0.copyload.i.sink, ptr %3, align 4, !tbaa !196
  %i.bj = trunc i64 %i.p to i32
  %i.bk = icmp slt i32 %i.bj, 1
  %or.cond3 = or i1 %i.bk, %i.bi
  %i.bl = add i64 %i.p, 4294967288
  %spec.select = select i1 %or.cond3, i64 %i.p, i64 %i.bl
  %or.cond5 = or i1 %.1, %.047
  %i.bm = select i1 %or.cond5, i64 0, i64 %i.ak
  %spec.select51 = add i64 %spec.select, %i.bm
  %sext = shl i64 %spec.select51, 32
  %i.bn = ashr exact i64 %sext, 32
  %.fca.0.insert.i = insertvalue { i64, i64 } poison, i64 %i.bn, 0
  %.fca.1.insert.i = insertvalue { i64, i64 } %.fca.0.insert.i, i64 0, 1
  ret { i64, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm20HexagonFrameLowering16useSpillFunctionERKNS_15MachineFunctionERKSt6vectorINS_15CalleeSavedInfoESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK4llvm20HexagonFrameLowering15shouldInlineCSRERKNS_15MachineFunctionERKSt6vectorINS_15CalleeSavedInfoESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !498
  %i.d = load ptr, ptr %2, align 8, !tbaa !497
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 12
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %i.j = icmp ult i32 %i.i, 2
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val = load ptr, ptr %1, align 8, !tbaa !186   ; 3 uses
  %i.k = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %.val, i32 noundef 51) #27
  br i1 %i.k, label %_ZL9isOptSizeRKN4llvm15MachineFunctionE.exit, label %_ZNK4llvm8Function10hasOptSizeEv.exit.i

_ZNK4llvm8Function10hasOptSizeEv.exit.i:          ; preds = %bb.c
  %i.l = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %.val, i32 noundef 19) #27
  br i1 %i.l, label %_ZL9isOptSizeRKN4llvm15MachineFunctionE.exit, label %_ZL9isOptSizeRKN4llvm15MachineFunctionE.exit.thread

_ZL9isOptSizeRKN4llvm15MachineFunctionE.exit:     ; preds = %bb.c, %_ZNK4llvm8Function10hasOptSizeEv.exit.i
  %i.m = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %.val, i32 noundef 19) #27
  %spec.select = select i1 %i.m, ptr @_ZL18SpillFuncThreshold, ptr @_ZL20SpillFuncThresholdOs
  br label %_ZL9isOptSizeRKN4llvm15MachineFunctionE.exit.thread

_ZL9isOptSizeRKN4llvm15MachineFunctionE.exit.thread: ; preds = %_ZL9isOptSizeRKN4llvm15MachineFunctionE.exit, %_ZNK4llvm8Function10hasOptSizeEv.exit.i
  %i.n = phi ptr [ @_ZL18SpillFuncThreshold, %_ZNK4llvm8Function10hasOptSizeEv.exit.i ], [ %spec.select, %_ZL9isOptSizeRKN4llvm15MachineFunctionE.exit ]
  %3 = getelementptr inbounds nuw i8, ptr %i.n, i64 120
  %i.o = load i32, ptr %3, align 8, !tbaa !372
  %i.p = icmp ult i32 %i.o, %i.i
  br label %bb.d

bb.d:                                             ; preds = %_ZL9isOptSizeRKN4llvm15MachineFunctionE.exit.thread, %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ %i.p, %_ZL9isOptSizeRKN4llvm15MachineFunctionE.exit.thread ], [ false, %bb.b ]
  ret i1 %.1
}

declare noundef zeroext i1 @_ZNK4llvm13TargetMachine21isPositionIndependentEv(ptr noundef nonnull align 8 dereferenceable(1728)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm20HexagonFrameLowering34addCalleeSaveRegistersAsImpOperandEPNS_12MachineInstrERKSt6vectorINS_15CalleeSavedInfoESaIS4_EEbb(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(28) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #3 align 2 {
bb.a:
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !366    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !366  ; 2 uses
  %.not10 = icmp eq ptr %i.a, %i.c
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.e = select i1 %3, i32 50331648, i32 33554432
  %i.f = select i1 %4, i32 67108864, i32 0
  %i.g = or disjoint i32 %i.f, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.07.011 = phi ptr [ %i.a, %.lr.ph ], [ %i.j, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %.sroa.0.0.copyload.i = load i32, ptr %.sroa.07.011, align 4, !tbaa !196
  store ptr null, ptr %i.d, align 8, !tbaa !327, !alias.scope !1209
  store i32 %.sroa.0.0.copyload.i, ptr %i.h, align 4, !tbaa !311, !alias.scope !1209
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false), !alias.scope !1209
  store i32 %i.g, ptr %5, align 8, !alias.scope !1209
  call void @_ZN4llvm12MachineInstr10addOperandERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 12 ; 2 uses
  %.not = icmp eq ptr %i.j, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b
}

declare noundef zeroext i1 @_ZNK4llvm19HexagonRegisterInfo23isEHReturnCalleeSaveRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(316), i32) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define dso_local noundef ptr @_ZNK4llvm20HexagonFrameLowering14getAlignaInstrERKNS_15MachineFunctionE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(28) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(1065) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  %.sroa.020.035 = load ptr, ptr %i.a, align 8, !tbaa !212 ; 2 uses
  %.not2836 = icmp eq ptr %.sroa.020.035, %i.b
  br i1 %.not2836, label %.loopexit, label %.lr.ph39

.lr.ph39:                                         ; preds = %bb.a, %._crit_edge
  %.sroa.020.037 = phi ptr [ %.sroa.020.0, %._crit_edge ], [ %.sroa.020.035, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.020.037, i64 56
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.020.037, i64 48 ; 2 uses
  %.sroa.017.032 = load ptr, ptr %i.c, align 8, !tbaa !295 ; 2 uses
  %.not2933 = icmp eq ptr %.sroa.017.032, %i.d
  br i1 %.not2933, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph39, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit
  %.sroa.017.034 = phi ptr [ %.sroa.017.0, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit ], [ %.sroa.017.032, %.lr.ph39 ] ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.017.034, i64 52
  %i.f = load i32, ptr %i.e, align 4, !tbaa !309
  %.not = icmp eq i32 %i.f, 446
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.017.034) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.017.034, align 8
  %i.g = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.017.034, i64 44
  %i.i = load i32, ptr %i.h, align 4, !tbaa !305
  %i.j = and i32 %i.i, 8
  %.not34.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not34.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i
  %.sroa.0.05.i.i.i = phi ptr [ %i.l, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i ], [ %.sroa.017.034, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !295  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 44
  %i.n = load i32, ptr %i.m, align 4, !tbaa !305
  %i.o = and i32 %i.n, 8
  %.not3.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not3.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i, !llvm.loop !3

_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i, %bb.b, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i
  %.sroa.0.1.i.i.i = phi ptr [ %.sroa.017.034, %bb.b ], [ %.sroa.017.034, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i ], [ %i.l, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i, i64 8
  %.sroa.017.0 = load ptr, ptr %i.p, align 8, !tbaa !295 ; 2 uses
  %.not29 = icmp eq ptr %.sroa.017.0, %i.d
  br i1 %.not29, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit, %.lr.ph39
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.020.037, i64 8
  %.sroa.020.0 = load ptr, ptr %i.q, align 8, !tbaa !212 ; 2 uses
  %.not28 = icmp eq ptr %.sroa.020.0, %i.b
  br i1 %.not28, label %.loopexit, label %.lr.ph39

.loopexit:                                        ; preds = %._crit_edge, %.lr.ph, %bb.a
  %i.r = phi ptr [ null, %bb.a ], [ %.sroa.017.034, %.lr.ph ], [ null, %._crit_edge ]
  ret ptr %i.r
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm20HexagonFrameLowering18useRestoreFunctionERKNS_15MachineFunctionERKSt6vectorINS_15CalleeSavedInfoESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK4llvm20HexagonFrameLowering15shouldInlineCSRERKNS_15MachineFunctionERKSt6vectorINS_15CalleeSavedInfoESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !186, !nonnull !43, !align !175
  %i.c = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.b, i32 noundef 70) #27
  br i1 %i.c, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val11 = load ptr, ptr %1, align 8, !tbaa !186
  %i.d = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %.val11, i32 noundef 19) #27
  br i1 %i.d, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !498
  %i.g = load ptr, ptr %2, align 8, !tbaa !497
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 12
  %i.l = trunc i64 %i.k to i32                    ; 2 uses
  %i.m = icmp ult i32 %i.l, 2
  br i1 %i.m, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val = load ptr, ptr %1, align 8, !tbaa !186   ; 3 uses
  %i.n = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %.val, i32 noundef 51) #27
  br i1 %i.n, label %_ZL9isOptSizeRKN4llvm15MachineFunctionE.exit, label %_ZNK4llvm8Function10hasOptSizeEv.exit.i

_ZNK4llvm8Function10hasOptSizeEv.exit.i:          ; preds = %bb.e
  %i.o = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %.val, i32 noundef 19) #27
  br i1 %i.o, label %_ZL9isOptSizeRKN4llvm15MachineFunctionE.exit, label %_ZL9isOptSizeRKN4llvm15MachineFunctionE.exit.thread

_ZL9isOptSizeRKN4llvm15MachineFunctionE.exit:     ; preds = %bb.e, %_ZNK4llvm8Function10hasOptSizeEv.exit.i
  %i.p = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %.val, i32 noundef 19) #27
  br i1 %i.p, label %_ZL9isOptSizeRKN4llvm15MachineFunctionE.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZL9isOptSizeRKN4llvm15MachineFunctionE.exit
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL20SpillFuncThresholdOs, i64 120), align 8, !tbaa !372
  %i.r = add nsw i32 %i.q, -1
  br label %bb.g

_ZL9isOptSizeRKN4llvm15MachineFunctionE.exit.thread: ; preds = %_ZNK4llvm8Function10hasOptSizeEv.exit.i, %_ZL9isOptSizeRKN4llvm15MachineFunctionE.exit
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL18SpillFuncThreshold, i64 120), align 8, !tbaa !372
  br label %bb.g

bb.g:                                             ; preds = %_ZL9isOptSizeRKN4llvm15MachineFunctionE.exit.thread, %bb.f
  %i.t = phi i32 [ %i.r, %bb.f ], [ %i.s, %_ZL9isOptSizeRKN4llvm15MachineFunctionE.exit.thread ]
  %i.u = icmp ult i32 %i.t, %i.l
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d, %bb.c, %bb.b, %bb.a
  %.1 = phi i1 [ true, %bb.c ], [ false, %bb.a ], [ false, %bb.b ], [ %i.u, %bb.g ], [ false, %bb.d ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZNK4llvm20HexagonFrameLowering29eliminateCallFramePseudoInstrERNS_15MachineFunctionERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(360) %2, ptr %3) unnamed_addr #3 align 2 {
bb.a:
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %3, align 8
  %i.a = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i = icmp eq i64 %i.a, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !305
  %i.d = and i32 %i.c, 8
  %.not34.i.i.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not34.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i
  %.sroa.0.05.i.i.i.i.i = phi ptr [ %i.f, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i ], [ %3, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i ]
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !295  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.h = load i32, ptr %i.g, align 4, !tbaa !305
  %i.i = and i32 %i.h, 8
  %.not3.i.i.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i, !llvm.loop !4

end_hunk_1
