Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontc_crater.fontc_crater.f024a1d66527347-cgu.13?download=true
inline.NumInlined: 439
inline.NumDeleted: 278
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_RNvXs10_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_9ValuesMutNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtNtBc_3vec3VecNtNtNtB1d_2ci4html10AnnotationEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB1d_:bb.a
  %.sroa.013.0.i.i.4 = load ptr, ptr %i.w, align 8, !noalias !775, !nonnull !5, !noundef !5
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.4, i64 1424
  %.sroa.013.0.i.i.5 = load ptr, ptr %i.x, align 8, !noalias !775, !nonnull !5, !noundef !5
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.5, i64 1424
  %.sroa.013.0.i.i.6 = load ptr, ptr %i.y, align 8, !noalias !775, !nonnull !5, !noundef !5
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.6, i64 1424
  %i.aa = add i64 %.sroa.011.016.i.i, -8          ; 2 uses
  %.sroa.013.0.i.i.7 = load ptr, ptr %i.z, align 8, !noalias !775, !nonnull !5, !noundef !5 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %._crit_edge.i.i, label %.lr.ph.i.i

_RNvMsc_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker6ValMutNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtNtBb_3vec3VecNtNtNtB1O_2ci4html10AnnotationEE10init_frontB1O_.exit.i: ; preds = %._crit_edge.i.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !776
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.55.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !777
  invoke void @_RNvMsh_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker6ValMutNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtNtBb_3vec3VecNtNtNtB1W_2ci4html10AnnotationENtB1y_4LeafENtB1y_4EdgeE7next_kvB1W_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j)
          to label %.noexc.i.i unwind label %bb.g, !noalias !778

.noexc.i.i:                                       ; preds = %_RNvMsc_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker6ValMutNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtNtBb_3vec3VecNtNtNtB1O_2ci4html10AnnotationEE10init_frontB1O_.exit.i
  %i.ac = load ptr, ptr %i.b, align 8, !noalias !777, !noundef !5 ; 3 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.e, label %bb.f, !prof !10

bb.e:                                             ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !777
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #17
          to label %.noexc1.i.i unwind label %bb.g, !noalias !776

.noexc1.i.i:                                      ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %.noexc.i.i
  %.sroa.49.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.55.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.49.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !777
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !777
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !777
  store ptr %i.ac, ptr %i.a, align 8, !noalias !777
  %.sroa.55.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.55.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.55.i.i.i, i64 16, i1 false), !noalias !777
  invoke void @_RNvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker6ValMutNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtNtBb_3vec3VecNtNtNtB1W_2ci4html10AnnotationENtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeB1W_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvMsa_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker6ValMutNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtNtBb_3vec3VecNtNtNtB1O_2ci4html10AnnotationEE14next_uncheckedB1O_.exit unwind label %bb.g, !noalias !776

bb.g:                                             ; preds = %bb.f, %bb.e, %_RNvMsc_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker6ValMutNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtNtBb_3vec3VecNtNtNtB1O_2ci4html10AnnotationEE10init_frontB1O_.exit.i
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

.critedge.i:                                      ; preds = %bb.b
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #17, !noalias !773
  unreachable

_RNvMsa_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker6ValMutNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtNtBb_3vec3VecNtNtNtB1O_2ci4html10AnnotationEE14next_uncheckedB1O_.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !777
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.55.i.i.i, i64 16, i1 false), !noalias !779
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.55.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !778
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !780
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !780
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !776
  %i.af = tail call { ptr, ptr } @_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker6ValMutNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtNtBb_3vec3VecNtNtNtB1w_2ci4html10AnnotationENtB19_14LeafOrInternalE19into_key_val_mut_atB1w_(ptr noundef nonnull %i.ac, i64 noundef %.sroa.4.0.copyload.i, i64 noundef %.sroa.5.0.copyload.i), !noalias !773
  %i.ag = extractvalue { ptr, ptr } %i.af, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_RNvMsa_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker6ValMutNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtNtBb_3vec3VecNtNtNtB1O_2ci4html10AnnotationEE14next_uncheckedB1O_.exit
  %.sroa.0.0 = phi ptr [ %i.ag, %_RNvMsa_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker6ValMutNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtNtBb_3vec3VecNtNtNtB1O_2ci4html10AnnotationEE14next_uncheckedB1O_.exit ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %.val = load i8, ptr %i.a, align 1, !range !781, !noundef !5 ; 2 uses
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs1hTjP0dFAwJ_12fontc_crater, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs1hTjP0dFAwJ_12fontc_crater.65, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumerINtB5_13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1h_9RunResultNtNtB1h_15ttx_diff_runner10DiffOutputNtB2g_9DiffErrorEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1h_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !5   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 4 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtBH_9RunResultNtNtBH_15ttx_diff_runner10DiffOutputNtB1F_9DiffErrorEEEBH_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtBG_9RunResultNtNtBG_15ttx_diff_runner10DiffOutputNtB1E_9DiffErrorEEEBG_.exit.i
  %.sroa.0.011.i = phi i64 [ %i.f, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtBG_9RunResultNtNtBG_15ttx_diff_runner10DiffOutputNtB1E_9DiffErrorEEEBG_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [200 x i8], ptr %i.a, i64 %.sroa.0.011.i ; 5 uses
  %i.f = add nuw nsw i64 %.sroa.0.011.i, 1        ; 4 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.e)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCs1hTjP0dFAwJ_12fontc_crater9RunResultNtNtBE_15ttx_diff_runner10DiffOutputNtB1i_9DiffErrorEEBE_(ptr noalias nofree noundef align 8 dereferenceable(96) %i.h) #15
          to label %.body.i unwind label %bb.g

bb.c:                                             ; preds = %.lr.ph.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !range !7, !alias.scope !790, !noundef !5
  %i.k = icmp eq i64 %i.j, -3
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.m = load i64, ptr %i.l, align 8, !range !6, !alias.scope !791, !noundef !5
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtBG_9RunResultNtNtBG_15ttx_diff_runner10DiffOutputNtB1E_9DiffErrorEEEBG_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtBG_9RunResultNtNtBG_15ttx_diff_runner10DiffOutputNtB1E_9DiffErrorEEEBG_.exit.i unwind label %bb.i

bb.f:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.i)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtBG_9RunResultNtNtBG_15ttx_diff_runner10DiffOutputNtB1E_9DiffErrorEEEBG_.exit.i unwind label %bb.i

bb.g:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtBG_9RunResultNtNtBG_15ttx_diff_runner10DiffOutputNtB1E_9DiffErrorEEEBG_.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.q = icmp eq i64 %i.f, %i.c
  br i1 %i.q, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtBH_9RunResultNtNtBH_15ttx_diff_runner10DiffOutputNtB1F_9DiffErrorEEEBH_.exit, label %.lr.ph.i

bb.h:                                             ; preds = %.lr.ph
  %i.r = add i64 %.sroa.0.1.i22, 1                ; 2 uses
  %i.s = icmp eq i64 %i.r, %i.c
  br i1 %i.s, label %._crit_edge, label %.lr.ph

bb.i:                                             ; preds = %bb.f, %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.i, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.t, %bb.i ], [ %i.g, %bb.b ]
  %i.u = icmp eq i64 %i.f, %i.c
  br i1 %i.u, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i, %bb.h
  %.sroa.0.1.i22 = phi i64 [ %i.r, %bb.h ], [ %i.f, %.body.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw [200 x i8], ptr %i.a, i64 %.sroa.0.1.i22
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtBG_9RunResultNtNtBG_15ttx_diff_runner10DiffOutputNtB1E_9DiffErrorEEEBG_(ptr noalias nofree noundef align 8 dereferenceable(200) %i.v) #15
          to label %bb.h unwind label %bb.j

._crit_edge:                                      ; preds = %bb.h, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

bb.j:                                             ; preds = %.lr.ph
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtBH_9RunResultNtNtBH_15ttx_diff_runner10DiffOutputNtB1F_9DiffErrorEEEBH_.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtBG_9RunResultNtNtBG_15ttx_diff_runner10DiffOutputNtB1E_9DiffErrorEEEBG_.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs3_NtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumerINtB5_15CollectConsumerTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1j_9RunResultNtNtB1j_15ttx_diff_runner10DiffOutputNtB2i_9DiffErrorEEEINtNtB9_8plumbing8ConsumerB1e_E8split_atB1j_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %.not = icmp ugt i64 %3, %2
  br i1 %.not, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw [200 x i8], ptr %1, i64 %3
  %i.b = sub nuw i64 %2, %3
  store ptr %1, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.b, ptr %i.e, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB21_9RunResultNtNtB21_15ttx_diff_runner10DiffOutputNtB30_9DiffErrorEEEE6reduceB21_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw [200 x i8], ptr %i.a, i64 %i.c
  %i.e = load ptr, ptr %2, align 8, !noundef !5
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  tail call void @_RNvXs2_NtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumerINtB5_13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1h_9RunResultNtNtB1h_15ttx_diff_runner10DiffOutputNtB2g_9DiffErrorEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1h_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %2)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumer13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1K_9RunResultNtNtB1K_15ttx_diff_runner10DiffOutputNtB2J_9DiffErrorEEEEB1K_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumer13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1K_9RunResultNtNtB1K_15ttx_diff_runner10DiffOutputNtB2J_9DiffErrorEEEEB1K_.exit: ; preds = %bb.b, %bb.c
  ret void

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !5
  %i.k = add i64 %i.j, %i.h
  store i64 %i.k, ptr %i.i, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.45.0.copyload = load i64, ptr %.sroa.45.0..sroa_idx, align 8
  %3 = add i64 %.sroa.45.0.copyload, %i.c
  store i64 %3, ptr %i.b, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsimRn6g4KI1Q_5rayon4iter7collect8consumer13CollectResultTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1K_9RunResultNtNtB1K_15ttx_diff_runner10DiffOutputNtB2J_9DiffErrorEEEEB1K_.exit
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, float } @_RNvXsA_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8IntoIterRNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetfENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB1c_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  call fastcc void @_RNvMsz_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8IntoIterRNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetfE10dying_nextB1c_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef align 8 dereferenceable(72) %0)
  %i.b = load ptr, ptr %i.a, align 8, !noundef !5
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call { ptr, float } @_RNvMsT_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingRNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetfNtB1m_14LeafOrInternalENtB1m_2KVE12into_key_valB1J_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a) ; 2 uses
  %i.d = extractvalue { ptr, float } %i.c, 0
  %i.e = extractvalue { ptr, float } %i.c, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi float [ %i.e, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  %i.f = insertvalue { ptr, float } poison, ptr %.sroa.0.0, 0
  %i.g = insertvalue { ptr, float } %i.f, float %.sroa.3.0, 1
  ret { ptr, float } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvXsA_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8IntoIterRRNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtB7_7set_val9SetValZSTENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB1d_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  call fastcc void @_RNvMsz_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8IntoIterRRNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtB7_7set_val9SetValZSTE10dying_nextB1d_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef align 8 dereferenceable(72) %0)
  %i.b = load ptr, ptr %i.a, align 8, !noundef !5
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call noundef nonnull align 8 ptr @_RNvMsT_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingRRNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtB7_7set_val9SetValZSTNtB1m_14LeafOrInternalENtB1m_2KVE12into_key_valB1K_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXsA_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8IntoIterReNtNtB7_7set_val9SetValZSTENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  call fastcc void @_RNvMsz_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8IntoIterReNtNtB7_7set_val9SetValZSTE10dying_nextCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef align 8 dereferenceable(72) %0)
  %i.b = load ptr, ptr %i.a, align 8, !noundef !5
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call { ptr, i64 } @_RNvMsT_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingReNtNtB7_7set_val9SetValZSTNtB1m_14LeafOrInternalENtB1m_2KVE12into_key_valCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a) ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0
  %i.e = extractvalue { ptr, i64 } %i.c, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i64 [ %i.e, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  %i.f = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.g = insertvalue { ptr, i64 } %i.f, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvXsF_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_4KeysNtNtBb_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB1s_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXsk_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_4IterNtNtBb_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB1s_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0)
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvXsF_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_4KeysNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtB17_15ttx_diff_runner10DiffOutputENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB17_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXsk_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_4IterNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtB17_15ttx_diff_runner10DiffOutputENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB17_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0)
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvXsF_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_4KeysNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtB17_15ttx_diff_runner9DiffErrorENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB17_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXsk_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_4IterNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtB17_15ttx_diff_runner9DiffErrorENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB17_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0)
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvXsF_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_4KeysRNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetRNtNtB18_15ttx_diff_runner15CompilerFailureENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB18_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !802)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !802, !noundef !5 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RNvXsk_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_4IterRNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetRNtNtB18_15ttx_diff_runner15CompilerFailureENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB18_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.e, -1
  store i64 %i.g, ptr %i.d, align 8, !alias.scope !802
  tail call void @llvm.experimental.noalias.scope.decl(metadata !803)
  %i.h = load i64, ptr %0, align 8, !range !6, !alias.scope !804, !noundef !5
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !804, !noundef !5
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.d, label %_RNvMsc_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutRNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetRNtNtB1O_15ttx_diff_runner15CompilerFailureE10init_frontB1O_.exit.i

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !804, !noundef !5 ; 5 uses
  %.sroa.013.015.i.i = load ptr, ptr %i.l, align 8, !alias.scope !804, !nonnull !5, !noundef !5 ; 3 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter = and i64 %i.n, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.013.017.i.i.prol = phi ptr [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i.prol ], [ %.sroa.013.015.i.i, %.lr.ph.i.i.preheader ]
  %.sroa.011.016.i.i.prol = phi i64 [ %i.q, %.lr.ph.i.i.prol ], [ %i.n, %.lr.ph.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.prol, i64 192
  %i.q = add i64 %.sroa.011.016.i.i.prol, -1      ; 2 uses
  %.sroa.013.0.i.i.prol = load ptr, ptr %i.p, align 8, !noalias !804, !nonnull !5, !noundef !5 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !796

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.sroa.013.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i.prol ]
  %.sroa.013.017.i.i.unr = phi ptr [ %.sroa.013.015.i.i, %.lr.ph.i.i.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i.prol ]
  %.sroa.011.016.i.i.unr = phi i64 [ %i.n, %.lr.ph.i.i.preheader ], [ %i.q, %.lr.ph.i.i.prol ]
  %i.r = icmp ult i64 %i.n, 8
  br i1 %i.r, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d
  %.sroa.013.0.lcssa.i.i = phi ptr [ %.sroa.013.015.i.i, %bb.d ], [ %.sroa.013.0.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %.sroa.013.0.i.i.7, %.lr.ph.i.i ]
  store i64 1, ptr %0, align 8, !alias.scope !804
  store ptr %.sroa.013.0.lcssa.i.i, ptr %i.j, align 8, !alias.scope !804
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false), !alias.scope !804
  br label %_RNvMsc_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutRNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetRNtNtB1O_15ttx_diff_runner15CompilerFailureE10init_frontB1O_.exit.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.013.017.i.i = phi ptr [ %.sroa.013.0.i.i.7, %.lr.ph.i.i ], [ %.sroa.013.017.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.011.016.i.i = phi i64 [ %i.aa, %.lr.ph.i.i ], [ %.sroa.011.016.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i, i64 192
  %.sroa.013.0.i.i = load ptr, ptr %i.s, align 8, !noalias !804, !nonnull !5, !noundef !5
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i, i64 192
  %.sroa.013.0.i.i.1 = load ptr, ptr %i.t, align 8, !noalias !804, !nonnull !5, !noundef !5
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.1, i64 192
  %.sroa.013.0.i.i.2 = load ptr, ptr %i.u, align 8, !noalias !804, !nonnull !5, !noundef !5
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.2, i64 192
  %.sroa.013.0.i.i.3 = load ptr, ptr %i.v, align 8, !noalias !804, !nonnull !5, !noundef !5
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.3, i64 192
  %.sroa.013.0.i.i.4 = load ptr, ptr %i.w, align 8, !noalias !804, !nonnull !5, !noundef !5
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.4, i64 192
  %.sroa.013.0.i.i.5 = load ptr, ptr %i.x, align 8, !noalias !804, !nonnull !5, !noundef !5
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.5, i64 192
  %.sroa.013.0.i.i.6 = load ptr, ptr %i.y, align 8, !noalias !804, !nonnull !5, !noundef !5
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.6, i64 192
  %i.aa = add i64 %.sroa.011.016.i.i, -8          ; 2 uses
  %.sroa.013.0.i.i.7 = load ptr, ptr %i.z, align 8, !noalias !804, !nonnull !5, !noundef !5 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %._crit_edge.i.i, label %.lr.ph.i.i

_RNvMsc_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutRNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetRNtNtB1O_15ttx_diff_runner15CompilerFailureE10init_frontB1O_.exit.i: ; preds = %._crit_edge.i.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !805
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !805
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !806
  invoke void @_RNvMsh_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutRNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetRNtNtB1W_15ttx_diff_runner15CompilerFailureNtB1y_4LeafENtB1y_4EdgeE7next_kvB1W_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j)
          to label %.noexc.i.i unwind label %bb.g

.noexc.i.i:                                       ; preds = %_RNvMsc_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutRNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetRNtNtB1O_15ttx_diff_runner15CompilerFailureE10init_frontB1O_.exit.i
  %i.ac = load ptr, ptr %i.b, align 8, !noalias !806, !noundef !5 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.e, label %bb.f, !prof !10

bb.e:                                             ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !806
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #17
          to label %.noexc1.i.i unwind label %bb.g, !noalias !805

.noexc1.i.i:                                      ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %.noexc.i.i
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
end_hunk_0
