Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontc_crater.fontc_crater.f024a1d66527347-cgu.02?download=true
inline.NumInlined: 583
inline.NumDeleted: 199
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtNtCs1hTjP0dFAwJ_12fontc_crater2ci4html8generate:bb.a
  %i.bp = load i64, ptr %i.bo, align 8, !noalias !757
  %i.bq = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !noalias !757
  %.sroa.016.sroa.7.sroa.6.0.i = select i1 %.not125.i, i64 %i.bp, i64 undef ; 2 uses
  %.sroa.016.sroa.0.0.i = zext i1 %.not125.i to i64 ; 2 uses
  %.sroa.517.0.i = select i1 %.not125.i, i64 %i.br, i64 0
  store i64 %.sroa.016.sroa.0.0.i, ptr %i.f, align 8, !noalias !757
  %.sroa.091.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr null, ptr %.sroa.091.sroa.4.0..sroa_idx.i, align 8, !noalias !757
  %.sroa.091.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.bn, ptr %.sroa.091.sroa.5.0..sroa_idx.i, align 8, !noalias !757
  %.sroa.091.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 %.sroa.016.sroa.7.sroa.6.0.i, ptr %.sroa.091.sroa.6.0..sroa_idx.i, align 8, !noalias !757
  %.sroa.091.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 %.sroa.016.sroa.0.0.i, ptr %.sroa.091.sroa.7.0..sroa_idx.i, align 8, !noalias !757
  %.sroa.091.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr null, ptr %.sroa.091.sroa.8.0..sroa_idx.i, align 8, !noalias !757
  %.sroa.091.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store ptr %i.bn, ptr %.sroa.091.sroa.9.0..sroa_idx.i, align 8, !noalias !757
  %.sroa.091.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i64 %.sroa.016.sroa.7.sroa.6.0.i, ptr %.sroa.091.sroa.10.0..sroa_idx.i, align 8, !noalias !757
  %.sroa.091.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i64 %.sroa.517.0.i, ptr %.sroa.091.sroa.11.0..sroa_idx.i, align 8, !noalias !757
  %.sroa.091.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  store ptr null, ptr %.sroa.091.sroa.12.0..sroa_idx.i, align 8, !noalias !757
  %.sroa.091.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  store ptr null, ptr %.sroa.091.sroa.14.0..sroa_idx.i, align 8, !noalias !757
  %.sroa.492.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  store ptr null, ptr %.sroa.492.0..sroa_idx.i, align 8, !noalias !757
  %.sroa.694.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  store ptr null, ptr %.sroa.694.0..sroa_idx.i, align 8, !noalias !757
  invoke void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtNtB16_2ci4html10AnnotationEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtB2P_7FlattenINtNtNtNtB6_11collections5btree3map9ValuesMutB12_IBS_B1M_EEEINtNtB2R_3map3MapINtNtB4_9into_iter8IntoIterB12_ENCNCNvB1O_16load_annotations00ENCB5M_0EE9from_iterB16_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(184) %i.f)
          to label %bb.v unwind label %bb.u, !noalias !758

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtNtB1u_2ci4html10AnnotationEEEB1u_.exit.i: ; preds = %.body.i, %bb.u
  %.pn.pn.i = phi { ptr, i32 } [ %i.bs, %bb.u ], [ %.pn.i, %.body.i ]
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtNtB8_3vec3VecNtNtNtB18_2ci4html10AnnotationEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body unwind label %bb.ae, !noalias !758

bb.u:                                             ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtNtB11_2ci4html10AnnotationEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB11_.exit.thread.i, %bb.t
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtNtB1u_2ci4html10AnnotationEEEB1u_.exit.i

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !757
  %i.bt = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !757, !nonnull !6, !noundef !6 ; 4 uses
  %i.bv = load i64, ptr %i.g, align 8, !range !15, !noalias !757, !noundef !6
  %i.bw = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !noalias !757, !noundef !6 ; 3 uses
  %i.by = icmp ult i64 %i.bx, 52405522936674863
  call void @llvm.assume(i1 %i.by)
  %.idx.i = mul nuw nsw i64 %i.bx, 176
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.idx.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !757
  store ptr %i.bu, ptr %i.e, align 8, !noalias !757
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr %i.bu, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !757
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.bv, ptr %.sroa.57.0..sroa_idx.i, align 8, !noalias !757
  %.sroa.68.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  store ptr %i.bz, ptr %.sroa.68.0..sroa_idx.i, align 8, !noalias !757
  %i.ca = icmp eq i64 %i.bx, 0
  br i1 %i.ca, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtNtB11_2ci4html10AnnotationEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB11_.exit.thread.i, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtNtB11_2ci4html10AnnotationEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB11_.exit.lr.ph.i

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtNtB11_2ci4html10AnnotationEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB11_.exit.lr.ph.i: ; preds = %bb.v
  %.sroa.7.0..sroa_idx131.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtNtB11_2ci4html10AnnotationEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB11_.exit.i

.body.i:                                          ; preds = %bb.ad, %bb.aa
  %.pn.i = phi { ptr, i32 } [ %i.cs, %bb.ad ], [ %i.cj, %bb.aa ]
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtNtB11_2ci4html10AnnotationEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtNtB1u_2ci4html10AnnotationEEEB1u_.exit.i unwind label %bb.ae, !noalias !758

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtNtB11_2ci4html10AnnotationEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB11_.exit.i: ; preds = %bb.ac, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtNtB11_2ci4html10AnnotationEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB11_.exit.lr.ph.i
  %i.cb = phi ptr [ %i.bu, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtNtB11_2ci4html10AnnotationEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB11_.exit.lr.ph.i ], [ %i.cq, %bb.ac ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !759)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 176
  store ptr %i.cc, ptr %.sroa.46.0..sroa_idx.i, align 8, !alias.scope !759, !noalias !760
  %.sroa.0.0.copyload.i = load i64, ptr %i.cb, align 8, !noalias !761 ; 2 uses
  %.not126.i = icmp eq i64 %.sroa.0.0.copyload.i, -1
  br i1 %.not126.i, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtNtB11_2ci4html10AnnotationEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB11_.exit.thread.i, label %bb.w

bb.w:                                             ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtNtB11_2ci4html10AnnotationEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB11_.exit.i
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !757
  store i64 %.sroa.0.0.copyload.i, ptr %i.d, align 8, !noalias !757
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.7.0..sroa_idx131.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.7.0..sroa_idx.i, i64 96, i1 false), !noalias !758
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !757
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.cd, i64 72, i1 false), !noalias !758
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !757
  invoke void @_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtNtBb_3vec3VecNtNtNtB1b_2ci4html10AnnotationEE5entryB1b_(ptr noalias nofree noundef nonnull sret([136 x i8]) align 8 captures(none) dereferenceable(136) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(104) %i.d)
          to label %bb.x unwind label %bb.ad, !noalias !758

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtNtB11_2ci4html10AnnotationEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB11_.exit.thread.i: ; preds = %bb.ac, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtNtB11_2ci4html10AnnotationEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB11_.exit.i, %bb.v
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtNtB11_2ci4html10AnnotationEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %bb.ah unwind label %bb.u, !noalias !758

bb.x:                                             ; preds = %bb.w
  %i.ce = invoke noundef nonnull align 8 ptr @_RNvMs3_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB5_5EntryNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtNtBd_3vec3VecNtNtNtB1g_2ci4html10AnnotationEE10or_defaultB1g_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %i.b)
          to label %bb.y unwind label %bb.ad, !noalias !758 ; 4 uses

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !757
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !757
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false), !noalias !757
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !alias.scope !762, !noalias !763, !noundef !6 ; 3 uses
  %i.ch = load i64, ptr %i.ce, align 8, !range !15, !alias.scope !762, !noalias !763, !noundef !6
  %i.ci = icmp eq i64 %i.cg, %i.ch
  br i1 %i.ci, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1hTjP0dFAwJ_12fontc_crater2ci4html10AnnotationE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ce)
          to label %bb.ac unwind label %bb.aa, !noalias !763

bb.aa:                                            ; preds = %bb.z
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1hTjP0dFAwJ_12fontc_crater2ci4html10AnnotationEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #18
          to label %.body.i unwind label %bb.ab, !noalias !758

bb.ab:                                            ; preds = %bb.aa
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17, !noalias !758
  unreachable

bb.ac:                                            ; preds = %bb.z, %bb.y
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !alias.scope !762, !noalias !763, !nonnull !6, !noundef !6
  %i.cn = getelementptr inbounds nuw [72 x i8], ptr %i.cm, i64 %i.cg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cn, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false), !noalias !758
  %i.co = add i64 %i.cg, 1
  store i64 %i.co, ptr %i.cf, align 8, !alias.scope !762, !noalias !763
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !757
  %i.cp = load ptr, ptr %.sroa.68.0..sroa_idx.i, align 8, !alias.scope !764, !noalias !760, !nonnull !6, !noundef !6
  %i.cq = load ptr, ptr %.sroa.46.0..sroa_idx.i, align 8, !alias.scope !764, !noalias !760, !nonnull !6, !noundef !6 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.cp
  br i1 %i.cr, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtNtB11_2ci4html10AnnotationEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB11_.exit.thread.i, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtNtB11_2ci4html10AnnotationEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB11_.exit.i

bb.ad:                                            ; preds = %bb.x, %bb.w
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1hTjP0dFAwJ_12fontc_crater2ci4html10AnnotationEBH_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.c) #18
          to label %.body.i unwind label %bb.ae, !noalias !758

bb.ae:                                            ; preds = %bb.ad, %.body.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtNtB1u_2ci4html10AnnotationEEEB1u_.exit.i
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17, !noalias !758
  unreachable

.body:                                            ; preds = %bb.am, %bb.af, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtNtB1u_2ci4html10AnnotationEEEB1u_.exit.i
  %.pn111 = phi { ptr, i32 } [ %.pn.pn.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtNtB1u_2ci4html10AnnotationEEEB1u_.exit.i ], [ %i.cu, %bb.af ], [ %.pn109, %bb.am ]
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringB14_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringB1A_EECs1hTjP0dFAwJ_12fontc_crater.exit unwind label %bb.cb

bb.af:                                            ; preds = %bb.ce, %bb.bv, %bb.s
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ag:                                            ; preds = %.noexc
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.585.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.515.0..sroa_idx.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !757
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i, i64 24, i1 false), !noalias !765
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !757
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.625, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.484.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.625, i64 24, i1 false)
  store i64 %i.bl, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.625)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtNtBK_3vec3VecNtNtNtB1E_2ci4html10AnnotationEEEB1E_.exit134

bb.ah:                                            ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtNtB11_2ci4html10AnnotationEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB11_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !757
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !765
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !757
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.625, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.625, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.625)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !noundef !6 ; 3 uses
  %i.cz = icmp ugt i64 %i.cy, 1
  br i1 %i.cz, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.da = icmp eq i64 %i.cy, 1
  br i1 %i.da, label %bb.ak, label %bb.al, !prof !14

bb.aj:                                            ; preds = %bb.ah
  %i.db = getelementptr [160 x i8], ptr %i.cw, i64 %i.cy ; 2 uses
  %i.dc = getelementptr i8, ptr %i.db, i64 -160
  %i.dd = getelementptr i8, ptr %i.db, i64 -320
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  invoke void @_RNvMNtCs1hTjP0dFAwJ_12fontc_crater2ciNtB2_10RunSummary16try_load_results(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.dd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.at unwind label %bb.an

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.535)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RNvMNtCs1hTjP0dFAwJ_12fontc_crater2ciNtB2_10RunSummary16try_load_results(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.cw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.ao unwind label %bb.an

bb.al:                                            ; preds = %bb.ai
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @86, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @87) #20
          to label %bb.as unwind label %bb.an

bb.am:                                            ; preds = %bb.bc, %bb.bs, %bb.aw, %bb.an
  %.pn109 = phi { ptr, i32 } [ %i.de, %bb.an ], [ %.pn107, %bb.bs ], [ %i.dx, %bb.bc ], [ %i.dp, %bb.aw ]
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtNtB8_3vec3VecNtNtNtB18_2ci4html10AnnotationEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.body unwind label %bb.cb

bb.an:                                            ; preds = %bb.cc, %bb.bu, %bb.be, %bb.az, %bb.al, %bb.ak, %bb.aj
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ao:                                            ; preds = %bb.ak
  %i.df = load i64, ptr %i.n, align 8, !range !5, !noundef !6
  %i.dg = trunc nuw i64 %i.df to i1
  %i.dh = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.535, ptr noundef nonnull align 8 dereferenceable(48) %i.dh, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br i1 %i.dg, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.535, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.535)
  br label %bb.ce

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.535, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.535)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.bf, %bb.aq
  %.sroa.036.0 = phi i64 [ %.sroa.036.0.copyload37, %bb.bf ], [ 0, %bb.aq ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.v, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store i64 %.sroa.036.0, ptr %i.u, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.641)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.di = load ptr, ptr %i.cv, align 8, !nonnull !6, !noundef !6
  %i.dj = load i64, ptr %i.cx, align 8, !noundef !6
  %i.dk = trunc nuw i64 %.sroa.036.0 to i1
  %.sroa.3.0..sroa_idx. = select i1 %i.dk, ptr %.sroa.3.0..sroa_idx, ptr null
  invoke fastcc void @_RNvNtNtCs1hTjP0dFAwJ_12fontc_crater2ci4html9make_html(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.di, i64 noundef %i.dj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) %.sroa.3.0..sroa_idx., ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.w)
          to label %bb.bi unwind label %bb.bh

bb.as:                                            ; preds = %bb.al
  unreachable

bb.at:                                            ; preds = %bb.aj
  %i.dl = load i64, ptr %i.s, align 8, !range !5, !noundef !6
  %i.dm = trunc nuw i64 %i.dl to i1
  %i.dn = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  br i1 %i.dm, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.do = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.do, ptr noundef nonnull align 8 dereferenceable(48) %i.dn, i64 48, i1 false)
  store i64 1, ptr %i.t, align 8
  br label %bb.av

bb.av:                                            ; preds = %bb.bb, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.533)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke void @_RNvMNtCs1hTjP0dFAwJ_12fontc_crater2ciNtB2_10RunSummary16try_load_results(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.dc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.bd unwind label %bb.bc

bb.aw:                                            ; preds = %bb.ay
  %i.dp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1hTjP0dFAwJ_12fontc_crater5error5ErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.r) #18
          to label %bb.am unwind label %bb.cb

bb.ax:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef nonnull align 8 dereferenceable(48) %i.dn, i64 48, i1 false)
  %i.dq = load atomic i64, ptr @_RNvCsksibNCz2yVN_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.dr = icmp ult i64 %i.dq, 6
  call void @llvm.assume(i1 %i.dr)
  %i.ds = icmp samesign ugt i64 %i.dq, 1
  br i1 %i.ds, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %i.r, ptr %i.q, align 8
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @_RNvXs0_NtCs1hTjP0dFAwJ_12fontc_crater5errorNtB5_5ErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.489.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr @90, ptr %i.p, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 22, ptr %i.dt, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr @90, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i64 22, ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr @89, ptr %i.dw, align 8
  invoke void @_RINvNtCsksibNCz2yVN_3log13___private_api3loguNtB2_12GlobalLoggerECs1hTjP0dFAwJ_12fontc_crater(ptr noundef nonnull @88, ptr noundef nonnull %i.q, i64 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.p)
          to label %bb.ba unwind label %bb.aw

bb.az:                                            ; preds = %bb.ax, %bb.ba
  store i64 0, ptr %i.t, align 8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1hTjP0dFAwJ_12fontc_crater5error5ErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.r)
          to label %bb.bb unwind label %bb.an

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.az

bb.bb:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.av

bb.bc:                                            ; preds = %bb.av
  %i.dx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtCs1hTjP0dFAwJ_12fontc_crater7ResultsNtNtB10_15ttx_diff_runner10DiffOutputNtB1C_9DiffErrorEEEB10_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.t) #18
          to label %bb.am unwind label %bb.cb

bb.bd:                                            ; preds = %bb.av
  %i.dy = load i64, ptr %i.o, align 8, !range !5, !noundef !6
  %i.dz = trunc nuw i64 %i.dy to i1
  %i.ea = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.533, ptr noundef nonnull align 8 dereferenceable(48) %i.ea, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br i1 %i.dz, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.533, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.533)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtCs1hTjP0dFAwJ_12fontc_crater7ResultsNtNtB10_15ttx_diff_runner10DiffOutputNtB1C_9DiffErrorEEEB10_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.t)
          to label %bb.cf unwind label %bb.an

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.533, i64 48, i1 false)
  %.sroa.036.0.copyload37 = load i64, ptr %i.t, align 8
  %.sroa.3.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3.0..sroa_idx38, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.533)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.ar

bb.bg:                                            ; preds = %bb.bl, %bb.bh
  %.pn105 = phi { ptr, i32 } [ %i.eb, %bb.bh ], [ %.pn, %bb.bl ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtCs1hTjP0dFAwJ_12fontc_crater7ResultsNtNtB10_15ttx_diff_runner10DiffOutputNtB1C_9DiffErrorEEEB10_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.u) #18
          to label %bb.bs unwind label %bb.cb

bb.bh:                                            ; preds = %bb.bq, %bb.ar
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bi:                                            ; preds = %bb.ar
  %i.ec = load i64, ptr %i.k, align 8, !range !756, !noundef !6 ; 2 uses
  %.not103 = icmp eq i64 %i.ec, -3
  %i.ed = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.641, ptr noundef nonnull align 8 dereferenceable(24) %i.ed, i64 24, i1 false)
  br i1 %.not103, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %.sroa.595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.598.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.598.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.595.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.497.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.641, i64 24, i1 false)
  store i64 %i.ec, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.641)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtCs1hTjP0dFAwJ_12fontc_crater7ResultsNtNtB10_15ttx_diff_runner10DiffOutputNtB1C_9DiffErrorEEEB10_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.u)
          to label %bb.cc unwind label %bb.bt

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.641, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.641)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path4joinReECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @91, i64 noundef 10)
end_hunk_0
begin_hunk_1_@_RNvNtNtCs1hTjP0dFAwJ_12fontc_crater2ci4html8generate:bb.a

bb.cp:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs1hTjP0dFAwJ_12fontc_crater2ci10RunSummaryEEB1c_.exit
  %i.ey = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %common.resume unwind label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable

common.resume:                                    ; preds = %.body155, %bb.cp
  %common.resume.op = phi { ptr, i32 } [ %i.ey, %bb.cp ], [ %.pn123, %.body155 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs1hTjP0dFAwJ_12fontc_crater.exit159: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs1hTjP0dFAwJ_12fontc_crater2ci10RunSummaryEEB1c_.exit
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
  br label %bb.ca
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCs1hTjP0dFAwJ_12fontc_crater2ci4html9make_html(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 57646075230342349) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) %5, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %7) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 4                ; 10 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [72 x i8], align 8                ; 14 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 14 uses
  %i.m = alloca [24 x i8], align 8                ; 11 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [72 x i8], align 8                ; 14 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 14 uses
  %i.r = alloca [24 x i8], align 8                ; 11 uses
  %i.s = alloca [160 x i8], align 8               ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 8 uses
  %i.u = alloca [160 x i8], align 8               ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 8 uses
  %i.w = alloca [144 x i8], align 8               ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 7 uses
  %i.y = alloca [144 x i8], align 8               ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 7 uses
  %i.aa = alloca [12 x i8], align 4               ; 4 uses
  %i.ab = alloca [12 x i8], align 4               ; 5 uses
  %i.ac = alloca [12 x i8], align 4               ; 5 uses
  %i.ad = alloca [8 x i8], align 8                ; 4 uses
  %i.ae = alloca [8 x i8], align 8                ; 4 uses
  %i.af = alloca [40 x i8], align 8               ; 8 uses
  %i.ag = alloca [24 x i8], align 8               ; 6 uses
  %i.ah = alloca [24 x i8], align 8               ; 6 uses
  %i.ai = alloca [24 x i8], align 8               ; 6 uses
  %i.aj = alloca [88 x i8], align 8               ; 9 uses
  %i.ak = alloca [24 x i8], align 8               ; 36 uses
  %i.al = alloca [16 x i8], align 8               ; 5 uses
  %i.am = alloca [24 x i8], align 8               ; 4 uses
  %i.an = alloca [24 x i8], align 8               ; 8 uses
  %i.ao = alloca [4 x i8], align 4                ; 4 uses
  %i.ap = alloca [16 x i8], align 8               ; 5 uses
  %i.aq = alloca [16 x i8], align 8               ; 5 uses
  %i.ar = alloca [24 x i8], align 8               ; 24 uses
  %i.as = alloca [24 x i8], align 8               ; 24 uses
  %i.at = alloca [24 x i8], align 8               ; 9 uses
  %i.au = alloca [32 x i8], align 8               ; 7 uses
  %i.av = alloca [16 x i8], align 8               ; 5 uses
  %i.aw = alloca [24 x i8], align 8               ; 4 uses
  %i.ax = alloca [24 x i8], align 8               ; 10 uses
  %i.ay = alloca [16 x i8], align 8               ; 5 uses
  %i.az = alloca [24 x i8], align 8               ; 4 uses
  %i.ba = alloca [24 x i8], align 8               ; 10 uses
  %i.bb = alloca [24 x i8], align 8               ; 10 uses
  %i.bc = alloca [24 x i8], align 8               ; 11 uses
  %i.bd = alloca [24 x i8], align 8               ; 11 uses
  %i.be = alloca [24 x i8], align 8               ; 11 uses
  %i.bf = alloca [24 x i8], align 8               ; 11 uses
  %i.bg = alloca [24 x i8], align 8               ; 11 uses
  %i.bh = alloca [24 x i8], align 8               ; 12 uses
  %i.bi = alloca [24 x i8], align 8               ; 4 uses
  %i.bj = alloca [24 x i8], align 8               ; 6 uses
  %i.bk = alloca [24 x i8], align 8               ; 8 uses
  %i.bl = alloca [8 x i8], align 8                ; 4 uses
  %i.bm = alloca [24 x i8], align 8               ; 14 uses
  %i.bn = alloca [24 x i8], align 8               ; 6 uses
  %i.bo = alloca [24 x i8], align 8               ; 4 uses
  %i.bp = alloca [24 x i8], align 8               ; 6 uses
  %i.bq = alloca [24 x i8], align 8               ; 6 uses
  %i.br = alloca [24 x i8], align 8               ; 21 uses
  %i.bs = alloca [24 x i8], align 8               ; 9 uses
  %i.bt = alloca [16 x i8], align 8               ; 5 uses
  %i.bu = alloca [16 x i8], align 8               ; 5 uses
  %i.bv = alloca [24 x i8], align 8               ; 12 uses
  %i.bw = alloca [24 x i8], align 8               ; 10 uses
  %i.bx = alloca [24 x i8], align 8               ; 11 uses
  %i.by = alloca [24 x i8], align 8               ; 10 uses
  %i.bz = alloca [24 x i8], align 8               ; 8 uses
  %i.ca = alloca [24 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !908)
  %.idx.i = mul nuw nsw i64 %2, 160
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !909
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !909
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bj, i64 noundef 234, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !909
  %i.cc = load i64, ptr %i.bj, align 8, !range !5, !noalias !909, !noundef !6
  %i.cd = trunc nuw i64 %i.cc to i1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !range !10, !noalias !909, !noundef !6 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  br i1 %i.cd, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.ch = load i64, ptr %i.cg, align 8, !noalias !909
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.cf, i64 %i.ch) #20, !noalias !910
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ci = load ptr, ptr %i.cg, align 8, !noalias !909, !nonnull !6, !noundef !6
  %i.cj = icmp samesign ugt i64 %i.cf, 233
  tail call void @llvm.assume(i1 %i.cj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !909
  store i64 %i.cf, ptr %i.bm, align 8, !noalias !909
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 4 uses
  store ptr %i.ci, ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !909
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 9 uses
  store i64 0, ptr %.sroa.55.0..sroa_idx.i, align 8, !noalias !909
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bm, i64 noundef 105)
          to label %bb.f unwind label %.loopexit.split-lp.i, !noalias !910

.body.i:                                          ; preds = %bb.fp, %bb.fn, %bb.fj, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1hTjP0dFAwJ_12fontc_crater.exit.i71.i, %.loopexit.split-lp.i, %.loopexit.i
  %.pn.i = phi { ptr, i32 } [ %i.pm, %bb.fn ], [ %.pn71.pn.pn.pn.pn.pn.pn.pn.pn.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1hTjP0dFAwJ_12fontc_crater.exit.i71.i ], [ %i.pn, %bb.fp ], [ %i.pk, %bb.fj ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs1hTjP0dFAwJ_12fontc_crater.exit.i79 unwind label %bb.d, !noalias !910

bb.d:                                             ; preds = %.body.i
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %.body80 unwind label %bb.e, !noalias !910

bb.e:                                             ; preds = %bb.d
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17, !noalias !910
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs1hTjP0dFAwJ_12fontc_crater.exit.i79: ; preds = %.body.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %common.resume unwind label %bb.fr

.loopexit.i:                                      ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1hTjP0dFAwJ_12fontc_crater.exit.i.i, %_RNvNvNtNtCs1hTjP0dFAwJ_12fontc_crater2ci4html15make_table_body8make_row.exit.i.i, %bb.k, %.thread.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %._crit_edge.i, %bb.fl, %bb.g, %bb.f, %bb.c
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.f:                                             ; preds = %bb.c
  %i.cm = load i64, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !911, !noalias !909, !noundef !6 ; 3 uses
  %i.cn = icmp sgt i64 %i.cm, -1
  call void @llvm.assume(i1 %i.cn)
  %i.co = load ptr, ptr %.sroa.44.0..sroa_idx.i, align 8, !alias.scope !911, !noalias !909, !nonnull !6, !noundef !6
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(105) %i.cp, ptr noundef nonnull align 1 dereferenceable(105) @33, i64 105, i1 false), !noalias !910
  %i.cq = add nuw i64 %i.cm, 105
  store i64 %i.cq, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !911, !noalias !909
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !909
  store i64 %2, ptr %i.bl, align 8, !noalias !909
  invoke void @_RNvXsq_Cs7SPl5Nayu5l_4maudjNtB5_6Render9render_to(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bl, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %bb.g unwind label %.loopexit.split-lp.i, !noalias !910

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !909
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bm, i64 noundef 22)
          to label %bb.h unwind label %.loopexit.split-lp.i, !noalias !910

bb.h:                                             ; preds = %bb.g
  %i.cr = load i64, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !912, !noalias !909, !noundef !6 ; 2 uses
  %i.cs = icmp sgt i64 %i.cr, -1
  call void @llvm.assume(i1 %i.cs)
  %i.ct = load ptr, ptr %.sroa.44.0..sroa_idx.i, align 8, !alias.scope !912, !noalias !909, !nonnull !6, !noundef !6
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.cu, ptr noundef nonnull align 1 dereferenceable(22) @34, i64 22, i1 false), !noalias !910
  %.pre.i13.i = load i64, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !912, !noalias !909
  %i.cv = add i64 %.pre.i13.i, 22
  store i64 %i.cv, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !912, !noalias !909
  %i.cw = icmp eq i64 %2, 0
  br i1 %i.cw, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h
  %i.cx = add nsw i64 %2, -1
  %i.cy = call i64 @llvm.usub.sat.i64(i64 range(i64 0, 57646075230342349) %2, i64 16)
  %.sroa.427.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.433.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.sroa.437.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.db = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %.sroa.444.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 10 uses
  %.sroa.545.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 25 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %.sroa.441.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 10 uses
  %.sroa.542.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 24 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.449.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %.sroa.453.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 17 uses
  %.sroa.554.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 45 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.dm = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.do = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  br label %bb.i

bb.i:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCs7SPl5Nayu5l_4maud10PreEscapedNtNtCsgCecv3eZDcN_5alloc6string6StringEECs1hTjP0dFAwJ_12fontc_crater.exit.i, %.lr.ph.i
  %.sroa.0.0134.i = phi ptr [ %1, %.lr.ph.i ], [ %i.dp, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCs7SPl5Nayu5l_4maud10PreEscapedNtNtCsgCecv3eZDcN_5alloc6string6StringEECs1hTjP0dFAwJ_12fontc_crater.exit.i ] ; 15 uses
  %.sroa.7.0133.i = phi i64 [ 0, %.lr.ph.i ], [ %i.dq, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCs7SPl5Nayu5l_4maud10PreEscapedNtNtCsgCecv3eZDcN_5alloc6string6StringEECs1hTjP0dFAwJ_12fontc_crater.exit.i ] ; 5 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0.0134.i, i64 160 ; 2 uses
  %i.dq = add nuw nsw i64 %.sroa.7.0133.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  call void @llvm.experimental.noalias.scope.decl(metadata !913)
  %.not.i.i = icmp eq i64 %.sroa.7.0133.i, 0      ; 6 uses
  br i1 %.not.i.i, label %.thread.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dr = add nsw i64 %.sroa.7.0133.i, -1         ; 3 uses
  %i.ds = icmp ult i64 %i.dr, %2
  br i1 %i.ds, label %bb.k, label %bb.fl

.thread.i.i.i:                                    ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !914)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !915
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0.0134.i, i64 120 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 8, !alias.scope !916, !noalias !917, !noundef !6 ; 2 uses
  invoke fastcc void @_RINvNtNtCs1hTjP0dFAwJ_12fontc_crater2ci4html21make_delta_decorationlEB6_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.bh, i32 noundef %i.du, i32 noundef 0, i32 undef, i1 noundef zeroext false)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !910

.noexc.i:                                         ; preds = %.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !918
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dv = getelementptr inbounds nuw [160 x i8], ptr %1, i64 %i.dr ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !919)
  call void @llvm.experimental.noalias.scope.decl(metadata !920)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !918
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0.0134.i, i64 120 ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 8, !alias.scope !921, !noalias !922, !noundef !6 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 120
  %i.dz = load i32, ptr %i.dy, align 8, !alias.scope !923, !noalias !924, !noundef !6
  invoke fastcc void @_RINvNtNtCs1hTjP0dFAwJ_12fontc_crater2ci4html21make_delta_decorationlEB6_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.bh, i32 noundef %i.dx, i32 noundef 1, i32 %i.dz, i1 noundef zeroext false)
          to label %.noexc16.i unwind label %.loopexit.i, !noalias !910

.noexc16.i:                                       ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !918
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 124
  %i.eb = load i32, ptr %i.ea, align 4, !alias.scope !923, !noalias !924, !noundef !6
  br label %bb.l

bb.l:                                             ; preds = %.noexc16.i, %.noexc.i
  %spec.select.i.i.i = phi ptr [ %i.dv, %.noexc16.i ], [ %.sroa.0.0134.i, %.noexc.i ] ; 2 uses
  %i.ec = phi i32 [ %i.dx, %.noexc16.i ], [ %i.du, %.noexc.i ]
  %i.ed = phi ptr [ %i.dw, %.noexc16.i ], [ %i.dt, %.noexc.i ]
  %.sroa.0.0.i15164.i = phi ptr [ %i.dv, %.noexc16.i ], [ null, %.noexc.i ] ; 5 uses
  %.sroa.52.0.i.i.i = phi i32 [ %i.eb, %.noexc16.i ], [ undef, %.noexc.i ]
  %.sroa.01.0.i.i.i = phi i32 [ 1, %.noexc16.i ], [ 0, %.noexc.i ]
  %8 = icmp eq i64 %.sroa.7.0133.i, %i.cx
  %.not1.i166.i = icmp samesign ult i64 %.sroa.7.0133.i, %i.cy
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.0.0134.i, i64 124 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !alias.scope !921, !noalias !922, !noundef !6 ; 2 uses
  invoke fastcc void @_RINvNtNtCs1hTjP0dFAwJ_12fontc_crater2ci4html21make_delta_decorationlEB6_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.bg, i32 noundef %i.ef, i32 noundef %.sroa.01.0.i.i.i, i32 %.sroa.52.0.i.i.i, i1 noundef zeroext false)
          to label %bb.p unwind label %bb.o, !noalias !922

.body218.i.i.i:                                   ; preds = %bb.fh, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1hTjP0dFAwJ_12fontc_crater.exit.i65.i, %bb.o
  %.pn71.pn.pn.pn.pn.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %i.pi, %bb.fh ], [ %i.ei, %bb.o ], [ %.pn71.pn.pn.pn.pn.pn.pn.pn.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1hTjP0dFAwJ_12fontc_crater.exit.i65.i ]
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1hTjP0dFAwJ_12fontc_crater.exit.i71.i unwind label %bb.m, !noalias !922

bb.m:                                             ; preds = %.body218.i.i.i
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %.body25.i unwind label %bb.n, !noalias !922

bb.n:                                             ; preds = %bb.m
  %i.eh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17, !noalias !922
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1hTjP0dFAwJ_12fontc_crater.exit.i71.i: ; preds = %.body218.i.i.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %.body.i unwind label %bb.cc, !noalias !910

bb.o:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1hTjP0dFAwJ_12fontc_crater.exit.i217.i.i.i, %bb.l
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %.body218.i.i.i

bb.p:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !918
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0.0134.i, i64 132 ; 3 uses
  %i.ek = load i32, ptr %i.ej, align 4, !alias.scope !921, !noalias !922, !noundef !6
  br i1 %.not.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i15164.i, i64 132
  %i.em = load i32, ptr %i.el, align 4, !alias.scope !923, !noalias !924, !noundef !6
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.54.0.i.i.i = phi i32 [ %i.em, %bb.q ], [ undef, %bb.p ]
  %.sroa.03.0.i.i.i = phi i32 [ 1, %bb.q ], [ 0, %bb.p ]
  invoke fastcc void @_RINvNtNtCs1hTjP0dFAwJ_12fontc_crater2ci4html21make_delta_decorationlEB6_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.bf, i32 noundef %i.ek, i32 noundef %.sroa.03.0.i.i.i, i32 %.sroa.54.0.i.i.i, i1 noundef zeroext true)
          to label %bb.v unwind label %bb.u, !noalias !922

.body212.i.i.i:                                   ; preds = %bb.ff, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1hTjP0dFAwJ_12fontc_crater.exit.i59.i, %bb.u
  %.pn71.pn.pn.pn.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %i.pg, %bb.ff ], [ %i.ep, %bb.u ], [ %.pn71.pn.pn.pn.pn.pn.pn.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1hTjP0dFAwJ_12fontc_crater.exit.i59.i ]
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1hTjP0dFAwJ_12fontc_crater.exit.i65.i unwind label %bb.s, !noalias !922

bb.s:                                             ; preds = %.body212.i.i.i
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %.body25.i unwind label %bb.t, !noalias !922

bb.t:                                             ; preds = %bb.s
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17, !noalias !922
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1hTjP0dFAwJ_12fontc_crater.exit.i65.i: ; preds = %.body212.i.i.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %.body218.i.i.i unwind label %bb.cc, !noalias !910

bb.u:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1hTjP0dFAwJ_12fontc_crater.exit.i211.i.i.i, %bb.r
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %.body212.i.i.i

bb.v:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !918
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.0.0134.i, i64 136 ; 3 uses
  %i.er = load i32, ptr %i.eq, align 8, !alias.scope !921, !noalias !922, !noundef !6
  br i1 %.not.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i15164.i, i64 136
  %i.et = load i32, ptr %i.es, align 8, !alias.scope !923, !noalias !924, !noundef !6
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sroa.56.0.i.i.i = phi i32 [ %i.et, %bb.w ], [ undef, %bb.v ]
  %.sroa.05.0.i.i.i = phi i32 [ 1, %bb.w ], [ 0, %bb.v ]
  invoke fastcc void @_RINvNtNtCs1hTjP0dFAwJ_12fontc_crater2ci4html21make_delta_decorationlEB6_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.be, i32 noundef %i.er, i32 noundef %.sroa.05.0.i.i.i, i32 %.sroa.56.0.i.i.i, i1 noundef zeroext true)
          to label %bb.ab unwind label %bb.aa, !noalias !922

.body206.i.i.i:                                   ; preds = %bb.fd, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1hTjP0dFAwJ_12fontc_crater.exit.i53.i, %bb.aa
  %.pn71.pn.pn.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %i.pe, %bb.fd ], [ %i.ew, %bb.aa ], [ %.pn71.pn.pn.pn.pn.pn.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1hTjP0dFAwJ_12fontc_crater.exit.i53.i ]
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1hTjP0dFAwJ_12fontc_crater.exit.i59.i unwind label %bb.y, !noalias !922

bb.y:                                             ; preds = %.body206.i.i.i
  %i.eu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %.body25.i unwind label %bb.z, !noalias !922

bb.z:                                             ; preds = %bb.y
  %i.ev = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17, !noalias !922
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1hTjP0dFAwJ_12fontc_crater.exit.i59.i: ; preds = %.body206.i.i.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %.body212.i.i.i unwind label %bb.cc, !noalias !910

bb.aa:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1hTjP0dFAwJ_12fontc_crater.exit.i205.i.i.i, %bb.x
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %.body206.i.i.i

bb.ab:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !918
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.0.0134.i, i64 140 ; 3 uses
  %i.ey = load i32, ptr %i.ex, align 4, !alias.scope !921, !noalias !922, !noundef !6
  br i1 %.not.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i15164.i, i64 140
  %i.fa = load i32, ptr %i.ez, align 4, !alias.scope !923, !noalias !924, !noundef !6
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.sroa.58.0.i.i.i = phi i32 [ %i.fa, %bb.ac ], [ undef, %bb.ab ]
  %.sroa.07.0.i.i.i = phi i32 [ 1, %bb.ac ], [ 0, %bb.ab ]
  invoke fastcc void @_RINvNtNtCs1hTjP0dFAwJ_12fontc_crater2ci4html21make_delta_decorationlEB6_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.bd, i32 noundef %i.ey, i32 noundef %.sroa.07.0.i.i.i, i32 %.sroa.58.0.i.i.i, i1 noundef zeroext true)
          to label %bb.ah unwind label %bb.ag, !noalias !922

.body200.i.i.i:                                   ; preds = %bb.fb, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1hTjP0dFAwJ_12fontc_crater.exit.i47.i, %bb.ag
  %.pn71.pn.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %i.pc, %bb.fb ], [ %i.fd, %bb.ag ], [ %.pn71.pn.pn.pn.pn.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1hTjP0dFAwJ_12fontc_crater.exit.i47.i ]
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1hTjP0dFAwJ_12fontc_crater.exit.i53.i unwind label %bb.ae, !noalias !922

bb.ae:                                            ; preds = %.body200.i.i.i
  %i.fb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %.body25.i unwind label %bb.af, !noalias !922

bb.af:                                            ; preds = %bb.ae
  %i.fc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17, !noalias !922
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1hTjP0dFAwJ_12fontc_crater.exit.i53.i: ; preds = %.body200.i.i.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %.body206.i.i.i unwind label %bb.cc, !noalias !910

bb.ag:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1hTjP0dFAwJ_12fontc_crater.exit.i199.i.i.i, %bb.ad
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %.body200.i.i.i

bb.ah:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !918
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.0.0134.i, i64 144 ; 3 uses
  %i.ff = load i32, ptr %i.fe, align 8, !alias.scope !921, !noalias !922, !noundef !6
  br i1 %.not.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i15164.i, i64 144
  %i.fh = load i32, ptr %i.fg, align 8, !alias.scope !923, !noalias !924, !noundef !6
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.sroa.510.0.i.i.i = phi i32 [ %i.fh, %bb.ai ], [ undef, %bb.ah ]
  %.sroa.09.0.i.i.i = phi i32 [ 1, %bb.ai ], [ 0, %bb.ah ]
  invoke fastcc void @_RINvNtNtCs1hTjP0dFAwJ_12fontc_crater2ci4html21make_delta_decorationlEB6_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.bc, i32 noundef %i.ff, i32 noundef %.sroa.09.0.i.i.i, i32 %.sroa.510.0.i.i.i, i1 noundef zeroext true)
          to label %bb.an unwind label %bb.am, !noalias !922

.body194.i.i.i:                                   ; preds = %bb.ez, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1hTjP0dFAwJ_12fontc_crater.exit.i41.i, %bb.am
  %.pn71.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %i.pa, %bb.ez ], [ %i.fk, %bb.am ], [ %.pn71.pn.pn.pn.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1hTjP0dFAwJ_12fontc_crater.exit.i41.i ]
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bd)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1hTjP0dFAwJ_12fontc_crater.exit.i47.i unwind label %bb.ak, !noalias !922

bb.ak:                                            ; preds = %.body194.i.i.i
  %i.fi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bd)
          to label %.body25.i unwind label %bb.al, !noalias !922

bb.al:                                            ; preds = %bb.ak
  %i.fj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17, !noalias !922
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1hTjP0dFAwJ_12fontc_crater.exit.i47.i: ; preds = %.body194.i.i.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bd)
          to label %.body200.i.i.i unwind label %bb.cc, !noalias !910

bb.am:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1hTjP0dFAwJ_12fontc_crater.exit.i193.i.i.i, %bb.aj
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %.body194.i.i.i

bb.an:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !918
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0.0134.i, i64 148 ; 2 uses
  %i.fm = load float, ptr %i.fl, align 4, !alias.scope !921, !noalias !922, !noundef !6
  br i1 %.not.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i15164.i, i64 148
  %i.fo = load float, ptr %i.fn, align 4, !alias.scope !923, !noalias !924, !noundef !6
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.sroa.512.0.i.i.i = phi float [ %i.fo, %bb.ao ], [ undef, %bb.an ]
  %.sroa.011.0.i.i.i = phi i32 [ 1, %bb.ao ], [ 0, %bb.an ]
  invoke fastcc void @_RINvNtNtCs1hTjP0dFAwJ_12fontc_crater2ci4html21make_delta_decorationfEB6_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.bb, float noundef %i.fm, i32 noundef %.sroa.011.0.i.i.i, float %.sroa.512.0.i.i.i)
          to label %bb.at unwind label %bb.as

.body188.i.i.i:                                   ; preds = %bb.ex, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1hTjP0dFAwJ_12fontc_crater.exit.i35.i, %bb.as
  %.pn71.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %i.oy, %bb.ex ], [ %i.fr, %bb.as ], [ %.pn71.pn.pn.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1hTjP0dFAwJ_12fontc_crater.exit.i35.i ]
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1hTjP0dFAwJ_12fontc_crater.exit.i41.i unwind label %bb.aq, !noalias !922

bb.aq:                                            ; preds = %.body188.i.i.i
  %i.fp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %.body25.i unwind label %bb.ar, !noalias !922

bb.ar:                                            ; preds = %bb.aq
  %i.fq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17, !noalias !922
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1hTjP0dFAwJ_12fontc_crater.exit.i41.i: ; preds = %.body188.i.i.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %.body194.i.i.i unwind label %bb.cc, !noalias !910

bb.as:                                            ; preds = %bb.ap, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1hTjP0dFAwJ_12fontc_crater.exit.i187.i.i.i
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %.body188.i.i.i

bb.at:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !918
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !918
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !918
  store ptr %i.fl, ptr %i.ay, align 8, !noalias !918
  store ptr @_RNvXs3_NtNtCsf3Ta7LF998c_4core3fmt5floatfNtB7_7Display3fmt, ptr %.sroa.427.0..sroa_idx.i.i.i, align 8, !noalias !918
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.az, ptr noundef nonnull @104, ptr noundef nonnull %i.ay)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1hTjP0dFAwJ_12fontc_crater.exit.i.i.i unwind label %bb.aw, !noalias !922

.body182.i.i.i:                                   ; preds = %bb.ev, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs1hTjP0dFAwJ_12fontc_crater.exit.i29.i, %bb.aw
  %.pn71.pn.pn.i.i.i = phi { ptr, i32 } [ %i.ow, %bb.ev ], [ %i.fu, %bb.aw ], [ %.pn71.pn.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs1hTjP0dFAwJ_12fontc_crater.exit.i29.i ]
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1hTjP0dFAwJ_12fontc_crater.exit.i35.i unwind label %bb.au, !noalias !922

bb.au:                                            ; preds = %.body182.i.i.i
  %i.fs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %.body25.i unwind label %bb.av, !noalias !922

bb.av:                                            ; preds = %bb.au
  %i.ft = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17, !noalias !922
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1hTjP0dFAwJ_12fontc_crater.exit.i35.i: ; preds = %.body182.i.i.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %.body188.i.i.i unwind label %bb.cc, !noalias !910

bb.aw:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs1hTjP0dFAwJ_12fontc_crater.exit.i181.i.i.i, %bb.at
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %.body182.i.i.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1hTjP0dFAwJ_12fontc_crater.exit.i.i.i: ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !918
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false), !noalias !918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !918
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !918
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !918
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !918
  %.sink.in.i.i.i = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 16
  %.sink.i.i.i = load i64, ptr %.sink.in.i.i.i, align 8, !alias.scope !925, !noalias !926, !noundef !6
  %.sink228.in.i.i.i = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 8
  %.sink228.i.i.i = load ptr, ptr %.sink228.in.i.i.i, align 8, !alias.scope !925, !noalias !926, !nonnull !6, !noundef !6
  store ptr %.sink228.i.i.i, ptr %i.av, align 8, !noalias !918, !captures !13
  store i64 %.sink.i.i.i, ptr %i.cz, align 8, !noalias !918
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !918
  store ptr %i.av, ptr %i.au, align 8, !noalias !918
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCs1hTjP0dFAwJ_12fontc_crater, ptr %.sroa.433.0..sroa_idx.i.i.i, align 8, !noalias !918
  store ptr %.sroa.0.0134.i, ptr %i.da, align 8, !noalias !918
  store ptr @_RNvXsq_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.437.0..sroa_idx.i.i.i, align 8, !noalias !918
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aw, ptr noundef nonnull @105, ptr noundef nonnull %i.au)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1hTjP0dFAwJ_12fontc_crater.exit86.i.i.i unwind label %bb.az, !noalias !922

.body176.i.i.i:                                   ; preds = %bb.et, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs1hTjP0dFAwJ_12fontc_crater.exit.i.i, %bb.az
  %.pn71.pn.i.i.i = phi { ptr, i32 } [ %i.ou, %bb.et ], [ %i.fx, %bb.az ], [ %.pn71.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs1hTjP0dFAwJ_12fontc_crater.exit.i.i ]
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs1hTjP0dFAwJ_12fontc_crater.exit.i29.i unwind label %bb.ax, !noalias !922

bb.ax:                                            ; preds = %.body176.i.i.i
  %i.fv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %.body25.i unwind label %bb.ay, !noalias !922

bb.ay:                                            ; preds = %bb.ax
  %i.fw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17, !noalias !922
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs1hTjP0dFAwJ_12fontc_crater.exit.i29.i: ; preds = %.body176.i.i.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %.body182.i.i.i unwind label %bb.cc, !noalias !910

bb.az:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs1hTjP0dFAwJ_12fontc_crater.exit.i175.i.i.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1hTjP0dFAwJ_12fontc_crater.exit.i.i.i
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %.body176.i.i.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1hTjP0dFAwJ_12fontc_crater.exit86.i.i.i: ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1hTjP0dFAwJ_12fontc_crater.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !918
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 24, i1 false), !noalias !918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !918
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.0.0134.i, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8, !alias.scope !921, !noalias !922, !nonnull !6, !noundef !6 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.0.0134.i, i64 16
  %i.gb = load i64, ptr %i.ga, align 8, !alias.scope !921, !noalias !922, !noundef !6 ; 3 uses
  %i.gc = icmp ult i64 %i.gb, 17
  br i1 %i.gc, label %bb.bd, label %bb.ba

bb.ba:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1hTjP0dFAwJ_12fontc_crater.exit86.i.i.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.ge = load i8, ptr %i.gd, align 1, !alias.scope !927, !noalias !922, !noundef !6
  %i.gf = icmp sgt i8 %i.ge, -65
  %i.gg = select i1 %i.gf, i64 16, i64 %i.gb
  br label %bb.bd

.body171.i.i.i:                                   ; preds = %bb.er, %.body168.i.i.i, %bb.ch, %bb.bj, %.loopexit.split-lp82.i, %.loopexit81.i
  %.pn71.i.i.i = phi { ptr, i32 } [ %i.gp, %bb.bj ], [ %.pn68.pn.i.i.i, %.body168.i.i.i ], [ %i.iv, %bb.ch ], [ %i.os, %bb.er ], [ %lpad.loopexit83.i, %.loopexit81.i ], [ %lpad.loopexit.split-lp84.i, %.loopexit.split-lp82.i ]
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs1hTjP0dFAwJ_12fontc_crater.exit.i.i unwind label %bb.bb, !noalias !922

bb.bb:                                            ; preds = %.body171.i.i.i
  %i.gh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %.body25.i unwind label %bb.bc, !noalias !922

bb.bc:                                            ; preds = %bb.bb
  %i.gi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17, !noalias !922
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs1hTjP0dFAwJ_12fontc_crater.exit.i.i: ; preds = %.body171.i.i.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %.body176.i.i.i unwind label %bb.cc, !noalias !910

.loopexit81.i:                                    ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1hTjP0dFAwJ_12fontc_crater.exit.i.i.i.i, %bb.bf, %bb.be
  %lpad.loopexit83.i = landingpad { ptr, i32 }
          cleanup
  br label %.body171.i.i.i

.loopexit.split-lp82.i:                           ; preds = %.invoke.i.i.i
  %lpad.loopexit.split-lp84.i = landingpad { ptr, i32 }
          cleanup
  br label %.body171.i.i.i

bb.bd:                                            ; preds = %bb.ba, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1hTjP0dFAwJ_12fontc_crater.exit86.i.i.i
  %.sroa.01.0.in.i.i.i.i = phi i64 [ %i.gg, %bb.ba ], [ %i.gb, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1hTjP0dFAwJ_12fontc_crater.exit86.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !918
  br i1 %8, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !918
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !918
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ah, i64 noundef 258, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bg unwind label %.loopexit81.i, !noalias !922

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !918
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !918
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ai, i64 noundef 408, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ce unwind label %.loopexit81.i, !noalias !922

bb.bg:                                            ; preds = %bb.be
  %i.gj = load i64, ptr %i.ah, align 8, !range !5, !noalias !918, !noundef !6
  %i.gk = trunc nuw i64 %i.gj to i1
  %i.gl = load i64, ptr %i.db, align 8, !range !10, !noalias !918, !noundef !6 ; 3 uses
  br i1 %i.gk, label %bb.bh, label %bb.bi, !prof !11

bb.bh:                                            ; preds = %bb.bg
  %i.gm = load i64, ptr %i.dc, align 8, !noalias !918
  br label %.invoke.i.i.i

bb.bi:                                            ; preds = %bb.bg
  %i.gn = load ptr, ptr %i.dc, align 8, !noalias !918, !nonnull !6, !noundef !6
  %i.go = icmp samesign ugt i64 %i.gl, 257
  call void @llvm.assume(i1 %i.go)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !918
  store i64 %i.gl, ptr %i.ar, align 8, !noalias !918
  store ptr %i.gn, ptr %.sroa.444.0..sroa_idx.i.i.i, align 8, !noalias !918
  store i64 0, ptr %.sroa.545.0..sroa_idx.i.i.i, align 8, !noalias !918
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ar, i64 noundef 22)
          to label %bb.bk unwind label %bb.bj, !noalias !922

bb.bj:                                            ; preds = %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bi
  %i.gp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ar) #18
          to label %.body171.i.i.i unwind label %bb.cc, !noalias !922

bb.bk:                                            ; preds = %bb.bi
  %i.gq = load i64, ptr %.sroa.545.0..sroa_idx.i.i.i, align 8, !alias.scope !928, !noalias !918, !noundef !6 ; 2 uses
  %i.gr = icmp sgt i64 %i.gq, -1
  call void @llvm.assume(i1 %i.gr)
  %i.gs = load ptr, ptr %.sroa.444.0..sroa_idx.i.i.i, align 8, !alias.scope !928, !noalias !918, !nonnull !6, !noundef !6
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.gq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.gt, ptr noundef nonnull align 1 dereferenceable(22) @106, i64 22, i1 false), !noalias !922
  %.pre.i.i.i.i = load i64, ptr %.sroa.545.0..sroa_idx.i.i.i, align 8, !alias.scope !928, !noalias !918
  %i.gu = add i64 %.pre.i.i.i.i, 22
  store i64 %i.gu, ptr %.sroa.545.0..sroa_idx.i.i.i, align 8, !alias.scope !928, !noalias !918
  invoke void @_RNvXsn_Cs7SPl5Nayu5l_4maudmNtB5_6Render9render_to(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ej, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %bb.bl unwind label %bb.bj, !noalias !922

bb.bl:                                            ; preds = %bb.bk
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ar, i64 noundef 1)
          to label %bb.bm unwind label %bb.bj, !noalias !922

bb.bm:                                            ; preds = %bb.bl
  %i.gv = load i64, ptr %.sroa.545.0..sroa_idx.i.i.i, align 8, !alias.scope !929, !noalias !918, !noundef !6 ; 2 uses
  %i.gw = icmp sgt i64 %i.gv, -1
  call void @llvm.assume(i1 %i.gw)
  %i.gx = load ptr, ptr %.sroa.444.0..sroa_idx.i.i.i, align 8, !alias.scope !929, !noalias !918, !nonnull !6, !noundef !6
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.gv
  store i8 32, ptr %i.gy, align 1, !noalias !922
  %.pre.i87.i.i.i = load i64, ptr %.sroa.545.0..sroa_idx.i.i.i, align 8, !alias.scope !929, !noalias !918
  %i.gz = add i64 %.pre.i87.i.i.i, 1
  store i64 %i.gz, ptr %.sroa.545.0..sroa_idx.i.i.i, align 8, !alias.scope !929, !noalias !918
  invoke void @_RNvXs8_Cs7SPl5Nayu5l_4maudINtB5_10PreEscapedNtNtCsgCecv3eZDcN_5alloc6string6StringENtB5_6Render9render_toCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bf, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %bb.bn unwind label %bb.bj, !noalias !922

bb.bn:                                            ; preds = %bb.bm
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ar, i64 noundef 30)
          to label %bb.bo unwind label %bb.bj, !noalias !922

bb.bo:                                            ; preds = %bb.bn
  %i.ha = load i64, ptr %.sroa.545.0..sroa_idx.i.i.i, align 8, !alias.scope !930, !noalias !918, !noundef !6 ; 3 uses
  %i.hb = icmp sgt i64 %i.ha, -1
  call void @llvm.assume(i1 %i.hb)
  %i.hc = load ptr, ptr %.sroa.444.0..sroa_idx.i.i.i, align 8, !alias.scope !930, !noalias !918, !nonnull !6, !noundef !6
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.ha
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.hd, ptr noundef nonnull align 1 dereferenceable(30) @107, i64 30, i1 false), !noalias !922
  %i.he = add nuw i64 %i.ha, 30
  store i64 %i.he, ptr %.sroa.545.0..sroa_idx.i.i.i, align 8, !alias.scope !930, !noalias !918
  invoke void @_RNvXsn_Cs7SPl5Nayu5l_4maudmNtB5_6Render9render_to(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.eq, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %bb.bp unwind label %bb.bj, !noalias !922

bb.bp:                                            ; preds = %bb.bo
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ar, i64 noundef 1)
          to label %bb.bq unwind label %bb.bj, !noalias !922

bb.bq:                                            ; preds = %bb.bp
  %i.hf = load i64, ptr %.sroa.545.0..sroa_idx.i.i.i, align 8, !alias.scope !931, !noalias !918, !noundef !6 ; 2 uses
  %i.hg = icmp sgt i64 %i.hf, -1
  call void @llvm.assume(i1 %i.hg)
  %i.hh = load ptr, ptr %.sroa.444.0..sroa_idx.i.i.i, align 8, !alias.scope !931, !noalias !918, !nonnull !6, !noundef !6
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hf
  store i8 32, ptr %i.hi, align 1, !noalias !922
  %.pre.i91.i.i.i = load i64, ptr %.sroa.545.0..sroa_idx.i.i.i, align 8, !alias.scope !931, !noalias !918
  %i.hj = add i64 %.pre.i91.i.i.i, 1
  store i64 %i.hj, ptr %.sroa.545.0..sroa_idx.i.i.i, align 8, !alias.scope !931, !noalias !918
  invoke void @_RNvXs8_Cs7SPl5Nayu5l_4maudINtB5_10PreEscapedNtNtCsgCecv3eZDcN_5alloc6string6StringENtB5_6Render9render_toCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.be, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %bb.br unwind label %bb.bj, !noalias !922

bb.br:                                            ; preds = %bb.bq
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ar, i64 noundef 26)
          to label %bb.bs unwind label %bb.bj, !noalias !922

bb.bs:                                            ; preds = %bb.br
  %i.hk = load i64, ptr %.sroa.545.0..sroa_idx.i.i.i, align 8, !alias.scope !932, !noalias !918, !noundef !6 ; 3 uses
  %i.hl = icmp sgt i64 %i.hk, -1
  call void @llvm.assume(i1 %i.hl)
  %i.hm = load ptr, ptr %.sroa.444.0..sroa_idx.i.i.i, align 8, !alias.scope !932, !noalias !918, !nonnull !6, !noundef !6
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.hk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.hn, ptr noundef nonnull align 1 dereferenceable(26) @108, i64 26, i1 false), !noalias !922
  %i.ho = add nuw i64 %i.hk, 26
  store i64 %i.ho, ptr %.sroa.545.0..sroa_idx.i.i.i, align 8, !alias.scope !932, !noalias !918
  invoke void @_RNvXsn_Cs7SPl5Nayu5l_4maudmNtB5_6Render9render_to(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ex, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %bb.bt unwind label %bb.bj, !noalias !922

bb.bt:                                            ; preds = %bb.bs
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ar, i64 noundef 1)
          to label %bb.bu unwind label %bb.bj, !noalias !922

bb.bu:                                            ; preds = %bb.bt
  %i.hp = load i64, ptr %.sroa.545.0..sroa_idx.i.i.i, align 8, !alias.scope !933, !noalias !918, !noundef !6 ; 2 uses
  %i.hq = icmp sgt i64 %i.hp, -1
  call void @llvm.assume(i1 %i.hq)
  %i.hr = load ptr, ptr %.sroa.444.0..sroa_idx.i.i.i, align 8, !alias.scope !933, !noalias !918, !nonnull !6, !noundef !6
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 %i.hp
  store i8 32, ptr %i.hs, align 1, !noalias !922
  %.pre.i95.i.i.i = load i64, ptr %.sroa.545.0..sroa_idx.i.i.i, align 8, !alias.scope !933, !noalias !918
  %i.ht = add i64 %.pre.i95.i.i.i, 1
  store i64 %i.ht, ptr %.sroa.545.0..sroa_idx.i.i.i, align 8, !alias.scope !933, !noalias !918
  invoke void @_RNvXs8_Cs7SPl5Nayu5l_4maudINtB5_10PreEscapedNtNtCsgCecv3eZDcN_5alloc6string6StringENtB5_6Render9render_toCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bd, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %bb.bv unwind label %bb.bj, !noalias !922

bb.bv:                                            ; preds = %bb.bu
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ar, i64 noundef 27)
          to label %bb.bw unwind label %bb.bj, !noalias !922

bb.bw:                                            ; preds = %bb.bv
  %i.hu = load i64, ptr %.sroa.545.0..sroa_idx.i.i.i, align 8, !alias.scope !934, !noalias !918, !noundef !6 ; 3 uses
  %i.hv = icmp sgt i64 %i.hu, -1
  call void @llvm.assume(i1 %i.hv)
  %i.hw = load ptr, ptr %.sroa.444.0..sroa_idx.i.i.i, align 8, !alias.scope !934, !noalias !918, !nonnull !6, !noundef !6
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.hu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.hx, ptr noundef nonnull align 1 dereferenceable(27) @109, i64 27, i1 false), !noalias !922
  %i.hy = add nuw i64 %i.hu, 27
  store i64 %i.hy, ptr %.sroa.545.0..sroa_idx.i.i.i, align 8, !alias.scope !934, !noalias !918
  invoke void @_RNvXsn_Cs7SPl5Nayu5l_4maudmNtB5_6Render9render_to(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.fe, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %bb.bx unwind label %bb.bj, !noalias !922

bb.bx:                                            ; preds = %bb.bw
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ar, i64 noundef 1)
          to label %bb.by unwind label %bb.bj, !noalias !922

bb.by:                                            ; preds = %bb.bx
  %i.hz = load i64, ptr %.sroa.545.0..sroa_idx.i.i.i, align 8, !alias.scope !935, !noalias !918, !noundef !6 ; 2 uses
  %i.ia = icmp sgt i64 %i.hz, -1
  call void @llvm.assume(i1 %i.ia)
  %i.ib = load ptr, ptr %.sroa.444.0..sroa_idx.i.i.i, align 8, !alias.scope !935, !noalias !918, !nonnull !6, !noundef !6
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.hz
  store i8 32, ptr %i.ic, align 1, !noalias !922
  %.pre.i99.i.i.i = load i64, ptr %.sroa.545.0..sroa_idx.i.i.i, align 8, !alias.scope !935, !noalias !918
  %i.id = add i64 %.pre.i99.i.i.i, 1
  store i64 %i.id, ptr %.sroa.545.0..sroa_idx.i.i.i, align 8, !alias.scope !935, !noalias !918
  invoke void @_RNvXs8_Cs7SPl5Nayu5l_4maudINtB5_10PreEscapedNtNtCsgCecv3eZDcN_5alloc6string6StringENtB5_6Render9render_toCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bc, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %bb.bz unwind label %bb.bj, !noalias !922

bb.bz:                                            ; preds = %bb.by
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ar, i64 noundef 5)
          to label %bb.ca unwind label %bb.bj, !noalias !922

bb.ca:                                            ; preds = %bb.bz
  %i.ie = load i64, ptr %.sroa.545.0..sroa_idx.i.i.i, align 8, !alias.scope !936, !noalias !918, !noundef !6 ; 2 uses
  %i.if = icmp sgt i64 %i.ie, -1
  call void @llvm.assume(i1 %i.if)
  %i.ig = load ptr, ptr %.sroa.444.0..sroa_idx.i.i.i, align 8, !alias.scope !936, !noalias !918, !nonnull !6, !noundef !6
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.ie
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.ih, ptr noundef nonnull align 1 dereferenceable(5) @83, i64 5, i1 false), !noalias !922
  %.pre.i101.i.i.i = load i64, ptr %.sroa.545.0..sroa_idx.i.i.i, align 8, !alias.scope !936, !noalias !918
  %i.ii = add i64 %.pre.i101.i.i.i, 5
  store i64 %i.ii, ptr %.sroa.545.0..sroa_idx.i.i.i, align 8, !alias.scope !936, !noalias !918
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false), !noalias !918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !918
  br label %bb.cb

bb.cb:                                            ; preds = %bb.cy, %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !918
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.0.0134.i, i64 108 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.0.0134.i, i64 96 ; 2 uses
  %i.il = invoke { i64, i32 } @_RNvMNtNtCsiaiXH4eeXUJ_6chrono5naive8datetimeNtB2_13NaiveDateTime21signed_duration_since(ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.ij, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.ik)
          to label %_RINvMNtCsiaiXH4eeXUJ_6chrono8datetimeINtB3_8DateTimeNtNtNtB5_6offset3utc3UtcE21signed_duration_sinceBO_Bz_ECs1hTjP0dFAwJ_12fontc_crater.exit.i.i.i unwind label %bb.cz, !noalias !922 ; 2 uses

bb.cc:                                            ; preds = %bb.dn, %.body.i.i.i, %bb.db, %.body168.i.i.i, %bb.ch, %bb.bj, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs1hTjP0dFAwJ_12fontc_crater.exit.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs1hTjP0dFAwJ_12fontc_crater.exit.i29.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1hTjP0dFAwJ_12fontc_crater.exit.i35.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1hTjP0dFAwJ_12fontc_crater.exit.i41.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1hTjP0dFAwJ_12fontc_crater.exit.i47.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1hTjP0dFAwJ_12fontc_crater.exit.i53.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1hTjP0dFAwJ_12fontc_crater.exit.i59.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1hTjP0dFAwJ_12fontc_crater.exit.i65.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1hTjP0dFAwJ_12fontc_crater.exit.i71.i
  %i.im = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body25.i

.body25.i:                                        ; preds = %bb.cc, %bb.bb, %bb.ax, %bb.au, %bb.aq, %bb.ak, %bb.ae, %bb.y, %bb.s, %bb.m
end_hunk_1
