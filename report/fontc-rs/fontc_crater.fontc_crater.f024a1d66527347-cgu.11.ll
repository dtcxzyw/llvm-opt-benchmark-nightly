Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontc_crater.fontc_crater.f024a1d66527347-cgu.11?download=true
inline.NumInlined: 625
inline.NumDeleted: 337
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXs4_NtNtCsimRn6g4KI1Q_5rayon4iter3mapINtB5_11MapConsumerINtNtNtB7_7collect8consumer15CollectConsumerTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1I_9RunResultNtNtB1I_15ttx_diff_runner10DiffOutputNtB2H_9DiffErrorEEENCNCINvB1I_7run_allB2F_B3g_NtB2H_10TtxContextNvB2H_12run_ttx_diffE00EINtNtB7_8plumbing8ConsumerB1E_E11into_folderB1I_:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.c = load <2 x ptr>, ptr %1, align 8
  store <2 x ptr> %i.c, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtCsimRn6g4KI1Q_5rayon4iter3mapINtB5_11MapConsumerINtNtNtB7_7collect8consumer15CollectConsumerTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1I_9RunResultNtNtB1I_15ttx_diff_runner10DiffOutputNtB2H_9DiffErrorEEENCNCINvB1I_7run_allB2F_B3g_NtB2H_10TtxContextNvB2H_12run_ttx_diffE00EINtNtB7_8plumbing8ConsumerB1E_E4fullB1I_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #9 {
bb.a:
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtNtCsimRn6g4KI1Q_5rayon4iter3mapINtB5_11MapConsumerINtNtNtB7_7collect8consumer15CollectConsumerTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1I_9RunResultNtNtB1I_15ttx_diff_runner10DiffOutputNtB2H_9DiffErrorEEENCNCINvB1I_7run_allB2F_B3g_NtB2H_10TtxContextNvB2H_12run_ttx_diffE00EINtNtB7_8plumbing8ConsumerB1E_E8split_atB1I_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !5
  call void @_RNvXs3_NtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumerINtB5_15CollectConsumerTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1j_9RunResultNtNtB1j_15ttx_diff_runner10DiffOutputNtB2i_9DiffErrorEEEINtNtB9_8plumbing8ConsumerB1e_E8split_atB1j_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noundef %i.c, i64 noundef %i.e, i64 noundef %2)
  %i.f = load ptr, ptr %i.a, align 8, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.l = load i64, ptr %i.k, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.m = load ptr, ptr %1, align 8, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  store ptr %i.m, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.h, ptr %.sroa.5.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.m, ptr %i.n, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.j, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.l, ptr %.sroa.53.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXs4_NtNtCsimRn6g4KI1Q_5rayon4iter3mapINtB5_11MapConsumerNtNtB7_6extend15ListVecConsumerNCNCINvCs1hTjP0dFAwJ_12fontc_crater7run_allNtNtB1x_15ttx_diff_runner10DiffOutputNtB29_9DiffErrorNtB29_10TtxContextNvB29_12run_ttx_diffE00EINtNtB7_8plumbing8ConsumerNtNtB1x_6target6TargetE11into_folderB1x_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) unnamed_addr #10 {
bb.a:
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtCsimRn6g4KI1Q_5rayon4iter3mapINtB5_11MapConsumerNtNtB7_6extend15ListVecConsumerNCNCINvCs1hTjP0dFAwJ_12fontc_crater7run_allNtNtB1x_15ttx_diff_runner10DiffOutputNtB29_9DiffErrorNtB29_10TtxContextNvB29_12run_ttx_diffE00EINtNtB7_8plumbing8ConsumerNtNtB1x_6target6TargetE4fullB1x_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #9 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvXs4_NtNtCsimRn6g4KI1Q_5rayon4iter3mapINtB5_11MapConsumerNtNtB7_6extend15ListVecConsumerNCNCINvCs1hTjP0dFAwJ_12fontc_crater7run_allNtNtB1x_15ttx_diff_runner10DiffOutputNtB29_9DiffErrorNtB29_10TtxContextNvB29_12run_ttx_diffE00EINtNtB7_8plumbing8ConsumerNtNtB1x_6target6TargetE8split_atB1x_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #9 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %0, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtNtCsimRn6g4KI1Q_5rayon4iter3mapINtB5_9MapFolderINtNtB7_6extend13ListVecFolderTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1r_9RunResultNtNtB1r_15ttx_diff_runner10DiffOutputNtB2q_9DiffErrorEEENCNCINvB1r_7run_allB2o_B2Z_NtB2q_10TtxContextNvB2q_12run_ttx_diffE00EINtNtB7_8plumbing6FolderB1n_E8completeB1r_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RNvXs0_NtNtCsimRn6g4KI1Q_5rayon4iter6extendINtB5_13ListVecFolderTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB15_9RunResultNtNtB15_15ttx_diff_runner10DiffOutputNtB24_9DiffErrorEEEINtNtB7_8plumbing6FolderB10_E8completeB15_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs6_NtNtCsimRn6g4KI1Q_5rayon4iter3mapINtB5_9MapFolderINtNtNtB7_7collect8consumer13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1D_9RunResultNtNtB1D_15ttx_diff_runner10DiffOutputNtB2C_9DiffErrorEEENCNCINvB1D_7run_allB2A_B3b_NtB2C_10TtxContextNvB2C_12run_ttx_diffE00EINtNtB7_8plumbing6FolderB1z_E8completeB1D_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1w_9RunResultNtNtB1w_15ttx_diff_runner10DiffOutputNtB2v_9DiffErrorEEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1w_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  %.not20 = icmp eq ptr %.promoted, null
  br i1 %.not20, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtB12_11collections11linked_list4NodeINtNtB12_3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB2y_9RunResultNtNtB2y_15ttx_diff_runner10DiffOutputNtB3x_9DiffErrorEEEERNtNtB12_5alloc6GlobalEEEB2y_.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.promoted19 = load i64, ptr %i.b, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %i.c = phi ptr [ %i.f, %bb.h ], [ %.promoted, %.lr.ph.preheader ] ; 6 uses
  %i.d = phi i64 [ %i.h, %bb.h ], [ %.promoted19, %.lr.ph.preheader ]
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !5 ; 4 uses
  store ptr %i.f, ptr %0, align 8
  %.not3 = icmp eq ptr %i.f, null                 ; 2 uses
  br i1 %.not3, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %i.g, align 8
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  store ptr null, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.h = add i64 %i.d, -1                         ; 2 uses
  store i64 %i.h, ptr %i.b, align 8
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtBK_9RunResultNtNtBK_15ttx_diff_runner10DiffOutputNtB1I_9DiffErrorEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1d_9RunResultNtNtB1d_15ttx_diff_runner10DiffOutputNtB2c_9DiffErrorEEEEB1d_.exit.i.i.i8 unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtBR_9RunResultNtNtBR_15ttx_diff_runner10DiffOutputNtB1P_9DiffErrorEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1d_9RunResultNtNtB1d_15ttx_diff_runner10DiffOutputNtB2c_9DiffErrorEEEEB1d_.exit.i.i.i8: ; preds = %bb.d
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtBR_9RunResultNtNtBR_15ttx_diff_runner10DiffOutputNtB1P_9DiffErrorEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1d_9RunResultNtNtB1d_15ttx_diff_runner10DiffOutputNtB2c_9DiffErrorEEEEB1d_.exit.i.i.i8
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.e
  %eh.lpad-body.i.i7 = phi { ptr, i32 } [ %i.k, %bb.g ], [ %i.i, %bb.e ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef 40, i64 noundef 8) #34
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtBK_10LinkedListppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtNtBO_3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB2Q_9RunResultNtNtB2Q_15ttx_diff_runner10DiffOutputNtB3P_9DiffErrorEEENtNtBO_5alloc6GlobalEEB2Q_(ptr nonnull %0) #30
          to label %bb.j unwind label %bb.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtB12_11collections11linked_list4NodeINtNtB12_3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB2y_9RunResultNtNtB2y_15ttx_diff_runner10DiffOutputNtB3x_9DiffErrorEEEERNtNtB12_5alloc6GlobalEEEB2y_.exit: ; preds = %bb.h, %bb.a
  ret void

bb.h:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1d_9RunResultNtNtB1d_15ttx_diff_runner10DiffOutputNtB2c_9DiffErrorEEEEB1d_.exit.i.i.i8
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef 40, i64 noundef 8) #34
  br i1 %.not3, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtB12_11collections11linked_list4NodeINtNtB12_3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB2y_9RunResultNtNtB2y_15ttx_diff_runner10DiffOutputNtB3x_9DiffErrorEEEERNtNtB12_5alloc6GlobalEEEB2y_.exit, label %.lr.ph

bb.i:                                             ; preds = %.body
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.j:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body.i.i7
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs9_NtCsimRn6g4KI1Q_5rayon3vecINtB5_13DrainProducerNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetENtNtNtB7_4iter8plumbing8Producer8split_atBU_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.a, align 8
  store i64 0, ptr %i.b, align 8
  %.not.i = icmp ugt i64 %3, %2
  br i1 %.not.i, label %bb.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsimRn6g4KI1Q_5rayon3vec13DrainProducerNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetEEB1n_.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @51, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #36
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsimRn6g4KI1Q_5rayon3vec13DrainProducerNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetEEB1n_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a) #30
          to label %common.resume unwind label %bb.d

common.resume:                                    ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsimRn6g4KI1Q_5rayon3vec13DrainProducerNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetEEB1n_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw [104 x i8], ptr %1, i64 %3
  %i.e = sub nuw nsw i64 %2, %3
  store ptr %1, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.e, ptr %i.h, align 8
  ret void

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtNtCsf3Ta7LF998c_4core3str5errorNtB5_9Utf8ErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @79, i64 noundef 9, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 11, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @77, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @78)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCsf3Ta7LF998c_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXs6_NtNtCsf3Ta7LF998c_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXs8_NtNtCsf3Ta7LF998c_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs7N5MyPZKytm_10serde_core2deINtNvXNvCs1hTjP0dFAwJ_12fontc_craters_1__INtBH_7ResultsppENtB4_11Deserialize11deserialize9___VisitorNtNtBH_15ttx_diff_runner10DiffOutputNtB2d_9DiffErrorENtB4_8Expected3fmtBH_(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 14)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsRNCNCINvCs1hTjP0dFAwJ_12fontc_crater7run_allNtNtBU_15ttx_diff_runner10DiffOutputNtB1w_9DiffErrorNtB1w_10TtxContextNvB1w_12run_ttx_diffE00INtB6_5FnMutTNtNtBU_6target6TargetEE8call_mutBU_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([200 x i8]) align 8 captures(none) dereferenceable(200) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(104) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [96 x i8], align 8                ; 16 uses
  %i.c = alloca [96 x i8], align 8                ; 16 uses
  %i.d = alloca [48 x i8], align 8                ; 9 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [96 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [48 x i8], align 8                ; 9 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [104 x i8], align 8               ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.k, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 104, i1 false)
  %i.l = load ptr, ptr %1, align 8, !nonnull !5, !align !8, !noundef !5 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1367)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1369)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1370
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !1368, !noalias !1371, !nonnull !5, !align !8, !noundef !5
  %i.n = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !noalias !1370
  %i.o = add i64 %i.n, 1
  store i64 %i.o, ptr %i.j, align 8, !noalias !1370
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !1368, !noalias !1371, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  %i.r = atomicrmw add ptr %i.q, i64 1 monotonic, align 8, !noalias !1370 ; 0 uses
  %i.s = load atomic i64, ptr @_RNvCsksibNCz2yVN_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !1370 ; 2 uses
  %i.t = icmp ult i64 %i.s, 6
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp samesign ugt i64 %i.s, 3
  br i1 %i.u, label %bb.d, label %bb.e

bb.b:                                             ; preds = %bb.h, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.an, %bb.h ], [ %i.v, %bb.c ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.k) #30
          to label %bb.m unwind label %bb.l, !noalias !1372

bb.c:                                             ; preds = %bb.g, %bb.e, %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !1368, !noalias !1371, !nonnull !5, !align !8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1370
  store ptr %i.k, ptr %i.i, align 8, !noalias !1370
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1_NtCs1hTjP0dFAwJ_12fontc_crater6targetNtB5_6TargetNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1370
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.j, ptr %i.y, align 8, !noalias !1370
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !1370
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.x, ptr %i.z, align 8, !noalias !1370
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !1370
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1373
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 4, ptr %i.aa, align 8, !noalias !1373
  %.sroa.422.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr @18, ptr %.sroa.422.0..sroa_idx.i.i.i, align 8, !noalias !1373
  %.sroa.523.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 12, ptr %.sroa.523.0..sroa_idx.i.i.i, align 8, !noalias !1373
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store ptr @17, ptr %i.ab, align 8, !noalias !1373
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store ptr %i.i, ptr %i.ac, align 8, !noalias !1373
  store i64 0, ptr %i.c, align 8, !noalias !1373
  %.sroa.428.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @18, ptr %.sroa.428.0..sroa_idx.i.i.i, align 8, !noalias !1373
  %.sroa.529.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 12, ptr %.sroa.529.0..sroa_idx.i.i.i, align 8, !noalias !1373
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %i.ad, align 8, !noalias !1373
  %.sroa.434.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr @0, ptr %.sroa.434.0..sroa_idx.i.i.i, align 8, !noalias !1373
  %.sroa.535.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 24, ptr %.sroa.535.0..sroa_idx.i.i.i, align 8, !noalias !1373
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i32 1, ptr %i.ae, align 8, !noalias !1373
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  store i32 75, ptr %i.af, align 4, !noalias !1373
  invoke void @_RNvXs0_NtCsksibNCz2yVN_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.c)
          to label %bb.f unwind label %bb.c, !noalias !1372

bb.e:                                             ; preds = %bb.f, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1370
  %i.ag = invoke { i64, i32 } @_RNvMNtCs5Xr050g3D4S_3std4timeNtB2_7Instant3now()
          to label %bb.g unwind label %bb.c, !noalias !1372 ; 2 uses

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1373
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1370
  br label %bb.e

bb.g:                                             ; preds = %bb.e
  %i.ah = extractvalue { i64, i32 } %i.ag, 0
  %i.ai = extractvalue { i64, i32 } %i.ag, 1
  store i64 %i.ah, ptr %i.h, align 8, !noalias !1370
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 %i.ai, ptr %i.aj, align 8, !noalias !1370
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1370
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !1368, !noalias !1371, !nonnull !5, !align !8, !noundef !5
  invoke void @_RNvNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner12run_ttx_diff(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.al, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.k)
          to label %_RNvYNvNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner12run_ttx_diffINtNtNtCsf3Ta7LF998c_4core3ops8function2FnTRNtB4_10TtxContextRNtNtB6_6target6TargetEE4callB6_.exit.i unwind label %bb.c, !noalias !1372

_RNvYNvNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner12run_ttx_diffINtNtNtCsf3Ta7LF998c_4core3ops8function2FnTRNtB4_10TtxContextRNtNtB6_6target6TargetEE4callB6_.exit.i: ; preds = %bb.g
  %i.am = invoke { i64, i32 } @_RNvMNtCs5Xr050g3D4S_3std4timeNtB2_7Instant7elapsed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h)
          to label %bb.i unwind label %bb.h, !noalias !1372 ; 2 uses

bb.h:                                             ; preds = %bb.j, %_RNvYNvNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner12run_ttx_diffINtNtNtCsf3Ta7LF998c_4core3ops8function2FnTRNtB4_10TtxContextRNtNtB6_6target6TargetEE4callB6_.exit.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCs1hTjP0dFAwJ_12fontc_crater9RunResultNtNtBE_15ttx_diff_runner10DiffOutputNtB1i_9DiffErrorEEBE_(ptr noalias nofree noundef align 8 dereferenceable(96) %i.g) #30
          to label %bb.b unwind label %bb.l, !noalias !1372

bb.i:                                             ; preds = %_RNvYNvNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner12run_ttx_diffINtNtNtCsf3Ta7LF998c_4core3ops8function2FnTRNtB4_10TtxContextRNtNtB6_6target6TargetEE4callB6_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1370
  %i.ao = atomicrmw sub ptr %i.q, i64 1 monotonic, align 8, !noalias !1372
  store i64 %i.ao, ptr %i.f, align 8, !noalias !1370
  %i.ap = load atomic i64, ptr @_RNvCsksibNCz2yVN_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !1370 ; 2 uses
  %i.aq = icmp ult i64 %i.ap, 6
  call void @llvm.assume(i1 %i.aq)
  %i.ar = icmp samesign ugt i64 %i.ap, 3
  br i1 %i.ar, label %bb.j, label %_RNCNCINvCs1hTjP0dFAwJ_12fontc_crater7run_allNtNtB6_15ttx_diff_runner10DiffOutputNtBI_9DiffErrorNtBI_10TtxContextNvBI_12run_ttx_diffE00B6_.exit

bb.j:                                             ; preds = %bb.i
  %i.as = extractvalue { i64, i32 } %i.am, 1
  %i.at = extractvalue { i64, i32 } %i.am, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1370
  store i64 %i.at, ptr %i.e, align 8, !noalias !1370
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 %i.as, ptr %i.au, align 8, !noalias !1370
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1370
  store ptr %i.k, ptr %i.d, align 8, !noalias !1370
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1_NtCs1hTjP0dFAwJ_12fontc_crater6targetNtB5_6TargetNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !1370
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %i.av, align 8, !noalias !1370
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
end_hunk_0
