Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fea_rs-7e8d4fc46e030f62.fea_rs.95f468ebf2e10b87-cgu.09?download=true
inline.NumInlined: 237
inline.NumDeleted: 131
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4debgNtB2_11DebgBuilder5build:bb.a
  %.pre.i68 = load i64, ptr %.sroa.510.0..sroa_idx, align 8, !alias.scope !392
  %i.at = add i64 %.pre.i68, 2
  store i64 %i.at, ptr %.sroa.510.0..sroa_idx, align 8, !alias.scope !392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECscScJTt9VrQp_6fea_rs.exit unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.thread82 unwind label %bb.q

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECscScJTt9VrQp_6fea_rs.exit: ; preds = %bb.o
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.q:                                             ; preds = %bb.p
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.r:                                             ; preds = %.thread79, %bb.k, %.body64, %bb.c
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22
  unreachable

.thread82:                                        ; preds = %bb.p, %.thread79
  %.pn5477 = phi { ptr, i32 } [ %.pn5478, %.thread79 ], [ %i.au, %bb.p ]
  resume { ptr, i32 } %.pn5477

.thread79:                                        ; preds = %bb.c, %.body64, %bb.e, %.thread86
  %.pn5478 = phi { ptr, i32 } [ %i.t, %bb.e ], [ %lpad.thr_comm, %.thread86 ], [ %i.q, %bb.c ], [ %.pn, %.body64 ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #24
          to label %.thread82 unwind label %bb.r
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_RNvMs0_NtCscScJTt9VrQp_6fea_rs10diagnosticNtB5_13DiagnosticSet10has_errors(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 2 uses
  %.idx = mul nuw nsw i64 %i.d, 48
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.not.not.not.i.not.not.not1.not = icmp eq i64 %i.d, 0
  br i1 %.not.not.not.i.not.not.not1.not, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs0_BS_NtBS_13DiagnosticSet10has_errors0EBU_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %bb.a
  %i.f = phi ptr [ %i.i, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 40
  %.val.i = load i8, ptr %i.g, align 8, !range !11, !noalias !395, !noundef !5
  %i.h = icmp eq i8 %.val.i, 0                    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  %.not.not.not.i.not.not.not.not = icmp eq ptr %i.i, %i.e
  %or.cond = select i1 %i.h, i1 true, i1 %.not.not.not.i.not.not.not.not
  br i1 %or.cond, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs0_BS_NtBS_13DiagnosticSet10has_errors0EBU_.exit, label %.lr.ph

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs0_BS_NtBS_13DiagnosticSet10has_errors0EBU_.exit: ; preds = %.lr.ph, %bb.a
  %.not.not.not.i.not.not.not.lcssa = phi i1 [ false, %bb.a ], [ %i.h, %.lr.ph ]
  ret i1 %.not.not.not.i.not.not.not.lcssa
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtCscScJTt9VrQp_6fea_rs10diagnosticNtB5_13DiagnosticSet16discard_warnings(ptr noalias nofree noundef align 8 dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  tail call void @_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticE6retainNCNvMs0_BH_NtBH_13DiagnosticSet16discard_warnings0EBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtCscScJTt9VrQp_6fea_rs10diagnosticNtB5_13DiagnosticSet18split_off_warnings(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !5 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !403
  store ptr %i.a, ptr %i.c, align 8, !noalias !403
  %i.h = icmp samesign ult i64 %i.g, 2
  br i1 %i.h, label %_RINvMNtCsf3Ta7LF998c_4core5sliceSNtNtCscScJTt9VrQp_6fea_rs10diagnostic10Diagnostic20sort_unstable_by_keyNtBx_5LevelNCNvMs0_Bx_NtBx_13DiagnosticSet18split_off_warnings0EBz_.exit, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %i.g, 21
  br i1 %i.i, label %bb.d, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  call void @_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable7ipnsortNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvMB6_SBT_20sort_unstable_by_keyNtBV_5LevelNCNvMs0_BV_NtBV_13DiagnosticSet18split_off_warnings0E0EBX_(ptr noalias nofree noundef nonnull align 8 %i.e, i64 noundef range(i64 0, 192153584101141163) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #26
  br label %_RINvMNtCsf3Ta7LF998c_4core5sliceSNtNtCscScJTt9VrQp_6fea_rs10diagnostic10Diagnostic20sort_unstable_by_keyNtBx_5LevelNCNvMs0_Bx_NtBx_13DiagnosticSet18split_off_warnings0EBz_.exit.thread

bb.d:                                             ; preds = %bb.b
  call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvMB8_SB1m_20sort_unstable_by_keyNtB1o_5LevelNCNvMs0_B1o_NtB1o_13DiagnosticSet18split_off_warnings0E0EB1q_(ptr noalias nofree noundef nonnull align 8 %i.e, i64 noundef range(i64 0, 192153584101141163) %i.g, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %_RINvMNtCsf3Ta7LF998c_4core5sliceSNtNtCscScJTt9VrQp_6fea_rs10diagnostic10Diagnostic20sort_unstable_by_keyNtBx_5LevelNCNvMs0_Bx_NtBx_13DiagnosticSet18split_off_warnings0EBz_.exit.thread

_RINvMNtCsf3Ta7LF998c_4core5sliceSNtNtCscScJTt9VrQp_6fea_rs10diagnostic10Diagnostic20sort_unstable_by_keyNtBx_5LevelNCNvMs0_Bx_NtBx_13DiagnosticSet18split_off_warnings0EBz_.exit.thread: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !403
  br label %.lr.ph.i.preheader

_RINvMNtCsf3Ta7LF998c_4core5sliceSNtNtCscScJTt9VrQp_6fea_rs10diagnostic10Diagnostic20sort_unstable_by_keyNtBx_5LevelNCNvMs0_Bx_NtBx_13DiagnosticSet18split_off_warnings0EBz_.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !403
  %i.j = icmp eq i64 %i.g, 0
  br i1 %i.j, label %.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_RINvMNtCsf3Ta7LF998c_4core5sliceSNtNtCscScJTt9VrQp_6fea_rs10diagnostic10Diagnostic20sort_unstable_by_keyNtBx_5LevelNCNvMs0_Bx_NtBx_13DiagnosticSet18split_off_warnings0EBz_.exit.thread, %_RINvMNtCsf3Ta7LF998c_4core5sliceSNtNtCscScJTt9VrQp_6fea_rs10diagnostic10Diagnostic20sort_unstable_by_keyNtBx_5LevelNCNvMs0_Bx_NtBx_13DiagnosticSet18split_off_warnings0EBz_.exit
  %.idx12.pn = mul nuw nsw i64 %i.g, 48
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx12.pn
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.e
  %.sroa.02.07.i = phi i64 [ %i.o, %bb.e ], [ 0, %.lr.ph.i.preheader ] ; 5 uses
  %i.l = phi ptr [ %i.n, %bb.e ], [ %i.e, %.lr.ph.i.preheader ] ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 40
  %.val.i = load i8, ptr %i.m, align 8, !range !11, !noalias !404, !noundef !5
  %.not.i = icmp eq i8 %.val.i, 0
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 2 uses
  %i.o = add nuw nsw i64 %.sroa.02.07.i, 1
  %i.p = icmp eq ptr %i.n, %i.k
  br i1 %i.p, label %.loopexit, label %.lr.ph.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.q = icmp samesign ult i64 %.sroa.02.07.i, %i.g
  call void @llvm.assume(i1 %i.q)
  call void @llvm.experimental.noalias.scope.decl(metadata !405)
  %i.r = icmp ult i64 %i.g, 192153584101141163
  call void @llvm.assume(i1 %i.r)
  %i.s = sub nuw nsw i64 %i.g, %.sroa.02.07.i     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !406
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.s, i1 noundef zeroext false, i64 noundef 8, i64 noundef 48), !noalias !406
  %i.t = load i64, ptr %i.b, align 8, !range !6, !noalias !406, !noundef !5
  %i.u = trunc nuw i64 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !8, !noalias !406, !noundef !5 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.u, label %bb.g, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticE9split_offBI_.exit, !prof !7

bb.g:                                             ; preds = %bb.f
  %i.y = load i64, ptr %i.x, align 8, !noalias !406
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.w, i64 %i.y) #25, !noalias !406
  unreachable

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticE9split_offBI_.exit: ; preds = %bb.f
  %i.z = load ptr, ptr %i.x, align 8, !noalias !406, !nonnull !5, !noundef !5 ; 2 uses
  %i.aa = icmp ule i64 %i.s, %i.w
  call void @llvm.assume(i1 %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !406
  store i64 %.sroa.02.07.i, ptr %i.f, align 8, !alias.scope !405
  %i.ab = getelementptr inbounds nuw [48 x i8], ptr %i.e, i64 %.sroa.02.07.i
  %i.ac = mul nuw nsw i64 %i.s, 48
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.z, ptr nonnull align 8 %i.ab, i64 %i.ac, i1 false), !noalias !406
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.af = atomicrmw add ptr %i.ae, i64 1 monotonic, align 8
  %i.ag = icmp slt i64 %i.af, 0
  br i1 %i.ag, label %bb.j, label %bb.i

.loopexit:                                        ; preds = %bb.e, %_RINvMNtCsf3Ta7LF998c_4core5sliceSNtNtCscScJTt9VrQp_6fea_rs10diagnostic10Diagnostic20sort_unstable_by_keyNtBx_5LevelNCNvMs0_Bx_NtBx_13DiagnosticSet18split_off_warnings0EBz_.exit
  store i64 -1, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.loopexit
  ret void

bb.i:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticE9split_offBI_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !5
  store i64 %i.w, ptr %0, align 8
  %.sroa.03.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %.sroa.03.sroa.4.0..sroa_idx, align 8
  %.sroa.03.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.s, ptr %.sroa.03.sroa.5.0..sroa_idx, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ae, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.ai, ptr %.sroa.55.0..sroa_idx, align 8
  br label %bb.h

bb.j:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticE9split_offBI_.exit
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtNtCscScJTt9VrQp_6fea_rs7compile6tables3os2NtB5_10Os2Builder5build(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 4 captures(none) dereferenceable(120) initializes((0, 120)) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(100) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables3os213CodePageRangeE6map_orAmj2_NCNvMs0_BL_NtBL_10Os2Builder5build0EBR_.exit:
  %i.a = alloca [120 x i8], align 4               ; 8 uses
  %i.b = alloca [10 x i8], align 1                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.d = load i32, ptr %i.c, align 4, !range !407, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i = load i64, ptr %i.e, align 4           ; 2 uses
  %i.f = load i32, ptr %1, align 4, !range !407, !noundef !5
  %i.g = trunc nuw i32 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load <4 x i32>, ptr %i.h, align 4
  %i.j = select i1 %i.g, <4 x i32> %i.i, <4 x i32> zeroinitializer
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load i16, ptr %i.k, align 4, !range !408, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.n = load i16, ptr %i.m, align 2
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.p = load i16, ptr %i.o, align 4, !range !408, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 38
  %i.r = load i16, ptr %i.q, align 2
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = load i16, ptr %i.s, align 4, !range !408, !noundef !5
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 42
  %i.v = load i16, ptr %i.u, align 2
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.x = load i16, ptr %i.w, align 4, !range !408, !noundef !5
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 46
  %i.z = load i16, ptr %i.y, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 84
  %.sroa.020.0.copyload = load i8, ptr %i.aa, align 4
  %i.ab = trunc nuw i8 %.sroa.020.0.copyload to i1
  br i1 %i.ab, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables3os213CodePageRangeE6map_orAmj2_NCNvMs0_BL_NtBL_10Os2Builder5build0EBR_.exit
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 85
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, ptr noundef nonnull align 1 dereferenceable(10) %.sroa.421.0..sroa_idx, i64 10, i1 false)
  br label %bb.c

bb.b:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables3os213CodePageRangeE6map_orAmj2_NCNvMs0_BL_NtBL_10Os2Builder5build0EBR_.exit
  call void @_RNvXsV_NtCsf3Ta7LF998c_4core5arrayAhja_NtNtB7_7default7Default7defaultCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull sret([10 x i8]) align 1 captures(none) dereferenceable(10) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ac = trunc nuw i32 %i.d to i1                ; 2 uses
  %2 = trunc i64 %.val.i to i32
  %.sroa.057.0.extract.trunc = select i1 %i.ac, i32 %2, i32 0
  %3 = lshr i64 %.val.i, 32
  %4 = trunc nuw i64 %3 to i32
  %.sroa.05.0.i = select i1 %i.ac, i32 %4, i32 0
  %i.ad = trunc nuw i16 %i.x to i1
  %.sroa.016.0 = select i1 %i.ad, i16 %i.z, i16 0
  %i.ae = trunc nuw i16 %i.t to i1
  %.sroa.012.0 = select i1 %i.ae, i16 %i.v, i16 0
  %i.af = trunc nuw i16 %i.p to i1
  %.sroa.08.0 = select i1 %i.af, i16 %i.r, i16 0
  %i.ag = trunc nuw i16 %i.l to i1
  %.sroa.04.0 = select i1 %i.ag, i16 %i.n, i16 0
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 95
  %.sroa.025.0.copyload = load i8, ptr %i.ah, align 1
  %i.ai = trunc nuw i8 %.sroa.025.0.copyload to i1
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.426.0.copyload = load i32, ptr %.sroa.426.0..sroa_idx, align 4
  %.sroa.022.0 = select i1 %i.ai, i32 %.sroa.426.0.copyload, i32 538976288
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ak = load i16, ptr %i.aj, align 4, !range !408, !noundef !5
  %i.al = trunc nuw i16 %i.ak to i1
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.an = load i16, ptr %i.am, align 2
  %.sroa.027.0 = select i1 %i.al, i16 %i.an, i16 0
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ar = load i16, ptr %i.aq, align 4, !range !408, !noundef !5
  %i.as = trunc nuw i16 %i.ar to i1
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.au = load i16, ptr %i.at, align 2
  %.sroa.047.0 = select i1 %i.as, i16 %i.au, i16 0
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.aw = load i16, ptr %i.av, align 4, !range !408, !noundef !5
  %i.ax = trunc nuw i16 %i.aw to i1
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 62
  %i.az = load i16, ptr %i.ay, align 2
  %.sroa.051.0 = select i1 %i.ax, i16 %i.az, i16 0
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs0_NtNtCs6WnK4nVnpEz_11write_fonts6tables3os2NtB5_3Os2NtNtCsf3Ta7LF998c_4core7default7Default7default(ptr noalias nofree noundef nonnull sret([120 x i8]) align 4 captures(none) dereferenceable(120) %i.a)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bc = load i16, ptr %i.bb, align 4, !noundef !5
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i16 %i.bc, ptr %i.bd, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 66
  store i16 %.sroa.04.0, ptr %i.be, align 2
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i16 %.sroa.08.0, ptr %i.bf, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 70
  store i16 %.sroa.012.0, ptr %i.bg, align 2
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bj = load <8 x i16>, ptr %i.bh, align 4
  store <8 x i16> %i.bj, ptr %i.bi, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bm = load <2 x i16>, ptr %i.bk, align 4
  store <2 x i16> %i.bm, ptr %i.bl, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i16 %.sroa.016.0, ptr %i.bn, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 94
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %i.bo, ptr noundef nonnull align 1 dereferenceable(10) %i.b, i64 10, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 44
  store <4 x i32> %i.j, ptr %i.bp, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %.sroa.022.0, ptr %i.bq, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bt = load <2 x i16>, ptr %i.br, align 4
  store <2 x i16> %i.bt, ptr %i.bs, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 108
  %i.bv = load i16, ptr %i.bu, align 4, !noundef !5
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i16 %i.bv, ptr %i.bw, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 110
  store i16 %.sroa.027.0, ptr %i.bx, align 2
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bz = load <4 x i16>, ptr %i.ao, align 4      ; 2 uses
  %i.ca = load <4 x i16>, ptr %i.ap, align 4      ; 2 uses
  %i.cb = shufflevector <4 x i16> %i.bz, <4 x i16> %i.ca, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.cc = trunc <4 x i16> %i.cb to <4 x i1>
  %i.cd = shufflevector <4 x i16> %i.bz, <4 x i16> %i.ca, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ce = select <4 x i1> %i.cc, <4 x i16> %i.cd, <4 x i16> zeroinitializer
  store <4 x i16> %i.ce, ptr %i.by, align 4
  store i32 1, ptr %0, align 4
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.057.0.extract.trunc, ptr %i.cf, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.cg, align 4
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.05.0.i, ptr %i.ch, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 1, ptr %i.ci, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 %.sroa.047.0, ptr %i.cj, align 2
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 1, ptr %i.ck, align 4
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 %.sroa.051.0, ptr %i.cl, align 2
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <4 x i16> <i16 1, i16 0, i16 1, i16 0>, ptr %i.cm, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 1, ptr %i.cn, align 4
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i16 0, ptr %i.co, align 2
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.cq = load <4 x i16>, ptr %i.ba, align 4
  store <4 x i16> %i.cq, ptr %i.cp, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtCscScJTt9VrQp_6fea_rs6commonNtB5_12GlyphOrClass6extend(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !420
  store ptr %0, ptr %i.a, align 8, !alias.scope !421, !noalias !422
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !421, !noalias !422
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !421, !noalias !422
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !421, !noalias !422
  call void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainINtNtNtB2c_7sources7from_fn6FromFnNCNvMs4_NtCscScJTt9VrQp_6fea_rs6commonNtB3D_12GlyphOrClass4iter0EB2X_EE9from_iterB3F_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !420
  %i.c = load i64, ptr %0, align 8, !range !12, !alias.scope !423, !noundef !5 ; 2 uses
  %i.d = icmp ne i64 %i.c, -9223372036854775807
  call void @llvm.assume(i1 %i.d)
  %i.e = icmp sgt i64 %i.c, -1
  br i1 %i.e, label %bb.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassEBF_.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassEBH_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassEBH_.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassEBF_.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassEBH_.exit.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.f, %bb.c ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  resume { ptr, i32 } %eh.lpad-body

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassEBF_.exit: ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassEBH_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtCscScJTt9VrQp_6fea_rs6commonNtB5_12GlyphOrClass8to_class(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !12, !noundef !5 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775807
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 1
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i16, ptr %i.f, align 8, !noundef !5
  tail call void @_RNvXs3_NtNtCscScJTt9VrQp_6fea_rs6common11glyph_classNtB5_10GlyphClassINtNtCsf3Ta7LF998c_4core7convert4FromNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i16 noundef %i.g)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtNtCscScJTt9VrQp_6fea_rs7compile6tables3os2NtB4_13CodePageRange13add_code_page(ptr noalias nofree noundef align 4 captures(none) dereferenceable(8) %0, i16 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i1, i8 } @_RNvMs_NtNtNtCscScJTt9VrQp_6fea_rs7compile6tables3os2NtB4_13CodePageRange17bit_for_code_page(i16 noundef %1) ; 2 uses
  %i.b = extractvalue { i1, i8 } %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i1, i8 } %i.a, 1          ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !426)
  %i.d = icmp ult i8 %i.c, 64
  br i1 %i.d, label %_RINvNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables3os212set_bit_implKj2_EB8_.exit, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #23, !noalias !426
  unreachable

_RINvNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables3os212set_bit_implKj2_EB8_.exit: ; preds = %bb.b
  %i.e = and i8 %i.c, 31
  %i.f = zext nneg i8 %i.e to i32
  %i.g = shl nuw i32 1, %i.f
  %i.h = lshr i8 %i.c, 5
  %i.i = zext nneg i8 %i.h to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !alias.scope !426, !noundef !5
  %i.l = or i32 %i.k, %i.g
  store i32 %i.l, ptr %i.j, align 4, !alias.scope !426
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #23
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define { i1, i8 } @_RNvMs_NtNtNtCscScJTt9VrQp_6fea_rs7compile6tables3os2NtB4_13CodePageRange17bit_for_code_page(i16 noundef %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  switch i16 %0, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTthEENtNtNtNtBb_4iter6traits8iterator8Iterator8find_maphNCNvMs_NtNtNtCscScJTt9VrQp_6fea_rs7compile6tables3os2NtB1R_13CodePageRange17bit_for_code_page0EB1X_.exit [
    i16 437, label %.split.loop.exit7.i
    i16 708, label %.split.loop.exit7.i.fold.split
    i16 737, label %.split.loop.exit7.i.fold.split8
    i16 775, label %.split.loop.exit7.i.fold.split9
    i16 850, label %.split.loop.exit7.i.fold.split10
    i16 852, label %.split.loop.exit7.i.fold.split11
    i16 855, label %.split.loop.exit7.i.fold.split12
    i16 857, label %.split.loop.exit7.i.fold.split13
    i16 860, label %.split.loop.exit7.i.fold.split14
    i16 861, label %.split.loop.exit7.i.fold.split15
    i16 862, label %.split.loop.exit7.i.fold.split16
    i16 863, label %.split.loop.exit7.i.fold.split17
    i16 864, label %.split.loop.exit7.i.fold.split18
    i16 865, label %.split.loop.exit7.i.fold.split19
    i16 866, label %.split.loop.exit7.i.fold.split20
    i16 869, label %.split.loop.exit7.i.fold.split21
    i16 874, label %.split.loop.exit7.i.fold.split22
    i16 932, label %.split.loop.exit7.i.fold.split23
    i16 936, label %.split.loop.exit7.i.fold.split24
    i16 949, label %.split.loop.exit7.i.fold.split25
    i16 950, label %.split.loop.exit7.i.fold.split26
    i16 1250, label %.split.loop.exit7.i.fold.split27
    i16 1251, label %.split.loop.exit7.i.fold.split28
    i16 1252, label %.split.loop.exit7.i.fold.split29
    i16 1253, label %.split.loop.exit7.i.fold.split30
    i16 1254, label %.split.loop.exit7.i.fold.split31
    i16 1255, label %.split.loop.exit7.i.fold.split32
    i16 1256, label %.split.loop.exit7.i.fold.split33
    i16 1257, label %.split.loop.exit7.i.fold.split34
    i16 1258, label %.split.loop.exit7.i.fold.split35
    i16 1361, label %.split.loop.exit7.i.fold.split36
  ]

.split.loop.exit7.i.fold.split:                   ; preds = %bb.a
  br label %.split.loop.exit7.i

.split.loop.exit7.i.fold.split8:                  ; preds = %bb.a
  br label %.split.loop.exit7.i

.split.loop.exit7.i.fold.split9:                  ; preds = %bb.a
  br label %.split.loop.exit7.i

.split.loop.exit7.i.fold.split10:                 ; preds = %bb.a
  br label %.split.loop.exit7.i

.split.loop.exit7.i.fold.split11:                 ; preds = %bb.a
end_hunk_0
