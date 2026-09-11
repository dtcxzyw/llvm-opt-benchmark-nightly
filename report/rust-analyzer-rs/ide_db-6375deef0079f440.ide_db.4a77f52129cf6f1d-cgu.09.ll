Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_db-6375deef0079f440.ide_db.4a77f52129cf6f1d-cgu.09?download=true
inline.NumInlined: 1403
inline.NumDeleted: 922
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvNtNtCs1Deu0X9zrS8_5rayon5slice4sort9par_mergeNtNtCs8Xq8PKFYOms_3hir7symbols10FileSymbolNCINvYSBL_INtB4_16ParallelSliceMutBL_E11par_sort_byNvNvMs5_NtCs6oosyzwIepl_6ide_db12symbol_indexNtB2o_11SymbolIndex3new3cmpE0EB2q_:bb.a
  store i64 %.sroa.3.0.i7683, ptr %.sroa.615.0..sroa_idx, align 8
  %.sroa.716.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %5, ptr %.sroa.716.0..sroa_idx, align 8
  %.sroa.817.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %4, ptr %.sroa.817.0..sroa_idx, align 8
  call void @_RINvNtCsdtH0xi6p5qe_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvBS_4join4calluNCINvNtNtCs1Deu0X9zrS8_5rayon5slice4sort9par_mergeNtNtCs8Xq8PKFYOms_3hir7symbols10FileSymbolNCINvYSB2p_INtB1I_16ParallelSliceMutB2p_E11par_sort_byNvNvMs5_NtCs6oosyzwIepl_6ide_db12symbol_indexNtB45_11SymbolIndex3new3cmpE0E0E0NCIB1j_uNCB1D_s_0E0uuE0TuuEEB47_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %.thread78
  ret void

.lr.ph:                                           ; preds = %.preheader, %bb.l
  %.sroa.0.061101 = phi ptr [ %i.be, %bb.l ], [ %0, %.preheader ] ; 4 uses
  %.sroa.13.0100 = phi ptr [ %i.bb, %bb.l ], [ %2, %.preheader ] ; 4 uses
  %.sroa.24.099 = phi ptr [ %i.az, %bb.l ], [ %4, %.preheader ] ; 3 uses
  %i.aq = invoke noundef range(i8 -1, 2) i8 @_RNvNvMs5_NtCs6oosyzwIepl_6ide_db12symbol_indexNtB7_11SymbolIndex3new3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sroa.13.0100, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sroa.0.061101)
          to label %bb.l unwind label %.loopexit

._crit_edge:                                      ; preds = %bb.l, %.preheader
  %.sroa.24.0.lcssa = phi ptr [ %4, %.preheader ], [ %i.az, %bb.l ] ; 2 uses
  %.sroa.13.0.lcssa = phi ptr [ %2, %.preheader ], [ %i.bb, %bb.l ] ; 2 uses
  %.sroa.0.061.lcssa = phi ptr [ %0, %.preheader ], [ %i.be, %bb.l ] ; 2 uses
  %i.ar = ptrtoint ptr %i.b to i64
  %i.as = ptrtoint ptr %.sroa.0.061.lcssa to i64
  %i.at = sub i64 %i.ar, %i.as                    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.sroa.24.0.lcssa, ptr align 8 %.sroa.0.061.lcssa, i64 %i.at, i1 false), !noalias !135
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.24.0.lcssa, i64 %i.at
  %i.av = ptrtoint ptr %i.c to i64
  %i.aw = ptrtoint ptr %.sroa.13.0.lcssa to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.au, ptr align 8 %.sroa.13.0.lcssa, i64 %i.ax, i1 false), !noalias !135
  br label %bb.k

bb.l:                                             ; preds = %.lr.ph
  %i.ay = icmp eq i8 %i.aq, -1                    ; 3 uses
  %.sroa.0.0 = select i1 %i.ay, ptr %.sroa.13.0100, ptr %.sroa.0.061101
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.24.099, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.0, i64 72, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.24.099, i64 72 ; 2 uses
  %i.ba = zext i1 %i.ay to i64
  %i.bb = getelementptr inbounds nuw [72 x i8], ptr %.sroa.13.0100, i64 %i.ba ; 3 uses
  %i.bc = xor i1 %i.ay, true
  %i.bd = zext i1 %i.bc to i64
  %i.be = getelementptr inbounds nuw [72 x i8], ptr %.sroa.0.061101, i64 %i.bd ; 3 uses
  %i.bf = icmp ult ptr %i.be, %i.b
  %i.bg = icmp ult ptr %i.bb, %i.c
  %or.cond84 = select i1 %i.bf, i1 %i.bg, i1 false
  br i1 %or.cond84, label %.lr.ph, label %._crit_edge

.loopexit:                                        ; preds = %.lr.ph
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.f
  %lpad.loopexit85 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.h
  %lpad.loopexit88 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke133, %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %.sroa.24.1.ph = phi ptr [ %.sroa.24.099, %.loopexit ], [ %4, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %4, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %4, %.loopexit.split-lp.loopexit ] ; 2 uses
  %.sroa.13.1.ph = phi ptr [ %.sroa.13.0100, %.loopexit ], [ %2, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %2, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %2, %.loopexit.split-lp.loopexit ] ; 2 uses
  %.sroa.0.1.ph = phi ptr [ %.sroa.0.061101, %.loopexit ], [ %0, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %0, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %0, %.loopexit.split-lp.loopexit ] ; 2 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit88, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit85, %.loopexit.split-lp.loopexit ]
  %i.bh = ptrtoint ptr %i.b to i64
  %i.bi = ptrtoint ptr %.sroa.0.1.ph to i64
  %i.bj = sub i64 %i.bh, %i.bi                    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.sroa.24.1.ph, ptr align 8 %.sroa.0.1.ph, i64 %i.bj, i1 false), !noalias !136
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.24.1.ph, i64 %i.bj
  %i.bl = ptrtoint ptr %i.c to i64
  %i.bm = ptrtoint ptr %.sroa.13.1.ph to i64
  %i.bn = sub i64 %i.bl, %i.bm
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bk, ptr align 8 %.sroa.13.1.ph, i64 %i.bn, i1 false), !noalias !136
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvNtNtCscAsMj0W7j8b_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardNtNtCsM5evIHPibA_17crossbeam_channel5waker5WakerENCNvMs9_B10_BX_3new0ECs6oosyzwIepl_6ide_db(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 17)) %0, i1 noundef zeroext %1, i8 noundef %2, ptr noundef nonnull align 8 %3) unnamed_addr #3 {
bb.a:
  %spec.select = zext i1 %1 to i64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %2, ptr %i.b, align 8
  store i64 %spec.select, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvNtNtCscAsMj0W7j8b_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardNtNtNtB4_4mpmc4zero5InnerENCNvMs9_B10_BX_3new0ECs6oosyzwIepl_6ide_db(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 17)) %0, i1 noundef zeroext %1, i8 noundef %2, ptr noundef nonnull align 8 %3) unnamed_addr #3 {
bb.a:
  %spec.select = zext i1 %1 to i64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %2, ptr %i.b, align 8
  store i64 %spec.select, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvNtNtCscAsMj0W7j8b_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardNtNtNtB4_4mpmc5waker5WakerENCNvMs9_B10_BX_3new0ECs6oosyzwIepl_6ide_db(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 17)) %0, i1 noundef zeroext %1, i8 noundef %2, ptr noundef nonnull align 8 %3) unnamed_addr #3 {
bb.a:
  %spec.select = zext i1 %1 to i64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %2, ptr %i.b, align 8
  store i64 %spec.select, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvNtNtCscAsMj0W7j8b_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardNtNtNtCsM5evIHPibA_17crossbeam_channel7flavors4zero5InnerENCNvMs9_B10_BX_3new0ECs6oosyzwIepl_6ide_db(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 17)) %0, i1 noundef zeroext %1, i8 noundef %2, ptr noundef nonnull align 8 %3) unnamed_addr #3 {
bb.a:
  %spec.select = zext i1 %1 to i64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %2, ptr %i.b, align 8
  store i64 %spec.select, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvNtNtCscAsMj0W7j8b_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardbENCNvMs9_B10_BX_3new0ECs6oosyzwIepl_6ide_db(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 17)) %0, i1 noundef zeroext %1, i8 noundef %2, ptr noundef nonnull align 4 %3) unnamed_addr #3 {
bb.a:
  %spec.select = zext i1 %1 to i64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %2, ptr %i.b, align 8
  store i64 %spec.select, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable7ipnsortINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdENCINvMB6_SBT_20sort_unstable_by_keyTB1M_NtNtCsuAhG64lL82_9text_size4size8TextSizeINtNtB8_3cmp7ReverseB3r_EENCNvNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB4G_10FindUsages37short_associated_function_fast_search24collect_possible_aliasess4_0E0EB4I_(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  %i.b = alloca [16 x i8], align 16               ; 5 uses
  %i.c = alloca [16 x i8], align 16               ; 5 uses
  %i.d = alloca [16 x i8], align 16               ; 5 uses
  %i.e = alloca [16 x i8], align 16               ; 5 uses
  %i.f = alloca [16 x i8], align 16               ; 5 uses
  %i.g = icmp samesign ult i64 %1, 2
  br i1 %i.g, label %_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE7reverseCs6oosyzwIepl_6ide_db.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !166
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168)
  %i.i = load <4 x i32>, ptr %i.h, align 4, !alias.scope !169, !noalias !170 ; 4 uses
  %i.j = extractelement <4 x i32> %i.i, i64 3     ; 3 uses
  store <4 x i32> %i.i, ptr %i.f, align 16, !alias.scope !167, !noalias !171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !166
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.l = load i32, ptr %i.k, align 4, !alias.scope !174, !noalias !175, !noundef !10
  %i.m = load <4 x i32>, ptr %0, align 4, !alias.scope !174, !noalias !175
  store <4 x i32> %i.m, ptr %i.e, align 16, !alias.scope !172, !noalias !176
  %i.n = call noundef range(i8 0, 3) i8 @_RINvNtCshzWfHUSfYae_4core3cmp21default_chaining_implNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdBO_NvMB2_NtB2_8Ordering5is_ltECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.e), !noalias !166 ; 2 uses
  %.not.i.i = icmp eq i8 %i.n, 2
  br i1 %.not.i.i, label %bb.c, label %_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE20sort_unstable_by_keyTB1q_NtNtCsuAhG64lL82_9text_size4size8TextSizeINtNtB7_3cmp7ReverseB2S_EENCNvNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB47_10FindUsages37short_associated_function_fast_search24collect_possible_aliasess4_0E0B49_.exit

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.q = call noundef range(i8 0, 3) i8 @_RINvNtCshzWfHUSfYae_4core3cmp21default_chaining_implNtNtCsuAhG64lL82_9text_size4size8TextSizeBO_NvMB2_NtB2_8Ordering5is_ltECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.p, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.o), !noalias !166 ; 2 uses
  %.not5.i.i = icmp eq i8 %i.q, 2
  br i1 %.not5.i.i, label %bb.d, label %_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE20sort_unstable_by_keyTB1q_NtNtCsuAhG64lL82_9text_size4size8TextSizeINtNtB7_3cmp7ReverseB2S_EENCNvNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB47_10FindUsages37short_associated_function_fast_search24collect_possible_aliasess4_0E0B49_.exit

bb.d:                                             ; preds = %bb.c
  %i.r = icmp ult i32 %i.l, %i.j
  %i.s = zext i1 %i.r to i8
  br label %_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE20sort_unstable_by_keyTB1q_NtNtCsuAhG64lL82_9text_size4size8TextSizeINtNtB7_3cmp7ReverseB2S_EENCNvNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB47_10FindUsages37short_associated_function_fast_search24collect_possible_aliasess4_0E0B49_.exit

_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE20sort_unstable_by_keyTB1q_NtNtCsuAhG64lL82_9text_size4size8TextSizeINtNtB7_3cmp7ReverseB2S_EENCNvNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB47_10FindUsages37short_associated_function_fast_search24collect_possible_aliasess4_0E0B49_.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.1.i.i = phi i8 [ %i.n, %bb.b ], [ %i.s, %bb.d ], [ %i.q, %bb.c ]
  %i.t = trunc nuw i8 %.sroa.0.1.i.i to i1        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !166
  %.not23 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.t, label %.preheader, label %.preheader15

.preheader15:                                     ; preds = %_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE20sort_unstable_by_keyTB1q_NtNtCsuAhG64lL82_9text_size4size8TextSizeINtNtB7_3cmp7ReverseB2S_EENCNvNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB47_10FindUsages37short_associated_function_fast_search24collect_possible_aliasess4_0E0B49_.exit
  br i1 %.not23, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdENCINvMB6_SB12_20sort_unstable_by_keyTB1V_NtNtCsuAhG64lL82_9text_size4size8TextSizeINtNtB8_3cmp7ReverseB3B_EENCNvNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB4Q_10FindUsages37short_associated_function_fast_search24collect_possible_aliasess4_0E0EB4S_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader15
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.e

.preheader:                                       ; preds = %_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE20sort_unstable_by_keyTB1q_NtNtCsuAhG64lL82_9text_size4size8TextSizeINtNtB7_3cmp7ReverseB2S_EENCNvNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB47_10FindUsages37short_associated_function_fast_search24collect_possible_aliasess4_0E0B49_.exit
  br i1 %.not23, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdENCINvMB6_SB12_20sort_unstable_by_keyTB1V_NtNtCsuAhG64lL82_9text_size4size8TextSizeINtNtB8_3cmp7ReverseB3B_EENCNvNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB4Q_10FindUsages37short_associated_function_fast_search24collect_possible_aliasess4_0E0EB4S_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %.preheader
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.i

bb.e:                                             ; preds = %.lr.ph, %bb.h
  %i.y = phi i32 [ %i.j, %.lr.ph ], [ %i.ad, %bb.h ]
  %.sroa.01.0.i17 = phi i64 [ 2, %.lr.ph ], [ %i.aj, %bb.h ] ; 3 uses
  %i.z = phi <4 x i32> [ %i.i, %.lr.ph ], [ %i.ac, %bb.h ]
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i17 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !177)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !178
  call void @llvm.experimental.noalias.scope.decl(metadata !179)
  call void @llvm.experimental.noalias.scope.decl(metadata !180)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.ac = load <4 x i32>, ptr %i.aa, align 4, !alias.scope !181, !noalias !182 ; 2 uses
  store <4 x i32> %i.ac, ptr %i.d, align 16, !alias.scope !179, !noalias !183
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !178
  %i.ad = load i32, ptr %i.ab, align 4, !alias.scope !181, !noalias !182, !noundef !10 ; 2 uses
  store <4 x i32> %i.z, ptr %i.c, align 16, !alias.scope !184, !noalias !185
  %i.ae = call noundef range(i8 0, 3) i8 @_RINvNtCshzWfHUSfYae_4core3cmp21default_chaining_implNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdBO_NvMB2_NtB2_8Ordering5is_ltECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.c), !noalias !178 ; 2 uses
  %.not.i.i2 = icmp eq i8 %i.ae, 2
  br i1 %.not.i.i2, label %bb.f, label %_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE20sort_unstable_by_keyTB1q_NtNtCsuAhG64lL82_9text_size4size8TextSizeINtNtB7_3cmp7ReverseB2S_EENCNvNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB47_10FindUsages37short_associated_function_fast_search24collect_possible_aliasess4_0E0B49_.exit5

bb.f:                                             ; preds = %bb.e
  %i.af = call noundef range(i8 0, 3) i8 @_RINvNtCshzWfHUSfYae_4core3cmp21default_chaining_implNtNtCsuAhG64lL82_9text_size4size8TextSizeBO_NvMB2_NtB2_8Ordering5is_ltECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.u, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.v), !noalias !178 ; 2 uses
  %.not5.i.i4 = icmp eq i8 %i.af, 2
  br i1 %.not5.i.i4, label %bb.g, label %_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE20sort_unstable_by_keyTB1q_NtNtCsuAhG64lL82_9text_size4size8TextSizeINtNtB7_3cmp7ReverseB2S_EENCNvNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB47_10FindUsages37short_associated_function_fast_search24collect_possible_aliasess4_0E0B49_.exit5

bb.g:                                             ; preds = %bb.f
  %i.ag = icmp ult i32 %i.y, %i.ad
  %i.ah = zext i1 %i.ag to i8
  br label %_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE20sort_unstable_by_keyTB1q_NtNtCsuAhG64lL82_9text_size4size8TextSizeINtNtB7_3cmp7ReverseB2S_EENCNvNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB47_10FindUsages37short_associated_function_fast_search24collect_possible_aliasess4_0E0B49_.exit5

_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE20sort_unstable_by_keyTB1q_NtNtCsuAhG64lL82_9text_size4size8TextSizeINtNtB7_3cmp7ReverseB2S_EENCNvNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB47_10FindUsages37short_associated_function_fast_search24collect_possible_aliasess4_0E0B49_.exit5: ; preds = %bb.e, %bb.f, %bb.g
  %.sroa.0.1.i.i3 = phi i8 [ %i.ae, %bb.e ], [ %i.ah, %bb.g ], [ %i.af, %bb.f ]
  %i.ai = trunc nuw i8 %.sroa.0.1.i.i3 to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !178
  br i1 %i.ai, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdENCINvMB6_SB12_20sort_unstable_by_keyTB1V_NtNtCsuAhG64lL82_9text_size4size8TextSizeINtNtB8_3cmp7ReverseB3B_EENCNvNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB4Q_10FindUsages37short_associated_function_fast_search24collect_possible_aliasess4_0E0EB4S_.exit, label %bb.h

bb.h:                                             ; preds = %_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE20sort_unstable_by_keyTB1q_NtNtCsuAhG64lL82_9text_size4size8TextSizeINtNtB7_3cmp7ReverseB2S_EENCNvNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB47_10FindUsages37short_associated_function_fast_search24collect_possible_aliasess4_0E0B49_.exit5
  %i.aj = add nuw nsw i64 %.sroa.01.0.i17, 1      ; 2 uses
  %exitcond.not = icmp eq i64 %i.aj, %1
  br i1 %exitcond.not, label %bb.m, label %bb.e

bb.i:                                             ; preds = %.lr.ph20, %bb.l
  %i.ak = phi i32 [ %i.j, %.lr.ph20 ], [ %i.ap, %bb.l ]
  %.sroa.01.1.i19 = phi i64 [ 2, %.lr.ph20 ], [ %i.av, %bb.l ] ; 3 uses
  %i.al = phi <4 x i32> [ %i.i, %.lr.ph20 ], [ %i.ao, %bb.l ]
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.1.i19 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !186)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !187
  call void @llvm.experimental.noalias.scope.decl(metadata !188)
  call void @llvm.experimental.noalias.scope.decl(metadata !189)
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.ao = load <4 x i32>, ptr %i.am, align 4, !alias.scope !190, !noalias !191 ; 2 uses
  store <4 x i32> %i.ao, ptr %i.b, align 16, !alias.scope !188, !noalias !192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !187
  %i.ap = load i32, ptr %i.an, align 4, !alias.scope !190, !noalias !191, !noundef !10 ; 2 uses
  store <4 x i32> %i.al, ptr %i.a, align 16, !alias.scope !193, !noalias !194
  %i.aq = call noundef range(i8 0, 3) i8 @_RINvNtCshzWfHUSfYae_4core3cmp21default_chaining_implNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdBO_NvMB2_NtB2_8Ordering5is_ltECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.a), !noalias !187 ; 2 uses
  %.not.i.i6 = icmp eq i8 %i.aq, 2
  br i1 %.not.i.i6, label %bb.j, label %_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE20sort_unstable_by_keyTB1q_NtNtCsuAhG64lL82_9text_size4size8TextSizeINtNtB7_3cmp7ReverseB2S_EENCNvNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB47_10FindUsages37short_associated_function_fast_search24collect_possible_aliasess4_0E0B49_.exit9

bb.j:                                             ; preds = %bb.i
  %i.ar = call noundef range(i8 0, 3) i8 @_RINvNtCshzWfHUSfYae_4core3cmp21default_chaining_implNtNtCsuAhG64lL82_9text_size4size8TextSizeBO_NvMB2_NtB2_8Ordering5is_ltECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.w, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.x), !noalias !187 ; 2 uses
  %.not5.i.i8 = icmp eq i8 %i.ar, 2
  br i1 %.not5.i.i8, label %bb.k, label %_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE20sort_unstable_by_keyTB1q_NtNtCsuAhG64lL82_9text_size4size8TextSizeINtNtB7_3cmp7ReverseB2S_EENCNvNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB47_10FindUsages37short_associated_function_fast_search24collect_possible_aliasess4_0E0B49_.exit9

bb.k:                                             ; preds = %bb.j
  %i.as = icmp ult i32 %i.ak, %i.ap
  %i.at = zext i1 %i.as to i8
  br label %_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE20sort_unstable_by_keyTB1q_NtNtCsuAhG64lL82_9text_size4size8TextSizeINtNtB7_3cmp7ReverseB2S_EENCNvNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB47_10FindUsages37short_associated_function_fast_search24collect_possible_aliasess4_0E0B49_.exit9

_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE20sort_unstable_by_keyTB1q_NtNtCsuAhG64lL82_9text_size4size8TextSizeINtNtB7_3cmp7ReverseB2S_EENCNvNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB47_10FindUsages37short_associated_function_fast_search24collect_possible_aliasess4_0E0B49_.exit9: ; preds = %bb.i, %bb.j, %bb.k
  %.sroa.0.1.i.i7 = phi i8 [ %i.aq, %bb.i ], [ %i.at, %bb.k ], [ %i.ar, %bb.j ]
  %i.au = trunc nuw i8 %.sroa.0.1.i.i7 to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !187
  br i1 %i.au, label %bb.l, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdENCINvMB6_SB12_20sort_unstable_by_keyTB1V_NtNtCsuAhG64lL82_9text_size4size8TextSizeINtNtB8_3cmp7ReverseB3B_EENCNvNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB4Q_10FindUsages37short_associated_function_fast_search24collect_possible_aliasess4_0E0EB4S_.exit

bb.l:                                             ; preds = %_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE20sort_unstable_by_keyTB1q_NtNtCsuAhG64lL82_9text_size4size8TextSizeINtNtB7_3cmp7ReverseB2S_EENCNvNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB47_10FindUsages37short_associated_function_fast_search24collect_possible_aliasess4_0E0B49_.exit9
  %i.av = add nuw nsw i64 %.sroa.01.1.i19, 1      ; 2 uses
  %exitcond27.not = icmp eq i64 %i.av, %1
  br i1 %exitcond27.not, label %bb.m, label %bb.i

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdENCINvMB6_SB12_20sort_unstable_by_keyTB1V_NtNtCsuAhG64lL82_9text_size4size8TextSizeINtNtB8_3cmp7ReverseB3B_EENCNvNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB4Q_10FindUsages37short_associated_function_fast_search24collect_possible_aliasess4_0E0EB4S_.exit: ; preds = %_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE20sort_unstable_by_keyTB1q_NtNtCsuAhG64lL82_9text_size4size8TextSizeINtNtB7_3cmp7ReverseB2S_EENCNvNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB47_10FindUsages37short_associated_function_fast_search24collect_possible_aliasess4_0E0B49_.exit5, %_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE20sort_unstable_by_keyTB1q_NtNtCsuAhG64lL82_9text_size4size8TextSizeINtNtB7_3cmp7ReverseB2S_EENCNvNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB47_10FindUsages37short_associated_function_fast_search24collect_possible_aliasess4_0E0B49_.exit9, %.preheader15, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader15 ], [ 2, %.preheader ], [ %.sroa.01.1.i19, %_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE20sort_unstable_by_keyTB1q_NtNtCsuAhG64lL82_9text_size4size8TextSizeINtNtB7_3cmp7ReverseB2S_EENCNvNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB47_10FindUsages37short_associated_function_fast_search24collect_possible_aliasess4_0E0B49_.exit9 ], [ %.sroa.01.0.i17, %_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE20sort_unstable_by_keyTB1q_NtNtCsuAhG64lL82_9text_size4size8TextSizeINtNtB7_3cmp7ReverseB2S_EENCNvNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB47_10FindUsages37short_associated_function_fast_search24collect_possible_aliasess4_0E0B49_.exit5 ] ; 2 uses
  %i.aw = icmp samesign ule i64 %.sroa.0.0.i, %1
  call void @llvm.assume(i1 %i.aw)
  %i.ax = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.ax, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.h, %bb.l, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdENCINvMB6_SB12_20sort_unstable_by_keyTB1V_NtNtCsuAhG64lL82_9text_size4size8TextSizeINtNtB8_3cmp7ReverseB3B_EENCNvNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB4Q_10FindUsages37short_associated_function_fast_search24collect_possible_aliasess4_0E0EB4S_.exit
  br i1 %i.t, label %.lr.ph.preheader.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE7reverseCs6oosyzwIepl_6ide_db.exit

bb.n:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdENCINvMB6_SB12_20sort_unstable_by_keyTB1V_NtNtCsuAhG64lL82_9text_size4size8TextSizeINtNtB8_3cmp7ReverseB3B_EENCNvNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB4Q_10FindUsages37short_associated_function_fast_search24collect_possible_aliasess4_0E0EB4S_.exit
  %i.ay = or i64 %1, 1
  %i.az = call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.ay, i1 true)
  %i.ba = trunc nuw nsw i64 %i.az to i32
  %i.bb = shl nuw nsw i32 %i.ba, 1
  %i.bc = xor i32 %i.bb, 126
  call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable9quicksort9quicksortINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdENCINvMB8_SB17_20sort_unstable_by_keyTB20_NtNtCsuAhG64lL82_9text_size4size8TextSizeINtNtBa_3cmp7ReverseB3G_EENCNvNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB4V_10FindUsages37short_associated_function_fast_search24collect_possible_aliasess4_0E0EB4X_(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(16) null, i32 noundef %i.bc, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2)
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE7reverseCs6oosyzwIepl_6ide_db.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE7reverseCs6oosyzwIepl_6ide_db.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdEECs6oosyzwIepl_6ide_db.exit.i.i, %bb.a, %bb.m, %bb.n
  ret void

.lr.ph.preheader.i.i:                             ; preds = %bb.m
  %i.bd = lshr i64 %1, 1
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdEECs6oosyzwIepl_6ide_db.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.bj, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdEECs6oosyzwIepl_6ide_db.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.bf = xor i64 %.sroa.0.017.i.i, -1
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.017.i.i
  %i.bh = getelementptr [16 x i8], ptr %i.be, i64 %i.bf
  invoke void @_RINvNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs6oosyzwIepl_6ide_db(ptr noundef nonnull %i.bg, ptr noundef nonnull %i.bh, i64 noundef 2)
          to label %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdEECs6oosyzwIepl_6ide_db.exit.i.i unwind label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking19panic_cannot_unwind() #32
  unreachable

_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdEECs6oosyzwIepl_6ide_db.exit.i.i: ; preds = %.lr.ph.i.i
  %i.bj = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bj, %i.bd
  br i1 %exitcond.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE7reverseCs6oosyzwIepl_6ide_db.exit, label %.lr.ph.i.i
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable7ipnsortNtCs42xZ1oUXfIG_8smol_str7SmolStrNvYBT_NtNtB8_3cmp10PartialOrd2ltECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCs42xZ1oUXfIG_8smol_str7SmolStr7reverseCs6oosyzwIepl_6ide_db.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = tail call noundef i8 @_RNvXsd_Cs42xZ1oUXfIG_8smol_strNtB5_7SmolStrNtNtCshzWfHUSfYae_4core3cmp10PartialOrd11partial_cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) ; 2 uses
  %.not.i.i = icmp ne i8 %i.c, -2
  %i.d = icmp slt i8 %i.c, 0
  %.sroa.0.0.i.i = and i1 %.not.i.i, %i.d         ; 2 uses
  %.not21 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %.sroa.0.0.i.i, label %.preheader, label %.preheader11

.preheader11:                                     ; preds = %bb.b
  br i1 %.not21, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCs42xZ1oUXfIG_8smol_str7SmolStrNvYB12_NtNtB8_3cmp10PartialOrd2ltECs6oosyzwIepl_6ide_db.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not21, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCs42xZ1oUXfIG_8smol_str7SmolStrNvYB12_NtNtB8_3cmp10PartialOrd2ltECs6oosyzwIepl_6ide_db.exit, label %.lr.ph17

.lr.ph:                                           ; preds = %.preheader11, %bb.c
  %.sroa.01.0.i13 = phi i64 [ %i.j, %bb.c ], [ 2, %.preheader11 ] ; 4 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i13
  %i.f = getelementptr [24 x i8], ptr %0, i64 %.sroa.01.0.i13
  %i.g = getelementptr i8, ptr %i.f, i64 -24
  %i.h = tail call noundef i8 @_RNvXsd_Cs42xZ1oUXfIG_8smol_strNtB5_7SmolStrNtNtCshzWfHUSfYae_4core3cmp10PartialOrd11partial_cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g) ; 2 uses
  %.not.i.i2 = icmp ne i8 %i.h, -2
  %i.i = icmp slt i8 %i.h, 0
  %.sroa.0.0.i.i3 = and i1 %.not.i.i2, %i.i
  br i1 %.sroa.0.0.i.i3, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCs42xZ1oUXfIG_8smol_str7SmolStrNvYB12_NtNtB8_3cmp10PartialOrd2ltECs6oosyzwIepl_6ide_db.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.j = add nuw nsw i64 %.sroa.01.0.i13, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCs42xZ1oUXfIG_8smol_str7SmolStrNvYB12_NtNtB8_3cmp10PartialOrd2ltECs6oosyzwIepl_6ide_db.exit.thread, label %.lr.ph

.lr.ph17:                                         ; preds = %.preheader, %bb.d
  %.sroa.01.1.i16 = phi i64 [ %i.p, %bb.d ], [ 2, %.preheader ] ; 4 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.1.i16
  %i.l = getelementptr [24 x i8], ptr %0, i64 %.sroa.01.1.i16
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = tail call noundef i8 @_RNvXsd_Cs42xZ1oUXfIG_8smol_strNtB5_7SmolStrNtNtCshzWfHUSfYae_4core3cmp10PartialOrd11partial_cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m) ; 2 uses
  %.not.i.i4 = icmp ne i8 %i.n, -2
  %i.o = icmp slt i8 %i.n, 0
  %.sroa.0.0.i.i5 = and i1 %.not.i.i4, %i.o
  br i1 %.sroa.0.0.i.i5, label %bb.d, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCs42xZ1oUXfIG_8smol_str7SmolStrNvYB12_NtNtB8_3cmp10PartialOrd2ltECs6oosyzwIepl_6ide_db.exit

bb.d:                                             ; preds = %.lr.ph17
  %i.p = add nuw nsw i64 %.sroa.01.1.i16, 1       ; 2 uses
  %exitcond24.not = icmp eq i64 %i.p, %1
  br i1 %exitcond24.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCs42xZ1oUXfIG_8smol_str7SmolStrNvYB12_NtNtB8_3cmp10PartialOrd2ltECs6oosyzwIepl_6ide_db.exit.thread, label %.lr.ph17

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCs42xZ1oUXfIG_8smol_str7SmolStrNvYB12_NtNtB8_3cmp10PartialOrd2ltECs6oosyzwIepl_6ide_db.exit: ; preds = %.lr.ph, %.lr.ph17, %.preheader11, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader11 ], [ 2, %.preheader ], [ %.sroa.01.1.i16, %.lr.ph17 ], [ %.sroa.01.0.i13, %.lr.ph ] ; 2 uses
  %i.q = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.q)
  %i.r = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.r, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCs42xZ1oUXfIG_8smol_str7SmolStrNvYB12_NtNtB8_3cmp10PartialOrd2ltECs6oosyzwIepl_6ide_db.exit.thread, label %bb.e

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCs42xZ1oUXfIG_8smol_str7SmolStrNvYB12_NtNtB8_3cmp10PartialOrd2ltECs6oosyzwIepl_6ide_db.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCs42xZ1oUXfIG_8smol_str7SmolStrNvYB12_NtNtB8_3cmp10PartialOrd2ltECs6oosyzwIepl_6ide_db.exit
  br i1 %.sroa.0.0.i.i, label %.lr.ph.preheader.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCs42xZ1oUXfIG_8smol_str7SmolStr7reverseCs6oosyzwIepl_6ide_db.exit

bb.e:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCs42xZ1oUXfIG_8smol_str7SmolStrNvYB12_NtNtB8_3cmp10PartialOrd2ltECs6oosyzwIepl_6ide_db.exit
  %i.s = or i64 %1, 1
  %i.t = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.s, i1 true)
  %i.u = trunc nuw nsw i64 %i.t to i32
  %i.v = shl nuw nsw i32 %i.u, 1
  %i.w = xor i32 %i.v, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable9quicksort9quicksortNtCs42xZ1oUXfIG_8smol_str7SmolStrNvYB17_NtNtBa_3cmp10PartialOrd2ltECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, i32 noundef %i.w, ptr noalias nofree noundef nonnull %2)
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCs42xZ1oUXfIG_8smol_str7SmolStr7reverseCs6oosyzwIepl_6ide_db.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSNtCs42xZ1oUXfIG_8smol_str7SmolStr7reverseCs6oosyzwIepl_6ide_db.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtCs42xZ1oUXfIG_8smol_str7SmolStrECs6oosyzwIepl_6ide_db.exit.i.i, %bb.a, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCs42xZ1oUXfIG_8smol_str7SmolStrNvYB12_NtNtB8_3cmp10PartialOrd2ltECs6oosyzwIepl_6ide_db.exit.thread, %bb.e
  ret void

.lr.ph.preheader.i.i:                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCs42xZ1oUXfIG_8smol_str7SmolStrNvYB12_NtNtB8_3cmp10PartialOrd2ltECs6oosyzwIepl_6ide_db.exit.thread
  %i.x = lshr i64 %1, 1
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtCs42xZ1oUXfIG_8smol_str7SmolStrECs6oosyzwIepl_6ide_db.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.ad, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtCs42xZ1oUXfIG_8smol_str7SmolStrECs6oosyzwIepl_6ide_db.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.z = xor i64 %.sroa.0.017.i.i, -1
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.0.017.i.i
  %i.ab = getelementptr [24 x i8], ptr %i.y, i64 %i.z
  invoke void @_RINvNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs6oosyzwIepl_6ide_db(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ab, i64 noundef 3)
          to label %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtCs42xZ1oUXfIG_8smol_str7SmolStrECs6oosyzwIepl_6ide_db.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking19panic_cannot_unwind() #32
  unreachable

_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtCs42xZ1oUXfIG_8smol_str7SmolStrECs6oosyzwIepl_6ide_db.exit.i.i: ; preds = %.lr.ph.i.i
  %i.ad = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ad, %i.x
  br i1 %exitcond.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCs42xZ1oUXfIG_8smol_str7SmolStr7reverseCs6oosyzwIepl_6ide_db.exit, label %.lr.ph.i.i
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable7ipnsortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMB6_SBT_16sort_unstable_byNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports12use_tree_cmpE0EB2p_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2) unnamed_addr #2 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree7reverseCs6oosyzwIepl_6ide_db.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = tail call noundef range(i8 -1, 2) i8 @_RNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports12use_tree_cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
  %i.d = icmp eq i8 %i.c, -1                      ; 2 uses
  %.not16 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.d, label %.preheader, label %.preheader6

.preheader6:                                      ; preds = %bb.b
  br i1 %.not16, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMB6_SB12_16sort_unstable_byNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports12use_tree_cmpE0EB2z_.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not16, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMB6_SB12_16sort_unstable_byNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports12use_tree_cmpE0EB2z_.exit, label %.lr.ph12

.lr.ph:                                           ; preds = %.preheader6, %bb.c
  %.sroa.01.0.i8 = phi i64 [ %i.j, %bb.c ], [ 2, %.preheader6 ] ; 4 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i8
  %i.f = getelementptr [8 x i8], ptr %0, i64 %.sroa.01.0.i8
  %i.g = getelementptr i8, ptr %i.f, i64 -8
  %i.h = tail call noundef range(i8 -1, 2) i8 @_RNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports12use_tree_cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g)
  %i.i = icmp eq i8 %i.h, -1
  br i1 %i.i, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMB6_SB12_16sort_unstable_byNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports12use_tree_cmpE0EB2z_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.j = add nuw nsw i64 %.sroa.01.0.i8, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMB6_SB12_16sort_unstable_byNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports12use_tree_cmpE0EB2z_.exit.thread, label %.lr.ph

.lr.ph12:                                         ; preds = %.preheader, %bb.d
  %.sroa.01.1.i11 = phi i64 [ %i.p, %bb.d ], [ 2, %.preheader ] ; 4 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.1.i11
  %i.l = getelementptr [8 x i8], ptr %0, i64 %.sroa.01.1.i11
  %i.m = getelementptr i8, ptr %i.l, i64 -8
  %i.n = tail call noundef range(i8 -1, 2) i8 @_RNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports12use_tree_cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.m)
  %i.o = icmp eq i8 %i.n, -1
  br i1 %i.o, label %bb.d, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMB6_SB12_16sort_unstable_byNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports12use_tree_cmpE0EB2z_.exit

bb.d:                                             ; preds = %.lr.ph12
  %i.p = add nuw nsw i64 %.sroa.01.1.i11, 1       ; 2 uses
  %exitcond19.not = icmp eq i64 %i.p, %1
  br i1 %exitcond19.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMB6_SB12_16sort_unstable_byNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports12use_tree_cmpE0EB2z_.exit.thread, label %.lr.ph12

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMB6_SB12_16sort_unstable_byNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports12use_tree_cmpE0EB2z_.exit: ; preds = %.lr.ph, %.lr.ph12, %.preheader6, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader6 ], [ 2, %.preheader ], [ %.sroa.01.1.i11, %.lr.ph12 ], [ %.sroa.01.0.i8, %.lr.ph ] ; 2 uses
  %i.q = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.q)
  %i.r = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.r, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMB6_SB12_16sort_unstable_byNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports12use_tree_cmpE0EB2z_.exit.thread, label %bb.e

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMB6_SB12_16sort_unstable_byNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports12use_tree_cmpE0EB2z_.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMB6_SB12_16sort_unstable_byNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports12use_tree_cmpE0EB2z_.exit
  br i1 %i.d, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree12split_at_mutCs6oosyzwIepl_6ide_db.exit11.preheader.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree7reverseCs6oosyzwIepl_6ide_db.exit

bb.e:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMB6_SB12_16sort_unstable_byNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports12use_tree_cmpE0EB2z_.exit
  %i.s = or i64 %1, 1
  %i.t = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.s, i1 true)
  %i.u = trunc nuw nsw i64 %i.t to i32
  %i.v = shl nuw nsw i32 %i.u, 1
  %i.w = xor i32 %i.v, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable9quicksort9quicksortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMB8_SB17_16sort_unstable_byNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports12use_tree_cmpE0EB2E_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, i32 noundef %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2)
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree7reverseCs6oosyzwIepl_6ide_db.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree7reverseCs6oosyzwIepl_6ide_db.exit: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree12split_at_mutCs6oosyzwIepl_6ide_db.exit11.i.i, %middle.block, %bb.a, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMB6_SB12_16sort_unstable_byNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports12use_tree_cmpE0EB2z_.exit.thread, %bb.e
  ret void

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree12split_at_mutCs6oosyzwIepl_6ide_db.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMB6_SB12_16sort_unstable_byNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports12use_tree_cmpE0EB2z_.exit.thread
  %i.x = lshr i64 %1, 1                           ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203)
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %1, 8
  br i1 %min.iters.check, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree12split_at_mutCs6oosyzwIepl_6ide_db.exit11.i.i.preheader, label %vector.ph
end_hunk_0
