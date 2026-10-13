Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Intrinsics?download=true
inline.NumInlined: 2203
inline.NumDeleted: 889
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4llvm9Intrinsic27getIntrinsicForClangBuiltinENS_9StringRefES1_:bb.a
  br i1 %i.w, label %.lr.ph.i.i.i, label %_ZN4llvm11lower_boundIRA10_KZNS_9Intrinsic27getIntrinsicForClangBuiltinENS_9StringRefES2_E12BuiltinEntryRS2_EEDaOT_OT0_.exit, !llvm.loop !251

_ZN4llvm11lower_boundIRA10_KZNS_9Intrinsic27getIntrinsicForClangBuiltinENS_9StringRefES2_E12BuiltinEntryRS2_EEDaOT_OT0_.exit: ; preds = %.lr.ph.i.i.i
  %.not = icmp eq ptr %.112.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZZN4llvm9Intrinsic27getIntrinsicForClangBuiltinENS_9StringRefES1_E5Names, i64 80)
  br i1 %.not, label %_ZN4llvm9StringRef13consume_frontES0_.exit.thread.preheader, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11lower_boundIRA10_KZNS_9Intrinsic27getIntrinsicForClangBuiltinENS_9StringRefES2_E12BuiltinEntryRS2_EEDaOT_OT0_.exit
  %i.x = getelementptr i8, ptr %.112.i.i.i, i64 4
  %.val24 = load i32, ptr %i.x, align 4, !tbaa !254
  %i.y = zext i32 %.val24 to i64
  %i.z = getelementptr inbounds nuw i8, ptr @_ZZN4llvm9Intrinsic27getIntrinsicForClangBuiltinENS_9StringRefES1_E19BuiltinNamesStorage, i64 %i.y ; 2 uses
  %i.aa = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #19
  %.not.i = icmp eq i64 %i.aa, %i.l
  br i1 %.not.i, label %bb.d, label %_ZN4llvm9StringRef13consume_frontES0_.exit.thread.preheader

bb.d:                                             ; preds = %bb.c
  %i.ab = icmp eq i64 %i.l, 0
  br i1 %i.ab, label %_ZN4llvmneENS_9StringRefES0_.exit.thread.sink.split, label %_ZN4llvmeqENS_9StringRefES0_.exit

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %bb.d
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.z, ptr nonnull %i.k, i64 %i.l)
  %i.ac = icmp eq i32 %bcmp.i, 0
  br i1 %i.ac, label %_ZN4llvmneENS_9StringRefES0_.exit.thread.sink.split, label %_ZN4llvm9StringRef13consume_frontES0_.exit.thread.preheader

_ZN4llvm9StringRef13consume_frontES0_.exit.thread.preheader: ; preds = %bb.c, %_ZN4llvm11lower_boundIRA10_KZNS_9Intrinsic27getIntrinsicForClangBuiltinENS_9StringRefES2_E12BuiltinEntryRS2_EEDaOT_OT0_.exit, %_ZN4llvmeqENS_9StringRefES0_.exit, %bb.a, %_ZNK4llvm9StringRef11starts_withES0_.exit.i
  br label %_ZN4llvm9StringRef13consume_frontES0_.exit.thread

_ZN4llvm9StringRef13consume_frontES0_.exit.thread: ; preds = %_ZN4llvm9StringRef13consume_frontES0_.exit.thread.preheader, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPKZN4llvm9Intrinsic27getIntrinsicForClangBuiltinENS3_9StringRefES5_E11TargetEntryKS5_EEbT_RT0_.exit.i.i.i
  %.04.i.i.i35 = phi i64 [ %.1.i.i.i41, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPKZN4llvm9Intrinsic27getIntrinsicForClangBuiltinENS3_9StringRefES5_E11TargetEntryKS5_EEbT_RT0_.exit.i.i.i ], [ 16, %_ZN4llvm9StringRef13consume_frontES0_.exit.thread.preheader ] ; 2 uses
  %.0113.i.i.i36 = phi ptr [ %.112.i.i.i40, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPKZN4llvm9Intrinsic27getIntrinsicForClangBuiltinENS3_9StringRefES5_E11TargetEntryKS5_EEbT_RT0_.exit.i.i.i ], [ @_ZZN4llvm9Intrinsic27getIntrinsicForClangBuiltinENS_9StringRefES1_E11TargetTable, %_ZN4llvm9StringRef13consume_frontES0_.exit.thread.preheader ] ; 2 uses
  %i.ad = lshr i64 %.04.i.i.i35, 1                ; 3 uses
  %i.ae = getelementptr inbounds nuw [48 x i8], ptr %.0113.i.i.i36, i64 %i.ad ; 3 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  %.val13.i.i.i = load i64, ptr %i.af, align 8, !tbaa !19 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %.val13.i.i.i) ; 2 uses
  %i.ag = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i, 0
  br i1 %i.ag, label %.thread.i.i.i.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %_ZN4llvm9StringRef13consume_frontES0_.exit.thread
  %.val.i.i.i39 = load ptr, ptr %i.ae, align 8, !tbaa !162
  %i.ah = tail call i32 @memcmp(ptr noundef readonly %.val.i.i.i39, ptr noundef readonly %0, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #22
  %.fr.i.i.i.i.i.i.i = freeze i32 %i.ah           ; 2 uses
  %.not.not.i.i.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i.i.i, 0
  %.inv.i.i.i.i.i.i.i = icmp sgt i32 %.fr.i.i.i.i.i.i.i, -1
  %spec.select.i.i.i.i.i.i.i = select i1 %.inv.i.i.i.i.i.i.i, i32 1, i32 -1
  br i1 %.not.not.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPKZN4llvm9Intrinsic27getIntrinsicForClangBuiltinENS3_9StringRefES5_E11TargetEntryKS5_EEbT_RT0_.exit.i.i.i

.thread.i.i.i.i.i.i.i:                            ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i, %_ZN4llvm9StringRef13consume_frontES0_.exit.thread
  %i.ai = icmp eq i64 %.val13.i.i.i, %1
  br i1 %i.ai, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPKZN4llvm9Intrinsic27getIntrinsicForClangBuiltinENS3_9StringRefES5_E11TargetEntryKS5_EEbT_RT0_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %.thread.i.i.i.i.i.i.i
  %i.aj = icmp ult i64 %.val13.i.i.i, %1
  %i.ak = select i1 %i.aj, i32 -1, i32 1
  br label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPKZN4llvm9Intrinsic27getIntrinsicForClangBuiltinENS3_9StringRefES5_E11TargetEntryKS5_EEbT_RT0_.exit.i.i.i

_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPKZN4llvm9Intrinsic27getIntrinsicForClangBuiltinENS3_9StringRefES5_E11TargetEntryKS5_EEbT_RT0_.exit.i.i.i: ; preds = %bb.e, %.thread.i.i.i.i.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i = phi i32 [ %spec.select.i.i.i.i.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %i.ak, %bb.e ], [ 0, %.thread.i.i.i.i.i.i.i ]
  %i.al = icmp slt i32 %.1.i.i.i.i.i.i.i, 0       ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.an = xor i64 %i.ad, -1
  %i.ao = add nsw i64 %.04.i.i.i35, %i.an
  %.112.i.i.i40 = select i1 %i.al, ptr %i.am, ptr %.0113.i.i.i36 ; 8 uses
  %.1.i.i.i41 = select i1 %i.al, i64 %i.ao, i64 %i.ad ; 2 uses
  %i.ap = icmp sgt i64 %.1.i.i.i41, 0
  br i1 %i.ap, label %_ZN4llvm9StringRef13consume_frontES0_.exit.thread, label %_ZN4llvm11lower_boundIRA16_KZNS_9Intrinsic27getIntrinsicForClangBuiltinENS_9StringRefES2_E11TargetEntryRS2_EEDaOT_OT0_.exit, !llvm.loop !252

_ZN4llvm11lower_boundIRA16_KZNS_9Intrinsic27getIntrinsicForClangBuiltinENS_9StringRefES2_E11TargetEntryRS2_EEDaOT_OT0_.exit: ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPKZN4llvm9Intrinsic27getIntrinsicForClangBuiltinENS3_9StringRefES5_E11TargetEntryKS5_EEbT_RT0_.exit.i.i.i
  %i.aq = icmp eq ptr %.112.i.i.i40, getelementptr inbounds nuw (i8, ptr @_ZZN4llvm9Intrinsic27getIntrinsicForClangBuiltinENS_9StringRefES1_E11TargetTable, i64 768)
  br i1 %i.aq, label %_ZN4llvmneENS_9StringRefES0_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm11lower_boundIRA16_KZNS_9Intrinsic27getIntrinsicForClangBuiltinENS_9StringRefES2_E11TargetEntryRS2_EEDaOT_OT0_.exit
  %.sroa.07.0.copyload = load ptr, ptr %.112.i.i.i40, align 8, !tbaa !162
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.112.i.i.i40, i64 8
  %.sroa.28.0.copyload = load i64, ptr %.sroa.28.0..sroa_idx, align 8, !tbaa !19
  %.not.i.i42 = icmp eq i64 %.sroa.28.0.copyload, %1
  br i1 %.not.i.i42, label %bb.g, label %_ZN4llvmneENS_9StringRefES0_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.ar = icmp eq i64 %1, 0
  br i1 %i.ar, label %_ZN4llvmneENS_9StringRefES0_.exit.thread83, label %_ZN4llvmneENS_9StringRefES0_.exit

_ZN4llvmneENS_9StringRefES0_.exit:                ; preds = %bb.g
  %bcmp.i.i43 = tail call i32 @bcmp(ptr %.sroa.07.0.copyload, ptr %0, i64 %1)
  %.not90 = icmp eq i32 %bcmp.i.i43, 0
  br i1 %.not90, label %_ZN4llvmneENS_9StringRefES0_.exit.thread83, label %_ZN4llvmneENS_9StringRefES0_.exit.thread

_ZN4llvmneENS_9StringRefES0_.exit.thread83:       ; preds = %bb.g, %_ZN4llvmneENS_9StringRefES0_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %.112.i.i.i40, i64 32
  %.sroa.03.0.copyload = load ptr, ptr %i.as, align 8, !tbaa !162
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.112.i.i.i40, i64 40
  %.sroa.24.0.copyload = load i64, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !19 ; 6 uses
  %.not.i.i44 = icmp ult i64 %3, %.sroa.24.0.copyload
  br i1 %.not.i.i44, label %_ZN4llvmneENS_9StringRefES0_.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread83
  %i.at = icmp eq i64 %.sroa.24.0.copyload, 0
  br i1 %i.at, label %bb.i, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i46

_ZNK4llvm9StringRef11starts_withES0_.exit.i46:    ; preds = %bb.h
  %bcmp.i.i47 = tail call i32 @bcmp(ptr %2, ptr %.sroa.03.0.copyload, i64 %.sroa.24.0.copyload)
  %i.au = icmp eq i32 %bcmp.i.i47, 0
  br i1 %i.au, label %bb.i, label %_ZN4llvmneENS_9StringRefES0_.exit.thread

bb.i:                                             ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i46, %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.24.0.copyload ; 2 uses
  %i.aw = sub nuw i64 %3, %.sroa.24.0.copyload    ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.112.i.i.i40, i64 16
  %.val31 = load ptr, ptr %i.ax, align 8, !tbaa !257 ; 3 uses
  %i.ay = getelementptr i8, ptr %.112.i.i.i40, i64 24
  %.val32 = load i64, ptr %i.ay, align 8, !tbaa !258 ; 3 uses
  %i.az = icmp sgt i64 %.val32, 0
  br i1 %i.az, label %.lr.ph.i.i.i50, label %_ZN4llvm11lower_boundIRKNS_8ArrayRefIZNS_9Intrinsic27getIntrinsicForClangBuiltinENS_9StringRefES3_E12BuiltinEntryEERS3_EEDaOT_OT0_.exit

.lr.ph.i.i.i50:                                   ; preds = %bb.i, %.lr.ph.i.i.i50
  %.04.i.i.i51 = phi i64 [ %.1.i.i.i57, %.lr.ph.i.i.i50 ], [ %.val32, %bb.i ] ; 2 uses
  %.0113.i.i.i52 = phi ptr [ %.112.i.i.i56, %.lr.ph.i.i.i50 ], [ %.val31, %bb.i ] ; 2 uses
  %i.ba = lshr i64 %.04.i.i.i51, 1                ; 3 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.0113.i.i.i52, i64 %i.ba ; 2 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 4
  %.val.i.i.i55 = load i32, ptr %i.bc, align 4, !tbaa !254
  %i.bd = zext i32 %.val.i.i.i55 to i64
  %i.be = getelementptr inbounds nuw i8, ptr @_ZZN4llvm9Intrinsic27getIntrinsicForClangBuiltinENS_9StringRefES1_E19BuiltinNamesStorage, i64 %i.bd
  %i.bf = tail call i32 @strncmp(ptr noundef nonnull %i.be, ptr noundef readonly %i.av, i64 noundef %i.aw) #22
  %i.bg = icmp slt i32 %i.bf, 0                   ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bi = xor i64 %i.ba, -1
  %i.bj = add nsw i64 %.04.i.i.i51, %i.bi
  %.112.i.i.i56 = select i1 %i.bg, ptr %i.bh, ptr %.0113.i.i.i52 ; 2 uses
  %.1.i.i.i57 = select i1 %i.bg, i64 %i.bj, i64 %i.ba ; 2 uses
  %i.bk = icmp sgt i64 %.1.i.i.i57, 0
  br i1 %i.bk, label %.lr.ph.i.i.i50, label %_ZN4llvm11lower_boundIRKNS_8ArrayRefIZNS_9Intrinsic27getIntrinsicForClangBuiltinENS_9StringRefES3_E12BuiltinEntryEERS3_EEDaOT_OT0_.exit, !llvm.loop !251

_ZN4llvm11lower_boundIRKNS_8ArrayRefIZNS_9Intrinsic27getIntrinsicForClangBuiltinENS_9StringRefES3_E12BuiltinEntryEERS3_EEDaOT_OT0_.exit: ; preds = %.lr.ph.i.i.i50, %bb.i
  %.011.lcssa.i.i.i = phi ptr [ %.val31, %bb.i ], [ %.112.i.i.i56, %.lr.ph.i.i.i50 ] ; 4 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.val31, i64 %.val32
  %i.bm = icmp eq ptr %.011.lcssa.i.i.i, %i.bl
  br i1 %i.bm, label %_ZN4llvmneENS_9StringRefES0_.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_8ArrayRefIZNS_9Intrinsic27getIntrinsicForClangBuiltinENS_9StringRefES3_E12BuiltinEntryEERS3_EEDaOT_OT0_.exit
  %i.bn = getelementptr i8, ptr %.011.lcssa.i.i.i, i64 4
  %.val = load i32, ptr %i.bn, align 4, !tbaa !254
  %i.bo = zext i32 %.val to i64
  %i.bp = getelementptr inbounds nuw i8, ptr @_ZZN4llvm9Intrinsic27getIntrinsicForClangBuiltinENS_9StringRefES1_E19BuiltinNamesStorage, i64 %i.bo ; 2 uses
  %i.bq = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bp) #19
  %.not.i.i59 = icmp eq i64 %i.bq, %i.aw
  br i1 %.not.i.i59, label %bb.k, label %_ZN4llvmneENS_9StringRefES0_.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.br = icmp eq i64 %3, %.sroa.24.0.copyload
  br i1 %i.br, label %_ZN4llvmneENS_9StringRefES0_.exit.thread.sink.split, label %_ZN4llvmneENS_9StringRefES0_.exit62

_ZN4llvmneENS_9StringRefES0_.exit62:              ; preds = %bb.k
  %bcmp.i.i61 = tail call i32 @bcmp(ptr nonnull %i.bp, ptr %i.av, i64 %i.aw)
  %.not91 = icmp eq i32 %bcmp.i.i61, 0
  br i1 %.not91, label %_ZN4llvmneENS_9StringRefES0_.exit.thread.sink.split, label %_ZN4llvmneENS_9StringRefES0_.exit.thread

_ZN4llvmneENS_9StringRefES0_.exit.thread.sink.split: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit62, %bb.k, %_ZN4llvmeqENS_9StringRefES0_.exit, %bb.d
  %.112.i.i.i.lcssa.sink = phi ptr [ %.112.i.i.i, %_ZN4llvmeqENS_9StringRefES0_.exit ], [ %.112.i.i.i, %bb.d ], [ %.011.lcssa.i.i.i, %bb.k ], [ %.011.lcssa.i.i.i, %_ZN4llvmneENS_9StringRefES0_.exit62 ]
  %i.bs = load i32, ptr %.112.i.i.i.lcssa.sink, align 4, !tbaa !259
  br label %_ZN4llvmneENS_9StringRefES0_.exit.thread

_ZN4llvmneENS_9StringRefES0_.exit.thread:         ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread.sink.split, %bb.j, %_ZN4llvmneENS_9StringRefES0_.exit.thread83, %_ZNK4llvm9StringRef11starts_withES0_.exit.i46, %bb.f, %_ZN4llvmneENS_9StringRefES0_.exit, %_ZN4llvm11lower_boundIRA16_KZNS_9Intrinsic27getIntrinsicForClangBuiltinENS_9StringRefES2_E11TargetEntryRS2_EEDaOT_OT0_.exit, %_ZN4llvm11lower_boundIRKNS_8ArrayRefIZNS_9Intrinsic27getIntrinsicForClangBuiltinENS_9StringRefES3_E12BuiltinEntryEERS3_EEDaOT_OT0_.exit, %_ZN4llvmneENS_9StringRefES0_.exit62
  %.3 = phi i32 [ 0, %_ZNK4llvm9StringRef11starts_withES0_.exit.i46 ], [ 0, %_ZN4llvm11lower_boundIRA16_KZNS_9Intrinsic27getIntrinsicForClangBuiltinENS_9StringRefES2_E11TargetEntryRS2_EEDaOT_OT0_.exit ], [ 0, %bb.f ], [ 0, %_ZN4llvmneENS_9StringRefES0_.exit ], [ 0, %bb.j ], [ 0, %_ZN4llvmneENS_9StringRefES0_.exit62 ], [ 0, %_ZN4llvm11lower_boundIRKNS_8ArrayRefIZNS_9Intrinsic27getIntrinsicForClangBuiltinENS_9StringRefES3_E12BuiltinEntryEERS3_EEDaOT_OT0_.exit ], [ 0, %_ZN4llvmneENS_9StringRefES0_.exit.thread83 ], [ %i.bs, %_ZN4llvmneENS_9StringRefES0_.exit.thread.sink.split ]
  ret i32 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm9StringRef13consume_frontES0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !183  ; 2 uses
  %.not.i = icmp ult i64 %i.b, %2
  br i1 %.not.i, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread3, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %2, 0
  %.pre = load ptr, ptr %0, align 8, !tbaa !184   ; 2 uses
  br i1 %i.c, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit

_ZNK4llvm9StringRef11starts_withES0_.exit:        ; preds = %bb.b
  %bcmp.i = tail call i32 @bcmp(ptr %.pre, ptr %1, i64 %2)
  %i.d = icmp eq i32 %bcmp.i, 0
  br i1 %i.d, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread3

_ZNK4llvm9StringRef11starts_withES0_.exit.thread: ; preds = %bb.b, %_ZNK4llvm9StringRef11starts_withES0_.exit
  %i.e = getelementptr inbounds nuw i8, ptr %.pre, i64 %2
  %i.f = sub nuw i64 %i.b, %2
  store ptr %i.e, ptr %0, align 8, !tbaa !162
  store i64 %i.f, ptr %i.a, align 8, !tbaa !19
  br label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread3

_ZNK4llvm9StringRef11starts_withES0_.exit.thread3: ; preds = %bb.a, %_ZNK4llvm9StringRef11starts_withES0_.exit, %_ZNK4llvm9StringRef11starts_withES0_.exit.thread
  %i.g = phi i1 [ false, %_ZNK4llvm9StringRef11starts_withES0_.exit ], [ true, %_ZNK4llvm9StringRef11starts_withES0_.exit.thread ], [ false, %bb.a ]
  ret i1 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZN4llvm9Intrinsic24getIntrinsicForMSBuiltinENS_9StringRefES1_(ptr nofree readonly captures(none) %0, i64 %1, ptr nofree readonly captures(none) %2, i64 %3) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_ZN4llvm11lower_boundIRA2_KZNS_9Intrinsic24getIntrinsicForMSBuiltinENS_9StringRefES2_E11TargetEntryRS2_EEDaOT_OT0_.exit, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.peel.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.peel.i.i: ; preds = %bb.a
  %.sroa.speculated.i.i.i.i.i.peel.i.i = tail call i64 @llvm.umin.i64(i64 %1, i64 3)
  %i.b = tail call i32 @memcmp(ptr noundef nonnull readonly @.str.4, ptr noundef readonly %0, i64 noundef %.sroa.speculated.i.i.i.i.i.peel.i.i) #22
  %.fr.i.i.i.i.i.peel.i.i = freeze i32 %i.b       ; 2 uses
  %.not.not.i.i.i.i.i.peel.i.i = icmp eq i32 %.fr.i.i.i.i.i.peel.i.i, 0
  br i1 %.not.not.i.i.i.i.i.peel.i.i, label %.thread.i.i.i.i.i.peel.i.i, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPKZN4llvm9Intrinsic24getIntrinsicForMSBuiltinENS3_9StringRefES5_E11TargetEntryKS5_EEbT_RT0_.exit.i.peel.i.i

.thread.i.i.i.i.i.peel.i.i:                       ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.peel.i.i
  %i.c = icmp ult i64 %1, 4
  br i1 %i.c, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRA2_KZNS_9Intrinsic24getIntrinsicForMSBuiltinENS_9StringRefES2_E11TargetEntryRS2_EEDaOT_OT0_.exit

_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPKZN4llvm9Intrinsic24getIntrinsicForMSBuiltinENS3_9StringRefES5_E11TargetEntryKS5_EEbT_RT0_.exit.i.peel.i.i: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.peel.i.i
  %.inv.i.i.i.i.i.peel.i.i = icmp sgt i32 %.fr.i.i.i.i.i.peel.i.i, -1
  br i1 %.inv.i.i.i.i.i.peel.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRA2_KZNS_9Intrinsic24getIntrinsicForMSBuiltinENS_9StringRefES2_E11TargetEntryRS2_EEDaOT_OT0_.exit

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPKZN4llvm9Intrinsic24getIntrinsicForMSBuiltinENS3_9StringRefES5_E11TargetEntryKS5_EEbT_RT0_.exit.i.peel.i.i, %.thread.i.i.i.i.i.peel.i.i
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %1, i64 7)
  %i.d = tail call i32 @memcmp(ptr noundef nonnull readonly @.str, ptr noundef readonly %0, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #22
  %.fr.i.i.i.i.i.i.i = freeze i32 %i.d            ; 2 uses
  %.not.not.i.i.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i.i.i, 0
  br i1 %.not.not.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i, label %_ZSt13__lower_boundIPKZN4llvm9Intrinsic24getIntrinsicForMSBuiltinENS0_9StringRefES2_E11TargetEntryS2_N9__gnu_cxx5__ops14_Iter_less_valEET_S9_S9_RKT0_T1_.exit.loopexit.thread.i.i

.thread.i.i.i.i.i.i.i:                            ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i
  %4 = icmp ugt i64 %1, 7
  br i1 %4, label %_ZSt13__lower_boundIPKZN4llvm9Intrinsic24getIntrinsicForMSBuiltinENS0_9StringRefES2_E11TargetEntryS2_N9__gnu_cxx5__ops14_Iter_less_valEET_S9_S9_RKT0_T1_.exit.loopexit.i.i, label %bb.b

_ZSt13__lower_boundIPKZN4llvm9Intrinsic24getIntrinsicForMSBuiltinENS0_9StringRefES2_E11TargetEntryS2_N9__gnu_cxx5__ops14_Iter_less_valEET_S9_S9_RKT0_T1_.exit.loopexit.thread.i.i: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i
  %5 = icmp slt i32 %.fr.i.i.i.i.i.i.i, 0
  br i1 %5, label %_ZSt13__lower_boundIPKZN4llvm9Intrinsic24getIntrinsicForMSBuiltinENS0_9StringRefES2_E11TargetEntryS2_N9__gnu_cxx5__ops14_Iter_less_valEET_S9_S9_RKT0_T1_.exit.loopexit.i.i, label %bb.b

_ZSt13__lower_boundIPKZN4llvm9Intrinsic24getIntrinsicForMSBuiltinENS0_9StringRefES2_E11TargetEntryS2_N9__gnu_cxx5__ops14_Iter_less_valEET_S9_S9_RKT0_T1_.exit.loopexit.i.i: ; preds = %_ZSt13__lower_boundIPKZN4llvm9Intrinsic24getIntrinsicForMSBuiltinENS0_9StringRefES2_E11TargetEntryS2_N9__gnu_cxx5__ops14_Iter_less_valEET_S9_S9_RKT0_T1_.exit.loopexit.thread.i.i, %.thread.i.i.i.i.i.i.i
  br label %bb.b

bb.b:                                             ; preds = %.thread.i.i.i.i.i.i.i, %_ZSt13__lower_boundIPKZN4llvm9Intrinsic24getIntrinsicForMSBuiltinENS0_9StringRefES2_E11TargetEntryS2_N9__gnu_cxx5__ops14_Iter_less_valEET_S9_S9_RKT0_T1_.exit.loopexit.thread.i.i, %_ZSt13__lower_boundIPKZN4llvm9Intrinsic24getIntrinsicForMSBuiltinENS0_9StringRefES2_E11TargetEntryS2_N9__gnu_cxx5__ops14_Iter_less_valEET_S9_S9_RKT0_T1_.exit.loopexit.i.i
  %6 = phi i64 [ 48, %_ZSt13__lower_boundIPKZN4llvm9Intrinsic24getIntrinsicForMSBuiltinENS0_9StringRefES2_E11TargetEntryS2_N9__gnu_cxx5__ops14_Iter_less_valEET_S9_S9_RKT0_T1_.exit.loopexit.i.i ], [ 0, %_ZSt13__lower_boundIPKZN4llvm9Intrinsic24getIntrinsicForMSBuiltinENS0_9StringRefES2_E11TargetEntryS2_N9__gnu_cxx5__ops14_Iter_less_valEET_S9_S9_RKT0_T1_.exit.loopexit.thread.i.i ], [ 0, %.thread.i.i.i.i.i.i.i ]
  %.112.i.i.i = getelementptr inbounds nuw i8, ptr @_ZZN4llvm9Intrinsic24getIntrinsicForMSBuiltinENS_9StringRefES1_E11TargetTable, i64 %6 ; 6 uses
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.112.i.i.i, i64 8
  %.sroa.28.0.copyload = load i64, ptr %.sroa.28.0..sroa_idx, align 8, !tbaa !19
  %.not.i.i = icmp eq i64 %.sroa.28.0.copyload, %1
  br i1 %.not.i.i, label %_ZN4llvmneENS_9StringRefES0_.exit, label %_ZN4llvm11lower_boundIRA2_KZNS_9Intrinsic24getIntrinsicForMSBuiltinENS_9StringRefES2_E11TargetEntryRS2_EEDaOT_OT0_.exit

_ZN4llvmneENS_9StringRefES0_.exit:                ; preds = %bb.b
  %.sroa.07.0.copyload = load ptr, ptr %.112.i.i.i, align 16, !tbaa !162
  %bcmp.i.i = tail call i32 @bcmp(ptr %.sroa.07.0.copyload, ptr %0, i64 %1)
  %.not = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not, label %_ZN4llvmneENS_9StringRefES0_.exit.thread38, label %_ZN4llvm11lower_boundIRA2_KZNS_9Intrinsic24getIntrinsicForMSBuiltinENS_9StringRefES2_E11TargetEntryRS2_EEDaOT_OT0_.exit

_ZN4llvmneENS_9StringRefES0_.exit.thread38:       ; preds = %_ZN4llvmneENS_9StringRefES0_.exit
  %i.e = getelementptr inbounds nuw i8, ptr %.112.i.i.i, i64 32
  %.sroa.03.0.copyload = load ptr, ptr %i.e, align 16, !tbaa !162
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.112.i.i.i, i64 40
  %.sroa.24.0.copyload = load i64, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !19 ; 6 uses
  %.not.i.i24 = icmp ult i64 %3, %.sroa.24.0.copyload
  br i1 %.not.i.i24, label %_ZN4llvm11lower_boundIRA2_KZNS_9Intrinsic24getIntrinsicForMSBuiltinENS_9StringRefES2_E11TargetEntryRS2_EEDaOT_OT0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread38
  %i.f = icmp eq i64 %.sroa.24.0.copyload, 0
  br i1 %i.f, label %bb.d, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i

_ZNK4llvm9StringRef11starts_withES0_.exit.i:      ; preds = %bb.c
  %bcmp.i.i25 = tail call i32 @bcmp(ptr %2, ptr %.sroa.03.0.copyload, i64 %.sroa.24.0.copyload)
  %i.g = icmp eq i32 %bcmp.i.i25, 0
  br i1 %i.g, label %bb.d, label %_ZN4llvm11lower_boundIRA2_KZNS_9Intrinsic24getIntrinsicForMSBuiltinENS_9StringRefES2_E11TargetEntryRS2_EEDaOT_OT0_.exit

bb.d:                                             ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.24.0.copyload ; 2 uses
  %i.i = sub nuw i64 %3, %.sroa.24.0.copyload     ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.112.i.i.i, i64 16
  %.val20 = load ptr, ptr %i.j, align 16, !tbaa !263 ; 3 uses
  %i.k = getelementptr i8, ptr %.112.i.i.i, i64 24
  %.val21 = load i64, ptr %i.k, align 8, !tbaa !264 ; 3 uses
  %i.l = icmp sgt i64 %.val21, 0
  br i1 %i.l, label %.lr.ph.i.i.i, label %_ZN4llvm11lower_boundIRKNS_8ArrayRefIZNS_9Intrinsic24getIntrinsicForMSBuiltinENS_9StringRefES3_E12BuiltinEntryEERS3_EEDaOT_OT0_.exit

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.04.i.i.i = phi i64 [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %.val21, %bb.d ] ; 2 uses
  %.0113.i.i.i = phi ptr [ %.112.i.i.i.a, %.lr.ph.i.i.i ], [ %.val20, %bb.d ] ; 2 uses
  %i.m = lshr i64 %.04.i.i.i, 1                   ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0113.i.i.i, i64 %i.m ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 4
  %.val.i.i.i = load i32, ptr %i.o, align 4, !tbaa !266
  %i.p = zext i32 %.val.i.i.i to i64
  %i.q = getelementptr inbounds nuw i8, ptr @_ZZN4llvm9Intrinsic24getIntrinsicForMSBuiltinENS_9StringRefES1_E19BuiltinNamesStorage, i64 %i.p
  %i.r = tail call i32 @strncmp(ptr noundef nonnull %i.q, ptr noundef readonly %i.h, i64 noundef %i.i) #22
  %i.s = icmp slt i32 %i.r, 0                     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.u = xor i64 %i.m, -1
  %i.v = add nsw i64 %.04.i.i.i, %i.u
  %.112.i.i.i.a = select i1 %i.s, ptr %i.t, ptr %.0113.i.i.i ; 2 uses
  %.1.i.i.i = select i1 %i.s, i64 %i.v, i64 %i.m  ; 2 uses
  %i.w = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.w, label %.lr.ph.i.i.i, label %_ZN4llvm11lower_boundIRKNS_8ArrayRefIZNS_9Intrinsic24getIntrinsicForMSBuiltinENS_9StringRefES3_E12BuiltinEntryEERS3_EEDaOT_OT0_.exit, !llvm.loop !260

_ZN4llvm11lower_boundIRKNS_8ArrayRefIZNS_9Intrinsic24getIntrinsicForMSBuiltinENS_9StringRefES3_E12BuiltinEntryEERS3_EEDaOT_OT0_.exit: ; preds = %.lr.ph.i.i.i, %bb.d
  %.011.lcssa.i.i.i = phi ptr [ %.val20, %bb.d ], [ %.112.i.i.i.a, %.lr.ph.i.i.i ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.val20, i64 %.val21
  %i.y = icmp eq ptr %.011.lcssa.i.i.i, %i.x
  br i1 %i.y, label %_ZN4llvm11lower_boundIRA2_KZNS_9Intrinsic24getIntrinsicForMSBuiltinENS_9StringRefES2_E11TargetEntryRS2_EEDaOT_OT0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_8ArrayRefIZNS_9Intrinsic24getIntrinsicForMSBuiltinENS_9StringRefES3_E12BuiltinEntryEERS3_EEDaOT_OT0_.exit
  %i.z = getelementptr i8, ptr %.011.lcssa.i.i.i, i64 4
  %.val19 = load i32, ptr %i.z, align 4, !tbaa !266
  %i.aa = zext i32 %.val19 to i64
  %i.ab = getelementptr inbounds nuw i8, ptr @_ZZN4llvm9Intrinsic24getIntrinsicForMSBuiltinENS_9StringRefES1_E19BuiltinNamesStorage, i64 %i.aa ; 2 uses
  %i.ac = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ab) #19
  %.not.i.i26 = icmp eq i64 %i.ac, %i.i
  br i1 %.not.i.i26, label %bb.f, label %_ZN4llvm11lower_boundIRA2_KZNS_9Intrinsic24getIntrinsicForMSBuiltinENS_9StringRefES2_E11TargetEntryRS2_EEDaOT_OT0_.exit

bb.f:                                             ; preds = %bb.e
  %i.ad = icmp eq i64 %3, %.sroa.24.0.copyload
  br i1 %i.ad, label %_ZN4llvmneENS_9StringRefES0_.exit29.thread43, label %_ZN4llvmneENS_9StringRefES0_.exit29

_ZN4llvmneENS_9StringRefES0_.exit29:              ; preds = %bb.f
  %bcmp.i.i28 = tail call i32 @bcmp(ptr nonnull %i.ab, ptr %i.h, i64 %i.i)
  %.not45 = icmp eq i32 %bcmp.i.i28, 0
  br i1 %.not45, label %_ZN4llvmneENS_9StringRefES0_.exit29.thread43, label %_ZN4llvm11lower_boundIRA2_KZNS_9Intrinsic24getIntrinsicForMSBuiltinENS_9StringRefES2_E11TargetEntryRS2_EEDaOT_OT0_.exit

_ZN4llvmneENS_9StringRefES0_.exit29.thread43:     ; preds = %bb.f, %_ZN4llvmneENS_9StringRefES0_.exit29
  %i.ae = load i32, ptr %.011.lcssa.i.i.i, align 4, !tbaa !267
  br label %_ZN4llvm11lower_boundIRA2_KZNS_9Intrinsic24getIntrinsicForMSBuiltinENS_9StringRefES2_E11TargetEntryRS2_EEDaOT_OT0_.exit

_ZN4llvm11lower_boundIRA2_KZNS_9Intrinsic24getIntrinsicForMSBuiltinENS_9StringRefES2_E11TargetEntryRS2_EEDaOT_OT0_.exit: ; preds = %bb.a, %bb.e, %_ZN4llvmneENS_9StringRefES0_.exit.thread38, %_ZNK4llvm9StringRef11starts_withES0_.exit.i, %bb.b, %.thread.i.i.i.i.i.peel.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPKZN4llvm9Intrinsic24getIntrinsicForMSBuiltinENS3_9StringRefES5_E11TargetEntryKS5_EEbT_RT0_.exit.i.peel.i.i, %_ZN4llvmneENS_9StringRefES0_.exit29.thread43, %_ZN4llvmneENS_9StringRefES0_.exit29, %_ZN4llvm11lower_boundIRKNS_8ArrayRefIZNS_9Intrinsic24getIntrinsicForMSBuiltinENS_9StringRefES3_E12BuiltinEntryEERS3_EEDaOT_OT0_.exit, %_ZN4llvmneENS_9StringRefES0_.exit
  %.1 = phi i32 [ 0, %bb.e ], [ 0, %bb.b ], [ 0, %_ZN4llvmneENS_9StringRefES0_.exit ], [ %i.ae, %_ZN4llvmneENS_9StringRefES0_.exit29.thread43 ], [ 0, %_ZN4llvmneENS_9StringRefES0_.exit29 ], [ 0, %_ZN4llvm11lower_boundIRKNS_8ArrayRefIZNS_9Intrinsic24getIntrinsicForMSBuiltinENS_9StringRefES3_E12BuiltinEntryEERS3_EEDaOT_OT0_.exit ], [ 0, %_ZN4llvmneENS_9StringRefES0_.exit.thread38 ], [ 0, %.thread.i.i.i.i.i.peel.i.i ], [ 0, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPKZN4llvm9Intrinsic24getIntrinsicForMSBuiltinENS3_9StringRefES5_E11TargetEntryKS5_EEbT_RT0_.exit.i.peel.i.i ], [ 0, %_ZNK4llvm9StringRef11starts_withES0_.exit.i ], [ 0, %bb.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN4llvm9Intrinsic24isConstrainedFPIntrinsicEj(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %.off = add i32 %0, -102
  %switch = icmp ult i32 %.off, 49
  ret i1 %switch
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN4llvm9Intrinsic35hasConstrainedFPRoundingModeOperandEj(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %switch.tableidx = add i32 %0, -102             ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 49
  %switch.cast = zext nneg i32 %switch.tableidx to i49
  %switch.downshift = lshr i49 -142420076276753, %switch.cast
  %switch.masked = trunc i49 %switch.downshift to i1
  %.0 = select i1 %i.a, i1 %switch.masked, i1 false
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm9Intrinsic19hasStructReturnTypeEj(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %1 = alloca %"class.llvm::SmallVector.111", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr %i.c, ptr %1, align 8, !tbaa !137
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i32 0, ptr %i.d, align 8, !tbaa !138
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 4, ptr %i.e, align 4, !tbaa !148
  %i.f = add i32 %0, -1
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [2 x i8], ptr @_ZL9IIT_Table, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !135, !noalias !270 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19, !noalias !270
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.a, i8 0, i64 5, i1 false), !noalias !270
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19, !noalias !270
  %.not.i = icmp sgt i16 %i.i, -1
  br i1 %.not.i, label %.preheader.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = and i16 %i.i, 32767
  %i.k = zext nneg i16 %i.j to i32
  br label %.loopexit.i

.preheader.i:                                     ; preds = %bb.a, %.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.i ], [ 0, %bb.a ] ; 2 uses
  %.0.i = phi i16 [ %i.o, %.preheader.i ], [ %i.i, %bb.a ] ; 2 uses
  %i.l = trunc i16 %.0.i to i8
  %i.m = and i8 %i.l, 15
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
  store i8 %i.m, ptr %i.n, align 1, !tbaa !22, !noalias !270
  %i.o = lshr i16 %.0.i, 4                        ; 2 uses
  %.not10.i = icmp eq i16 %i.o, 0
  br i1 %.not10.i, label %.loopexit.i, label %.preheader.i, !llvm.loop !0

.loopexit.i:                                      ; preds = %.preheader.i, %bb.b
  %.sroa.022.0.i = phi ptr [ @_ZL21IIT_LongEncodingTable, %bb.b ], [ %i.a, %.preheader.i ] ; 4 uses
  %storemerge.i = phi i32 [ %i.k, %bb.b ], [ 0, %.preheader.i ]
  store i32 %storemerge.i, ptr %i.b, align 4, !tbaa !11, !noalias !270
  call fastcc void @_ZL13DecodeIITTypeRjN4llvm8ArrayRefIhEERNS0_15SmallVectorImplINS0_9Intrinsic13IITDescriptorEEE(ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr nonnull %.sroa.022.0.i, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.p = load i32, ptr %i.b, align 4, !tbaa !11, !noalias !270
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.022.0.i, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !22, !noalias !270
  %.not1226.i = icmp eq i8 %i.s, 0
  br i1 %.not1226.i, label %_ZN4llvm9Intrinsic28getIntrinsicInfoTableEntriesEjRNS_15SmallVectorImplINS0_13IITDescriptorEEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit.i, %.lr.ph.i
  call fastcc void @_ZL13DecodeIITTypeRjN4llvm8ArrayRefIhEERNS0_15SmallVectorImplINS0_9Intrinsic13IITDescriptorEEE(ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr nonnull %.sroa.022.0.i, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.t = load i32, ptr %i.b, align 4, !tbaa !11, !noalias !270
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.022.0.i, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !22, !noalias !270
  %.not12.i = icmp eq i8 %i.w, 0
  br i1 %.not12.i, label %_ZN4llvm9Intrinsic28getIntrinsicInfoTableEntriesEjRNS_15SmallVectorImplINS0_13IITDescriptorEEE.exit, label %.lr.ph.i, !llvm.loop !1

_ZN4llvm9Intrinsic28getIntrinsicInfoTableEntriesEjRNS_15SmallVectorImplINS0_13IITDescriptorEEE.exit: ; preds = %.lr.ph.i, %.loopexit.i
  %i.x = load ptr, ptr %1, align 8, !tbaa !137, !noalias !270 ; 3 uses
  %i.y = load i32, ptr %i.d, align 8, !tbaa !138, !noalias !270
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19, !noalias !270
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19, !noalias !270
  %.not.i1 = icmp eq i32 %i.y, 0
  br i1 %.not.i1, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm9Intrinsic28getIntrinsicInfoTableEntriesEjRNS_15SmallVectorImplINS0_13IITDescriptorEEE.exit
  %i.z = load i32, ptr %i.x, align 4, !tbaa !141
  %i.aa = icmp eq i32 %i.z, 13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN4llvm9Intrinsic28getIntrinsicInfoTableEntriesEjRNS_15SmallVectorImplINS0_13IITDescriptorEEE.exit
  %i.ab = phi i1 [ false, %_ZN4llvm9Intrinsic28getIntrinsicInfoTableEntriesEjRNS_15SmallVectorImplINS0_13IITDescriptorEEE.exit ], [ %i.aa, %bb.c ]
  %i.ac = icmp eq ptr %i.x, %i.c
  br i1 %i.ac, label %_ZN4llvm11SmallVectorINS_9Intrinsic13IITDescriptorELj4EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @free(ptr noundef nonnull %i.x) #19
  br label %_ZN4llvm11SmallVectorINS_9Intrinsic13IITDescriptorELj4EED2Ev.exit

_ZN4llvm11SmallVectorINS_9Intrinsic13IITDescriptorELj4EED2Ev.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  ret i1 %i.ab
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm9Intrinsic16isSignatureValidEjPNS_12FunctionTypeERNS_15SmallVectorImplIPNS_4TypeEEERNS_11raw_ostreamE(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(48) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %4 = alloca %"class.llvm::SmallVector", align 8 ; 10 uses
  %5 = alloca %"class.std::tuple", align 8        ; 6 uses
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !137
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 0, ptr %i.d, align 8, !tbaa !138
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 8, ptr %i.e, align 4, !tbaa !148
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !273)
  %i.f = add i32 %0, -1
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [2 x i8], ptr @_ZL9IIT_Table, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !135, !noalias !273 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19, !noalias !273
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.a, i8 0, i64 5, i1 false), !noalias !273
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19, !noalias !273
  %.not.i = icmp sgt i16 %i.i, -1
  br i1 %.not.i, label %.preheader.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = and i16 %i.i, 32767
  %i.k = zext nneg i16 %i.j to i32
  br label %.loopexit.i

.preheader.i:                                     ; preds = %bb.b, %.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.i ], [ 0, %bb.b ] ; 2 uses
  %.0.i = phi i16 [ %i.o, %.preheader.i ], [ %i.i, %bb.b ] ; 2 uses
  %i.l = trunc i16 %.0.i to i8
  %i.m = and i8 %i.l, 15
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
  store i8 %i.m, ptr %i.n, align 1, !tbaa !22, !noalias !273
  %i.o = lshr i16 %.0.i, 4                        ; 2 uses
  %.not10.i = icmp eq i16 %i.o, 0
  br i1 %.not10.i, label %.loopexit.i, label %.preheader.i, !llvm.loop !0

.loopexit.i:                                      ; preds = %.preheader.i, %bb.c
  %.sroa.022.0.i = phi ptr [ @_ZL21IIT_LongEncodingTable, %bb.c ], [ %i.a, %.preheader.i ] ; 4 uses
  %storemerge.i = phi i32 [ %i.k, %bb.c ], [ 0, %.preheader.i ]
  store i32 %storemerge.i, ptr %i.b, align 4, !tbaa !11, !noalias !273
  call fastcc void @_ZL13DecodeIITTypeRjN4llvm8ArrayRefIhEERNS0_15SmallVectorImplINS0_9Intrinsic13IITDescriptorEEE(ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr nonnull %.sroa.022.0.i, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.p = load i32, ptr %i.b, align 4, !tbaa !11, !noalias !273
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.022.0.i, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !22, !noalias !273
  %.not1226.i = icmp eq i8 %i.s, 0
  br i1 %.not1226.i, label %_ZN4llvm9Intrinsic28getIntrinsicInfoTableEntriesEjRNS_15SmallVectorImplINS0_13IITDescriptorEEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit.i, %.lr.ph.i
  %storemerge1127.i = phi i32 [ %i.t, %.lr.ph.i ], [ 0, %.loopexit.i ]
  call fastcc void @_ZL13DecodeIITTypeRjN4llvm8ArrayRefIhEERNS0_15SmallVectorImplINS0_9Intrinsic13IITDescriptorEEE(ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr nonnull %.sroa.022.0.i, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.t = add i32 %storemerge1127.i, 1             ; 2 uses
  %i.u = load i32, ptr %i.b, align 4, !tbaa !11, !noalias !273
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.022.0.i, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !22, !noalias !273
  %.not12.i = icmp eq i8 %i.x, 0
  br i1 %.not12.i, label %_ZN4llvm9Intrinsic28getIntrinsicInfoTableEntriesEjRNS_15SmallVectorImplINS0_13IITDescriptorEEE.exit, label %.lr.ph.i, !llvm.loop !1

_ZN4llvm9Intrinsic28getIntrinsicInfoTableEntriesEjRNS_15SmallVectorImplINS0_13IITDescriptorEEE.exit: ; preds = %.lr.ph.i, %.loopexit.i
  %storemerge11.lcssa.i = phi i32 [ 0, %.loopexit.i ], [ %i.t, %.lr.ph.i ]
  %i.y = load ptr, ptr %4, align 8, !tbaa !137, !noalias !273 ; 2 uses
  %i.z = load i32, ptr %i.d, align 8, !tbaa !138, !noalias !273
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr [12 x i8], ptr %i.y, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 -12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !141, !noalias !273
  %i.ae = icmp eq i32 %i.ad, 1                    ; 4 uses
  %i.af = sext i1 %i.ae to i32
  %.025.i = add i32 %storemerge11.lcssa.i, %i.af  ; 2 uses
  %i.ag = sext i1 %i.ae to i64
  %.sroa.6.0.i = add nsw i64 %i.ag, %i.aa
  %.024.i = zext i1 %i.ae to i8
  store i8 %.024.i, ptr %5, align 8, !tbaa !143, !alias.scope !273
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %.025.i, ptr %i.ah, align 4, !tbaa !145, !alias.scope !273
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.y, ptr %i.ai, align 8, !tbaa !147, !alias.scope !273
end_hunk_0
