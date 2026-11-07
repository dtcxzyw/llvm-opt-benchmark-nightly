Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontc_crater.fontc_crater.f024a1d66527347-cgu.02?download=true
inline.NumInlined: 583
inline.NumDeleted: 199
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtNtCs1hTjP0dFAwJ_12fontc_crater2ci4html8generate:bb.a
  %i.by = icmp ult i64 %i.bx, 52405522936674863
  call void @llvm.assume(i1 %i.by)
  %.idx.i = mul nuw nsw i64 %i.bx, 176
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.idx.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !739
  store ptr %i.bu, ptr %i.e, align 8, !noalias !739
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr %i.bu, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !739
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.bv, ptr %.sroa.57.0..sroa_idx.i, align 8, !noalias !739
  %.sroa.68.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  store ptr %i.bz, ptr %.sroa.68.0..sroa_idx.i, align 8, !noalias !739
  %i.ca = icmp eq i64 %i.bx, 0
  br i1 %i.ca, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtNtB11_2ci4html10AnnotationEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB11_.exit.thread.i, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtNtB11_2ci4html10AnnotationEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB11_.exit.lr.ph.i

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtNtB11_2ci4html10AnnotationEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB11_.exit.lr.ph.i: ; preds = %bb.v
  %.sroa.7.0..sroa_idx131.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtNtB11_2ci4html10AnnotationEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB11_.exit.i

.body.i:                                          ; preds = %bb.ad, %bb.aa
  %.pn.i = phi { ptr, i32 } [ %i.cs, %bb.ad ], [ %i.cj, %bb.aa ]
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtNtB11_2ci4html10AnnotationEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtNtB1u_2ci4html10AnnotationEEEB1u_.exit.i unwind label %bb.ae, !noalias !740

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtNtB11_2ci4html10AnnotationEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB11_.exit.i: ; preds = %bb.ac, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtNtB11_2ci4html10AnnotationEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB11_.exit.lr.ph.i
  %i.cb = phi ptr [ %i.bu, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtNtB11_2ci4html10AnnotationEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB11_.exit.lr.ph.i ], [ %i.cq, %bb.ac ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !741)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 176
  store ptr %i.cc, ptr %.sroa.46.0..sroa_idx.i, align 8, !alias.scope !741, !noalias !739
  %.sroa.0.0.copyload.i = load i64, ptr %i.cb, align 8, !noalias !742 ; 2 uses
  %.not126.i = icmp eq i64 %.sroa.0.0.copyload.i, -1
  br i1 %.not126.i, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtNtB11_2ci4html10AnnotationEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB11_.exit.thread.i, label %bb.w

bb.w:                                             ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtNtB11_2ci4html10AnnotationEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB11_.exit.i
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !739
  store i64 %.sroa.0.0.copyload.i, ptr %i.d, align 8, !noalias !739
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.7.0..sroa_idx131.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.7.0..sroa_idx.i, i64 96, i1 false), !noalias !740
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !739
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.cd, i64 72, i1 false), !noalias !740
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !739
  invoke void @_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtNtBb_3vec3VecNtNtNtB1b_2ci4html10AnnotationEE5entryB1b_(ptr noalias nofree noundef nonnull sret([136 x i8]) align 8 captures(none) dereferenceable(136) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(104) %i.d)
          to label %bb.x unwind label %bb.ad, !noalias !740

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtNtB11_2ci4html10AnnotationEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB11_.exit.thread.i: ; preds = %bb.ac, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtNtB11_2ci4html10AnnotationEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB11_.exit.i, %bb.v
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtNtB11_2ci4html10AnnotationEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %bb.ah unwind label %bb.u, !noalias !740

bb.x:                                             ; preds = %bb.w
  %i.ce = invoke noundef nonnull align 8 ptr @_RNvMs3_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB5_5EntryNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtNtBd_3vec3VecNtNtNtB1g_2ci4html10AnnotationEE10or_defaultB1g_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %i.b)
          to label %bb.y unwind label %bb.ad, !noalias !740 ; 4 uses

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !739
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !739
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false), !noalias !739
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !alias.scope !743, !noalias !740, !noundef !6 ; 3 uses
  %i.ch = load i64, ptr %i.ce, align 8, !range !15, !alias.scope !743, !noalias !740, !noundef !6
  %i.ci = icmp eq i64 %i.cg, %i.ch
  br i1 %i.ci, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1hTjP0dFAwJ_12fontc_crater2ci4html10AnnotationE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ce)
          to label %bb.ac unwind label %bb.aa, !noalias !744

bb.aa:                                            ; preds = %bb.z
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1hTjP0dFAwJ_12fontc_crater2ci4html10AnnotationEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #18
          to label %.body.i unwind label %bb.ab, !noalias !740

bb.ab:                                            ; preds = %bb.aa
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17, !noalias !740
  unreachable

bb.ac:                                            ; preds = %bb.z, %bb.y
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !alias.scope !743, !noalias !740, !nonnull !6, !noundef !6
  %i.cn = getelementptr inbounds nuw [72 x i8], ptr %i.cm, i64 %i.cg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cn, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false), !noalias !740
  %i.co = add i64 %i.cg, 1
  store i64 %i.co, ptr %i.cf, align 8, !alias.scope !743, !noalias !740
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !739
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !739
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !739
  %i.cp = load ptr, ptr %.sroa.68.0..sroa_idx.i, align 8, !alias.scope !745, !noalias !739, !nonnull !6, !noundef !6
  %i.cq = load ptr, ptr %.sroa.46.0..sroa_idx.i, align 8, !alias.scope !745, !noalias !739, !nonnull !6, !noundef !6 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.cp
  br i1 %i.cr, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtNtB11_2ci4html10AnnotationEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB11_.exit.thread.i, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtNtB11_2ci4html10AnnotationEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB11_.exit.i

bb.ad:                                            ; preds = %bb.x, %bb.w
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1hTjP0dFAwJ_12fontc_crater2ci4html10AnnotationEBH_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.c) #18
          to label %.body.i unwind label %bb.ae, !noalias !740

bb.ae:                                            ; preds = %bb.ad, %.body.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtNtB1u_2ci4html10AnnotationEEEB1u_.exit.i
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17, !noalias !740
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !739
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i, i64 24, i1 false), !noalias !746
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !739
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.625, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.484.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.625, i64 24, i1 false)
  store i64 %i.bl, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.625)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtNtBK_3vec3VecNtNtNtB1E_2ci4html10AnnotationEEEB1E_.exit134

bb.ah:                                            ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtNtB11_2ci4html10AnnotationEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB11_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !739
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !739
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !739
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
  %i.ec = load i64, ptr %i.k, align 8, !range !738, !noundef !6 ; 2 uses
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
          to label %bb.bn unwind label %bb.bm

bb.bl:                                            ; preds = %bb.bo, %bb.bm
  %.pn = phi { ptr, i32 } [ %i.ee, %bb.bm ], [ %i.en, %bb.bo ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l) #18
          to label %bb.bg unwind label %bb.cb

bb.bm:                                            ; preds = %bb.bp, %bb.bk
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bn:                                            ; preds = %bb.bk
  %i.ef = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !nonnull !6, !noundef !6
  %i.eh = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ei = load i64, ptr %i.eh, align 8, !noundef !6
  %i.ej = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !nonnull !6, !noundef !6
  %i.el = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.em = load i64, ptr %i.el, align 8, !noundef !6
  invoke void @_RNvCs1hTjP0dFAwJ_12fontc_crater13try_write_str(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eg, i64 noundef %i.ei, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ek, i64 noundef %i.em)
          to label %bb.bp unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.en = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #18
          to label %bb.bl unwind label %bb.cb

bb.bp:                                            ; preds = %bb.bn
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j)
          to label %bb.bq unwind label %bb.bm

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.br unwind label %bb.bh

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtCs1hTjP0dFAwJ_12fontc_crater7ResultsNtNtB10_15ttx_diff_runner10DiffOutputNtB1C_9DiffErrorEEEB10_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.u)
          to label %bb.bu unwind label %bb.bt

bb.bs:                                            ; preds = %bb.bt, %bb.bg
  %.pn107 = phi { ptr, i32 } [ %i.eo, %bb.bt ], [ %.pn105, %bb.bg ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCs1hTjP0dFAwJ_12fontc_crater7ResultsNtNtBE_15ttx_diff_runner10DiffOutputNtB1g_9DiffErrorEEBE_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.v) #18
          to label %bb.am unwind label %bb.cb

bb.bt:                                            ; preds = %bb.br, %bb.bj
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.bu:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCs1hTjP0dFAwJ_12fontc_crater7ResultsNtNtBE_15ttx_diff_runner10DiffOutputNtB1g_9DiffErrorEEBE_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.v)
          to label %bb.bv unwind label %bb.an

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtNtB8_3vec3VecNtNtNtB18_2ci4html10AnnotationEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtNtBK_3vec3VecNtNtNtB1E_2ci4html10AnnotationEEEB1E_.exit128 unwind label %bb.af

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtNtBK_3vec3VecNtNtNtB1E_2ci4html10AnnotationEEEB1E_.exit128: ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringB14_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringB1A_EECs1hTjP0dFAwJ_12fontc_crater.exit130 unwind label %bb.p

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringB1A_EECs1hTjP0dFAwJ_12fontc_crater.exit130: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtNtBK_3vec3VecNtNtNtB1E_2ci4html10AnnotationEEEB1E_.exit128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtB8_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtBK_6string6StringEECs1hTjP0dFAwJ_12fontc_crater.exit132 unwind label %bb.l

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtBK_6string6StringEECs1hTjP0dFAwJ_12fontc_crater.exit132: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringB1A_EECs1hTjP0dFAwJ_12fontc_crater.exit130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ab)
          to label %bb.bw unwind label %bb.j

bb.bw:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtBK_6string6StringEECs1hTjP0dFAwJ_12fontc_crater.exit132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ac)
          to label %bb.bx unwind label %bb.h

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ad)
          to label %bb.by unwind label %bb.f

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs1hTjP0dFAwJ_12fontc_crater2ci10RunSummaryEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.af)
          to label %bb.bz unwind label %bb.b

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ag)
  br label %bb.ca

bb.ca:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs1hTjP0dFAwJ_12fontc_crater.exit159, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  ret void

bb.cb:                                            ; preds = %bb.am, %.body, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringB1A_EECs1hTjP0dFAwJ_12fontc_crater.exit, %bb.bc, %bb.bs, %bb.bo, %bb.bl, %bb.bg, %bb.aw, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtBK_6string6StringEECs1hTjP0dFAwJ_12fontc_crater.exit, %.body139, %.body144, %.body150, %.body155
  %i.ep = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.cc:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCs1hTjP0dFAwJ_12fontc_crater7ResultsNtNtBE_15ttx_diff_runner10DiffOutputNtB1g_9DiffErrorEEBE_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.v)
          to label %bb.cd unwind label %bb.an

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.ce

bb.ce:                                            ; preds = %bb.ap, %bb.cf, %bb.cd
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtNtB8_3vec3VecNtNtNtB18_2ci4html10AnnotationEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtNtBK_3vec3VecNtNtNtB1E_2ci4html10AnnotationEEEB1E_.exit134 unwind label %bb.af

bb.cf:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.ce

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtNtBK_3vec3VecNtNtNtB1E_2ci4html10AnnotationEEEB1E_.exit134: ; preds = %bb.ce, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringB14_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringB1A_EECs1hTjP0dFAwJ_12fontc_crater.exit136 unwind label %bb.p

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringB1A_EECs1hTjP0dFAwJ_12fontc_crater.exit136: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtNtBK_3vec3VecNtNtNtB1E_2ci4html10AnnotationEEEB1E_.exit134, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtB8_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtBK_6string6StringEECs1hTjP0dFAwJ_12fontc_crater.exit138 unwind label %bb.l

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtBK_6string6StringEECs1hTjP0dFAwJ_12fontc_crater.exit138: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringB1A_EECs1hTjP0dFAwJ_12fontc_crater.exit136, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECs1hTjP0dFAwJ_12fontc_crater.exit.i unwind label %bb.cg

bb.cg:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtBK_6string6StringEECs1hTjP0dFAwJ_12fontc_crater.exit138
  %i.eq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %.body139 unwind label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECs1hTjP0dFAwJ_12fontc_crater.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtBK_6string6StringEECs1hTjP0dFAwJ_12fontc_crater.exit138
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs1hTjP0dFAwJ_12fontc_crater.exit unwind label %bb.j

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs1hTjP0dFAwJ_12fontc_crater.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECs1hTjP0dFAwJ_12fontc_crater.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECs1hTjP0dFAwJ_12fontc_crater.exit.i143 unwind label %bb.ci

end_hunk_0
