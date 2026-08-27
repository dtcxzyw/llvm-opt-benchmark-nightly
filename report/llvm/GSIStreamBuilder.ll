Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/GSIStreamBuilder?download=true
inline.NumInlined: 2242
inline.NumDeleted: 1064
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNSt6vectorIN4llvm3pdb12PSHashRecordESaIS2_EE17_M_default_appendEm:bb.a
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 1
  store <2 x i64> %broadcast.splat, ptr %i.aa, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !309

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZSt27__uninitialized_default_n_aIPN4llvm3pdb12PSHashRecordEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.d, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.p, %bb.d ], [ %i.x, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.ac = load i64, ptr %i.b, align 1
  store i64 %i.ac, ptr %.06.i.i.i.i.i.i.i, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ad, %i.s
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt27__uninitialized_default_n_aIPN4llvm3pdb12PSHashRecordEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !312

_ZSt27__uninitialized_default_n_aIPN4llvm3pdb12PSHashRecordEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.c
  %.0.i.i.i = phi ptr [ %i.p, %bb.c ], [ %i.s, %middle.block ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !8
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.ae = icmp ult i64 %i.n, %1
  br i1 %i.ae, label %bb.f, label %_ZNKSt6vectorIN4llvm3pdb12PSHashRecordESaIS2_EE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #24
  unreachable

_ZNKSt6vectorIN4llvm3pdb12PSHashRecordESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.af = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.ag = tail call i64 @llvm.umin.i64(i64 %i.af, i64 1152921504606846975) ; 2 uses
  %i.ah = shl nuw nsw i64 %i.ag, 3
  %i.ai = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #23 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.f ; 5 uses
  store i64 0, ptr %i.aj, align 1
  %i.ak = add nsw i64 %1, -1                      ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %_ZSt27__uninitialized_default_n_aIPN4llvm3pdb12PSHashRecordEmS2_ET_S4_T0_RSaIT1_E.exit30, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIN4llvm3pdb12PSHashRecordESaIS2_EE12_M_check_lenEmPKc.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %.idx.i.i.i.i.i25 = shl nuw nsw i64 %i.ak, 3
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx.i.i.i.i.i25
  %i.ao = add i64 %1, 2305843009213693950
  %i.ap = and i64 %i.ao, 2305843009213693951      ; 2 uses
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check38 = icmp samesign ult i64 %i.ap, 3
  br i1 %min.iters.check38, label %.lr.ph.i.i.i.i.i.i.i26.preheader, label %vector.ph39

vector.ph39:                                      ; preds = %bb.g
  %n.vec40 = and i64 %i.aq, 4611686018427387900   ; 3 uses
  %i.ar = shl i64 %n.vec40, 3
  %i.as = getelementptr i8, ptr %i.am, i64 %i.ar
  br label %vector.body41

vector.body41:                                    ; preds = %vector.body41, %vector.ph39
  %index42 = phi i64 [ 0, %vector.ph39 ], [ %index.next46, %vector.body41 ] ; 2 uses
  %i.at = shl i64 %index42, 3
  %next.gep43 = getelementptr i8, ptr %i.am, i64 %i.at ; 2 uses
  %i.au = load i64, ptr %i.aj, align 1
  %broadcast.splatinsert44 = insertelement <2 x i64> poison, i64 %i.au, i64 0
  %broadcast.splat45 = shufflevector <2 x i64> %broadcast.splatinsert44, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.av = getelementptr i8, ptr %next.gep43, i64 16
  store <2 x i64> %broadcast.splat45, ptr %next.gep43, align 1
  store <2 x i64> %broadcast.splat45, ptr %i.av, align 1
  %index.next46 = add nuw i64 %index42, 4         ; 2 uses
  %i.aw = icmp eq i64 %index.next46, %n.vec40
  br i1 %i.aw, label %middle.block47, label %vector.body41, !llvm.loop !313

middle.block47:                                   ; preds = %vector.body41
  %cmp.n48 = icmp eq i64 %i.aq, %n.vec40
  br i1 %cmp.n48, label %_ZSt27__uninitialized_default_n_aIPN4llvm3pdb12PSHashRecordEmS2_ET_S4_T0_RSaIT1_E.exit30, label %.lr.ph.i.i.i.i.i.i.i26.preheader

.lr.ph.i.i.i.i.i.i.i26.preheader:                 ; preds = %bb.g, %middle.block47
  %.06.i.i.i.i.i.i.i27.ph = phi ptr [ %i.am, %bb.g ], [ %i.as, %middle.block47 ]
  br label %.lr.ph.i.i.i.i.i.i.i26

.lr.ph.i.i.i.i.i.i.i26:                           ; preds = %.lr.ph.i.i.i.i.i.i.i26.preheader, %.lr.ph.i.i.i.i.i.i.i26
  %.06.i.i.i.i.i.i.i27 = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i26 ], [ %.06.i.i.i.i.i.i.i27.ph, %.lr.ph.i.i.i.i.i.i.i26.preheader ] ; 2 uses
  %i.ax = load i64, ptr %i.aj, align 1
  store i64 %i.ax, ptr %.06.i.i.i.i.i.i.i27, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i27, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i28 = icmp eq ptr %i.ay, %i.an
  br i1 %.not.i.i.i.i.i.i.i28, label %_ZSt27__uninitialized_default_n_aIPN4llvm3pdb12PSHashRecordEmS2_ET_S4_T0_RSaIT1_E.exit30, label %.lr.ph.i.i.i.i.i.i.i26, !llvm.loop !314

_ZSt27__uninitialized_default_n_aIPN4llvm3pdb12PSHashRecordEmS2_ET_S4_T0_RSaIT1_E.exit30: ; preds = %.lr.ph.i.i.i.i.i.i.i26, %middle.block47, %_ZNKSt6vectorIN4llvm3pdb12PSHashRecordESaIS2_EE12_M_check_lenEmPKc.exit
  %i.az = icmp sgt i64 %i.f, 0
  br i1 %i.az, label %bb.h, label %_ZNSt6vectorIN4llvm3pdb12PSHashRecordESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN4llvm3pdb12PSHashRecordEmS2_ET_S4_T0_RSaIT1_E.exit30
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ai, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIN4llvm3pdb12PSHashRecordESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit

_ZNSt6vectorIN4llvm3pdb12PSHashRecordESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPN4llvm3pdb12PSHashRecordEmS2_ET_S4_T0_RSaIT1_E.exit30, %bb.h
  %.not.i31 = icmp eq ptr %i.c, null
  br i1 %.not.i31, label %_ZNSt12_Vector_baseIN4llvm3pdb12PSHashRecordESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN4llvm3pdb12PSHashRecordESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.ba = load ptr, ptr %i.h, align 8, !tbaa !95
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bc) #25
  br label %_ZNSt12_Vector_baseIN4llvm3pdb12PSHashRecordESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN4llvm3pdb12PSHashRecordESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN4llvm3pdb12PSHashRecordESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.i
  store ptr %i.ai, ptr %0, align 8, !tbaa !12
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %1
  store ptr %i.bd, ptr %i.a, align 8, !tbaa !8
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ag
  store ptr %i.be, ptr %i.h, align 8, !tbaa !95
  br label %bb.j

bb.j:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN4llvm3pdb12PSHashRecordEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN4llvm3pdb12PSHashRecordESaIS2_EE13_M_deallocateEPS2_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4llvm12function_refIFvmEE11callback_fnIZNS_3pdb20GSIHashStreamBuilder15finalizeBucketsEjNS_15MutableArrayRefINS4_10BulkPublicEEEE3$_1EEvlm"(i64 noundef %0, i64 noundef %1) #2 align 2 {
bb.a:
  %2 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  %i.a = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !315, !nonnull !22, !align !316
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %1
  %i.h = load i32, ptr %i.g, align 4, !tbaa !35   ; 2 uses
  %i.i = zext i32 %i.h to i64
  %.idx21.i = shl nuw nsw i64 %i.i, 3             ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx21.i ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !317, !nonnull !22, !align !316
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %1
  %i.n = load i32, ptr %i.m, align 4, !tbaa !35   ; 2 uses
  %i.o = zext i32 %i.n to i64
  %.idx.i = shl nuw nsw i64 %i.o, 3               ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i ; 4 uses
  %i.q = icmp eq i32 %i.h, %i.n
  br i1 %i.q, label %"_ZZN4llvm3pdb20GSIHashStreamBuilder15finalizeBucketsEjNS_15MutableArrayRefINS0_10BulkPublicEEEENK3$_1clEm.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !318, !nonnull !22, !align !106
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !31   ; 6 uses
  %gepdiff.i = sub nsw i64 %.idx.i, %.idx21.i     ; 2 uses
  %i.u = ashr exact i64 %gepdiff.i, 3
  %i.v = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.u, i1 true)
  %i.w = shl nuw nsw i64 %i.v, 1
  %i.x = xor i64 %i.w, 126
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZZNS3_20GSIHashStreamBuilder15finalizeBucketsEjNS2_15MutableArrayRefINS3_10BulkPublicEEEENK3$_1clEmEUlRKS4_SI_E_EEEvT_SL_T0_T1_"(ptr %i.j, ptr %i.p, i64 noundef %i.x, ptr readonly %i.t)
  %i.y = icmp sgt i64 %gepdiff.i, 128
  br i1 %i.y, label %bb.c, label %bb.y

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 128 ; 2 uses
  tail call fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS3_20GSIHashStreamBuilder15finalizeBucketsEjNS2_15MutableArrayRefINS3_10BulkPublicEEEENK3$_1clEmEUlRKS4_SI_E_EEEvT_SL_T0_"(ptr %i.j, ptr nonnull %i.z, ptr readonly %i.t)
  %i.aa = add nuw nsw i64 %.idx21.i, 128
  %.not25.i.i.i.i.i.i = icmp samesign eq i64 %i.aa, %.idx.i
  br i1 %.not25.i.i.i.i.i.i, label %.lr.ph.i.preheader, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.d

bb.d:                                             ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZZNS3_20GSIHashStreamBuilder15finalizeBucketsEjNS2_15MutableArrayRefINS3_10BulkPublicEEEENK3$_1clEmEUlRKS4_SI_E_EEEvT_T0_.exit.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i
  %.sroa.0.026.i.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.i ], [ %i.ct, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZZNS3_20GSIHashStreamBuilder15finalizeBucketsEjNS2_15MutableArrayRefINS3_10BulkPublicEEEENK3$_1clEmEUlRKS4_SI_E_EEEvT_T0_.exit.i.i.i.i.i.i" ] ; 5 uses
  %i.ac = load i64, ptr %.sroa.0.026.i.i.i.i.i.i, align 1 ; 3 uses
  %.sroa.04.0.extract.trunc.i.i.i.i.i.i.i = trunc i64 %i.ac to i32
  %.sroa.0.09.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.026.i.i.i.i.i.i, i64 -8 ; 2 uses
  %.val3.i10.i.i.i.i.i.i.i = load i32, ptr %.sroa.0.09.i.i.i.i.i.i.i, align 1
  %i.ad = call fastcc noundef zeroext i1 @"_ZZZN4llvm3pdb20GSIHashStreamBuilder15finalizeBucketsEjNS_15MutableArrayRefINS0_10BulkPublicEEEENK3$_1clEmENKUlRKNS0_12PSHashRecordES8_E_clES8_S8_"(ptr readonly %i.t, i32 %.sroa.04.0.extract.trunc.i.i.i.i.i.i.i, i32 %.val3.i10.i.i.i.i.i.i.i)
  br i1 %i.ad, label %.lr.ph.i.preheader.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZZNS3_20GSIHashStreamBuilder15finalizeBucketsEjNS2_15MutableArrayRefINS3_10BulkPublicEEEENK3$_1clEmEUlRKS4_SI_E_EEEvT_T0_.exit.i.i.i.i.i.i"

.lr.ph.i.preheader.i.i.i.i.i.i:                   ; preds = %bb.d
  %i.ae = and i64 %i.ac, 4294967295
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.ae ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.backedge, %.lr.ph.i.preheader.i.i.i.i.i.i
  %.sroa.0.012.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.09.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.backedge ] ; 5 uses
  %.sroa.06.011.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.026.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i ], [ %.sroa.0.012.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.backedge ]
  %i.ai = load i64, ptr %.sroa.0.012.i.i.i.i.i.i.i, align 1
  store i64 %i.ai, ptr %.sroa.06.011.i.i.i.i.i.i.i, align 1
  %.sroa.0.0.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.012.i.i.i.i.i.i.i, i64 -8 ; 2 uses
  %.val3.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.0.0.i.i.i.i.i.i.i, align 1
  %i.aj = zext i32 %.val3.i.i.i.i.i.i.i.i to i64
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.aj ; 3 uses
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !55 ; 6 uses
  %i.am = load i32, ptr %i.ah, align 8, !tbaa !58 ; 2 uses
  %i.an = zext i32 %i.am to i64                   ; 9 uses
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !55 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !58 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.al, ptr %2, align 8
  store i64 %i.an, ptr %i.ab, align 8
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.am, %i.aq
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %3 = zext i32 %i.aq to i64
  %i.ar = call i32 @llvm.ucmp.i32.i64(i64 %i.an, i64 %3)
  br label %_ZL12gsiRecordCmpN4llvm9StringRefES0_.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.an ; 2 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = lshr i64 %i.an, 2                       ; 3 uses
  %.not5.i.i.i.i.i.i.i = icmp eq i64 %i.au, 0     ; 2 uses
  br i1 %.not5.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i:     ; preds = %bb.f
  %i.av = and i64 %i.an, 4294967292
  %scevgep.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.al, i64 %i.av
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.j, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.044.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.be, %bb.j ], [ %i.au, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.02943.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bd, %bb.j ], [ %i.al, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 9 uses
  %.029.val32.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.02943.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !46
  %i.aw = icmp slt i8 %.029.val32.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.aw, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1
  %.val31.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.ax, align 1, !tbaa !46
  %i.ay = icmp slt i8 %.val31.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ay, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i.i.i.i.i.loopexit.split.loop.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 2
  %.val30.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.az, align 1, !tbaa !46
  %i.ba = icmp slt i8 %.val30.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ba, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i.i.i.i.i.loopexit.split.loop.exit28, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 3
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.bb, align 1, !tbaa !46
  %i.bc = icmp slt i8 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bc, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i.i.i.i.i.loopexit.split.loop.exit30, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 4
  %i.be = add nsw i64 %.044.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.bf = icmp sgt i64 %.044.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !319

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %bb.j, %bb.f
  %.029.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.al, %bb.f ], [ %scevgep.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.j ] ; 6 uses
  %.pre-phi.i.i.i.i.i.i.i.i.i.i.i.i.i.i = ptrtoint ptr %.029.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bg = sub i64 %i.at, %.pre-phi.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  switch i64 %i.bg, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i.i.i.i.i.i.i.i [
    i64 3, label %bb.k
    i64 2, label %bb.m
    i64 1, label %bb.o
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.029.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.029.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !46
  %i.bh = icmp slt i8 %.029.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bh, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bi, %bb.l ], [ %.029.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !46
  %i.bj = icmp slt i8 %.1.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bj, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bk, %bb.n ], [ %.029.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !46
  %i.bl = icmp slt i8 %.2.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bl, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i.i.i.i.i, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i.i.i.i.i.i.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i.i.i.i.i.loopexit.split.loop.exit: ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1
  br label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i.i.i.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i.i.i.i.i.loopexit.split.loop.exit28: ; preds = %bb.h
  %i.bn = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 2
  br label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i.i.i.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i.i.i.i.i.loopexit.split.loop.exit30: ; preds = %bb.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 3
  br label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i.i.i.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i.i.i.i.i.loopexit.split.loop.exit, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i.i.i.i.i.loopexit.split.loop.exit28, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i.i.i.i.i.loopexit.split.loop.exit30, %bb.o, %bb.m, %bb.k
  %.028.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.m ], [ %.029.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.k ], [ %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.o ], [ %i.bo, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i.i.i.i.i.loopexit.split.loop.exit30 ], [ %i.bn, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i.i.i.i.i.loopexit.split.loop.exit28 ], [ %i.bm, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i.i.i.i.i.loopexit.split.loop.exit ], [ %.02943.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bp = icmp eq ptr %i.as, %.028.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.bp, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i, !prof !320

_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i.i.i.i.i.i.i.i: ; preds = %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i.i.i.i.i, %bb.o, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an ; 2 uses
  %i.br = ptrtoint ptr %i.bq to i64
  br i1 %.not5.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i14.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i23.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i23.i.i.i.i.i.i.i.i:   ; preds = %_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i.i.i.i.i.i.i.i
  %i.bs = and i64 %i.an, 4294967292
  %scevgep.i.i.i.i.i.i24.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.ao, i64 %i.bs
  br label %.lr.ph.i.i.i.i.i.i25.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i25.i.i.i.i.i.i.i.i:             ; preds = %bb.s, %.lr.ph.preheader.i.i.i.i.i.i23.i.i.i.i.i.i.i.i
  %.044.i.i.i.i.i.i26.i.i.i.i.i.i.i.i = phi i64 [ %i.cb, %bb.s ], [ %i.au, %.lr.ph.preheader.i.i.i.i.i.i23.i.i.i.i.i.i.i.i ] ; 2 uses
  %.02943.i.i.i.i.i.i27.i.i.i.i.i.i.i.i = phi ptr [ %i.ca, %bb.s ], [ %i.ao, %.lr.ph.preheader.i.i.i.i.i.i23.i.i.i.i.i.i.i.i ] ; 9 uses
  %.029.val32.i.i.i.i.i.i28.i.i.i.i.i.i.i.i = load i8, ptr %.02943.i.i.i.i.i.i27.i.i.i.i.i.i.i.i, align 1, !tbaa !46
  %i.bt = icmp slt i8 %.029.val32.i.i.i.i.i.i28.i.i.i.i.i.i.i.i, 0
  br i1 %i.bt, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i.i25.i.i.i.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i.i.i.i.i.i.i.i, i64 1
  %.val31.i.i.i.i.i.i29.i.i.i.i.i.i.i.i = load i8, ptr %i.bu, align 1, !tbaa !46
  %i.bv = icmp slt i8 %.val31.i.i.i.i.i.i29.i.i.i.i.i.i.i.i, 0
  br i1 %i.bv, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i.i.i.i.i.loopexit.split.loop.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bw = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i.i.i.i.i.i.i.i, i64 2
  %.val30.i.i.i.i.i.i30.i.i.i.i.i.i.i.i = load i8, ptr %i.bw, align 1, !tbaa !46
  %i.bx = icmp slt i8 %.val30.i.i.i.i.i.i30.i.i.i.i.i.i.i.i, 0
  br i1 %i.bx, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i.i.i.i.i.loopexit.split.loop.exit36, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.by = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i.i.i.i.i.i.i.i, i64 3
  %.val.i.i.i.i.i.i31.i.i.i.i.i.i.i.i = load i8, ptr %i.by, align 1, !tbaa !46
  %i.bz = icmp slt i8 %.val.i.i.i.i.i.i31.i.i.i.i.i.i.i.i, 0
  br i1 %i.bz, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i.i.i.i.i.loopexit.split.loop.exit38, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ca = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i.i.i.i.i.i.i.i, i64 4
  %i.cb = add nsw i64 %.044.i.i.i.i.i.i26.i.i.i.i.i.i.i.i, -1
  %i.cc = icmp sgt i64 %.044.i.i.i.i.i.i26.i.i.i.i.i.i.i.i, 1
  br i1 %i.cc, label %.lr.ph.i.i.i.i.i.i25.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i14.i.i.i.i.i.i.i.i, !llvm.loop !319

._crit_edge.i.i.i.i.i.i14.i.i.i.i.i.i.i.i:        ; preds = %bb.s, %_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i.i.i.i.i.i.i.i
  %.029.lcssa.i.i.i.i.i.i15.i.i.i.i.i.i.i.i = phi ptr [ %i.ao, %_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i.i.i.i.i.i.i.i ], [ %scevgep.i.i.i.i.i.i24.i.i.i.i.i.i.i.i, %bb.s ] ; 6 uses
  %.pre-phi.i.i.i.i.i.i16.i.i.i.i.i.i.i.i = ptrtoint ptr %.029.lcssa.i.i.i.i.i.i15.i.i.i.i.i.i.i.i to i64
  %i.cd = sub i64 %i.br, %.pre-phi.i.i.i.i.i.i16.i.i.i.i.i.i.i.i
  switch i64 %i.cd, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.thread.i.i.i.i.i.i.i.i [
    i64 3, label %bb.t
    i64 2, label %bb.v
    i64 1, label %bb.x
  ]

bb.t:                                             ; preds = %._crit_edge.i.i.i.i.i.i14.i.i.i.i.i.i.i.i
  %.029.val.i.i.i.i.i.i22.i.i.i.i.i.i.i.i = load i8, ptr %.029.lcssa.i.i.i.i.i.i15.i.i.i.i.i.i.i.i, align 1, !tbaa !46
  %i.ce = icmp slt i8 %.029.val.i.i.i.i.i.i22.i.i.i.i.i.i.i.i, 0
  br i1 %i.ce, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cf = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i15.i.i.i.i.i.i.i.i, i64 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge.i.i.i.i.i.i14.i.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i20.i.i.i.i.i.i.i.i = phi ptr [ %i.cf, %bb.u ], [ %.029.lcssa.i.i.i.i.i.i15.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i14.i.i.i.i.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i.i.i21.i.i.i.i.i.i.i.i = load i8, ptr %.1.i.i.i.i.i.i20.i.i.i.i.i.i.i.i, align 1, !tbaa !46
  %i.cg = icmp slt i8 %.1.val.i.i.i.i.i.i21.i.i.i.i.i.i.i.i, 0
  br i1 %i.cg, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ch = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i20.i.i.i.i.i.i.i.i, i64 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge.i.i.i.i.i.i14.i.i.i.i.i.i.i.i
  %.2.i.i.i.i.i.i17.i.i.i.i.i.i.i.i = phi ptr [ %i.ch, %bb.w ], [ %.029.lcssa.i.i.i.i.i.i15.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i14.i.i.i.i.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i.i18.i.i.i.i.i.i.i.i = load i8, ptr %.2.i.i.i.i.i.i17.i.i.i.i.i.i.i.i, align 1, !tbaa !46
  %i.ci = icmp slt i8 %.2.val.i.i.i.i.i.i18.i.i.i.i.i.i.i.i, 0
  br i1 %i.ci, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i.i.i.i.i, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.thread.i.i.i.i.i.i.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i.i.i.i.i.loopexit.split.loop.exit: ; preds = %bb.p
  %i.cj = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i.i.i.i.i.i.i.i, i64 1
  br label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i.i.i.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i.i.i.i.i.loopexit.split.loop.exit36: ; preds = %bb.q
  %i.ck = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i.i.i.i.i.i.i.i, i64 2
  br label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i.i.i.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i.i.i.i.i.loopexit.split.loop.exit38: ; preds = %bb.r
  %i.cl = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i.i.i.i.i.i.i.i, i64 3
  br label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i.i.i.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i25.i.i.i.i.i.i.i.i, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i.i.i.i.i.loopexit.split.loop.exit, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i.i.i.i.i.loopexit.split.loop.exit36, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i.i.i.i.i.loopexit.split.loop.exit38, %bb.x, %bb.v, %bb.t
  %.028.i.i.i.i.i.i19.i.i.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i20.i.i.i.i.i.i.i.i, %bb.v ], [ %.029.lcssa.i.i.i.i.i.i15.i.i.i.i.i.i.i.i, %bb.t ], [ %.2.i.i.i.i.i.i17.i.i.i.i.i.i.i.i, %bb.x ], [ %i.cl, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i.i.i.i.i.loopexit.split.loop.exit38 ], [ %i.ck, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i.i.i.i.i.loopexit.split.loop.exit36 ], [ %i.cj, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i.i.i.i.i.loopexit.split.loop.exit ], [ %.02943.i.i.i.i.i.i27.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i25.i.i.i.i.i.i.i.i ]
  %.not40.i.i.i.i.i.i.i.i = icmp eq ptr %i.bq, %.028.i.i.i.i.i.i19.i.i.i.i.i.i.i.i
  br i1 %.not40.i.i.i.i.i.i.i.i, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.thread.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i, !prof !320

.critedge.i.i.i.i.i.i.i.i:                        ; preds = %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i.i.i.i.i, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i.i.i.i.i
  %i.cm = call i32 @memcmp(ptr noundef %i.al, ptr noundef %i.ao, i64 noundef %i.an) #26
  br label %_ZL12gsiRecordCmpN4llvm9StringRefES0_.exit.i.i.i.i.i.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit35.thread.i.i.i.i.i.i.i.i: ; preds = %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i.i.i.i.i, %bb.x, %._crit_edge.i.i.i.i.i.i14.i.i.i.i.i.i.i.i
  %i.cn = call noundef i32 @_ZNK4llvm9StringRef19compare_insensitiveES0_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %i.ao, i64 %i.an) #22
  br label %_ZL12gsiRecordCmpN4llvm9StringRefES0_.exit.i.i.i.i.i.i.i

_ZL12gsiRecordCmpN4llvm9StringRefES0_.exit.i.i.i.i.i.i.i: ; preds = %_ZL13isAsciiStringN4llvm9StringRefE.exit35.thread.i.i.i.i.i.i.i.i, %.critedge.i.i.i.i.i.i.i.i, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ar, %bb.e ], [ %i.cm, %.critedge.i.i.i.i.i.i.i.i ], [ %i.cn, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.thread.i.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %.not.i.i.i.i.i.i.i = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZZZN4llvm3pdb20GSIHashStreamBuilder15finalizeBucketsEjNS_15MutableArrayRefINS0_10BulkPublicEEEENK3$_1clEmENKUlRKNS0_12PSHashRecordES8_E_clES8_S8_.exit.i.i.i.i.i.i", label %.split.i.i.i.i.i.i

.split.i.i.i.i.i.i:                               ; preds = %_ZL12gsiRecordCmpN4llvm9StringRefES0_.exit.i.i.i.i.i.i.i
  %i.co = icmp slt i32 %.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.co, label %.lr.ph.i.i.i.i.i.i.i.backedge, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZZNS3_20GSIHashStreamBuilder15finalizeBucketsEjNS2_15MutableArrayRefINS3_10BulkPublicEEEENK3$_1clEmEUlRKS4_SI_E_EEEvT_T0_.exit.i.i.i.i.i.i"

"_ZZZN4llvm3pdb20GSIHashStreamBuilder15finalizeBucketsEjNS_15MutableArrayRefINS0_10BulkPublicEEEENK3$_1clEmENKUlRKNS0_12PSHashRecordES8_E_clES8_S8_.exit.i.i.i.i.i.i": ; preds = %_ZL12gsiRecordCmpN4llvm9StringRefES0_.exit.i.i.i.i.i.i.i
  %i.cp = load i32, ptr %i.ag, align 4, !tbaa !59
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !59
  %i.cs = icmp ult i32 %i.cp, %i.cr
  br i1 %i.cs, label %.lr.ph.i.i.i.i.i.i.i.backedge, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZZNS3_20GSIHashStreamBuilder15finalizeBucketsEjNS2_15MutableArrayRefINS3_10BulkPublicEEEENK3$_1clEmEUlRKS4_SI_E_EEEvT_T0_.exit.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.backedge:                    ; preds = %"_ZZZN4llvm3pdb20GSIHashStreamBuilder15finalizeBucketsEjNS_15MutableArrayRefINS0_10BulkPublicEEEENK3$_1clEmENKUlRKNS0_12PSHashRecordES8_E_clES8_S8_.exit.i.i.i.i.i.i", %.split.i.i.i.i.i.i
  br label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !321

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZZNS3_20GSIHashStreamBuilder15finalizeBucketsEjNS2_15MutableArrayRefINS3_10BulkPublicEEEENK3$_1clEmEUlRKS4_SI_E_EEEvT_T0_.exit.i.i.i.i.i.i": ; preds = %"_ZZZN4llvm3pdb20GSIHashStreamBuilder15finalizeBucketsEjNS_15MutableArrayRefINS0_10BulkPublicEEEENK3$_1clEmENKUlRKNS0_12PSHashRecordES8_E_clES8_S8_.exit.i.i.i.i.i.i", %.split.i.i.i.i.i.i, %bb.d
  %.sroa.06.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.026.i.i.i.i.i.i, %bb.d ], [ %.sroa.0.012.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i ], [ %.sroa.0.012.i.i.i.i.i.i.i, %"_ZZZN4llvm3pdb20GSIHashStreamBuilder15finalizeBucketsEjNS_15MutableArrayRefINS0_10BulkPublicEEEENK3$_1clEmENKUlRKNS0_12PSHashRecordES8_E_clES8_S8_.exit.i.i.i.i.i.i" ]
  store i64 %i.ac, ptr %.sroa.06.0.lcssa.i.i.i.i.i.i.i, align 1
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.026.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ct, %i.p
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.preheader, label %bb.d, !llvm.loop !322

bb.y:                                             ; preds = %bb.b
  tail call fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS3_20GSIHashStreamBuilder15finalizeBucketsEjNS2_15MutableArrayRefINS3_10BulkPublicEEEENK3$_1clEmEUlRKS4_SI_E_EEEvT_SL_T0_"(ptr %i.j, ptr %i.p, ptr readonly %i.t)
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZZNS3_20GSIHashStreamBuilder15finalizeBucketsEjNS2_15MutableArrayRefINS3_10BulkPublicEEEENK3$_1clEmEUlRKS4_SI_E_EEEvT_T0_.exit.i.i.i.i.i.i", %bb.y, %bb.c
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.sroa.011.039.i = phi ptr [ %i.db, %.lr.ph.i ], [ %i.j, %.lr.ph.i.preheader ] ; 3 uses
  %i.cu = load ptr, ptr %i.r, align 8, !tbaa !318, !nonnull !22, !align !106
  %.0.copyload.i.i.i.i = load i32, ptr %.sroa.011.039.i, align 1
  %i.cv = zext i32 %.0.copyload.i.i.i.i to i64
  %i.cw = load ptr, ptr %i.cu, align 8, !tbaa !31
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.cw, i64 %i.cv
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 12
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !59
  %i.da = add i32 %i.cz, 1
  store i32 %i.da, ptr %.sroa.011.039.i, align 1
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.011.039.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.db, %i.p
  br i1 %.not.i, label %"_ZZN4llvm3pdb20GSIHashStreamBuilder15finalizeBucketsEjNS_15MutableArrayRefINS0_10BulkPublicEEEENK3$_1clEm.exit", label %.lr.ph.i

"_ZZN4llvm3pdb20GSIHashStreamBuilder15finalizeBucketsEjNS_15MutableArrayRefINS0_10BulkPublicEEEENK3$_1clEm.exit": ; preds = %.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZZNS3_20GSIHashStreamBuilder15finalizeBucketsEjNS2_15MutableArrayRefINS3_10BulkPublicEEEENK3$_1clEmEUlRKS4_SI_E_EEEvT_SL_T0_T1_"(ptr %0, ptr %1, i64 noundef %2, ptr nofree readonly captures(none) %3) unnamed_addr #2 {
bb.a:
  %4 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  %5 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  %6 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  %7 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  %8 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  %9 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS3_20GSIHashStreamBuilder15finalizeBucketsEjNS2_15MutableArrayRefINS3_10BulkPublicEEEENK3$_1clEmEUlRKS4_SI_E_EEEvT_SL_SL_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph56

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS3_20GSIHashStreamBuilder15finalizeBucketsEjNS2_15MutableArrayRefINS3_10BulkPublicEEEENK3$_1clEmEUlRKS4_SI_E_EEET_SL_SL_T0_.exit"
  %i.j = icmp eq i64 %i.md, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph56, !llvm.loop !323

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa52 = phi i64 [ %i.d, %.lr.ph ], [ %i.sf, %bb.b ] ; 2 uses
  %.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.se, %bb.b ] ; 2 uses
  %storemerge60.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.069.1.i.i, %bb.b ]
  %i.k = add nsw i64 %.lcssa52, -2                ; 2 uses
  %i.l = lshr i64 %i.k, 1                         ; 3 uses
  %i.m = add nsw i64 %.lcssa52, -1
  %i.n = lshr i64 %i.m, 1                         ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.p = and i64 %.lcssa, 8
  %i.q = icmp eq i64 %i.p, 0
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.s = or disjoint i64 %i.k, 1                  ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZZNS3_20GSIHashStreamBuilder15finalizeBucketsEjNS2_15MutableArrayRefINS3_10BulkPublicEEEENK3$_1clEmEUlRKS4_SI_E_EEEvT_T0_SM_T1_T2_.exit.i.i.i", %._crit_edge
  %.010.i.i.i = phi i64 [ %i.l, %._crit_edge ], [ %i.fq, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZZNS3_20GSIHashStreamBuilder15finalizeBucketsEjNS2_15MutableArrayRefINS3_10BulkPublicEEEENK3$_1clEmEUlRKS4_SI_E_EEEvT_T0_SM_T1_T2_.exit.i.i.i" ] ; 8 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %0, i64 %.010.i.i.i
  %.sroa.03.0.copyload.i.i.i = load i64, ptr %i.v, align 1 ; 2 uses
  %i.w = icmp slt i64 %.010.i.i.i, %i.n
  br i1 %i.w, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %"_ZZZN4llvm3pdb20GSIHashStreamBuilder15finalizeBucketsEjNS_15MutableArrayRefINS0_10BulkPublicEEEENK3$_1clEmENKUlRKNS0_12PSHashRecordES8_E_clES8_S8_.exit65.i.i.i"
  %.038.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %"_ZZZN4llvm3pdb20GSIHashStreamBuilder15finalizeBucketsEjNS_15MutableArrayRefINS0_10BulkPublicEEEENK3$_1clEmENKUlRKNS0_12PSHashRecordES8_E_clES8_S8_.exit65.i.i.i" ], [ %.010.i.i.i, %bb.c ] ; 2 uses
  %i.x = shl i64 %.038.i.i.i.i, 1                 ; 2 uses
  %i.y = add i64 %i.x, 2                          ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %0, i64 %i.y
  %i.aa = or disjoint i64 %i.x, 1                 ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %i.aa
  %.val1.i.i.i.i.i = load i32, ptr %i.z, align 1
  %.val2.i.i.i.i.i = load i32, ptr %i.ab, align 1
  %i.ac = zext i32 %.val1.i.i.i.i.i to i64
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %i.ac ; 3 uses
  %i.ae = zext i32 %.val2.i.i.i.i.i to i64
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %i.ae ; 3 uses
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !55 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !58 ; 2 uses
  %i.aj = zext i32 %i.ai to i64                   ; 9 uses
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !55 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !58 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %i.ag, ptr %8, align 8
  store i64 %i.aj, ptr %i.o, align 8
  %.not.i.i11.i.i.i = icmp eq i32 %i.ai, %i.am
  br i1 %.not.i.i11.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %10 = zext i32 %i.am to i64
  %i.an = call i32 @llvm.ucmp.i32.i64(i64 %i.aj, i64 %10)
  br label %_ZL12gsiRecordCmpN4llvm9StringRefES0_.exit.i12.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aj ; 2 uses
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = lshr i64 %i.aj, 2                       ; 3 uses
  %.not5.i16.i.i.i = icmp eq i64 %i.aq, 0         ; 2 uses
  br i1 %.not5.i16.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i26.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i17.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i17.i.i.i:         ; preds = %bb.e
  %i.ar = and i64 %i.aj, 4294967292
  %scevgep.i.i.i.i.i.i.i.i18.i.i.i = getelementptr i8, ptr %i.ag, i64 %i.ar
  br label %.lr.ph.i.i.i.i.i.i.i.i19.i.i.i

.lr.ph.i.i.i.i.i.i.i.i19.i.i.i:                   ; preds = %bb.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i17.i.i.i
  %.044.i.i.i.i.i.i.i.i20.i.i.i = phi i64 [ %i.ba, %bb.i ], [ %i.aq, %.lr.ph.preheader.i.i.i.i.i.i.i.i17.i.i.i ] ; 2 uses
  %.02943.i.i.i.i.i.i.i.i21.i.i.i = phi ptr [ %i.az, %bb.i ], [ %i.ag, %.lr.ph.preheader.i.i.i.i.i.i.i.i17.i.i.i ] ; 9 uses
  %.029.val32.i.i.i.i.i.i.i.i22.i.i.i = load i8, ptr %.02943.i.i.i.i.i.i.i.i21.i.i.i, align 1, !tbaa !46
  %i.as = icmp slt i8 %.029.val32.i.i.i.i.i.i.i.i22.i.i.i, 0
  br i1 %i.as, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i57.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i19.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i21.i.i.i, i64 1
  %.val31.i.i.i.i.i.i.i.i23.i.i.i = load i8, ptr %i.at, align 1, !tbaa !46
  %i.au = icmp slt i8 %.val31.i.i.i.i.i.i.i.i23.i.i.i, 0
  br i1 %i.au, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i57.i.i.i.loopexit.split.loop.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i21.i.i.i, i64 2
  %.val30.i.i.i.i.i.i.i.i24.i.i.i = load i8, ptr %i.av, align 1, !tbaa !46
  %i.aw = icmp slt i8 %.val30.i.i.i.i.i.i.i.i24.i.i.i, 0
  br i1 %i.aw, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i57.i.i.i.loopexit.split.loop.exit235, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i21.i.i.i, i64 3
  %.val.i.i.i.i.i.i.i.i25.i.i.i = load i8, ptr %i.ax, align 1, !tbaa !46
  %i.ay = icmp slt i8 %.val.i.i.i.i.i.i.i.i25.i.i.i, 0
  br i1 %i.ay, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i57.i.i.i.loopexit.split.loop.exit237, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i21.i.i.i, i64 4
  %i.ba = add nsw i64 %.044.i.i.i.i.i.i.i.i20.i.i.i, -1
  %i.bb = icmp sgt i64 %.044.i.i.i.i.i.i.i.i20.i.i.i, 1
  br i1 %i.bb, label %.lr.ph.i.i.i.i.i.i.i.i19.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i26.i.i.i, !llvm.loop !319

._crit_edge.i.i.i.i.i.i.i.i26.i.i.i:              ; preds = %bb.i, %bb.e
  %.029.lcssa.i.i.i.i.i.i.i.i27.i.i.i = phi ptr [ %i.ag, %bb.e ], [ %scevgep.i.i.i.i.i.i.i.i18.i.i.i, %bb.i ] ; 6 uses
  %.pre-phi.i.i.i.i.i.i.i.i28.i.i.i = ptrtoint ptr %.029.lcssa.i.i.i.i.i.i.i.i27.i.i.i to i64
  %i.bc = sub i64 %i.ap, %.pre-phi.i.i.i.i.i.i.i.i28.i.i.i
  switch i64 %i.bc, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i.i31.i.i.i [
    i64 3, label %bb.j
    i64 2, label %bb.l
    i64 1, label %bb.n
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i26.i.i.i
  %.029.val.i.i.i.i.i.i.i.i61.i.i.i = load i8, ptr %.029.lcssa.i.i.i.i.i.i.i.i27.i.i.i, align 1, !tbaa !46
  %i.bd = icmp slt i8 %.029.val.i.i.i.i.i.i.i.i61.i.i.i, 0
  br i1 %i.bd, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i57.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i.i.i27.i.i.i, i64 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i.i.i.i.i.i.i26.i.i.i
  %.1.i.i.i.i.i.i.i.i59.i.i.i = phi ptr [ %i.be, %bb.k ], [ %.029.lcssa.i.i.i.i.i.i.i.i27.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i26.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i.i.i.i.i60.i.i.i = load i8, ptr %.1.i.i.i.i.i.i.i.i59.i.i.i, align 1, !tbaa !46
  %i.bf = icmp slt i8 %.1.val.i.i.i.i.i.i.i.i60.i.i.i, 0
  br i1 %i.bf, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i57.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.i.i59.i.i.i, i64 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i.i.i.i.i.i.i26.i.i.i
  %.2.i.i.i.i.i.i.i.i29.i.i.i = phi ptr [ %i.bg, %bb.m ], [ %.029.lcssa.i.i.i.i.i.i.i.i27.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i26.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i.i.i.i30.i.i.i = load i8, ptr %.2.i.i.i.i.i.i.i.i29.i.i.i, align 1, !tbaa !46
  %i.bh = icmp slt i8 %.2.val.i.i.i.i.i.i.i.i30.i.i.i, 0
  br i1 %i.bh, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i57.i.i.i, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i.i31.i.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i57.i.i.i.loopexit.split.loop.exit: ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i21.i.i.i, i64 1
  br label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i57.i.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i57.i.i.i.loopexit.split.loop.exit235: ; preds = %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i21.i.i.i, i64 2
  br label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i57.i.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i57.i.i.i.loopexit.split.loop.exit237: ; preds = %bb.h
  %i.bk = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i21.i.i.i, i64 3
  br label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i57.i.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i57.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i19.i.i.i, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i57.i.i.i.loopexit.split.loop.exit, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i57.i.i.i.loopexit.split.loop.exit235, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i57.i.i.i.loopexit.split.loop.exit237, %bb.n, %bb.l, %bb.j
  %.028.i.i.i.i.i.i.i.i58.i.i.i = phi ptr [ %.1.i.i.i.i.i.i.i.i59.i.i.i, %bb.l ], [ %.029.lcssa.i.i.i.i.i.i.i.i27.i.i.i, %bb.j ], [ %.2.i.i.i.i.i.i.i.i29.i.i.i, %bb.n ], [ %i.bk, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i57.i.i.i.loopexit.split.loop.exit237 ], [ %i.bi, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i57.i.i.i.loopexit.split.loop.exit ], [ %i.bj, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i57.i.i.i.loopexit.split.loop.exit235 ], [ %.02943.i.i.i.i.i.i.i.i21.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i19.i.i.i ]
  %i.bl = icmp eq ptr %i.ao, %.028.i.i.i.i.i.i.i.i58.i.i.i
  br i1 %i.bl, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i.i31.i.i.i, label %.critedge.i.i50.i.i.i, !prof !320

_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i.i31.i.i.i: ; preds = %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i57.i.i.i, %bb.n, %._crit_edge.i.i.i.i.i.i.i.i26.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.aj ; 2 uses
  %i.bn = ptrtoint ptr %i.bm to i64
  br i1 %.not5.i16.i.i.i, label %._crit_edge.i.i.i.i.i.i14.i.i41.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i23.i.i32.i.i.i

.lr.ph.preheader.i.i.i.i.i.i23.i.i32.i.i.i:       ; preds = %_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i.i31.i.i.i
  %i.bo = and i64 %i.aj, 4294967292
  %scevgep.i.i.i.i.i.i24.i.i33.i.i.i = getelementptr i8, ptr %i.ak, i64 %i.bo
  br label %.lr.ph.i.i.i.i.i.i25.i.i34.i.i.i

.lr.ph.i.i.i.i.i.i25.i.i34.i.i.i:                 ; preds = %bb.r, %.lr.ph.preheader.i.i.i.i.i.i23.i.i32.i.i.i
  %.044.i.i.i.i.i.i26.i.i35.i.i.i = phi i64 [ %i.bx, %bb.r ], [ %i.aq, %.lr.ph.preheader.i.i.i.i.i.i23.i.i32.i.i.i ] ; 2 uses
  %.02943.i.i.i.i.i.i27.i.i36.i.i.i = phi ptr [ %i.bw, %bb.r ], [ %i.ak, %.lr.ph.preheader.i.i.i.i.i.i23.i.i32.i.i.i ] ; 9 uses
  %.029.val32.i.i.i.i.i.i28.i.i37.i.i.i = load i8, ptr %.02943.i.i.i.i.i.i27.i.i36.i.i.i, align 1, !tbaa !46
  %i.bp = icmp slt i8 %.029.val32.i.i.i.i.i.i28.i.i37.i.i.i, 0
  br i1 %i.bp, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i47.i.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i.i25.i.i34.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i.i36.i.i.i, i64 1
  %.val31.i.i.i.i.i.i29.i.i38.i.i.i = load i8, ptr %i.bq, align 1, !tbaa !46
  %i.br = icmp slt i8 %.val31.i.i.i.i.i.i29.i.i38.i.i.i, 0
  br i1 %i.br, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i47.i.i.i.loopexit.split.loop.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i.i36.i.i.i, i64 2
  %.val30.i.i.i.i.i.i30.i.i39.i.i.i = load i8, ptr %i.bs, align 1, !tbaa !46
  %i.bt = icmp slt i8 %.val30.i.i.i.i.i.i30.i.i39.i.i.i, 0
  br i1 %i.bt, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i47.i.i.i.loopexit.split.loop.exit243, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i.i36.i.i.i, i64 3
  %.val.i.i.i.i.i.i31.i.i40.i.i.i = load i8, ptr %i.bu, align 1, !tbaa !46
  %i.bv = icmp slt i8 %.val.i.i.i.i.i.i31.i.i40.i.i.i, 0
  br i1 %i.bv, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i47.i.i.i.loopexit.split.loop.exit245, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bw = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i.i36.i.i.i, i64 4
  %i.bx = add nsw i64 %.044.i.i.i.i.i.i26.i.i35.i.i.i, -1
  %i.by = icmp sgt i64 %.044.i.i.i.i.i.i26.i.i35.i.i.i, 1
  br i1 %i.by, label %.lr.ph.i.i.i.i.i.i25.i.i34.i.i.i, label %._crit_edge.i.i.i.i.i.i14.i.i41.i.i.i, !llvm.loop !319

._crit_edge.i.i.i.i.i.i14.i.i41.i.i.i:            ; preds = %bb.r, %_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i.i31.i.i.i
  %.029.lcssa.i.i.i.i.i.i15.i.i42.i.i.i = phi ptr [ %i.ak, %_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i.i31.i.i.i ], [ %scevgep.i.i.i.i.i.i24.i.i33.i.i.i, %bb.r ] ; 6 uses
  %.pre-phi.i.i.i.i.i.i16.i.i43.i.i.i = ptrtoint ptr %.029.lcssa.i.i.i.i.i.i15.i.i42.i.i.i to i64
  %i.bz = sub i64 %i.bn, %.pre-phi.i.i.i.i.i.i16.i.i43.i.i.i
  switch i64 %i.bz, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.thread.i.i46.i.i.i [
    i64 3, label %bb.s
    i64 2, label %bb.u
    i64 1, label %bb.w
  ]

bb.s:                                             ; preds = %._crit_edge.i.i.i.i.i.i14.i.i41.i.i.i
  %.029.val.i.i.i.i.i.i22.i.i53.i.i.i = load i8, ptr %.029.lcssa.i.i.i.i.i.i15.i.i42.i.i.i, align 1, !tbaa !46
  %i.ca = icmp slt i8 %.029.val.i.i.i.i.i.i22.i.i53.i.i.i, 0
  br i1 %i.ca, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i47.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cb = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i15.i.i42.i.i.i, i64 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i.i.i.i.i.i14.i.i41.i.i.i
  %.1.i.i.i.i.i.i20.i.i51.i.i.i = phi ptr [ %i.cb, %bb.t ], [ %.029.lcssa.i.i.i.i.i.i15.i.i42.i.i.i, %._crit_edge.i.i.i.i.i.i14.i.i41.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i.i.i21.i.i52.i.i.i = load i8, ptr %.1.i.i.i.i.i.i20.i.i51.i.i.i, align 1, !tbaa !46
  %i.cc = icmp slt i8 %.1.val.i.i.i.i.i.i21.i.i52.i.i.i, 0
  br i1 %i.cc, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i47.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cd = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i20.i.i51.i.i.i, i64 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge.i.i.i.i.i.i14.i.i41.i.i.i
  %.2.i.i.i.i.i.i17.i.i44.i.i.i = phi ptr [ %i.cd, %bb.v ], [ %.029.lcssa.i.i.i.i.i.i15.i.i42.i.i.i, %._crit_edge.i.i.i.i.i.i14.i.i41.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i.i18.i.i45.i.i.i = load i8, ptr %.2.i.i.i.i.i.i17.i.i44.i.i.i, align 1, !tbaa !46
  %i.ce = icmp slt i8 %.2.val.i.i.i.i.i.i18.i.i45.i.i.i, 0
  br i1 %i.ce, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i47.i.i.i, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.thread.i.i46.i.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i47.i.i.i.loopexit.split.loop.exit: ; preds = %bb.o
  %i.cf = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i.i36.i.i.i, i64 1
  br label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i47.i.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i47.i.i.i.loopexit.split.loop.exit243: ; preds = %bb.p
  %i.cg = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i.i36.i.i.i, i64 2
  br label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i47.i.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i47.i.i.i.loopexit.split.loop.exit245: ; preds = %bb.q
  %i.ch = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i.i36.i.i.i, i64 3
  br label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i47.i.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i47.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i25.i.i34.i.i.i, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i47.i.i.i.loopexit.split.loop.exit, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i47.i.i.i.loopexit.split.loop.exit243, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i47.i.i.i.loopexit.split.loop.exit245, %bb.w, %bb.u, %bb.s
  %.028.i.i.i.i.i.i19.i.i48.i.i.i = phi ptr [ %.1.i.i.i.i.i.i20.i.i51.i.i.i, %bb.u ], [ %.029.lcssa.i.i.i.i.i.i15.i.i42.i.i.i, %bb.s ], [ %.2.i.i.i.i.i.i17.i.i44.i.i.i, %bb.w ], [ %i.ch, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i47.i.i.i.loopexit.split.loop.exit245 ], [ %i.cf, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i47.i.i.i.loopexit.split.loop.exit ], [ %i.cg, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i47.i.i.i.loopexit.split.loop.exit243 ], [ %.02943.i.i.i.i.i.i27.i.i36.i.i.i, %.lr.ph.i.i.i.i.i.i25.i.i34.i.i.i ]
  %.not40.i.i49.i.i.i = icmp eq ptr %i.bm, %.028.i.i.i.i.i.i19.i.i48.i.i.i
  br i1 %.not40.i.i49.i.i.i, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.thread.i.i46.i.i.i, label %.critedge.i.i50.i.i.i, !prof !320

.critedge.i.i50.i.i.i:                            ; preds = %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i47.i.i.i, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i57.i.i.i
  %i.ci = call i32 @memcmp(ptr noundef %i.ag, ptr noundef %i.ak, i64 noundef %i.aj) #26
  br label %_ZL12gsiRecordCmpN4llvm9StringRefES0_.exit.i12.i.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit35.thread.i.i46.i.i.i: ; preds = %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i47.i.i.i, %bb.w, %._crit_edge.i.i.i.i.i.i14.i.i41.i.i.i
  %i.cj = call noundef i32 @_ZNK4llvm9StringRef19compare_insensitiveES0_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr %i.ak, i64 %i.aj) #22
  br label %_ZL12gsiRecordCmpN4llvm9StringRefES0_.exit.i12.i.i.i

_ZL12gsiRecordCmpN4llvm9StringRefES0_.exit.i12.i.i.i: ; preds = %_ZL13isAsciiStringN4llvm9StringRefE.exit35.thread.i.i46.i.i.i, %.critedge.i.i50.i.i.i, %bb.d
  %.0.i.i13.i.i.i = phi i32 [ %i.an, %bb.d ], [ %i.ci, %.critedge.i.i50.i.i.i ], [ %i.cj, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.thread.i.i46.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %.not.i14.i.i.i = icmp eq i32 %.0.i.i13.i.i.i, 0
  br i1 %.not.i14.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZL12gsiRecordCmpN4llvm9StringRefES0_.exit.i12.i.i.i
  %i.ck = icmp slt i32 %.0.i.i13.i.i.i, 0
  br label %"_ZZZN4llvm3pdb20GSIHashStreamBuilder15finalizeBucketsEjNS_15MutableArrayRefINS0_10BulkPublicEEEENK3$_1clEmENKUlRKNS0_12PSHashRecordES8_E_clES8_S8_.exit65.i.i.i"

bb.y:                                             ; preds = %_ZL12gsiRecordCmpN4llvm9StringRefES0_.exit.i12.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !59
  %i.cn = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !59
  %i.cp = icmp ult i32 %i.cm, %i.co
  br label %"_ZZZN4llvm3pdb20GSIHashStreamBuilder15finalizeBucketsEjNS_15MutableArrayRefINS0_10BulkPublicEEEENK3$_1clEmENKUlRKNS0_12PSHashRecordES8_E_clES8_S8_.exit65.i.i.i"

"_ZZZN4llvm3pdb20GSIHashStreamBuilder15finalizeBucketsEjNS_15MutableArrayRefINS0_10BulkPublicEEEENK3$_1clEmENKUlRKNS0_12PSHashRecordES8_E_clES8_S8_.exit65.i.i.i": ; preds = %bb.y, %bb.x
  %.0.i15.i.i.i = phi i1 [ %i.ck, %bb.x ], [ %i.cp, %bb.y ]
  %spec.select.i.i.i.i = select i1 %.0.i15.i.i.i, i64 %i.aa, i64 %i.y ; 4 uses
  %i.cq = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.cr = getelementptr inbounds [8 x i8], ptr %0, i64 %.038.i.i.i.i
  %i.cs = load i64, ptr %i.cq, align 1
  store i64 %i.cs, ptr %i.cr, align 1
  %i.ct = icmp slt i64 %spec.select.i.i.i.i, %i.n
  br i1 %i.ct, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !324

._crit_edge.i.i.i.i:                              ; preds = %"_ZZZN4llvm3pdb20GSIHashStreamBuilder15finalizeBucketsEjNS_15MutableArrayRefINS0_10BulkPublicEEEENK3$_1clEmENKUlRKNS0_12PSHashRecordES8_E_clES8_S8_.exit65.i.i.i", %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ %.010.i.i.i, %bb.c ], [ %spec.select.i.i.i.i, %"_ZZZN4llvm3pdb20GSIHashStreamBuilder15finalizeBucketsEjNS_15MutableArrayRefINS0_10BulkPublicEEEENK3$_1clEmENKUlRKNS0_12PSHashRecordES8_E_clES8_S8_.exit65.i.i.i" ] ; 2 uses
  %i.cu = icmp eq i64 %.0.lcssa.i.i.i.i, %i.l
  %or.cond.i.i.i = select i1 %i.q, i1 %i.cu, i1 false
  br i1 %or.cond.i.i.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %._crit_edge.i.i.i.i
  %i.cv = load i64, ptr %i.t, align 1
  store i64 %i.cv, ptr %i.u, align 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.s, %bb.z ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.cw = icmp sgt i64 %.1.i.i.i.i, %.010.i.i.i
  br i1 %i.cw, label %.lr.ph.i.i.preheader.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZZNS3_20GSIHashStreamBuilder15finalizeBucketsEjNS2_15MutableArrayRefINS3_10BulkPublicEEEENK3$_1clEmEUlRKS4_SI_E_EEEvT_T0_SM_T1_T2_.exit.i.i.i"

.lr.ph.i.i.preheader.i.i.i:                       ; preds = %bb.aa
  %i.cx = and i64 %.sroa.03.0.copyload.i.i.i, 4294967295
  %i.cy = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %i.cx ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.av, %.lr.ph.i.i.preheader.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %.0911.i.i.i.i.i, %bb.av ], [ %.1.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i ] ; 4 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.db = getelementptr inbounds [8 x i8], ptr %0, i64 %.0911.i.i.i.i.i ; 2 uses
  %.val2.i.i.i.i.i.i = load i32, ptr %i.db, align 1
  %i.dc = zext i32 %.val2.i.i.i.i.i.i to i64
  %i.dd = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %i.dc ; 3 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !55 ; 6 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !58 ; 2 uses
  %i.dh = zext i32 %i.dg to i64                   ; 9 uses
  %i.di = load ptr, ptr %i.cy, align 8, !tbaa !55 ; 6 uses
  %i.dj = load i32, ptr %i.cz, align 8, !tbaa !58 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %i.de, ptr %9, align 8
  store i64 %i.dh, ptr %i.r, align 8
  %.not.i.i.i.i.i = icmp eq i32 %i.dg, %i.dj
  br i1 %.not.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i.i
  %11 = zext i32 %i.dj to i64
  %i.dk = call i32 @llvm.ucmp.i32.i64(i64 %i.dh, i64 %11)
  br label %_ZL12gsiRecordCmpN4llvm9StringRefES0_.exit.i.i.i.i

bb.ac:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dh ; 2 uses
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = lshr i64 %i.dh, 2                       ; 3 uses
  %.not5.i.i.i.i = icmp eq i64 %i.dn, 0           ; 2 uses
  br i1 %.not5.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.ac
  %i.do = and i64 %i.dh, 4294967292
  %scevgep.i.i.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.de, i64 %i.do
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.ag, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i
  %.044.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dx, %bb.ag ], [ %i.dn, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.02943.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dw, %bb.ag ], [ %i.de, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i ] ; 9 uses
  %.029.val32.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.02943.i.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !46
  %i.dp = icmp slt i8 %.029.val32.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.dp, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i.i.i.i, i64 1
  %.val31.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.dq, align 1, !tbaa !46
  %i.dr = icmp slt i8 %.val31.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.dr, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i.i.loopexit.split.loop.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ds = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i.i.i.i, i64 2
  %.val30.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.ds, align 1, !tbaa !46
  %i.dt = icmp slt i8 %.val30.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.dt, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i.i.loopexit.split.loop.exit251, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.du = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i.i.i.i, i64 3
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.du, align 1, !tbaa !46
  %i.dv = icmp slt i8 %.val.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.dv, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i.i.loopexit.split.loop.exit253, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dw = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i.i.i.i, i64 4
  %i.dx = add nsw i64 %.044.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.dy = icmp sgt i64 %.044.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.dy, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !319

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.ag, %bb.ac
  %.029.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.de, %bb.ac ], [ %scevgep.i.i.i.i.i.i.i.i.i.i.i, %bb.ag ] ; 6 uses
  %.pre-phi.i.i.i.i.i.i.i.i.i.i.i = ptrtoint ptr %.029.lcssa.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.dz = sub i64 %i.dm, %.pre-phi.i.i.i.i.i.i.i.i.i.i.i
  switch i64 %i.dz, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i.i.i.i.i [
    i64 3, label %bb.ah
    i64 2, label %bb.aj
    i64 1, label %bb.al
  ]

bb.ah:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %.029.val.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.029.lcssa.i.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !46
  %i.ea = icmp slt i8 %.029.val.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ea, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eb = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i.i.i.i.i.i, i64 1
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.eb, %bb.ai ], [ %.029.lcssa.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.1.i.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !46
  %i.ec = icmp slt i8 %.1.val.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ec, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ed = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.i.i.i.i.i, i64 1
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %.2.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ed, %bb.ak ], [ %.029.lcssa.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.2.i.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !46
  %i.ee = icmp slt i8 %.2.val.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ee, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i.i, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i.i.i.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i.i.loopexit.split.loop.exit: ; preds = %bb.ad
  %i.ef = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i.i.i.i, i64 1
  br label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i.i.loopexit.split.loop.exit251: ; preds = %bb.ae
  %i.eg = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i.i.i.i, i64 2
  br label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i.i.loopexit.split.loop.exit253: ; preds = %bb.af
  %i.eh = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i.i.i.i, i64 3
  br label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i.i.loopexit.split.loop.exit, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i.i.loopexit.split.loop.exit251, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i.i.loopexit.split.loop.exit253, %bb.al, %bb.aj, %bb.ah
  %.028.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i.i.i.i.i.i, %bb.aj ], [ %.029.lcssa.i.i.i.i.i.i.i.i.i.i.i, %bb.ah ], [ %.2.i.i.i.i.i.i.i.i.i.i.i, %bb.al ], [ %i.eh, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i.i.loopexit.split.loop.exit253 ], [ %i.ef, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i.i.loopexit.split.loop.exit ], [ %i.eg, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i.i.loopexit.split.loop.exit251 ], [ %.02943.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ei = icmp eq ptr %i.dl, %.028.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.ei, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i.i.i.i.i, label %.critedge.i.i.i.i.i, !prof !320

_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i.i.i.i.i: ; preds = %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i.i, %bb.al, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dh ; 2 uses
  %i.ek = ptrtoint ptr %i.ej to i64
  br i1 %.not5.i.i.i.i, label %._crit_edge.i.i.i.i.i.i14.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i23.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i23.i.i.i.i.i:         ; preds = %_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i.i.i.i.i
  %i.el = and i64 %i.dh, 4294967292
  %scevgep.i.i.i.i.i.i24.i.i.i.i.i = getelementptr i8, ptr %i.di, i64 %i.el
  br label %.lr.ph.i.i.i.i.i.i25.i.i.i.i.i

.lr.ph.i.i.i.i.i.i25.i.i.i.i.i:                   ; preds = %bb.ap, %.lr.ph.preheader.i.i.i.i.i.i23.i.i.i.i.i
  %.044.i.i.i.i.i.i26.i.i.i.i.i = phi i64 [ %i.eu, %bb.ap ], [ %i.dn, %.lr.ph.preheader.i.i.i.i.i.i23.i.i.i.i.i ] ; 2 uses
  %.02943.i.i.i.i.i.i27.i.i.i.i.i = phi ptr [ %i.et, %bb.ap ], [ %i.di, %.lr.ph.preheader.i.i.i.i.i.i23.i.i.i.i.i ] ; 9 uses
  %.029.val32.i.i.i.i.i.i28.i.i.i.i.i = load i8, ptr %.02943.i.i.i.i.i.i27.i.i.i.i.i, align 1, !tbaa !46
  %i.em = icmp slt i8 %.029.val32.i.i.i.i.i.i28.i.i.i.i.i, 0
  br i1 %i.em, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i.i, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i.i.i.i.i.i25.i.i.i.i.i
  %i.en = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i.i.i.i.i, i64 1
  %.val31.i.i.i.i.i.i29.i.i.i.i.i = load i8, ptr %i.en, align 1, !tbaa !46
  %i.eo = icmp slt i8 %.val31.i.i.i.i.i.i29.i.i.i.i.i, 0
  br i1 %i.eo, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i.i.loopexit.split.loop.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ep = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i.i.i.i.i, i64 2
  %.val30.i.i.i.i.i.i30.i.i.i.i.i = load i8, ptr %i.ep, align 1, !tbaa !46
  %i.eq = icmp slt i8 %.val30.i.i.i.i.i.i30.i.i.i.i.i, 0
  br i1 %i.eq, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i.i.loopexit.split.loop.exit259, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.er = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i.i.i.i.i, i64 3
  %.val.i.i.i.i.i.i31.i.i.i.i.i = load i8, ptr %i.er, align 1, !tbaa !46
  %i.es = icmp slt i8 %.val.i.i.i.i.i.i31.i.i.i.i.i, 0
  br i1 %i.es, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i.i.loopexit.split.loop.exit261, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.et = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i.i.i.i.i, i64 4
  %i.eu = add nsw i64 %.044.i.i.i.i.i.i26.i.i.i.i.i, -1
  %i.ev = icmp sgt i64 %.044.i.i.i.i.i.i26.i.i.i.i.i, 1
  br i1 %i.ev, label %.lr.ph.i.i.i.i.i.i25.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i14.i.i.i.i.i, !llvm.loop !319

._crit_edge.i.i.i.i.i.i14.i.i.i.i.i:              ; preds = %bb.ap, %_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i.i.i.i.i
  %.029.lcssa.i.i.i.i.i.i15.i.i.i.i.i = phi ptr [ %i.di, %_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i.i.i.i.i ], [ %scevgep.i.i.i.i.i.i24.i.i.i.i.i, %bb.ap ] ; 6 uses
  %.pre-phi.i.i.i.i.i.i16.i.i.i.i.i = ptrtoint ptr %.029.lcssa.i.i.i.i.i.i15.i.i.i.i.i to i64
  %i.ew = sub i64 %i.ek, %.pre-phi.i.i.i.i.i.i16.i.i.i.i.i
  switch i64 %i.ew, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.thread.i.i.i.i.i [
    i64 3, label %bb.aq
    i64 2, label %bb.as
    i64 1, label %bb.au
  ]

bb.aq:                                            ; preds = %._crit_edge.i.i.i.i.i.i14.i.i.i.i.i
  %.029.val.i.i.i.i.i.i22.i.i.i.i.i = load i8, ptr %.029.lcssa.i.i.i.i.i.i15.i.i.i.i.i, align 1, !tbaa !46
  %i.ex = icmp slt i8 %.029.val.i.i.i.i.i.i22.i.i.i.i.i, 0
  br i1 %i.ex, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ey = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i15.i.i.i.i.i, i64 1
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %._crit_edge.i.i.i.i.i.i14.i.i.i.i.i
  %.1.i.i.i.i.i.i20.i.i.i.i.i = phi ptr [ %i.ey, %bb.ar ], [ %.029.lcssa.i.i.i.i.i.i15.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i14.i.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i.i.i21.i.i.i.i.i = load i8, ptr %.1.i.i.i.i.i.i20.i.i.i.i.i, align 1, !tbaa !46
  %i.ez = icmp slt i8 %.1.val.i.i.i.i.i.i21.i.i.i.i.i, 0
  br i1 %i.ez, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fa = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i20.i.i.i.i.i, i64 1
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %._crit_edge.i.i.i.i.i.i14.i.i.i.i.i
  %.2.i.i.i.i.i.i17.i.i.i.i.i = phi ptr [ %i.fa, %bb.at ], [ %.029.lcssa.i.i.i.i.i.i15.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i14.i.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i.i18.i.i.i.i.i = load i8, ptr %.2.i.i.i.i.i.i17.i.i.i.i.i, align 1, !tbaa !46
  %i.fb = icmp slt i8 %.2.val.i.i.i.i.i.i18.i.i.i.i.i, 0
  br i1 %i.fb, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i.i, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.thread.i.i.i.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i.i.loopexit.split.loop.exit: ; preds = %bb.am
  %i.fc = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i.i.i.i.i, i64 1
  br label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i.i.loopexit.split.loop.exit259: ; preds = %bb.an
  %i.fd = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i.i.i.i.i, i64 2
  br label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i.i.loopexit.split.loop.exit261: ; preds = %bb.ao
  %i.fe = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i.i.i.i.i, i64 3
  br label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i25.i.i.i.i.i, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i.i.loopexit.split.loop.exit, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i.i.loopexit.split.loop.exit259, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i.i.loopexit.split.loop.exit261, %bb.au, %bb.as, %bb.aq
  %.028.i.i.i.i.i.i19.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i20.i.i.i.i.i, %bb.as ], [ %.029.lcssa.i.i.i.i.i.i15.i.i.i.i.i, %bb.aq ], [ %.2.i.i.i.i.i.i17.i.i.i.i.i, %bb.au ], [ %i.fe, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i.i.loopexit.split.loop.exit261 ], [ %i.fc, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i.i.loopexit.split.loop.exit ], [ %i.fd, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i.i.loopexit.split.loop.exit259 ], [ %.02943.i.i.i.i.i.i27.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i25.i.i.i.i.i ]
  %.not40.i.i.i.i.i = icmp eq ptr %i.ej, %.028.i.i.i.i.i.i19.i.i.i.i.i
  br i1 %.not40.i.i.i.i.i, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.thread.i.i.i.i.i, label %.critedge.i.i.i.i.i, !prof !320

.critedge.i.i.i.i.i:                              ; preds = %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i.i, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i.i
  %i.ff = call i32 @memcmp(ptr noundef %i.de, ptr noundef %i.di, i64 noundef %i.dh) #26
  br label %_ZL12gsiRecordCmpN4llvm9StringRefES0_.exit.i.i.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit35.thread.i.i.i.i.i: ; preds = %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i.i, %bb.au, %._crit_edge.i.i.i.i.i.i14.i.i.i.i.i
  %i.fg = call noundef i32 @_ZNK4llvm9StringRef19compare_insensitiveES0_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr %i.di, i64 %i.dh) #22
  br label %_ZL12gsiRecordCmpN4llvm9StringRefES0_.exit.i.i.i.i

_ZL12gsiRecordCmpN4llvm9StringRefES0_.exit.i.i.i.i: ; preds = %_ZL13isAsciiStringN4llvm9StringRefE.exit35.thread.i.i.i.i.i, %.critedge.i.i.i.i.i, %bb.ab
  %.0.i.i.i.i.i = phi i32 [ %i.dk, %bb.ab ], [ %i.ff, %.critedge.i.i.i.i.i ], [ %i.fg, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.thread.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %.not.i.i.i.i = icmp eq i32 %.0.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %"_ZZZN4llvm3pdb20GSIHashStreamBuilder15finalizeBucketsEjNS_15MutableArrayRefINS0_10BulkPublicEEEENK3$_1clEmENKUlRKNS0_12PSHashRecordES8_E_clES8_S8_.exit.i.i.i", label %.split.i.i.i

.split.i.i.i:                                     ; preds = %_ZL12gsiRecordCmpN4llvm9StringRefES0_.exit.i.i.i.i
  %i.fh = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.fh, label %bb.av, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZZNS3_20GSIHashStreamBuilder15finalizeBucketsEjNS2_15MutableArrayRefINS3_10BulkPublicEEEENK3$_1clEmEUlRKS4_SI_E_EEEvT_T0_SM_T1_T2_.exit.i.i.i"

"_ZZZN4llvm3pdb20GSIHashStreamBuilder15finalizeBucketsEjNS_15MutableArrayRefINS0_10BulkPublicEEEENK3$_1clEmENKUlRKNS0_12PSHashRecordES8_E_clES8_S8_.exit.i.i.i": ; preds = %_ZL12gsiRecordCmpN4llvm9StringRefES0_.exit.i.i.i.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dd, i64 12
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !59
  %i.fk = load i32, ptr %i.da, align 4, !tbaa !59
  %i.fl = icmp ult i32 %i.fj, %i.fk
  br i1 %i.fl, label %bb.av, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZZNS3_20GSIHashStreamBuilder15finalizeBucketsEjNS2_15MutableArrayRefINS3_10BulkPublicEEEENK3$_1clEmEUlRKS4_SI_E_EEEvT_T0_SM_T1_T2_.exit.i.i.i"

bb.av:                                            ; preds = %"_ZZZN4llvm3pdb20GSIHashStreamBuilder15finalizeBucketsEjNS_15MutableArrayRefINS0_10BulkPublicEEEENK3$_1clEmENKUlRKNS0_12PSHashRecordES8_E_clES8_S8_.exit.i.i.i", %.split.i.i.i
  %i.fm = getelementptr inbounds [8 x i8], ptr %0, i64 %.010.i.i.i.i.i
  %i.fn = load i64, ptr %i.db, align 1
  store i64 %i.fn, ptr %i.fm, align 1
  %i.fo = icmp sgt i64 %.0911.i.i.i.i.i, %.010.i.i.i
  br i1 %i.fo, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZZNS3_20GSIHashStreamBuilder15finalizeBucketsEjNS2_15MutableArrayRefINS3_10BulkPublicEEEENK3$_1clEmEUlRKS4_SI_E_EEEvT_T0_SM_T1_T2_.exit.i.i.i", !llvm.loop !325

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZZNS3_20GSIHashStreamBuilder15finalizeBucketsEjNS2_15MutableArrayRefINS3_10BulkPublicEEEENK3$_1clEmEUlRKS4_SI_E_EEEvT_T0_SM_T1_T2_.exit.i.i.i": ; preds = %bb.av, %"_ZZZN4llvm3pdb20GSIHashStreamBuilder15finalizeBucketsEjNS_15MutableArrayRefINS0_10BulkPublicEEEENK3$_1clEmENKUlRKNS0_12PSHashRecordES8_E_clES8_S8_.exit.i.i.i", %.split.i.i.i, %bb.aa
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.aa ], [ %.010.i.i.i.i.i, %"_ZZZN4llvm3pdb20GSIHashStreamBuilder15finalizeBucketsEjNS_15MutableArrayRefINS0_10BulkPublicEEEENK3$_1clEmENKUlRKNS0_12PSHashRecordES8_E_clES8_S8_.exit.i.i.i" ], [ %.0911.i.i.i.i.i, %bb.av ], [ %.010.i.i.i.i.i, %.split.i.i.i ]
  %i.fp = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store i64 %.sroa.03.0.copyload.i.i.i, ptr %i.fp, align 1
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.fq = add nsw i64 %.010.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS3_20GSIHashStreamBuilder15finalizeBucketsEjNS2_15MutableArrayRefINS3_10BulkPublicEEEENK3$_1clEmEUlRKS4_SI_E_EEEvT_SL_RT0_.exit.i.i", label %bb.c, !llvm.loop !326

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS3_20GSIHashStreamBuilder15finalizeBucketsEjNS2_15MutableArrayRefINS3_10BulkPublicEEEENK3$_1clEmEUlRKS4_SI_E_EEEvT_SL_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZZNS3_20GSIHashStreamBuilder15finalizeBucketsEjNS2_15MutableArrayRefINS3_10BulkPublicEEEENK3$_1clEmEUlRKS4_SI_E_EEEvT_T0_SM_T1_T2_.exit.i.i.i"
  %i.fr = icmp sgt i64 %.lcssa, 8
  br i1 %i.fr, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS3_20GSIHashStreamBuilder15finalizeBucketsEjNS2_15MutableArrayRefINS3_10BulkPublicEEEENK3$_1clEmEUlRKS4_SI_E_EEEvT_SL_SL_T0_.exit"

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS3_20GSIHashStreamBuilder15finalizeBucketsEjNS2_15MutableArrayRefINS3_10BulkPublicEEEENK3$_1clEmEUlRKS4_SI_E_EEEvT_SL_RT0_.exit.i.i"
  %i.fs = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ft = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.aw

bb.aw:                                            ; preds = %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS3_20GSIHashStreamBuilder15finalizeBucketsEjNS2_15MutableArrayRefINS3_10BulkPublicEEEENK3$_1clEmEUlRKS4_SI_E_EEEvT_SL_SL_RT0_.exit.i25.i", %.lr.ph.i9.i
  %.sroa.0.035.i.i = phi ptr [ %storemerge60.lcssa, %.lr.ph.i9.i ], [ %i.fu, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS3_20GSIHashStreamBuilder15finalizeBucketsEjNS2_15MutableArrayRefINS3_10BulkPublicEEEENK3$_1clEmEUlRKS4_SI_E_EEEvT_SL_SL_RT0_.exit.i25.i" ]
  %i.fu = getelementptr inbounds i8, ptr %.sroa.0.035.i.i, i64 -8 ; 4 uses
  %.sroa.03.0.copyload.i.i10.i = load i64, ptr %i.fu, align 1 ; 2 uses
  %i.fv = load i64, ptr %0, align 1
  store i64 %i.fv, ptr %i.fu, align 1
  %i.fw = ptrtoint ptr %i.fu to i64
  %i.fx = sub i64 %i.fw, %i.a                     ; 3 uses
  %i.fy = ashr exact i64 %i.fx, 3                 ; 3 uses
  %i.fz = add nsw i64 %i.fy, -1
  %i.ga = lshr i64 %i.fz, 1
  %i.gb = icmp sgt i64 %i.fy, 2
  br i1 %i.gb, label %.lr.ph.i.i.i75.i, label %._crit_edge.i.i.i11.i

.lr.ph.i.i.i75.i:                                 ; preds = %bb.aw, %"_ZZZN4llvm3pdb20GSIHashStreamBuilder15finalizeBucketsEjNS_15MutableArrayRefINS0_10BulkPublicEEEENK3$_1clEmENKUlRKNS0_12PSHashRecordES8_E_clES8_S8_.exit58.i.i"
  %.038.i.i.i76.i = phi i64 [ %spec.select.i.i.i79.i, %"_ZZZN4llvm3pdb20GSIHashStreamBuilder15finalizeBucketsEjNS_15MutableArrayRefINS0_10BulkPublicEEEENK3$_1clEmENKUlRKNS0_12PSHashRecordES8_E_clES8_S8_.exit58.i.i" ], [ 0, %bb.aw ] ; 2 uses
  %i.gc = shl i64 %.038.i.i.i76.i, 1              ; 2 uses
  %i.gd = add i64 %i.gc, 2                        ; 2 uses
  %i.ge = getelementptr inbounds [8 x i8], ptr %0, i64 %i.gd
  %i.gf = or disjoint i64 %i.gc, 1                ; 2 uses
  %i.gg = getelementptr inbounds [8 x i8], ptr %0, i64 %i.gf
  %.val1.i.i.i.i77.i = load i32, ptr %i.ge, align 1
  %.val2.i.i.i.i78.i = load i32, ptr %i.gg, align 1
  %i.gh = zext i32 %.val1.i.i.i.i77.i to i64
  %i.gi = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %i.gh ; 3 uses
  %i.gj = zext i32 %.val2.i.i.i.i78.i to i64
  %i.gk = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %i.gj ; 3 uses
  %i.gl = load ptr, ptr %i.gi, align 8, !tbaa !55 ; 6 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !58 ; 2 uses
  %i.go = zext i32 %i.gn to i64                   ; 9 uses
  %i.gp = load ptr, ptr %i.gk, align 8, !tbaa !55 ; 6 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !58 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %i.gl, ptr %6, align 8
  store i64 %i.go, ptr %i.fs, align 8
  %.not.i.i4.i.i = icmp eq i32 %i.gn, %i.gr
  br i1 %.not.i.i4.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.i.i.i75.i
  %12 = zext i32 %i.gr to i64
  %i.gs = call i32 @llvm.ucmp.i32.i64(i64 %i.go, i64 %12)
  br label %_ZL12gsiRecordCmpN4llvm9StringRefES0_.exit.i5.i.i

bb.ay:                                            ; preds = %.lr.ph.i.i.i75.i
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.go ; 2 uses
  %i.gu = ptrtoint ptr %i.gt to i64
  %i.gv = lshr i64 %i.go, 2                       ; 3 uses
  %.not5.i9.i.i = icmp eq i64 %i.gv, 0            ; 2 uses
  br i1 %.not5.i9.i.i, label %._crit_edge.i.i.i.i.i.i.i.i19.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i10.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i10.i.i:           ; preds = %bb.ay
  %i.gw = and i64 %i.go, 4294967292
  %scevgep.i.i.i.i.i.i.i.i11.i.i = getelementptr i8, ptr %i.gl, i64 %i.gw
  br label %.lr.ph.i.i.i.i.i.i.i.i12.i.i

.lr.ph.i.i.i.i.i.i.i.i12.i.i:                     ; preds = %bb.bc, %.lr.ph.preheader.i.i.i.i.i.i.i.i10.i.i
  %.044.i.i.i.i.i.i.i.i13.i.i = phi i64 [ %i.hf, %bb.bc ], [ %i.gv, %.lr.ph.preheader.i.i.i.i.i.i.i.i10.i.i ] ; 2 uses
  %.02943.i.i.i.i.i.i.i.i14.i.i = phi ptr [ %i.he, %bb.bc ], [ %i.gl, %.lr.ph.preheader.i.i.i.i.i.i.i.i10.i.i ] ; 9 uses
  %.029.val32.i.i.i.i.i.i.i.i15.i.i = load i8, ptr %.02943.i.i.i.i.i.i.i.i14.i.i, align 1, !tbaa !46
  %i.gx = icmp slt i8 %.029.val32.i.i.i.i.i.i.i.i15.i.i, 0
  br i1 %i.gx, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i50.i.i, label %bb.az

bb.az:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i12.i.i
  %i.gy = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i14.i.i, i64 1
  %.val31.i.i.i.i.i.i.i.i16.i.i = load i8, ptr %i.gy, align 1, !tbaa !46
  %i.gz = icmp slt i8 %.val31.i.i.i.i.i.i.i.i16.i.i, 0
  br i1 %i.gz, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i50.i.i.loopexit.split.loop.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ha = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i14.i.i, i64 2
  %.val30.i.i.i.i.i.i.i.i17.i.i = load i8, ptr %i.ha, align 1, !tbaa !46
  %i.hb = icmp slt i8 %.val30.i.i.i.i.i.i.i.i17.i.i, 0
  br i1 %i.hb, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i50.i.i.loopexit.split.loop.exit267, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hc = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i14.i.i, i64 3
  %.val.i.i.i.i.i.i.i.i18.i.i = load i8, ptr %i.hc, align 1, !tbaa !46
  %i.hd = icmp slt i8 %.val.i.i.i.i.i.i.i.i18.i.i, 0
  br i1 %i.hd, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i50.i.i.loopexit.split.loop.exit269, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.he = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i14.i.i, i64 4
  %i.hf = add nsw i64 %.044.i.i.i.i.i.i.i.i13.i.i, -1
  %i.hg = icmp sgt i64 %.044.i.i.i.i.i.i.i.i13.i.i, 1
  br i1 %i.hg, label %.lr.ph.i.i.i.i.i.i.i.i12.i.i, label %._crit_edge.i.i.i.i.i.i.i.i19.i.i, !llvm.loop !319

._crit_edge.i.i.i.i.i.i.i.i19.i.i:                ; preds = %bb.bc, %bb.ay
  %.029.lcssa.i.i.i.i.i.i.i.i20.i.i = phi ptr [ %i.gl, %bb.ay ], [ %scevgep.i.i.i.i.i.i.i.i11.i.i, %bb.bc ] ; 6 uses
  %.pre-phi.i.i.i.i.i.i.i.i21.i.i = ptrtoint ptr %.029.lcssa.i.i.i.i.i.i.i.i20.i.i to i64
  %i.hh = sub i64 %i.gu, %.pre-phi.i.i.i.i.i.i.i.i21.i.i
  switch i64 %i.hh, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i.i24.i.i [
    i64 3, label %bb.bd
    i64 2, label %bb.bf
    i64 1, label %bb.bh
  ]

bb.bd:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i19.i.i
  %.029.val.i.i.i.i.i.i.i.i54.i.i = load i8, ptr %.029.lcssa.i.i.i.i.i.i.i.i20.i.i, align 1, !tbaa !46
  %i.hi = icmp slt i8 %.029.val.i.i.i.i.i.i.i.i54.i.i, 0
  br i1 %i.hi, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i50.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hj = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i.i.i20.i.i, i64 1
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %._crit_edge.i.i.i.i.i.i.i.i19.i.i
  %.1.i.i.i.i.i.i.i.i52.i.i = phi ptr [ %i.hj, %bb.be ], [ %.029.lcssa.i.i.i.i.i.i.i.i20.i.i, %._crit_edge.i.i.i.i.i.i.i.i19.i.i ] ; 3 uses
  %.1.val.i.i.i.i.i.i.i.i53.i.i = load i8, ptr %.1.i.i.i.i.i.i.i.i52.i.i, align 1, !tbaa !46
  %i.hk = icmp slt i8 %.1.val.i.i.i.i.i.i.i.i53.i.i, 0
  br i1 %i.hk, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i50.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hl = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.i.i52.i.i, i64 1
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %._crit_edge.i.i.i.i.i.i.i.i19.i.i
  %.2.i.i.i.i.i.i.i.i22.i.i = phi ptr [ %i.hl, %bb.bg ], [ %.029.lcssa.i.i.i.i.i.i.i.i20.i.i, %._crit_edge.i.i.i.i.i.i.i.i19.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i.i.i.i23.i.i = load i8, ptr %.2.i.i.i.i.i.i.i.i22.i.i, align 1, !tbaa !46
  %i.hm = icmp slt i8 %.2.val.i.i.i.i.i.i.i.i23.i.i, 0
  br i1 %i.hm, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i50.i.i, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i.i24.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i50.i.i.loopexit.split.loop.exit: ; preds = %bb.az
  %i.hn = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i14.i.i, i64 1
  br label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i50.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i50.i.i.loopexit.split.loop.exit267: ; preds = %bb.ba
  %i.ho = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i14.i.i, i64 2
  br label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i50.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i50.i.i.loopexit.split.loop.exit269: ; preds = %bb.bb
  %i.hp = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i14.i.i, i64 3
  br label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i50.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i50.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i12.i.i, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i50.i.i.loopexit.split.loop.exit, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i50.i.i.loopexit.split.loop.exit267, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i50.i.i.loopexit.split.loop.exit269, %bb.bh, %bb.bf, %bb.bd
  %.028.i.i.i.i.i.i.i.i51.i.i = phi ptr [ %.1.i.i.i.i.i.i.i.i52.i.i, %bb.bf ], [ %.029.lcssa.i.i.i.i.i.i.i.i20.i.i, %bb.bd ], [ %.2.i.i.i.i.i.i.i.i22.i.i, %bb.bh ], [ %i.hp, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i50.i.i.loopexit.split.loop.exit269 ], [ %i.ho, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i50.i.i.loopexit.split.loop.exit267 ], [ %i.hn, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i50.i.i.loopexit.split.loop.exit ], [ %.02943.i.i.i.i.i.i.i.i14.i.i, %.lr.ph.i.i.i.i.i.i.i.i12.i.i ]
  %i.hq = icmp eq ptr %i.gt, %.028.i.i.i.i.i.i.i.i51.i.i
  br i1 %i.hq, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i.i24.i.i, label %.critedge.i.i43.i.i, !prof !320

_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i.i24.i.i: ; preds = %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i50.i.i, %bb.bh, %._crit_edge.i.i.i.i.i.i.i.i19.i.i
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.go ; 2 uses
  %i.hs = ptrtoint ptr %i.hr to i64
  br i1 %.not5.i9.i.i, label %._crit_edge.i.i.i.i.i.i14.i.i34.i.i, label %.lr.ph.preheader.i.i.i.i.i.i23.i.i25.i.i

.lr.ph.preheader.i.i.i.i.i.i23.i.i25.i.i:         ; preds = %_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i.i24.i.i
  %i.ht = and i64 %i.go, 4294967292
  %scevgep.i.i.i.i.i.i24.i.i26.i.i = getelementptr i8, ptr %i.gp, i64 %i.ht
  br label %.lr.ph.i.i.i.i.i.i25.i.i27.i.i

.lr.ph.i.i.i.i.i.i25.i.i27.i.i:                   ; preds = %bb.bl, %.lr.ph.preheader.i.i.i.i.i.i23.i.i25.i.i
  %.044.i.i.i.i.i.i26.i.i28.i.i = phi i64 [ %i.ic, %bb.bl ], [ %i.gv, %.lr.ph.preheader.i.i.i.i.i.i23.i.i25.i.i ] ; 2 uses
  %.02943.i.i.i.i.i.i27.i.i29.i.i = phi ptr [ %i.ib, %bb.bl ], [ %i.gp, %.lr.ph.preheader.i.i.i.i.i.i23.i.i25.i.i ] ; 9 uses
  %.029.val32.i.i.i.i.i.i28.i.i30.i.i = load i8, ptr %.02943.i.i.i.i.i.i27.i.i29.i.i, align 1, !tbaa !46
  %i.hu = icmp slt i8 %.029.val32.i.i.i.i.i.i28.i.i30.i.i, 0
  br i1 %i.hu, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i40.i.i, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph.i.i.i.i.i.i25.i.i27.i.i
  %i.hv = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i.i29.i.i, i64 1
  %.val31.i.i.i.i.i.i29.i.i31.i.i = load i8, ptr %i.hv, align 1, !tbaa !46
  %i.hw = icmp slt i8 %.val31.i.i.i.i.i.i29.i.i31.i.i, 0
  br i1 %i.hw, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i40.i.i.loopexit.split.loop.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hx = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i.i29.i.i, i64 2
  %.val30.i.i.i.i.i.i30.i.i32.i.i = load i8, ptr %i.hx, align 1, !tbaa !46
  %i.hy = icmp slt i8 %.val30.i.i.i.i.i.i30.i.i32.i.i, 0
  br i1 %i.hy, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i40.i.i.loopexit.split.loop.exit275, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hz = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i.i29.i.i, i64 3
  %.val.i.i.i.i.i.i31.i.i33.i.i = load i8, ptr %i.hz, align 1, !tbaa !46
  %i.ia = icmp slt i8 %.val.i.i.i.i.i.i31.i.i33.i.i, 0
  br i1 %i.ia, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i40.i.i.loopexit.split.loop.exit277, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ib = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i.i29.i.i, i64 4
  %i.ic = add nsw i64 %.044.i.i.i.i.i.i26.i.i28.i.i, -1
  %i.id = icmp sgt i64 %.044.i.i.i.i.i.i26.i.i28.i.i, 1
  br i1 %i.id, label %.lr.ph.i.i.i.i.i.i25.i.i27.i.i, label %._crit_edge.i.i.i.i.i.i14.i.i34.i.i, !llvm.loop !319

._crit_edge.i.i.i.i.i.i14.i.i34.i.i:              ; preds = %bb.bl, %_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i.i24.i.i
  %.029.lcssa.i.i.i.i.i.i15.i.i35.i.i = phi ptr [ %i.gp, %_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i.i24.i.i ], [ %scevgep.i.i.i.i.i.i24.i.i26.i.i, %bb.bl ] ; 6 uses
  %.pre-phi.i.i.i.i.i.i16.i.i36.i.i = ptrtoint ptr %.029.lcssa.i.i.i.i.i.i15.i.i35.i.i to i64
  %i.ie = sub i64 %i.hs, %.pre-phi.i.i.i.i.i.i16.i.i36.i.i
  switch i64 %i.ie, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.thread.i.i39.i.i [
    i64 3, label %bb.bm
    i64 2, label %bb.bo
    i64 1, label %bb.bq
  ]

bb.bm:                                            ; preds = %._crit_edge.i.i.i.i.i.i14.i.i34.i.i
  %.029.val.i.i.i.i.i.i22.i.i46.i.i = load i8, ptr %.029.lcssa.i.i.i.i.i.i15.i.i35.i.i, align 1, !tbaa !46
  %i.if = icmp slt i8 %.029.val.i.i.i.i.i.i22.i.i46.i.i, 0
  br i1 %i.if, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i40.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ig = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i15.i.i35.i.i, i64 1
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %._crit_edge.i.i.i.i.i.i14.i.i34.i.i
  %.1.i.i.i.i.i.i20.i.i44.i.i = phi ptr [ %i.ig, %bb.bn ], [ %.029.lcssa.i.i.i.i.i.i15.i.i35.i.i, %._crit_edge.i.i.i.i.i.i14.i.i34.i.i ] ; 3 uses
  %.1.val.i.i.i.i.i.i21.i.i45.i.i = load i8, ptr %.1.i.i.i.i.i.i20.i.i44.i.i, align 1, !tbaa !46
  %i.ih = icmp slt i8 %.1.val.i.i.i.i.i.i21.i.i45.i.i, 0
  br i1 %i.ih, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i40.i.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ii = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i20.i.i44.i.i, i64 1
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %._crit_edge.i.i.i.i.i.i14.i.i34.i.i
  %.2.i.i.i.i.i.i17.i.i37.i.i = phi ptr [ %i.ii, %bb.bp ], [ %.029.lcssa.i.i.i.i.i.i15.i.i35.i.i, %._crit_edge.i.i.i.i.i.i14.i.i34.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i.i18.i.i38.i.i = load i8, ptr %.2.i.i.i.i.i.i17.i.i37.i.i, align 1, !tbaa !46
  %i.ij = icmp slt i8 %.2.val.i.i.i.i.i.i18.i.i38.i.i, 0
  br i1 %i.ij, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i40.i.i, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.thread.i.i39.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i40.i.i.loopexit.split.loop.exit: ; preds = %bb.bi
  %i.ik = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i.i29.i.i, i64 1
  br label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i40.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i40.i.i.loopexit.split.loop.exit275: ; preds = %bb.bj
  %i.il = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i.i29.i.i, i64 2
  br label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i40.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i40.i.i.loopexit.split.loop.exit277: ; preds = %bb.bk
  %i.im = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i.i29.i.i, i64 3
  br label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i40.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i40.i.i: ; preds = %.lr.ph.i.i.i.i.i.i25.i.i27.i.i, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i40.i.i.loopexit.split.loop.exit, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i40.i.i.loopexit.split.loop.exit275, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i40.i.i.loopexit.split.loop.exit277, %bb.bq, %bb.bo, %bb.bm
  %.028.i.i.i.i.i.i19.i.i41.i.i = phi ptr [ %.1.i.i.i.i.i.i20.i.i44.i.i, %bb.bo ], [ %.029.lcssa.i.i.i.i.i.i15.i.i35.i.i, %bb.bm ], [ %.2.i.i.i.i.i.i17.i.i37.i.i, %bb.bq ], [ %i.im, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i40.i.i.loopexit.split.loop.exit277 ], [ %i.il, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i40.i.i.loopexit.split.loop.exit275 ], [ %i.ik, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i40.i.i.loopexit.split.loop.exit ], [ %.02943.i.i.i.i.i.i27.i.i29.i.i, %.lr.ph.i.i.i.i.i.i25.i.i27.i.i ]
  %.not40.i.i42.i.i = icmp eq ptr %i.hr, %.028.i.i.i.i.i.i19.i.i41.i.i
  br i1 %.not40.i.i42.i.i, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.thread.i.i39.i.i, label %.critedge.i.i43.i.i, !prof !320

.critedge.i.i43.i.i:                              ; preds = %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i40.i.i, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i50.i.i
  %i.in = call i32 @memcmp(ptr noundef %i.gl, ptr noundef %i.gp, i64 noundef %i.go) #26
  br label %_ZL12gsiRecordCmpN4llvm9StringRefES0_.exit.i5.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit35.thread.i.i39.i.i: ; preds = %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i40.i.i, %bb.bq, %._crit_edge.i.i.i.i.i.i14.i.i34.i.i
  %i.io = call noundef i32 @_ZNK4llvm9StringRef19compare_insensitiveES0_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %i.gp, i64 %i.go) #22
  br label %_ZL12gsiRecordCmpN4llvm9StringRefES0_.exit.i5.i.i

_ZL12gsiRecordCmpN4llvm9StringRefES0_.exit.i5.i.i: ; preds = %_ZL13isAsciiStringN4llvm9StringRefE.exit35.thread.i.i39.i.i, %.critedge.i.i43.i.i, %bb.ax
  %.0.i.i6.i.i = phi i32 [ %i.gs, %bb.ax ], [ %i.in, %.critedge.i.i43.i.i ], [ %i.io, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.thread.i.i39.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.not.i7.i.i = icmp eq i32 %.0.i.i6.i.i, 0
  br i1 %.not.i7.i.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %_ZL12gsiRecordCmpN4llvm9StringRefES0_.exit.i5.i.i
  %i.ip = icmp slt i32 %.0.i.i6.i.i, 0
  br label %"_ZZZN4llvm3pdb20GSIHashStreamBuilder15finalizeBucketsEjNS_15MutableArrayRefINS0_10BulkPublicEEEENK3$_1clEmENKUlRKNS0_12PSHashRecordES8_E_clES8_S8_.exit58.i.i"

bb.bs:                                            ; preds = %_ZL12gsiRecordCmpN4llvm9StringRefES0_.exit.i5.i.i
  %i.iq = getelementptr inbounds nuw i8, ptr %i.gi, i64 12
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !59
  %i.is = getelementptr inbounds nuw i8, ptr %i.gk, i64 12
  %i.it = load i32, ptr %i.is, align 4, !tbaa !59
  %i.iu = icmp ult i32 %i.ir, %i.it
  br label %"_ZZZN4llvm3pdb20GSIHashStreamBuilder15finalizeBucketsEjNS_15MutableArrayRefINS0_10BulkPublicEEEENK3$_1clEmENKUlRKNS0_12PSHashRecordES8_E_clES8_S8_.exit58.i.i"

"_ZZZN4llvm3pdb20GSIHashStreamBuilder15finalizeBucketsEjNS_15MutableArrayRefINS0_10BulkPublicEEEENK3$_1clEmENKUlRKNS0_12PSHashRecordES8_E_clES8_S8_.exit58.i.i": ; preds = %bb.bs, %bb.br
  %.0.i8.i.i = phi i1 [ %i.ip, %bb.br ], [ %i.iu, %bb.bs ]
  %spec.select.i.i.i79.i = select i1 %.0.i8.i.i, i64 %i.gf, i64 %i.gd ; 4 uses
  %i.iv = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.i79.i
  %i.iw = getelementptr inbounds [8 x i8], ptr %0, i64 %.038.i.i.i76.i
  %i.ix = load i64, ptr %i.iv, align 1
  store i64 %i.ix, ptr %i.iw, align 1
  %i.iy = icmp slt i64 %spec.select.i.i.i79.i, %i.ga
  br i1 %i.iy, label %.lr.ph.i.i.i75.i, label %._crit_edge.i.i.i11.i, !llvm.loop !324

._crit_edge.i.i.i11.i:                            ; preds = %"_ZZZN4llvm3pdb20GSIHashStreamBuilder15finalizeBucketsEjNS_15MutableArrayRefINS0_10BulkPublicEEEENK3$_1clEmENKUlRKNS0_12PSHashRecordES8_E_clES8_S8_.exit58.i.i", %bb.aw
  %.0.lcssa.i.i.i12.i = phi i64 [ 0, %bb.aw ], [ %spec.select.i.i.i79.i, %"_ZZZN4llvm3pdb20GSIHashStreamBuilder15finalizeBucketsEjNS_15MutableArrayRefINS0_10BulkPublicEEEENK3$_1clEmENKUlRKNS0_12PSHashRecordES8_E_clES8_S8_.exit58.i.i" ] ; 5 uses
  %i.iz = and i64 %i.fx, 8
  %i.ja = icmp eq i64 %i.iz, 0
  br i1 %i.ja, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %._crit_edge.i.i.i11.i
  %i.jb = add nsw i64 %i.fy, -2
  %i.jc = ashr exact i64 %i.jb, 1
  %i.jd = icmp eq i64 %.0.lcssa.i.i.i12.i, %i.jc
  br i1 %i.jd, label %.thread.i.i74.i, label %bb.bu

.thread.i.i74.i:                                  ; preds = %bb.bt
  %i.je = shl nuw nsw i64 %.0.lcssa.i.i.i12.i, 1
  %i.jf = or disjoint i64 %i.je, 1                ; 2 uses
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.jf
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i12.i
  %i.ji = load i64, ptr %i.jg, align 1
  store i64 %i.ji, ptr %i.jh, align 1
  br label %.lr.ph.i.i.preheader.i.i14.i

bb.bu:                                            ; preds = %bb.bt, %._crit_edge.i.i.i11.i
  %.not.i.i13.i = icmp eq i64 %.0.lcssa.i.i.i12.i, 0
  br i1 %.not.i.i13.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS3_20GSIHashStreamBuilder15finalizeBucketsEjNS2_15MutableArrayRefINS3_10BulkPublicEEEENK3$_1clEmEUlRKS4_SI_E_EEEvT_SL_SL_RT0_.exit.i25.i", label %.lr.ph.i.i.preheader.i.i14.i

.lr.ph.i.i.preheader.i.i14.i:                     ; preds = %bb.bu, %.thread.i.i74.i
  %.1.i14.i.i15.i = phi i64 [ %i.jf, %.thread.i.i74.i ], [ %.0.lcssa.i.i.i12.i, %bb.bu ]
  %i.jj = and i64 %.sroa.03.0.copyload.i.i10.i, 4294967295
  %i.jk = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %i.jj ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 12
  br label %.lr.ph.i.i.i.i16.i

.lr.ph.i.i.i.i16.i:                               ; preds = %bb.cp, %.lr.ph.i.i.preheader.i.i14.i
  %.010.i.i.i.i17.i = phi i64 [ %.0911.i.i89.i.i19.i, %bb.cp ], [ %.1.i14.i.i15.i, %.lr.ph.i.i.preheader.i.i14.i ] ; 4 uses
  %.0911.in.i.i.i.i18.i = add nsw i64 %.010.i.i.i.i17.i, -1
  %.0911.i.i89.i.i19.i = lshr i64 %.0911.in.i.i.i.i18.i, 1 ; 3 uses
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0911.i.i89.i.i19.i ; 2 uses
  %.val2.i.i.i.i.i20.i = load i32, ptr %i.jn, align 1
  %i.jo = zext i32 %.val2.i.i.i.i.i20.i to i64
  %i.jp = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %i.jo ; 3 uses
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !55 ; 6 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  %i.js = load i32, ptr %i.jr, align 8, !tbaa !58 ; 2 uses
  %i.jt = zext i32 %i.js to i64                   ; 9 uses
  %i.ju = load ptr, ptr %i.jk, align 8, !tbaa !55 ; 6 uses
  %i.jv = load i32, ptr %i.jl, align 8, !tbaa !58 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.jq, ptr %7, align 8
  store i64 %i.jt, ptr %i.ft, align 8
  %.not.i.i.i21.i = icmp eq i32 %i.js, %i.jv
  br i1 %.not.i.i.i21.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %.lr.ph.i.i.i.i16.i
  %13 = zext i32 %i.jv to i64
  %i.jw = call i32 @llvm.ucmp.i32.i64(i64 %i.jt, i64 %13)
  br label %_ZL12gsiRecordCmpN4llvm9StringRefES0_.exit.i.i22.i

bb.bw:                                            ; preds = %.lr.ph.i.i.i.i16.i
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jq, i64 %i.jt ; 2 uses
  %i.jy = ptrtoint ptr %i.jx to i64
  %i.jz = lshr i64 %i.jt, 2                       ; 3 uses
  %.not5.i.i29.i = icmp eq i64 %i.jz, 0           ; 2 uses
  br i1 %.not5.i.i29.i, label %._crit_edge.i.i.i.i.i.i.i.i.i39.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i30.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i30.i:           ; preds = %bb.bw
  %i.ka = and i64 %i.jt, 4294967292
  %scevgep.i.i.i.i.i.i.i.i.i31.i = getelementptr i8, ptr %i.jq, i64 %i.ka
  br label %.lr.ph.i.i.i.i.i.i.i.i.i32.i

.lr.ph.i.i.i.i.i.i.i.i.i32.i:                     ; preds = %bb.ca, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i30.i
  %.044.i.i.i.i.i.i.i.i.i33.i = phi i64 [ %i.kj, %bb.ca ], [ %i.jz, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i30.i ] ; 2 uses
  %.02943.i.i.i.i.i.i.i.i.i34.i = phi ptr [ %i.ki, %bb.ca ], [ %i.jq, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i30.i ] ; 9 uses
  %.029.val32.i.i.i.i.i.i.i.i.i35.i = load i8, ptr %.02943.i.i.i.i.i.i.i.i.i34.i, align 1, !tbaa !46
  %i.kb = icmp slt i8 %.029.val32.i.i.i.i.i.i.i.i.i35.i, 0
  br i1 %i.kb, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i68.i, label %bb.bx

bb.bx:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i32.i
  %i.kc = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i.i34.i, i64 1
  %.val31.i.i.i.i.i.i.i.i.i36.i = load i8, ptr %i.kc, align 1, !tbaa !46
  %i.kd = icmp slt i8 %.val31.i.i.i.i.i.i.i.i.i36.i, 0
  br i1 %i.kd, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i68.i.loopexit.split.loop.exit, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ke = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i.i34.i, i64 2
  %.val30.i.i.i.i.i.i.i.i.i37.i = load i8, ptr %i.ke, align 1, !tbaa !46
  %i.kf = icmp slt i8 %.val30.i.i.i.i.i.i.i.i.i37.i, 0
  br i1 %i.kf, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i68.i.loopexit.split.loop.exit283, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.kg = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i.i34.i, i64 3
  %.val.i.i.i.i.i.i.i.i.i38.i = load i8, ptr %i.kg, align 1, !tbaa !46
  %i.kh = icmp slt i8 %.val.i.i.i.i.i.i.i.i.i38.i, 0
  br i1 %i.kh, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i68.i.loopexit.split.loop.exit285, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ki = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i.i34.i, i64 4
  %i.kj = add nsw i64 %.044.i.i.i.i.i.i.i.i.i33.i, -1
  %i.kk = icmp sgt i64 %.044.i.i.i.i.i.i.i.i.i33.i, 1
  br i1 %i.kk, label %.lr.ph.i.i.i.i.i.i.i.i.i32.i, label %._crit_edge.i.i.i.i.i.i.i.i.i39.i, !llvm.loop !319

._crit_edge.i.i.i.i.i.i.i.i.i39.i:                ; preds = %bb.ca, %bb.bw
  %.029.lcssa.i.i.i.i.i.i.i.i.i40.i = phi ptr [ %i.jq, %bb.bw ], [ %scevgep.i.i.i.i.i.i.i.i.i31.i, %bb.ca ] ; 6 uses
  %.pre-phi.i.i.i.i.i.i.i.i.i41.i = ptrtoint ptr %.029.lcssa.i.i.i.i.i.i.i.i.i40.i to i64
  %i.kl = sub i64 %i.jy, %.pre-phi.i.i.i.i.i.i.i.i.i41.i
  switch i64 %i.kl, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i.i.i44.i [
    i64 3, label %bb.cb
    i64 2, label %bb.cd
    i64 1, label %bb.cf
  ]

bb.cb:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i39.i
  %.029.val.i.i.i.i.i.i.i.i.i72.i = load i8, ptr %.029.lcssa.i.i.i.i.i.i.i.i.i40.i, align 1, !tbaa !46
  %i.km = icmp slt i8 %.029.val.i.i.i.i.i.i.i.i.i72.i, 0
  br i1 %i.km, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i68.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.kn = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i.i.i.i40.i, i64 1
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %._crit_edge.i.i.i.i.i.i.i.i.i39.i
  %.1.i.i.i.i.i.i.i.i.i70.i = phi ptr [ %i.kn, %bb.cc ], [ %.029.lcssa.i.i.i.i.i.i.i.i.i40.i, %._crit_edge.i.i.i.i.i.i.i.i.i39.i ] ; 3 uses
  %.1.val.i.i.i.i.i.i.i.i.i71.i = load i8, ptr %.1.i.i.i.i.i.i.i.i.i70.i, align 1, !tbaa !46
  %i.ko = icmp slt i8 %.1.val.i.i.i.i.i.i.i.i.i71.i, 0
  br i1 %i.ko, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i68.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.kp = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.i.i.i70.i, i64 1
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %._crit_edge.i.i.i.i.i.i.i.i.i39.i
  %.2.i.i.i.i.i.i.i.i.i42.i = phi ptr [ %i.kp, %bb.ce ], [ %.029.lcssa.i.i.i.i.i.i.i.i.i40.i, %._crit_edge.i.i.i.i.i.i.i.i.i39.i ] ; 2 uses
  %.2.val.i.i.i.i.i.i.i.i.i43.i = load i8, ptr %.2.i.i.i.i.i.i.i.i.i42.i, align 1, !tbaa !46
  %i.kq = icmp slt i8 %.2.val.i.i.i.i.i.i.i.i.i43.i, 0
  br i1 %i.kq, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i68.i, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i.i.i44.i

_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i68.i.loopexit.split.loop.exit: ; preds = %bb.bx
  %i.kr = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i.i34.i, i64 1
  br label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i68.i

_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i68.i.loopexit.split.loop.exit283: ; preds = %bb.by
  %i.ks = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i.i34.i, i64 2
  br label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i68.i

_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i68.i.loopexit.split.loop.exit285: ; preds = %bb.bz
  %i.kt = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i.i34.i, i64 3
  br label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i68.i

_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i68.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i32.i, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i68.i.loopexit.split.loop.exit, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i68.i.loopexit.split.loop.exit283, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i68.i.loopexit.split.loop.exit285, %bb.cf, %bb.cd, %bb.cb
  %.028.i.i.i.i.i.i.i.i.i69.i = phi ptr [ %.1.i.i.i.i.i.i.i.i.i70.i, %bb.cd ], [ %.029.lcssa.i.i.i.i.i.i.i.i.i40.i, %bb.cb ], [ %.2.i.i.i.i.i.i.i.i.i42.i, %bb.cf ], [ %i.kt, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i68.i.loopexit.split.loop.exit285 ], [ %i.ks, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i68.i.loopexit.split.loop.exit283 ], [ %i.kr, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i68.i.loopexit.split.loop.exit ], [ %.02943.i.i.i.i.i.i.i.i.i34.i, %.lr.ph.i.i.i.i.i.i.i.i.i32.i ]
  %i.ku = icmp eq ptr %i.jx, %.028.i.i.i.i.i.i.i.i.i69.i
  br i1 %i.ku, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i.i.i44.i, label %.critedge.i.i.i63.i, !prof !320

_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i.i.i44.i: ; preds = %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i68.i, %bb.cf, %._crit_edge.i.i.i.i.i.i.i.i.i39.i
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ju, i64 %i.jt ; 2 uses
  %i.kw = ptrtoint ptr %i.kv to i64
  br i1 %.not5.i.i29.i, label %._crit_edge.i.i.i.i.i.i14.i.i.i54.i, label %.lr.ph.preheader.i.i.i.i.i.i23.i.i.i45.i

.lr.ph.preheader.i.i.i.i.i.i23.i.i.i45.i:         ; preds = %_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i.i.i44.i
  %i.kx = and i64 %i.jt, 4294967292
  %scevgep.i.i.i.i.i.i24.i.i.i46.i = getelementptr i8, ptr %i.ju, i64 %i.kx
  br label %.lr.ph.i.i.i.i.i.i25.i.i.i47.i

.lr.ph.i.i.i.i.i.i25.i.i.i47.i:                   ; preds = %bb.cj, %.lr.ph.preheader.i.i.i.i.i.i23.i.i.i45.i
  %.044.i.i.i.i.i.i26.i.i.i48.i = phi i64 [ %i.lg, %bb.cj ], [ %i.jz, %.lr.ph.preheader.i.i.i.i.i.i23.i.i.i45.i ] ; 2 uses
  %.02943.i.i.i.i.i.i27.i.i.i49.i = phi ptr [ %i.lf, %bb.cj ], [ %i.ju, %.lr.ph.preheader.i.i.i.i.i.i23.i.i.i45.i ] ; 9 uses
  %.029.val32.i.i.i.i.i.i28.i.i.i50.i = load i8, ptr %.02943.i.i.i.i.i.i27.i.i.i49.i, align 1, !tbaa !46
  %i.ky = icmp slt i8 %.029.val32.i.i.i.i.i.i28.i.i.i50.i, 0
  br i1 %i.ky, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i60.i, label %bb.cg

bb.cg:                                            ; preds = %.lr.ph.i.i.i.i.i.i25.i.i.i47.i
  %i.kz = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i.i.i49.i, i64 1
  %.val31.i.i.i.i.i.i29.i.i.i51.i = load i8, ptr %i.kz, align 1, !tbaa !46
  %i.la = icmp slt i8 %.val31.i.i.i.i.i.i29.i.i.i51.i, 0
  br i1 %i.la, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i60.i.loopexit.split.loop.exit, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.lb = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i.i.i49.i, i64 2
  %.val30.i.i.i.i.i.i30.i.i.i52.i = load i8, ptr %i.lb, align 1, !tbaa !46
  %i.lc = icmp slt i8 %.val30.i.i.i.i.i.i30.i.i.i52.i, 0
  br i1 %i.lc, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i60.i.loopexit.split.loop.exit291, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ld = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i.i.i49.i, i64 3
  %.val.i.i.i.i.i.i31.i.i.i53.i = load i8, ptr %i.ld, align 1, !tbaa !46
  %i.le = icmp slt i8 %.val.i.i.i.i.i.i31.i.i.i53.i, 0
  br i1 %i.le, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i60.i.loopexit.split.loop.exit293, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.lf = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i.i.i49.i, i64 4
  %i.lg = add nsw i64 %.044.i.i.i.i.i.i26.i.i.i48.i, -1
  %i.lh = icmp sgt i64 %.044.i.i.i.i.i.i26.i.i.i48.i, 1
  br i1 %i.lh, label %.lr.ph.i.i.i.i.i.i25.i.i.i47.i, label %._crit_edge.i.i.i.i.i.i14.i.i.i54.i, !llvm.loop !319

._crit_edge.i.i.i.i.i.i14.i.i.i54.i:              ; preds = %bb.cj, %_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i.i.i44.i
  %.029.lcssa.i.i.i.i.i.i15.i.i.i55.i = phi ptr [ %i.ju, %_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i.i.i44.i ], [ %scevgep.i.i.i.i.i.i24.i.i.i46.i, %bb.cj ] ; 6 uses
  %.pre-phi.i.i.i.i.i.i16.i.i.i56.i = ptrtoint ptr %.029.lcssa.i.i.i.i.i.i15.i.i.i55.i to i64
  %i.li = sub i64 %i.kw, %.pre-phi.i.i.i.i.i.i16.i.i.i56.i
  switch i64 %i.li, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.thread.i.i.i59.i [
    i64 3, label %bb.ck
    i64 2, label %bb.cm
    i64 1, label %bb.co
  ]

bb.ck:                                            ; preds = %._crit_edge.i.i.i.i.i.i14.i.i.i54.i
  %.029.val.i.i.i.i.i.i22.i.i.i66.i = load i8, ptr %.029.lcssa.i.i.i.i.i.i15.i.i.i55.i, align 1, !tbaa !46
  %i.lj = icmp slt i8 %.029.val.i.i.i.i.i.i22.i.i.i66.i, 0
  br i1 %i.lj, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i60.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.lk = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i15.i.i.i55.i, i64 1
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %._crit_edge.i.i.i.i.i.i14.i.i.i54.i
  %.1.i.i.i.i.i.i20.i.i.i64.i = phi ptr [ %i.lk, %bb.cl ], [ %.029.lcssa.i.i.i.i.i.i15.i.i.i55.i, %._crit_edge.i.i.i.i.i.i14.i.i.i54.i ] ; 3 uses
  %.1.val.i.i.i.i.i.i21.i.i.i65.i = load i8, ptr %.1.i.i.i.i.i.i20.i.i.i64.i, align 1, !tbaa !46
  %i.ll = icmp slt i8 %.1.val.i.i.i.i.i.i21.i.i.i65.i, 0
  br i1 %i.ll, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i60.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.lm = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i20.i.i.i64.i, i64 1
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %._crit_edge.i.i.i.i.i.i14.i.i.i54.i
  %.2.i.i.i.i.i.i17.i.i.i57.i = phi ptr [ %i.lm, %bb.cn ], [ %.029.lcssa.i.i.i.i.i.i15.i.i.i55.i, %._crit_edge.i.i.i.i.i.i14.i.i.i54.i ] ; 2 uses
  %.2.val.i.i.i.i.i.i18.i.i.i58.i = load i8, ptr %.2.i.i.i.i.i.i17.i.i.i57.i, align 1, !tbaa !46
  %i.ln = icmp slt i8 %.2.val.i.i.i.i.i.i18.i.i.i58.i, 0
  br i1 %i.ln, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i60.i, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.thread.i.i.i59.i

_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i60.i.loopexit.split.loop.exit: ; preds = %bb.cg
  %i.lo = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i.i.i49.i, i64 1
  br label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i60.i

_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i60.i.loopexit.split.loop.exit291: ; preds = %bb.ch
  %i.lp = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i.i.i49.i, i64 2
  br label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i60.i

_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i60.i.loopexit.split.loop.exit293: ; preds = %bb.ci
  %i.lq = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i.i.i49.i, i64 3
  br label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i60.i

_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i60.i: ; preds = %.lr.ph.i.i.i.i.i.i25.i.i.i47.i, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i60.i.loopexit.split.loop.exit, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i60.i.loopexit.split.loop.exit291, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i60.i.loopexit.split.loop.exit293, %bb.co, %bb.cm, %bb.ck
  %.028.i.i.i.i.i.i19.i.i.i61.i = phi ptr [ %.1.i.i.i.i.i.i20.i.i.i64.i, %bb.cm ], [ %.029.lcssa.i.i.i.i.i.i15.i.i.i55.i, %bb.ck ], [ %.2.i.i.i.i.i.i17.i.i.i57.i, %bb.co ], [ %i.lq, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i60.i.loopexit.split.loop.exit293 ], [ %i.lp, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i60.i.loopexit.split.loop.exit291 ], [ %i.lo, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i60.i.loopexit.split.loop.exit ], [ %.02943.i.i.i.i.i.i27.i.i.i49.i, %.lr.ph.i.i.i.i.i.i25.i.i.i47.i ]
  %.not40.i.i.i62.i = icmp eq ptr %i.kv, %.028.i.i.i.i.i.i19.i.i.i61.i
  br i1 %.not40.i.i.i62.i, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.thread.i.i.i59.i, label %.critedge.i.i.i63.i, !prof !320

.critedge.i.i.i63.i:                              ; preds = %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i60.i, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i68.i
  %i.lr = call i32 @memcmp(ptr noundef %i.jq, ptr noundef %i.ju, i64 noundef %i.jt) #26
  br label %_ZL12gsiRecordCmpN4llvm9StringRefES0_.exit.i.i22.i

_ZL13isAsciiStringN4llvm9StringRefE.exit35.thread.i.i.i59.i: ; preds = %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i60.i, %bb.co, %._crit_edge.i.i.i.i.i.i14.i.i.i54.i
  %i.ls = call noundef i32 @_ZNK4llvm9StringRef19compare_insensitiveES0_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr %i.ju, i64 %i.jt) #22
  br label %_ZL12gsiRecordCmpN4llvm9StringRefES0_.exit.i.i22.i

_ZL12gsiRecordCmpN4llvm9StringRefES0_.exit.i.i22.i: ; preds = %_ZL13isAsciiStringN4llvm9StringRefE.exit35.thread.i.i.i59.i, %.critedge.i.i.i63.i, %bb.bv
  %.0.i.i.i23.i = phi i32 [ %i.jw, %bb.bv ], [ %i.lr, %.critedge.i.i.i63.i ], [ %i.ls, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.thread.i.i.i59.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %.not.i3.i.i = icmp eq i32 %.0.i.i.i23.i, 0
  br i1 %.not.i3.i.i, label %"_ZZZN4llvm3pdb20GSIHashStreamBuilder15finalizeBucketsEjNS_15MutableArrayRefINS0_10BulkPublicEEEENK3$_1clEmENKUlRKNS0_12PSHashRecordES8_E_clES8_S8_.exit.i28.i", label %.split.i24.i

.split.i24.i:                                     ; preds = %_ZL12gsiRecordCmpN4llvm9StringRefES0_.exit.i.i22.i
  %i.lt = icmp slt i32 %.0.i.i.i23.i, 0
  br i1 %i.lt, label %bb.cp, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS3_20GSIHashStreamBuilder15finalizeBucketsEjNS2_15MutableArrayRefINS3_10BulkPublicEEEENK3$_1clEmEUlRKS4_SI_E_EEEvT_SL_SL_RT0_.exit.i25.i"

"_ZZZN4llvm3pdb20GSIHashStreamBuilder15finalizeBucketsEjNS_15MutableArrayRefINS0_10BulkPublicEEEENK3$_1clEmENKUlRKNS0_12PSHashRecordES8_E_clES8_S8_.exit.i28.i": ; preds = %_ZL12gsiRecordCmpN4llvm9StringRefES0_.exit.i.i22.i
  %i.lu = getelementptr inbounds nuw i8, ptr %i.jp, i64 12
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !59
  %i.lw = load i32, ptr %i.jm, align 4, !tbaa !59
  %i.lx = icmp ult i32 %i.lv, %i.lw
  br i1 %i.lx, label %bb.cp, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS3_20GSIHashStreamBuilder15finalizeBucketsEjNS2_15MutableArrayRefINS3_10BulkPublicEEEENK3$_1clEmEUlRKS4_SI_E_EEEvT_SL_SL_RT0_.exit.i25.i"

bb.cp:                                            ; preds = %"_ZZZN4llvm3pdb20GSIHashStreamBuilder15finalizeBucketsEjNS_15MutableArrayRefINS0_10BulkPublicEEEENK3$_1clEmENKUlRKNS0_12PSHashRecordES8_E_clES8_S8_.exit.i28.i", %.split.i24.i
  %i.ly = getelementptr inbounds [8 x i8], ptr %0, i64 %.010.i.i.i.i17.i
  %i.lz = load i64, ptr %i.jn, align 1
  store i64 %i.lz, ptr %i.ly, align 1
  %.not10.i.i27.i = icmp eq i64 %.0911.i.i89.i.i19.i, 0
  br i1 %.not10.i.i27.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS3_20GSIHashStreamBuilder15finalizeBucketsEjNS2_15MutableArrayRefINS3_10BulkPublicEEEENK3$_1clEmEUlRKS4_SI_E_EEEvT_SL_SL_RT0_.exit.i25.i", label %.lr.ph.i.i.i.i16.i, !llvm.loop !325

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS3_20GSIHashStreamBuilder15finalizeBucketsEjNS2_15MutableArrayRefINS3_10BulkPublicEEEENK3$_1clEmEUlRKS4_SI_E_EEEvT_SL_SL_RT0_.exit.i25.i": ; preds = %bb.cp, %"_ZZZN4llvm3pdb20GSIHashStreamBuilder15finalizeBucketsEjNS_15MutableArrayRefINS0_10BulkPublicEEEENK3$_1clEmENKUlRKNS0_12PSHashRecordES8_E_clES8_S8_.exit.i28.i", %.split.i24.i, %bb.bu
  %.0.lcssa.i.i.i.i26.i = phi i64 [ 0, %bb.bu ], [ %.010.i.i.i.i17.i, %.split.i24.i ], [ %.010.i.i.i.i17.i, %"_ZZZN4llvm3pdb20GSIHashStreamBuilder15finalizeBucketsEjNS_15MutableArrayRefINS0_10BulkPublicEEEENK3$_1clEmENKUlRKNS0_12PSHashRecordES8_E_clES8_S8_.exit.i28.i" ], [ 0, %bb.cp ]
  %i.ma = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i26.i
  store i64 %.sroa.03.0.copyload.i.i10.i, ptr %i.ma, align 1
  %i.mb = icmp sgt i64 %i.fx, 8
  br i1 %i.mb, label %bb.aw, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS3_20GSIHashStreamBuilder15finalizeBucketsEjNS2_15MutableArrayRefINS3_10BulkPublicEEEENK3$_1clEmEUlRKS4_SI_E_EEEvT_SL_SL_T0_.exit", !llvm.loop !327

.lr.ph56:                                         ; preds = %.lr.ph, %bb.b
  %storemerge6055 = phi ptr [ %.sroa.069.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.06154 = phi i64 [ %i.md, %bb.b ], [ %2, %.lr.ph ]
  %i.mc = phi i64 [ %i.sf, %bb.b ], [ %i.d, %.lr.ph ]
  %i.md = add nsw i64 %.06154, -1                 ; 3 uses
  %i.me = lshr i64 %i.mc, 1
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.me ; 7 uses
  %i.mg = getelementptr inbounds i8, ptr %storemerge6055, i64 -8 ; 7 uses
  %.val1.i.i.i = load i32, ptr %i.f, align 1
  %.val2.i.i.i = load i32, ptr %i.mf, align 1
  %i.mh = call fastcc noundef zeroext i1 @"_ZZZN4llvm3pdb20GSIHashStreamBuilder15finalizeBucketsEjNS_15MutableArrayRefINS0_10BulkPublicEEEENK3$_1clEmENKUlRKNS0_12PSHashRecordES8_E_clES8_S8_"(ptr readonly %3, i32 %.val1.i.i.i, i32 %.val2.i.i.i)
  %.val2.i31.i.i = load i32, ptr %i.mg, align 1   ; 2 uses
  br i1 %i.mh, label %bb.cq, label %bb.cv

bb.cq:                                            ; preds = %.lr.ph56
  %.val1.i30.i.i = load i32, ptr %i.mf, align 1
  %i.mi = call fastcc noundef zeroext i1 @"_ZZZN4llvm3pdb20GSIHashStreamBuilder15finalizeBucketsEjNS_15MutableArrayRefINS0_10BulkPublicEEEENK3$_1clEmENKUlRKNS0_12PSHashRecordES8_E_clES8_S8_"(ptr readonly %3, i32 %.val1.i30.i.i, i32 %.val2.i31.i.i)
  br i1 %i.mi, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.mj = load i64, ptr %0, align 1
  %i.mk = load i64, ptr %i.mf, align 1
  store i64 %i.mk, ptr %0, align 1
  store i64 %i.mj, ptr %i.mf, align 1
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS3_20GSIHashStreamBuilder15finalizeBucketsEjNS2_15MutableArrayRefINS3_10BulkPublicEEEENK3$_1clEmEUlRKS4_SI_E_EEEvT_SL_SL_SL_T0_.exit.i.preheader"

bb.cs:                                            ; preds = %bb.cq
  %.val1.i32.i.i = load i32, ptr %i.f, align 1
  %.val2.i33.i.i = load i32, ptr %i.mg, align 1
  %i.ml = call fastcc noundef zeroext i1 @"_ZZZN4llvm3pdb20GSIHashStreamBuilder15finalizeBucketsEjNS_15MutableArrayRefINS0_10BulkPublicEEEENK3$_1clEmENKUlRKNS0_12PSHashRecordES8_E_clES8_S8_"(ptr readonly %3, i32 %.val1.i32.i.i, i32 %.val2.i33.i.i)
  %i.mm = load i64, ptr %0, align 1               ; 2 uses
  br i1 %i.ml, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.mn = load i64, ptr %i.mg, align 1
  store i64 %i.mn, ptr %0, align 1
  store i64 %i.mm, ptr %i.mg, align 1
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS3_20GSIHashStreamBuilder15finalizeBucketsEjNS2_15MutableArrayRefINS3_10BulkPublicEEEENK3$_1clEmEUlRKS4_SI_E_EEEvT_SL_SL_SL_T0_.exit.i.preheader"

bb.cu:                                            ; preds = %bb.cs
  %i.mo = load i64, ptr %i.f, align 1
  store i64 %i.mo, ptr %0, align 1
  store i64 %i.mm, ptr %i.f, align 1
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS3_20GSIHashStreamBuilder15finalizeBucketsEjNS2_15MutableArrayRefINS3_10BulkPublicEEEENK3$_1clEmEUlRKS4_SI_E_EEEvT_SL_SL_SL_T0_.exit.i.preheader"

bb.cv:                                            ; preds = %.lr.ph56
  %.val1.i34.i.i = load i32, ptr %i.f, align 1
  %i.mp = call fastcc noundef zeroext i1 @"_ZZZN4llvm3pdb20GSIHashStreamBuilder15finalizeBucketsEjNS_15MutableArrayRefINS0_10BulkPublicEEEENK3$_1clEmENKUlRKNS0_12PSHashRecordES8_E_clES8_S8_"(ptr readonly %3, i32 %.val1.i34.i.i, i32 %.val2.i31.i.i)
  br i1 %i.mp, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.mq = load <2 x i64>, ptr %0, align 1
  %i.mr = shufflevector <2 x i64> %i.mq, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.mr, ptr %0, align 1
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS3_20GSIHashStreamBuilder15finalizeBucketsEjNS2_15MutableArrayRefINS3_10BulkPublicEEEENK3$_1clEmEUlRKS4_SI_E_EEEvT_SL_SL_SL_T0_.exit.i.preheader"

bb.cx:                                            ; preds = %bb.cv
  %.val1.i36.i.i = load i32, ptr %i.mf, align 1
  %.val2.i37.i.i = load i32, ptr %i.mg, align 1
  %i.ms = call fastcc noundef zeroext i1 @"_ZZZN4llvm3pdb20GSIHashStreamBuilder15finalizeBucketsEjNS_15MutableArrayRefINS0_10BulkPublicEEEENK3$_1clEmENKUlRKNS0_12PSHashRecordES8_E_clES8_S8_"(ptr readonly %3, i32 %.val1.i36.i.i, i32 %.val2.i37.i.i)
  %i.mt = load i64, ptr %0, align 1               ; 2 uses
  br i1 %i.ms, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.mu = load i64, ptr %i.mg, align 1
  store i64 %i.mu, ptr %0, align 1
  store i64 %i.mt, ptr %i.mg, align 1
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS3_20GSIHashStreamBuilder15finalizeBucketsEjNS2_15MutableArrayRefINS3_10BulkPublicEEEENK3$_1clEmEUlRKS4_SI_E_EEEvT_SL_SL_SL_T0_.exit.i.preheader"

bb.cz:                                            ; preds = %bb.cx
  %i.mv = load i64, ptr %i.mf, align 1
  store i64 %i.mv, ptr %0, align 1
  store i64 %i.mt, ptr %i.mf, align 1
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS3_20GSIHashStreamBuilder15finalizeBucketsEjNS2_15MutableArrayRefINS3_10BulkPublicEEEENK3$_1clEmEUlRKS4_SI_E_EEEvT_SL_SL_SL_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS3_20GSIHashStreamBuilder15finalizeBucketsEjNS2_15MutableArrayRefINS3_10BulkPublicEEEENK3$_1clEmEUlRKS4_SI_E_EEEvT_SL_SL_SL_T0_.exit.i.preheader": ; preds = %bb.cz, %bb.cy, %bb.cw, %bb.cu, %bb.ct, %bb.cr
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS3_20GSIHashStreamBuilder15finalizeBucketsEjNS2_15MutableArrayRefINS3_10BulkPublicEEEENK3$_1clEmEUlRKS4_SI_E_EEEvT_SL_SL_SL_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS3_20GSIHashStreamBuilder15finalizeBucketsEjNS2_15MutableArrayRefINS3_10BulkPublicEEEENK3$_1clEmEUlRKS4_SI_E_EEEvT_SL_SL_SL_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS3_20GSIHashStreamBuilder15finalizeBucketsEjNS2_15MutableArrayRefINS3_10BulkPublicEEEENK3$_1clEmEUlRKS4_SI_E_EEEvT_SL_SL_SL_T0_.exit.i.preheader", %bb.es
  %.sroa.066.0.i.i = phi ptr [ %.sroa.066.1.i.i, %bb.es ], [ %storemerge6055, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS3_20GSIHashStreamBuilder15finalizeBucketsEjNS2_15MutableArrayRefINS3_10BulkPublicEEEENK3$_1clEmEUlRKS4_SI_E_EEEvT_SL_SL_SL_T0_.exit.i.preheader" ]
  %.sroa.069.0.i.i = phi ptr [ %i.sc, %bb.es ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS3_20GSIHashStreamBuilder15finalizeBucketsEjNS2_15MutableArrayRefINS3_10BulkPublicEEEENK3$_1clEmEUlRKS4_SI_E_EEEvT_SL_SL_SL_T0_.exit.i.preheader" ]
  br label %bb.da

bb.da:                                            ; preds = %bb.dv, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS3_20GSIHashStreamBuilder15finalizeBucketsEjNS2_15MutableArrayRefINS3_10BulkPublicEEEENK3$_1clEmEUlRKS4_SI_E_EEEvT_SL_SL_SL_T0_.exit.i"
  %.sroa.069.1.i.i = phi ptr [ %.sroa.069.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS3_20GSIHashStreamBuilder15finalizeBucketsEjNS2_15MutableArrayRefINS3_10BulkPublicEEEENK3$_1clEmEUlRKS4_SI_E_EEEvT_SL_SL_SL_T0_.exit.i" ], [ %i.pk, %bb.dv ] ; 10 uses
  %.val1.i.i14.i = load i32, ptr %.sroa.069.1.i.i, align 1
  %.val2.i.i15.i = load i32, ptr %0, align 1
  %i.mw = zext i32 %.val1.i.i14.i to i64
  %i.mx = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %i.mw ; 3 uses
  %i.my = zext i32 %.val2.i.i15.i to i64
  %i.mz = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %i.my ; 3 uses
  %i.na = load ptr, ptr %i.mx, align 8, !tbaa !55 ; 6 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mx, i64 8
  %i.nc = load i32, ptr %i.nb, align 8, !tbaa !58 ; 2 uses
  %i.nd = zext i32 %i.nc to i64                   ; 9 uses
  %i.ne = load ptr, ptr %i.mz, align 8, !tbaa !55 ; 6 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  %i.ng = load i32, ptr %i.nf, align 8, !tbaa !58 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.na, ptr %5, align 8
  store i64 %i.nd, ptr %i.g, align 8
  %.not.i.i.i.i18 = icmp eq i32 %i.nc, %i.ng
  br i1 %.not.i.i.i.i18, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %14 = zext i32 %i.ng to i64
  %i.nh = call i32 @llvm.ucmp.i32.i64(i64 %i.nd, i64 %14)
  br label %_ZL12gsiRecordCmpN4llvm9StringRefES0_.exit.i.i.i

bb.dc:                                            ; preds = %bb.da
  %i.ni = getelementptr inbounds nuw i8, ptr %i.na, i64 %i.nd ; 2 uses
  %i.nj = ptrtoint ptr %i.ni to i64
  %i.nk = lshr i64 %i.nd, 2                       ; 3 uses
  %.not5.i.i.i = icmp eq i64 %i.nk, 0             ; 2 uses
  br i1 %.not5.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.dc
  %i.nl = and i64 %i.nd, 4294967292
  %scevgep.i.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.na, i64 %i.nl
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.dg, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i
  %.044.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.nu, %bb.dg ], [ %i.nk, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.02943.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.nt, %bb.dg ], [ %i.na, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ] ; 9 uses
  %.029.val32.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.02943.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !46
  %i.nm = icmp slt i8 %.029.val32.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.nm, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i, label %bb.dd

bb.dd:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.nn = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i.i.i, i64 1
  %.val31.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.nn, align 1, !tbaa !46
  %i.no = icmp slt i8 %.val31.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.no, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i.loopexit.split.loop.exit, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.np = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i.i.i, i64 2
  %.val30.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.np, align 1, !tbaa !46
  %i.nq = icmp slt i8 %.val30.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.nq, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i.loopexit.split.loop.exit203, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.nr = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i.i.i, i64 3
  %.val.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.nr, align 1, !tbaa !46
  %i.ns = icmp slt i8 %.val.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ns, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i.loopexit.split.loop.exit205, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.nt = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i.i.i, i64 4
  %i.nu = add nsw i64 %.044.i.i.i.i.i.i.i.i.i.i, -1
  %i.nv = icmp sgt i64 %.044.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.nv, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, !llvm.loop !319

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.dg, %bb.dc
  %.029.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.na, %bb.dc ], [ %scevgep.i.i.i.i.i.i.i.i.i.i, %bb.dg ] ; 6 uses
  %.pre-phi.i.i.i.i.i.i.i.i.i.i = ptrtoint ptr %.029.lcssa.i.i.i.i.i.i.i.i.i.i to i64
  %i.nw = sub i64 %i.nj, %.pre-phi.i.i.i.i.i.i.i.i.i.i
  switch i64 %i.nw, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i.i.i.i [
    i64 3, label %bb.dh
    i64 2, label %bb.dj
    i64 1, label %bb.dl
  ]

bb.dh:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %.029.val.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.029.lcssa.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !46
  %i.nx = icmp slt i8 %.029.val.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.nx, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.ny = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i.i.i.i.i, i64 1
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ny, %bb.di ], [ %.029.lcssa.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.1.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !46
  %i.nz = icmp slt i8 %.1.val.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.nz, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.oa = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.i.i.i.i, i64 1
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %.2.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.oa, %bb.dk ], [ %.029.lcssa.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.2.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !46
  %i.ob = icmp slt i8 %.2.val.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ob, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i.i.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i.loopexit.split.loop.exit: ; preds = %bb.dd
  %i.oc = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i.i.i, i64 1
  br label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i.loopexit.split.loop.exit203: ; preds = %bb.de
  %i.od = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i.i.i, i64 2
  br label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i.loopexit.split.loop.exit205: ; preds = %bb.df
  %i.oe = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i.i.i, i64 3
  br label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i.loopexit.split.loop.exit, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i.loopexit.split.loop.exit203, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i.loopexit.split.loop.exit205, %bb.dl, %bb.dj, %bb.dh
  %.028.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i.i.i.i.i, %bb.dj ], [ %.029.lcssa.i.i.i.i.i.i.i.i.i.i, %bb.dh ], [ %.2.i.i.i.i.i.i.i.i.i.i, %bb.dl ], [ %i.oe, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i.loopexit.split.loop.exit205 ], [ %i.od, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i.loopexit.split.loop.exit203 ], [ %i.oc, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i.loopexit.split.loop.exit ], [ %.02943.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.of = icmp eq ptr %i.ni, %.028.i.i.i.i.i.i.i.i.i.i
  br i1 %i.of, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i.i.i.i, label %.critedge.i.i.i.i, !prof !320

_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i.i.i.i: ; preds = %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i, %bb.dl, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.og = getelementptr inbounds nuw i8, ptr %i.ne, i64 %i.nd ; 2 uses
  %i.oh = ptrtoint ptr %i.og to i64
  br i1 %.not5.i.i.i, label %._crit_edge.i.i.i.i.i.i14.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i23.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i23.i.i.i.i:           ; preds = %_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i.i.i.i
  %i.oi = and i64 %i.nd, 4294967292
  %scevgep.i.i.i.i.i.i24.i.i.i.i = getelementptr i8, ptr %i.ne, i64 %i.oi
  br label %.lr.ph.i.i.i.i.i.i25.i.i.i.i

.lr.ph.i.i.i.i.i.i25.i.i.i.i:                     ; preds = %bb.dp, %.lr.ph.preheader.i.i.i.i.i.i23.i.i.i.i
  %.044.i.i.i.i.i.i26.i.i.i.i = phi i64 [ %i.or, %bb.dp ], [ %i.nk, %.lr.ph.preheader.i.i.i.i.i.i23.i.i.i.i ] ; 2 uses
  %.02943.i.i.i.i.i.i27.i.i.i.i = phi ptr [ %i.oq, %bb.dp ], [ %i.ne, %.lr.ph.preheader.i.i.i.i.i.i23.i.i.i.i ] ; 9 uses
  %.029.val32.i.i.i.i.i.i28.i.i.i.i = load i8, ptr %.02943.i.i.i.i.i.i27.i.i.i.i, align 1, !tbaa !46
  %i.oj = icmp slt i8 %.029.val32.i.i.i.i.i.i28.i.i.i.i, 0
  br i1 %i.oj, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i, label %bb.dm

bb.dm:                                            ; preds = %.lr.ph.i.i.i.i.i.i25.i.i.i.i
  %i.ok = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i.i.i.i, i64 1
  %.val31.i.i.i.i.i.i29.i.i.i.i = load i8, ptr %i.ok, align 1, !tbaa !46
  %i.ol = icmp slt i8 %.val31.i.i.i.i.i.i29.i.i.i.i, 0
  br i1 %i.ol, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i.loopexit.split.loop.exit, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.om = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i.i.i.i, i64 2
  %.val30.i.i.i.i.i.i30.i.i.i.i = load i8, ptr %i.om, align 1, !tbaa !46
  %i.on = icmp slt i8 %.val30.i.i.i.i.i.i30.i.i.i.i, 0
  br i1 %i.on, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i.loopexit.split.loop.exit211, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.oo = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i.i.i.i, i64 3
  %.val.i.i.i.i.i.i31.i.i.i.i = load i8, ptr %i.oo, align 1, !tbaa !46
  %i.op = icmp slt i8 %.val.i.i.i.i.i.i31.i.i.i.i, 0
  br i1 %i.op, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i.loopexit.split.loop.exit213, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.oq = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i.i.i.i, i64 4
  %i.or = add nsw i64 %.044.i.i.i.i.i.i26.i.i.i.i, -1
  %i.os = icmp sgt i64 %.044.i.i.i.i.i.i26.i.i.i.i, 1
  br i1 %i.os, label %.lr.ph.i.i.i.i.i.i25.i.i.i.i, label %._crit_edge.i.i.i.i.i.i14.i.i.i.i, !llvm.loop !319

._crit_edge.i.i.i.i.i.i14.i.i.i.i:                ; preds = %bb.dp, %_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i.i.i.i
  %.029.lcssa.i.i.i.i.i.i15.i.i.i.i = phi ptr [ %i.ne, %_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i.i.i.i ], [ %scevgep.i.i.i.i.i.i24.i.i.i.i, %bb.dp ] ; 6 uses
  %.pre-phi.i.i.i.i.i.i16.i.i.i.i = ptrtoint ptr %.029.lcssa.i.i.i.i.i.i15.i.i.i.i to i64
  %i.ot = sub i64 %i.oh, %.pre-phi.i.i.i.i.i.i16.i.i.i.i
  switch i64 %i.ot, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.thread.i.i.i.i [
    i64 3, label %bb.dq
    i64 2, label %bb.ds
    i64 1, label %bb.du
  ]

bb.dq:                                            ; preds = %._crit_edge.i.i.i.i.i.i14.i.i.i.i
  %.029.val.i.i.i.i.i.i22.i.i.i.i = load i8, ptr %.029.lcssa.i.i.i.i.i.i15.i.i.i.i, align 1, !tbaa !46
  %i.ou = icmp slt i8 %.029.val.i.i.i.i.i.i22.i.i.i.i, 0
  br i1 %i.ou, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.ov = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i15.i.i.i.i, i64 1
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %._crit_edge.i.i.i.i.i.i14.i.i.i.i
  %.1.i.i.i.i.i.i20.i.i.i.i = phi ptr [ %i.ov, %bb.dr ], [ %.029.lcssa.i.i.i.i.i.i15.i.i.i.i, %._crit_edge.i.i.i.i.i.i14.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i.i.i21.i.i.i.i = load i8, ptr %.1.i.i.i.i.i.i20.i.i.i.i, align 1, !tbaa !46
  %i.ow = icmp slt i8 %.1.val.i.i.i.i.i.i21.i.i.i.i, 0
  br i1 %i.ow, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.ox = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i20.i.i.i.i, i64 1
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %._crit_edge.i.i.i.i.i.i14.i.i.i.i
  %.2.i.i.i.i.i.i17.i.i.i.i = phi ptr [ %i.ox, %bb.dt ], [ %.029.lcssa.i.i.i.i.i.i15.i.i.i.i, %._crit_edge.i.i.i.i.i.i14.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i.i18.i.i.i.i = load i8, ptr %.2.i.i.i.i.i.i17.i.i.i.i, align 1, !tbaa !46
  %i.oy = icmp slt i8 %.2.val.i.i.i.i.i.i18.i.i.i.i, 0
  br i1 %i.oy, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.thread.i.i.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i.loopexit.split.loop.exit: ; preds = %bb.dm
  %i.oz = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i.i.i.i, i64 1
  br label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i.loopexit.split.loop.exit211: ; preds = %bb.dn
  %i.pa = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i.i.i.i, i64 2
  br label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i.loopexit.split.loop.exit213: ; preds = %bb.do
  %i.pb = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i.i.i.i, i64 3
  br label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i25.i.i.i.i, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i.loopexit.split.loop.exit, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i.loopexit.split.loop.exit211, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i.loopexit.split.loop.exit213, %bb.du, %bb.ds, %bb.dq
  %.028.i.i.i.i.i.i19.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i20.i.i.i.i, %bb.ds ], [ %.029.lcssa.i.i.i.i.i.i15.i.i.i.i, %bb.dq ], [ %.2.i.i.i.i.i.i17.i.i.i.i, %bb.du ], [ %i.pb, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i.loopexit.split.loop.exit213 ], [ %i.pa, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i.loopexit.split.loop.exit211 ], [ %i.oz, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i.loopexit.split.loop.exit ], [ %.02943.i.i.i.i.i.i27.i.i.i.i, %.lr.ph.i.i.i.i.i.i25.i.i.i.i ]
  %.not40.i.i.i.i = icmp eq ptr %i.og, %.028.i.i.i.i.i.i19.i.i.i.i
  br i1 %.not40.i.i.i.i, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.thread.i.i.i.i, label %.critedge.i.i.i.i, !prof !320

.critedge.i.i.i.i:                                ; preds = %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.i.i
  %i.pc = call i32 @memcmp(ptr noundef %i.na, ptr noundef %i.ne, i64 noundef %i.nd) #26
  br label %_ZL12gsiRecordCmpN4llvm9StringRefES0_.exit.i.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit35.thread.i.i.i.i: ; preds = %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.i.i, %bb.du, %._crit_edge.i.i.i.i.i.i14.i.i.i.i
  %i.pd = call noundef i32 @_ZNK4llvm9StringRef19compare_insensitiveES0_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr %i.ne, i64 %i.nd) #22
  br label %_ZL12gsiRecordCmpN4llvm9StringRefES0_.exit.i.i.i

_ZL12gsiRecordCmpN4llvm9StringRefES0_.exit.i.i.i: ; preds = %_ZL13isAsciiStringN4llvm9StringRefE.exit35.thread.i.i.i.i, %.critedge.i.i.i.i, %bb.db
  %.0.i.i.i.i = phi i32 [ %i.nh, %bb.db ], [ %i.pc, %.critedge.i.i.i.i ], [ %i.pd, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.thread.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %.not.i.i.i19 = icmp eq i32 %.0.i.i.i.i, 0
  br i1 %.not.i.i.i19, label %"_ZZZN4llvm3pdb20GSIHashStreamBuilder15finalizeBucketsEjNS_15MutableArrayRefINS0_10BulkPublicEEEENK3$_1clEmENKUlRKNS0_12PSHashRecordES8_E_clES8_S8_.exit.i.i", label %.split.i.i

.split.i.i:                                       ; preds = %_ZL12gsiRecordCmpN4llvm9StringRefES0_.exit.i.i.i
  %i.pe = icmp slt i32 %.0.i.i.i.i, 0
  br i1 %i.pe, label %bb.dv, label %.preheader

.preheader:                                       ; preds = %"_ZZZN4llvm3pdb20GSIHashStreamBuilder15finalizeBucketsEjNS_15MutableArrayRefINS0_10BulkPublicEEEENK3$_1clEmENKUlRKNS0_12PSHashRecordES8_E_clES8_S8_.exit.i.i", %.split.i.i
  br label %bb.dw

"_ZZZN4llvm3pdb20GSIHashStreamBuilder15finalizeBucketsEjNS_15MutableArrayRefINS0_10BulkPublicEEEENK3$_1clEmENKUlRKNS0_12PSHashRecordES8_E_clES8_S8_.exit.i.i": ; preds = %_ZL12gsiRecordCmpN4llvm9StringRefES0_.exit.i.i.i
  %i.pf = getelementptr inbounds nuw i8, ptr %i.mx, i64 12
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !59
  %i.ph = getelementptr inbounds nuw i8, ptr %i.mz, i64 12
  %i.pi = load i32, ptr %i.ph, align 4, !tbaa !59
  %i.pj = icmp ult i32 %i.pg, %i.pi
  br i1 %i.pj, label %bb.dv, label %.preheader

bb.dv:                                            ; preds = %"_ZZZN4llvm3pdb20GSIHashStreamBuilder15finalizeBucketsEjNS_15MutableArrayRefINS0_10BulkPublicEEEENK3$_1clEmENKUlRKNS0_12PSHashRecordES8_E_clES8_S8_.exit.i.i", %.split.i.i
  %i.pk = getelementptr inbounds nuw i8, ptr %.sroa.069.1.i.i, i64 8
  br label %bb.da, !llvm.loop !328

bb.dw:                                            ; preds = %.backedge, %.preheader
  %.sroa.066.0.pn.i.i = phi ptr [ %.sroa.066.0.i.i, %.preheader ], [ %.sroa.066.1.i.i, %.backedge ]
  %.sroa.066.1.i.i = getelementptr inbounds i8, ptr %.sroa.066.0.pn.i.i, i64 -8 ; 6 uses
  %.val1.i9.i.i = load i32, ptr %0, align 1
  %.val2.i10.i.i = load i32, ptr %.sroa.066.1.i.i, align 1
  %i.pl = zext i32 %.val1.i9.i.i to i64
  %i.pm = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %i.pl ; 3 uses
  %i.pn = zext i32 %.val2.i10.i.i to i64
  %i.po = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %i.pn ; 3 uses
  %i.pp = load ptr, ptr %i.pm, align 8, !tbaa !55 ; 6 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pm, i64 8
  %i.pr = load i32, ptr %i.pq, align 8, !tbaa !58 ; 2 uses
  %i.ps = zext i32 %i.pr to i64                   ; 9 uses
  %i.pt = load ptr, ptr %i.po, align 8, !tbaa !55 ; 6 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.po, i64 8
  %i.pv = load i32, ptr %i.pu, align 8, !tbaa !58 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %i.pp, ptr %4, align 8
  store i64 %i.ps, ptr %i.h, align 8
  %.not.i.i11.i.i = icmp eq i32 %i.pr, %i.pv
  br i1 %.not.i.i11.i.i, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %15 = zext i32 %i.pv to i64
  %i.pw = call i32 @llvm.ucmp.i32.i64(i64 %i.ps, i64 %15)
  br label %_ZL12gsiRecordCmpN4llvm9StringRefES0_.exit.i12.i.i

bb.dy:                                            ; preds = %bb.dw
  %i.px = getelementptr inbounds nuw i8, ptr %i.pp, i64 %i.ps ; 2 uses
  %i.py = ptrtoint ptr %i.px to i64
  %i.pz = lshr i64 %i.ps, 2                       ; 3 uses
  %.not5.i16.i.i = icmp eq i64 %i.pz, 0           ; 2 uses
  br i1 %.not5.i16.i.i, label %._crit_edge.i.i.i.i.i.i.i.i26.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i17.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i17.i.i:           ; preds = %bb.dy
  %i.qa = and i64 %i.ps, 4294967292
  %scevgep.i.i.i.i.i.i.i.i18.i.i = getelementptr i8, ptr %i.pp, i64 %i.qa
  br label %.lr.ph.i.i.i.i.i.i.i.i19.i.i

.lr.ph.i.i.i.i.i.i.i.i19.i.i:                     ; preds = %bb.ec, %.lr.ph.preheader.i.i.i.i.i.i.i.i17.i.i
  %.044.i.i.i.i.i.i.i.i20.i.i = phi i64 [ %i.qj, %bb.ec ], [ %i.pz, %.lr.ph.preheader.i.i.i.i.i.i.i.i17.i.i ] ; 2 uses
  %.02943.i.i.i.i.i.i.i.i21.i.i = phi ptr [ %i.qi, %bb.ec ], [ %i.pp, %.lr.ph.preheader.i.i.i.i.i.i.i.i17.i.i ] ; 9 uses
  %.029.val32.i.i.i.i.i.i.i.i22.i.i = load i8, ptr %.02943.i.i.i.i.i.i.i.i21.i.i, align 1, !tbaa !46
  %i.qb = icmp slt i8 %.029.val32.i.i.i.i.i.i.i.i22.i.i, 0
  br i1 %i.qb, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i57.i.i, label %bb.dz

bb.dz:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i19.i.i
  %i.qc = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i21.i.i, i64 1
  %.val31.i.i.i.i.i.i.i.i23.i.i = load i8, ptr %i.qc, align 1, !tbaa !46
  %i.qd = icmp slt i8 %.val31.i.i.i.i.i.i.i.i23.i.i, 0
  br i1 %i.qd, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i57.i.i.loopexit.split.loop.exit, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.qe = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i21.i.i, i64 2
  %.val30.i.i.i.i.i.i.i.i24.i.i = load i8, ptr %i.qe, align 1, !tbaa !46
  %i.qf = icmp slt i8 %.val30.i.i.i.i.i.i.i.i24.i.i, 0
  br i1 %i.qf, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i57.i.i.loopexit.split.loop.exit219, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.qg = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i21.i.i, i64 3
  %.val.i.i.i.i.i.i.i.i25.i.i = load i8, ptr %i.qg, align 1, !tbaa !46
  %i.qh = icmp slt i8 %.val.i.i.i.i.i.i.i.i25.i.i, 0
  br i1 %i.qh, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i57.i.i.loopexit.split.loop.exit221, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.qi = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i21.i.i, i64 4
  %i.qj = add nsw i64 %.044.i.i.i.i.i.i.i.i20.i.i, -1
  %i.qk = icmp sgt i64 %.044.i.i.i.i.i.i.i.i20.i.i, 1
  br i1 %i.qk, label %.lr.ph.i.i.i.i.i.i.i.i19.i.i, label %._crit_edge.i.i.i.i.i.i.i.i26.i.i, !llvm.loop !319

._crit_edge.i.i.i.i.i.i.i.i26.i.i:                ; preds = %bb.ec, %bb.dy
  %.029.lcssa.i.i.i.i.i.i.i.i27.i.i = phi ptr [ %i.pp, %bb.dy ], [ %scevgep.i.i.i.i.i.i.i.i18.i.i, %bb.ec ] ; 6 uses
  %.pre-phi.i.i.i.i.i.i.i.i28.i.i = ptrtoint ptr %.029.lcssa.i.i.i.i.i.i.i.i27.i.i to i64
  %i.ql = sub i64 %i.py, %.pre-phi.i.i.i.i.i.i.i.i28.i.i
  switch i64 %i.ql, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i.i31.i.i [
    i64 3, label %bb.ed
    i64 2, label %bb.ef
    i64 1, label %bb.eh
  ]

bb.ed:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i26.i.i
  %.029.val.i.i.i.i.i.i.i.i61.i.i = load i8, ptr %.029.lcssa.i.i.i.i.i.i.i.i27.i.i, align 1, !tbaa !46
  %i.qm = icmp slt i8 %.029.val.i.i.i.i.i.i.i.i61.i.i, 0
  br i1 %i.qm, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i57.i.i, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.qn = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i.i.i27.i.i, i64 1
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %._crit_edge.i.i.i.i.i.i.i.i26.i.i
  %.1.i.i.i.i.i.i.i.i59.i.i = phi ptr [ %i.qn, %bb.ee ], [ %.029.lcssa.i.i.i.i.i.i.i.i27.i.i, %._crit_edge.i.i.i.i.i.i.i.i26.i.i ] ; 3 uses
  %.1.val.i.i.i.i.i.i.i.i60.i.i = load i8, ptr %.1.i.i.i.i.i.i.i.i59.i.i, align 1, !tbaa !46
  %i.qo = icmp slt i8 %.1.val.i.i.i.i.i.i.i.i60.i.i, 0
  br i1 %i.qo, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i57.i.i, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.qp = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.i.i59.i.i, i64 1
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %._crit_edge.i.i.i.i.i.i.i.i26.i.i
  %.2.i.i.i.i.i.i.i.i29.i.i = phi ptr [ %i.qp, %bb.eg ], [ %.029.lcssa.i.i.i.i.i.i.i.i27.i.i, %._crit_edge.i.i.i.i.i.i.i.i26.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i.i.i.i30.i.i = load i8, ptr %.2.i.i.i.i.i.i.i.i29.i.i, align 1, !tbaa !46
  %i.qq = icmp slt i8 %.2.val.i.i.i.i.i.i.i.i30.i.i, 0
  br i1 %i.qq, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i57.i.i, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i.i31.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i57.i.i.loopexit.split.loop.exit: ; preds = %bb.dz
  %i.qr = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i21.i.i, i64 1
  br label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i57.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i57.i.i.loopexit.split.loop.exit219: ; preds = %bb.ea
  %i.qs = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i21.i.i, i64 2
  br label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i57.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i57.i.i.loopexit.split.loop.exit221: ; preds = %bb.eb
  %i.qt = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i21.i.i, i64 3
  br label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i57.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i57.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i19.i.i, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i57.i.i.loopexit.split.loop.exit, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i57.i.i.loopexit.split.loop.exit219, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i57.i.i.loopexit.split.loop.exit221, %bb.eh, %bb.ef, %bb.ed
  %.028.i.i.i.i.i.i.i.i58.i.i = phi ptr [ %.1.i.i.i.i.i.i.i.i59.i.i, %bb.ef ], [ %.029.lcssa.i.i.i.i.i.i.i.i27.i.i, %bb.ed ], [ %.2.i.i.i.i.i.i.i.i29.i.i, %bb.eh ], [ %i.qt, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i57.i.i.loopexit.split.loop.exit221 ], [ %i.qs, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i57.i.i.loopexit.split.loop.exit219 ], [ %i.qr, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i57.i.i.loopexit.split.loop.exit ], [ %.02943.i.i.i.i.i.i.i.i21.i.i, %.lr.ph.i.i.i.i.i.i.i.i19.i.i ]
  %i.qu = icmp eq ptr %i.px, %.028.i.i.i.i.i.i.i.i58.i.i
  br i1 %i.qu, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i.i31.i.i, label %.critedge.i.i50.i.i, !prof !320

_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i.i31.i.i: ; preds = %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i57.i.i, %bb.eh, %._crit_edge.i.i.i.i.i.i.i.i26.i.i
  %i.qv = getelementptr inbounds nuw i8, ptr %i.pt, i64 %i.ps ; 2 uses
  %i.qw = ptrtoint ptr %i.qv to i64
  br i1 %.not5.i16.i.i, label %._crit_edge.i.i.i.i.i.i14.i.i41.i.i, label %.lr.ph.preheader.i.i.i.i.i.i23.i.i32.i.i

.lr.ph.preheader.i.i.i.i.i.i23.i.i32.i.i:         ; preds = %_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i.i31.i.i
  %i.qx = and i64 %i.ps, 4294967292
  %scevgep.i.i.i.i.i.i24.i.i33.i.i = getelementptr i8, ptr %i.pt, i64 %i.qx
  br label %.lr.ph.i.i.i.i.i.i25.i.i34.i.i

.lr.ph.i.i.i.i.i.i25.i.i34.i.i:                   ; preds = %bb.el, %.lr.ph.preheader.i.i.i.i.i.i23.i.i32.i.i
  %.044.i.i.i.i.i.i26.i.i35.i.i = phi i64 [ %i.rg, %bb.el ], [ %i.pz, %.lr.ph.preheader.i.i.i.i.i.i23.i.i32.i.i ] ; 2 uses
  %.02943.i.i.i.i.i.i27.i.i36.i.i = phi ptr [ %i.rf, %bb.el ], [ %i.pt, %.lr.ph.preheader.i.i.i.i.i.i23.i.i32.i.i ] ; 9 uses
  %.029.val32.i.i.i.i.i.i28.i.i37.i.i = load i8, ptr %.02943.i.i.i.i.i.i27.i.i36.i.i, align 1, !tbaa !46
  %i.qy = icmp slt i8 %.029.val32.i.i.i.i.i.i28.i.i37.i.i, 0
  br i1 %i.qy, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i47.i.i, label %bb.ei

bb.ei:                                            ; preds = %.lr.ph.i.i.i.i.i.i25.i.i34.i.i
  %i.qz = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i.i36.i.i, i64 1
  %.val31.i.i.i.i.i.i29.i.i38.i.i = load i8, ptr %i.qz, align 1, !tbaa !46
  %i.ra = icmp slt i8 %.val31.i.i.i.i.i.i29.i.i38.i.i, 0
  br i1 %i.ra, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i47.i.i.loopexit.split.loop.exit, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.rb = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i.i36.i.i, i64 2
  %.val30.i.i.i.i.i.i30.i.i39.i.i = load i8, ptr %i.rb, align 1, !tbaa !46
  %i.rc = icmp slt i8 %.val30.i.i.i.i.i.i30.i.i39.i.i, 0
  br i1 %i.rc, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i47.i.i.loopexit.split.loop.exit227, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.rd = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i.i36.i.i, i64 3
  %.val.i.i.i.i.i.i31.i.i40.i.i = load i8, ptr %i.rd, align 1, !tbaa !46
  %i.re = icmp slt i8 %.val.i.i.i.i.i.i31.i.i40.i.i, 0
  br i1 %i.re, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i47.i.i.loopexit.split.loop.exit229, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.rf = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i.i36.i.i, i64 4
  %i.rg = add nsw i64 %.044.i.i.i.i.i.i26.i.i35.i.i, -1
  %i.rh = icmp sgt i64 %.044.i.i.i.i.i.i26.i.i35.i.i, 1
  br i1 %i.rh, label %.lr.ph.i.i.i.i.i.i25.i.i34.i.i, label %._crit_edge.i.i.i.i.i.i14.i.i41.i.i, !llvm.loop !319

._crit_edge.i.i.i.i.i.i14.i.i41.i.i:              ; preds = %bb.el, %_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i.i31.i.i
  %.029.lcssa.i.i.i.i.i.i15.i.i42.i.i = phi ptr [ %i.pt, %_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i.i31.i.i ], [ %scevgep.i.i.i.i.i.i24.i.i33.i.i, %bb.el ] ; 6 uses
  %.pre-phi.i.i.i.i.i.i16.i.i43.i.i = ptrtoint ptr %.029.lcssa.i.i.i.i.i.i15.i.i42.i.i to i64
  %i.ri = sub i64 %i.qw, %.pre-phi.i.i.i.i.i.i16.i.i43.i.i
  switch i64 %i.ri, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.thread.i.i46.i.i [
    i64 3, label %bb.em
    i64 2, label %bb.eo
    i64 1, label %bb.eq
  ]

bb.em:                                            ; preds = %._crit_edge.i.i.i.i.i.i14.i.i41.i.i
  %.029.val.i.i.i.i.i.i22.i.i53.i.i = load i8, ptr %.029.lcssa.i.i.i.i.i.i15.i.i42.i.i, align 1, !tbaa !46
  %i.rj = icmp slt i8 %.029.val.i.i.i.i.i.i22.i.i53.i.i, 0
  br i1 %i.rj, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i47.i.i, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.rk = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i15.i.i42.i.i, i64 1
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %._crit_edge.i.i.i.i.i.i14.i.i41.i.i
  %.1.i.i.i.i.i.i20.i.i51.i.i = phi ptr [ %i.rk, %bb.en ], [ %.029.lcssa.i.i.i.i.i.i15.i.i42.i.i, %._crit_edge.i.i.i.i.i.i14.i.i41.i.i ] ; 3 uses
  %.1.val.i.i.i.i.i.i21.i.i52.i.i = load i8, ptr %.1.i.i.i.i.i.i20.i.i51.i.i, align 1, !tbaa !46
  %i.rl = icmp slt i8 %.1.val.i.i.i.i.i.i21.i.i52.i.i, 0
  br i1 %i.rl, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i47.i.i, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.rm = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i20.i.i51.i.i, i64 1
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %._crit_edge.i.i.i.i.i.i14.i.i41.i.i
  %.2.i.i.i.i.i.i17.i.i44.i.i = phi ptr [ %i.rm, %bb.ep ], [ %.029.lcssa.i.i.i.i.i.i15.i.i42.i.i, %._crit_edge.i.i.i.i.i.i14.i.i41.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i.i18.i.i45.i.i = load i8, ptr %.2.i.i.i.i.i.i17.i.i44.i.i, align 1, !tbaa !46
  %i.rn = icmp slt i8 %.2.val.i.i.i.i.i.i18.i.i45.i.i, 0
  br i1 %i.rn, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i47.i.i, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.thread.i.i46.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i47.i.i.loopexit.split.loop.exit: ; preds = %bb.ei
  %i.ro = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i.i36.i.i, i64 1
  br label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i47.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i47.i.i.loopexit.split.loop.exit227: ; preds = %bb.ej
  %i.rp = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i.i36.i.i, i64 2
  br label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i47.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i47.i.i.loopexit.split.loop.exit229: ; preds = %bb.ek
  %i.rq = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i.i36.i.i, i64 3
  br label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i47.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i47.i.i: ; preds = %.lr.ph.i.i.i.i.i.i25.i.i34.i.i, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i47.i.i.loopexit.split.loop.exit, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i47.i.i.loopexit.split.loop.exit227, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i47.i.i.loopexit.split.loop.exit229, %bb.eq, %bb.eo, %bb.em
  %.028.i.i.i.i.i.i19.i.i48.i.i = phi ptr [ %.1.i.i.i.i.i.i20.i.i51.i.i, %bb.eo ], [ %.029.lcssa.i.i.i.i.i.i15.i.i42.i.i, %bb.em ], [ %.2.i.i.i.i.i.i17.i.i44.i.i, %bb.eq ], [ %i.rq, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i47.i.i.loopexit.split.loop.exit229 ], [ %i.rp, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i47.i.i.loopexit.split.loop.exit227 ], [ %i.ro, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i47.i.i.loopexit.split.loop.exit ], [ %.02943.i.i.i.i.i.i27.i.i36.i.i, %.lr.ph.i.i.i.i.i.i25.i.i34.i.i ]
  %.not40.i.i49.i.i = icmp eq ptr %i.qv, %.028.i.i.i.i.i.i19.i.i48.i.i
  br i1 %.not40.i.i49.i.i, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.thread.i.i46.i.i, label %.critedge.i.i50.i.i, !prof !320

.critedge.i.i50.i.i:                              ; preds = %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i47.i.i, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i57.i.i
  %i.rr = call i32 @memcmp(ptr noundef %i.pp, ptr noundef %i.pt, i64 noundef %i.ps) #26
  br label %_ZL12gsiRecordCmpN4llvm9StringRefES0_.exit.i12.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit35.thread.i.i46.i.i: ; preds = %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i47.i.i, %bb.eq, %._crit_edge.i.i.i.i.i.i14.i.i41.i.i
  %i.rs = call noundef i32 @_ZNK4llvm9StringRef19compare_insensitiveES0_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %i.pt, i64 %i.ps) #22
  br label %_ZL12gsiRecordCmpN4llvm9StringRefES0_.exit.i12.i.i

_ZL12gsiRecordCmpN4llvm9StringRefES0_.exit.i12.i.i: ; preds = %_ZL13isAsciiStringN4llvm9StringRefE.exit35.thread.i.i46.i.i, %.critedge.i.i50.i.i, %bb.dx
  %.0.i.i13.i.i = phi i32 [ %i.pw, %bb.dx ], [ %i.rr, %.critedge.i.i50.i.i ], [ %i.rs, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.thread.i.i46.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.not.i14.i.i = icmp eq i32 %.0.i.i13.i.i, 0
  br i1 %.not.i14.i.i, label %"_ZZZN4llvm3pdb20GSIHashStreamBuilder15finalizeBucketsEjNS_15MutableArrayRefINS0_10BulkPublicEEEENK3$_1clEmENKUlRKNS0_12PSHashRecordES8_E_clES8_S8_.exit65.i.i", label %.split72.i.i

.split72.i.i:                                     ; preds = %_ZL12gsiRecordCmpN4llvm9StringRefES0_.exit.i12.i.i
  %i.rt = icmp slt i32 %.0.i.i13.i.i, 0
  br i1 %i.rt, label %.backedge, label %bb.er

"_ZZZN4llvm3pdb20GSIHashStreamBuilder15finalizeBucketsEjNS_15MutableArrayRefINS0_10BulkPublicEEEENK3$_1clEmENKUlRKNS0_12PSHashRecordES8_E_clES8_S8_.exit65.i.i": ; preds = %_ZL12gsiRecordCmpN4llvm9StringRefES0_.exit.i12.i.i
  %i.ru = getelementptr inbounds nuw i8, ptr %i.pm, i64 12
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !59
  %i.rw = getelementptr inbounds nuw i8, ptr %i.po, i64 12
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !59
  %i.ry = icmp ult i32 %i.rv, %i.rx
  br i1 %i.ry, label %.backedge, label %bb.er

.backedge:                                        ; preds = %"_ZZZN4llvm3pdb20GSIHashStreamBuilder15finalizeBucketsEjNS_15MutableArrayRefINS0_10BulkPublicEEEENK3$_1clEmENKUlRKNS0_12PSHashRecordES8_E_clES8_S8_.exit65.i.i", %.split72.i.i
  br label %bb.dw, !llvm.loop !329

bb.er:                                            ; preds = %"_ZZZN4llvm3pdb20GSIHashStreamBuilder15finalizeBucketsEjNS_15MutableArrayRefINS0_10BulkPublicEEEENK3$_1clEmENKUlRKNS0_12PSHashRecordES8_E_clES8_S8_.exit65.i.i", %.split72.i.i
  %i.rz = icmp ult ptr %.sroa.069.1.i.i, %.sroa.066.1.i.i
  br i1 %i.rz, label %bb.es, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS3_20GSIHashStreamBuilder15finalizeBucketsEjNS2_15MutableArrayRefINS3_10BulkPublicEEEENK3$_1clEmEUlRKS4_SI_E_EEET_SL_SL_T0_.exit"

bb.es:                                            ; preds = %bb.er
  %i.sa = load i64, ptr %.sroa.069.1.i.i, align 1
  %i.sb = load i64, ptr %.sroa.066.1.i.i, align 1
  store i64 %i.sb, ptr %.sroa.069.1.i.i, align 1
  store i64 %i.sa, ptr %.sroa.066.1.i.i, align 1
  %i.sc = getelementptr inbounds nuw i8, ptr %.sroa.069.1.i.i, i64 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS3_20GSIHashStreamBuilder15finalizeBucketsEjNS2_15MutableArrayRefINS3_10BulkPublicEEEENK3$_1clEmEUlRKS4_SI_E_EEEvT_SL_SL_SL_T0_.exit.i", !llvm.loop !330

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS3_20GSIHashStreamBuilder15finalizeBucketsEjNS2_15MutableArrayRefINS3_10BulkPublicEEEENK3$_1clEmEUlRKS4_SI_E_EEET_SL_SL_T0_.exit": ; preds = %bb.er
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZZNS3_20GSIHashStreamBuilder15finalizeBucketsEjNS2_15MutableArrayRefINS3_10BulkPublicEEEENK3$_1clEmEUlRKS4_SI_E_EEEvT_SL_T0_T1_"(ptr nonnull %.sroa.069.1.i.i, ptr %storemerge6055, i64 noundef %i.md, ptr %3)
  %i.sd = ptrtoint ptr %.sroa.069.1.i.i to i64
  %i.se = sub i64 %i.sd, %i.a                     ; 2 uses
  %i.sf = ashr exact i64 %i.se, 3                 ; 3 uses
  %i.sg = icmp sgt i64 %i.sf, 16
  br i1 %i.sg, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS3_20GSIHashStreamBuilder15finalizeBucketsEjNS2_15MutableArrayRefINS3_10BulkPublicEEEENK3$_1clEmEUlRKS4_SI_E_EEEvT_SL_SL_T0_.exit", !llvm.loop !323

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS3_20GSIHashStreamBuilder15finalizeBucketsEjNS2_15MutableArrayRefINS3_10BulkPublicEEEENK3$_1clEmEUlRKS4_SI_E_EEEvT_SL_SL_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS3_20GSIHashStreamBuilder15finalizeBucketsEjNS2_15MutableArrayRefINS3_10BulkPublicEEEENK3$_1clEmEUlRKS4_SI_E_EEET_SL_SL_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS3_20GSIHashStreamBuilder15finalizeBucketsEjNS2_15MutableArrayRefINS3_10BulkPublicEEEENK3$_1clEmEUlRKS4_SI_E_EEEvT_SL_SL_RT0_.exit.i25.i", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS3_20GSIHashStreamBuilder15finalizeBucketsEjNS2_15MutableArrayRefINS3_10BulkPublicEEEENK3$_1clEmEUlRKS4_SI_E_EEEvT_SL_RT0_.exit.i.i"
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @"_ZZZN4llvm3pdb20GSIHashStreamBuilder15finalizeBucketsEjNS_15MutableArrayRefINS0_10BulkPublicEEEENK3$_1clEmENKUlRKNS0_12PSHashRecordES8_E_clES8_S8_"(ptr nofree readonly captures(none) %.0.val, i32 %.0.val1, i32 %.0.val3) unnamed_addr #12 align 2 {
bb.a:
  %0 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  %i.a = zext i32 %.0.val1 to i64
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %.0.val, i64 %i.a ; 3 uses
  %i.c = zext i32 %.0.val3 to i64
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %.0.val, i64 %i.c ; 3 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !55   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !58   ; 2 uses
  %i.h = zext i32 %i.g to i64                     ; 9 uses
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !55   ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !58   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  store ptr %i.e, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.h, ptr %i.l, align 8
  %.not.i = icmp eq i32 %i.g, %i.k
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %1 = zext i32 %i.k to i64
  %i.m = tail call i32 @llvm.ucmp.i32.i64(i64 %i.h, i64 %1)
  br label %_ZL12gsiRecordCmpN4llvm9StringRefES0_.exit

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.h ; 2 uses
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = lshr i64 %i.h, 2                         ; 3 uses
  %.not5 = icmp eq i64 %i.p, 0                    ; 2 uses
  br i1 %.not5, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %bb.c
  %i.q = and i64 %i.h, 4294967292
  %scevgep.i.i.i.i.i.i.i = getelementptr i8, ptr %i.e, i64 %i.q
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.g, %.lr.ph.preheader.i.i.i.i.i.i.i
  %.044.i.i.i.i.i.i.i = phi i64 [ %i.z, %bb.g ], [ %i.p, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %.02943.i.i.i.i.i.i.i = phi ptr [ %i.y, %bb.g ], [ %i.e, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 9 uses
  %.029.val32.i.i.i.i.i.i.i = load i8, ptr %.02943.i.i.i.i.i.i.i, align 1, !tbaa !46
  %i.r = icmp slt i8 %.029.val32.i.i.i.i.i.i.i, 0
  br i1 %i.r, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i, i64 1
  %.val31.i.i.i.i.i.i.i = load i8, ptr %i.s, align 1, !tbaa !46
  %i.t = icmp slt i8 %.val31.i.i.i.i.i.i.i, 0
  br i1 %i.t, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.loopexit.split.loop.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i, i64 2
  %.val30.i.i.i.i.i.i.i = load i8, ptr %i.u, align 1, !tbaa !46
  %i.v = icmp slt i8 %.val30.i.i.i.i.i.i.i, 0
  br i1 %i.v, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.loopexit.split.loop.exit32, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i, i64 3
  %.val.i.i.i.i.i.i.i = load i8, ptr %i.w, align 1, !tbaa !46
  %i.x = icmp slt i8 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.x, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.loopexit.split.loop.exit34, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i, i64 4
  %i.z = add nsw i64 %.044.i.i.i.i.i.i.i, -1
  %i.aa = icmp sgt i64 %.044.i.i.i.i.i.i.i, 1
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, !llvm.loop !319

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.g, %bb.c
  %.029.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.e, %bb.c ], [ %scevgep.i.i.i.i.i.i.i, %bb.g ] ; 6 uses
  %.pre-phi.i.i.i.i.i.i.i = ptrtoint ptr %.029.lcssa.i.i.i.i.i.i.i to i64
  %i.ab = sub i64 %i.o, %.pre-phi.i.i.i.i.i.i.i
  switch i64 %i.ab, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i [
    i64 3, label %bb.h
    i64 2, label %bb.j
    i64 1, label %bb.l
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %.029.val.i.i.i.i.i.i.i = load i8, ptr %.029.lcssa.i.i.i.i.i.i.i, align 1, !tbaa !46
  %i.ac = icmp slt i8 %.029.val.i.i.i.i.i.i.i, 0
  br i1 %i.ac, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i.i, i64 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i = phi ptr [ %i.ad, %bb.i ], [ %.029.lcssa.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i.i.i.i = load i8, ptr %.1.i.i.i.i.i.i.i, align 1, !tbaa !46
  %i.ae = icmp slt i8 %.1.val.i.i.i.i.i.i.i, 0
  br i1 %i.ae, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.i, i64 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i.i.i.i.i.i
  %.2.i.i.i.i.i.i.i = phi ptr [ %i.af, %bb.k ], [ %.029.lcssa.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i.i.i = load i8, ptr %.2.i.i.i.i.i.i.i, align 1, !tbaa !46
  %i.ag = icmp slt i8 %.2.val.i.i.i.i.i.i.i, 0
  br i1 %i.ag, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i

_ZL13isAsciiStringN4llvm9StringRefE.exit.i.loopexit.split.loop.exit: ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i, i64 1
  br label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i

_ZL13isAsciiStringN4llvm9StringRefE.exit.i.loopexit.split.loop.exit32: ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i, i64 2
  br label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i

_ZL13isAsciiStringN4llvm9StringRefE.exit.i.loopexit.split.loop.exit34: ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i, i64 3
  br label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i

_ZL13isAsciiStringN4llvm9StringRefE.exit.i:       ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.loopexit.split.loop.exit, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.loopexit.split.loop.exit32, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.loopexit.split.loop.exit34, %bb.l, %bb.j, %bb.h
  %.028.i.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i.i, %bb.j ], [ %.029.lcssa.i.i.i.i.i.i.i, %bb.h ], [ %.2.i.i.i.i.i.i.i, %bb.l ], [ %i.aj, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.loopexit.split.loop.exit34 ], [ %i.ah, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.loopexit.split.loop.exit ], [ %i.ai, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.loopexit.split.loop.exit32 ], [ %.02943.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ak = icmp eq ptr %i.n, %.028.i.i.i.i.i.i.i
  br i1 %i.ak, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i, label %.critedge.i, !prof !320

_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i: ; preds = %_ZL13isAsciiStringN4llvm9StringRefE.exit.i, %bb.l, %._crit_edge.i.i.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.h ; 2 uses
  %i.am = ptrtoint ptr %i.al to i64
  br i1 %.not5, label %._crit_edge.i.i.i.i.i.i14.i, label %.lr.ph.preheader.i.i.i.i.i.i23.i

.lr.ph.preheader.i.i.i.i.i.i23.i:                 ; preds = %_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i
  %i.an = and i64 %i.h, 4294967292
  %scevgep.i.i.i.i.i.i24.i = getelementptr i8, ptr %i.i, i64 %i.an
  br label %.lr.ph.i.i.i.i.i.i25.i

.lr.ph.i.i.i.i.i.i25.i:                           ; preds = %bb.p, %.lr.ph.preheader.i.i.i.i.i.i23.i
  %.044.i.i.i.i.i.i26.i = phi i64 [ %i.aw, %bb.p ], [ %i.p, %.lr.ph.preheader.i.i.i.i.i.i23.i ] ; 2 uses
  %.02943.i.i.i.i.i.i27.i = phi ptr [ %i.av, %bb.p ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i.i23.i ] ; 9 uses
  %.029.val32.i.i.i.i.i.i28.i = load i8, ptr %.02943.i.i.i.i.i.i27.i, align 1, !tbaa !46
  %i.ao = icmp slt i8 %.029.val32.i.i.i.i.i.i28.i, 0
  br i1 %i.ao, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i25.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i, i64 1
  %.val31.i.i.i.i.i.i29.i = load i8, ptr %i.ap, align 1, !tbaa !46
  %i.aq = icmp slt i8 %.val31.i.i.i.i.i.i29.i, 0
  br i1 %i.aq, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.loopexit.split.loop.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i, i64 2
  %.val30.i.i.i.i.i.i30.i = load i8, ptr %i.ar, align 1, !tbaa !46
  %i.as = icmp slt i8 %.val30.i.i.i.i.i.i30.i, 0
  br i1 %i.as, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.loopexit.split.loop.exit40, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i, i64 3
  %.val.i.i.i.i.i.i31.i = load i8, ptr %i.at, align 1, !tbaa !46
  %i.au = icmp slt i8 %.val.i.i.i.i.i.i31.i, 0
  br i1 %i.au, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.loopexit.split.loop.exit42, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i, i64 4
  %i.aw = add nsw i64 %.044.i.i.i.i.i.i26.i, -1
  %i.ax = icmp sgt i64 %.044.i.i.i.i.i.i26.i, 1
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i.i25.i, label %._crit_edge.i.i.i.i.i.i14.i, !llvm.loop !319

._crit_edge.i.i.i.i.i.i14.i:                      ; preds = %bb.p, %_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i
  %.029.lcssa.i.i.i.i.i.i15.i = phi ptr [ %i.i, %_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i ], [ %scevgep.i.i.i.i.i.i24.i, %bb.p ] ; 6 uses
  %.pre-phi.i.i.i.i.i.i16.i = ptrtoint ptr %.029.lcssa.i.i.i.i.i.i15.i to i64
  %i.ay = sub i64 %i.am, %.pre-phi.i.i.i.i.i.i16.i
  switch i64 %i.ay, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.thread.i [
    i64 3, label %bb.q
    i64 2, label %bb.s
    i64 1, label %bb.u
  ]

bb.q:                                             ; preds = %._crit_edge.i.i.i.i.i.i14.i
  %.029.val.i.i.i.i.i.i22.i = load i8, ptr %.029.lcssa.i.i.i.i.i.i15.i, align 1, !tbaa !46
  %i.az = icmp slt i8 %.029.val.i.i.i.i.i.i22.i, 0
  br i1 %i.az, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i15.i, i64 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i.i.i.i.i.i14.i
  %.1.i.i.i.i.i.i20.i = phi ptr [ %i.ba, %bb.r ], [ %.029.lcssa.i.i.i.i.i.i15.i, %._crit_edge.i.i.i.i.i.i14.i ] ; 3 uses
  %.1.val.i.i.i.i.i.i21.i = load i8, ptr %.1.i.i.i.i.i.i20.i, align 1, !tbaa !46
  %i.bb = icmp slt i8 %.1.val.i.i.i.i.i.i21.i, 0
  br i1 %i.bb, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bc = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i20.i, i64 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i.i.i.i.i.i14.i
  %.2.i.i.i.i.i.i17.i = phi ptr [ %i.bc, %bb.t ], [ %.029.lcssa.i.i.i.i.i.i15.i, %._crit_edge.i.i.i.i.i.i14.i ] ; 2 uses
  %.2.val.i.i.i.i.i.i18.i = load i8, ptr %.2.i.i.i.i.i.i17.i, align 1, !tbaa !46
  %i.bd = icmp slt i8 %.2.val.i.i.i.i.i.i18.i, 0
  br i1 %i.bd, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.thread.i

_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.loopexit.split.loop.exit: ; preds = %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i, i64 1
  br label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i

_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.loopexit.split.loop.exit40: ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i, i64 2
  br label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i

_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.loopexit.split.loop.exit42: ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i, i64 3
  br label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i

_ZL13isAsciiStringN4llvm9StringRefE.exit35.i:     ; preds = %.lr.ph.i.i.i.i.i.i25.i, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.loopexit.split.loop.exit, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.loopexit.split.loop.exit40, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.loopexit.split.loop.exit42, %bb.u, %bb.s, %bb.q
  %.028.i.i.i.i.i.i19.i = phi ptr [ %.1.i.i.i.i.i.i20.i, %bb.s ], [ %.029.lcssa.i.i.i.i.i.i15.i, %bb.q ], [ %.2.i.i.i.i.i.i17.i, %bb.u ], [ %i.bg, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.loopexit.split.loop.exit42 ], [ %i.be, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.loopexit.split.loop.exit ], [ %i.bf, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.loopexit.split.loop.exit40 ], [ %.02943.i.i.i.i.i.i27.i, %.lr.ph.i.i.i.i.i.i25.i ]
  %.not40.i = icmp eq ptr %i.al, %.028.i.i.i.i.i.i19.i
  br i1 %.not40.i, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.thread.i, label %.critedge.i, !prof !320

.critedge.i:                                      ; preds = %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i
  %i.bh = tail call i32 @memcmp(ptr noundef %i.e, ptr noundef %i.i, i64 noundef %i.h) #26
  br label %_ZL12gsiRecordCmpN4llvm9StringRefES0_.exit

_ZL13isAsciiStringN4llvm9StringRefE.exit35.thread.i: ; preds = %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i, %bb.u, %._crit_edge.i.i.i.i.i.i14.i
  %i.bi = call noundef i32 @_ZNK4llvm9StringRef19compare_insensitiveES0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %i.i, i64 %i.h) #22
  br label %_ZL12gsiRecordCmpN4llvm9StringRefES0_.exit

_ZL12gsiRecordCmpN4llvm9StringRefES0_.exit:       ; preds = %bb.b, %.critedge.i, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.thread.i
  %.0.i = phi i32 [ %i.m, %bb.b ], [ %i.bh, %.critedge.i ], [ %i.bi, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.thread.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  %.not = icmp eq i32 %.0.i, 0
  br i1 %.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZL12gsiRecordCmpN4llvm9StringRefES0_.exit
  %i.bj = icmp slt i32 %.0.i, 0
  br label %bb.x

bb.w:                                             ; preds = %_ZL12gsiRecordCmpN4llvm9StringRefES0_.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !59
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !59
  %i.bo = icmp ult i32 %i.bl, %i.bn
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.0 = phi i1 [ %i.bj, %bb.v ], [ %i.bo, %bb.w ]
  ret i1 %.0
}

declare noundef i32 @_ZNK4llvm9StringRef19compare_insensitiveES0_(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS3_20GSIHashStreamBuilder15finalizeBucketsEjNS2_15MutableArrayRefINS3_10BulkPublicEEEENK3$_1clEmEUlRKS4_SI_E_EEEvT_SL_T0_"(ptr %0, ptr nofree readnone captures(address) %1, ptr nofree readonly captures(none) %2) unnamed_addr #2 {
bb.a:
  %3 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.035 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not36 = icmp eq ptr %.sroa.0.035, %1
  br i1 %.not36, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit
  %.sroa.0.038 = phi ptr [ %.sroa.0.035, %.lr.ph ], [ %.sroa.0.0, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit ] ; 7 uses
  %.pn37 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.038, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit ] ; 4 uses
  %.val1.i = load i32, ptr %.sroa.0.038, align 1
  %.val2.i = load i32, ptr %0, align 1
  %i.d = call fastcc noundef zeroext i1 @"_ZZZN4llvm3pdb20GSIHashStreamBuilder15finalizeBucketsEjNS_15MutableArrayRefINS0_10BulkPublicEEEENK3$_1clEmENKUlRKNS0_12PSHashRecordES8_E_clES8_S8_"(ptr readonly %2, i32 %.val1.i, i32 %.val2.i)
  %i.e = load i64, ptr %.sroa.0.038, align 1      ; 3 uses
  br i1 %i.d, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = ptrtoint ptr %.sroa.0.038 to i64
  %i.g = sub i64 %i.f, %i.c                       ; 3 uses
  %i.h = ashr exact i64 %i.g, 3                   ; 2 uses
  %i.i = icmp sgt i64 %i.h, 1
  br i1 %i.i, label %bb.d, label %bb.e, !prof !305

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.pn37, i64 16
  %i.k = sub nsw i64 0, %i.h
  %i.l = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.k
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.l, ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %i.g, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

bb.e:                                             ; preds = %bb.c
  %i.m = icmp eq i64 %i.g, 8
  br i1 %i.m, label %bb.f, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %.pn37, i64 8
  %i.o = load i64, ptr %0, align 1
  store i64 %i.o, ptr %i.n, align 1
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

bb.g:                                             ; preds = %bb.b
  %.sroa.04.0.extract.trunc.i = trunc i64 %i.e to i32
  %.val3.i10.i = load i32, ptr %.pn37, align 1
  %i.p = call fastcc noundef zeroext i1 @"_ZZZN4llvm3pdb20GSIHashStreamBuilder15finalizeBucketsEjNS_15MutableArrayRefINS0_10BulkPublicEEEENK3$_1clEmENKUlRKNS0_12PSHashRecordES8_E_clES8_S8_"(ptr readonly %2, i32 %.sroa.04.0.extract.trunc.i, i32 %.val3.i10.i)
  br i1 %i.p, label %.lr.ph.i.preheader, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb12PSHashRecordESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

.lr.ph.i.preheader:                               ; preds = %bb.g
  %i.q = and i64 %i.e, 4294967295
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.q ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.backedge, %.lr.ph.i.preheader
  %.sroa.0.012.i = phi ptr [ %.pn37, %.lr.ph.i.preheader ], [ %.sroa.0.0.i, %.lr.ph.i.backedge ] ; 5 uses
  %.sroa.06.011.i = phi ptr [ %.sroa.0.038, %.lr.ph.i.preheader ], [ %.sroa.0.012.i, %.lr.ph.i.backedge ]
  %i.u = load i64, ptr %.sroa.0.012.i, align 1
  store i64 %i.u, ptr %.sroa.06.011.i, align 1
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.0.012.i, i64 -8 ; 2 uses
  %.val3.i.i = load i32, ptr %.sroa.0.0.i, align 1
  %i.v = zext i32 %.val3.i.i to i64
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.v ; 3 uses
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !55   ; 6 uses
  %i.y = load i32, ptr %i.t, align 8, !tbaa !58   ; 2 uses
  %i.z = zext i32 %i.y to i64                     ; 9 uses
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !55  ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !58 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %i.x, ptr %3, align 8
  store i64 %i.z, ptr %i.b, align 8
  %.not.i.i = icmp eq i32 %i.y, %i.ac
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %4 = zext i32 %i.ac to i64
  %i.ad = call i32 @llvm.ucmp.i32.i64(i64 %i.z, i64 %4)
  br label %_ZL12gsiRecordCmpN4llvm9StringRefES0_.exit.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.z ; 2 uses
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = lshr i64 %i.z, 2                        ; 3 uses
  %.not5.i = icmp eq i64 %i.ag, 0                 ; 2 uses
  br i1 %.not5.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i:                 ; preds = %bb.i
  %i.ah = and i64 %i.z, 4294967292
  %scevgep.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.x, i64 %i.ah
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.m, %.lr.ph.preheader.i.i.i.i.i.i.i.i
  %.044.i.i.i.i.i.i.i.i = phi i64 [ %i.aq, %bb.m ], [ %i.ag, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %.02943.i.i.i.i.i.i.i.i = phi ptr [ %i.ap, %bb.m ], [ %i.x, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 9 uses
  %.029.val32.i.i.i.i.i.i.i.i = load i8, ptr %.02943.i.i.i.i.i.i.i.i, align 1, !tbaa !46
  %i.ai = icmp slt i8 %.029.val32.i.i.i.i.i.i.i.i, 0
  br i1 %i.ai, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i, i64 1
  %.val31.i.i.i.i.i.i.i.i = load i8, ptr %i.aj, align 1, !tbaa !46
  %i.ak = icmp slt i8 %.val31.i.i.i.i.i.i.i.i, 0
  br i1 %i.ak, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.loopexit.split.loop.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i, i64 2
  %.val30.i.i.i.i.i.i.i.i = load i8, ptr %i.al, align 1, !tbaa !46
  %i.am = icmp slt i8 %.val30.i.i.i.i.i.i.i.i, 0
  br i1 %i.am, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.loopexit.split.loop.exit52, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i, i64 3
  %.val.i.i.i.i.i.i.i.i = load i8, ptr %i.an, align 1, !tbaa !46
  %i.ao = icmp slt i8 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.ao, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.loopexit.split.loop.exit54, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i, i64 4
  %i.aq = add nsw i64 %.044.i.i.i.i.i.i.i.i, -1
  %i.ar = icmp sgt i64 %.044.i.i.i.i.i.i.i.i, 1
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, !llvm.loop !319

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %bb.m, %bb.i
  %.029.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.x, %bb.i ], [ %scevgep.i.i.i.i.i.i.i.i, %bb.m ] ; 6 uses
  %.pre-phi.i.i.i.i.i.i.i.i = ptrtoint ptr %.029.lcssa.i.i.i.i.i.i.i.i to i64
  %i.as = sub i64 %i.af, %.pre-phi.i.i.i.i.i.i.i.i
  switch i64 %i.as, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i.i [
    i64 3, label %bb.n
    i64 2, label %bb.p
    i64 1, label %bb.r
  ]

bb.n:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %.029.val.i.i.i.i.i.i.i.i = load i8, ptr %.029.lcssa.i.i.i.i.i.i.i.i, align 1, !tbaa !46
  %i.at = icmp slt i8 %.029.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.at, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i.i.i, i64 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.i.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i.i = phi ptr [ %i.au, %bb.o ], [ %.029.lcssa.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i.i.i.i.i = load i8, ptr %.1.i.i.i.i.i.i.i.i, align 1, !tbaa !46
  %i.av = icmp slt i8 %.1.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.av, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.i.i, i64 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge.i.i.i.i.i.i.i.i
  %.2.i.i.i.i.i.i.i.i = phi ptr [ %i.aw, %bb.q ], [ %.029.lcssa.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i.i.i.i = load i8, ptr %.2.i.i.i.i.i.i.i.i, align 1, !tbaa !46
  %i.ax = icmp slt i8 %.2.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.ax, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.loopexit.split.loop.exit: ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i, i64 1
  br label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.loopexit.split.loop.exit52: ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i, i64 2
  br label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.loopexit.split.loop.exit54: ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i, i64 3
  br label %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i:     ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.loopexit.split.loop.exit, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.loopexit.split.loop.exit52, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.loopexit.split.loop.exit54, %bb.r, %bb.p, %bb.n
  %.028.i.i.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i.i.i, %bb.p ], [ %.029.lcssa.i.i.i.i.i.i.i.i, %bb.n ], [ %.2.i.i.i.i.i.i.i.i, %bb.r ], [ %i.ba, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.loopexit.split.loop.exit54 ], [ %i.az, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.loopexit.split.loop.exit52 ], [ %i.ay, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i.loopexit.split.loop.exit ], [ %.02943.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.bb = icmp eq ptr %i.ae, %.028.i.i.i.i.i.i.i.i
  br i1 %i.bb, label %_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i.i, label %.critedge.i.i, !prof !320

_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i.i: ; preds = %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i, %bb.r, %._crit_edge.i.i.i.i.i.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.z ; 2 uses
  %i.bd = ptrtoint ptr %i.bc to i64
  br i1 %.not5.i, label %._crit_edge.i.i.i.i.i.i14.i.i, label %.lr.ph.preheader.i.i.i.i.i.i23.i.i

.lr.ph.preheader.i.i.i.i.i.i23.i.i:               ; preds = %_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i.i
  %i.be = and i64 %i.z, 4294967292
  %scevgep.i.i.i.i.i.i24.i.i = getelementptr i8, ptr %i.aa, i64 %i.be
  br label %.lr.ph.i.i.i.i.i.i25.i.i

.lr.ph.i.i.i.i.i.i25.i.i:                         ; preds = %bb.v, %.lr.ph.preheader.i.i.i.i.i.i23.i.i
  %.044.i.i.i.i.i.i26.i.i = phi i64 [ %i.bn, %bb.v ], [ %i.ag, %.lr.ph.preheader.i.i.i.i.i.i23.i.i ] ; 2 uses
  %.02943.i.i.i.i.i.i27.i.i = phi ptr [ %i.bm, %bb.v ], [ %i.aa, %.lr.ph.preheader.i.i.i.i.i.i23.i.i ] ; 9 uses
  %.029.val32.i.i.i.i.i.i28.i.i = load i8, ptr %.02943.i.i.i.i.i.i27.i.i, align 1, !tbaa !46
  %i.bf = icmp slt i8 %.029.val32.i.i.i.i.i.i28.i.i, 0
  br i1 %i.bf, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i.i25.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i.i, i64 1
  %.val31.i.i.i.i.i.i29.i.i = load i8, ptr %i.bg, align 1, !tbaa !46
  %i.bh = icmp slt i8 %.val31.i.i.i.i.i.i29.i.i, 0
  br i1 %i.bh, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.loopexit.split.loop.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bi = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i.i, i64 2
  %.val30.i.i.i.i.i.i30.i.i = load i8, ptr %i.bi, align 1, !tbaa !46
  %i.bj = icmp slt i8 %.val30.i.i.i.i.i.i30.i.i, 0
  br i1 %i.bj, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.loopexit.split.loop.exit60, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bk = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i.i, i64 3
  %.val.i.i.i.i.i.i31.i.i = load i8, ptr %i.bk, align 1, !tbaa !46
  %i.bl = icmp slt i8 %.val.i.i.i.i.i.i31.i.i, 0
  br i1 %i.bl, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.loopexit.split.loop.exit62, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bm = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i.i, i64 4
  %i.bn = add nsw i64 %.044.i.i.i.i.i.i26.i.i, -1
  %i.bo = icmp sgt i64 %.044.i.i.i.i.i.i26.i.i, 1
  br i1 %i.bo, label %.lr.ph.i.i.i.i.i.i25.i.i, label %._crit_edge.i.i.i.i.i.i14.i.i, !llvm.loop !319

._crit_edge.i.i.i.i.i.i14.i.i:                    ; preds = %bb.v, %_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i.i
  %.029.lcssa.i.i.i.i.i.i15.i.i = phi ptr [ %i.aa, %_ZL13isAsciiStringN4llvm9StringRefE.exit.thread.i.i ], [ %scevgep.i.i.i.i.i.i24.i.i, %bb.v ] ; 6 uses
  %.pre-phi.i.i.i.i.i.i16.i.i = ptrtoint ptr %.029.lcssa.i.i.i.i.i.i15.i.i to i64
  %i.bp = sub i64 %i.bd, %.pre-phi.i.i.i.i.i.i16.i.i
  switch i64 %i.bp, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.thread.i.i [
    i64 3, label %bb.w
    i64 2, label %bb.y
    i64 1, label %bb.aa
  ]

bb.w:                                             ; preds = %._crit_edge.i.i.i.i.i.i14.i.i
  %.029.val.i.i.i.i.i.i22.i.i = load i8, ptr %.029.lcssa.i.i.i.i.i.i15.i.i, align 1, !tbaa !46
  %i.bq = icmp slt i8 %.029.val.i.i.i.i.i.i22.i.i, 0
  br i1 %i.bq, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.br = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i15.i.i, i64 1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge.i.i.i.i.i.i14.i.i
  %.1.i.i.i.i.i.i20.i.i = phi ptr [ %i.br, %bb.x ], [ %.029.lcssa.i.i.i.i.i.i15.i.i, %._crit_edge.i.i.i.i.i.i14.i.i ] ; 3 uses
  %.1.val.i.i.i.i.i.i21.i.i = load i8, ptr %.1.i.i.i.i.i.i20.i.i, align 1, !tbaa !46
  %i.bs = icmp slt i8 %.1.val.i.i.i.i.i.i21.i.i, 0
  br i1 %i.bs, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bt = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i20.i.i, i64 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge.i.i.i.i.i.i14.i.i
  %.2.i.i.i.i.i.i17.i.i = phi ptr [ %i.bt, %bb.z ], [ %.029.lcssa.i.i.i.i.i.i15.i.i, %._crit_edge.i.i.i.i.i.i14.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i.i18.i.i = load i8, ptr %.2.i.i.i.i.i.i17.i.i, align 1, !tbaa !46
  %i.bu = icmp slt i8 %.2.val.i.i.i.i.i.i18.i.i, 0
  br i1 %i.bu, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.thread.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.loopexit.split.loop.exit: ; preds = %bb.s
  %i.bv = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i.i, i64 1
  br label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.loopexit.split.loop.exit60: ; preds = %bb.t
  %i.bw = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i.i, i64 2
  br label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.loopexit.split.loop.exit62: ; preds = %bb.u
  %i.bx = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i27.i.i, i64 3
  br label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i

_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i:   ; preds = %.lr.ph.i.i.i.i.i.i25.i.i, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.loopexit.split.loop.exit, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.loopexit.split.loop.exit60, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.loopexit.split.loop.exit62, %bb.aa, %bb.y, %bb.w
  %.028.i.i.i.i.i.i19.i.i = phi ptr [ %.1.i.i.i.i.i.i20.i.i, %bb.y ], [ %.029.lcssa.i.i.i.i.i.i15.i.i, %bb.w ], [ %.2.i.i.i.i.i.i17.i.i, %bb.aa ], [ %i.bx, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.loopexit.split.loop.exit62 ], [ %i.bw, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.loopexit.split.loop.exit60 ], [ %i.bv, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i.loopexit.split.loop.exit ], [ %.02943.i.i.i.i.i.i27.i.i, %.lr.ph.i.i.i.i.i.i25.i.i ]
  %.not40.i.i = icmp eq ptr %i.bc, %.028.i.i.i.i.i.i19.i.i
  br i1 %.not40.i.i, label %_ZL13isAsciiStringN4llvm9StringRefE.exit35.thread.i.i, label %.critedge.i.i, !prof !320

.critedge.i.i:                                    ; preds = %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i, %_ZL13isAsciiStringN4llvm9StringRefE.exit.i.i
  %i.by = call i32 @memcmp(ptr noundef %i.x, ptr noundef %i.aa, i64 noundef %i.z) #26
  br label %_ZL12gsiRecordCmpN4llvm9StringRefES0_.exit.i

_ZL13isAsciiStringN4llvm9StringRefE.exit35.thread.i.i: ; preds = %_ZL13isAsciiStringN4llvm9StringRefE.exit35.i.i, %bb.aa, %._crit_edge.i.i.i.i.i.i14.i.i
  %i.bz = call noundef i32 @_ZNK4llvm9StringRef19compare_insensitiveES0_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr %i.aa, i64 %i.z) #22
  br label %_ZL12gsiRecordCmpN4llvm9StringRefES0_.exit.i

_ZL12gsiRecordCmpN4llvm9StringRefES0_.exit.i:     ; preds = %_ZL13isAsciiStringN4llvm9StringRefE.exit35.thread.i.i, %.critedge.i.i, %bb.h
  %.0.i.i = phi i32 [ %i.ad, %bb.h ], [ %i.by, %.critedge.i.i ], [ %i.bz, %_ZL13isAsciiStringN4llvm9StringRefE.exit35.thread.i.i ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4llvm3pdb18SymbolDenseMapInfo7isEqualERKNS_8codeview8CVRecordINS2_10SymbolKindEEES7_:bb.a

bb.c:                                             ; preds = %bb.b
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.01.0.copyload, ptr %.sroa.0.0.copyload, i64 %.sroa.22.0.copyload)
  %.not9.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br label %_ZN4llvmeqIhEEbNS_8ArrayRefIT_EES3_.exit

_ZN4llvmeqIhEEbNS_8ArrayRefIT_EES3_.exit:         ; preds = %bb.a, %bb.b, %bb.c
  %.0.i.i = phi i1 [ false, %bb.a ], [ %.not9.i.i.i.i.i.i, %bb.c ], [ true, %bb.b ]
  ret i1 %.0.i.i
}

declare noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8codeview8CVRecordINS2_10SymbolKindEEENS_6detail13DenseSetEmptyENS_3pdb18SymbolDenseMapInfoENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap", align 16   ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !91
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #22 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !92
  store ptr %i.y, ptr %i.q, align 8, !tbaa !466
  store i32 0, ptr %i.p, align 16, !tbaa !471
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8codeview8CVRecordINS2_10SymbolKindEEENS_6detail13DenseSetEmptyENS_3pdb18SymbolDenseMapInfoENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !196
  %i.aa = load ptr, ptr %0, align 8, !tbaa !470
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !196
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !196
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !196
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !35 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !35
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !35
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !35
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !35
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapINS_8codeview8CVRecordINS1_10SymbolKindEEENS_6detail13DenseSetEmptyENS_3pdb18SymbolDenseMapInfoENS5_12DenseSetPairIS4_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #22
  br label %_ZN4llvm8DenseMapINS_8codeview8CVRecordINS1_10SymbolKindEEENS_6detail13DenseSetEmptyENS_3pdb18SymbolDenseMapInfoENS5_12DenseSetPairIS4_EEED2Ev.exit

_ZN4llvm8DenseMapINS_8codeview8CVRecordINS1_10SymbolKindEEENS_6detail13DenseSetEmptyENS_3pdb18SymbolDenseMapInfoENS5_12DenseSetPairIS4_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8codeview8CVRecordINS2_10SymbolKindEEENS_6detail13DenseSetEmptyENS_3pdb18SymbolDenseMapInfoENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !92
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !466
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !91   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !466  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !92
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !91
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i18 = icmp eq i64 %i.n, 0
  br i1 %.not.i18, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8codeview8CVRecordINS5_10SymbolKindEEENS_6detail13DenseSetEmptyENS_3pdb18SymbolDenseMapInfoENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !35   ; 2 uses
  %.not11.i16 = icmp eq i32 %i.p, 0
  br i1 %.not11.i16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph21
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_8codeview8CVRecordINS2_10SymbolKindEEENS_6detail13DenseSetEmptyENS_3pdb18SymbolDenseMapInfoENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_ENKUljE_clEj.exit
  %.0.i17 = phi i32 [ %i.p, %.lr.ph ], [ %i.au, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_8codeview8CVRecordINS2_10SymbolKindEEENS_6detail13DenseSetEmptyENS_3pdb18SymbolDenseMapInfoENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i17, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 3 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.u, align 8, !tbaa !52
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !54
  %i.v = tail call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef %.sroa.0.0.copyload.i.i, i64 noundef %.sroa.2.0.copyload.i.i) #22
  %i.w = trunc i64 %i.v to i32
  %i.x = and i32 %i.k, %i.w                       ; 3 uses
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = lshr i64 %i.y, 5                         ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !35
  %i.ac = and i32 %i.x, 31                        ; 2 uses
  %i.ad = lshr i32 %i.ab, %i.ac
  %i.ae = trunc i32 %i.ad to i1
  br i1 %i.ae, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_8codeview8CVRecordINS2_10SymbolKindEEENS_6detail13DenseSetEmptyENS_3pdb18SymbolDenseMapInfoENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ag, %.lr.ph.i ], [ %i.x, %bb.b ]
  %i.af = add i32 %.014.i, 1
  %i.ag = and i32 %i.af, %i.k                     ; 3 uses
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = lshr i64 %i.ah, 5                       ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !35
  %i.al = and i32 %i.ag, 31                       ; 2 uses
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_8codeview8CVRecordINS2_10SymbolKindEEENS_6detail13DenseSetEmptyENS_3pdb18SymbolDenseMapInfoENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_ENKUljE_clEj.exit, !llvm.loop !477

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_8codeview8CVRecordINS2_10SymbolKindEEENS_6detail13DenseSetEmptyENS_3pdb18SymbolDenseMapInfoENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.y, %bb.b ], [ %i.ah, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.z, %bb.b ], [ %i.ai, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa12.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !187
  %i.ap = shl nuw i32 1, %.lcssa.i
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !35
  %i.as = or i32 %i.ar, %i.ap
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !35
  %i.at = add i32 %.0.i17, -1
  %i.au = and i32 %i.at, %.0.i17                  ; 2 uses
  %.not11.i = icmp eq i32 %i.au, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !478

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_8codeview8CVRecordINS2_10SymbolKindEEENS_6detail13DenseSetEmptyENS_3pdb18SymbolDenseMapInfoENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_ENKUljE_clEj.exit, %.lr.ph21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8codeview8CVRecordINS5_10SymbolKindEEENS_6detail13DenseSetEmptyENS_3pdb18SymbolDenseMapInfoENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph21, !llvm.loop !479

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8codeview8CVRecordINS5_10SymbolKindEEENS_6detail13DenseSetEmptyENS_3pdb18SymbolDenseMapInfoENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !91
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8codeview8CVRecordINS5_10SymbolKindEEENS_6detail13DenseSetEmptyENS_3pdb18SymbolDenseMapInfoENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8codeview8CVRecordINS5_10SymbolKindEEENS_6detail13DenseSetEmptyENS_3pdb18SymbolDenseMapInfoENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8codeview8CVRecordINS5_10SymbolKindEEENS_6detail13DenseSetEmptyENS_3pdb18SymbolDenseMapInfoENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.av = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8codeview8CVRecordINS5_10SymbolKindEEENS_6detail13DenseSetEmptyENS_3pdb18SymbolDenseMapInfoENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !471
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ax, ptr %i.ay, align 8, !tbaa !471
  %i.az = icmp eq i32 %i.av, 0
  br i1 %i.az, label %_ZN4llvm8DenseMapINS_8codeview8CVRecordINS1_10SymbolKindEEENS_6detail13DenseSetEmptyENS_3pdb18SymbolDenseMapInfoENS5_12DenseSetPairIS4_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8codeview8CVRecordINS5_10SymbolKindEEENS_6detail13DenseSetEmptyENS_3pdb18SymbolDenseMapInfoENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit
  %i.ba = load ptr, ptr %1, align 8, !tbaa !92
  %i.bb = zext i32 %i.av to i64                   ; 2 uses
  %i.bc = shl nuw nsw i64 %i.bb, 4
  %i.bd = add nuw nsw i64 %i.bb, 31
  %i.be = lshr i64 %i.bd, 3
  %i.bf = and i64 %i.be, 1073741820
  %i.bg = add nuw nsw i64 %i.bf, %i.bc
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ba, i64 noundef %i.bg, i64 noundef 8) #22
  store i32 0, ptr %i.d, align 4, !tbaa !91
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_8codeview8CVRecordINS1_10SymbolKindEEENS_6detail13DenseSetEmptyENS_3pdb18SymbolDenseMapInfoENS5_12DenseSetPairIS4_EEE4killEv.exit

_ZN4llvm8DenseMapINS_8codeview8CVRecordINS1_10SymbolKindEEENS_6detail13DenseSetEmptyENS_3pdb18SymbolDenseMapInfoENS5_12DenseSetPairIS4_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8codeview8CVRecordINS5_10SymbolKindEEENS_6detail13DenseSetEmptyENS_3pdb18SymbolDenseMapInfoENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #19

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #22 = { nounwind }
attributes #23 = { builtin nounwind allocsize(0) }
attributes #24 = { noreturn nounwind }
attributes #25 = { builtin nounwind }
attributes #26 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 8}
!9 = !{!"_ZTSNSt12_Vector_baseIN4llvm3pdb12PSHashRecordESaIS2_EE17_Vector_impl_dataE", !10, i64 0, !10, i64 8, !10, i64 16}
!10 = !{!"p1 _ZTSN4llvm3pdb12PSHashRecordE", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!9, !10, i64 0}
!13 = !{!14, !15, i64 8}
!14 = !{!"_ZTSNSt12_Vector_baseIN4llvm7support6detail31packed_endian_specific_integralIjLNS0_10endiannessE1ELm1ELm1EEESaIS5_EE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!15 = !{!"p1 _ZTSN4llvm7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEE", !11, i64 0}
!16 = !{!14, !15, i64 0}
!17 = !{!10, !10, i64 0}
!18 = !{!15, !15, i64 0}
!19 = !{!20, !21, i64 0}
!20 = !{!"_ZTSN4llvm5ErrorE", !21, i64 0}
!21 = !{!"p1 _ZTSN4llvm13ErrorInfoBaseE", !11, i64 0}
!22 = !{}
!23 = !{!24, !24, i64 0}
!24 = !{!"p1 _ZTSN4llvm3pdb20GSIHashStreamBuilderE", !11, i64 0}
!25 = !{!26, !27, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseIN4llvm3pdb10BulkPublicESaIS2_EE17_Vector_impl_dataE", !27, i64 0, !27, i64 8, !27, i64 16}
!27 = !{!"p1 _ZTSN4llvm3pdb10BulkPublicE", !11, i64 0}
!28 = !{!26, !27, i64 8}
!29 = !{!30, !30, i64 0}
!30 = !{!"p1 _ZTSN4llvm15MutableArrayRefINS_3pdb10BulkPublicEEE", !11, i64 0}
!31 = !{!32, !27, i64 0}
!32 = !{!"_ZTSN4llvm8ArrayRefINS_3pdb10BulkPublicEEE", !27, i64 0, !33, i64 8}
!33 = !{!"long", !6, i64 0}
!34 = !{!32, !33, i64 8}
!35 = !{!5, !5, i64 0}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.unroll.disable"}
!38 = !{!39, !24, i64 0}
!39 = !{!"_ZTSZN4llvm3pdb20GSIHashStreamBuilder15finalizeBucketsEjNS_15MutableArrayRefINS0_10BulkPublicEEEE3$_1", !24, i64 0, !40, i64 8, !40, i64 16, !30, i64 24}
!40 = !{!"p1 int", !11, i64 0}
!41 = !{!40, !40, i64 0}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.mustprogress"}
!44 = distinct !{!44, !43}
!45 = !{!14, !15, i64 16}
!46 = !{!6, !6, i64 0}
!47 = distinct !{!47, !43}
!48 = !{!49, !50, i64 8}
!49 = !{!"_ZTSNSt12_Vector_baseIN4llvm8codeview8CVRecordINS1_10SymbolKindEEESaIS4_EE17_Vector_impl_dataE", !50, i64 0, !50, i64 8, !50, i64 16}
!50 = !{!"p1 _ZTSN4llvm8codeview8CVRecordINS0_10SymbolKindEEE", !11, i64 0}
!51 = !{!49, !50, i64 0}
!52 = !{!53, !53, i64 0}
!53 = !{!"p1 omnipotent char", !11, i64 0}
!54 = !{!33, !33, i64 0}
!55 = !{!56, !53, i64 0}
!56 = !{!"_ZTSN4llvm3pdb10BulkPublicE", !53, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !57, i64 20, !57, i64 22, !57, i64 22}
!57 = !{!"short", !6, i64 0}
!58 = !{!56, !5, i64 8}
!59 = !{!56, !5, i64 12}
!60 = !{!61, !33, i64 8}
!61 = !{!"_ZTSN4llvm8ArrayRefIhEE", !53, i64 0, !33, i64 8}
!62 = distinct !{!62, !43}
!63 = !{!64, !5, i64 0}
!64 = !{!"_ZTSN4llvm3pdb16GSIStreamBuilderE", !5, i64 0, !5, i64 4, !5, i64 8, !65, i64 16, !66, i64 24, !66, i64 32, !72, i64 40, !75, i64 64, !78, i64 88}
!65 = !{!"p1 _ZTSN4llvm3msf10MSFBuilderE", !11, i64 0}
!66 = !{!"_ZTSSt10unique_ptrIN4llvm3pdb20GSIHashStreamBuilderESt14default_deleteIS2_EE", !67, i64 0}
!67 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm3pdb20GSIHashStreamBuilderESt14default_deleteIS2_ELb1ELb1EE", !68, i64 0}
!68 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm3pdb20GSIHashStreamBuilderESt14default_deleteIS2_EE", !69, i64 0}
!69 = !{!"_ZTSSt5tupleIJPN4llvm3pdb20GSIHashStreamBuilderESt14default_deleteIS2_EEE", !70, i64 0}
!70 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm3pdb20GSIHashStreamBuilderESt14default_deleteIS2_EEE", !71, i64 0}
!71 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm3pdb20GSIHashStreamBuilderELb0EE", !24, i64 0}
!72 = !{!"_ZTSSt6vectorIN4llvm3pdb10BulkPublicESaIS2_EE", !73, i64 0}
!73 = !{!"_ZTSSt12_Vector_baseIN4llvm3pdb10BulkPublicESaIS2_EE", !74, i64 0}
!74 = !{!"_ZTSNSt12_Vector_baseIN4llvm3pdb10BulkPublicESaIS2_EE12_Vector_implE", !26, i64 0}
!75 = !{!"_ZTSSt6vectorIN4llvm8codeview8CVRecordINS1_10SymbolKindEEESaIS4_EE", !76, i64 0}
!76 = !{!"_ZTSSt12_Vector_baseIN4llvm8codeview8CVRecordINS1_10SymbolKindEEESaIS4_EE", !77, i64 0}
!77 = !{!"_ZTSNSt12_Vector_baseIN4llvm8codeview8CVRecordINS1_10SymbolKindEEESaIS4_EE12_Vector_implE", !49, i64 0}
!78 = !{!"_ZTSN4llvm8DenseSetINS_8codeview8CVRecordINS1_10SymbolKindEEENS_3pdb18SymbolDenseMapInfoEEE", !79, i64 0}
!79 = !{!"_ZTSN4llvm6detail12DenseSetImplINS_8codeview8CVRecordINS2_10SymbolKindEEENS_8DenseMapIS5_NS0_13DenseSetEmptyENS_3pdb18SymbolDenseMapInfoENS0_12DenseSetPairIS5_EEEEEE", !80, i64 0}
!80 = !{!"_ZTSN4llvm8DenseMapINS_8codeview8CVRecordINS1_10SymbolKindEEENS_6detail13DenseSetEmptyENS_3pdb18SymbolDenseMapInfoENS5_12DenseSetPairIS4_EEEE", !81, i64 0, !40, i64 8, !5, i64 16, !5, i64 20}
!81 = !{!"p1 _ZTSN4llvm6detail12DenseSetPairINS_8codeview8CVRecordINS2_10SymbolKindEEEEE", !11, i64 0}
!82 = !{!64, !5, i64 4}
!83 = !{!64, !5, i64 8}
!84 = !{!65, !65, i64 0}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_ZSt11make_uniqueIN4llvm3pdb20GSIHashStreamBuilderEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!87 = distinct !{!87, !"_ZSt11make_uniqueIN4llvm3pdb20GSIHashStreamBuilderEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_ZSt11make_uniqueIN4llvm3pdb20GSIHashStreamBuilderEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!90 = distinct !{!90, !"_ZSt11make_uniqueIN4llvm3pdb20GSIHashStreamBuilderEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!91 = !{!80, !5, i64 20}
!92 = !{!80, !81, i64 0}
!93 = !{!49, !50, i64 16}
!94 = !{!26, !27, i64 16}
!95 = !{!9, !10, i64 16}
!96 = !{!97, !33, i64 0}
!97 = !{!"_ZTSN4llvm3pdb20GSIHashStreamBuilderE", !33, i64 0, !98, i64 8, !101, i64 32, !102, i64 552}
!98 = !{!"_ZTSSt6vectorIN4llvm3pdb12PSHashRecordESaIS2_EE", !99, i64 0}
!99 = !{!"_ZTSSt12_Vector_baseIN4llvm3pdb12PSHashRecordESaIS2_EE", !100, i64 0}
!100 = !{!"_ZTSNSt12_Vector_baseIN4llvm3pdb12PSHashRecordESaIS2_EE12_Vector_implE", !9, i64 0}
!101 = !{!"_ZTSSt5arrayIN4llvm7support6detail31packed_endian_specific_integralIjLNS0_10endiannessE1ELm1ELm1EEELm129EE", !6, i64 0}
!102 = !{!"_ZTSSt6vectorIN4llvm7support6detail31packed_endian_specific_integralIjLNS0_10endiannessE1ELm1ELm1EEESaIS5_EE", !103, i64 0}
!103 = !{!"_ZTSSt12_Vector_baseIN4llvm7support6detail31packed_endian_specific_integralIjLNS0_10endiannessE1ELm1ELm1EEESaIS5_EE", !104, i64 0}
!104 = !{!"_ZTSNSt12_Vector_baseIN4llvm7support6detail31packed_endian_specific_integralIjLNS0_10endiannessE1ELm1ELm1EEESaIS5_EE12_Vector_implE", !14, i64 0}
!105 = !{!64, !65, i64 16}
!106 = !{i64 8}
!107 = !{!108}
!108 = distinct !{!108, !109, !"_ZN4llvm8ExpectedIjE9takeErrorEv: argument 0"}
!109 = distinct !{!109, !"_ZN4llvm8ExpectedIjE9takeErrorEv"}
!110 = !{!21, !21, i64 0}
!111 = !{!112, !112, i64 0}
!112 = !{!"vtable pointer", !7, i64 0}
!113 = distinct !{null, null, null, null, null}
!114 = !{!115}
!115 = distinct !{!115, !116, !"_ZN4llvm8ExpectedIjE9takeErrorEv: argument 0"}
!116 = distinct !{!116, !"_ZN4llvm8ExpectedIjE9takeErrorEv"}
!117 = !{!118, !120}
!118 = distinct !{!118, !119, !"_ZN4llvm7formatvIJRmS1_jEEEDabPKcDpOT_: argument 0"}
!119 = distinct !{!119, !"_ZN4llvm7formatvIJRmS1_jEEEDabPKcDpOT_"}
!120 = distinct !{!120, !121, !"_ZN4llvm7formatvIJRmS1_jEEEDaPKcDpOT_: argument 0"}
!121 = distinct !{!121, !"_ZN4llvm7formatvIJRmS1_jEEEDaPKcDpOT_"}
!122 = !{!123, !123, i64 0}
!123 = !{!"p1 _ZTSN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEEE", !11, i64 0}
!124 = !{!125, !128, i64 32}
!125 = !{!"_ZTSN4llvm19formatv_object_baseE", !126, i64 0, !127, i64 16, !128, i64 32}
!126 = !{!"_ZTSN4llvm9StringRefE", !53, i64 0, !33, i64 8}
!127 = !{!"_ZTSN4llvm8ArrayRefINS_12function_refIFvRNS_11raw_ostreamENS_9StringRefEEEEEE", !123, i64 0, !33, i64 8}
!128 = !{!"bool", !6, i64 0}
!129 = !{!130, !130, i64 0}
!130 = !{!"p1 long", !11, i64 0}
!131 = !{!132}
!132 = distinct !{!132, !133, !"_ZN4llvm10make_errorINS_11StringErrorEJNS_14formatv_objectISt5tupleIJNS_7support6detail13FormatFunctorIRmEES8_NS6_IjEEEEEESt10error_codeEEENS_5ErrorEDpOT0_: argument 0"}
!133 = distinct !{!133, !"_ZN4llvm10make_errorINS_11StringErrorEJNS_14formatv_objectISt5tupleIJNS_7support6detail13FormatFunctorIRmEES8_NS6_IjEEEEEESt10error_codeEEENS_5ErrorEDpOT0_"}
!134 = !{!135, !132}
!135 = distinct !{!135, !136, !"_ZSt11make_uniqueIN4llvm11StringErrorEJNS0_14formatv_objectISt5tupleIJNS0_7support6detail13FormatFunctorIRmEES8_NS6_IjEEEEEESt10error_codeEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!136 = distinct !{!136, !"_ZSt11make_uniqueIN4llvm11StringErrorEJNS0_14formatv_objectISt5tupleIJNS0_7support6detail13FormatFunctorIRmEES8_NS6_IjEEEEEESt10error_codeEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!137 = !{!138, !139, i64 32}
!138 = !{!"_ZTSN4llvm5TwineE", !6, i64 0, !6, i64 16, !139, i64 32, !139, i64 33}
!139 = !{!"_ZTSN4llvm5Twine8NodeKindE", !6, i64 0}
!140 = !{!138, !139, i64 33}
!141 = !{!142}
!142 = distinct !{!142, !143, !"_ZN4llvm8ExpectedIjE9takeErrorEv: argument 0"}
!143 = distinct !{!143, !"_ZN4llvm8ExpectedIjE9takeErrorEv"}
!144 = distinct !{null, null, null}
!145 = !{!27, !27, i64 0}
!146 = !{!147, !5, i64 0}
!147 = !{!"_ZTSN4llvm18ThreadPoolStrategyE", !5, i64 0, !128, i64 4, !128, i64 5, !128, i64 6}
!148 = !{i64 0, i64 4, !35, i64 4, i64 4, !35, i64 8, i64 2, !149, i64 10, i64 2, !46}
!149 = !{!57, !57, i64 0}
!150 = !{i64 0, i64 8, !52, i64 8, i64 4, !35, i64 12, i64 4, !35, i64 16, i64 4, !35, i64 20, i64 2, !149, i64 22, i64 2, !46}
!151 = distinct !{!151, !43}
!152 = distinct !{!152, !43}
!153 = !{!154, !155, i64 0}
!154 = !{!"_ZTSN4llvm3msf10MSFBuilderE", !155, i64 0, !128, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !156, i64 32, !163, i64 104, !167, i64 128}
!155 = !{!"p1 _ZTSN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE", !11, i64 0}
!156 = !{!"_ZTSN4llvm9BitVectorE", !157, i64 0, !5, i64 64}
!157 = !{!"_ZTSN4llvm11SmallVectorImLj6EEE", !158, i64 0, !162, i64 16}
!158 = !{!"_ZTSN4llvm15SmallVectorImplImEE", !159, i64 0}
!159 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseImLb1EEE", !160, i64 0}
!160 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonImvEE", !161, i64 0}
!161 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !11, i64 0, !5, i64 8, !5, i64 12}
!162 = !{!"_ZTSN4llvm18SmallVectorStorageImLj6EEE", !6, i64 0}
!163 = !{!"_ZTSSt6vectorIjSaIjEE", !164, i64 0}
!164 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !165, i64 0}
!165 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !166, i64 0}
!166 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !40, i64 0, !40, i64 8, !40, i64 16}
!167 = !{!"_ZTSSt6vectorISt4pairIjS_IjSaIjEEESaIS3_EE", !168, i64 0}
!168 = !{!"_ZTSSt12_Vector_baseISt4pairIjSt6vectorIjSaIjEEESaIS4_EE", !169, i64 0}
!169 = !{!"_ZTSNSt12_Vector_baseISt4pairIjSt6vectorIjSaIjEEESaIS4_EE12_Vector_implE", !170, i64 0}
!170 = !{!"_ZTSNSt12_Vector_baseISt4pairIjSt6vectorIjSaIjEEESaIS4_EE17_Vector_impl_dataE", !171, i64 0, !171, i64 8, !171, i64 16}
!171 = !{!"p1 _ZTSSt4pairIjSt6vectorIjSaIjEEE", !11, i64 0}
!172 = !{!173, !173, i64 0}
!173 = !{!"_ZTSN4llvm8codeview16SymbolRecordKindE", !6, i64 0}
!174 = !{!175, !5, i64 8}
!175 = !{!"_ZTSN4llvm5APIntE", !6, i64 0, !5, i64 8}
!176 = !{!177, !128, i64 12}
!177 = !{!"_ZTSN4llvm6APSIntE", !175, i64 0, !128, i64 12}
!178 = !{i8 0, i8 2}
!179 = !{!61, !53, i64 0}
!180 = !{!181, !183, !185}
!181 = distinct !{!181, !182, !"_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8codeview8CVRecordINS2_10SymbolKindEEENS_6detail13DenseSetEmptyENS_3pdb18SymbolDenseMapInfoENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E16try_emplace_implIRKS5_JEEESt4pairINS_16DenseMapIteratorIS5_S7_S9_SB_Lb0EEEbEOT_DpOT0_: argument 0"}
!182 = distinct !{!182, !"_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8codeview8CVRecordINS2_10SymbolKindEEENS_6detail13DenseSetEmptyENS_3pdb18SymbolDenseMapInfoENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E16try_emplace_implIRKS5_JEEESt4pairINS_16DenseMapIteratorIS5_S7_S9_SB_Lb0EEEbEOT_DpOT0_"}
!183 = distinct !{!183, !184, !"_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8codeview8CVRecordINS2_10SymbolKindEEENS_6detail13DenseSetEmptyENS_3pdb18SymbolDenseMapInfoENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E11try_emplaceIJEEESt4pairINS_16DenseMapIteratorIS5_S7_S9_SB_Lb0EEEbERKS5_DpOT_: argument 0"}
!184 = distinct !{!184, !"_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8codeview8CVRecordINS2_10SymbolKindEEENS_6detail13DenseSetEmptyENS_3pdb18SymbolDenseMapInfoENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E11try_emplaceIJEEESt4pairINS_16DenseMapIteratorIS5_S7_S9_SB_Lb0EEEbERKS5_DpOT_"}
!185 = distinct !{!185, !186, !"_ZN4llvm6detail12DenseSetImplINS_8codeview8CVRecordINS2_10SymbolKindEEENS_8DenseMapIS5_NS0_13DenseSetEmptyENS_3pdb18SymbolDenseMapInfoENS0_12DenseSetPairIS5_EEEEE6insertERKS5_: argument 0"}
!186 = distinct !{!186, !"_ZN4llvm6detail12DenseSetImplINS_8codeview8CVRecordINS2_10SymbolKindEEENS_8DenseMapIS5_NS0_13DenseSetEmptyENS_3pdb18SymbolDenseMapInfoENS0_12DenseSetPairIS5_EEEEE6insertERKS5_"}
!187 = !{i64 0, i64 8, !52, i64 8, i64 8, !54}
!188 = !{!189, !191}
end_hunk_1
