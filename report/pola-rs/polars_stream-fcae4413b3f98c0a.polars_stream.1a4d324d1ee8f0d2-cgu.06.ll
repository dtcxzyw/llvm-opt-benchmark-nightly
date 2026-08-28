Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_stream-fcae4413b3f98c0a.polars_stream.1a4d324d1ee8f0d2-cgu.06?download=true
inline.NumInlined: 10066
inline.NumDeleted: 5164
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue11into_static:bb.a
  %i.bq = tail call fastcc noundef nonnull ptr @_RNCNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB7_8AnyValue11into_static0Cs2g09Ig8GZd6_13polars_stream(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y) #40, !dbg !39761
  br label %bb.ar, !dbg !39763

bb.ar:                                            ; preds = %bb.w, %bb.aq
  %.sroa.02.0 = phi ptr [ %i.bq, %bb.aq ], [ null, %bb.w ], !dbg !39764
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !39765
  store i64 %i.u, ptr %i.br, align 8, !dbg !39765
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !39765
  store i8 %i.w, ptr %i.bs, align 1, !dbg !39765
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !39765
  store ptr %.sroa.02.0, ptr %i.bt, align 16, !dbg !39765
  store i8 18, ptr %0, align 16, !dbg !39765
  br label %bb.ao, !dbg !39766

bb.as:                                            ; preds = %bb.aa
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !39767
  store i32 %i.aa, ptr %i.bu, align 4, !dbg !39767
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !39767
  store ptr %i.ad, ptr %i.bv, align 8, !dbg !39767
  store i8 22, ptr %0, align 16, !dbg !39767
  br label %bb.ao, !dbg !39768

bb.at:                                            ; preds = %bb.aa
  tail call void @llvm.trap(), !dbg !39769
  unreachable, !dbg !39769

bb.au:                                            ; preds = %bb.ac
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !39770
  store i32 %i.ah, ptr %i.bw, align 4, !dbg !39770
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !39770
  store ptr %i.ak, ptr %i.bx, align 8, !dbg !39770
  store i8 24, ptr %0, align 16, !dbg !39770
  br label %bb.ao, !dbg !39771

bb.av:                                            ; preds = %bb.ac
  tail call void @llvm.trap(), !dbg !39772
  unreachable, !dbg !39772

bb.aw:                                            ; preds = %bb.ai
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.d) #32
          to label %common.resume unwind label %bb.bb, !dbg !39773

bb.ax:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !dbg !39715
  %i.bz = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !39715
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !39715
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !39773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !39773
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !dbg !39774, !noalias !39782
  %i.ca = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 40, 49) 48, i64 noundef 8) #36, !dbg !39785, !noalias !39782 ; 3 uses
  %i.cb = icmp eq ptr %i.ca, null, !dbg !39786
  br i1 %i.cb, label %bb.ay, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxTINtNtB4_3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEIBG_NtNtBZ_5field5FieldEEE3newCs2g09Ig8GZd6_13polars_stream.exit, !dbg !39787, !prof !2580

bb.ay:                                            ; preds = %bb.ax
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #34
          to label %.noexc unwind label %bb.az, !dbg !39788

.noexc:                                           ; preds = %bb.ay
  unreachable, !dbg !39788

bb.az:                                            ; preds = %bb.ay
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeTINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEIBI_NtNtB1i_5field5FieldEEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e) #32
          to label %common.resume unwind label %bb.ba, !dbg !39789

bb.ba:                                            ; preds = %bb.az
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #33, !dbg !39790
  unreachable, !dbg !39790

common.resume:                                    ; preds = %bb.aw, %bb.az
  %common.resume.op = phi { ptr, i32 } [ %i.cc, %bb.az ], [ %i.by, %bb.aw ]
  resume { ptr, i32 } %common.resume.op, !dbg !39791

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxTINtNtB4_3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEIBG_NtNtBZ_5field5FieldEEE3newCs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ca, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false), !dbg !39792
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !39794
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !39795
  store ptr %i.ca, ptr %i.ce, align 8, !dbg !39795
  store i8 30, ptr %0, align 16, !dbg !39795
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !39796
  br label %bb.ao, !dbg !39797

bb.bb:                                            ; preds = %bb.aw
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #33, !dbg !39798
  unreachable, !dbg !39798

bb.bc:                                            ; preds = %bb.al
  %i.cg = load i64, ptr %i.bo, align 8, !dbg !39799
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.bn, i64 %i.cg) #34, !dbg !39800
  unreachable, !dbg !39800

bb.bd:                                            ; preds = %bb.al
  %i.ch = load ptr, ptr %i.bo, align 8, !dbg !39802, !nonnull !13, !noundef !13 ; 2 uses
  %i.ci = icmp ule i64 %i.bj, %i.bn, !dbg !39803
  tail call void @llvm.assume(i1 %i.ci), !dbg !39807
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !39810
  %.not = icmp eq i64 %i.bj, 0, !dbg !39811
  br i1 %.not, label %bb.be, label %bb.bf, !dbg !39811

bb.be:                                            ; preds = %bb.bf, %bb.bd
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !39813
  store i64 %i.bn, ptr %i.cj, align 8, !dbg !39813
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !39813
  store ptr %i.ch, ptr %.sroa.4.0..sroa_idx, align 16, !dbg !39813
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !39813
  store i64 %i.bj, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !39813
  store i8 33, ptr %0, align 16, !dbg !39813
  br label %bb.ao, !dbg !39814

bb.bf:                                            ; preds = %bb.bd
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ch, ptr nonnull align 1 %i.bh, i64 %i.bj, i1 false), !dbg !39815
  br label %bb.be, !dbg !39820
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtCscbFR6njYCjp_12thread_local5EntryINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock6RwLockNtNtCskAlUH1kY1DR_10polars_ooc13spill_context15LocalSpillQueueEEE16into_boxed_sliceCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !39821 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !39822, !range !2568, !noundef !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !39831 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !39831, !noundef !13 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c, !dbg !39832
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !39832

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 8, i64 noundef 64)
          to label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit unwind label %bb.d, !dbg !39833 ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit._crit_edge ], [ %i.c, %bb.a ], !dbg !39841 ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !39841
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !39841, !nonnull !13, !noundef !13
  %i.f = icmp ult i64 %.sroa.511.0.copyload, 144115188075855872, !dbg !39842
  tail call void @llvm.assume(i1 %i.f), !dbg !39848
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload, 0, !dbg !39849
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.511.0.copyload, 1, !dbg !39849
  ret { ptr, i64 } %i.h, !dbg !39849

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtCscbFR6njYCjp_12thread_local5EntryINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock6RwLockNtNtCskAlUH1kY1DR_10polars_ooc13spill_context15LocalSpillQueueEEEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %0) #32
          to label %bb.h unwind label %bb.g, !dbg !39850

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0, !dbg !39851 ; 2 uses
  %.not = icmp eq i64 %i.j, -9223372036854775807, !dbg !39852
  br i1 %.not, label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit._crit_edge, label %bb.e, !dbg !39853, !prof !4170

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit._crit_edge: ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit
  %.sroa.511.0.copyload.pre = load i64, ptr %i.b, align 8, !dbg !39841
  br label %bb.c, !dbg !39853

bb.e:                                             ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1, !dbg !39851
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #34
          to label %bb.f unwind label %bb.d, !dbg !39854

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #33, !dbg !39855
  unreachable, !dbg !39855

bb.h:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i, !dbg !39855
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEE6removeCs2g09Ig8GZd6_13polars_stream(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 16 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #0 !dbg !39856 {
bb.a:
  %.sroa.6 = alloca [79 x i8], align 1            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6), !dbg !39857
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39858), !dbg !39861
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !39862 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !39862, !alias.scope !39858, !noalias !39867, !noundef !13 ; 5 uses
  %i.c = icmp ult i64 %i.b, 115292150460684698, !dbg !39869
  tail call void @llvm.assume(i1 %i.c), !dbg !39871
  %.not.i = icmp ult i64 %2, %i.b, !dbg !39872
  br i1 %.not.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEE10try_removeCs2g09Ig8GZd6_13polars_stream.exit, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEE10try_removeCs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !39872

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEE10try_removeCs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !39874
  %i.e = load ptr, ptr %i.d, align 8, !dbg !39874, !alias.scope !39858, !noalias !39867, !nonnull !13, !noundef !13
  %i.f = getelementptr inbounds nuw [80 x i8], ptr %i.e, i64 %2, !dbg !39884 ; 4 uses
  %.sroa.0.0.copyload1 = load i8, ptr %i.f, align 16, !dbg !39887, !noalias !39858 ; 2 uses
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.f, i64 1, !dbg !39887
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.6, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.6.0..sroa_idx2, i64 79, i1 false), !dbg !39887, !noalias !39858
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 80, !dbg !39891
  %i.h = xor i64 %2, -1, !dbg !39893
  %i.i = add nsw i64 %i.b, %i.h, !dbg !39893
  %i.j = mul nsw i64 %i.i, 80, !dbg !39894
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %i.f, ptr nonnull align 16 %i.g, i64 %i.j, i1 false), !dbg !39894, !noalias !39897
  %i.k = add nsw i64 %i.b, -1, !dbg !39898        ; 2 uses
  store i64 %i.k, ptr %i.a, align 8, !dbg !39899, !alias.scope !39858, !noalias !39867
  %.not = icmp eq i8 %.sroa.0.0.copyload1, 31, !dbg !39857
  br i1 %.not, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEE10try_removeCs2g09Ig8GZd6_13polars_stream.exit.thread, label %bb.b, !dbg !39902, !prof !39903

bb.b:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEE10try_removeCs2g09Ig8GZd6_13polars_stream.exit
  store i8 %.sroa.0.0.copyload1, ptr %0, align 16, !dbg !39904
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !39904
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.6, i64 79, i1 false), !dbg !39904
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !39905
  ret void, !dbg !39906

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEE10try_removeCs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %bb.a, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEE10try_removeCs2g09Ig8GZd6_13polars_stream.exit
  %i.l = phi i64 [ %i.b, %bb.a ], [ %i.k, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEE10try_removeCs2g09Ig8GZd6_13polars_stream.exit ], !dbg !39907 ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 115292150460684698, !dbg !39910
  tail call void @llvm.assume(i1 %i.m), !dbg !39912
  tail call void @_RNvNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %2, i64 noundef %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #37, !dbg !39913
  unreachable, !dbg !39913
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtCs4OpKpA9X0GC_15crossbeam_queue11array_queue4SlotTNtNtCskAlUH1kY1DR_10polars_ooc11spill_frame10SpillFrameNtNtCs2g09Ig8GZd6_13polars_stream6morsel9MorselSeqEEE16into_boxed_sliceB2u_(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !39914 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !39915, !range !2568, !noundef !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !39924 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !39924, !noundef !13 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c, !dbg !39925
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !39925

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 8, i64 noundef 32)
          to label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit unwind label %bb.d, !dbg !39926 ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit._crit_edge ], [ %i.c, %bb.a ], !dbg !39933 ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !39933
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !39933, !nonnull !13, !noundef !13
  %i.f = icmp ult i64 %.sroa.511.0.copyload, 288230376151711744, !dbg !39934
  tail call void @llvm.assume(i1 %i.f), !dbg !39940
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload, 0, !dbg !39941
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.511.0.copyload, 1, !dbg !39941
  ret { ptr, i64 } %i.h, !dbg !39941

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs4OpKpA9X0GC_15crossbeam_queue11array_queue4SlotTNtNtCskAlUH1kY1DR_10polars_ooc11spill_frame10SpillFrameNtNtCs2g09Ig8GZd6_13polars_stream6morsel9MorselSeqEEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB2C_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs4OpKpA9X0GC_15crossbeam_queue11array_queue4SlotTNtNtCskAlUH1kY1DR_10polars_ooc11spill_frame10SpillFrameNtNtCs2g09Ig8GZd6_13polars_stream6morsel9MorselSeqEEEEB33_.exit unwind label %bb.g, !dbg !39942

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0, !dbg !39947 ; 2 uses
  %.not = icmp eq i64 %i.j, -9223372036854775807, !dbg !39948
  br i1 %.not, label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit._crit_edge, label %bb.e, !dbg !39949, !prof !4170

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit._crit_edge: ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit
  %.sroa.511.0.copyload.pre = load i64, ptr %i.b, align 8, !dbg !39933
  br label %bb.c, !dbg !39949

bb.e:                                             ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1, !dbg !39947
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #34
          to label %bb.f unwind label %bb.d, !dbg !39950

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #33, !dbg !39951
  unreachable, !dbg !39951

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs4OpKpA9X0GC_15crossbeam_queue11array_queue4SlotTNtNtCskAlUH1kY1DR_10polars_ooc11spill_frame10SpillFrameNtNtCs2g09Ig8GZd6_13polars_stream6morsel9MorselSeqEEEEB33_.exit: ; preds = %bb.d
  resume { ptr, i32 } %i.i, !dbg !39951
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtCscgRAwXFJnXP_4core4cell10UnsafeCellINtNtNtBJ_3mem12maybe_uninit11MaybeUninitNtNtCs2g09Ig8GZd6_13polars_stream6morsel6MorselEEE16into_boxed_sliceB22_(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !39952 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !39953, !range !2568, !noundef !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !39962 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !39962, !noundef !13 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c, !dbg !39963
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !39963

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 8, i64 noundef 40)
          to label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit unwind label %bb.d, !dbg !39964 ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit._crit_edge ], [ %i.c, %bb.a ], !dbg !39971 ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !39971
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !39971, !nonnull !13, !noundef !13
  %i.f = icmp ult i64 %.sroa.511.0.copyload, 230584300921369396, !dbg !39972
  tail call void @llvm.assume(i1 %i.f), !dbg !39978
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload, 0, !dbg !39979
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.511.0.copyload, 1, !dbg !39979
  ret { ptr, i64 } %i.h, !dbg !39979

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCscgRAwXFJnXP_4core4cell10UnsafeCellINtNtNtBR_3mem12maybe_uninit11MaybeUninitNtNtCs2g09Ig8GZd6_13polars_stream6morsel6MorselEEENtNtNtBR_3ops4drop4Drop4dropB2a_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB4_4cell10UnsafeCellINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtNtCs2g09Ig8GZd6_13polars_stream6morsel6MorselEEEEB2l_.exit unwind label %bb.g, !dbg !39980

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0, !dbg !39985 ; 2 uses
  %.not = icmp eq i64 %i.j, -9223372036854775807, !dbg !39986
  br i1 %.not, label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit._crit_edge, label %bb.e, !dbg !39987, !prof !4170

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit._crit_edge: ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit
  %.sroa.511.0.copyload.pre = load i64, ptr %i.b, align 8, !dbg !39971
  br label %bb.c, !dbg !39987

bb.e:                                             ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1, !dbg !39985
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #34
          to label %bb.f unwind label %bb.d, !dbg !39988

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #33, !dbg !39989
  unreachable, !dbg !39989

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB4_4cell10UnsafeCellINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtNtCs2g09Ig8GZd6_13polars_stream6morsel6MorselEEEEB2l_.exit: ; preds = %bb.d
  resume { ptr, i32 } %i.i, !dbg !39989
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtCscgRAwXFJnXP_4core4cell10UnsafeCellINtNtNtBJ_3mem12maybe_uninit11MaybeUninitNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3csv17line_batch_source9LineBatchEEE16into_boxed_sliceB28_(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !39990 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !39991, !range !2568, !noundef !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !40000 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !40000, !noundef !13 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c, !dbg !40001
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !40001

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 8, i64 noundef 64)
          to label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit unwind label %bb.d, !dbg !40002 ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit._crit_edge ], [ %i.c, %bb.a ], !dbg !40009 ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !40009
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !40009, !nonnull !13, !noundef !13
  %i.f = icmp ult i64 %.sroa.511.0.copyload, 144115188075855872, !dbg !40010
  tail call void @llvm.assume(i1 %i.f), !dbg !40016
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload, 0, !dbg !40017
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.511.0.copyload, 1, !dbg !40017
  ret { ptr, i64 } %i.h, !dbg !40017

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCscgRAwXFJnXP_4core4cell10UnsafeCellINtNtNtBR_3mem12maybe_uninit11MaybeUninitNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3csv17line_batch_source9LineBatchEEENtNtNtBR_3ops4drop4Drop4dropB2g_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB4_4cell10UnsafeCellINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3csv17line_batch_source9LineBatchEEEEB2r_.exit unwind label %bb.g, !dbg !40018

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0, !dbg !40023 ; 2 uses
  %.not = icmp eq i64 %i.j, -9223372036854775807, !dbg !40024
  br i1 %.not, label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit._crit_edge, label %bb.e, !dbg !40025, !prof !4170

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit._crit_edge: ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit
  %.sroa.511.0.copyload.pre = load i64, ptr %i.b, align 8, !dbg !40009
  br label %bb.c, !dbg !40025

bb.e:                                             ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1, !dbg !40023
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #34
          to label %bb.f unwind label %bb.d, !dbg !40026

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #33, !dbg !40027
  unreachable, !dbg !40027

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB4_4cell10UnsafeCellINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3csv17line_batch_source9LineBatchEEEEB2r_.exit: ; preds = %bb.d
  resume { ptr, i32 } %i.i, !dbg !40027
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtCscgRAwXFJnXP_4core4cell10UnsafeCellINtNtNtBJ_3mem12maybe_uninit11MaybeUninitNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources6ndjson20line_batch_processor9LineBatchEEE16into_boxed_sliceB28_(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !40028 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !40029, !range !2568, !noundef !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !40038 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !40038, !noundef !13 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c, !dbg !40039
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !40039

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 8, i64 noundef 32)
end_hunk_0
begin_hunk_1_@_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtCsexZqwX5uBAL_16concurrent_queue7bounded4SlotINtNvMs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes8group_byNtB1A_16GroupBySinkState14combine_locals6ToDropIBv_TjyNtNtCskY9G75ZWc4U_11polars_expr9hash_keys8HashKeysNtNtCskAlUH1kY1DR_10polars_ooc11spill_frame10SpillFrameEEIBv_NtB1A_6PreAggEEEE16into_boxed_sliceB1E_:bb.a
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #33, !dbg !40779
  unreachable, !dbg !40779

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCsexZqwX5uBAL_16concurrent_queue7bounded4SlotINtNvMs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes8group_byNtB29_16GroupBySinkState14combine_locals6ToDropIBH_TjyNtNtCskY9G75ZWc4U_11polars_expr9hash_keys8HashKeysNtNtCskAlUH1kY1DR_10polars_ooc11spill_frame10SpillFrameEEIBH_NtB29_6PreAggEEEEEB2d_.exit: ; preds = %bb.d
  resume { ptr, i32 } %i.i, !dbg !40779
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtNtCscgRAwXFJnXP_4core3mem12maybe_uninit11MaybeUninitNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEE16into_boxed_sliceCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !40780 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !40781, !range !2568, !noundef !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !40790 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !40790, !noundef !13 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c, !dbg !40791
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !40791

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 8, i64 noundef 16)
          to label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit unwind label %bb.d, !dbg !40792 ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit._crit_edge ], [ %i.c, %bb.a ], !dbg !40799 ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !40799
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !40799, !nonnull !13, !noundef !13
  %i.f = icmp ult i64 %.sroa.511.0.copyload, 576460752303423488, !dbg !40800
  tail call void @llvm.assume(i1 %i.f), !dbg !40806
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload, 0, !dbg !40807
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.511.0.copyload, 1, !dbg !40807
  ret { ptr, i64 } %i.h, !dbg !40807

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtNtCscgRAwXFJnXP_4core3mem12maybe_uninit11MaybeUninitNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEENtNtNtBT_3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEECs2g09Ig8GZd6_13polars_stream.exit unwind label %bb.g, !dbg !40808

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0, !dbg !40813 ; 2 uses
  %.not = icmp eq i64 %i.j, -9223372036854775807, !dbg !40814
  br i1 %.not, label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit._crit_edge, label %bb.e, !dbg !40815, !prof !4170

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit._crit_edge: ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit
  %.sroa.511.0.copyload.pre = load i64, ptr %i.b, align 8, !dbg !40799
  br label %bb.c, !dbg !40815

bb.e:                                             ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1, !dbg !40813
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #34
          to label %bb.f unwind label %bb.d, !dbg !40816

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #33, !dbg !40817
  unreachable, !dbg !40817

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.d
  resume { ptr, i32 } %i.i, !dbg !40817
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtNtCslt8cbK4E2O5_12futures_util6future14try_maybe_done12TryMaybeDoneINtNtNtBJ_10try_future11into_future10IntoFutureNCNCNCNvNtNtCslpwjCj2YNBy_9polars_io10file_cache5utils31init_entries_from_uri_list_impl0s_00EEE16into_boxed_sliceCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !40818 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !40819, !range !2568, !noundef !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !40828 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !40828, !noundef !13 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c, !dbg !40829
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !40829

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 8, i64 noundef 2480)
          to label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit unwind label %bb.d, !dbg !40830 ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit._crit_edge ], [ %i.c, %bb.a ], !dbg !40837 ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !40837
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !40837, !nonnull !13, !noundef !13
  %i.f = icmp ult i64 %.sroa.511.0.copyload, 3719101627764023, !dbg !40838
  tail call void @llvm.assume(i1 %i.f), !dbg !40844
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload, 0, !dbg !40845
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.511.0.copyload, 1, !dbg !40845
  ret { ptr, i64 } %i.h, !dbg !40845

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtNtCslt8cbK4E2O5_12futures_util6future14try_maybe_done12TryMaybeDoneINtNtNtB1i_10try_future11into_future10IntoFutureNCNCNCNvNtNtCslpwjCj2YNBy_9polars_io10file_cache5utils31init_entries_from_uri_list_impl0s_00EEEECs2g09Ig8GZd6_13polars_stream(ptr noundef nonnull align 8 %0) #32
          to label %bb.h unwind label %bb.g, !dbg !40846

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0, !dbg !40847 ; 2 uses
  %.not = icmp eq i64 %i.j, -9223372036854775807, !dbg !40848
  br i1 %.not, label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit._crit_edge, label %bb.e, !dbg !40849, !prof !4170

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit._crit_edge: ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit
  %.sroa.511.0.copyload.pre = load i64, ptr %i.b, align 8, !dbg !40837
  br label %bb.c, !dbg !40849

bb.e:                                             ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1, !dbg !40847
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #34
          to label %bb.f unwind label %bb.d, !dbg !40850

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #33, !dbg !40851
  unreachable, !dbg !40851

bb.h:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i, !dbg !40851
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtCs1LHh8CLbVkQ_11polars_core6scalar6ScalarE16into_boxed_sliceCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !40852 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !40853, !range !2568, !noundef !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !40862 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !40862, !noundef !13 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c, !dbg !40863
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !40863

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 16, i64 noundef 96)
          to label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit unwind label %bb.d, !dbg !40864 ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit._crit_edge ], [ %i.c, %bb.a ], !dbg !40871 ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !40871
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !40871, !nonnull !13, !noundef !13
  %i.f = icmp ult i64 %.sroa.511.0.copyload, 96076792050570582, !dbg !40872
  tail call void @llvm.assume(i1 %i.f), !dbg !40878
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload, 0, !dbg !40879
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.511.0.copyload, 1, !dbg !40879
  ret { ptr, i64 } %i.h, !dbg !40879

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6scalar6ScalarEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %0) #32
          to label %bb.h unwind label %bb.g, !dbg !40880

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0, !dbg !40881 ; 2 uses
  %.not = icmp eq i64 %i.j, -9223372036854775807, !dbg !40882
  br i1 %.not, label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit._crit_edge, label %bb.e, !dbg !40883, !prof !4170

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit._crit_edge: ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit
  %.sroa.511.0.copyload.pre = load i64, ptr %i.b, align 8, !dbg !40871
  br label %bb.c, !dbg !40883

bb.e:                                             ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1, !dbg !40881
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #34
          to label %bb.f unwind label %bb.d, !dbg !40884

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #33, !dbg !40885
  unreachable, !dbg !40885

bb.h:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i, !dbg !40885
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtCslovz2ii29zg_17crossbeam_channel5waker5EntryE6removeCs2g09Ig8GZd6_13polars_stream(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #0 !dbg !40886 {
bb.a:
  %.sroa.6 = alloca [16 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6), !dbg !40887
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40888), !dbg !40891
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !40892 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !40892, !alias.scope !40888, !noalias !40897, !noundef !13 ; 5 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326, !dbg !40899
  tail call void @llvm.assume(i1 %i.c), !dbg !40901
  %.not.i = icmp ult i64 %2, %i.b, !dbg !40902
  br i1 %.not.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtCslovz2ii29zg_17crossbeam_channel5waker5EntryE10try_removeCs2g09Ig8GZd6_13polars_stream.exit, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtCslovz2ii29zg_17crossbeam_channel5waker5EntryE10try_removeCs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !40902

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtCslovz2ii29zg_17crossbeam_channel5waker5EntryE10try_removeCs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !40904
  %i.e = load ptr, ptr %i.d, align 8, !dbg !40904, !alias.scope !40888, !noalias !40897, !nonnull !13, !noundef !13
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %2, !dbg !40914 ; 4 uses
  %.sroa.0.0.copyload1 = load ptr, ptr %i.f, align 8, !dbg !40917, !noalias !40888 ; 2 uses
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !40917
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2, i64 16, i1 false), !dbg !40917, !noalias !40888
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !40921
  %i.h = xor i64 %2, -1, !dbg !40923
  %i.i = add nsw i64 %i.b, %i.h, !dbg !40923
  %i.j = mul nsw i64 %i.i, 24, !dbg !40924
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.g, i64 %i.j, i1 false), !dbg !40924, !noalias !40927
  %i.k = add nsw i64 %i.b, -1, !dbg !40928        ; 2 uses
  store i64 %i.k, ptr %i.a, align 8, !dbg !40929, !alias.scope !40888, !noalias !40897
  %.not = icmp eq ptr %.sroa.0.0.copyload1, null, !dbg !40887
  br i1 %.not, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtCslovz2ii29zg_17crossbeam_channel5waker5EntryE10try_removeCs2g09Ig8GZd6_13polars_stream.exit.thread, label %bb.b, !dbg !40932, !prof !39903

bb.b:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtCslovz2ii29zg_17crossbeam_channel5waker5EntryE10try_removeCs2g09Ig8GZd6_13polars_stream.exit
  store ptr %.sroa.0.0.copyload1, ptr %0, align 8, !dbg !40933
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !40933
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false), !dbg !40933
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !40934
  ret void, !dbg !40935

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtCslovz2ii29zg_17crossbeam_channel5waker5EntryE10try_removeCs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %bb.a, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtCslovz2ii29zg_17crossbeam_channel5waker5EntryE10try_removeCs2g09Ig8GZd6_13polars_stream.exit
  %i.l = phi i64 [ %i.b, %bb.a ], [ %i.k, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtCslovz2ii29zg_17crossbeam_channel5waker5EntryE10try_removeCs2g09Ig8GZd6_13polars_stream.exit ], !dbg !40936 ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 384307168202282326, !dbg !40939
  tail call void @llvm.assume(i1 %i.m), !dbg !40941
  tail call void @_RNvNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %2, i64 noundef %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #37, !dbg !40942
  unreachable, !dbg !40942
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnE7reserveCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 !dbg !4055 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !40943
  %i.b = load i64, ptr %i.a, align 8, !dbg !40943, !noundef !13 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !dbg !40944, !range !2568, !noundef !13
  %i.d = sub i64 %i.c, %i.b, !dbg !40949
  %i.e = icmp ugt i64 %1, %i.d, !dbg !40951
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !40952, !prof !2580

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void, !dbg !40953

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 16, i64 noundef 160), !dbg !40954
  br label %bb.b, !dbg !40954
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnE8truncateCs2g09Ig8GZd6_13polars_stream(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !40955 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !40956 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !40956, !noundef !13 ; 3 uses
  %i.c = icmp ugt i64 %1, %i.b, !dbg !40957
  br i1 %i.c, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECs2g09Ig8GZd6_13polars_stream.exit, label %bb.b, !dbg !40957

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %i.b, %1, !dbg !40958        ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !40959
  %i.f = load ptr, ptr %i.e, align 8, !dbg !40959, !nonnull !13, !noundef !13
  %i.g = getelementptr inbounds nuw [160 x i8], ptr %i.f, i64 %1, !dbg !40969 ; 2 uses
  store i64 %1, ptr %i.a, align 8, !dbg !40972
  %i.h = icmp eq i64 %i.b, %1, !dbg !40974
  br i1 %i.h, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECs2g09Ig8GZd6_13polars_stream.exit, label %.lr.ph.i, !dbg !40974

.lr.ph.i:                                         ; preds = %bb.b, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECs2g09Ig8GZd6_13polars_stream.exit.i
  %.sroa.0.08.i = phi i64 [ %i.j, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECs2g09Ig8GZd6_13polars_stream.exit.i ], [ 0, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [160 x i8], ptr %i.g, i64 %.sroa.0.08.i, !dbg !40974 ; 3 uses
  %i.j = add nuw i64 %.sroa.0.08.i, 1, !dbg !40974 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40976), !dbg !40974
  %i.k = load i8, ptr %i.i, align 16, !dbg !40979, !range !10724, !alias.scope !40981, !noundef !13
  %i.l = icmp eq i8 %i.k, 31, !dbg !40979
  br i1 %i.l, label %bb.c, label %bb.e, !dbg !40979

bb.c:                                             ; preds = %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !40979 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40984), !dbg !40979
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40987), !dbg !40990
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40992), !dbg !40995
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40997), !dbg !41000
  %i.n = load ptr, ptr %i.m, align 8, !dbg !41002, !alias.scope !41006, !nonnull !13, !noundef !13
  %i.o = atomicrmw sub ptr %i.n, i64 1 release, align 8, !dbg !41007, !noalias !41010
  %i.p = icmp eq i64 %i.o, 1, !dbg !41011
  br i1 %i.p, label %bb.d, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !41011

bb.d:                                             ; preds = %bb.c
  fence acquire, !dbg !41012
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.m) #35
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECs2g09Ig8GZd6_13polars_stream.exit.i unwind label %bb.g, !dbg !41014

bb.e:                                             ; preds = %.lr.ph.i
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalar12ScalarColumnECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 16 dereferenceable(160) %i.i)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECs2g09Ig8GZd6_13polars_stream.exit.i unwind label %bb.g, !dbg !40979

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.q = icmp eq i64 %i.j, %i.d, !dbg !40974
  br i1 %i.q, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECs2g09Ig8GZd6_13polars_stream.exit, label %.lr.ph.i, !dbg !40974

bb.f:                                             ; preds = %.lr.ph
  %i.r = add i64 %.sroa.0.1.i8, 1, !dbg !40974    ; 2 uses
  %i.s = icmp eq i64 %i.r, %i.d, !dbg !40974
  br i1 %i.s, label %._crit_edge, label %.lr.ph, !dbg !40974

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = icmp eq i64 %i.j, %i.d, !dbg !40974
  br i1 %i.u, label %._crit_edge, label %.lr.ph, !dbg !40974

.lr.ph:                                           ; preds = %bb.g, %bb.f
  %.sroa.0.1.i8 = phi i64 [ %i.r, %bb.f ], [ %i.j, %bb.g ] ; 2 uses
  %i.v = getelementptr inbounds nuw [160 x i8], ptr %i.g, i64 %.sroa.0.1.i8, !dbg !40974
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 16 dereferenceable(160) %i.v) #32
          to label %bb.f unwind label %bb.h, !dbg !40974

._crit_edge:                                      ; preds = %bb.f, %bb.g
  resume { ptr, i32 } %i.t, !dbg !40974

bb.h:                                             ; preds = %.lr.ph
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #33, !dbg !40974
  unreachable, !dbg !40974

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECs2g09Ig8GZd6_13polars_stream.exit.i, %bb.b, %bb.a
  ret void, !dbg !41015
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE7reserveCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 !dbg !37423 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !41016
  %i.b = load i64, ptr %i.a, align 8, !dbg !41016, !noundef !13 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !dbg !41017, !range !2568, !noundef !13
  %i.d = sub i64 %i.c, %i.b, !dbg !41022
  %i.e = icmp ugt i64 %1, %i.d, !dbg !41024
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !41025, !prof !2580

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void, !dbg !41026

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 48), !dbg !41027
  br label %bb.b, !dbg !41027
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCs1d9mkheQt2j_4http6header3map3PosE16into_boxed_sliceCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !41028 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !41029, !range !2568, !noundef !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !41038 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !41038, !noundef !13 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c, !dbg !41039
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !41039

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 2, i64 noundef 4)
          to label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit unwind label %bb.d, !dbg !41040 ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit._crit_edge ], [ %i.c, %bb.a ], !dbg !41047 ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !41047
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !41047, !nonnull !13, !noundef !13
  %i.f = icmp ult i64 %.sroa.511.0.copyload, 2305843009213693952, !dbg !41048
  tail call void @llvm.assume(i1 %i.f), !dbg !41054
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload, 0, !dbg !41055
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.511.0.copyload, 1, !dbg !41055
  ret { ptr, i64 } %i.h, !dbg !41055

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1d9mkheQt2j_4http6header3map3PosENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1d9mkheQt2j_4http6header3map3PosEECs2g09Ig8GZd6_13polars_stream.exit unwind label %bb.g, !dbg !41056

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0, !dbg !41061 ; 2 uses
  %.not = icmp eq i64 %i.j, -9223372036854775807, !dbg !41062
  br i1 %.not, label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit._crit_edge, label %bb.e, !dbg !41063, !prof !4170

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit._crit_edge: ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit
  %.sroa.511.0.copyload.pre = load i64, ptr %i.b, align 8, !dbg !41047
  br label %bb.c, !dbg !41063

bb.e:                                             ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1, !dbg !41061
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #34
          to label %bb.f unwind label %bb.d, !dbg !41064

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #33, !dbg !41065
  unreachable, !dbg !41065

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1d9mkheQt2j_4http6header3map3PosEECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.d
  resume { ptr, i32 } %i.i, !dbg !41065
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCse67t6KqNqGQ_5rayon5slice4sort10TimSortRunE6removeCs2g09Ig8GZd6_13polars_stream(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 !dbg !41066 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41067), !dbg !41070
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !41071 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !41071, !alias.scope !41067, !noalias !41076, !noundef !13 ; 5 uses
  %i.c = icmp ult i64 %i.b, 576460752303423488, !dbg !41078
  tail call void @llvm.assume(i1 %i.c), !dbg !41080
  %.not.i = icmp ult i64 %1, %i.b, !dbg !41081
  br i1 %.not.i, label %bb.b, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCse67t6KqNqGQ_5rayon5slice4sort10TimSortRunE10try_removeCs2g09Ig8GZd6_13polars_stream.exit, !dbg !41081

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !41083
  %i.e = load ptr, ptr %i.d, align 8, !dbg !41083, !alias.scope !41067, !noalias !41076, !nonnull !13, !noundef !13
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %1, !dbg !41093 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !dbg !41096, !noalias !41100, !noundef !13
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !41096
  %i.i = load i64, ptr %i.h, align 8, !dbg !41096, !noalias !41100, !noundef !13
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !41101
  %i.k = xor i64 %1, -1, !dbg !41103
  %i.l = add nsw i64 %i.b, %i.k, !dbg !41103
  %i.m = shl nsw i64 %i.l, 4, !dbg !41104
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.j, i64 %i.m, i1 false), !dbg !41104, !noalias !41100
  %i.n = add nsw i64 %i.b, -1, !dbg !41107
  store i64 %i.n, ptr %i.a, align 8, !dbg !41108, !alias.scope !41067, !noalias !41076
  %i.o = insertvalue { i64, i64 } poison, i64 %i.g, 0, !dbg !41111
  %i.p = insertvalue { i64, i64 } %i.o, i64 %i.i, 1, !dbg !41111
  ret { i64, i64 } %i.p, !dbg !41111

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCse67t6KqNqGQ_5rayon5slice4sort10TimSortRunE10try_removeCs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.a
  tail call void @_RNvNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %1, i64 noundef %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #37, !dbg !41112
  unreachable, !dbg !41112
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE7reserveCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 !dbg !38582 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !41113
  %i.b = load i64, ptr %i.a, align 8, !dbg !41113, !noundef !13 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !dbg !41114, !range !2568, !noundef !13
  %i.d = sub i64 %i.c, %i.b, !dbg !41119
  %i.e = icmp ugt i64 %1, %i.d, !dbg !41121
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !41122, !prof !2580

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void, !dbg !41123

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 4, i64 noundef 16), !dbg !41124
  br label %bb.b, !dbg !41124
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components15column_selector14ColumnSelectorE16into_boxed_sliceBQ_(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !41125 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !41126, !range !2568, !noundef !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !41135 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !41135, !noundef !13 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c, !dbg !41136
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !41136

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 8, i64 noundef 16)
          to label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit unwind label %bb.d, !dbg !41137 ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit._crit_edge ], [ %i.c, %bb.a ], !dbg !41144 ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !41144
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !41144, !nonnull !13, !noundef !13
  %i.f = icmp ult i64 %.sroa.511.0.copyload, 576460752303423488, !dbg !41145
  tail call void @llvm.assume(i1 %i.f), !dbg !41151
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload, 0, !dbg !41152
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.511.0.copyload, 1, !dbg !41152
  ret { ptr, i64 } %i.h, !dbg !41152

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components15column_selector14ColumnSelectorEEB1p_(ptr noalias noundef align 8 dereferenceable(24) %0) #32
          to label %bb.h unwind label %bb.g, !dbg !41153

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0, !dbg !41154 ; 2 uses
  %.not = icmp eq i64 %i.j, -9223372036854775807, !dbg !41155
  br i1 %.not, label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit._crit_edge, label %bb.e, !dbg !41156, !prof !4170

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit._crit_edge: ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit
  %.sroa.511.0.copyload.pre = load i64, ptr %i.b, align 8, !dbg !41144
  br label %bb.c, !dbg !41156

bb.e:                                             ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1, !dbg !41154
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #34
          to label %bb.f unwind label %bb.d, !dbg !41157

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #33, !dbg !41158
  unreachable, !dbg !41158

bb.h:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i, !dbg !41158
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecTjjNtNtNtCse67t6KqNqGQ_5rayon5slice4sort15MergeSortResultEE7reserveCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 !dbg !37608 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !41159
  %i.b = load i64, ptr %i.a, align 8, !dbg !41159, !noundef !13 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !dbg !41160, !range !2568, !noundef !13
  %i.d = sub i64 %i.c, %i.b, !dbg !41165
  %i.e = icmp ugt i64 %1, %i.d, !dbg !41167
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !41168, !prof !2580

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void, !dbg !41169

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 24), !dbg !41170
  br label %bb.b, !dbg !41170
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE13reserve_exactCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 !dbg !41171 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !41172
  %i.b = load i64, ptr %i.a, align 8, !dbg !41172, !noundef !13
  tail call void @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 1, i64 noundef 1), !dbg !41173
  ret void, !dbg !41176
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE16into_boxed_sliceCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !41177 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !41178, !range !2568, !noundef !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !41187 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !41187, !noundef !13 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c, !dbg !41188
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !41188

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 1, i64 noundef 1)
          to label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit unwind label %bb.d, !dbg !41189 ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit._crit_edge ], [ %i.c, %bb.a ], !dbg !41196 ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !41196
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !41196, !nonnull !13, !noundef !13
  %i.f = icmp sgt i64 %.sroa.511.0.copyload, -1, !dbg !41197
  tail call void @llvm.assume(i1 %i.f), !dbg !41203
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload, 0, !dbg !41204
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.511.0.copyload, 1, !dbg !41204
  ret { ptr, i64 } %i.h, !dbg !41204

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit unwind label %bb.g, !dbg !41205

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0, !dbg !41208 ; 2 uses
  %.not = icmp eq i64 %i.j, -9223372036854775807, !dbg !41209
  br i1 %.not, label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit._crit_edge, label %bb.e, !dbg !41210, !prof !4170

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit._crit_edge: ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit
  %.sroa.511.0.copyload.pre = load i64, ptr %i.b, align 8, !dbg !41196
  br label %bb.c, !dbg !41210

bb.e:                                             ; preds = %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs2g09Ig8GZd6_13polars_stream.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1, !dbg !41208
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #34
          to label %bb.f unwind label %bb.d, !dbg !41211

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #33, !dbg !41212
  unreachable, !dbg !41212

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.d
  resume { ptr, i32 } %i.i, !dbg !41212
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 !dbg !4341 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !41213
  %i.b = load i64, ptr %i.a, align 8, !dbg !41213, !noundef !13 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !dbg !41214, !range !2568, !noundef !13
  %i.d = sub i64 %i.c, %i.b, !dbg !41219
  %i.e = icmp ugt i64 %1, %i.d, !dbg !41221
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !41222, !prof !2580

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void, !dbg !41223

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 1, i64 noundef 1), !dbg !41224
  br label %bb.b, !dbg !41224
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecmE7reserveCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 !dbg !4482 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !41225
  %i.b = load i64, ptr %i.a, align 8, !dbg !41225, !noundef !13 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !dbg !41226, !range !2568, !noundef !13
  %i.d = sub i64 %i.c, %i.b, !dbg !41231
  %i.e = icmp ugt i64 %1, %i.d, !dbg !41233
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !41234, !prof !2580

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void, !dbg !41235

end_hunk_1
