Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/glyphs_reader-20725db9c81728ed.glyphs_reader.109226b79a13bccd-cgu.02?download=true
inline.NumInlined: 1662
inline.NumDeleted: 899
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecdEINtB2_18SpecFromIterNesteddINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1D_3str4iter5SplitReENCNvXsk_NtCs1qcNTItuk7F_13glyphs_reader5plistNtNtCscDfuDmzQoJe_5kurbo6affine6AffineNtB2T_9FromPlist5parse0EE9from_iterB2V_:bb.a

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc7, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecdE7reserveCs1qcNTItuk7F_13glyphs_reader.exit.i.i, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs1qcNTItuk7F_13glyphs_reader.exit
  %lpad.loopexit.split-lp11 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecdENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecdEECs1qcNTItuk7F_13glyphs_reader.exit unwind label %bb.f

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecdEINtB2_10SpecExtenddINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1l_3str4iter5SplitReENCNvXsk_NtCs1qcNTItuk7F_13glyphs_reader5plistNtNtCscDfuDmzQoJe_5kurbo6affine6AffineNtB2B_9FromPlist5parse0EE11spec_extendB2D_.exit: ; preds = %.noexc8, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.e

bb.f:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecdEECs1qcNTItuk7F_13glyphs_reader.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp11
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB7_3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font5ShapeEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendBY_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = invoke { ptr, i64 } @_RNvMs0_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1qcNTItuk7F_13glyphs_reader4font5ShapeE8as_sliceB10_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { ptr, i64 } %i.b, 0
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !3135, !noundef !4 ; 5 uses
  %i.g = load i64, ptr %0, align 8, !range !13, !alias.scope !3135, !noundef !4
  %i.h = sub i64 %i.g, %i.f
  %i.i = icmp ugt i64 %i.d, %i.h
  br i1 %i.i, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font5ShapeE7reserveBI_.exit.thread.i, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font5ShapeE7reserveBI_.exit.i, !prof !6

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font5ShapeE7reserveBI_.exit.thread.i: ; preds = %bb.b
  invoke void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.f, i64 noundef %i.d, i64 noundef 8, i64 noundef 256)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font5ShapeE7reserveBI_.exit.thread.i
  %i.j = load i64, ptr %i.e, align 8, !alias.scope !3136, !noundef !4 ; 2 uses
  %i.k = icmp ult i64 %i.j, 36028797018963968
  tail call void @llvm.assume(i1 %i.k)
  br label %bb.c

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font5ShapeE7reserveBI_.exit.i: ; preds = %bb.b
  %i.l = icmp ult i64 %i.f, 36028797018963968
  tail call void @llvm.assume(i1 %i.l)
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCs1qcNTItuk7F_13glyphs_reader4font5ShapeEEB1j_.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font5ShapeE7reserveBI_.exit.i, %.noexc
  %i.m = phi i64 [ %i.j, %.noexc ], [ %i.f, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font5ShapeE7reserveBI_.exit.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !3136, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw [256 x i8], ptr %i.o, i64 %i.m
  %i.q = shl nuw nsw i64 %i.d, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr readonly align 8 %i.c, i64 %i.q, i1 false)
  %.pre.i = load i64, ptr %i.e, align 8, !alias.scope !3136
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCs1qcNTItuk7F_13glyphs_reader4font5ShapeEEB1j_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCs1qcNTItuk7F_13glyphs_reader4font5ShapeEEB1j_.exit: ; preds = %bb.c, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font5ShapeE7reserveBI_.exit.i
  %i.r = phi i64 [ %.pre.i, %bb.c ], [ %i.f, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font5ShapeE7reserveBI_.exit.i ]
  %i.s = add i64 %i.r, %i.d
  store i64 %i.s, ptr %i.e, align 8, !alias.scope !3136
  %i.t = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.v, ptr %i.a, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.t, ptr %i.w, align 8
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs1qcNTItuk7F_13glyphs_reader4font5ShapeENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCs1qcNTItuk7F_13glyphs_reader4font5ShapeEEB1t_.exit: ; preds = %bb.d
  resume { ptr, i32 } %lpad.thr_comm

bb.d:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font5ShapeE7reserveBI_.exit.thread.i, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1qcNTItuk7F_13glyphs_reader4font5ShapeENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCs1qcNTItuk7F_13glyphs_reader4font5ShapeEEB1t_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB7_3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font6AnchorEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendBY_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = invoke { ptr, i64 } @_RNvMs0_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1qcNTItuk7F_13glyphs_reader4font6AnchorE8as_sliceB10_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { ptr, i64 } %i.b, 0
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !3141, !noundef !4 ; 5 uses
  %i.g = load i64, ptr %0, align 8, !range !13, !alias.scope !3141, !noundef !4
  %i.h = sub i64 %i.g, %i.f
  %i.i = icmp ugt i64 %i.d, %i.h
  br i1 %i.i, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font6AnchorE7reserveBI_.exit.thread.i, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font6AnchorE7reserveBI_.exit.i, !prof !6

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font6AnchorE7reserveBI_.exit.thread.i: ; preds = %bb.b
  invoke void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.f, i64 noundef %i.d, i64 noundef 8, i64 noundef 40)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font6AnchorE7reserveBI_.exit.thread.i
  %i.j = load i64, ptr %i.e, align 8, !alias.scope !3142, !noundef !4 ; 2 uses
  %i.k = icmp ult i64 %i.j, 230584300921369396
  tail call void @llvm.assume(i1 %i.k)
  br label %bb.c

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font6AnchorE7reserveBI_.exit.i: ; preds = %bb.b
  %i.l = icmp ult i64 %i.f, 230584300921369396
  tail call void @llvm.assume(i1 %i.l)
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCs1qcNTItuk7F_13glyphs_reader4font6AnchorEEB1j_.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font6AnchorE7reserveBI_.exit.i, %.noexc
  %i.m = phi i64 [ %i.j, %.noexc ], [ %i.f, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font6AnchorE7reserveBI_.exit.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !3142, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %i.m
  %i.q = mul nuw nsw i64 %i.d, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr readonly align 8 %i.c, i64 %i.q, i1 false)
  %.pre.i = load i64, ptr %i.e, align 8, !alias.scope !3142
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCs1qcNTItuk7F_13glyphs_reader4font6AnchorEEB1j_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCs1qcNTItuk7F_13glyphs_reader4font6AnchorEEB1j_.exit: ; preds = %bb.c, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font6AnchorE7reserveBI_.exit.i
  %i.r = phi i64 [ %.pre.i, %bb.c ], [ %i.f, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font6AnchorE7reserveBI_.exit.i ]
  %i.s = add i64 %i.r, %i.d
  store i64 %i.s, ptr %i.e, align 8, !alias.scope !3142
  %i.t = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.v, ptr %i.a, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.t, ptr %i.w, align 8
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs1qcNTItuk7F_13glyphs_reader4font6AnchorENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCs1qcNTItuk7F_13glyphs_reader4font6AnchorEEB1t_.exit: ; preds = %bb.d
  resume { ptr, i32 } %lpad.thr_comm

bb.d:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font6AnchorE7reserveBI_.exit.thread.i, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1qcNTItuk7F_13glyphs_reader4font6AnchorENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCs1qcNTItuk7F_13glyphs_reader4font6AnchorEEB1t_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, double } @_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter5SplitReENCNvXsk_NtCs1qcNTItuk7F_13glyphs_reader5plistNtNtCscDfuDmzQoJe_5kurbo6affine6AffineNtB1w_9FromPlist5parse0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3178)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !range !25, !alias.scope !3179, !noundef !4
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_RNvXsX_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_5SplitReENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val.i.i = load ptr, ptr %i.f, align 8, !alias.scope !3179, !nonnull !4, !noundef !4 ; 15 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val1.i.i = load i64, ptr %i.g, align 8, !alias.scope !3179, !noundef !4 ; 33 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3180)
  %i.h = load i64, ptr %0, align 8, !range !19, !alias.scope !3181, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  switch i64 %i.h, label %default.unreachable [
    i64 0, label %.preheader.i.i.i
    i64 1, label %bb.q
    i64 2, label %bb.r
  ]

.preheader.i.i.i:                                 ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.k = load i8, ptr %i.j, align 2, !range !25, !alias.scope !3181
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  br i1 %i.l, label %bb.ak, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i.i.i
  %.promoted205.i.i.i = load i8, ptr %i.m, align 8, !alias.scope !3181 ; 4 uses
  %.promoted156.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !3181 ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3182)
  %i.n = trunc nuw i8 %.promoted205.i.i.i to i1   ; 2 uses
  %i.o = icmp eq i64 %.promoted156.i.i.i, 0
  br i1 %i.o, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.preheader.i.i.i
  %.not.i.i.us.i.peel.i.i = icmp ult i64 %.promoted156.i.i.i, %.val1.i.i
  br i1 %.not.i.i.us.i.peel.i.i, label %bb.d, label %.split.i.i.us.i.peel.i.i

.split.i.i.us.i.peel.i.i:                         ; preds = %bb.c
  %i.p = icmp eq i64 %.promoted156.i.i.i, %.val1.i.i
  br i1 %i.p, label %bb.e, label %.split.us160.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.promoted156.i.i.i
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !3183, !noalias !3184, !noundef !4
  %i.s = icmp sgt i8 %i.r, -65
  br i1 %i.s, label %bb.e, label %.split.us160.i.i.i

bb.e:                                             ; preds = %bb.d, %.split.i.i.us.i.peel.i.i, %.lr.ph.preheader.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.promoted156.i.i.i ; 4 uses
  %i.u = icmp samesign eq i64 %.promoted156.i.i.i, %.val1.i.i
  br i1 %i.u, label %.split165.us.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i8, ptr %i.t, align 1, !noalias !3185, !noundef !4 ; 5 uses
  %i.w = icmp sgt i8 %i.v, -1
  br i1 %i.w, label %bb.g, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit12.i.i.us.i.peel.i.i

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit12.i.i.us.i.peel.i.i: ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.y = and i8 %i.v, 31
  %i.z = zext nneg i8 %i.y to i32                 ; 3 uses
  %i.aa = add nuw nsw i64 %.promoted156.i.i.i, 1
  %i.ab = icmp samesign ne i64 %i.aa, %.val1.i.i
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = load i8, ptr %i.x, align 1, !noalias !3185, !noundef !4
  %i.ad = shl nuw nsw i32 %i.z, 6
  %i.ae = and i8 %i.ac, 63
  %i.af = zext nneg i8 %i.ae to i32               ; 2 uses
  %i.ag = or disjoint i32 %i.ad, %i.af
  %i.ah = icmp samesign ugt i8 %i.v, -33
  br i1 %i.ah, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit14.i.i.us.i.peel.i.i, label %bb.h

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit14.i.i.us.i.peel.i.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit12.i.i.us.i.peel.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.aj = add nuw nsw i64 %.promoted156.i.i.i, 2
  %i.ak = icmp samesign ne i64 %i.aj, %.val1.i.i
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = load i8, ptr %i.ai, align 1, !noalias !3185, !noundef !4
  %i.am = shl nuw nsw i32 %i.af, 6
  %i.an = and i8 %i.al, 63
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = or disjoint i32 %i.am, %i.ao            ; 2 uses
  %i.aq = shl nuw nsw i32 %i.z, 12
  %i.ar = or disjoint i32 %i.ap, %i.aq
  %i.as = icmp samesign ugt i8 %i.v, -17
  br i1 %i.as, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit16.i.i.us.i.peel.i.i, label %bb.h

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit16.i.i.us.i.peel.i.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit14.i.i.us.i.peel.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  %i.au = add nuw nsw i64 %.promoted156.i.i.i, 3
  %i.av = icmp samesign ne i64 %i.au, %.val1.i.i
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = load i8, ptr %i.at, align 1, !noalias !3185, !noundef !4
  %i.ax = shl nuw nsw i32 %i.z, 18
  %i.ay = and i32 %i.ax, 1835008
  %i.az = shl nuw nsw i32 %i.ap, 6
  %i.ba = and i8 %i.aw, 63
  %i.bb = zext nneg i8 %i.ba to i32
  %i.bc = or disjoint i32 %i.az, %i.bb
  %i.bd = or disjoint i32 %i.bc, %i.ay
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.be = zext nneg i8 %i.v to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit16.i.i.us.i.peel.i.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit14.i.i.us.i.peel.i.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit12.i.i.us.i.peel.i.i
  %.sroa.4.0.i.ph.i.us.i.peel.i.i = phi i32 [ %i.ar, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit14.i.i.us.i.peel.i.i ], [ %i.bd, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit16.i.i.us.i.peel.i.i ], [ %i.ag, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit12.i.i.us.i.peel.i.i ], [ %i.be, %bb.g ] ; 4 uses
  %i.bf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, 1114112
  tail call void @llvm.assume(i1 %i.bf)
  br i1 %i.n, label %.loopexit41.split.us.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, 128
  br i1 %i.bg, label %.lr.ph.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, 2048
  br i1 %i.bh, label %.lr.ph.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, 65536
  %..i.us.i.peel.i.i = select i1 %i.bi, i64 3, i64 4
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.k, %bb.j, %bb.i
  %.sroa.01.0.i.us.i.peel.i.i = phi i64 [ 2, %bb.j ], [ %..i.us.i.peel.i.i, %bb.k ], [ 1, %bb.i ]
  %i.bj = add i64 %.sroa.01.0.i.us.i.peel.i.i, %.promoted156.i.i.i ; 16 uses
  store i64 %i.bj, ptr %i.i, align 8, !alias.scope !3186
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3187)
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i
  %.not.i.i.us.i.i.i = icmp ult i64 %i.bj, %.val1.i.i
  br i1 %.not.i.i.us.i.i.i, label %bb.m, label %.split.i.i.us.i.i.i

.split.i.i.us.i.i.i:                              ; preds = %bb.l
  %i.bl = icmp eq i64 %i.bj, %.val1.i.i
  br i1 %i.bl, label %bb.n, label %.split.us160.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.bj
  %i.bn = load i8, ptr %i.bm, align 1, !alias.scope !3183, !noalias !3188, !noundef !4
  %i.bo = icmp sgt i8 %i.bn, -65
  br i1 %i.bo, label %bb.n, label %.split.us160.i.i.i

bb.n:                                             ; preds = %bb.m, %.split.i.i.us.i.i.i, %.lr.ph.i.i.i
  %i.bp = icmp samesign eq i64 %i.bj, %.val1.i.i
  br i1 %i.bp, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.bj
  %i.br = load i8, ptr %i.bq, align 1, !noalias !3189, !noundef !4 ; 3 uses
  %i.bs = icmp sgt i8 %i.br, -1
  br i1 %i.bs, label %.loopexit41.split.us.i.i.i, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit12.i.i.us.i.i.i

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit12.i.i.us.i.i.i: ; preds = %bb.o
  %i.bt = add nuw nsw i64 %i.bj, 1
  %i.bu = icmp samesign ne i64 %i.bt, %.val1.i.i
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = icmp samesign ugt i8 %i.br, -33
  br i1 %i.bv, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit14.i.i.us.i.i.i, label %.loopexit41.split.us.i.i.i

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit14.i.i.us.i.i.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit12.i.i.us.i.i.i
  %i.bw = add nuw nsw i64 %i.bj, 2
  %i.bx = icmp samesign ne i64 %i.bw, %.val1.i.i
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = icmp samesign ugt i8 %i.br, -17
  br i1 %i.by, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit16.i.i.us.i.i.i, label %.loopexit41.split.us.i.i.i

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit16.i.i.us.i.i.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit14.i.i.us.i.i.i
  %i.bz = add nuw nsw i64 %i.bj, 3
  %i.ca = icmp samesign ne i64 %i.bz, %.val1.i.i
  tail call void @llvm.assume(i1 %i.ca)
  br label %.loopexit41.split.us.i.i.i

.split.us160.i.i.i:                               ; preds = %bb.m, %.split.i.i.us.i.i.i, %bb.d, %.split.i.i.us.i.peel.i.i
  %.lcssa31.i.i = phi i64 [ %.promoted156.i.i.i, %.split.i.i.us.i.peel.i.i ], [ %.promoted156.i.i.i, %bb.d ], [ %i.bj, %.split.i.i.us.i.i.i ], [ %i.bj, %bb.m ]
  %.lcssa28.i.i = phi i8 [ %.promoted205.i.i.i, %.split.i.i.us.i.peel.i.i ], [ %.promoted205.i.i.i, %bb.d ], [ 1, %.split.i.i.us.i.i.i ], [ 1, %bb.m ]
  %i.cb = xor i8 %.lcssa28.i.i, 1
  store i8 %i.cb, ptr %i.m, align 8, !alias.scope !3190
  tail call void @_RNvNtCsf3Ta7LF998c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i, i64 noundef %.lcssa31.i.i, i64 noundef %.val1.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #24, !noalias !3188
  unreachable

.split165.us.i.i.i:                               ; preds = %bb.e
  %i.cc = xor i8 %.promoted205.i.i.i, 1
  store i8 %i.cc, ptr %i.m, align 8, !alias.scope !3190
  br i1 %i.n, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, label %bb.p

.loopexit41.split.us.i.i.i:                       ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit12.i.i.us.i.i.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit14.i.i.us.i.i.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit16.i.i.us.i.i.i, %bb.o, %bb.h
  %.lcssa33.i.i = phi i64 [ %.promoted156.i.i.i, %bb.h ], [ %i.bj, %bb.o ], [ %i.bj, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit16.i.i.us.i.i.i ], [ %i.bj, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit14.i.i.us.i.i.i ], [ %i.bj, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit12.i.i.us.i.i.i ] ; 2 uses
  store i8 0, ptr %i.m, align 8, !alias.scope !3190
  br label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.p:                                             ; preds = %.split165.us.i.i.i
  store i8 1, ptr %i.j, align 2, !alias.scope !3190
  br label %bb.ak

bb.q:                                             ; preds = %bb.b
  %i.cd = load i64, ptr %i.i, align 8, !alias.scope !3181, !noundef !4 ; 4 uses
  %.not.i.i.i = icmp ult i64 %i.cd, %.val1.i.i
  br i1 %.not.i.i.i, label %bb.s, label %bb.ak

bb.r:                                             ; preds = %bb.b
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !3181, !noundef !4 ; 2 uses
  %i.cg = icmp eq i64 %i.cf, -1
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ci = load ptr, ptr %i.ch, align 8, !alias.scope !3181, !nonnull !4, !noundef !4 ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ck = load i64, ptr %i.cj, align 8, !alias.scope !3181, !noundef !4 ; 16 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 9 uses
  %i.cm = add nsw i64 %i.ck, -1                   ; 5 uses
  br i1 %i.cg, label %bb.ad, label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.co = load i8, ptr %i.cn, align 8, !alias.scope !3181, !noundef !4 ; 2 uses
  %i.cp = sub nuw i64 %.val1.i.i, %i.cd           ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.cd ; 2 uses
  %i.cr = icmp samesign ult i64 %i.cp, 16
  br i1 %i.cr, label %.lr.ph.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cs = tail call { i64, i64 } @_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr14memchr_aligned(i8 noundef %i.co, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cq, i64 noundef range(i64 0, -9223372036854775808) %i.cp), !noalias !3191 ; 2 uses
  %i.ct = extractvalue { i64, i64 } %i.cs, 0
  %i.cu = extractvalue { i64, i64 } %i.cs, 1
  %i.cv = trunc nuw i64 %i.ct to i1
  br i1 %i.cv, label %.loopexit42.i.i.i, label %.loopexit43.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.s, %bb.u
  %.sroa.04.011.i.i.i.i = phi i64 [ %i.cz, %bb.u ], [ 0, %bb.s ] ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.sroa.04.011.i.i.i.i
  %i.cx = load i8, ptr %i.cw, align 1, !alias.scope !3192, !noalias !3191, !noundef !4
  %i.cy = icmp eq i8 %i.cx, %i.co
  br i1 %i.cy, label %.loopexit42.i.i.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cz = add nuw nsw i64 %.sroa.04.011.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i7.i.i.i = icmp eq i64 %i.cz, %i.cp
  br i1 %exitcond.not.i7.i.i.i, label %.loopexit43.i.i.i, label %.lr.ph.i.i.i.i

.loopexit42.i.i.i:                                ; preds = %.lr.ph.i.i.i.i, %bb.t
  %.sroa.5.0.i.i.i.i = phi i64 [ %i.cu, %bb.t ], [ %.sroa.04.011.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.da = icmp ult i64 %.sroa.5.0.i.i.i.i, %i.cp
  tail call void @llvm.assume(i1 %i.da)
  %i.db = add i64 %.sroa.5.0.i.i.i.i, %i.cd       ; 2 uses
  %i.dc = add i64 %i.db, 1                        ; 2 uses
  store i64 %i.dc, ptr %i.i, align 8, !alias.scope !3181
  br label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

.loopexit43.i.i.i:                                ; preds = %bb.u, %bb.t
  store i64 %.val1.i.i, ptr %i.i, align 8, !alias.scope !3181
  br label %bb.ak

bb.v:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3193)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3194)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3195)
  %.promoted.i.i.i.i = load i64, ptr %i.cl, align 8, !alias.scope !3196 ; 2 uses
  %i.dd = add i64 %.promoted.i.i.i.i, %i.cm       ; 2 uses
  %i.de = icmp ult i64 %i.dd, %.val1.i.i
  br i1 %i.de, label %.lr.ph.i8.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i8.i.i.i:                                  ; preds = %bb.v
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dg = load i64, ptr %i.df, align 8, !alias.scope !3196, !noundef !4
  %i.dh = load i64, ptr %i.i, align 8, !alias.scope !3196 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dj = load i64, ptr %i.di, align 8, !alias.scope !3196 ; 2 uses
  %i.dk = sub i64 %i.ck, %i.dj
  %invariant.op = sub i64 1, %i.dh
  br label %.lr.ph.split.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.y, %bb.v
  store i64 %.val1.i.i, ptr %i.cl, align 8, !alias.scope !3196
  br label %bb.ak

.lr.ph.split.i.i.i.i:                             ; preds = %bb.y, %.lr.ph.i8.i.i.i
  %i.dl = phi i64 [ %.sink70.i.i.i.i, %bb.y ], [ %i.cf, %.lr.ph.i8.i.i.i ] ; 3 uses
  %i.dm = phi i64 [ %i.dx, %bb.y ], [ %i.dd, %.lr.ph.i8.i.i.i ]
  %i.dn = phi i64 [ %.sink71.i.i.i.i, %bb.y ], [ %.promoted.i.i.i.i, %.lr.ph.i8.i.i.i ] ; 7 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.dm
  %i.dp = load i8, ptr %i.do, align 1, !alias.scope !3194, !noalias !3191, !noundef !4
  %i.dq = and i8 %i.dp, 63
  %i.dr = zext nneg i8 %i.dq to i64
  %i.ds = shl nuw i64 1, %i.dr
  %i.dt = and i64 %i.ds, %i.dg
  %.not.i9.i.i.i = icmp eq i64 %i.dt, 0
  br i1 %.not.i9.i.i.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph.split.i.i.i.i
  %i.du = add i64 %i.dn, %i.ck
  br label %bb.y

bb.x:                                             ; preds = %.lr.ph.split.i.i.i.i
  %i.dv = tail call i64 @llvm.umax.i64(i64 %i.dh, i64 %i.dl) ; 2 uses
  %i.dw = icmp ult i64 %i.dv, %i.ck
  br i1 %i.dw, label %.lr.ph, label %.preheader36.i.i.i.i.preheader

bb.y:                                             ; preds = %bb.ac, %bb.ab, %bb.w
  %.sink71.i.i.i.i = phi i64 [ %i.et, %bb.ac ], [ %i.es, %bb.ab ], [ %i.du, %bb.w ] ; 3 uses
  %.sink70.i.i.i.i = phi i64 [ 0, %bb.ac ], [ %i.dk, %bb.ab ], [ 0, %bb.w ] ; 2 uses
  store i64 %.sink71.i.i.i.i, ptr %i.cl, align 8, !alias.scope !3196
  store i64 %.sink70.i.i.i.i, ptr %i.ce, align 8, !alias.scope !3196
  %i.dx = add i64 %.sink71.i.i.i.i, %i.cm         ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %.val1.i.i
  br i1 %i.dy, label %.lr.ph.split.i.i.i.i, label %._crit_edge.i.i.i.i

bb.z:                                             ; preds = %.lr.ph
  %i.dz = add nuw nsw i64 %.sroa.04.0.i.i.i.i81, 1 ; 2 uses
  %i.ea = icmp ult i64 %i.dz, %i.ck
  br i1 %i.ea, label %.lr.ph, label %.preheader36.i.i.i.i.preheader

.preheader36.i.i.i.i.preheader:                   ; preds = %bb.z, %bb.x
  %i.eb = icmp ult i64 %i.dl, %i.dh
  br i1 %i.eb, label %.lr.ph83, label %.split.us.i10.i.i.i

.lr.ph:                                           ; preds = %bb.x, %bb.z
  %.sroa.04.0.i.i.i.i81 = phi i64 [ %i.dz, %bb.z ], [ %i.dv, %bb.x ] ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.sroa.04.0.i.i.i.i81
  %i.ed = load i8, ptr %i.ec, align 1, !alias.scope !3195, !noalias !3191, !noundef !4
  %i.ee = add i64 %.sroa.04.0.i.i.i.i81, %i.dn    ; 2 uses
  %i.ef = icmp ult i64 %i.ee, %.val1.i.i
  tail call void @llvm.assume(i1 %i.ef)
  %i.eg = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ee
  %i.eh = load i8, ptr %i.eg, align 1, !alias.scope !3194, !noalias !3191, !noundef !4
  %.not21.i.i.i.i = icmp eq i8 %i.ed, %i.eh
  br i1 %.not21.i.i.i.i, label %bb.z, label %bb.ac

.preheader36.i.i.i.i:                             ; preds = %bb.aa
  %i.ei = icmp ult i64 %i.dl, %i.ek
  br i1 %i.ei, label %.lr.ph83, label %.split.us.i10.i.i.i

.split.us.i10.i.i.i:                              ; preds = %.preheader36.i.i.i.i.preheader, %.preheader36.i.i.i.i
  %i.ej = add i64 %i.dn, %i.ck                    ; 2 uses
  store i64 %i.ej, ptr %i.cl, align 8, !alias.scope !3196
  store i64 0, ptr %i.ce, align 8, !alias.scope !3196
  br label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

.lr.ph83:                                         ; preds = %.preheader36.i.i.i.i.preheader, %.preheader36.i.i.i.i
  %.sroa.2.0.i.i.i.i82 = phi i64 [ %i.ek, %.preheader36.i.i.i.i ], [ %i.dh, %.preheader36.i.i.i.i.preheader ]
  %i.ek = add i64 %.sroa.2.0.i.i.i.i82, -1        ; 6 uses
  %i.el = icmp ult i64 %i.ek, %i.ck
  br i1 %i.el, label %bb.aa, label %.split32.us.i.i.i.i

bb.aa:                                            ; preds = %.lr.ph83
  %i.em = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ek
  %i.en = load i8, ptr %i.em, align 1, !alias.scope !3195, !noalias !3191, !noundef !4
  %i.eo = add i64 %i.ek, %i.dn                    ; 2 uses
  %i.ep = icmp ult i64 %i.eo, %.val1.i.i
  tail call void @llvm.assume(i1 %i.ep)
  %i.eq = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.eo
  %i.er = load i8, ptr %i.eq, align 1, !alias.scope !3194, !noalias !3191, !noundef !4
  %.not20.i.i.i.i = icmp eq i8 %i.en, %i.er
  br i1 %.not20.i.i.i.i, label %.preheader36.i.i.i.i, label %bb.ab

.split32.us.i.i.i.i:                              ; preds = %.lr.ph83
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ek, i64 noundef range(i64 0, -9223372036854775808) %i.ck, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #24, !noalias !3197
  unreachable

bb.ab:                                            ; preds = %bb.aa
  %i.es = add i64 %i.dn, %i.dj
  br label %bb.y

bb.ac:                                            ; preds = %.lr.ph
  %.reass.i.reass.i.reass.i.reass.reass = add i64 %i.dn, %invariant.op
  %i.et = add i64 %.reass.i.reass.i.reass.i.reass.reass, %.sroa.04.0.i.i.i.i81
  br label %bb.y

bb.ad:                                            ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3200)
  %.promoted.i11.i.i.i = load i64, ptr %i.cl, align 8, !alias.scope !3201 ; 3 uses
  %i.eu = add i64 %.promoted.i11.i.i.i, %i.cm     ; 3 uses
  %i.ev = icmp ult i64 %i.eu, %.val1.i.i
  br i1 %i.ev, label %.lr.ph.i14.i.i.i, label %._crit_edge.i12.i.i.i

.lr.ph.i14.i.i.i:                                 ; preds = %bb.ad
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ex = load i64, ptr %i.ew, align 8, !alias.scope !3201, !noundef !4 ; 2 uses
  %i.ey = load i64, ptr %i.i, align 8, !alias.scope !3201
  %.fr214.i.i.i = freeze i64 %i.ey                ; 10 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fa = load i64, ptr %i.ez, align 8, !alias.scope !3201
  %umax.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %.fr214.i.i.i, i64 range(i64 0, -9223372036854775808) %i.ck) ; 2 uses
  %i.fb = add i64 %.fr214.i.i.i, -1               ; 2 uses
  %.first_iter.i15.i.i.i = icmp ult i64 %i.fb, %i.ck
  %reass.sub79.i.i = sub i64 1, %.fr214.i.i.i     ; 2 uses
  br i1 %.first_iter.i15.i.i.i, label %.lr.ph.split.us.i.i.i.us.i.preheader, label %.lr.ph.split.us.i.i.i.i.preheader

.lr.ph.split.us.i.i.i.i.preheader:                ; preds = %.lr.ph.i14.i.i.i
  %exitcond.not.i16.i.i.i85.not = icmp ult i64 %.fr214.i.i.i, %i.ck
  br label %.lr.ph.split.us.i.i.i.i

.lr.ph.split.us.i.i.i.us.i.preheader:             ; preds = %.lr.ph.i14.i.i.i
  %exitcond.not.i16.i.i.us.i90.not = icmp ult i64 %.fr214.i.i.i, %i.ck
  %.not34.i.us.i.i.us.i93 = icmp eq i64 %.fr214.i.i.i, 0
  br label %.lr.ph.split.us.i.i.i.us.i

.lr.ph.split.us.i.i.i.us.i:                       ; preds = %.lr.ph.split.us.i.i.i.us.i.preheader, %bb.ag
  %i.fc = phi i64 [ %i.gb, %bb.ag ], [ %i.eu, %.lr.ph.split.us.i.i.i.us.i.preheader ]
  %i.fd = phi i64 [ %.sink.i17.i.i.us.i, %bb.ag ], [ %.promoted.i11.i.i.i, %.lr.ph.split.us.i.i.i.us.i.preheader ] ; 7 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.fc
  %i.ff = load i8, ptr %i.fe, align 1, !alias.scope !3199, !noalias !3191, !noundef !4
  %i.fg = and i8 %i.ff, 63
  %i.fh = zext nneg i8 %i.fg to i64
  %i.fi = shl nuw i64 1, %i.fh
  %i.fj = and i64 %i.fi, %i.ex
  %.not.us.i.i.i.us.i = icmp eq i64 %i.fj, 0
  br i1 %.not.us.i.i.i.us.i, label %bb.af, label %.preheader35.i.i.i.us.i.preheader

.preheader35.i.i.i.us.i.preheader:                ; preds = %.lr.ph.split.us.i.i.i.us.i
  br i1 %exitcond.not.i16.i.i.us.i90.not, label %.lr.ph92, label %.preheader.i18.us.i.i.us.i.preheader

.preheader35.i.i.i.us.i:                          ; preds = %.lr.ph92
  %i.fk = add i64 %.sroa.04.0.us.i.i.i.us.i91, 1  ; 2 uses
  %exitcond.not.i16.i.i.us.i = icmp eq i64 %i.fk, %umax.i.i.i.i
  br i1 %exitcond.not.i16.i.i.us.i, label %.preheader.i18.us.i.i.us.i.preheader, label %.lr.ph92

.preheader.i18.us.i.i.us.i.preheader:             ; preds = %.preheader35.i.i.i.us.i, %.preheader35.i.i.i.us.i.preheader
  br i1 %.not34.i.us.i.i.us.i93, label %.split.us.i20.i.i.i, label %.lr.ph95

.lr.ph92:                                         ; preds = %.preheader35.i.i.i.us.i.preheader, %.preheader35.i.i.i.us.i
  %.sroa.04.0.us.i.i.i.us.i91 = phi i64 [ %i.fk, %.preheader35.i.i.i.us.i ], [ %.fr214.i.i.i, %.preheader35.i.i.i.us.i.preheader ] ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.sroa.04.0.us.i.i.i.us.i91
  %i.fm = load i8, ptr %i.fl, align 1, !alias.scope !3200, !noalias !3191, !noundef !4
  %i.fn = add i64 %.sroa.04.0.us.i.i.i.us.i91, %i.fd ; 2 uses
  %i.fo = icmp ult i64 %i.fn, %.val1.i.i
  tail call void @llvm.assume(i1 %i.fo)
  %i.fp = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.fn
  %i.fq = load i8, ptr %i.fp, align 1, !alias.scope !3199, !noalias !3191, !noundef !4
  %.not21.us.i.i.i.us.i = icmp eq i8 %i.fm, %i.fq
  br i1 %.not21.us.i.i.i.us.i, label %.preheader35.i.i.i.us.i, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph92
  %.reass281.i.reass.i.us.i = add i64 %i.fd, %reass.sub79.i.i
  %i.fr = add i64 %.reass281.i.reass.i.us.i, %.sroa.04.0.us.i.i.i.us.i91
  br label %bb.ag

.preheader.i18.us.i.i.us.i:                       ; preds = %.lr.ph95
  %.not34.i.us.i.i.us.i = icmp eq i64 %i.fs, 0
  br i1 %.not34.i.us.i.i.us.i, label %.split.us.i20.i.i.i, label %.lr.ph95

.lr.ph95:                                         ; preds = %.preheader.i18.us.i.i.us.i.preheader, %.preheader.i18.us.i.i.us.i
  %.sroa.2.0.us.i.us.i.i.us.i94 = phi i64 [ %i.fs, %.preheader.i18.us.i.i.us.i ], [ %.fr214.i.i.i, %.preheader.i18.us.i.i.us.i.preheader ]
  %i.fs = add i64 %.sroa.2.0.us.i.us.i.i.us.i94, -1 ; 4 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.fs
  %i.fu = load i8, ptr %i.ft, align 1, !alias.scope !3200, !noalias !3191, !noundef !4
  %i.fv = add i64 %i.fs, %i.fd                    ; 2 uses
  %i.fw = icmp ult i64 %i.fv, %.val1.i.i
  tail call void @llvm.assume(i1 %i.fw)
  %i.fx = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.fv
  %i.fy = load i8, ptr %i.fx, align 1, !alias.scope !3199, !noalias !3191, !noundef !4
  %.not20.us.i.us.i.i.us.i = icmp eq i8 %i.fu, %i.fy
  br i1 %.not20.us.i.us.i.i.us.i, label %.preheader.i18.us.i.i.us.i, label %.split.us.i.i.us.i

.split.us.i.i.us.i:                               ; preds = %.lr.ph95
  %i.fz = add i64 %i.fd, %i.fa
  br label %bb.ag

bb.af:                                            ; preds = %.lr.ph.split.us.i.i.i.us.i
  %i.ga = add i64 %i.fd, %i.ck
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.split.us.i.i.us.i, %bb.ae
  %.sink.i17.i.i.us.i = phi i64 [ %i.ga, %bb.af ], [ %i.fr, %bb.ae ], [ %i.fz, %.split.us.i.i.us.i ] ; 3 uses
  store i64 %.sink.i17.i.i.us.i, ptr %i.cl, align 8, !alias.scope !3201
  %i.gb = add i64 %.sink.i17.i.i.us.i, %i.cm      ; 2 uses
  %i.gc = icmp ult i64 %i.gb, %.val1.i.i
  br i1 %i.gc, label %.lr.ph.split.us.i.i.i.us.i, label %._crit_edge.i12.i.i.i

.lr.ph.split.us.i.i.i.i:                          ; preds = %.lr.ph.split.us.i.i.i.i.preheader, %bb.aj
  %i.gd = phi i64 [ %i.gu, %bb.aj ], [ %i.eu, %.lr.ph.split.us.i.i.i.i.preheader ]
  %i.ge = phi i64 [ %.sink.i17.i.i.i, %bb.aj ], [ %.promoted.i11.i.i.i, %.lr.ph.split.us.i.i.i.i.preheader ] ; 4 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.gd
  %i.gg = load i8, ptr %i.gf, align 1, !alias.scope !3199, !noalias !3191, !noundef !4
  %i.gh = and i8 %i.gg, 63
  %i.gi = zext nneg i8 %i.gh to i64
  %i.gj = shl nuw i64 1, %i.gi
  %i.gk = and i64 %i.gj, %i.ex
  %.not.us.i.i.i.i = icmp eq i64 %i.gk, 0
  br i1 %.not.us.i.i.i.i, label %bb.ai, label %.preheader35.i.i.i.i.preheader

.preheader35.i.i.i.i.preheader:                   ; preds = %.lr.ph.split.us.i.i.i.i
  br i1 %exitcond.not.i16.i.i.i85.not, label %.lr.ph87, label %.preheader.i18.i.i.i

.preheader35.i.i.i.i:                             ; preds = %.lr.ph87
  %i.gl = add i64 %.sroa.04.0.us.i.i.i.i86, 1     ; 2 uses
  %exitcond.not.i16.i.i.i = icmp eq i64 %i.gl, %umax.i.i.i.i
  br i1 %exitcond.not.i16.i.i.i, label %.preheader.i18.i.i.i, label %.lr.ph87

.lr.ph87:                                         ; preds = %.preheader35.i.i.i.i.preheader, %.preheader35.i.i.i.i
  %.sroa.04.0.us.i.i.i.i86 = phi i64 [ %i.gl, %.preheader35.i.i.i.i ], [ %.fr214.i.i.i, %.preheader35.i.i.i.i.preheader ] ; 4 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.sroa.04.0.us.i.i.i.i86
  %i.gn = load i8, ptr %i.gm, align 1, !alias.scope !3200, !noalias !3191, !noundef !4
  %i.go = add i64 %.sroa.04.0.us.i.i.i.i86, %i.ge ; 2 uses
  %i.gp = icmp ult i64 %i.go, %.val1.i.i
  tail call void @llvm.assume(i1 %i.gp)
  %i.gq = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.go
  %i.gr = load i8, ptr %i.gq, align 1, !alias.scope !3199, !noalias !3191, !noundef !4
  %.not21.us.i.i.i.i = icmp eq i8 %i.gn, %i.gr
  br i1 %.not21.us.i.i.i.i, label %.preheader35.i.i.i.i, label %bb.ah

.preheader.i18.i.i.i:                             ; preds = %.preheader35.i.i.i.i.preheader, %.preheader35.i.i.i.i
  %.not34.i.i.i.i = icmp eq i64 %.fr214.i.i.i, 0
  br i1 %.not34.i.i.i.i, label %.split.us.i20.i.i.i, label %.split32.us.i19.i.i.i

.split32.us.i19.i.i.i:                            ; preds = %.preheader.i18.i.i.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.fb, i64 noundef range(i64 0, -9223372036854775808) %i.ck, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #24, !noalias !3202
  unreachable

bb.ah:                                            ; preds = %.lr.ph87
  %.reass281.i.reass.i.i = add i64 %i.ge, %reass.sub79.i.i
  %i.gs = add i64 %.reass281.i.reass.i.i, %.sroa.04.0.us.i.i.i.i86
  br label %bb.aj

bb.ai:                                            ; preds = %.lr.ph.split.us.i.i.i.i
  %i.gt = add i64 %i.ge, %i.ck
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.sink.i17.i.i.i = phi i64 [ %i.gt, %bb.ai ], [ %i.gs, %bb.ah ] ; 3 uses
  store i64 %.sink.i17.i.i.i, ptr %i.cl, align 8, !alias.scope !3201
  %i.gu = add i64 %.sink.i17.i.i.i, %i.cm         ; 2 uses
  %i.gv = icmp ult i64 %i.gu, %.val1.i.i
  br i1 %i.gv, label %.lr.ph.split.us.i.i.i.i, label %._crit_edge.i12.i.i.i

._crit_edge.i12.i.i.i:                            ; preds = %bb.aj, %bb.ag, %bb.ad
  store i64 %.val1.i.i, ptr %i.cl, align 8, !alias.scope !3201
  br label %bb.ak

.split.us.i20.i.i.i:                              ; preds = %.preheader.i18.us.i.i.us.i.preheader, %.preheader.i18.us.i.i.us.i, %.preheader.i18.i.i.i
  %i.gw = phi i64 [ %i.ge, %.preheader.i18.i.i.i ], [ %i.fd, %.preheader.i18.us.i.i.us.i ], [ %i.fd, %.preheader.i18.us.i.i.us.i.preheader ] ; 2 uses
  %i.gx = add i64 %i.gw, %i.ck                    ; 2 uses
  store i64 %i.gx, ptr %i.cl, align 8, !alias.scope !3201
  br label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i: ; preds = %.split.us.i20.i.i.i, %.split.us.i10.i.i.i, %.loopexit42.i.i.i, %.loopexit41.split.us.i.i.i, %.split165.us.i.i.i, %bb.n
  %.sroa.9.0.i.i = phi i64 [ %.val1.i.i, %.split165.us.i.i.i ], [ %i.ej, %.split.us.i10.i.i.i ], [ %.lcssa33.i.i, %.loopexit41.split.us.i.i.i ], [ %i.dc, %.loopexit42.i.i.i ], [ %i.gx, %.split.us.i20.i.i.i ], [ %.val1.i.i, %bb.n ]
  %.sroa.4.03.i.i = phi i64 [ %.val1.i.i, %.split165.us.i.i.i ], [ %i.dn, %.split.us.i10.i.i.i ], [ %.lcssa33.i.i, %.loopexit41.split.us.i.i.i ], [ %i.db, %.loopexit42.i.i.i ], [ %i.gw, %.split.us.i20.i.i.i ], [ %.val1.i.i, %bb.n ]
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.gz = load i64, ptr %i.gy, align 8, !alias.scope !3179, !noundef !4 ; 2 uses
  %i.ha = sub nuw i64 %.sroa.4.03.i.i, %i.gz
  store i64 %.sroa.9.0.i.i, ptr %i.gy, align 8, !alias.scope !3179
  br label %bb.an

bb.ak:                                            ; preds = %._crit_edge.i12.i.i.i, %._crit_edge.i.i.i.i, %.loopexit43.i.i.i, %bb.q, %bb.p, %.preheader.i.i.i
  store i8 1, ptr %i.c, align 1, !alias.scope !3203
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.hc = load i8, ptr %i.hb, align 8, !range !25, !alias.scope !3203, !noundef !4
  %i.hd = trunc nuw i8 %i.hc to i1
  br i1 %i.hd, label %._crit_edge.i.i.i, label %bb.al

._crit_edge.i.i.i:                                ; preds = %bb.ak
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !alias.scope !3203
  %.phi.trans.insert2.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre3.i.i.i = load i64, ptr %.phi.trans.insert2.i.i.i, align 8, !alias.scope !3203
  br label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.hf = load i64, ptr %i.he, align 8, !alias.scope !3203, !noundef !4 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.hh = load i64, ptr %i.hg, align 8, !alias.scope !3203, !noundef !4 ; 2 uses
  %.not.i2.i.i = icmp eq i64 %i.hf, %i.hh
  br i1 %.not.i2.i.i, label %_RNvXsX_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_5SplitReENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit.thread, label %bb.am

bb.am:                                            ; preds = %bb.al, %._crit_edge.i.i.i
  %i.hi = phi i64 [ %.pre3.i.i.i, %._crit_edge.i.i.i ], [ %i.hf, %bb.al ]
  %i.hj = phi i64 [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.hh, %bb.al ] ; 2 uses
  %i.hk = sub nuw i64 %i.hi, %i.hj
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i
  %.sroa.4.1.i.i = phi i64 [ %i.hk, %bb.am ], [ %i.ha, %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i ]
  %.pn = phi i64 [ %i.hj, %bb.am ], [ %i.gz, %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i ]
  %.sroa.0.1.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.pn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3204
  call void @_RNvXs2_NtNtCsf3Ta7LF998c_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i, i64 noundef %.sroa.4.1.i.i) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !3205)
  %i.hl = load i8, ptr %i.b, align 8, !range !25, !alias.scope !3205, !noalias !3204, !noundef !4
  %i.hm = trunc nuw i8 %i.hl to i1
  br i1 %i.hm, label %bb.ao, label %_RNCNvXsk_NtCs1qcNTItuk7F_13glyphs_reader5plistNtNtCscDfuDmzQoJe_5kurbo6affine6AffineNtB7_9FromPlist5parse0B9_.exit, !prof !6

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3206
  %i.hn = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.ho = load i8, ptr %i.hn, align 1, !range !25, !alias.scope !3205, !noalias !3204, !noundef !4
  store i8 %i.ho, ptr %i.a, align 1, !noalias !3206
  call void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #24, !noalias !3205
  unreachable

_RNCNvXsk_NtCs1qcNTItuk7F_13glyphs_reader5plistNtNtCscDfuDmzQoJe_5kurbo6affine6AffineNtB7_9FromPlist5parse0B9_.exit: ; preds = %bb.an
  %i.hp = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.hq = load double, ptr %i.hp, align 8, !alias.scope !3205, !noalias !3204, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3204
  br label %_RNvXsX_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_5SplitReENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit.thread

_RNvXsX_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_5SplitReENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit.thread: ; preds = %bb.al, %bb.a, %_RNCNvXsk_NtCs1qcNTItuk7F_13glyphs_reader5plistNtNtCscDfuDmzQoJe_5kurbo6affine6AffineNtB7_9FromPlist5parse0B9_.exit
  %.sroa.3.0 = phi double [ %i.hq, %_RNCNvXsk_NtCs1qcNTItuk7F_13glyphs_reader5plistNtNtCscDfuDmzQoJe_5kurbo6affine6AffineNtB7_9FromPlist5parse0B9_.exit ], [ undef, %bb.a ], [ undef, %bb.al ]
  %.sroa.0.0 = phi i64 [ 1, %_RNCNvXsk_NtCs1qcNTItuk7F_13glyphs_reader5plistNtNtCscDfuDmzQoJe_5kurbo6affine6AffineNtB7_9FromPlist5parse0B9_.exit ], [ 0, %bb.a ], [ 0, %bb.al ]
  %i.hr = insertvalue { i64, double } poison, i64 %.sroa.0.0, 0
  %i.hs = insertvalue { i64, double } %i.hr, double %.sroa.3.0, 1
  ret { i64, double } %i.hs
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter5SplitcEINvMCs9NoVXegZYB5_8smol_strNtB1r_7SmolStr3newReEENtNtNtB9_6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3219)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 65 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !range !25, !alias.scope !3220, !noundef !4
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i = load ptr, ptr %i.d, align 8, !alias.scope !3220, !nonnull !4, !noundef !4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i = load i64, ptr %i.e, align 8, !alias.scope !3220, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3221)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !3222, !noundef !4 ; 6 uses
  %.not.i.i.i = icmp ugt i64 %i.h, %.val1.i.i
  %.promoted.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !3222 ; 2 uses
  %i.i = icmp ult i64 %i.h, %.promoted.i.i.i
  %or.cond27.i.i.i = or i1 %.not.i.i.i, %i.i
  br i1 %or.cond27.i.i.i, label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCs1qcNTItuk7F_13glyphs_reader.exit.i.i, label %.lr.ph.split.preheader.i.i.i

.lr.ph.split.preheader.i.i.i:                     ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.l = load i8, ptr %i.k, align 8, !alias.scope !3222, !noundef !4 ; 2 uses
  %i.m = zext nneg i8 %i.l to i64                 ; 4 uses
  %i.n = icmp ult i8 %i.l, 5
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr i8, ptr %i.j, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 -1
  %.pre.i.i.i = load i8, ptr %i.p, align 1, !alias.scope !3222 ; 2 uses
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %bb.e, %.lr.ph.split.preheader.i.i.i
  %i.q = phi i64 [ %i.ae, %bb.e ], [ %.promoted.i.i.i, %.lr.ph.split.preheader.i.i.i ] ; 4 uses
  %i.r = sub nuw i64 %i.h, %i.q                   ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.q ; 2 uses
  %i.t = icmp samesign ult i64 %i.r, 16
  br i1 %i.t, label %.preheader.i.i.i.i, label %bb.c

.preheader.i.i.i.i:                               ; preds = %.lr.ph.split.i.i.i
  %.not.i.i.i.i = icmp eq i64 %i.h, %i.q
  br i1 %.not.i.i.i.i, label %.loopexit15.i.i.i, label %.lr.ph.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.split.i.i.i
  %i.u = tail call { i64, i64 } @_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef range(i64 0, -9223372036854775808) %i.r), !noalias !3223 ; 2 uses
  %i.v = extractvalue { i64, i64 } %i.u, 0
  %i.w = extractvalue { i64, i64 } %i.u, 1
  %i.x = trunc nuw i64 %i.v to i1
  br i1 %i.x, label %.loopexit.i.i.i, label %.loopexit15.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.d
  %.sroa.04.011.i.i.i.i = phi i64 [ %i.ab, %bb.d ], [ 0, %.preheader.i.i.i.i ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.04.011.i.i.i.i
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !3224, !noalias !3223, !noundef !4
  %i.aa = icmp eq i8 %i.z, %.pre.i.i.i
  br i1 %i.aa, label %.loopexit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ab = add nuw nsw i64 %.sroa.04.011.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ab, %i.r
  br i1 %exitcond.not.i.i.i.i, label %.loopexit15.i.i.i, label %.lr.ph.i.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.sroa.5.0.i.i.i.i = phi i64 [ %i.w, %bb.c ], [ %.sroa.04.011.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ac = icmp ult i64 %.sroa.5.0.i.i.i.i, %i.r
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = add i64 %i.q, 1
  %i.ae = add i64 %i.ad, %.sroa.5.0.i.i.i.i       ; 7 uses
  store i64 %i.ae, ptr %i.f, align 8, !alias.scope !3222
  %.not11.i.i.i = icmp ult i64 %i.ae, %i.m
  %.not12.i.i.i = icmp ugt i64 %i.ae, %.val1.i.i
  %or.cond.i.i.i = or i1 %.not11.i.i.i, %.not12.i.i.i
  br i1 %or.cond.i.i.i, label %bb.e, label %bb.f

.loopexit15.i.i.i:                                ; preds = %bb.c, %.preheader.i.i.i.i, %bb.d
  store i64 %i.h, ptr %i.f, align 8, !alias.scope !3222
  br label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCs1qcNTItuk7F_13glyphs_reader.exit.i.i

bb.e:                                             ; preds = %bb.f, %.loopexit.i.i.i
  %i.af = icmp ult i64 %i.h, %i.ae
  br i1 %i.af, label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCs1qcNTItuk7F_13glyphs_reader.exit.i.i, label %.lr.ph.split.i.i.i

bb.f:                                             ; preds = %.loopexit.i.i.i
  %i.ag = sub nuw i64 %i.ae, %i.m                 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ag
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.ah, ptr nonnull %i.j, i64 %i.m), !noalias !3225
  %i.ai = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.ai, label %_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i, label %bb.e

_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i: ; preds = %bb.f
  %i.aj = load i64, ptr %1, align 8, !alias.scope !3220, !noundef !4 ; 2 uses
  %i.ak = sub nuw i64 %i.ag, %i.aj
  store i64 %i.ae, ptr %1, align 8, !alias.scope !3220
  br label %select.unfold

_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCs1qcNTItuk7F_13glyphs_reader.exit.i.i: ; preds = %bb.e, %.loopexit15.i.i.i, %bb.b
  store i8 1, ptr %i.a, align 1, !alias.scope !3226
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.am = load i8, ptr %i.al, align 8, !range !25, !alias.scope !3226, !noundef !4
  %i.an = trunc nuw i8 %i.am to i1
  %.pre.i2.i.i = load i64, ptr %1, align 8, !alias.scope !3226 ; 3 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre2.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !alias.scope !3226 ; 2 uses
  %.not.i3.i.i = icmp ne i64 %.pre2.i.i.i, %.pre.i2.i.i
  %or.cond.not.i.i.i = select i1 %i.an, i1 true, i1 %.not.i3.i.i
  %i.ao = sub nuw i64 %.pre2.i.i.i, %.pre.i2.i.i
  br i1 %or.cond.not.i.i.i, label %select.unfold, label %bb.g

select.unfold:                                    ; preds = %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCs1qcNTItuk7F_13glyphs_reader.exit.i.i, %_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i
  %.sroa.4.1.i.i = phi i64 [ %i.ak, %_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i ], [ %i.ao, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCs1qcNTItuk7F_13glyphs_reader.exit.i.i ]
  %.pn = phi i64 [ %i.aj, %_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i ], [ %.pre.i2.i.i, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCs1qcNTItuk7F_13glyphs_reader.exit.i.i ]
  %.sroa.0.1.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.pn
  tail call void @_RNvMsB_Cs9NoVXegZYB5_8smol_strNtB5_4Repr3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i, i64 noundef %.sroa.4.1.i.i)
  br label %bb.h

bb.g:                                             ; preds = %bb.a, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCs1qcNTItuk7F_13glyphs_reader.exit.i.i
  store i8 -1, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %select.unfold
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter5SplitcENCNCNvNtCs1qcNTItuk7F_13glyphs_reader9glyphdata15parse_glyph_xmls4_00ENtNtNtB9_6traits8iterator8Iterator4nextB1v_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3241)
end_hunk_0
begin_hunk_1_@llvm.experimental.noalias.scope.decl
!2989 = !{!2970}
!2990 = !{!2971}
!2991 = !{!2971, !2970, !2962, !2959}
!2992 = !{!2971, !2968, !2970, !2961, !2962, !2958, !2959}
!2993 = !{!2970, !2961, !2962, !2958, !2959}
!2994 = !{!2961, !2958}
!2995 = !{!2973}
!2996 = !{!2975}
!2997 = !{!2973, !2961, !2962, !2958, !2959}
!2998 = !{!2975, !2968, !2973, !2961, !2962, !2958, !2959}
!2999 = !{!2975, !2973, !2962, !2959}
!3000 = distinct !{!3000, i1 true, !"_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter6FilterINtNtB1k_7flatten7FlatMapINtB2c_7FlattenINtNtNtB1o_5slice4iter4IterINtNtB1o_6option6OptionBR_EEENtNtNtB1o_3str4iter20SplitAsciiWhitespaceNCNvMsH_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB4u_7RawFont21v2_to_v3_master_names0ENCB4o_s_0EE11spec_extendB4w_"}
!3001 = distinct !{!3001, !3000, !"_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter6FilterINtNtB1k_7flatten7FlatMapINtB2c_7FlattenINtNtNtB1o_5slice4iter4IterINtNtB1o_6option6OptionBR_EEENtNtNtB1o_3str4iter20SplitAsciiWhitespaceNCNvMsH_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB4u_7RawFont21v2_to_v3_master_names0ENCB4o_s_0EE11spec_extendB4w_: argument 0"}
!3002 = distinct !{!3002, i1 true, !"_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecReE16extend_desugaredINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter6FilterINtNtB16_7flatten7FlatMapINtB1Y_7FlattenINtNtNtB1a_5slice4iter4IterINtNtB1a_6option6OptionBG_EEENtNtNtB1a_3str4iter20SplitAsciiWhitespaceNCNvMsH_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB4g_7RawFont21v2_to_v3_master_names0ENCB4a_s_0EEB4i_"}
!3003 = distinct !{!3003, !3002, !"_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecReE16extend_desugaredINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter6FilterINtNtB16_7flatten7FlatMapINtB1Y_7FlattenINtNtNtB1a_5slice4iter4IterINtNtB1a_6option6OptionBG_EEENtNtNtB1a_3str4iter20SplitAsciiWhitespaceNCNvMsH_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB4g_7RawFont21v2_to_v3_master_names0ENCB4a_s_0EEB4i_: argument 0"}
!3004 = !{!3003, !3001}
!3005 = distinct !{!3005, i1 true, !"_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_NtNtNtCsf3Ta7LF998c_4core3str4iter15SplitWhitespaceE11spec_extendCs1qcNTItuk7F_13glyphs_reader"}
!3006 = distinct !{!3006, !3005, !"_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_NtNtNtCsf3Ta7LF998c_4core3str4iter15SplitWhitespaceE11spec_extendCs1qcNTItuk7F_13glyphs_reader: argument 0"}
!3007 = distinct !{!3007, i1 true, !"_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecReE16extend_desugaredNtNtNtCsf3Ta7LF998c_4core3str4iter15SplitWhitespaceECs1qcNTItuk7F_13glyphs_reader"}
!3008 = distinct !{!3008, !3007, !"_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecReE16extend_desugaredNtNtNtCsf3Ta7LF998c_4core3str4iter15SplitWhitespaceECs1qcNTItuk7F_13glyphs_reader: argument 0"}
!3009 = !{!3008, !3006}
!3010 = distinct !{!3010, i1 true, !"_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterEENCNvB24_18default_master_idxs_0ENtNtNtB9_6traits8iterator8Iterator4nextB26_"}
!3011 = distinct !{!3011, !3010, !"_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterEENCNvB24_18default_master_idxs_0ENtNtNtB9_6traits8iterator8Iterator4nextB26_: argument 1"}
!3012 = distinct !{!3012, i1 true, !"_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterEENtNtNtBa_6traits8iterator8Iterator8find_mapTjINtNtCsgCecv3eZDcN_5alloc3vec3VecReEEQNCNvB1v_18default_master_idxs_0EB1x_"}
!3013 = distinct !{!3013, !3012, !"_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterEENtNtNtBa_6traits8iterator8Iterator8find_mapTjINtNtCsgCecv3eZDcN_5alloc3vec3VecReEEQNCNvB1v_18default_master_idxs_0EB1x_: argument 1"}
!3014 = distinct !{!3014, i1 true, !"_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB2r_8find_map5checkTjRB1y_ETjINtNtCsgCecv3eZDcN_5alloc3vec3VecReEEQNCNvB1A_18default_master_idxs_0E0INtNtNtBb_3ops12control_flow11ControlFlowB3H_EEB1C_"}
!3015 = distinct !{!3015, !3014, !"_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB2r_8find_map5checkTjRB1y_ETjINtNtCsgCecv3eZDcN_5alloc3vec3VecReEEQNCNvB1A_18default_master_idxs_0E0INtNtNtBb_3ops12control_flow11ControlFlowB3H_EEB1C_: argument 1"}
!3016 = distinct !{!3016, i1 true, !"_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1H_8adapters9enumerateINtB2A_9EnumeratepEB1B_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowTjINtNtCsgCecv3eZDcN_5alloc3vec3VecReEEENCINvNvB1B_8find_map5checkTjB3H_EB4r_QNCNvBL_18default_master_idxs_0E0E0B3M_EBN_"}
!3017 = distinct !{!3017, !3016, !"_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1H_8adapters9enumerateINtB2A_9EnumeratepEB1B_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowTjINtNtCsgCecv3eZDcN_5alloc3vec3VecReEEENCINvNvB1B_8find_map5checkTjB3H_EB4r_QNCNvBL_18default_master_idxs_0E0E0B3M_EBN_: argument 1"}
!3018 = distinct !{!3018, !3010, !"_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterEENCNvB24_18default_master_idxs_0ENtNtNtB9_6traits8iterator8Iterator4nextB26_: argument 0"}
!3019 = distinct !{!3019, !3012, !"_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterEENtNtNtBa_6traits8iterator8Iterator8find_mapTjINtNtCsgCecv3eZDcN_5alloc3vec3VecReEEQNCNvB1v_18default_master_idxs_0EB1x_: argument 2"}
!3020 = distinct !{!3020, !3012, !"_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterEENtNtNtBa_6traits8iterator8Iterator8find_mapTjINtNtCsgCecv3eZDcN_5alloc3vec3VecReEEQNCNvB1v_18default_master_idxs_0EB1x_: argument 0"}
!3021 = distinct !{!3021, !3014, !"_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB2r_8find_map5checkTjRB1y_ETjINtNtCsgCecv3eZDcN_5alloc3vec3VecReEEQNCNvB1A_18default_master_idxs_0E0INtNtNtBb_3ops12control_flow11ControlFlowB3H_EEB1C_: argument 0"}
!3022 = distinct !{!3022, !3016, !"_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1H_8adapters9enumerateINtB2A_9EnumeratepEB1B_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowTjINtNtCsgCecv3eZDcN_5alloc3vec3VecReEEENCINvNvB1B_8find_map5checkTjB3H_EB4r_QNCNvBL_18default_master_idxs_0E0E0B3M_EBN_: argument 0"}
!3023 = distinct !{!3023, i1 true, !"_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_"}
!3024 = distinct !{!3024, !3023, !"_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_: argument 0"}
!3025 = distinct !{!3025, i1 true, !"_RNCINvNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasteruINtNtNtBf_3ops12control_flow11ControlFlowTjINtNtCsgCecv3eZDcN_5alloc3vec3VecReEEENCINvNvB1e_8find_map5checkTjB25_EB3D_QNCNvB28_18default_master_idxs_0E0E0B2a_"}
!3026 = distinct !{!3026, !3025, !"_RNCINvNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasteruINtNtNtBf_3ops12control_flow11ControlFlowTjINtNtCsgCecv3eZDcN_5alloc3vec3VecReEEENCINvNvB1e_8find_map5checkTjB25_EB3D_QNCNvB28_18default_master_idxs_0E0E0B2a_: argument 1"}
!3027 = distinct !{!3027, !3025, !"_RNCINvNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasteruINtNtNtBf_3ops12control_flow11ControlFlowTjINtNtCsgCecv3eZDcN_5alloc3vec3VecReEEENCINvNvB1e_8find_map5checkTjB25_EB3D_QNCNvB28_18default_master_idxs_0E0E0B2a_: argument 2"}
!3028 = distinct !{!3028, !3025, !"_RNCINvNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasteruINtNtNtBf_3ops12control_flow11ControlFlowTjINtNtCsgCecv3eZDcN_5alloc3vec3VecReEEENCINvNvB1e_8find_map5checkTjB25_EB3D_QNCNvB28_18default_master_idxs_0E0E0B2a_: argument 0"}
!3029 = distinct !{!3029, i1 true, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8find_map5checkTjRNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterETjINtNtCsgCecv3eZDcN_5alloc3vec3VecReEEQNCNvB1l_18default_master_idxs_0E0B1n_"}
!3030 = distinct !{!3030, !3029, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8find_map5checkTjRNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterETjINtNtCsgCecv3eZDcN_5alloc3vec3VecReEEQNCNvB1l_18default_master_idxs_0E0B1n_: argument 2"}
!3031 = distinct !{!3031, !3029, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8find_map5checkTjRNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterETjINtNtCsgCecv3eZDcN_5alloc3vec3VecReEEQNCNvB1l_18default_master_idxs_0E0B1n_: argument 1"}
!3032 = distinct !{!3032, !3029, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8find_map5checkTjRNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterETjINtNtCsgCecv3eZDcN_5alloc3vec3VecReEEQNCNvB1l_18default_master_idxs_0E0B1n_: argument 0"}
!3033 = distinct !{!3033, i1 true, !"_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTjIBI_ReEEEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtB1s_9enumerate9EnumerateINtNtNtB1w_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterEENCNvB3l_18default_master_idxs_0EE11spec_extendB3n_"}
!3034 = distinct !{!3034, !3033, !"_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTjIBI_ReEEEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtB1s_9enumerate9EnumerateINtNtNtB1w_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterEENCNvB3l_18default_master_idxs_0EE11spec_extendB3n_: argument 0"}
!3035 = distinct !{!3035, !3033, !"_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTjIBI_ReEEEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtB1s_9enumerate9EnumerateINtNtNtB1w_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterEENCNvB3l_18default_master_idxs_0EE11spec_extendB3n_: argument 1"}
!3036 = distinct !{!3036, i1 true, !"_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecTjIBx_ReEEE16extend_desugaredINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtB1e_9enumerate9EnumerateINtNtNtB1i_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterEENCNvB37_18default_master_idxs_0EEB39_"}
!3037 = distinct !{!3037, !3036, !"_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecTjIBx_ReEEE16extend_desugaredINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtB1e_9enumerate9EnumerateINtNtNtB1i_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterEENCNvB37_18default_master_idxs_0EEB39_: argument 0"}
!3038 = distinct !{!3038, !3036, !"_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecTjIBx_ReEEE16extend_desugaredINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtB1e_9enumerate9EnumerateINtNtNtB1i_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterEENCNvB37_18default_master_idxs_0EEB39_: argument 1"}
!3039 = distinct !{!3039, i1 true, !"_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterEENCNvB24_18default_master_idxs_0ENtNtNtB9_6traits8iterator8Iterator4nextB26_"}
!3040 = distinct !{!3040, !3039, !"_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterEENCNvB24_18default_master_idxs_0ENtNtNtB9_6traits8iterator8Iterator4nextB26_: argument 1:pre.rot"}
!3041 = distinct !{!3041, i1 true, !"_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterEENtNtNtBa_6traits8iterator8Iterator8find_mapTjINtNtCsgCecv3eZDcN_5alloc3vec3VecReEEQNCNvB1v_18default_master_idxs_0EB1x_"}
!3042 = distinct !{!3042, !3041, !"_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterEENtNtNtBa_6traits8iterator8Iterator8find_mapTjINtNtCsgCecv3eZDcN_5alloc3vec3VecReEEQNCNvB1v_18default_master_idxs_0EB1x_: argument 1:pre.rot"}
!3043 = distinct !{!3043, i1 true, !"_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB2r_8find_map5checkTjRB1y_ETjINtNtCsgCecv3eZDcN_5alloc3vec3VecReEEQNCNvB1A_18default_master_idxs_0E0INtNtNtBb_3ops12control_flow11ControlFlowB3H_EEB1C_"}
!3044 = distinct !{!3044, !3043, !"_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB2r_8find_map5checkTjRB1y_ETjINtNtCsgCecv3eZDcN_5alloc3vec3VecReEEQNCNvB1A_18default_master_idxs_0E0INtNtNtBb_3ops12control_flow11ControlFlowB3H_EEB1C_: argument 1:pre.rot"}
!3045 = distinct !{!3045, i1 true, !"_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1H_8adapters9enumerateINtB2A_9EnumeratepEB1B_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowTjINtNtCsgCecv3eZDcN_5alloc3vec3VecReEEENCINvNvB1B_8find_map5checkTjB3H_EB4r_QNCNvBL_18default_master_idxs_0E0E0B3M_EBN_"}
!3046 = distinct !{!3046, !3045, !"_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1H_8adapters9enumerateINtB2A_9EnumeratepEB1B_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowTjINtNtCsgCecv3eZDcN_5alloc3vec3VecReEEENCINvNvB1B_8find_map5checkTjB3H_EB4r_QNCNvBL_18default_master_idxs_0E0E0B3M_EBN_: argument 1:pre.rot"}
!3047 = distinct !{!3047, i1 true, !"_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterEENCNvB24_18default_master_idxs_0ENtNtNtB9_6traits8iterator8Iterator4nextB26_"}
!3048 = distinct !{!3048, !3047, !"_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterEENCNvB24_18default_master_idxs_0ENtNtNtB9_6traits8iterator8Iterator4nextB26_: argument 0"}
!3049 = distinct !{!3049, i1 true, !"_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterEENtNtNtBa_6traits8iterator8Iterator8find_mapTjINtNtCsgCecv3eZDcN_5alloc3vec3VecReEEQNCNvB1v_18default_master_idxs_0EB1x_"}
!3050 = distinct !{!3050, !3049, !"_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterEENtNtNtBa_6traits8iterator8Iterator8find_mapTjINtNtCsgCecv3eZDcN_5alloc3vec3VecReEEQNCNvB1v_18default_master_idxs_0EB1x_: argument 2"}
!3051 = distinct !{!3051, !3049, !"_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterEENtNtNtBa_6traits8iterator8Iterator8find_mapTjINtNtCsgCecv3eZDcN_5alloc3vec3VecReEEQNCNvB1v_18default_master_idxs_0EB1x_: argument 0"}
!3052 = distinct !{!3052, i1 true, !"_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB2r_8find_map5checkTjRB1y_ETjINtNtCsgCecv3eZDcN_5alloc3vec3VecReEEQNCNvB1A_18default_master_idxs_0E0INtNtNtBb_3ops12control_flow11ControlFlowB3H_EEB1C_"}
!3053 = distinct !{!3053, !3052, !"_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB2r_8find_map5checkTjRB1y_ETjINtNtCsgCecv3eZDcN_5alloc3vec3VecReEEQNCNvB1A_18default_master_idxs_0E0INtNtNtBb_3ops12control_flow11ControlFlowB3H_EEB1C_: argument 0"}
!3054 = distinct !{!3054, i1 true, !"_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1H_8adapters9enumerateINtB2A_9EnumeratepEB1B_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowTjINtNtCsgCecv3eZDcN_5alloc3vec3VecReEEENCINvNvB1B_8find_map5checkTjB3H_EB4r_QNCNvBL_18default_master_idxs_0E0E0B3M_EBN_"}
!3055 = distinct !{!3055, !3054, !"_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1H_8adapters9enumerateINtB2A_9EnumeratepEB1B_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowTjINtNtCsgCecv3eZDcN_5alloc3vec3VecReEEENCINvNvB1B_8find_map5checkTjB3H_EB4r_QNCNvBL_18default_master_idxs_0E0E0B3M_EBN_: argument 0"}
!3056 = distinct !{!3056, i1 true, !"_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_"}
!3057 = distinct !{!3057, !3056, !"_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_: argument 0"}
!3058 = distinct !{!3058, !3047, !"_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterEENCNvB24_18default_master_idxs_0ENtNtNtB9_6traits8iterator8Iterator4nextB26_: argument 1"}
!3059 = distinct !{!3059, !3049, !"_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterEENtNtNtBa_6traits8iterator8Iterator8find_mapTjINtNtCsgCecv3eZDcN_5alloc3vec3VecReEEQNCNvB1v_18default_master_idxs_0EB1x_: argument 1"}
!3060 = distinct !{!3060, !3052, !"_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB2r_8find_map5checkTjRB1y_ETjINtNtCsgCecv3eZDcN_5alloc3vec3VecReEEQNCNvB1A_18default_master_idxs_0E0INtNtNtBb_3ops12control_flow11ControlFlowB3H_EEB1C_: argument 1"}
!3061 = distinct !{!3061, !3054, !"_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1H_8adapters9enumerateINtB2A_9EnumeratepEB1B_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowTjINtNtCsgCecv3eZDcN_5alloc3vec3VecReEEENCINvNvB1B_8find_map5checkTjB3H_EB4r_QNCNvBL_18default_master_idxs_0E0E0B3M_EBN_: argument 1"}
!3062 = distinct !{!3062, i1 true, !"_RNCINvNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasteruINtNtNtBf_3ops12control_flow11ControlFlowTjINtNtCsgCecv3eZDcN_5alloc3vec3VecReEEENCINvNvB1e_8find_map5checkTjB25_EB3D_QNCNvB28_18default_master_idxs_0E0E0B2a_"}
!3063 = distinct !{!3063, !3062, !"_RNCINvNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasteruINtNtNtBf_3ops12control_flow11ControlFlowTjINtNtCsgCecv3eZDcN_5alloc3vec3VecReEEENCINvNvB1e_8find_map5checkTjB25_EB3D_QNCNvB28_18default_master_idxs_0E0E0B2a_: argument 1"}
!3064 = distinct !{!3064, !3062, !"_RNCINvNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasteruINtNtNtBf_3ops12control_flow11ControlFlowTjINtNtCsgCecv3eZDcN_5alloc3vec3VecReEEENCINvNvB1e_8find_map5checkTjB25_EB3D_QNCNvB28_18default_master_idxs_0E0E0B2a_: argument 2"}
!3065 = distinct !{!3065, !3062, !"_RNCINvNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasteruINtNtNtBf_3ops12control_flow11ControlFlowTjINtNtCsgCecv3eZDcN_5alloc3vec3VecReEEENCINvNvB1e_8find_map5checkTjB25_EB3D_QNCNvB28_18default_master_idxs_0E0E0B2a_: argument 0"}
!3066 = distinct !{!3066, i1 true, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8find_map5checkTjRNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterETjINtNtCsgCecv3eZDcN_5alloc3vec3VecReEEQNCNvB1l_18default_master_idxs_0E0B1n_"}
!3067 = distinct !{!3067, !3066, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8find_map5checkTjRNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterETjINtNtCsgCecv3eZDcN_5alloc3vec3VecReEEQNCNvB1l_18default_master_idxs_0E0B1n_: argument 2"}
!3068 = distinct !{!3068, !3066, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8find_map5checkTjRNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterETjINtNtCsgCecv3eZDcN_5alloc3vec3VecReEEQNCNvB1l_18default_master_idxs_0E0B1n_: argument 1"}
!3069 = distinct !{!3069, !3066, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8find_map5checkTjRNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterETjINtNtCsgCecv3eZDcN_5alloc3vec3VecReEEQNCNvB1l_18default_master_idxs_0E0B1n_: argument 0"}
!3070 = distinct !{!3070, i1 true, !"_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterEENCNvB24_18default_master_idxs_0ENtNtNtB9_6traits8iterator8Iterator4nextB26_"}
!3071 = distinct !{!3071, !3070, !"_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterEENCNvB24_18default_master_idxs_0ENtNtNtB9_6traits8iterator8Iterator4nextB26_: argument 1:h.rot"}
!3072 = distinct !{!3072, i1 true, !"_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterEENtNtNtBa_6traits8iterator8Iterator8find_mapTjINtNtCsgCecv3eZDcN_5alloc3vec3VecReEEQNCNvB1v_18default_master_idxs_0EB1x_"}
!3073 = distinct !{!3073, !3072, !"_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterEENtNtNtBa_6traits8iterator8Iterator8find_mapTjINtNtCsgCecv3eZDcN_5alloc3vec3VecReEEQNCNvB1v_18default_master_idxs_0EB1x_: argument 1:h.rot"}
!3074 = distinct !{!3074, i1 true, !"_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB2r_8find_map5checkTjRB1y_ETjINtNtCsgCecv3eZDcN_5alloc3vec3VecReEEQNCNvB1A_18default_master_idxs_0E0INtNtNtBb_3ops12control_flow11ControlFlowB3H_EEB1C_"}
!3075 = distinct !{!3075, !3074, !"_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB2r_8find_map5checkTjRB1y_ETjINtNtCsgCecv3eZDcN_5alloc3vec3VecReEEQNCNvB1A_18default_master_idxs_0E0INtNtNtBb_3ops12control_flow11ControlFlowB3H_EEB1C_: argument 1:h.rot"}
!3076 = distinct !{!3076, i1 true, !"_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1H_8adapters9enumerateINtB2A_9EnumeratepEB1B_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowTjINtNtCsgCecv3eZDcN_5alloc3vec3VecReEEENCINvNvB1B_8find_map5checkTjB3H_EB4r_QNCNvBL_18default_master_idxs_0E0E0B3M_EBN_"}
!3077 = distinct !{!3077, !3076, !"_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1H_8adapters9enumerateINtB2A_9EnumeratepEB1B_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowTjINtNtCsgCecv3eZDcN_5alloc3vec3VecReEEENCINvNvB1B_8find_map5checkTjB3H_EB4r_QNCNvBL_18default_master_idxs_0E0E0B3M_EBN_: argument 1:h.rot"}
!3078 = !{!3011}
!3079 = !{!3013}
!3080 = !{!3015}
!3081 = !{!3017}
!3082 = !{!3021, !3015, !3020, !3013, !3019, !3018, !3011}
!3083 = !{!3022, !3017, !3021, !3015, !3020, !3013, !3019, !3018, !3011}
!3084 = !{!3024, !3017, !3015, !3013, !3011}
!3085 = !{!3026}
!3086 = !{!3028, !3026, !3027, !3022, !3017, !3021, !3020, !3018}
!3087 = !{!3032, !3031, !3030, !3028, !3026, !3027, !3022, !3017, !3021, !3015, !3020, !3013, !3019, !3018, !3011}
!3088 = !{!3032, !3028, !3022, !3017, !3021, !3020, !3018}
!3089 = !{!3028, !3022, !3017, !3021, !3020, !3018}
!3090 = !{!3031, !3030, !3028, !3026, !3027, !3022, !3017, !3021, !3015, !3020, !3013, !3019, !3018, !3011}
!3091 = !{!3034}
!3092 = !{!3035}
!3093 = !{!3037}
!3094 = !{!3038}
!3095 = !{!3040}
!3096 = !{!3042}
!3097 = !{!3044}
!3098 = !{!3046}
!3099 = !{!3053, !3044, !3051, !3042, !3050, !3048, !3040, !3037, !3038, !3034, !3035}
!3100 = !{!3055, !3046, !3053, !3044, !3051, !3042, !3050, !3048, !3040, !3037, !3038, !3034, !3035}
!3101 = !{!3057, !3046, !3044, !3042, !3040, !3038, !3035}
!3102 = !{!3058}
!3103 = !{!3059}
!3104 = !{!3060}
!3105 = !{!3061}
!3106 = !{!3057, !3061, !3060, !3059, !3058, !3038, !3035}
!3107 = !{!3063}
!3108 = !{!3055, !3061, !3053, !3060, !3051, !3059, !3050, !3048, !3058, !3037, !3038, !3034, !3035}
!3109 = !{!3065, !3063, !3064, !3055, !3061, !3053, !3051, !3048}
!3110 = !{!3069, !3068, !3067, !3065, !3063, !3064, !3055, !3061, !3053, !3060, !3051, !3059, !3050, !3048, !3058, !3037, !3038, !3034, !3035}
!3111 = !{!3065, !3055, !3061, !3053, !3051, !3048}
!3112 = !{!3068, !3067, !3065, !3063, !3064, !3055, !3061, !3053, !3060, !3051, !3059, !3050, !3048, !3058, !3037, !3038, !3034, !3035}
!3113 = !{!3037, !3038, !3034, !3035}
!3114 = !{!3053, !3060, !3051, !3059, !3050, !3048, !3058, !3037, !3038, !3034, !3035}
!3115 = !{!3037, !3034}
!3116 = !{!3071}
!3117 = !{!3073}
!3118 = !{!3075}
!3119 = !{!3077}
!3120 = !{!3053, !3075, !3051, !3073, !3050, !3048, !3071, !3037, !3038, !3034, !3035}
!3121 = !{!3055, !3077, !3053, !3075, !3051, !3073, !3050, !3048, !3071, !3037, !3038, !3034, !3035}
!3122 = !{!3057, !3077, !3075, !3073, !3071, !3038, !3035}
!3123 = distinct !{!3123, i1 true, !"_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecdEINtB2_10SpecExtenddINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1l_3str4iter5SplitReENCNvXsk_NtCs1qcNTItuk7F_13glyphs_reader5plistNtNtCscDfuDmzQoJe_5kurbo6affine6AffineNtB2B_9FromPlist5parse0EE11spec_extendB2D_"}
!3124 = distinct !{!3124, !3123, !"_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecdEINtB2_10SpecExtenddINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1l_3str4iter5SplitReENCNvXsk_NtCs1qcNTItuk7F_13glyphs_reader5plistNtNtCscDfuDmzQoJe_5kurbo6affine6AffineNtB2B_9FromPlist5parse0EE11spec_extendB2D_: argument 0"}
!3125 = distinct !{!3125, i1 true, !"_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecdE16extend_desugaredINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB19_3str4iter5SplitReENCNvXsk_NtCs1qcNTItuk7F_13glyphs_reader5plistNtNtCscDfuDmzQoJe_5kurbo6affine6AffineNtB2p_9FromPlist5parse0EEB2r_"}
!3126 = distinct !{!3126, !3125, !"_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecdE16extend_desugaredINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB19_3str4iter5SplitReENCNvXsk_NtCs1qcNTItuk7F_13glyphs_reader5plistNtNtCscDfuDmzQoJe_5kurbo6affine6AffineNtB2p_9FromPlist5parse0EEB2r_: argument 0"}
!3127 = distinct !{!3127, !3123, !"_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecdEINtB2_10SpecExtenddINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1l_3str4iter5SplitReENCNvXsk_NtCs1qcNTItuk7F_13glyphs_reader5plistNtNtCscDfuDmzQoJe_5kurbo6affine6AffineNtB2B_9FromPlist5parse0EE11spec_extendB2D_: argument 1"}
!3128 = distinct !{!3128, !3125, !"_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecdE16extend_desugaredINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB19_3str4iter5SplitReENCNvXsk_NtCs1qcNTItuk7F_13glyphs_reader5plistNtNtCscDfuDmzQoJe_5kurbo6affine6AffineNtB2p_9FromPlist5parse0EEB2r_: argument 1"}
!3129 = !{!3126, !3124}
!3130 = !{!3128, !3127}
!3131 = distinct !{!3131, i1 true, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font5ShapeE15append_elementsBI_"}
!3132 = distinct !{!3132, !3131, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font5ShapeE15append_elementsBI_: argument 0"}
!3133 = distinct !{!3133, i1 true, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font5ShapeE7reserveBI_"}
!3134 = distinct !{!3134, !3133, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font5ShapeE7reserveBI_: argument 0"}
!3135 = !{!3134, !3132}
!3136 = !{!3132}
!3137 = distinct !{!3137, i1 true, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font6AnchorE15append_elementsBI_"}
!3138 = distinct !{!3138, !3137, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font6AnchorE15append_elementsBI_: argument 0"}
!3139 = distinct !{!3139, i1 true, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font6AnchorE7reserveBI_"}
!3140 = distinct !{!3140, !3139, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font6AnchorE7reserveBI_: argument 0"}
!3141 = !{!3140, !3138}
!3142 = !{!3138}
!3143 = distinct !{!3143, i1 true, !"_RNvXsX_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_5SplitReENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader"}
!3144 = distinct !{!3144, !3143, !"_RNvXsX_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_5SplitReENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader: argument 0"}
!3145 = distinct !{!3145, i1 true, !"_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalReE4nextCs1qcNTItuk7F_13glyphs_reader"}
!3146 = distinct !{!3146, !3145, !"_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalReE4nextCs1qcNTItuk7F_13glyphs_reader: argument 0"}
!3147 = distinct !{!3147, i1 true, !"_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match"}
!3148 = distinct !{!3148, !3147, !"_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match: argument 1"}
!3149 = distinct !{!3149, i1 true, !"_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!3150 = distinct !{!3150, !3149, !"_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1:Peel0"}
!3151 = distinct !{!3151, i1 true, !"_RNvXs9_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!3152 = distinct !{!3152, !3151, !"_RNvXs9_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!3153 = distinct !{!3153, !3147, !"_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match: argument 0"}
!3154 = distinct !{!3154, i1 true, !"_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!3155 = distinct !{!3155, !3154, !"_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 0"}
!3156 = distinct !{!3156, i1 true, !"_RINvNtNtCsf3Ta7LF998c_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs1qcNTItuk7F_13glyphs_reader"}
!3157 = distinct !{!3157, !3156, !"_RINvNtNtCsf3Ta7LF998c_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs1qcNTItuk7F_13glyphs_reader: argument 0"}
!3158 = distinct !{!3158, !3154, !"_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1"}
!3159 = distinct !{!3159, i1 true, !"_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr"}
!3160 = distinct !{!3160, !3159, !"_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr: argument 0"}
!3161 = distinct !{!3161, i1 true, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1qcNTItuk7F_13glyphs_reader"}
!3162 = distinct !{!3162, !3161, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1qcNTItuk7F_13glyphs_reader: argument 1"}
!3163 = distinct !{!3163, !3161, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1qcNTItuk7F_13glyphs_reader: argument 2"}
!3164 = distinct !{!3164, !3161, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1qcNTItuk7F_13glyphs_reader: argument 3"}
!3165 = distinct !{!3165, !3161, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1qcNTItuk7F_13glyphs_reader: argument 0"}
!3166 = distinct !{!3166, i1 true, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1qcNTItuk7F_13glyphs_reader"}
!3167 = distinct !{!3167, !3166, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1qcNTItuk7F_13glyphs_reader: argument 1"}
!3168 = distinct !{!3168, !3166, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1qcNTItuk7F_13glyphs_reader: argument 2"}
!3169 = distinct !{!3169, !3166, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1qcNTItuk7F_13glyphs_reader: argument 3"}
!3170 = distinct !{!3170, !3166, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1qcNTItuk7F_13glyphs_reader: argument 0"}
!3171 = distinct !{!3171, i1 true, !"_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalReE7get_endCs1qcNTItuk7F_13glyphs_reader"}
!3172 = distinct !{!3172, !3171, !"_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalReE7get_endCs1qcNTItuk7F_13glyphs_reader: argument 0"}
!3173 = distinct !{!3173, i1 true, !"_RNCNvXsk_NtCs1qcNTItuk7F_13glyphs_reader5plistNtNtCscDfuDmzQoJe_5kurbo6affine6AffineNtB7_9FromPlist5parse0B9_"}
!3174 = distinct !{!3174, !3173, !"_RNCNvXsk_NtCs1qcNTItuk7F_13glyphs_reader5plistNtNtCscDfuDmzQoJe_5kurbo6affine6AffineNtB7_9FromPlist5parse0B9_: argument 0"}
!3175 = distinct !{!3175, i1 true, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultdNtNtNtB4_3num11float_parse15ParseFloatErrorE6unwrapCs1qcNTItuk7F_13glyphs_reader"}
!3176 = distinct !{!3176, !3175, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultdNtNtNtB4_3num11float_parse15ParseFloatErrorE6unwrapCs1qcNTItuk7F_13glyphs_reader: argument 0"}
!3177 = !{!3144}
!3178 = !{!3146}
!3179 = !{!3146, !3144}
!3180 = !{!3148}
!3181 = !{!3148, !3146, !3144}
!3182 = !{!3150}
!3183 = !{!3152}
!3184 = !{!3155, !3150, !3153, !3148, !3146, !3144}
!3185 = !{!3157, !3155, !3150, !3153, !3148, !3146, !3144}
!3186 = !{!3150, !3148, !3146, !3144}
!3187 = !{!3158}
!3188 = !{!3155, !3158, !3153, !3148, !3146, !3144}
!3189 = !{!3157, !3155, !3158, !3153, !3148, !3146, !3144}
!3190 = !{!3158, !3148, !3146, !3144}
!3191 = !{!3153, !3148, !3146, !3144}
!3192 = !{!3160}
!3193 = !{!3162}
!3194 = !{!3163}
!3195 = !{!3164}
!3196 = !{!3162, !3148, !3146, !3144}
!3197 = !{!3165, !3162, !3163, !3164, !3153, !3148, !3146, !3144}
!3198 = !{!3167}
!3199 = !{!3168}
!3200 = !{!3169}
!3201 = !{!3167, !3148, !3146, !3144}
!3202 = !{!3170, !3167, !3168, !3169, !3153, !3148, !3146, !3144}
!3203 = !{!3172, !3146, !3144}
!3204 = !{!3174}
!3205 = !{!3176}
!3206 = !{!3176, !3174}
!3207 = distinct !{!3207, i1 true, !"_RNvXsX_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader"}
!3208 = distinct !{!3208, !3207, !"_RNvXsX_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader: argument 0"}
!3209 = distinct !{!3209, i1 true, !"_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE4nextCs1qcNTItuk7F_13glyphs_reader"}
!3210 = distinct !{!3210, !3209, !"_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE4nextCs1qcNTItuk7F_13glyphs_reader: argument 0"}
!3211 = distinct !{!3211, i1 true, !"_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match"}
!3212 = distinct !{!3212, !3211, !"_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 1"}
!3213 = distinct !{!3213, !3211, !"_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 0"}
!3214 = distinct !{!3214, i1 true, !"_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr"}
!3215 = distinct !{!3215, !3214, !"_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr: argument 0"}
!3216 = distinct !{!3216, i1 true, !"_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCs1qcNTItuk7F_13glyphs_reader"}
!3217 = distinct !{!3217, !3216, !"_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCs1qcNTItuk7F_13glyphs_reader: argument 0"}
!3218 = !{!3208}
!3219 = !{!3210}
!3220 = !{!3210, !3208}
!3221 = !{!3212}
!3222 = !{!3212, !3210, !3208}
!3223 = !{!3213, !3212, !3210, !3208}
!3224 = !{!3215}
!3225 = !{!3213}
!3226 = !{!3217, !3210, !3208}
!3227 = distinct !{!3227, i1 true, !"_RNvXsX_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader"}
!3228 = distinct !{!3228, !3227, !"_RNvXsX_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader: argument 0"}
!3229 = distinct !{!3229, i1 true, !"_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE4nextCs1qcNTItuk7F_13glyphs_reader"}
!3230 = distinct !{!3230, !3229, !"_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE4nextCs1qcNTItuk7F_13glyphs_reader: argument 0"}
!3231 = distinct !{!3231, i1 true, !"_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match"}
!3232 = distinct !{!3232, !3231, !"_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 1"}
!3233 = distinct !{!3233, !3231, !"_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 0"}
!3234 = distinct !{!3234, i1 true, !"_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr"}
!3235 = distinct !{!3235, !3234, !"_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr: argument 0"}
!3236 = distinct !{!3236, i1 true, !"_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCs1qcNTItuk7F_13glyphs_reader"}
!3237 = distinct !{!3237, !3236, !"_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCs1qcNTItuk7F_13glyphs_reader: argument 0"}
!3238 = distinct !{!3238, i1 true, !"_RNCNCNvNtCs1qcNTItuk7F_13glyphs_reader9glyphdata15parse_glyph_xmls4_00B7_"}
!3239 = distinct !{!3239, !3238, !"_RNCNCNvNtCs1qcNTItuk7F_13glyphs_reader9glyphdata15parse_glyph_xmls4_00B7_: argument 0"}
!3240 = !{!3228}
!3241 = !{!3230}
!3242 = !{!3230, !3228}
!3243 = !{!3232}
!3244 = !{!3232, !3230, !3228}
!3245 = !{!3233, !3232, !3230, !3228}
!3246 = !{!3235}
!3247 = !{!3233}
!3248 = !{!3237, !3230, !3228}
!3249 = !{!3239}
!3250 = distinct !{!3250, i1 true, !"_RNvXsX_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader"}
!3251 = distinct !{!3251, !3250, !"_RNvXsX_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader: argument 0"}
!3252 = distinct !{!3252, i1 true, !"_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE4nextCs1qcNTItuk7F_13glyphs_reader"}
!3253 = distinct !{!3253, !3252, !"_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE4nextCs1qcNTItuk7F_13glyphs_reader: argument 0"}
!3254 = distinct !{!3254, i1 true, !"_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match"}
!3255 = distinct !{!3255, !3254, !"_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 1"}
!3256 = distinct !{!3256, !3254, !"_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 0"}
!3257 = distinct !{!3257, i1 true, !"_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr"}
!3258 = distinct !{!3258, !3257, !"_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr: argument 0"}
!3259 = distinct !{!3259, i1 true, !"_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCs1qcNTItuk7F_13glyphs_reader"}
!3260 = distinct !{!3260, !3259, !"_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCs1qcNTItuk7F_13glyphs_reader: argument 0"}
!3261 = distinct !{!3261, i1 true, !"_RNCNvNtCs1qcNTItuk7F_13glyphs_reader4font19parse_codepoint_str0B5_"}
!3262 = distinct !{!3262, !3261, !"_RNCNvNtCs1qcNTItuk7F_13glyphs_reader4font19parse_codepoint_str0B5_: argument 0"}
!3263 = distinct !{!3263, i1 true, !"_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl"}
!3264 = distinct !{!3264, !3263, !"_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl: argument 0"}
!3265 = !{!3251}
!3266 = !{!3253}
!3267 = !{!3253, !3251}
!3268 = !{!3255}
!3269 = !{!3255, !3253, !3251}
!3270 = !{!3256, !3255, !3253, !3251}
!3271 = !{!3258}
!3272 = !{!3256}
!3273 = !{!3260, !3253, !3251}
!3274 = !{i64 4}
!3275 = !{!3262}
!3276 = !{!3264}
!3277 = !{!"branch_weights", i32 4001, i32 4000000}
!3278 = !{!3264, !3262}
!3279 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!3280 = distinct !{!3280, i1 true, !"_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtB6_7FlattenINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionReEEENtNtNtBc_3str4iter20SplitAsciiWhitespaceNCNvMsH_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB2Q_7RawFont21v2_to_v3_master_names0ENtNtNtBa_6traits8iterator8Iterator4findQNCB2K_s_0EB2S_"}
!3281 = distinct !{!3281, !3280, !"_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtB6_7FlattenINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionReEEENtNtNtBc_3str4iter20SplitAsciiWhitespaceNCNvMsH_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB2Q_7RawFont21v2_to_v3_master_names0ENtNtNtBa_6traits8iterator8Iterator4findQNCB2K_s_0EB2S_: argument 0"}
!3282 = distinct !{!3282, i1 true, !"_RINvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB6_7FlatMapINtB6_7FlattenINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionReEEENtNtNtBc_3str4iter20SplitAsciiWhitespaceNCNvMsH_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB2W_7RawFont21v2_to_v3_master_names0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB49_4find5checkB25_QNCB2Q_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB25_EEB2Y_"}
!3283 = distinct !{!3283, !3282, !"_RINvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB6_7FlatMapINtB6_7FlattenINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionReEEENtNtNtBc_3str4iter20SplitAsciiWhitespaceNCNvMsH_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB2W_7RawFont21v2_to_v3_master_names0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB49_4find5checkB25_QNCB2Q_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB25_EEB2Y_: argument 0"}
!3284 = distinct !{!3284, i1 true, !"_RINvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtB6_7FlattenINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionReEEENCNvMsH_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB2F_7RawFont21v2_to_v3_master_names0ENtNtNtBc_3str4iter20SplitAsciiWhitespaceENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB4x_4find5checkB2s_QNCB2z_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB2s_EEB2H_"}
!3285 = distinct !{!3285, !3284, !"_RINvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtB6_7FlattenINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionReEEENCNvMsH_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB2F_7RawFont21v2_to_v3_master_names0ENtNtNtBc_3str4iter20SplitAsciiWhitespaceENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB4x_4find5checkB2s_QNCB2z_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB2s_EEB2H_: argument 0"}
!3286 = distinct !{!3286, i1 true, !"_RINvMsg_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtB6_7FlattenINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionReEEENCNvMsH_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB2F_7RawFont21v2_to_v3_master_names0ENtNtNtBc_3str4iter20SplitAsciiWhitespaceE13iter_try_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB3S_uINtNtNtBc_3ops12control_flow11ControlFlowB2s_ENCINvNvB58_4find5checkB2s_QNCB2z_s_0E0E0B62_EB2H_"}
!3287 = distinct !{!3287, !3286, !"_RINvMsg_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtB6_7FlattenINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionReEEENCNvMsH_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB2F_7RawFont21v2_to_v3_master_names0ENtNtNtBc_3str4iter20SplitAsciiWhitespaceE13iter_try_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB3S_uINtNtNtBc_3ops12control_flow11ControlFlowB2s_ENCINvNvB58_4find5checkB2s_QNCB2z_s_0E0E0B62_EB2H_: argument 0"}
!3288 = distinct !{!3288, !3280, !"_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtB6_7FlattenINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionReEEENtNtNtBc_3str4iter20SplitAsciiWhitespaceNCNvMsH_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB2Q_7RawFont21v2_to_v3_master_names0ENtNtNtBa_6traits8iterator8Iterator4findQNCB2K_s_0EB2S_: argument 1"}
!3289 = distinct !{!3289, i1 true, !"_RNCINvNvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenNtNtNtBg_3str4iter20SplitAsciiWhitespaceuINtNtNtBg_3ops12control_flow11ControlFlowReENCINvNvB1j_4find5checkB3s_QNCNvMsH_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB44_7RawFont21v2_to_v3_master_namess_0E0E0B46_"}
!3290 = distinct !{!3290, !3289, !"_RNCINvNvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenNtNtNtBg_3str4iter20SplitAsciiWhitespaceuINtNtNtBg_3ops12control_flow11ControlFlowReENCINvNvB1j_4find5checkB3s_QNCNvMsH_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB44_7RawFont21v2_to_v3_master_namess_0E0E0B46_: argument 1"}
!3291 = distinct !{!3291, i1 true, !"_RINvYNtNtNtCsf3Ta7LF998c_4core3str4iter20SplitAsciiWhitespaceNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduQNCINvNvBX_4find5checkReQNCNvMsH_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB2j_7RawFont21v2_to_v3_master_namess_0E0INtNtNtB9_3ops12control_flow11ControlFlowB28_EEB2l_"}
!3292 = distinct !{!3292, !3291, !"_RINvYNtNtNtCsf3Ta7LF998c_4core3str4iter20SplitAsciiWhitespaceNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduQNCINvNvBX_4find5checkReQNCNvMsH_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB2j_7RawFont21v2_to_v3_master_namess_0E0INtNtNtB9_3ops12control_flow11ControlFlowB28_EEB2l_: argument 0"}
!3293 = distinct !{!3293, !3289, !"_RNCINvNvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenNtNtNtBg_3str4iter20SplitAsciiWhitespaceuINtNtNtBg_3ops12control_flow11ControlFlowReENCINvNvB1j_4find5checkB3s_QNCNvMsH_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB44_7RawFont21v2_to_v3_master_namess_0E0E0B46_: argument 0"}
!3294 = distinct !{!3294, !3291, !"_RINvYNtNtNtCsf3Ta7LF998c_4core3str4iter20SplitAsciiWhitespaceNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduQNCINvNvBX_4find5checkReQNCNvMsH_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB2j_7RawFont21v2_to_v3_master_namess_0E0INtNtNtB9_3ops12control_flow11ControlFlowB28_EEB2l_: argument 1"}
!3295 = distinct !{!3295, i1 true, !"_RNvXsD_NtNtCsf3Ta7LF998c_4core3str4iterNtB5_20SplitAsciiWhitespaceNtNtNtNtB9_4iter6traits8iterator8Iterator4next"}
!3296 = distinct !{!3296, !3295, !"_RNvXsD_NtNtCsf3Ta7LF998c_4core3str4iterNtB5_20SplitAsciiWhitespaceNtNtNtNtB9_4iter6traits8iterator8Iterator4next: argument 0"}
!3297 = distinct !{!3297, i1 true, !"_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter5SplithNtNtBb_3str17IsAsciiWhitespaceENtB1M_15BytesIsNotEmptyENtB1M_16UnsafeBytesToStrENtNtNtB9_6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader"}
!3298 = distinct !{!3298, !3297, !"_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter5SplithNtNtBb_3str17IsAsciiWhitespaceENtB1M_15BytesIsNotEmptyENtB1M_16UnsafeBytesToStrENtNtNtB9_6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader: argument 0"}
!3299 = distinct !{!3299, i1 true, !"_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter5SplithNtNtBb_3str17IsAsciiWhitespaceENtB1w_15BytesIsNotEmptyENtNtNtB9_6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader"}
!3300 = distinct !{!3300, !3299, !"_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter5SplithNtNtBb_3str17IsAsciiWhitespaceENtB1w_15BytesIsNotEmptyENtNtNtB9_6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader: argument 0"}
!3301 = distinct !{!3301, i1 true, !"_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter5SplithNtNtBa_3str17IsAsciiWhitespaceENtNtNtNtBa_4iter6traits8iterator8Iterator4findQNtBN_15BytesIsNotEmptyECs1qcNTItuk7F_13glyphs_reader"}
!3302 = distinct !{!3302, !3301, !"_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter5SplithNtNtBa_3str17IsAsciiWhitespaceENtNtNtNtBa_4iter6traits8iterator8Iterator4findQNtBN_15BytesIsNotEmptyECs1qcNTItuk7F_13glyphs_reader: argument 0"}
!3303 = distinct !{!3303, i1 true, !"_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter5SplithNtNtBa_3str17IsAsciiWhitespaceENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB1g_4find5checkRShQNtBN_15BytesIsNotEmptyE0INtNtNtBa_3ops12control_flow11ControlFlowB2r_EECs1qcNTItuk7F_13glyphs_reader"}
!3304 = distinct !{!3304, !3303, !"_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter5SplithNtNtBa_3str17IsAsciiWhitespaceENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB1g_4find5checkRShQNtBN_15BytesIsNotEmptyE0INtNtNtBa_3ops12control_flow11ControlFlowB2r_EECs1qcNTItuk7F_13glyphs_reader: argument 0"}
!3305 = distinct !{!3305, !3301, !"_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter5SplithNtNtBa_3str17IsAsciiWhitespaceENtNtNtNtBa_4iter6traits8iterator8Iterator4findQNtBN_15BytesIsNotEmptyECs1qcNTItuk7F_13glyphs_reader: argument 1"}
!3306 = distinct !{!3306, i1 true, !"_RNvXsf_NtNtCsf3Ta7LF998c_4core5slice4iterINtB5_5SplithNtNtB9_3str17IsAsciiWhitespaceENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader"}
!3307 = distinct !{!3307, !3306, !"_RNvXsf_NtNtCsf3Ta7LF998c_4core5slice4iterINtB5_5SplithNtNtB9_3str17IsAsciiWhitespaceENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader: argument 0"}
!3308 = distinct !{!3308, i1 true, !"_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvXsf_B7_INtB7_5SplithNtNtBb_3str17IsAsciiWhitespaceEBS_4next0ECs1qcNTItuk7F_13glyphs_reader"}
!3309 = distinct !{!3309, !3308, !"_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvXsf_B7_INtB7_5SplithNtNtBb_3str17IsAsciiWhitespaceEBS_4next0ECs1qcNTItuk7F_13glyphs_reader: argument 0"}
!3310 = distinct !{!3310, i1 true, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4find5checkRShQNtNtBe_3str15BytesIsNotEmptyE0Cs1qcNTItuk7F_13glyphs_reader"}
!3311 = distinct !{!3311, !3310, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4find5checkRShQNtNtBe_3str15BytesIsNotEmptyE0Cs1qcNTItuk7F_13glyphs_reader: argument 1"}
!3312 = distinct !{!3312, !3310, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4find5checkRShQNtNtBe_3str15BytesIsNotEmptyE0Cs1qcNTItuk7F_13glyphs_reader: argument 0"}
!3313 = distinct !{!3313, i1 true, !"_RINvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtB8_7flatten7FlattenINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionReEEENCNvMsH_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB2C_7RawFont21v2_to_v3_master_names0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_B1i_INtB1i_13FlattenCompatppE13iter_try_fold7flattenNtNtNtBc_3str4iter20SplitAsciiWhitespaceuINtNtNtBc_3ops12control_flow11ControlFlowB2p_ENCINvNvXsi_B1i_B4y_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB5k_uB5Z_NCINvNvB72_4find5checkB2p_QNCB2w_s_0E0E0E0B5Z_EB2E_"}
!3314 = distinct !{!3314, !3313, !"_RINvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtB8_7flatten7FlattenINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionReEEENCNvMsH_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB2C_7RawFont21v2_to_v3_master_names0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_B1i_INtB1i_13FlattenCompatppE13iter_try_fold7flattenNtNtNtBc_3str4iter20SplitAsciiWhitespaceuINtNtNtBc_3ops12control_flow11ControlFlowB2p_ENCINvNvXsi_B1i_B4y_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB5k_uB5Z_NCINvNvB72_4find5checkB2p_QNCB2w_s_0E0E0E0B5Z_EB2E_: argument 0"}
!3315 = distinct !{!3315, i1 true, !"_RNCINvNvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenNtNtNtBg_3str4iter20SplitAsciiWhitespaceuINtNtNtBg_3ops12control_flow11ControlFlowReENCINvNvB1j_4find5checkB3s_QNCNvMsH_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB44_7RawFont21v2_to_v3_master_namess_0E0E0B46_"}
!3316 = distinct !{!3316, !3315, !"_RNCINvNvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenNtNtNtBg_3str4iter20SplitAsciiWhitespaceuINtNtNtBg_3ops12control_flow11ControlFlowReENCINvNvB1j_4find5checkB3s_QNCNvMsH_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB44_7RawFont21v2_to_v3_master_namess_0E0E0B46_: argument 1"}
!3317 = distinct !{!3317, i1 true, !"_RINvYNtNtNtCsf3Ta7LF998c_4core3str4iter20SplitAsciiWhitespaceNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduQNCINvNvBX_4find5checkReQNCNvMsH_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB2j_7RawFont21v2_to_v3_master_namess_0E0INtNtNtB9_3ops12control_flow11ControlFlowB28_EEB2l_"}
!3318 = distinct !{!3318, !3317, !"_RINvYNtNtNtCsf3Ta7LF998c_4core3str4iter20SplitAsciiWhitespaceNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduQNCINvNvBX_4find5checkReQNCNvMsH_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB2j_7RawFont21v2_to_v3_master_namess_0E0INtNtNtB9_3ops12control_flow11ControlFlowB28_EEB2l_: argument 0"}
!3319 = distinct !{!3319, !3315, !"_RNCINvNvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenNtNtNtBg_3str4iter20SplitAsciiWhitespaceuINtNtNtBg_3ops12control_flow11ControlFlowReENCINvNvB1j_4find5checkB3s_QNCNvMsH_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB44_7RawFont21v2_to_v3_master_namess_0E0E0B46_: argument 0"}
!3320 = distinct !{!3320, !3317, !"_RINvYNtNtNtCsf3Ta7LF998c_4core3str4iter20SplitAsciiWhitespaceNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduQNCINvNvBX_4find5checkReQNCNvMsH_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB2j_7RawFont21v2_to_v3_master_namess_0E0INtNtNtB9_3ops12control_flow11ControlFlowB28_EEB2l_: argument 1"}
!3321 = distinct !{!3321, i1 true, !"_RNvXsD_NtNtCsf3Ta7LF998c_4core3str4iterNtB5_20SplitAsciiWhitespaceNtNtNtNtB9_4iter6traits8iterator8Iterator4next"}
!3322 = distinct !{!3322, !3321, !"_RNvXsD_NtNtCsf3Ta7LF998c_4core3str4iterNtB5_20SplitAsciiWhitespaceNtNtNtNtB9_4iter6traits8iterator8Iterator4next: argument 0"}
!3323 = distinct !{!3323, i1 true, !"_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter5SplithNtNtBb_3str17IsAsciiWhitespaceENtB1M_15BytesIsNotEmptyENtB1M_16UnsafeBytesToStrENtNtNtB9_6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader"}
!3324 = distinct !{!3324, !3323, !"_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter5SplithNtNtBb_3str17IsAsciiWhitespaceENtB1M_15BytesIsNotEmptyENtB1M_16UnsafeBytesToStrENtNtNtB9_6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader: argument 0"}
!3325 = distinct !{!3325, i1 true, !"_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter5SplithNtNtBb_3str17IsAsciiWhitespaceENtB1w_15BytesIsNotEmptyENtNtNtB9_6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader"}
!3326 = distinct !{!3326, !3325, !"_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter5SplithNtNtBb_3str17IsAsciiWhitespaceENtB1w_15BytesIsNotEmptyENtNtNtB9_6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader: argument 0"}
!3327 = distinct !{!3327, i1 true, !"_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter5SplithNtNtBa_3str17IsAsciiWhitespaceENtNtNtNtBa_4iter6traits8iterator8Iterator4findQNtBN_15BytesIsNotEmptyECs1qcNTItuk7F_13glyphs_reader"}
!3328 = distinct !{!3328, !3327, !"_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter5SplithNtNtBa_3str17IsAsciiWhitespaceENtNtNtNtBa_4iter6traits8iterator8Iterator4findQNtBN_15BytesIsNotEmptyECs1qcNTItuk7F_13glyphs_reader: argument 0"}
!3329 = distinct !{!3329, i1 true, !"_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter5SplithNtNtBa_3str17IsAsciiWhitespaceENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB1g_4find5checkRShQNtBN_15BytesIsNotEmptyE0INtNtNtBa_3ops12control_flow11ControlFlowB2r_EECs1qcNTItuk7F_13glyphs_reader"}
!3330 = distinct !{!3330, !3329, !"_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter5SplithNtNtBa_3str17IsAsciiWhitespaceENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB1g_4find5checkRShQNtBN_15BytesIsNotEmptyE0INtNtNtBa_3ops12control_flow11ControlFlowB2r_EECs1qcNTItuk7F_13glyphs_reader: argument 0"}
!3331 = distinct !{!3331, !3327, !"_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter5SplithNtNtBa_3str17IsAsciiWhitespaceENtNtNtNtBa_4iter6traits8iterator8Iterator4findQNtBN_15BytesIsNotEmptyECs1qcNTItuk7F_13glyphs_reader: argument 1"}
!3332 = distinct !{!3332, i1 true, !"_RNvXsf_NtNtCsf3Ta7LF998c_4core5slice4iterINtB5_5SplithNtNtB9_3str17IsAsciiWhitespaceENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader"}
!3333 = distinct !{!3333, !3332, !"_RNvXsf_NtNtCsf3Ta7LF998c_4core5slice4iterINtB5_5SplithNtNtB9_3str17IsAsciiWhitespaceENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader: argument 0"}
!3334 = distinct !{!3334, i1 true, !"_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvXsf_B7_INtB7_5SplithNtNtBb_3str17IsAsciiWhitespaceEBS_4next0ECs1qcNTItuk7F_13glyphs_reader"}
!3335 = distinct !{!3335, !3334, !"_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvXsf_B7_INtB7_5SplithNtNtBb_3str17IsAsciiWhitespaceEBS_4next0ECs1qcNTItuk7F_13glyphs_reader: argument 0"}
!3336 = distinct !{!3336, i1 true, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4find5checkRShQNtNtBe_3str15BytesIsNotEmptyE0Cs1qcNTItuk7F_13glyphs_reader"}
!3337 = distinct !{!3337, !3336, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4find5checkRShQNtNtBe_3str15BytesIsNotEmptyE0Cs1qcNTItuk7F_13glyphs_reader: argument 1"}
!3338 = distinct !{!3338, !3336, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4find5checkRShQNtNtBe_3str15BytesIsNotEmptyE0Cs1qcNTItuk7F_13glyphs_reader: argument 0"}
!3339 = !{!3281}
!3340 = !{!3283}
!3341 = !{!3285}
!3342 = !{!3287}
!3343 = !{!3285, !3283, !3281, !3288}
!3344 = !{!3287, !3285, !3283, !3281, !3288}
!3345 = !{!3287, !3285, !3283, !3281}
!3346 = !{!3290}
!3347 = !{!3292}
!3348 = !{!3293, !3290, !3287, !3285, !3283, !3281, !3288}
!3349 = !{!3292, !3294, !3293, !3290, !3287, !3285, !3283, !3281, !3288}
!3350 = !{!3296}
!3351 = !{!3298}
!3352 = !{!3300}
!3353 = !{!3302}
!3354 = !{!3304}
!3355 = !{!3302, !3305, !3300, !3298, !3296, !3292, !3294, !3293, !3290, !3287, !3285, !3283, !3281, !3288}
!3356 = !{!3304, !3302, !3305, !3300, !3298, !3296, !3292, !3294, !3293, !3290, !3287, !3285, !3283, !3281, !3288}
!3357 = !{!3307, !3304, !3302, !3300, !3298, !3296, !3292, !3290, !3287, !3285, !3283, !3281}
!3358 = !{!3304, !3302, !3300, !3298, !3296, !3292, !3290, !3287, !3285, !3283, !3281}
!3359 = !{!3307}
!3360 = !{!3309, !3307, !3304, !3302}
!3361 = !{!3312, !3311, !3304, !3302, !3305, !3300, !3298, !3296, !3292, !3294, !3293, !3290, !3287, !3285, !3283, !3281, !3288}
!3362 = !{!3304, !3302}
!3363 = !{!3314, !3287, !3285, !3283, !3281}
!3364 = !{!3316}
!3365 = !{!3318}
!3366 = !{!3319, !3316, !3287, !3285, !3283, !3281, !3288}
!3367 = !{!3318, !3320, !3319, !3316, !3287, !3285, !3283, !3281, !3288}
!3368 = !{!3322}
!3369 = !{!3324}
!3370 = !{!3326}
!3371 = !{!3328}
!3372 = !{!3330}
!3373 = !{!3328, !3331, !3326, !3324, !3322, !3318, !3320, !3319, !3316, !3287, !3285, !3283, !3281, !3288}
!3374 = !{!3330, !3328, !3331, !3326, !3324, !3322, !3318, !3320, !3319, !3316, !3287, !3285, !3283, !3281, !3288}
!3375 = !{!3333, !3330, !3328, !3326, !3324, !3322, !3318, !3316, !3287, !3285, !3283, !3281}
!3376 = !{!3330, !3328, !3326, !3324, !3322, !3318, !3316, !3287, !3285, !3283, !3281}
!3377 = !{!3333}
!3378 = !{!3335, !3333, !3330, !3328}
!3379 = !{!3338, !3337, !3330, !3328, !3331, !3326, !3324, !3322, !3318, !3320, !3319, !3316, !3287, !3285, !3283, !3281, !3288}
!3380 = !{!3330, !3328}
!3381 = distinct !{!3381, i1 true, !"_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCs1qcNTItuk7F_13glyphs_reader"}
!3382 = distinct !{!3382, !3381, !"_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCs1qcNTItuk7F_13glyphs_reader: argument 0"}
!3383 = distinct !{!3383, !3381, !"_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCs1qcNTItuk7F_13glyphs_reader: argument 1"}
!3384 = distinct !{!3384, i1 true, !"_RINvXNvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs1qcNTItuk7F_13glyphs_reader"}
!3385 = distinct !{!3385, !3384, !"_RINvXNvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs1qcNTItuk7F_13glyphs_reader: argument 1"}
!3386 = distinct !{!3386, !3384, !"_RINvXNvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs1qcNTItuk7F_13glyphs_reader: argument 0"}
!3387 = distinct !{!3387, i1 true, !"_RNvXsA_NtNtCsf3Ta7LF998c_4core5clone5implsdNtB7_5Clone5clone"}
!3388 = distinct !{!3388, !3387, !"_RNvXsA_NtNtCsf3Ta7LF998c_4core5clone5implsdNtB7_5Clone5clone: argument 0"}
!3389 = distinct !{!3389, !21, !22}
!3390 = distinct !{!3390, !22, !21}
end_hunk_1
