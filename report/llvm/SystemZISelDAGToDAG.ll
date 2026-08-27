Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SystemZISelDAGToDAG?download=true
inline.NumInlined: 2527
inline.NumDeleted: 811
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN12_GLOBAL__N_119SystemZDAGToDAGISel6SelectEPN4llvm6SDNodeE:bb.a
_ZNK12_GLOBAL__N_119SystemZDAGToDAGISel18selectBDAddr20OnlyEN4llvm7SDValueERS2_S3_.exit.i: ; preds = %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.ye, 1
  %.fca.0.extract.i316 = extractvalue { ptr, i32 } %i.ye, 0
  %i.yn = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 48
  %i.yo = load ptr, ptr %i.yn, align 8, !tbaa !360
  %i.yp = zext i32 %.sroa.24.0.copyload.i to i64
  %i.yq = getelementptr inbounds nuw [16 x i8], ptr %i.yo, i64 %i.yp ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i16, ptr %i.yq, align 8, !tbaa !361
  %.sroa.21.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.yq, i64 8
  %.sroa.21.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !363
  call fastcc void @_ZNK12_GLOBAL__N_119SystemZDAGToDAGISel18getAddressOperandsERKNS_21SystemZAddressingModeEN4llvm3EVTERNS4_7SDValueES7_(ptr noundef nonnull readonly align 8 dereferenceable(960) %0, ptr noundef nonnull align 8 dereferenceable(49) %2, i16 %.sroa.0.0.copyload.i.i.i.i.i, ptr %.sroa.21.0.copyload.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %11, ptr noundef nonnull align 8 dereferenceable(12) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %13, ptr noundef nonnull align 8 dereferenceable(12) %11, i64 12, i1 false), !tbaa.struct !407
  %i.yr = getelementptr inbounds nuw i8, ptr %13, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.yr, ptr noundef nonnull align 8 dereferenceable(12) %12, i64 12, i1 false), !tbaa.struct !407
  %i.ys = getelementptr inbounds nuw i8, ptr %13, i64 32
  store ptr %.fca.0.extract.i316, ptr %i.ys, align 16, !tbaa !358
  %.sroa.6.0..sroa_idx60.i = getelementptr inbounds nuw i8, ptr %13, i64 40
  store i32 %.fca.1.extract.i, ptr %.sroa.6.0..sroa_idx60.i, align 8, !tbaa !359
  %i.yt = getelementptr inbounds nuw i8, ptr %13, i64 48
  store ptr %.sroa.062.199.i, ptr %i.yt, align 16, !tbaa !358
  %.sroa.664.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %13, i64 56
  store i32 %.sroa.664.1100.i, ptr %.sroa.664.0..sroa_idx.i, align 8, !tbaa !359
  %i.yu = load ptr, ptr %i.ro, align 8, !tbaa !329
  store i16 1, ptr %14, align 8, !tbaa !408
  %i.yv = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr null, ptr %i.yv, align 8, !tbaa !409
  store ptr %13, ptr %15, align 8, !tbaa !381
  %i.yw = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 4, ptr %i.yw, align 8, !tbaa !384
  %i.yx = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTES4_NS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.yu, i32 noundef %.029.i, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 7, ptr null, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %14, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %15) #17 ; 5 uses
  %i.yy = load ptr, ptr %i.ro, align 8, !tbaa !329
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.yz = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.yz, align 8
  %i.za = and i64 %.0.copyload.i.i.i.i.i.i.i, -5
  %i.zb = inttoptr i64 %i.za to ptr
  store ptr %i.zb, ptr %i.a, align 8, !tbaa !410
  %i.zc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.zd = getelementptr inbounds nuw i8, ptr %.sroa.080.0.copyload.i.i, i64 104
  %.0.copyload.i.i.i.i.i.i44.i = load i64, ptr %i.zd, align 8
  %i.ze = and i64 %.0.copyload.i.i.i.i.i.i44.i, -5
  %i.zf = inttoptr i64 %i.ze to ptr
  store ptr %i.zf, ptr %i.zc, align 8, !tbaa !410
  call void @_ZN4llvm12SelectionDAG14setNodeMemRefsEPNS_13MachineSDNodeENS_8ArrayRefIPNS_17MachineMemOperandEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.yy, ptr noundef %i.yx, ptr nonnull %i.a, i64 2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.zg = load ptr, ptr %i.ro, align 8, !tbaa !329
  call void @_ZN4llvm12SelectionDAG25ReplaceAllUsesOfValueWithENS_7SDValueES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.zg, ptr nonnull %1, i32 0, ptr %i.yx, i32 1) #17
  call void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef %i.yx) #17
  %i.zh = load ptr, ptr %i.ro, align 8, !tbaa !329
  call void @_ZN4llvm12SelectionDAG25ReplaceAllUsesOfValueWithENS_7SDValueES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.zh, ptr nonnull %.sroa.085.0.copyload.i, i32 1, ptr %i.yx, i32 0) #17
  call void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef %i.yx) #17
  %i.zi = load ptr, ptr %i.ro, align 8, !tbaa !329
  call void @_ZN4llvm12SelectionDAG14RemoveDeadNodeEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %i.zi, ptr noundef nonnull %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %_ZNK12_GLOBAL__N_119SystemZDAGToDAGISel18selectBDAddr20OnlyEN4llvm7SDValueERS2_S3_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  %.pre113.i = load i32, ptr %i.vx, align 8, !tbaa !351
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %_ZNK4llvm5APInt18getSignificantBitsEv.exit.i
  %i.zj = phi i32 [ %.pre113.i, %bb.ex ], [ %i.xb, %_ZNK4llvm5APInt18getSignificantBitsEv.exit.i ]
  %.1.i = phi i1 [ %i.ym, %bb.ex ], [ false, %_ZNK4llvm5APInt18getSignificantBitsEv.exit.i ]
  %i.zk = icmp ugt i32 %i.zj, 64
  br i1 %i.zk, label %bb.ez, label %_ZN12_GLOBAL__N_119SystemZDAGToDAGISel30tryFoldLoadStoreIntoMemOperandEPN4llvm6SDNodeE.exit

bb.ez:                                            ; preds = %bb.ey
  %i.zl = load ptr, ptr %9, align 8, !tbaa !353   ; 2 uses
  %i.zm = icmp eq ptr %i.zl, null
  br i1 %i.zm, label %_ZN12_GLOBAL__N_119SystemZDAGToDAGISel30tryFoldLoadStoreIntoMemOperandEPN4llvm6SDNodeE.exit, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  call void @_ZdaPv(ptr noundef nonnull %i.zl) #20
  br label %_ZN12_GLOBAL__N_119SystemZDAGToDAGISel30tryFoldLoadStoreIntoMemOperandEPN4llvm6SDNodeE.exit

_ZN12_GLOBAL__N_119SystemZDAGToDAGISel30tryFoldLoadStoreIntoMemOperandEPN4llvm6SDNodeE.exit.thread: ; preds = %bb.de, %bb.dh, %bb.db, %_ZL27isFusableLoadOpStorePatternPN4llvm11StoreSDNodeENS_7SDValueEPNS_12SelectionDAGERPNS_10LoadSDNodeERS2_.exit.thread.i, %_ZL27isFusableLoadOpStorePatternPN4llvm11StoreSDNodeENS_7SDValueEPNS_12SelectionDAGERPNS_10LoadSDNodeERS2_.exit.i, %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  br label %bb.fb

_ZN12_GLOBAL__N_119SystemZDAGToDAGISel30tryFoldLoadStoreIntoMemOperandEPN4llvm6SDNodeE.exit: ; preds = %bb.ey, %bb.ez, %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  br i1 %.1.i, label %.critedge223, label %bb.fb

bb.fb:                                            ; preds = %_ZN12_GLOBAL__N_119SystemZDAGToDAGISel30tryFoldLoadStoreIntoMemOperandEPN4llvm6SDNodeE.exit.thread, %_ZN12_GLOBAL__N_119SystemZDAGToDAGISel30tryFoldLoadStoreIntoMemOperandEPN4llvm6SDNodeE.exit
  %i.zn = load ptr, ptr %i.rb, align 8, !tbaa !344
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 40
  %i.zp = call { i64, i8 } @_ZNK4llvm7SDValue18getValueSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(12) %i.zo) ; 2 uses
  %.fca.1.extract38 = extractvalue { i64, i8 } %i.zp, 1
  %i.zq = trunc nuw i8 %.fca.1.extract38 to i1
  br i1 %i.zq, label %bb.fc, label %_ZNK4llvm8TypeSizecvmEv.exit322

bb.fc:                                            ; preds = %bb.fb
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.11) #18
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit322:                  ; preds = %bb.fb
  %.fca.0.extract37 = extractvalue { i64, i8 } %i.zp, 0
  %i.zr = trunc i64 %.fca.0.extract37 to i32
  switch i32 %i.zr, label %.critedge [
    i32 32, label %bb.fd
    i32 64, label %bb.fe
  ]

bb.fd:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit322
  %i.zs = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119SystemZDAGToDAGISel10tryScatterEPN4llvm11StoreSDNodeEj(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef nonnull %1, i32 noundef 3081)
  br i1 %i.zs, label %.critedge223, label %.critedge

bb.fe:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit322
  %i.zt = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119SystemZDAGToDAGISel10tryScatterEPN4llvm11StoreSDNodeEj(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef nonnull %1, i32 noundef 3082)
  br i1 %i.zt, label %.critedge223, label %.critedge

bb.ff:                                            ; preds = %bb.c
  %i.zu = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.zv = load ptr, ptr %i.zu, align 8, !tbaa !329
  %i.zw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.zx = load ptr, ptr %i.zw, align 8, !tbaa !344 ; 5 uses
  %.sroa.024.0.copyload = load ptr, ptr %i.zx, align 8, !tbaa !358
  %.sroa.225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zx, i64 8
  %.sroa.225.0.copyload = load i32, ptr %.sroa.225.0..sroa_idx, align 8, !tbaa !359
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #17
  %i.zy = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.zz = load i64, ptr %i.zy, align 8, !tbaa !354
  store i64 %i.zz, ptr %45, align 8, !tbaa !354
  %i.aaa = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.aab = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  %i.aac = load i32, ptr %i.aab, align 4, !tbaa !355
  store i32 %i.aac, ptr %i.aaa, align 8, !tbaa !356
  %i.aad = getelementptr inbounds nuw i8, ptr %i.zx, i64 40
  %.sroa.022.0.copyload = load ptr, ptr %i.aad, align 8, !tbaa !358
  %.sroa.223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zx, i64 48
  %.sroa.223.0.copyload = load i32, ptr %.sroa.223.0..sroa_idx, align 8, !tbaa !359
  %i.aae = getelementptr inbounds nuw i8, ptr %i.zx, i64 80
  %i.aaf = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.0.0.copyload.i324 = load i16, ptr %i.aaf, align 8, !tbaa !361
  %.sroa.21.0..sroa_idx.i325 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.21.0.copyload.i326 = load ptr, ptr %.sroa.21.0..sroa_idx.i325, align 8, !tbaa !363
  store i16 %.sroa.0.0.copyload.i324, ptr %46, align 8
  %i.aag = getelementptr inbounds nuw i8, ptr %46, i64 8
  store ptr %.sroa.21.0.copyload.i326, ptr %i.aag, align 8
  %i.aah = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.aah, align 8
  %i.aai = and i64 %.0.copyload.i.i.i.i.i.i, -5
  %i.aaj = inttoptr i64 %i.aai to ptr
  %i.aak = call { ptr, i32 } @_ZN4llvm12SelectionDAG13getTruncStoreENS_7SDValueERKNS_5SDLocES1_S1_NS_3EVTEPNS_17MachineMemOperandE(ptr noundef nonnull align 8 dereferenceable(920) %i.zv, ptr %.sroa.024.0.copyload, i32 %.sroa.225.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %45, ptr %.sroa.022.0.copyload, i32 %.sroa.223.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.aae, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %46, ptr noundef %i.aaj) #17
  %.fca.0.extract = extractvalue { ptr, i32 } %i.aak, 0 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #17
  %.0.copyload.i.i.i.i.i.i.i329 = load i64, ptr %i.aah, align 8
  %i.aal = and i64 %.0.copyload.i.i.i.i.i.i.i329, -5
  %i.aam = inttoptr i64 %i.aal to ptr
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 36
  %i.aao = load i16, ptr %i.aan, align 4
  %i.aap = and i16 %i.aao, 3840
  %i.aaq = icmp eq i16 %i.aap, 1792
  br i1 %i.aaq, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.aar = load ptr, ptr %i.zu, align 8, !tbaa !329
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #17
  %i.aas = load i64, ptr %i.zy, align 8, !tbaa !354
  store i64 %i.aas, ptr %47, align 8, !tbaa !354
  %i.aat = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.aau = load i32, ptr %i.aab, align 4, !tbaa !355
  store i32 %i.aau, ptr %i.aat, align 8, !tbaa !356
  store ptr %.fca.0.extract, ptr %48, align 8, !tbaa !345
  %i.aav = getelementptr inbounds nuw i8, ptr %48, i64 8
  store i32 0, ptr %i.aav, align 8, !tbaa !385
  %i.aaw = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.aar, i32 noundef 541, ptr noundef nonnull align 8 dereferenceable(12) %47, i16 1, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %48) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #17
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ff
  %.0 = phi ptr [ %i.aaw, %bb.fg ], [ %.fca.0.extract, %bb.ff ] ; 2 uses
  %i.aax = load ptr, ptr %i.zu, align 8, !tbaa !329
  call void @_ZN4llvm12SelectionDAG18ReplaceAllUsesWithEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(920) %i.aax, ptr noundef nonnull %1, ptr noundef %.0) #17
  call void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef %.0) #17
  %i.aay = load ptr, ptr %i.zu, align 8, !tbaa !329
  call void @_ZN4llvm12SelectionDAG14RemoveDeadNodeEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %i.aay, ptr noundef nonnull %1) #17
  call void @_ZN4llvm16SelectionDAGISel16SelectCodeCommonEPNS_6SDNodeEPKhjS4_(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef %.fca.0.extract, ptr noundef nonnull @_ZZN12_GLOBAL__N_119SystemZDAGToDAGISel10SelectCodeEPN4llvm6SDNodeEE12MatcherTable, i32 noundef 134089, ptr noundef nonnull @_ZZN12_GLOBAL__N_119SystemZDAGToDAGISel10SelectCodeEPN4llvm6SDNodeEE12OperandLists) #17
  br label %.critedge223

.critedge219:                                     ; preds = %bb.cx
  call void @_ZN4llvm25SystemZVectorConstantInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(90) dereferenceable(90) %41) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #17
  br label %.critedge

.critedge:                                        ; preds = %bb.cn, %bb.co, %bb.w, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit226, %bb.bi, %bb.bj, %bb.n, %bb.k, %bb.j, %bb.o, %bb.p, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit286, %.critedge20, %_ZN12_GLOBAL__N_119SystemZDAGToDAGISel12tryRISBGZeroEPN4llvm6SDNodeE.exit.thread444, %_ZN12_GLOBAL__N_119SystemZDAGToDAGISel12tryRISBGZeroEPN4llvm6SDNodeE.exit.thread, %bb.h, %bb.fd, %bb.fe, %_ZNK4llvm8TypeSizecvmEv.exit322, %bb.da, %.critedge219, %bb.cw, %bb.bk, %bb.bd, %bb.i, %bb.c
  %.2 = phi ptr [ %1, %bb.c ], [ %1, %bb.j ], [ %1, %.critedge20 ], [ %1, %bb.i ], [ %1, %bb.fd ], [ %1, %_ZN12_GLOBAL__N_119SystemZDAGToDAGISel12tryRISBGZeroEPN4llvm6SDNodeE.exit.thread444 ], [ %1, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit226 ], [ %1, %bb.bd ], [ %1, %bb.bk ], [ %1, %bb.n ], [ %1, %bb.cw ], [ %1, %.critedge219 ], [ %1, %bb.da ], [ %1, %_ZNK4llvm8TypeSizecvmEv.exit322 ], [ %1, %bb.fe ], [ %1, %bb.h ], [ %1, %_ZN12_GLOBAL__N_119SystemZDAGToDAGISel12tryRISBGZeroEPN4llvm6SDNodeE.exit.thread ], [ %1, %bb.w ], [ %1, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit286 ], [ %1, %bb.p ], [ %1, %bb.o ], [ %1, %bb.k ], [ %1, %bb.bj ], [ %1, %bb.bi ], [ %i.pp, %bb.co ], [ %1, %bb.cn ]
  call void @_ZN4llvm16SelectionDAGISel16SelectCodeCommonEPNS_6SDNodeEPKhjS4_(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef %.2, ptr noundef nonnull @_ZZN12_GLOBAL__N_119SystemZDAGToDAGISel10SelectCodeEPN4llvm6SDNodeEE12MatcherTable, i32 noundef 134089, ptr noundef nonnull @_ZZN12_GLOBAL__N_119SystemZDAGToDAGISel10SelectCodeEPN4llvm6SDNodeEE12OperandLists) #17
  br label %.critedge223

.critedge217:                                     ; preds = %bb.cv, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #17
  br label %.critedge223

.critedge223:                                     ; preds = %_ZN12_GLOBAL__N_119SystemZDAGToDAGISel12tryRISBGZeroEPN4llvm6SDNodeE.exit, %bb.q, %bb.cy, %_ZN4llvm5APIntD2Ev.exit, %bb.bw, %bb.fh, %.critedge, %bb.e, %bb.g, %bb.s, %.critedge213, %.critedge217, %.critedge221, %_ZN12_GLOBAL__N_119SystemZDAGToDAGISel30tryFoldLoadStoreIntoMemOperandEPN4llvm6SDNodeE.exit, %bb.fe, %bb.fd, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_119SystemZDAGToDAGISel28SelectInlineAsmMemoryOperandERKN4llvm7SDValueENS1_9InlineAsm14ConstraintCodeERSt6vectorIS2_SaIS2_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(960) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, i32 noundef %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 align 2 {
switch.lookup:
  %4 = alloca %"struct.(anonymous namespace)::SystemZAddressingMode", align 8 ; 13 uses
  %5 = alloca %"class.llvm::SDValue", align 8     ; 7 uses
  %6 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %7 = alloca %"class.llvm::SDLoc", align 8       ; 7 uses
  %8 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %switch.tableidx = add nsw i32 %2, -2           ; 2 uses
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN12_GLOBAL__N_119SystemZDAGToDAGISel28SelectInlineAsmMemoryOperandERKN4llvm7SDValueENS1_9InlineAsm14ConstraintCodeERSt6vectorIS2_SaIS2_EE, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.c = zext nneg i32 %switch.tableidx to i64
  %switch.gep107 = getelementptr inbounds nuw i8, ptr @switch.table._ZN12_GLOBAL__N_119SystemZDAGToDAGISel28SelectInlineAsmMemoryOperandERKN4llvm7SDValueENS1_9InlineAsm14ConstraintCodeERSt6vectorIS2_SaIS2_EE.27, i64 %i.c
  %switch.load108 = load i8, ptr %switch.gep107, align 1
  %switch.ext109 = zext i8 %switch.load108 to i32
  %.sroa.013.0.copyload = load ptr, ptr %1, align 8, !tbaa !358 ; 2 uses
  %.sroa.214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.214.0.copyload = load i32, ptr %.sroa.214.0..sroa_idx, align 8, !tbaa !359 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store i32 %switch.ext109, ptr %4, align 8, !tbaa !403
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %switch.ext, ptr %i.d, align 4, !tbaa !405
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.e, align 8, !tbaa !345
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.f, align 8, !tbaa !385
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i8 0, ptr %i.h, align 8, !tbaa !406
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.g, i8 0, i64 20, i1 false)
  %i.i = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_119SystemZDAGToDAGISel13selectAddressEN4llvm7SDValueERNS_21SystemZAddressingModeE(ptr noundef nonnull readonly align 8 dereferenceable(960) %0, ptr %.sroa.013.0.copyload, i32 %.sroa.214.0.copyload, ptr noundef nonnull align 8 dereferenceable(49) %4) ; 2 uses
  br i1 %i.i, label %bb.a, label %_ZNK12_GLOBAL__N_119SystemZDAGToDAGISel13selectBDXAddrENS_21SystemZAddressingMode8AddrFormENS1_9DispRangeEN4llvm7SDValueERS5_S6_S6_.exit

bb.a:                                             ; preds = %switch.lookup
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.013.0.copyload, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !360
  %i.l = zext i32 %.sroa.214.0.copyload to i64
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.m, align 8, !tbaa !361 ; 2 uses
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.21.0.copyload.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8, !tbaa !363 ; 2 uses
  call fastcc void @_ZNK12_GLOBAL__N_119SystemZDAGToDAGISel18getAddressOperandsERKNS_21SystemZAddressingModeEN4llvm3EVTERNS4_7SDValueES7_(ptr noundef nonnull readonly align 8 dereferenceable(960) %0, ptr noundef nonnull readonly align 8 dereferenceable(49) %4, i16 %.sroa.0.0.copyload.i.i.i, ptr %.sroa.21.0.copyload.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(12) %6)
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.065.0.copyload70 = load ptr, ptr %i.n, align 8, !tbaa !358 ; 2 uses
  %.sroa.12.0..sroa_idx75 = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.sroa.12.0.copyload76 = load i32, ptr %.sroa.12.0..sroa_idx75, align 8, !tbaa !359
  %.not.i.i = icmp eq ptr %.sroa.065.0.copyload70, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !329
  %i.q = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.p, i32 0, i16 %.sroa.0.0.copyload.i.i.i, ptr %.sroa.21.0.copyload.i.i.i) #17 ; 2 uses
  %.fca.0.extract.i.i = extractvalue { ptr, i32 } %i.q, 0
  %.fca.1.extract.i.i = extractvalue { ptr, i32 } %i.q, 1
  br label %bb.c

_ZNK12_GLOBAL__N_119SystemZDAGToDAGISel13selectBDXAddrENS_21SystemZAddressingMode8AddrFormENS1_9DispRangeEN4llvm7SDValueERS5_S6_S6_.exit: ; preds = %switch.lookup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.t

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.065.1.ph = phi ptr [ %.sroa.065.0.copyload70, %bb.a ], [ %.fca.0.extract.i.i, %bb.b ] ; 4 uses
  %.sroa.12.1.ph = phi i32 [ %.sroa.12.0.copyload76, %bb.a ], [ %.fca.1.extract.i.i, %bb.b ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !164  ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !26
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 200
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef ptr %i.v(ptr noundef nonnull align 8 dereferenceable(519424) %i.s) #17 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !26
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 320
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef ptr %i.z(ptr noundef nonnull align 8 dereferenceable(316) %i.w, i32 noundef 0) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %.sroa.011.0.copyload = load ptr, ptr %5, align 8 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload, i64 72
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !354
  store i64 %i.ac, ptr %7, align 8, !tbaa !354
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload, i64 68
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !355
  store i32 %i.af, ptr %i.ad, align 8, !tbaa !356
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !329
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  %i.aj = load i16, ptr %i.ai, align 4, !tbaa !412
  %i.ak = zext i16 %i.aj to i64
  %i.al = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.ah, i64 noundef %i.ak, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #17 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.al, 0 ; 2 uses
  %.fca.1.extract = extractvalue { ptr, i32 } %i.al, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload, i64 24
  %i.an = load i32, ptr %i.am, align 8, !tbaa !343
  switch i32 %i.an, label %bb.d [
    i32 41, label %bb.e
    i32 10, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.ao = load ptr, ptr %i.ag, align 8, !tbaa !329
  %i.ap = load i32, ptr %i.a, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !360
  %i.as = zext i32 %i.ap to i64
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %i.as ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.at, align 8, !tbaa !361
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !363
  store ptr %.fca.0.extract, ptr %8, align 8, !tbaa !358
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !359
  %i.au = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.ao, i32 noundef 13, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8) #17
  store ptr %i.au, ptr %5, align 8
  store i32 0, ptr %i.a, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.c, %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.065.1.ph, i64 24
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !343
  %.not27 = icmp eq i32 %i.aw, 10
  br i1 %.not27, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = load ptr, ptr %i.ag, align 8, !tbaa !329
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.065.1.ph, i64 48
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !360
  %i.ba = zext i32 %.sroa.12.1.ph to i64
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.ba ; 2 uses
  %.sroa.0.0.copyload.i.i28 = load i16, ptr %i.bb, align 8, !tbaa !361
  %.sroa.21.0..sroa_idx.i.i29 = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.sroa.21.0.copyload.i.i30 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i29, align 8, !tbaa !363
  store ptr %.sroa.065.1.ph, ptr %9, align 8, !tbaa !358
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.sroa.12.1.ph, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !359
  store ptr %.fca.0.extract, ptr %10, align 8, !tbaa !358
  %.sroa.5.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.5.0..sroa_idx7, align 8, !tbaa !359
  %i.bc = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.ax, i32 noundef 13, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %.sroa.0.0.copyload.i.i28, ptr %.sroa.21.0.copyload.i.i30, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10) #17
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.065.0 = phi ptr [ %.sroa.065.1.ph, %bb.e ], [ %i.bc, %bb.f ] ; 2 uses
  %.sroa.12.0 = phi i32 [ %.sroa.12.1.ph, %bb.e ], [ 0, %bb.f ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 9 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !414 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !416
  %.not.i = icmp eq ptr %i.be, %i.bg
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false)
  %i.bh = load ptr, ptr %i.bd, align 8, !tbaa !414
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  store ptr %i.bi, ptr %i.bd, align 8, !tbaa !414
  %.pre = load ptr, ptr %i.bf, align 8, !tbaa !416
  br label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit

bb.i:                                             ; preds = %bb.g
  %i.bj = load ptr, ptr %3, align 8, !tbaa !417   ; 5 uses
  %i.bk = ptrtoint ptr %i.be to i64
  %i.bl = ptrtoint ptr %i.bj to i64               ; 2 uses
  %i.bm = sub i64 %i.bk, %i.bl                    ; 3 uses
  %i.bn = icmp eq i64 %i.bm, 9223372036854775792
  br i1 %i.bn, label %bb.j, label %_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #18
  unreachable

_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.bo = ashr exact i64 %i.bm, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bo, i64 1)
  %i.bp = add nsw i64 %.sroa.speculated.i.i.i, %i.bo ; 2 uses
  %i.bq = icmp ult i64 %i.bp, %i.bo
  %i.br = call i64 @llvm.umin.i64(i64 %i.bp, i64 576460752303423487)
  %i.bs = select i1 %i.bq, i64 576460752303423487, i64 %i.br ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bs, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bt = shl nuw nsw i64 %i.bs, 4
  %i.bu = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bt) #19 ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bm
end_hunk_0
begin_hunk_1_@_ZNK12_GLOBAL__N_119SystemZDAGToDAGISel13expandAddressERNS_21SystemZAddressingModeEb:bb.a
  %.0.i.i.i.i = select i1 %i.ax, i64 0, i64 %i.bb
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

bb.r:                                             ; preds = %bb.p
  %i.bc = load ptr, ptr %i.as, align 8, !tbaa !353
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !14
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit:   ; preds = %bb.q, %bb.r
  %.0.i.i.i = phi i64 [ %.0.i.i.i.i, %bb.q ], [ %i.bd, %bb.r ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !535
  %i.bg = add i64 %i.bf, %.0.i.i.i                ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !405
  switch i32 %i.bi, label %bb.s [
    i32 0, label %.split.i
    i32 1, label %_ZL10selectDispN12_GLOBAL__N_121SystemZAddressingMode9DispRangeEl.exit.i
    i32 2, label %_ZL10selectDispN12_GLOBAL__N_121SystemZAddressingMode9DispRangeEl.exit.i
    i32 4, label %_ZL10selectDispN12_GLOBAL__N_121SystemZAddressingMode9DispRangeEl.exit.i
    i32 3, label %.split12.i
  ]

.split.i:                                         ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit
  %i.bj = icmp ult i64 %i.bg, 4096
  br i1 %i.bj, label %bb.t, label %_ZL17expandAdjDynAllocRN12_GLOBAL__N_121SystemZAddressingModeEbN4llvm7SDValueE.exit.thread

.split12.i:                                       ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit
  %i.bk = add i64 %i.bg, 524288
  %spec.select.i.i = icmp ult i64 %i.bk, 1048568
  br i1 %spec.select.i.i, label %bb.t, label %_ZL17expandAdjDynAllocRN12_GLOBAL__N_121SystemZAddressingModeEbN4llvm7SDValueE.exit.thread

bb.s:                                             ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit
  unreachable

_ZL10selectDispN12_GLOBAL__N_121SystemZAddressingMode9DispRangeEl.exit.i: ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit
  %i.bl = add i64 %i.bg, 524288
  %i.bm = icmp ult i64 %i.bl, 1048576
  br i1 %i.bm, label %bb.t, label %_ZL17expandAdjDynAllocRN12_GLOBAL__N_121SystemZAddressingModeEbN4llvm7SDValueE.exit.thread

bb.t:                                             ; preds = %_ZL10selectDispN12_GLOBAL__N_121SystemZAddressingMode9DispRangeEl.exit.i, %.split12.i, %.split.i
  %.7.i.i61 = select i1 %1, i64 16, i64 40
  store ptr %.sroa.05.0.copyload, ptr %i.a, align 8, !tbaa !358
  %.sroa.3.0..sroa_idx3.i.i62 = getelementptr inbounds nuw i8, ptr %0, i64 %.7.i.i61
  store i32 %.sroa.8.0.copyload, ptr %.sroa.3.0..sroa_idx3.i.i62, align 8, !tbaa !359
  store i64 %i.bg, ptr %i.be, align 8, !tbaa !535
  br label %_ZL17expandAdjDynAllocRN12_GLOBAL__N_121SystemZAddressingModeEbN4llvm7SDValueE.exit.thread

bb.u:                                             ; preds = %bb.o
  %i.bn = icmp eq i32 %i.ae, 12
  br i1 %i.bn, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %bb.u
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload, i64 88
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !348 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !351 ; 3 uses
  %i.bt = icmp ult i32 %i.bs, 65
  br i1 %i.bt, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bu = load i64, ptr %i.bq, align 8, !tbaa !353
  %i.bv = icmp eq i32 %i.bs, 0
  %i.bw = sub nuw nsw i32 64, %i.bs
  %i.bx = zext nneg i32 %i.bw to i64              ; 2 uses
  %i.by = shl i64 %i.bu, %i.bx
  %i.bz = ashr exact i64 %i.by, %i.bx
  %.0.i.i.i.i64 = select i1 %i.bv, i64 0, i64 %i.bz
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit65

bb.x:                                             ; preds = %bb.v
  %i.ca = load ptr, ptr %i.bq, align 8, !tbaa !353
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !14
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit65

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit65: ; preds = %bb.w, %bb.x
  %.0.i.i.i63 = phi i64 [ %.0.i.i.i.i64, %bb.w ], [ %i.cb, %bb.x ]
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !535
  %i.ce = add i64 %i.cd, %.0.i.i.i63              ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !405
  switch i32 %i.cg, label %bb.y [
    i32 0, label %.split.i73
    i32 1, label %_ZL10selectDispN12_GLOBAL__N_121SystemZAddressingMode9DispRangeEl.exit.i72
    i32 2, label %_ZL10selectDispN12_GLOBAL__N_121SystemZAddressingMode9DispRangeEl.exit.i72
    i32 4, label %_ZL10selectDispN12_GLOBAL__N_121SystemZAddressingMode9DispRangeEl.exit.i72
    i32 3, label %.split12.i66
  ]

.split.i73:                                       ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit65
  %i.ch = icmp ult i64 %i.ce, 4096
  br i1 %i.ch, label %bb.z, label %_ZL17expandAdjDynAllocRN12_GLOBAL__N_121SystemZAddressingModeEbN4llvm7SDValueE.exit.thread

.split12.i66:                                     ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit65
  %i.ci = add i64 %i.ce, 524288
  %spec.select.i.i67 = icmp ult i64 %i.ci, 1048568
  br i1 %spec.select.i.i67, label %bb.z, label %_ZL17expandAdjDynAllocRN12_GLOBAL__N_121SystemZAddressingModeEbN4llvm7SDValueE.exit.thread

bb.y:                                             ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit65
  unreachable

_ZL10selectDispN12_GLOBAL__N_121SystemZAddressingMode9DispRangeEl.exit.i72: ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit65, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit65, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit65
  %i.cj = add i64 %i.ce, 524288
  %i.ck = icmp ult i64 %i.cj, 1048576
  br i1 %i.ck, label %bb.z, label %_ZL17expandAdjDynAllocRN12_GLOBAL__N_121SystemZAddressingModeEbN4llvm7SDValueE.exit.thread

bb.z:                                             ; preds = %_ZL10selectDispN12_GLOBAL__N_121SystemZAddressingMode9DispRangeEl.exit.i72, %.split12.i66, %.split.i73
  %.7.i.i70 = select i1 %1, i64 16, i64 40
  store ptr %.sroa.07.0.copyload9, ptr %i.a, align 8, !tbaa !358
  %.sroa.3.0..sroa_idx3.i.i71 = getelementptr inbounds nuw i8, ptr %0, i64 %.7.i.i70
  store i32 %.sroa.810.0.copyload, ptr %.sroa.3.0..sroa_idx3.i.i71, align 8, !tbaa !359
  store i64 %i.ce, ptr %i.cc, align 8, !tbaa !535
  br label %_ZL17expandAdjDynAllocRN12_GLOBAL__N_121SystemZAddressingModeEbN4llvm7SDValueE.exit.thread

bb.aa:                                            ; preds = %bb.u
  br i1 %1, label %bb.ab, label %_ZL17expandAdjDynAllocRN12_GLOBAL__N_121SystemZAddressingModeEbN4llvm7SDValueE.exit

bb.ab:                                            ; preds = %bb.aa
  %.val.i75 = load i32, ptr %0, align 8, !tbaa !403
  %.not7.i = icmp eq i32 %.val.i75, 0
  br i1 %.not7.i, label %_ZL17expandAdjDynAllocRN12_GLOBAL__N_121SystemZAddressingModeEbN4llvm7SDValueE.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !345
  %.not.i = icmp eq ptr %i.cm, null
  br i1 %.not.i, label %_ZL11expandIndexRN12_GLOBAL__N_121SystemZAddressingModeEN4llvm7SDValueES3_.exit, label %_ZL17expandAdjDynAllocRN12_GLOBAL__N_121SystemZAddressingModeEbN4llvm7SDValueE.exit

_ZL11expandIndexRN12_GLOBAL__N_121SystemZAddressingModeEN4llvm7SDValueES3_.exit: ; preds = %bb.ac
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.07.0.copyload9, ptr %i.cn, align 8, !tbaa !358
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.810.0.copyload, ptr %.sroa.25.0..sroa_idx.i, align 8, !tbaa !359
  store ptr %.sroa.05.0.copyload, ptr %i.cl, align 8, !tbaa !358
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sroa.8.0.copyload, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !359
  br label %_ZL17expandAdjDynAllocRN12_GLOBAL__N_121SystemZAddressingModeEbN4llvm7SDValueE.exit.thread

_ZL17expandAdjDynAllocRN12_GLOBAL__N_121SystemZAddressingModeEbN4llvm7SDValueE.exit: ; preds = %bb.ab, %bb.ac, %bb.aa, %.critedge.thread
  %.04832 = phi i32 [ %.04834, %.critedge.thread ], [ %.04833, %bb.aa ], [ %.04833, %bb.ac ], [ %.04833, %bb.ab ]
  %.sroa.014.031 = phi ptr [ %.sroa.014.029, %.critedge.thread ], [ %.sroa.014.030, %bb.aa ], [ %.sroa.014.030, %bb.ac ], [ %.sroa.014.030, %bb.ab ]
  %i.co = icmp eq i32 %.04832, 576
  br i1 %i.co, label %bb.ad, label %_ZL17expandAdjDynAllocRN12_GLOBAL__N_121SystemZAddressingModeEbN4llvm7SDValueE.exit.thread

bb.ad:                                            ; preds = %_ZL17expandAdjDynAllocRN12_GLOBAL__N_121SystemZAddressingModeEbN4llvm7SDValueE.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.014.031, i64 40
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !344 ; 3 uses
  %.sroa.03.0.copyload = load ptr, ptr %i.cq, align 8, !tbaa !358
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 40
  %.sroa.02.0.copyload = load ptr, ptr %i.cr, align 8, !tbaa !358 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 48
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !359
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload, i64 40
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !344
  %.sroa.0.0.copyload1 = load ptr, ptr %i.ct, align 8, !tbaa !358
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 96
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !537
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1, i64 96
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !537
  %i.cy = sub nsw i64 %i.cv, %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !535
  %i.db = add i64 %i.da, %i.cy                    ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !405
  switch i32 %i.dd, label %bb.ae [
    i32 0, label %.split.i84
    i32 1, label %_ZL10selectDispN12_GLOBAL__N_121SystemZAddressingMode9DispRangeEl.exit.i83
    i32 2, label %_ZL10selectDispN12_GLOBAL__N_121SystemZAddressingMode9DispRangeEl.exit.i83
    i32 4, label %_ZL10selectDispN12_GLOBAL__N_121SystemZAddressingMode9DispRangeEl.exit.i83
    i32 3, label %.split12.i77
  ]

.split.i84:                                       ; preds = %bb.ad
  %i.de = icmp ult i64 %i.db, 4096
  br i1 %i.de, label %bb.af, label %_ZL17expandAdjDynAllocRN12_GLOBAL__N_121SystemZAddressingModeEbN4llvm7SDValueE.exit.thread

.split12.i77:                                     ; preds = %bb.ad
  %i.df = add i64 %i.db, 524288
  %spec.select.i.i78 = icmp ult i64 %i.df, 1048568
  br i1 %spec.select.i.i78, label %bb.af, label %_ZL17expandAdjDynAllocRN12_GLOBAL__N_121SystemZAddressingModeEbN4llvm7SDValueE.exit.thread

bb.ae:                                            ; preds = %bb.ad
  unreachable

_ZL10selectDispN12_GLOBAL__N_121SystemZAddressingMode9DispRangeEl.exit.i83: ; preds = %bb.ad, %bb.ad, %bb.ad
  %i.dg = add i64 %i.db, 524288
  %i.dh = icmp ult i64 %i.dg, 1048576
  br i1 %i.dh, label %bb.af, label %_ZL17expandAdjDynAllocRN12_GLOBAL__N_121SystemZAddressingModeEbN4llvm7SDValueE.exit.thread

bb.af:                                            ; preds = %_ZL10selectDispN12_GLOBAL__N_121SystemZAddressingMode9DispRangeEl.exit.i83, %.split12.i77, %.split.i84
  %.7.i.i81 = select i1 %1, i64 16, i64 40
  store ptr %.sroa.02.0.copyload, ptr %i.a, align 8, !tbaa !358
  %.sroa.3.0..sroa_idx3.i.i82 = getelementptr inbounds nuw i8, ptr %0, i64 %.7.i.i81
  store i32 %.sroa.5.0.copyload, ptr %.sroa.3.0..sroa_idx3.i.i82, align 8, !tbaa !359
  store i64 %i.db, ptr %i.cz, align 8, !tbaa !535
  br label %_ZL17expandAdjDynAllocRN12_GLOBAL__N_121SystemZAddressingModeEbN4llvm7SDValueE.exit.thread

_ZL17expandAdjDynAllocRN12_GLOBAL__N_121SystemZAddressingModeEbN4llvm7SDValueE.exit.thread: ; preds = %bb.af, %_ZL10selectDispN12_GLOBAL__N_121SystemZAddressingMode9DispRangeEl.exit.i83, %.split12.i77, %.split.i84, %_ZL10selectDispN12_GLOBAL__N_121SystemZAddressingMode9DispRangeEl.exit.i72, %.split12.i66, %.split.i73, %_ZL10selectDispN12_GLOBAL__N_121SystemZAddressingMode9DispRangeEl.exit.i, %.split12.i, %.split.i, %bb.m, %bb.l, %bb.i, %bb.h, %bb.z, %bb.t, %bb.n, %bb.j, %_ZL11expandIndexRN12_GLOBAL__N_121SystemZAddressingModeEN4llvm7SDValueES3_.exit, %_ZL17expandAdjDynAllocRN12_GLOBAL__N_121SystemZAddressingModeEbN4llvm7SDValueE.exit
  %.1 = phi i1 [ true, %_ZL11expandIndexRN12_GLOBAL__N_121SystemZAddressingModeEN4llvm7SDValueES3_.exit ], [ false, %_ZL17expandAdjDynAllocRN12_GLOBAL__N_121SystemZAddressingModeEbN4llvm7SDValueE.exit ], [ true, %bb.z ], [ false, %_ZL10selectDispN12_GLOBAL__N_121SystemZAddressingMode9DispRangeEl.exit.i72 ], [ false, %.split.i73 ], [ true, %bb.t ], [ false, %_ZL10selectDispN12_GLOBAL__N_121SystemZAddressingMode9DispRangeEl.exit.i ], [ false, %.split.i ], [ false, %bb.m ], [ true, %bb.n ], [ false, %bb.i ], [ true, %bb.j ], [ false, %.split12.i66 ], [ false, %.split12.i ], [ false, %bb.l ], [ false, %bb.h ], [ false, %.split.i84 ], [ false, %_ZL10selectDispN12_GLOBAL__N_121SystemZAddressingMode9DispRangeEl.exit.i83 ], [ true, %bb.af ], [ false, %.split12.i77 ]
  ret i1 %.1
}

declare noundef zeroext i1 @_ZNK4llvm12SelectionDAG24isBaseWithConstantOffsetENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920), ptr, i32) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNK12_GLOBAL__N_119SystemZDAGToDAGISel18getAddressOperandsERKNS_21SystemZAddressingModeEN4llvm3EVTERNS4_7SDValueES7_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(960) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(49) %1, i16 %2, ptr %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) initializes((0, 12)) %4, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) initializes((0, 12)) %5) unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %7 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %i.a, i64 12, i1 false), !tbaa.struct !407
  %i.b = load ptr, ptr %4, align 8, !tbaa !345    ; 7 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !329
  %i.e = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.d, i32 0, i16 %2, ptr %3) #17 ; 2 uses
  %.fca.0.extract35 = extractvalue { ptr, i32 } %i.e, 0 ; 2 uses
  %.fca.1.extract36 = extractvalue { ptr, i32 } %i.e, 1
  store ptr %.fca.0.extract35, ptr %4, align 8, !tbaa !358
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract36, ptr %.sroa.443.0..sroa_idx, align 8, !tbaa !359
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !343
  %i.h = icmp eq i32 %i.g, 16
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.j = load i32, ptr %i.i, align 8, !tbaa !540
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !329
  %i.m = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG13getFrameIndexEiNS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(920) %i.l, i32 noundef %i.j, i16 %2, ptr %3, i1 noundef zeroext true) #17 ; 2 uses
  %.fca.0.extract25 = extractvalue { ptr, i32 } %i.m, 0 ; 2 uses
  %.fca.1.extract26 = extractvalue { ptr, i32 } %i.m, 1
  store ptr %.fca.0.extract25, ptr %4, align 8, !tbaa !358
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract26, ptr %.sroa.433.0..sroa_idx, align 8, !tbaa !359
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !385
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !360
  %i.r = zext i32 %i.o to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.r ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.s, align 8, !tbaa !361
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !363
  %.not.i = icmp ne i16 %.sroa.0.0.copyload.i.i, %2
  %i.t = icmp ne ptr %.sroa.21.0.copyload.i.i, %3
  %i.u = select i1 %.not.i, i1 true, i1 %i.t
  br i1 %i.u, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.w = load i64, ptr %i.v, align 8, !tbaa !354
  store i64 %i.w, ptr %6, align 8, !tbaa !354
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.z = load i32, ptr %i.y, align 4, !tbaa !355
  store i32 %i.z, ptr %i.x, align 8, !tbaa !356
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !329
  %i.ac = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.ab, i32 noundef 230, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 %2, ptr %3, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %4) #17 ; 2 uses
  %.fca.0.extract10 = extractvalue { ptr, i32 } %i.ac, 0 ; 7 uses
  %.fca.1.extract11 = extractvalue { ptr, i32 } %i.ac, 1
  %i.ad = load ptr, ptr %4, align 8, !tbaa !345   ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.fca.0.extract10, i64 36 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !364
  %i.ag = icmp eq i32 %i.af, -1
  br i1 %i.ag, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = call noundef i32 @_ZN4llvm16SelectionDAGISel22getUninvalidatedNodeIdEPNS_6SDNodeE(ptr noundef nonnull %.fca.0.extract10) #17
  %i.ai = call noundef i32 @_ZN4llvm16SelectionDAGISel22getUninvalidatedNodeIdEPNS_6SDNodeE(ptr noundef %i.ad) #17
  %i.aj = icmp sgt i32 %i.ah, %i.ai
  br i1 %i.aj, label %bb.h, label %_ZL13insertDAGNodePN4llvm12SelectionDAGEPNS_6SDNodeENS_7SDValueE.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.fca.0.extract10, i64 8 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.fca.0.extract10, i64 16 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !330 ; 2 uses
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !534 ; 2 uses
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !534
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !330
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false)
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !534 ; 2 uses
  store ptr %i.ak, ptr %i.am, align 8, !tbaa !330
  store ptr %i.aq, ptr %i.al, align 8, !tbaa !534
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.al, ptr %i.ar, align 8, !tbaa !330
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !534
  %i.as = getelementptr inbounds nuw i8, ptr %i.ad, i64 36
  %i.at = load i32, ptr %i.as, align 4, !tbaa !364
  store i32 %i.at, ptr %i.ae, align 4, !tbaa !364
  call void @_ZN4llvm16SelectionDAGISel16InvalidateNodeIdEPNS_6SDNodeE(ptr noundef nonnull %.fca.0.extract10) #17
  br label %_ZL13insertDAGNodePN4llvm12SelectionDAGEPNS_6SDNodeENS_7SDValueE.exit

_ZL13insertDAGNodePN4llvm12SelectionDAGEPNS_6SDNodeENS_7SDValueE.exit: ; preds = %bb.g, %bb.h
  store ptr %.fca.0.extract10, ptr %4, align 8, !tbaa !358
  store i32 %.fca.1.extract11, ptr %i.n, align 8, !tbaa !359
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %_ZL13insertDAGNodePN4llvm12SelectionDAGEPNS_6SDNodeENS_7SDValueE.exit, %bb.e, %bb.b
  %.sroa.04.0.copyload = phi ptr [ %.fca.0.extract25, %bb.d ], [ %.fca.0.extract10, %_ZL13insertDAGNodePN4llvm12SelectionDAGEPNS_6SDNodeENS_7SDValueE.exit ], [ %i.b, %bb.e ], [ %.fca.0.extract35, %bb.b ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !329
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !535
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.04.0.copyload, i64 72
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !354
  store i64 %i.az, ptr %7, align 8, !tbaa !354
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.04.0.copyload, i64 68
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !355
  store i32 %i.bc, ptr %i.ba, align 8, !tbaa !356
  %i.bd = call { ptr, i32 } @_ZN4llvm12SelectionDAG17getSignedConstantElRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.av, i64 noundef %i.ax, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %2, ptr %3, i1 noundef zeroext true, i1 noundef zeroext false) #17 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.bd, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.bd, 1
  store ptr %.fca.0.extract, ptr %5, align 8, !tbaa !358
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !359
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  ret void
}

declare { ptr, i32 } @_ZN4llvm12SelectionDAG13getFrameIndexEiNS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, i16, ptr, i1 noundef zeroext) local_unnamed_addr #4

declare { i16, ptr } @_ZNK4llvm3EVT40changeExtendedVectorElementTypeToIntegerEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i16 @_ZN4llvm3MVT19getScalableVectorVTES0_j(i16 %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i16 %0, 2                        ; 7 uses
  %i.b = icmp eq i32 %1, 1                        ; 9 uses
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.bb, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %1, 2                        ; 9 uses
  %or.cond3 = and i1 %i.a, %i.c
  br i1 %or.cond3, label %bb.bb, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq i32 %1, 4                        ; 9 uses
  %or.cond5 = and i1 %i.a, %i.d
  br i1 %or.cond5, label %bb.bb, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = icmp eq i32 %1, 8                        ; 9 uses
  %or.cond7 = and i1 %i.a, %i.e
  br i1 %or.cond7, label %bb.bb, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = icmp eq i32 %1, 16                       ; 8 uses
  %or.cond9 = and i1 %i.a, %i.f
  br i1 %or.cond9, label %bb.bb, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = icmp eq i32 %1, 32                       ; 7 uses
  %or.cond11 = and i1 %i.a, %i.g
  br i1 %or.cond11, label %bb.bb, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = icmp eq i32 %1, 64                       ; 2 uses
  %or.cond13 = and i1 %i.a, %i.h
  br i1 %or.cond13, label %bb.bb, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = icmp eq i16 %0, 5                        ; 7 uses
  %or.cond15 = and i1 %i.i, %i.b
  br i1 %or.cond15, label %bb.bb, label %bb.i

bb.i:                                             ; preds = %bb.h
  %or.cond17 = and i1 %i.i, %i.c
  br i1 %or.cond17, label %bb.bb, label %bb.j

bb.j:                                             ; preds = %bb.i
  %or.cond19 = and i1 %i.i, %i.d
  br i1 %or.cond19, label %bb.bb, label %bb.k

bb.k:                                             ; preds = %bb.j
  %or.cond21 = and i1 %i.i, %i.e
  br i1 %or.cond21, label %bb.bb, label %bb.l

bb.l:                                             ; preds = %bb.k
  %or.cond23 = and i1 %i.i, %i.f
end_hunk_1
