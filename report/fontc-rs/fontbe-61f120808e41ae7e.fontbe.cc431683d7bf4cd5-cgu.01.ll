Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontbe-61f120808e41ae7e.fontbe.cc431683d7bf4cd5-cgu.01?download=true
inline.NumInlined: 5575
inline.NumDeleted: 3074
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCscDfuDmzQoJe_5kurbo7bezpath6PathElEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtB2i_5slice4iter7IterMutTRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB3K_15NormalizedSpaceEINtNtB2e_6copied6CopiedINtB3e_4IterB11_EEEENCNvNtCshxhuDJfZv4T_6fontbe6glyphs20cubics_to_quadraticss0_0EE9from_iterB5D_:bb.a
_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit: ; preds = %bb.d
  %i.u = load ptr, ptr %i.s, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.v = icmp ugt i64 %i.r, 3
  call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.u, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false)
  store i64 %i.r, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.u, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  %i.w = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  %i.x = load ptr, ptr %i.i, align 8, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9486)
  call void @llvm.experimental.noalias.scope.decl(metadata !9487)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9486
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9486
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.x, ptr %i.y, align 8, !noalias !9488
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit
  %.pre6.i.i = phi ptr [ %.pre.i.i, %bb.j ], [ %i.x, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit ] ; 2 uses
  %.promoted.i.i.i.i = phi ptr [ %.promoted.i.i5.i.i, %bb.j ], [ %i.w, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !9489)
  call void @llvm.experimental.noalias.scope.decl(metadata !9490)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9491
  store ptr %i.z, ptr %i.a, align 8, !noalias !9492
  br label %bb.g

bb.g:                                             ; preds = %.noexc, %bb.f
  %i.aa = phi ptr [ %i.ac, %.noexc ], [ %.promoted.i.i.i.i, %bb.f ] ; 3 uses
  %i.ab = icmp eq ptr %i.aa, %.pre6.i.i
  br i1 %i.ab, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 3 uses
  store ptr %i.ac, ptr %i.c, align 8, !alias.scope !9493, !noalias !9494
  invoke void @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvNtCshxhuDJfZv4T_6fontbe6glyphs20cubics_to_quadraticss0_0INtB7_5FnMutTQTRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB25_15NormalizedSpaceEINtNtNtNtBb_4iter8adapters6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCscDfuDmzQoJe_5kurbo7bezpath6PathElEEEEE8call_mutBU_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.h
  %i.ad = load i64, ptr %i.b, align 8, !range !39, !noalias !9488, !noundef !4
  %.not.i.i.i.i = icmp eq i64 %i.ad, -1
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.i

bb.i:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9491
  %i.ae = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !9488, !noundef !4 ; 5 uses
  %i.af = icmp ult i64 %i.ae, 164703072086692426
  call void @llvm.assume(i1 %i.af)
  %i.ag = load i64, ptr %i.g, align 8, !range !10, !alias.scope !9488, !noundef !4
  %i.ah = icmp eq i64 %i.ae, %i.ag
  br i1 %i.ah, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCscDfuDmzQoJe_5kurbo7bezpath6PathElE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i, label %bb.j

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCscDfuDmzQoJe_5kurbo7bezpath6PathElE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i: ; preds = %bb.i
  invoke void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.ae, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 56)
          to label %.noexc6 unwind label %.loopexit.split-lp

.noexc6:                                          ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCscDfuDmzQoJe_5kurbo7bezpath6PathElE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i
  %.promoted.i.i.pre.i.i = load ptr, ptr %i.c, align 8, !alias.scope !9493, !noalias !9494
  %.pre.pre.i.i = load ptr, ptr %i.y, align 8, !alias.scope !9493, !noalias !9494
  br label %bb.j

bb.j:                                             ; preds = %.noexc6, %bb.i
  %.pre.i.i = phi ptr [ %.pre6.i.i, %bb.i ], [ %.pre.pre.i.i, %.noexc6 ]
  %.promoted.i.i5.i.i = phi ptr [ %i.ac, %bb.i ], [ %.promoted.i.i.pre.i.i, %.noexc6 ]
  %i.ai = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !9488, !nonnull !4, !noundef !4
  %i.aj = getelementptr inbounds nuw [56 x i8], ptr %i.ai, i64 %i.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aj, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false)
  %i.ak = add nuw nsw i64 %i.ae, 1
  store i64 %i.ak, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !9488
  br label %bb.f

bb.k:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9482
  store i64 0, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.am, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.n, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

.loopexit:                                        ; preds = %bb.h
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp:                               ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCscDfuDmzQoJe_5kurbo7bezpath6PathElE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCscDfuDmzQoJe_5kurbo7bezpath6PathElENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo7bezpath6PathElEECshxhuDJfZv4T_6fontbe.exit unwind label %bb.o

bb.n:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9486
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9486
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  br label %bb.l

bb.o:                                             ; preds = %bb.m
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo7bezpath6PathElEECshxhuDJfZv4T_6fontbe.exit: ; preds = %bb.m
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4cpal11ColorRecordEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB2x_7flatten7FlatMapINtNtNtB2B_5slice4iter4IterIBS_NtNtCs3v5ql5U6hxj_6fontir2ir5ColorEEIB3G_B4a_ENCNvXNtCshxhuDJfZv4T_6fontbe4cpalNtB4Z_8CpalWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB51_13orchestration7ContextNtB6x_9AnyWorkIdNtNtB51_5error5ErrorE4exec0ENvB4Z_13to_cpal_colorEE9from_iterB51_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9548)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9549)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9550)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %.promoted.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !9551
  %.promoted20.i.i.i = load ptr, ptr %1, align 8, !alias.scope !9551
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !9551 ; 3 uses
  %.promoted21.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !9551
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.val3.i.i.i.i = phi ptr [ %i.n, %bb.d ], [ %.promoted21.i.i.i, %bb.a ] ; 3 uses
  %i.g = phi ptr [ %i.k, %bb.d ], [ %.promoted20.i.i.i, %bb.a ] ; 6 uses
  %spec.select.i19.i.i.i = phi ptr [ %.val.i.i.i.i.i, %bb.d ], [ %.promoted.i.i.i, %bb.a ] ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %spec.select.i19.i.i.i, null
  br i1 %.not.i.i.i.i, label %select.unfold.i.i.i, label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %bb.b
  %i.h = icmp eq ptr %spec.select.i19.i.i.i, %.val3.i.i.i.i ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %spec.select.i19.i.i.i, i64 4 ; 2 uses
  %spec.select.i.i.i.i = select i1 %i.h, ptr null, ptr %i.i
  store ptr %spec.select.i.i.i.i, ptr %i.c, align 8, !alias.scope !9552
  br i1 %i.h, label %select.unfold.i.i.i, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs3v5ql5U6hxj_6fontir2ir5ColorEEIB15_B21_ENCNvXNtCshxhuDJfZv4T_6fontbe4cpalNtB2Q_8CpalWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB2S_13orchestration7ContextNtB4o_9AnyWorkIdNtNtB2S_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB2S_.exit.i.loopexit

select.unfold.i.i.i:                              ; preds = %.sink.split.i.i.i.i, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9553)
  %.not.i5.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i5.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %select.unfold.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9554)
  %i.j = icmp eq ptr %i.g, %i.f
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  store ptr %i.k, ptr %1, align 8, !alias.scope !9555
  %i.l = getelementptr i8, ptr %i.g, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.l, align 8, !noalias !9556, !nonnull !4, !noundef !4 ; 3 uses
  %i.m = getelementptr i8, ptr %i.g, i64 16
  %.val3.i.i.i.i.i = load i64, ptr %i.m, align 8, !noalias !9556, !noundef !4
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %.val3.i.i.i.i.i ; 2 uses
  store ptr %.val.i.i.i.i.i, ptr %i.c, align 8, !alias.scope !9551
  store ptr %i.n, ptr %i.d, align 8, !alias.scope !9551
  br label %bb.b

bb.e:                                             ; preds = %bb.c, %select.unfold.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !9557, !noundef !4 ; 4 uses
  %.not.i7.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i7.i.i.i, label %.critedge, label %.sink.split.i8.i.i.i

.sink.split.i8.i.i.i:                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !9558, !nonnull !4, !noundef !4 ; 2 uses
  %i.s = icmp eq ptr %i.p, %i.r                   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  %spec.select.i9.i.i.i = select i1 %i.s, ptr null, ptr %i.t
  store ptr %spec.select.i9.i.i.i, ptr %i.o, align 8, !alias.scope !9557
  br i1 %i.s, label %.critedge, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs3v5ql5U6hxj_6fontir2ir5ColorEEIB15_B21_ENCNvXNtCshxhuDJfZv4T_6fontbe4cpalNtB2Q_8CpalWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB2S_13orchestration7ContextNtB4o_9AnyWorkIdNtNtB2S_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB2S_.exit.i

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs3v5ql5U6hxj_6fontir2ir5ColorEEIB15_B21_ENCNvXNtCshxhuDJfZv4T_6fontbe4cpalNtB2Q_8CpalWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB2S_13orchestration7ContextNtB4o_9AnyWorkIdNtNtB2S_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB2S_.exit.i.loopexit: ; preds = %.sink.split.i.i.i.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !9559, !noalias !9560
  %.phi.trans.insert29 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val3.i63.i.i.i.pre = load ptr, ptr %.phi.trans.insert29, align 8, !alias.scope !9559, !noalias !9560
  br label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs3v5ql5U6hxj_6fontir2ir5ColorEEIB15_B21_ENCNvXNtCshxhuDJfZv4T_6fontbe4cpalNtB2Q_8CpalWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB2S_13orchestration7ContextNtB4o_9AnyWorkIdNtNtB2S_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB2S_.exit.i

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs3v5ql5U6hxj_6fontir2ir5ColorEEIB15_B21_ENCNvXNtCshxhuDJfZv4T_6fontbe4cpalNtB2Q_8CpalWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB2S_13orchestration7ContextNtB4o_9AnyWorkIdNtNtB2S_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB2S_.exit.i: ; preds = %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs3v5ql5U6hxj_6fontir2ir5ColorEEIB15_B21_ENCNvXNtCshxhuDJfZv4T_6fontbe4cpalNtB2Q_8CpalWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB2S_13orchestration7ContextNtB4o_9AnyWorkIdNtNtB2S_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB2S_.exit.i.loopexit, %.sink.split.i8.i.i.i
  %.val3.i63.i.i.i = phi ptr [ %i.r, %.sink.split.i8.i.i.i ], [ %.val3.i63.i.i.i.pre, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs3v5ql5U6hxj_6fontir2ir5ColorEEIB15_B21_ENCNvXNtCshxhuDJfZv4T_6fontbe4cpalNtB2Q_8CpalWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB2S_13orchestration7ContextNtB4o_9AnyWorkIdNtNtB2S_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB2S_.exit.i.loopexit ] ; 2 uses
  %i.u = phi ptr [ %i.t, %.sink.split.i8.i.i.i ], [ %.pre, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs3v5ql5U6hxj_6fontir2ir5ColorEEIB15_B21_ENCNvXNtCshxhuDJfZv4T_6fontbe4cpalNtB2Q_8CpalWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB2S_13orchestration7ContextNtB4o_9AnyWorkIdNtNtB2S_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB2S_.exit.i.loopexit ] ; 3 uses
  %i.v = phi ptr [ null, %.sink.split.i8.i.i.i ], [ %i.i, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs3v5ql5U6hxj_6fontir2ir5ColorEEIB15_B21_ENCNvXNtCshxhuDJfZv4T_6fontbe4cpalNtB2Q_8CpalWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB2S_13orchestration7ContextNtB4o_9AnyWorkIdNtNtB2S_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB2S_.exit.i.loopexit ] ; 3 uses
  %.sroa.0.0.i.i.i = phi ptr [ %i.p, %.sink.split.i8.i.i.i ], [ %spec.select.i19.i.i.i, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs3v5ql5U6hxj_6fontir2ir5ColorEEIB15_B21_ENCNvXNtCshxhuDJfZv4T_6fontbe4cpalNtB2Q_8CpalWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB2S_13orchestration7ContextNtB4o_9AnyWorkIdNtNtB2S_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB2S_.exit.i.loopexit ]
  %2 = load <4 x i8>, ptr %.sroa.0.0.i.i.i, align 1, !alias.scope !9561, !noalias !9548
  %.not.i.i.i = icmp eq ptr %i.v, null
  %i.w = ptrtoint ptr %.val3.i.i.i.i to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub nuw i64 %i.w, %i.x
  %i.z = lshr exact i64 %i.y, 2
  %.sroa.7.0.i.i.i = select i1 %.not.i.i.i, i64 0, i64 %i.z
  %.not53.i.i.i = icmp eq ptr %i.u, null
  %i.aa = ptrtoint ptr %.val3.i63.i.i.i to i64    ; 2 uses
  %i.ab = ptrtoint ptr %i.u to i64
  %i.ac = sub nuw i64 %i.aa, %i.ab
  %i.ad = lshr exact i64 %i.ac, 2
  %.sroa.8.0.i.i.i = select i1 %.not53.i.i.i, i64 0, i64 %i.ad
  %i.ae = add nuw nsw i64 %.sroa.8.0.i.i.i, %.sroa.7.0.i.i.i
  %i.af = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 3) ; 2 uses
  %i.ag = add nuw nsw i64 %i.af, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.ag, i1 noundef zeroext false, i64 noundef 1, i64 noundef 4)
  %i.ah = load i64, ptr %i.a, align 8, !range !11, !noundef !4
  %i.ai = trunc nuw i64 %i.ah to i1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !range !32, !noundef !4 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.ai, label %bb.f, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit, !prof !9

bb.f:                                             ; preds = %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs3v5ql5U6hxj_6fontir2ir5ColorEEIB15_B21_ENCNvXNtCshxhuDJfZv4T_6fontbe4cpalNtB2Q_8CpalWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB2S_13orchestration7ContextNtB4o_9AnyWorkIdNtNtB2S_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB2S_.exit.i
  %i.am = load i64, ptr %i.al, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.ak, i64 %i.am) #31
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit: ; preds = %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs3v5ql5U6hxj_6fontir2ir5ColorEEIB15_B21_ENCNvXNtCshxhuDJfZv4T_6fontbe4cpalNtB2Q_8CpalWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB2S_13orchestration7ContextNtB4o_9AnyWorkIdNtNtB2S_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB2S_.exit.i
  %3 = shufflevector <4 x i8> %2, <4 x i8> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %i.an = load ptr, ptr %i.al, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ao = icmp ult i64 %i.af, %i.ak
  tail call void @llvm.assume(i1 %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store <4 x i8> %3, ptr %i.an, align 1
  store i64 %i.ak, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.an, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.g

bb.g:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4cpal11ColorRecordE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit
  %i.ap = phi i64 [ 1, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit ], [ %i.by, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4cpal11ColorRecordE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i ] ; 6 uses
  %spec.select.i9.i.i.i17.i.i = phi ptr [ %i.u, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit ], [ %spec.select.i9.i.i.i16.i.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4cpal11ColorRecordE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i ] ; 5 uses
  %.val3.i.i.i.i9.i.i = phi ptr [ %.val3.i.i.i.i, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit ], [ %.val3.i.i.i.i10.i5.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4cpal11ColorRecordE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i ] ; 3 uses
  %i.aq = phi ptr [ %i.g, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit ], [ %i.bf, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4cpal11ColorRecordE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i ] ; 5 uses
  %i.ar = phi ptr [ %i.v, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit ], [ %i.bg, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4cpal11ColorRecordE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i ] ; 3 uses
  store i64 %i.ap, ptr %.sroa.6.0..sroa_idx, align 8
  %.not.i.i.i.i.i6.i = icmp eq ptr %i.ar, null
  %i.as = icmp eq ptr %i.ar, %.val3.i.i.i.i9.i.i
  %or.cond.i7.i = select i1 %.not.i.i.i.i.i6.i, i1 true, i1 %i.as
  br i1 %or.cond.i7.i, label %select.unfold.i.i.i.i.i.preheader, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs3v5ql5U6hxj_6fontir2ir5ColorEEIB15_B21_ENCNvXNtCshxhuDJfZv4T_6fontbe4cpalNtB2Q_8CpalWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB2S_13orchestration7ContextNtB4o_9AnyWorkIdNtNtB2S_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB2S_.exit.i.loopexit.i.i

select.unfold.i.i.i.i.i.preheader:                ; preds = %bb.g
  %.not.i5.i.i.i.i.i20 = icmp eq ptr %i.aq, null
  %i.at = icmp eq ptr %i.aq, %i.f
  %or.cond.i21 = select i1 %.not.i5.i.i.i.i.i20, i1 true, i1 %i.at
  br i1 %or.cond.i21, label %select.unfold.i.i.i.i.i._crit_edge, label %.lr.ph

select.unfold.i.i.i.i.i:                          ; preds = %.lr.ph
  %i.au = icmp eq ptr %i.aw, %i.f
  br i1 %i.au, label %select.unfold.i.i.i.i.i._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %select.unfold.i.i.i.i.i.preheader, %select.unfold.i.i.i.i.i
  %i.av = phi ptr [ %i.aw, %select.unfold.i.i.i.i.i ], [ %i.aq, %select.unfold.i.i.i.i.i.preheader ] ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24 ; 4 uses
  %i.ax = getelementptr i8, ptr %i.av, i64 16
  %.val3.i.i.i.i.i.i.i = load i64, ptr %i.ax, align 8, !noalias !9562, !noundef !4 ; 2 uses
  %i.ay = icmp eq i64 %.val3.i.i.i.i.i.i.i, 0
  br i1 %i.ay, label %select.unfold.i.i.i.i.i, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs3v5ql5U6hxj_6fontir2ir5ColorEEIB15_B21_ENCNvXNtCshxhuDJfZv4T_6fontbe4cpalNtB2Q_8CpalWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB2S_13orchestration7ContextNtB4o_9AnyWorkIdNtNtB2S_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB2S_.exit.i.loopexit.i.i.loopexit

select.unfold.i.i.i.i.i._crit_edge.loopexit:      ; preds = %select.unfold.i.i.i.i.i
  %i.az = getelementptr i8, ptr %i.av, i64 8
  %.val.i.i.i.i.i.i.i.le55 = load ptr, ptr %i.az, align 8, !noalias !9562, !nonnull !4, !noundef !4
  br label %select.unfold.i.i.i.i.i._crit_edge

select.unfold.i.i.i.i.i._crit_edge:               ; preds = %select.unfold.i.i.i.i.i._crit_edge.loopexit, %select.unfold.i.i.i.i.i.preheader
  %.lcssa = phi ptr [ %i.aq, %select.unfold.i.i.i.i.i.preheader ], [ %i.aw, %select.unfold.i.i.i.i.i._crit_edge.loopexit ]
  %.val3.i.i.i.i10.i8.i.lcssa = phi ptr [ %.val3.i.i.i.i9.i.i, %select.unfold.i.i.i.i.i.preheader ], [ %.val.i.i.i.i.i.i.i.le55, %select.unfold.i.i.i.i.i._crit_edge.loopexit ]
  %.not.i7.i.i.i.i.i = icmp eq ptr %spec.select.i9.i.i.i17.i.i, null
  %i.ba = icmp eq ptr %spec.select.i9.i.i.i17.i.i, %.val3.i63.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %spec.select.i9.i.i.i17.i.i, i64 4
  %or.cond34.i.i = select i1 %.not.i7.i.i.i.i.i, i1 true, i1 %i.ba
  br i1 %or.cond34.i.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4cpal11ColorRecordEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB2e_7flatten7FlatMapINtNtNtB2i_5slice4iter4IterIBI_NtNtCs3v5ql5U6hxj_6fontir2ir5ColorEEIB3n_B3R_ENCNvXNtCshxhuDJfZv4T_6fontbe4cpalNtB4G_8CpalWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB4I_13orchestration7ContextNtB6e_9AnyWorkIdNtNtB4I_5error5ErrorE4exec0ENvB4G_13to_cpal_colorEE11spec_extendB4I_.exit, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs3v5ql5U6hxj_6fontir2ir5ColorEEIB15_B21_ENCNvXNtCshxhuDJfZv4T_6fontbe4cpalNtB2Q_8CpalWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB2S_13orchestration7ContextNtB4o_9AnyWorkIdNtNtB2S_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB2S_.exit.i.i.i

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs3v5ql5U6hxj_6fontir2ir5ColorEEIB15_B21_ENCNvXNtCshxhuDJfZv4T_6fontbe4cpalNtB2Q_8CpalWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB2S_13orchestration7ContextNtB4o_9AnyWorkIdNtNtB2S_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB2S_.exit.i.loopexit.i.i.loopexit: ; preds = %.lr.ph
  %i.bc = getelementptr i8, ptr %i.av, i64 8
  %.val.i.i.i.i.i.i.i.le = load ptr, ptr %i.bc, align 8, !noalias !9562, !nonnull !4, !noundef !4 ; 2 uses
  %.idx.i.le = shl nuw nsw i64 %.val3.i.i.i.i.i.i.i, 2
  %i.bd = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.le, i64 %.idx.i.le
  br label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs3v5ql5U6hxj_6fontir2ir5ColorEEIB15_B21_ENCNvXNtCshxhuDJfZv4T_6fontbe4cpalNtB2Q_8CpalWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB2S_13orchestration7ContextNtB4o_9AnyWorkIdNtNtB2S_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB2S_.exit.i.loopexit.i.i

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs3v5ql5U6hxj_6fontir2ir5ColorEEIB15_B21_ENCNvXNtCshxhuDJfZv4T_6fontbe4cpalNtB2Q_8CpalWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB2S_13orchestration7ContextNtB4o_9AnyWorkIdNtNtB2S_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB2S_.exit.i.loopexit.i.i: ; preds = %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs3v5ql5U6hxj_6fontir2ir5ColorEEIB15_B21_ENCNvXNtCshxhuDJfZv4T_6fontbe4cpalNtB2Q_8CpalWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB2S_13orchestration7ContextNtB4o_9AnyWorkIdNtNtB2S_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB2S_.exit.i.loopexit.i.i.loopexit, %bb.g
  %.val3.i.i.i.i10.i.lcssa.i = phi ptr [ %.val3.i.i.i.i9.i.i, %bb.g ], [ %i.bd, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs3v5ql5U6hxj_6fontir2ir5ColorEEIB15_B21_ENCNvXNtCshxhuDJfZv4T_6fontbe4cpalNtB2Q_8CpalWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB2S_13orchestration7ContextNtB4o_9AnyWorkIdNtNtB2S_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB2S_.exit.i.loopexit.i.i.loopexit ]
  %.lcssa2.i = phi ptr [ %i.aq, %bb.g ], [ %i.aw, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs3v5ql5U6hxj_6fontir2ir5ColorEEIB15_B21_ENCNvXNtCshxhuDJfZv4T_6fontbe4cpalNtB2Q_8CpalWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB2S_13orchestration7ContextNtB4o_9AnyWorkIdNtNtB2S_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB2S_.exit.i.loopexit.i.i.loopexit ]
  %.lcssa.i = phi ptr [ %i.ar, %bb.g ], [ %.val.i.i.i.i.i.i.i.le, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs3v5ql5U6hxj_6fontir2ir5ColorEEIB15_B21_ENCNvXNtCshxhuDJfZv4T_6fontbe4cpalNtB2Q_8CpalWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB2S_13orchestration7ContextNtB4o_9AnyWorkIdNtNtB2S_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB2S_.exit.i.loopexit.i.i.loopexit ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 4
  br label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs3v5ql5U6hxj_6fontir2ir5ColorEEIB15_B21_ENCNvXNtCshxhuDJfZv4T_6fontbe4cpalNtB2Q_8CpalWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB2S_13orchestration7ContextNtB4o_9AnyWorkIdNtNtB2S_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB2S_.exit.i.i.i

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs3v5ql5U6hxj_6fontir2ir5ColorEEIB15_B21_ENCNvXNtCshxhuDJfZv4T_6fontbe4cpalNtB2Q_8CpalWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB2S_13orchestration7ContextNtB4o_9AnyWorkIdNtNtB2S_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB2S_.exit.i.i.i: ; preds = %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs3v5ql5U6hxj_6fontir2ir5ColorEEIB15_B21_ENCNvXNtCshxhuDJfZv4T_6fontbe4cpalNtB2Q_8CpalWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB2S_13orchestration7ContextNtB4o_9AnyWorkIdNtNtB2S_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB2S_.exit.i.loopexit.i.i, %select.unfold.i.i.i.i.i._crit_edge
  %.val3.i.i.i.i10.i5.i = phi ptr [ %.val3.i.i.i.i10.i8.i.lcssa, %select.unfold.i.i.i.i.i._crit_edge ], [ %.val3.i.i.i.i10.i.lcssa.i, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs3v5ql5U6hxj_6fontir2ir5ColorEEIB15_B21_ENCNvXNtCshxhuDJfZv4T_6fontbe4cpalNtB2Q_8CpalWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB2S_13orchestration7ContextNtB4o_9AnyWorkIdNtNtB2S_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB2S_.exit.i.loopexit.i.i ] ; 2 uses
  %i.bf = phi ptr [ %.lcssa, %select.unfold.i.i.i.i.i._crit_edge ], [ %.lcssa2.i, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs3v5ql5U6hxj_6fontir2ir5ColorEEIB15_B21_ENCNvXNtCshxhuDJfZv4T_6fontbe4cpalNtB2Q_8CpalWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB2S_13orchestration7ContextNtB4o_9AnyWorkIdNtNtB2S_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB2S_.exit.i.loopexit.i.i ]
  %spec.select.i9.i.i.i16.i.i = phi ptr [ %i.bb, %select.unfold.i.i.i.i.i._crit_edge ], [ %spec.select.i9.i.i.i17.i.i, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs3v5ql5U6hxj_6fontir2ir5ColorEEIB15_B21_ENCNvXNtCshxhuDJfZv4T_6fontbe4cpalNtB2Q_8CpalWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB2S_13orchestration7ContextNtB4o_9AnyWorkIdNtNtB2S_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB2S_.exit.i.loopexit.i.i ] ; 3 uses
  %i.bg = phi ptr [ null, %select.unfold.i.i.i.i.i._crit_edge ], [ %i.be, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs3v5ql5U6hxj_6fontir2ir5ColorEEIB15_B21_ENCNvXNtCshxhuDJfZv4T_6fontbe4cpalNtB2Q_8CpalWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB2S_13orchestration7ContextNtB4o_9AnyWorkIdNtNtB2S_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB2S_.exit.i.loopexit.i.i ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %spec.select.i9.i.i.i17.i.i, %select.unfold.i.i.i.i.i._crit_edge ], [ %.lcssa.i, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs3v5ql5U6hxj_6fontir2ir5ColorEEIB15_B21_ENCNvXNtCshxhuDJfZv4T_6fontbe4cpalNtB2Q_8CpalWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB2S_13orchestration7ContextNtB4o_9AnyWorkIdNtNtB2S_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB2S_.exit.i.loopexit.i.i ] ; 4 uses
  %4 = load i8, ptr %.sroa.0.0.i.i.i.i.i, align 1, !alias.scope !9563, !noalias !9564, !noundef !4
  %5 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 1
  %6 = load i8, ptr %5, align 1, !alias.scope !9563, !noalias !9564, !noundef !4
  %7 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 2
  %8 = load i8, ptr %7, align 1, !alias.scope !9563, !noalias !9564, !noundef !4
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 3
  %i.bi = load i8, ptr %i.bh, align 1, !alias.scope !9563, !noalias !9564, !noundef !4
  %.sroa.4.0.insert.ext.i.i.i.i.i = zext i8 %i.bi to i32
  %.sroa.4.0.insert.shift.i.i.i.i.i = shl nuw i32 %.sroa.4.0.insert.ext.i.i.i.i.i, 24
  %.sroa.3.0.insert.ext.i.i.i.i.i = zext i8 %4 to i32
  %.sroa.3.0.insert.shift.i.i.i.i.i = shl nuw nsw i32 %.sroa.3.0.insert.ext.i.i.i.i.i, 16
  %.sroa.2.0.insert.ext.i.i.i.i.i = zext i8 %6 to i32
  %.sroa.2.0.insert.shift.i.i.i.i.i = shl nuw nsw i32 %.sroa.2.0.insert.ext.i.i.i.i.i, 8
  %.sroa.0.0.insert.ext.i.i.i.i.i = zext i8 %8 to i32
  %.sroa.3.0.insert.insert.i.i.i.i.i = or disjoint i32 %.sroa.2.0.insert.shift.i.i.i.i.i, %.sroa.3.0.insert.shift.i.i.i.i.i
  %.sroa.2.0.insert.insert.i.i.i.i.i = or disjoint i32 %.sroa.3.0.insert.insert.i.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i.i
  %.sroa.0.0.insert.insert.i.i.i.i.i = or disjoint i32 %.sroa.2.0.insert.insert.i.i.i.i.i, %.sroa.4.0.insert.shift.i.i.i.i.i
  %i.bj = icmp samesign ult i64 %i.ap, 2305843009213693952
  call void @llvm.assume(i1 %i.bj)
  %i.bk = load i64, ptr %i.b, align 8, !range !10, !alias.scope !9565, !noalias !9566, !noundef !4
  %i.bl = icmp eq i64 %i.ap, %i.bk
  br i1 %i.bl, label %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs3v5ql5U6hxj_6fontir2ir5ColorEEIB1l_B2h_ENCNvXNtCshxhuDJfZv4T_6fontbe4cpalNtB36_8CpalWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB38_13orchestration7ContextNtB4E_9AnyWorkIdNtNtB38_5error5ErrorE4exec0ENvB36_13to_cpal_colorENtNtNtB9_6traits8iterator8Iterator9size_hintB38_.exit.i.i, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4cpal11ColorRecordE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i

_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs3v5ql5U6hxj_6fontir2ir5ColorEEIB1l_B2h_ENCNvXNtCshxhuDJfZv4T_6fontbe4cpalNtB36_8CpalWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB38_13orchestration7ContextNtB4E_9AnyWorkIdNtNtB38_5error5ErrorE4exec0ENvB36_13to_cpal_colorENtNtNtB9_6traits8iterator8Iterator9size_hintB38_.exit.i.i: ; preds = %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs3v5ql5U6hxj_6fontir2ir5ColorEEIB15_B21_ENCNvXNtCshxhuDJfZv4T_6fontbe4cpalNtB2Q_8CpalWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB2S_13orchestration7ContextNtB4o_9AnyWorkIdNtNtB2S_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB2S_.exit.i.i.i
  %.not53.i.i.i.i.i = icmp eq ptr %spec.select.i9.i.i.i16.i.i, null
  %i.bm = ptrtoint ptr %spec.select.i9.i.i.i16.i.i to i64
  %i.bn = sub nuw i64 %i.aa, %i.bm
  %i.bo = lshr exact i64 %i.bn, 2
  %.not.i.i.i.i.i = icmp eq ptr %i.bg, null
  %i.bp = ptrtoint ptr %.val3.i.i.i.i10.i5.i to i64
  %i.bq = ptrtoint ptr %i.bg to i64
  %i.br = sub nuw i64 %i.bp, %i.bq
  %i.bs = lshr exact i64 %i.br, 2
  %.sroa.7.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 0, i64 %i.bs
  %i.bt = add nuw nsw i64 %i.bo, 1
  %i.bu = select i1 %.not53.i.i.i.i.i, i64 1, i64 %i.bt
  %i.bv = add nuw nsw i64 %i.bu, %.sroa.7.0.i.i.i.i.i
  invoke void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.ap, i64 noundef range(i64 1, 0) %i.bv, i64 noundef 1, i64 noundef 4)
          to label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4cpal11ColorRecordE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i unwind label %bb.i

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4cpal11ColorRecordE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i: ; preds = %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs3v5ql5U6hxj_6fontir2ir5ColorEEIB1l_B2h_ENCNvXNtCshxhuDJfZv4T_6fontbe4cpalNtB36_8CpalWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB38_13orchestration7ContextNtB4E_9AnyWorkIdNtNtB38_5error5ErrorE4exec0ENvB36_13to_cpal_colorENtNtNtB9_6traits8iterator8Iterator9size_hintB38_.exit.i.i, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs3v5ql5U6hxj_6fontir2ir5ColorEEIB15_B21_ENCNvXNtCshxhuDJfZv4T_6fontbe4cpalNtB2Q_8CpalWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB2S_13orchestration7ContextNtB4o_9AnyWorkIdNtNtB2S_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB2S_.exit.i.i.i
  %i.bw = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !9565, !noalias !9566, !nonnull !4, !noundef !4
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.ap
  store i32 %.sroa.0.0.insert.insert.i.i.i.i.i, ptr %i.bx, align 1, !noalias !9566
  %i.by = add nuw nsw i64 %i.ap, 1
  br label %bb.g

.critedge:                                        ; preds = %bb.e, %.sink.split.i8.i.i.i
  store i64 0, ptr %0, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ca, align 8
  br label %bb.h

bb.h:                                             ; preds = %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4cpal11ColorRecordEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB2e_7flatten7FlatMapINtNtNtB2i_5slice4iter4IterIBI_NtNtCs3v5ql5U6hxj_6fontir2ir5ColorEEIB3n_B3R_ENCNvXNtCshxhuDJfZv4T_6fontbe4cpalNtB4G_8CpalWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB4I_13orchestration7ContextNtB6e_9AnyWorkIdNtNtB4I_5error5ErrorE4exec0ENvB4G_13to_cpal_colorEE11spec_extendB4I_.exit, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.i:                                             ; preds = %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs3v5ql5U6hxj_6fontir2ir5ColorEEIB1l_B2h_ENCNvXNtCshxhuDJfZv4T_6fontbe4cpalNtB36_8CpalWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB38_13orchestration7ContextNtB4E_9AnyWorkIdNtNtB38_5error5ErrorE4exec0ENvB36_13to_cpal_colorENtNtNtB9_6traits8iterator8Iterator9size_hintB38_.exit.i.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4cpal11ColorRecordENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4cpal11ColorRecordEECshxhuDJfZv4T_6fontbe.exit unwind label %bb.j

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4cpal11ColorRecordEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB2e_7flatten7FlatMapINtNtNtB2i_5slice4iter4IterIBI_NtNtCs3v5ql5U6hxj_6fontir2ir5ColorEEIB3n_B3R_ENCNvXNtCshxhuDJfZv4T_6fontbe4cpalNtB4G_8CpalWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB4I_13orchestration7ContextNtB6e_9AnyWorkIdNtNtB4I_5error5ErrorE4exec0ENvB4G_13to_cpal_colorEE11spec_extendB4I_.exit: ; preds = %select.unfold.i.i.i.i.i._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  br label %bb.h

bb.j:                                             ; preds = %bb.i
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4cpal11ColorRecordEECshxhuDJfZv4T_6fontbe.exit: ; preds = %bb.i
  resume { ptr, i32 } %i.cb
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4meta13DataMapRecordEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB2z_6filter6FilterINtNtNtB2D_5array4iter8IntoIterTNtNtCsbZq13ASDQ8l_10font_types3tag3TagRIBS_NtCs9NoVXegZYB5_8smol_str7SmolStrEEKj2_ENCNvXNtCshxhuDJfZv4T_6fontbe4metaNtB5B_8MetaWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB5D_13orchestration7ContextNtB79_9AnyWorkIdNtNtB5D_5error5ErrorE4exec0ENCB5y_s_0EE9from_iterB5D_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call fastcc void @_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5array4iter8IntoIterTNtNtCsbZq13ASDQ8l_10font_types3tag3TagRINtNtCsgCecv3eZDcN_5alloc3vec3VecNtCs9NoVXegZYB5_8smol_str7SmolStrEEKj2_ENCNvXNtCshxhuDJfZv4T_6fontbe4metaNtB3G_8MetaWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB3I_13orchestration7ContextNtB5e_9AnyWorkIdNtNtB3I_5error5ErrorE4exec0ENCB3D_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB3I_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.d, ptr noalias nofree noundef align 8 dereferenceable(48) %1)
  %i.f = load ptr, ptr %i.d, align 8, !noundef !4 ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.h, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.c

bb.c:                                             ; preds = %.loopexit20, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.d:                                             ; preds = %bb.f, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4meta13DataMapRecordECshxhuDJfZv4T_6fontbe(ptr nonnull %i.f) #26
          to label %bb.m unwind label %bb.l

bb.e:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.e
  %i.j = load i64, ptr %i.b, align 8, !range !11, !noundef !4
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !32, !noundef !4 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.k, label %bb.f, label %bb.g, !prof !9

bb.f:                                             ; preds = %.noexc
  %i.o = load i64, ptr %i.n, align 8
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.o) #31
          to label %.noexc6 unwind label %bb.d

.noexc6:                                          ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %.noexc
  %i.p = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.q = icmp ugt i64 %i.m, 3
  tail call void @llvm.assume(i1 %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.p, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %.sroa.5.0.copyload, ptr %.sroa.415.0..sroa_idx, align 8
  store i64 %i.m, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.p, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9573)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9574)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9575
  invoke fastcc void @_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5array4iter8IntoIterTNtNtCsbZq13ASDQ8l_10font_types3tag3TagRINtNtCsgCecv3eZDcN_5alloc3vec3VecNtCs9NoVXegZYB5_8smol_str7SmolStrEEKj2_ENCNvXNtCshxhuDJfZv4T_6fontbe4metaNtB3G_8MetaWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB3I_13orchestration7ContextNtB5e_9AnyWorkIdNtNtB3I_5error5ErrorE4exec0ENCB3D_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB3I_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %.noexc7 unwind label %.loopexit.split-lp

.noexc7:                                          ; preds = %bb.g
  %i.r = load ptr, ptr %i.a, align 8, !noalias !9575, !noundef !4 ; 2 uses
  %.not13.i.i = icmp eq ptr %i.r, null
  br i1 %.not13.i.i, label %.loopexit20, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc7
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.h

bb.h:                                             ; preds = %.noexc8, %.lr.ph.i.i
  %i.s = phi ptr [ %i.r, %.lr.ph.i.i ], [ %i.aa, %.noexc8 ] ; 2 uses
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !9575
  %i.t = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !9576, !noalias !9577, !noundef !4 ; 5 uses
  %i.u = icmp ult i64 %i.t, 576460752303423488
  call void @llvm.assume(i1 %i.u)
  %i.v = load i64, ptr %i.e, align 8, !range !10, !alias.scope !9576, !noalias !9577, !noundef !4
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %bb.j, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4meta13DataMapRecordE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4meta13DataMapRecordE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i: ; preds = %bb.j, %bb.h
  %i.x = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !9576, !noalias !9577, !nonnull !4, !noundef !4
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.t ; 2 uses
  store ptr %i.s, ptr %i.y, align 8
  %.sroa.411.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 %.sroa.5.0.copyload.i.i, ptr %.sroa.411.0..sroa_idx.i.i, align 8
  %i.z = add nuw nsw i64 %i.t, 1
  store i64 %i.z, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !9576, !noalias !9577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9575
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9575
  invoke fastcc void @_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5array4iter8IntoIterTNtNtCsbZq13ASDQ8l_10font_types3tag3TagRINtNtCsgCecv3eZDcN_5alloc3vec3VecNtCs9NoVXegZYB5_8smol_str7SmolStrEEKj2_ENCNvXNtCshxhuDJfZv4T_6fontbe4metaNtB3G_8MetaWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB3I_13orchestration7ContextNtB5e_9AnyWorkIdNtNtB3I_5error5ErrorE4exec0ENCB3D_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB3I_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %.noexc8 unwind label %.loopexit

.noexc8:                                          ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4meta13DataMapRecordE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i
  %i.aa = load ptr, ptr %i.a, align 8, !noalias !9575, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %.loopexit20, label %bb.h

bb.i:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4meta13DataMapRecordECshxhuDJfZv4T_6fontbe(ptr nonnull %i.s) #26
          to label %.body unwind label %bb.k

bb.j:                                             ; preds = %bb.h
  invoke void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.t, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 16)
          to label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4meta13DataMapRecordE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable

.loopexit:                                        ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4meta13DataMapRecordE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.g
end_hunk_0
begin_hunk_1_@_RNvXNtCsbDKHzkXHCUM_9hashbrown3mapINtB2_7HashMapNtNtCsbZq13ASDQ8l_10font_types3tag3TaguNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCshxhuDJfZv4T_6fontbe

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsf3Ta7LF998c_4core3fmt5Write9write_fmtCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenEE9drop_slowB10_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #18

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs3v5ql5U6hxj_6fontir2ir12GlyphAnchorsE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #18

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs3v5ql5U6hxj_6fontir2ir15KerningInstanceE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #18

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs3v5ql5U6hxj_6fontir2ir5GlyphE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #18

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs6WnK4nVnpEz_11write_fonts5graph5GraphE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #18

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration12GvarFragmentE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #18

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration12KernFragmentE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #18

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCscScJTt9VrQp_6fea_rs5parse6source10SourceListE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #18

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16IBT_B17_TNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders18ValueRecordBuilderB23_EEENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCshxhuDJfZv4T_6fontbe(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EIBT_B17_TNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders18ValueRecordBuilderB33_EEENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCshxhuDJfZv4T_6fontbe(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsgCecv3eZDcN_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTtINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEENCNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB4h_14CompilationCtxNtNtB4j_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE19finalize_gdef_tables2_0EB2n_EB6a_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsgCecv3eZDcN_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTtINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEENCNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB4h_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB5q_16FeaVariationInfoE19finalize_gdef_tables2_0EB2n_EB5s_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsgCecv3eZDcN_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCsf3Ta7LF998c_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15VariationRegionINtB4_3VecNtNtCscDfuDmzQoJe_5kurbo4vec24Vec2EEENCNvNtCshxhuDJfZv4T_6fontbe6glyphs14compute_deltass_0EINtNtB1d_6result6ResultzNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gvar3iup8IupErrorEETB2H_IB3F_NtB5J_10GlyphDeltaEEEB4v_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsgCecv3eZDcN_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15VariationRegionINtB4_3VecdEEENCINvNtCshxhuDJfZv4T_6fontbe8features23resolve_variable_metricIB17_INtNtNtB1f_5slice4iter4IterTINtNtB2q_6coords8LocationNtB57_15NormalizedSpaceEINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEENCNvNtB3C_5marks16make_caret_values_0EEs_0ETB2m_dEEB3E_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsgCecv3eZDcN_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15VariationRegionINtB4_3VecdEEENCINvNtCshxhuDJfZv4T_6fontbe8features23resolve_variable_metricIB17_INtNtNtB1f_5slice4iter4IterTINtNtB2q_6coords8LocationNtB57_15NormalizedSpaceEINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEENCNvNtB3C_5marks19resolve_anchor_onces0_0EEs_0ETB2m_dEEB3E_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsgCecv3eZDcN_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15VariationRegionINtB4_3VecdEEENCINvNtCshxhuDJfZv4T_6fontbe8features23resolve_variable_metricIB17_INtNtNtB1f_5slice4iter4IterTINtNtB2q_6coords8LocationNtB57_15NormalizedSpaceEINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEENCNvNtB3C_5marks19resolve_anchor_onces_0EEs_0ETB2m_dEEB3E_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsgCecv3eZDcN_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15VariationRegionINtB4_3VecdEEENCINvNtCshxhuDJfZv4T_6fontbe8features23resolve_variable_metricINtNtNtNtB6_11collections5btree3map4IterINtNtB2q_6coords8LocationNtB5e_15NormalizedSpaceEINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEEs_0ETB2m_dEEB3E_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsgCecv3eZDcN_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapIB17_INtNtB4_9into_iter8IntoItermENCNvXNtCshxhuDJfZv4T_6fontbe4hvarNtB2x_8HvarWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB2z_13orchestration7ContextNtB45_9AnyWorkIdNtNtB2z_5error5ErrorE4execs0_0ENCINvXse_NtNtCs6WnK4nVnpEz_11write_fonts6tables10variationsNtB5s_16DeltaSetIndexMapINtNtNtB1d_6traits7collect12FromIteratorNtNtB5u_6layout14VariationIndexE9from_iterB1U_E0EmEB2z_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsgCecv3eZDcN_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapIB17_INtNtB4_9into_iter8IntoItermENCNvXNtCshxhuDJfZv4T_6fontbe4vvarNtB2x_8VvarWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB2z_13orchestration7ContextNtB45_9AnyWorkIdNtNtB2z_5error5ErrorE4execs0_0ENCINvXse_NtNtCs6WnK4nVnpEz_11write_fonts6tables10variationsNtB5s_16DeltaSetIndexMapINtNtNtB1d_6traits7collect12FromIteratorNtNtB5u_6layout14VariationIndexE9from_iterB1U_E0EmEB2z_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set4IterINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_EEENtNtNtB8_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEENtNtNtB8_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16B17_ENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCshxhuDJfZv4T_6fontbe(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables10variations17ItemVariationDataE13new_uninit_inCshxhuDJfZv4T_6fontbe() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base10BaseScriptE13new_uninit_inCshxhuDJfZv4T_6fontbe() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base10BaseValuesE13new_uninit_inCshxhuDJfZv4T_6fontbe() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base6MinMaxE13new_uninit_inCshxhuDJfZv4T_6fontbe() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base9BaseCoordE13new_uninit_inCshxhuDJfZv4T_6fontbe() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4cmap10DefaultUvsE13new_uninit_inCshxhuDJfZv4T_6fontbe() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4cmap13NonDefaultUvsE13new_uninit_inCshxhuDJfZv4T_6fontbe() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4stat9AxisValueE13new_uninit_inCshxhuDJfZv4T_6fontbe() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout22DeviceOrVariationIndexE13new_uninit_inCshxhuDJfZv4T_6fontbe() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout9ConditionE13new_uninit_inCshxhuDJfZv4T_6fontbe() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtCsbDKHzkXHCUM_9hashbrown3mapINtB2_7HashMapINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCshxhuDJfZv4T_6fontbe(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4ItermuENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCsf3Ta7LF998c_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCsf3Ta7LF998c_4core3fmtSNtNtCs3v5ql5U6hxj_6fontir2ir5PaintNtB5_5Debug3fmtCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCsf3Ta7LF998c_4core3fmtSNtNtCs3v5ql5U6hxj_6fontir2ir9ColorStopNtB5_5Debug3fmtCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef range(i64 0, 768614336404564651), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCsf3Ta7LF998c_4core3fmtSNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentNtB5_5Debug3fmtCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 96076792050570582), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCsf3Ta7LF998c_4core3fmtSNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtB5_5Debug3fmtCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, 2305843009213693952), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCsf3Ta7LF998c_4core3fmtSNtNtCscDfuDmzQoJe_5kurbo5point5PointNtB5_5Debug3fmtCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCsf3Ta7LF998c_4core3fmtSNtNtCscDfuDmzQoJe_5kurbo8cubicbez8CubicBezNtB5_5Debug3fmtCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 144115188075855872), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCsf3Ta7LF998c_4core3fmtSNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtB5_5Debug3fmtCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 384307168202282326), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCsf3Ta7LF998c_4core3fmtSNtNtCshxhuDJfZv4T_6fontbe5error5ErrorNtB5_5Debug3fmtBz_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 96076792050570582), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCsf3Ta7LF998c_4core3fmtSReNtB5_5Debug3fmtCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCsf3Ta7LF998c_4core3fmtSjNtB5_5Debug3fmtCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 1152921504606846976), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtCsbDKHzkXHCUM_9hashbrown3mapINtB2_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringBK_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCshxhuDJfZv4T_6fontbe(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBN_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBN_15NormalizedSpaceENtNtCscDfuDmzQoJe_5kurbo5point5PointENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBN_15NormalizedSpaceENtNtCscDfuDmzQoJe_5kurbo7bezpath7BezPathENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EtENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtBO_2ir12GlyphAnchorsEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtBO_2ir15KerningInstanceEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtNtCscScJTt9VrQp_6fea_rs10token_tree5typed3TagENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits9GlyphInfoENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB1B_(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtBM_12KernFragmentEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextBO_(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata7NameKeyNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvXs_NvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10skip_while9SkipWhileNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterNCNvMss_NtB1U_5typedNtB2L_5Gsub211replacement0ENtB4_13SpecAdvanceBy15spec_advance_byCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(168), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvXs_NvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator10advance_byNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterNtB4_13SpecAdvanceBy15spec_advance_byCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(160), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i16, i16 } @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtNtB8_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsA_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtBb_3vec3VecjEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4D_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtB6_10BaseMinMaxNtB6_7AstNode4cast(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i16> @llvm.umax.v2i16(<2 x i16>, <2 x i16>) #11

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #16 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { inlinehint }
attributes #24 = { noinline noreturn }
attributes #25 = { noinline }
attributes #26 = { cold }
attributes #27 = { cold noreturn nounwind }
attributes #28 = { nounwind }
attributes #29 = { "function-inline-cost-multiplier"="4" }
attributes #30 = { "function-inline-cost-multiplier"="2" }
attributes #31 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (809936eac 2026-09-12)"}
!4 = !{}
!5 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!6 = !{i64 8}
!7 = !{!"address", !"read_provenance"}
!8 = !{i32 0, i32 1114112}
!9 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!10 = !{i64 0, i64 -9223372036854775808}
!11 = !{i64 0, i64 2}
!12 = !{i8 0, i8 26}
!13 = !{i64 0, i64 3}
!14 = !{i64 -1, i64 3}
!15 = !{i64 -1, i64 -9223372036854775806}
!16 = !{i8 -2, i8 26}
!17 = !{i64 -1, i64 -9223372036854775808}
!18 = !{i16 0, i16 3}
!19 = !{i64 0, i64 -9223372036854775806}
!20 = !{i64 0, i64 9}
!21 = !{i64 0, i64 8}
!22 = !{i64 0, i64 -9223372036854775805}
!23 = !{ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout9ConditionEECshxhuDJfZv4T_6fontbe}
!24 = !{i16 0, i16 5}
!25 = !{i64 -2, i64 -9223372036854775808}
!26 = !{i64 1, i64 536870913}
!27 = !{i64 0, i64 13}
!28 = !{i64 0, i64 5}
!29 = !{i64 0, i64 37}
!30 = !{i64 0, i64 4}
!31 = !{i64 0, i64 -9223372036854775804}
!32 = !{i64 0, i64 -9223372036854775807}
!33 = !{i16 0, i16 2}
!34 = !{!"llvm.loop.isvectorized", i32 1}
!35 = !{!"llvm.loop.unroll.runtime.disable"}
!36 = !{i64 -2, i64 -9223372036854775806}
!37 = !{!"llvm.loop.peeled.count", i32 1}
!38 = !{i64 -1, i64 -9223372036854775805}
!39 = !{i64 -1, i64 5}
!40 = !{i16 -1, i16 5}
!41 = !{i16 0, i16 251}
!42 = !{i16 -1, i16 251}
!43 = !{i8 -1, i8 26}
!44 = !{i64 -1, i64 11}
!45 = !{i8 0, i8 2}
!46 = !{!"branch_weights", i32 2146410443, i32 1073205}
!47 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!48 = !{i64 -1, i64 6}
!49 = !{!"branch_weights", i32 2000, i32 2, i32 2000}
!50 = distinct !{!50, !"_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtNtB7_11collections5btree3set8BTreeSetINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_EEE10retain_mutNCINvB2_6retainNCNvNtNtCshxhuDJfZv4T_6fontbe8features4kern13merge_scripts0E0EB2O_"}
!51 = distinct !{!51, !50, !"_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtNtB7_11collections5btree3set8BTreeSetINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_EEE10retain_mutNCINvB2_6retainNCNvNtNtCshxhuDJfZv4T_6fontbe8features4kern13merge_scripts0E0EB2O_: argument 0"}
!52 = distinct !{!52, !"_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecINtNtNtNtB9_11collections5btree3set8BTreeSetINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_EEE6retainNCNvNtNtCshxhuDJfZv4T_6fontbe8features4kern13merge_scripts0E0B2w_"}
!53 = distinct !{!53, !52, !"_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecINtNtNtNtB9_11collections5btree3set8BTreeSetINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_EEE6retainNCNvNtNtCshxhuDJfZv4T_6fontbe8features4kern13merge_scripts0E0B2w_: argument 0"}
!54 = distinct !{!54, !"_RNCNvNtNtCshxhuDJfZv4T_6fontbe8features4kern13merge_scripts0B7_"}
!55 = distinct !{!55, !54, !"_RNCNvNtNtCshxhuDJfZv4T_6fontbe8features4kern13merge_scripts0B7_: argument 0"}
!56 = distinct !{!56, !"_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecINtNtNtNtB9_11collections5btree3set8BTreeSetINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_EEE6retainNCNvNtNtCshxhuDJfZv4T_6fontbe8features4kern13merge_scripts0E0B2w_"}
!57 = distinct !{!57, !56, !"_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecINtNtNtNtB9_11collections5btree3set8BTreeSetINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_EEE6retainNCNvNtNtCshxhuDJfZv4T_6fontbe8features4kern13merge_scripts0E0B2w_: argument 0"}
!58 = distinct !{!58, !"_RNCNvNtNtCshxhuDJfZv4T_6fontbe8features4kern13merge_scripts0B7_"}
!59 = distinct !{!59, !58, !"_RNCNvNtNtCshxhuDJfZv4T_6fontbe8features4kern13merge_scripts0B7_: argument 0"}
!60 = distinct !{!60, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNvMs_NtCsgCecv3eZDcN_5alloc3vecINtBJ_3VecppE10retain_mut10PanicGuardINtNtNtNtBL_11collections5btree3set8BTreeSetINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_EENtNtBL_5alloc6GlobalEECshxhuDJfZv4T_6fontbe"}
!61 = distinct !{!61, !60, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNvMs_NtCsgCecv3eZDcN_5alloc3vecINtBJ_3VecppE10retain_mut10PanicGuardINtNtNtNtBL_11collections5btree3set8BTreeSetINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_EENtNtBL_5alloc6GlobalEECshxhuDJfZv4T_6fontbe: argument 0"}
!62 = distinct !{!62, !"_RNvXNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecppE10retain_mutINtB2_10PanicGuardINtNtNtNtB9_11collections5btree3set8BTreeSetINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_EENtNtB9_5alloc6GlobalENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe"}
!63 = distinct !{!63, !62, !"_RNvXNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecppE10retain_mutINtB2_10PanicGuardINtNtNtNtB9_11collections5btree3set8BTreeSetINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_EENtNtB9_5alloc6GlobalENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe: argument 0"}
!64 = !{!51}
!65 = !{!53}
!66 = !{!55}
!67 = !{!53, !51}
!68 = !{!55, !53}
!69 = !{!55, !53, !51}
!70 = !{!55, !51}
!71 = !{!57}
!72 = !{!59}
!73 = !{!57, !51}
!74 = !{!59, !57}
!75 = !{!59, !57, !51}
!76 = !{!59, !51}
!77 = !{!63, !61, !51}
!78 = !{!63, !61}
!79 = distinct !{!79, !"_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E10retain_mutNCINvB2_6retainNCNvMs1_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB22_10MaxBuilder23update_composite_limitss_0E0EB24_"}
!80 = distinct !{!80, !79, !"_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E10retain_mutNCINvB2_6retainNCNvMs1_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB22_10MaxBuilder23update_composite_limitss_0E0EB24_: argument 0"}
!81 = distinct !{!81, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNvMs_NtCsgCecv3eZDcN_5alloc3vecINtBJ_3VecppE10retain_mut10PanicGuardNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtBL_5alloc6GlobalEECshxhuDJfZv4T_6fontbe"}
!82 = distinct !{!82, !81, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNvMs_NtCsgCecv3eZDcN_5alloc3vecINtBJ_3VecppE10retain_mut10PanicGuardNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtBL_5alloc6GlobalEECshxhuDJfZv4T_6fontbe: argument 0"}
!83 = distinct !{!83, !"_RNvXNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecppE10retain_mutINtB2_10PanicGuardNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtB9_5alloc6GlobalENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe"}
!84 = distinct !{!84, !83, !"_RNvXNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecppE10retain_mutINtB2_10PanicGuardNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtB9_5alloc6GlobalENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe: argument 0"}
!85 = !{!80}
!86 = !{!84, !82, !80}
!87 = !{!84, !82}
!88 = distinct !{!88, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNvMs_NtCsgCecv3eZDcN_5alloc3vecINtBJ_3VecppE8dedup_by13FillGapOnDropRINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB2t_ENtNtBL_5alloc6GlobalEECshxhuDJfZv4T_6fontbe"}
!89 = distinct !{!89, !88, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNvMs_NtCsgCecv3eZDcN_5alloc3vecINtBJ_3VecppE8dedup_by13FillGapOnDropRINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB2t_ENtNtBL_5alloc6GlobalEECshxhuDJfZv4T_6fontbe: argument 0"}
!90 = distinct !{!90, !"_RNvXNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecppE8dedup_byINtB2_13FillGapOnDropRINtNtNtNtB9_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB1X_ENtNtB9_5alloc6GlobalENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe"}
!91 = distinct !{!91, !90, !"_RNvXNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecppE8dedup_byINtB2_13FillGapOnDropRINtNtNtNtB9_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB1X_ENtNtB9_5alloc6GlobalENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe: argument 0"}
!92 = !{!91, !89}
!93 = distinct !{!93, !"_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorE10retain_mutNCINvB2_6retainNCNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB1R_17MarkLookupBuilder3news_00E0EB1V_"}
!94 = distinct !{!94, !93, !"_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorE10retain_mutNCINvB2_6retainNCNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB1R_17MarkLookupBuilder3news_00E0EB1V_: argument 0"}
!95 = distinct !{!95, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNvMs_NtCsgCecv3eZDcN_5alloc3vecINtBJ_3VecppE10retain_mut10PanicGuardRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorNtNtBL_5alloc6GlobalEECshxhuDJfZv4T_6fontbe"}
!96 = distinct !{!96, !95, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNvMs_NtCsgCecv3eZDcN_5alloc3vecINtBJ_3VecppE10retain_mut10PanicGuardRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorNtNtBL_5alloc6GlobalEECshxhuDJfZv4T_6fontbe: argument 0"}
!97 = distinct !{!97, !"_RNvXNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecppE10retain_mutINtB2_10PanicGuardRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorNtNtB9_5alloc6GlobalENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe"}
!98 = distinct !{!98, !97, !"_RNvXNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecppE10retain_mutINtB2_10PanicGuardRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorNtNtB9_5alloc6GlobalENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe: argument 0"}
!99 = !{!94}
!100 = !{i8 0, i8 34}
!101 = !{!"branch_weights", !"expected", i32 1073741824, i32 1073741824}
!102 = !{!98, !96, !94}
!103 = !{!98, !96}
!104 = distinct !{!104, !"_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_9UserSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0CshxhuDJfZv4T_6fontbe"}
!105 = distinct !{!105, !104, !"_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_9UserSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0CshxhuDJfZv4T_6fontbe: argument 0"}
!106 = distinct !{!106, !"_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_9UserSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0CshxhuDJfZv4T_6fontbe"}
!107 = distinct !{!107, !106, !"_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_9UserSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0CshxhuDJfZv4T_6fontbe: argument 0"}
!108 = !{!105}
!109 = !{!107}
!110 = distinct !{!110, !"_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTtlEE10retain_mutNCINvB2_6retainNCINvMNtNtNtCs6WnK4nVnpEz_11write_fonts6tables10variations11ivs_builderNtB1h_21VariationStoreBuilder10add_deltassE0E0ECshxhuDJfZv4T_6fontbe"}
!111 = distinct !{!111, !110, !"_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTtlEE10retain_mutNCINvB2_6retainNCINvMNtNtNtCs6WnK4nVnpEz_11write_fonts6tables10variations11ivs_builderNtB1h_21VariationStoreBuilder10add_deltassE0E0ECshxhuDJfZv4T_6fontbe: argument 0"}
!112 = distinct !{!112, !114}
!113 = !{!111}
!114 = !{!"llvm.loop.unroll.disable"}
!115 = distinct !{!115, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs6ycZ7hHN0vs_14icu_properties5props9BidiClassE7reserveCshxhuDJfZv4T_6fontbe"}
!116 = distinct !{!116, !115, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs6ycZ7hHN0vs_14icu_properties5props9BidiClassE7reserveCshxhuDJfZv4T_6fontbe: argument 0"}
!117 = distinct !{!117, !"_RINvYINtNtCsf3Ta7LF998c_4core6option8IntoIterNtNtCs6ycZ7hHN0vs_14icu_properties5props9BidiClassENtNtNtNtB8_4iter6traits8iterator8Iterator8for_eachNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB2t_3VecBH_E14extend_trustedB3_E0ECshxhuDJfZv4T_6fontbe"}
!118 = distinct !{!118, !117, !"_RINvYINtNtCsf3Ta7LF998c_4core6option8IntoIterNtNtCs6ycZ7hHN0vs_14icu_properties5props9BidiClassENtNtNtNtB8_4iter6traits8iterator8Iterator8for_eachNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB2t_3VecBH_E14extend_trustedB3_E0ECshxhuDJfZv4T_6fontbe: argument 0"}
!119 = distinct !{!119, !"_RINvYINtNtCsf3Ta7LF998c_4core6option8IntoIterNtNtCs6ycZ7hHN0vs_14icu_properties5props9BidiClassENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvB1w_8for_each4callBH_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB2S_3VecBH_E14extend_trustedB3_E0E0ECshxhuDJfZv4T_6fontbe"}
!120 = distinct !{!120, !119, !"_RINvYINtNtCsf3Ta7LF998c_4core6option8IntoIterNtNtCs6ycZ7hHN0vs_14icu_properties5props9BidiClassENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvB1w_8for_each4callBH_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB2S_3VecBH_E14extend_trustedB3_E0E0ECshxhuDJfZv4T_6fontbe: argument 0"}
!121 = distinct !{!121, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callNtNtCs6ycZ7hHN0vs_14icu_properties5props9BidiClassNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB2c_3VecB1f_E14extend_trustedINtNtBe_6option8IntoIterB1f_EE0E0CshxhuDJfZv4T_6fontbe"}
!122 = distinct !{!122, !121, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callNtNtCs6ycZ7hHN0vs_14icu_properties5props9BidiClassNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB2c_3VecB1f_E14extend_trustedINtNtBe_6option8IntoIterB1f_EE0E0CshxhuDJfZv4T_6fontbe: argument 0"}
!123 = distinct !{!123, !"_RNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB8_3VecNtNtCs6ycZ7hHN0vs_14icu_properties5props9BidiClassE14extend_trustedINtNtCsf3Ta7LF998c_4core6option8IntoIterBI_EE0CshxhuDJfZv4T_6fontbe"}
!124 = distinct !{!124, !123, !"_RNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB8_3VecNtNtCs6ycZ7hHN0vs_14icu_properties5props9BidiClassE14extend_trustedINtNtCsf3Ta7LF998c_4core6option8IntoIterBI_EE0CshxhuDJfZv4T_6fontbe: argument 0"}
!125 = !{!116}
!126 = !{!124, !122, !120, !118}
!127 = !{!120, !118}
!128 = distinct !{!128, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdE7reserveCshxhuDJfZv4T_6fontbe"}
!129 = distinct !{!129, !128, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdE7reserveCshxhuDJfZv4T_6fontbe: argument 0"}
!130 = !{!129}
!131 = distinct !{!131, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdE7reserveCshxhuDJfZv4T_6fontbe"}
!132 = distinct !{!132, !131, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdE7reserveCshxhuDJfZv4T_6fontbe: argument 0"}
!133 = !{!132}
!134 = distinct !{!134, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdE7reserveCshxhuDJfZv4T_6fontbe"}
!135 = distinct !{!135, !134, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdE7reserveCshxhuDJfZv4T_6fontbe: argument 0"}
!136 = !{!135}
!137 = distinct !{!137, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCshxhuDJfZv4T_6fontbe8features10properties15ScriptDirectionE7reserveBK_"}
!138 = distinct !{!138, !137, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCshxhuDJfZv4T_6fontbe8features10properties15ScriptDirectionE7reserveBK_: argument 0"}
!139 = distinct !{!139, !"_RINvYINtNtCsf3Ta7LF998c_4core6option8IntoIterNtNtNtCshxhuDJfZv4T_6fontbe8features10properties15ScriptDirectionENtNtNtNtB8_4iter6traits8iterator8Iterator8for_eachNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB2I_3VecBH_E14extend_trustedB3_E0EBN_"}
!140 = distinct !{!140, !139, !"_RINvYINtNtCsf3Ta7LF998c_4core6option8IntoIterNtNtNtCshxhuDJfZv4T_6fontbe8features10properties15ScriptDirectionENtNtNtNtB8_4iter6traits8iterator8Iterator8for_eachNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB2I_3VecBH_E14extend_trustedB3_E0EBN_: argument 0"}
!141 = distinct !{!141, !"_RINvYINtNtCsf3Ta7LF998c_4core6option8IntoIterNtNtNtCshxhuDJfZv4T_6fontbe8features10properties15ScriptDirectionENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvB1L_8for_each4callBH_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB37_3VecBH_E14extend_trustedB3_E0E0EBN_"}
!142 = distinct !{!142, !141, !"_RINvYINtNtCsf3Ta7LF998c_4core6option8IntoIterNtNtNtCshxhuDJfZv4T_6fontbe8features10properties15ScriptDirectionENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvB1L_8for_each4callBH_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB37_3VecBH_E14extend_trustedB3_E0E0EBN_: argument 0"}
!143 = distinct !{!143, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callNtNtNtCshxhuDJfZv4T_6fontbe8features10properties15ScriptDirectionNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB2r_3VecB1f_E14extend_trustedINtNtBe_6option8IntoIterB1f_EE0E0B1l_"}
!144 = distinct !{!144, !143, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callNtNtNtCshxhuDJfZv4T_6fontbe8features10properties15ScriptDirectionNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB2r_3VecB1f_E14extend_trustedINtNtBe_6option8IntoIterB1f_EE0E0B1l_: argument 0"}
!145 = distinct !{!145, !"_RNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB8_3VecNtNtNtCshxhuDJfZv4T_6fontbe8features10properties15ScriptDirectionE14extend_trustedINtNtCsf3Ta7LF998c_4core6option8IntoIterBI_EE0BO_"}
!146 = distinct !{!146, !145, !"_RNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB8_3VecNtNtNtCshxhuDJfZv4T_6fontbe8features10properties15ScriptDirectionE14extend_trustedINtNtCsf3Ta7LF998c_4core6option8IntoIterBI_EE0BO_: argument 0"}
!147 = !{!138}
!148 = !{!146, !144, !142, !140}
!149 = !{!142, !140}
!150 = distinct !{!150, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE7reserveCshxhuDJfZv4T_6fontbe"}
!151 = distinct !{!151, !150, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE7reserveCshxhuDJfZv4T_6fontbe: argument 0"}
!152 = !{!151}
!153 = distinct !{!153, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECshxhuDJfZv4T_6fontbe"}
!154 = distinct !{!154, !153, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECshxhuDJfZv4T_6fontbe: argument 0"}
!155 = distinct !{!155, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECshxhuDJfZv4T_6fontbe"}
!156 = distinct !{!156, !155, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECshxhuDJfZv4T_6fontbe: argument 0"}
!157 = distinct !{!157, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str4ReprECshxhuDJfZv4T_6fontbe"}
!158 = distinct !{!158, !157, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str4ReprECshxhuDJfZv4T_6fontbe: argument 0"}
!159 = distinct !{!159, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArceEECshxhuDJfZv4T_6fontbe"}
!160 = distinct !{!160, !159, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArceEECshxhuDJfZv4T_6fontbe: argument 0"}
!161 = distinct !{!161, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe"}
end_hunk_1
