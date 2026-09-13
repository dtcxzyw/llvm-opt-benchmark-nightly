Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opendal-rs/original/opendal_core-ba0671c8f10fcf8e.opendal_core.455f99aaf940afe2-cgu.01?download=true
inline.NumInlined: 443
inline.NumDeleted: 173
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RNCINvXsk_NtCs4CtJ3uPHEZZ_4jiff5errorINtNtCsgxBkk5gSRhY_4core6result6ResultNtNtNtBa_5civil4date4DateNtB8_5ErrorEINtB8_12ErrorContextB1b_B1A_E7contextNtNtNtB8_3fmt7rfc28225ErrorE0Cs5XgW7KoffLW_12opendal_core:bb.a
_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs4CtJ3uPHEZZ_4jiff5error5ErrorECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.d, %bb.c, %bb.e
  resume { ptr, i32 } %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef ptr @_RNCINvXsk_NtCs4CtJ3uPHEZZ_4jiff5errorINtNtCsgxBkk5gSRhY_4core6result6ResultNtNtNtBa_5civil4date4DateNtB8_5ErrorEINtB8_12ErrorContextB1b_B1A_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Cs5XgW7KoffLW_12opendal_core(ptr noundef %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = invoke noundef ptr @_RNvXNtNtNtCs4CtJ3uPHEZZ_4jiff5error3fmt8temporalNtB2_5ErrorNtB6_9IntoError10into_error(i64 34)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_RNvMs_NtCs4CtJ3uPHEZZ_4jiff5errorNtB4_5Error12context_impl(ptr noundef %0, ptr noundef %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.c

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = icmp eq ptr %0, null
  br i1 %i.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs4CtJ3uPHEZZ_4jiff5error5ErrorECs5XgW7KoffLW_12opendal_core.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = atomicrmw sub ptr %0, i64 1 release, align 8, !noalias !343
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs4CtJ3uPHEZZ_4jiff5error5ErrorECs5XgW7KoffLW_12opendal_core.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtCs4CtJ3uPHEZZ_4jiff5error10ErrorInnerE9drop_slowBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #24
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs4CtJ3uPHEZZ_4jiff5error5ErrorECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs4CtJ3uPHEZZ_4jiff5error5ErrorECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.d, %bb.c, %bb.e
  resume { ptr, i32 } %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef ptr @_RNCINvXsk_NtCs4CtJ3uPHEZZ_4jiff5errorINtNtCsgxBkk5gSRhY_4core6result6ResultaNtB8_5ErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt7rfc28225ErrorE0Cs5XgW7KoffLW_12opendal_core(i24 range(i24 21, 27) %0, ptr noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %i.b = invoke noundef ptr @_RNvXNtNtNtCs4CtJ3uPHEZZ_4jiff5error3fmt7rfc2822NtB2_5ErrorNtB6_9IntoError10into_error(i24 %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_RNvMs_NtCs4CtJ3uPHEZZ_4jiff5errorNtB4_5Error12context_impl(ptr noundef %1, ptr noundef %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.c

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs4CtJ3uPHEZZ_4jiff5error5ErrorECs5XgW7KoffLW_12opendal_core.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = atomicrmw sub ptr %1, i64 1 release, align 8, !noalias !352
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs4CtJ3uPHEZZ_4jiff5error5ErrorECs5XgW7KoffLW_12opendal_core.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtCs4CtJ3uPHEZZ_4jiff5error10ErrorInnerE9drop_slowBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #24
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs4CtJ3uPHEZZ_4jiff5error5ErrorECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs4CtJ3uPHEZZ_4jiff5error5ErrorECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.d, %bb.c, %bb.e
  resume { ptr, i32 } %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef ptr @_RNCINvXsk_NtCs4CtJ3uPHEZZ_4jiff5errorINtNtCsgxBkk5gSRhY_4core6result6ResultaNtB8_5ErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Cs5XgW7KoffLW_12opendal_core(i64 range(i64 44, 49) %0, ptr noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %i.b = invoke noundef ptr @_RNvXNtNtNtCs4CtJ3uPHEZZ_4jiff5error3fmt8temporalNtB2_5ErrorNtB6_9IntoError10into_error(i64 %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_RNvMs_NtCs4CtJ3uPHEZZ_4jiff5errorNtB4_5Error12context_impl(ptr noundef %1, ptr noundef %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.c

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs4CtJ3uPHEZZ_4jiff5error5ErrorECs5XgW7KoffLW_12opendal_core.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = atomicrmw sub ptr %1, i64 1 release, align 8, !noalias !361
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs4CtJ3uPHEZZ_4jiff5error5ErrorECs5XgW7KoffLW_12opendal_core.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtCs4CtJ3uPHEZZ_4jiff5error10ErrorInnerE9drop_slowBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #24
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs4CtJ3uPHEZZ_4jiff5error5ErrorECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs4CtJ3uPHEZZ_4jiff5error5ErrorECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.d, %bb.c, %bb.e
  resume { ptr, i32 } %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvMNtCsgxBkk5gSRhY_4core5sliceSh11starts_withCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #4 {
bb.a:
  %.not = icmp samesign ult i64 %1, %3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i1 [ %i.a, %bb.c ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %0, i64 range(i64 0, -9223372036854775808) %3)
  %i.a = icmp eq i32 %bcmp.i, 0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvMNtCsgxBkk5gSRhY_4core5sliceSh9ends_withCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #4 {
bb.a:
  %.not = icmp samesign ult i64 %1, %3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i1 [ %i.c, %bb.c ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  %i.a = sub nuw nsw i64 %1, %3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %i.b, i64 range(i64 0, -9223372036854775808) %3)
  %i.c = icmp eq i32 %bcmp.i, 0
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 1, 8) i8 @_RNvMNtNtCs4CtJ3uPHEZZ_4jiff5civil4dateNtB2_4Date7weekday(i32 noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = shl i32 %0, 8
  %i.b = ashr i32 %i.a, 24                        ; 3 uses
  %i.c = icmp ult i32 %i.b, 3                     ; 2 uses
  %i.d = or disjoint i32 %i.b, 12
  %.sroa.02.0.i = select i1 %i.c, i32 %i.d, i32 %i.b
  %sext.i = shl i32 %0, 16
  %i.e = ashr exact i32 %sext.i, 16
  %i.f = add nsw i32 %i.e, 32800
  %.neg.i = sext i1 %i.c to i32
  %i.g = add nsw i32 %i.f, %.neg.i                ; 3 uses
  %i.h = ashr i32 %0, 24
  %i.i = udiv i32 %i.g, 100
  %i.j = mul nuw nsw i32 %i.g, 1461
  %i.k = lshr i32 %i.j, 2
  %i.l = udiv i32 %i.g, 400
  %i.m = mul nsw i32 %.sroa.02.0.i, 979
  %i.n = add nsw i32 %i.m, -2919
  %i.o = lshr i32 %i.n, 5
  %i.p = add nsw i32 %i.h, -12699423
  %i.q = sub nuw nsw i32 %i.p, %i.i
  %i.r = add nuw nsw i32 %i.q, %i.l
  %i.s = add nsw i32 %i.r, %i.k
  %i.t = add nsw i32 %i.s, %i.o
  %i.u = mul i32 %i.t, 613566757
  %i.v = add i32 %i.u, -1879048192
  %i.w = lshr i32 %i.v, 29                        ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.b, label %_RNvMs1_NtNtCs5RLZBEkhFyl_9jiff_core5civil4dateNtB5_12UnixEpochDay7weekday.exit, !prof !362

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking9panic_fmt(ptr noundef nonnull @37, ptr noundef nonnull inttoptr (i64 61 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #21
  unreachable

_RNvMs1_NtNtCs5RLZBEkhFyl_9jiff_core5civil4dateNtB5_12UnixEpochDay7weekday.exit: ; preds = %bb.a
  %i.y = trunc nuw nsw i32 %i.w to i8
  ret i8 %i.y
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc range(i48 16777216, -4093640702) i48 @_RNvMNtNtCs5RLZBEkhFyl_9jiff_core5civil4dateNtB2_4Date3new(i16 noundef %0, i8 noundef %1, i8 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = add i16 %0, 9999
  %or.cond = icmp ult i16 %i.a, 19999
  br i1 %or.cond, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.b = add i8 %1, -1
  %or.cond1 = icmp ult i8 %i.b, 12
  br i1 %or.cond1, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.c = icmp slt i8 %2, 1
  br i1 %i.c, label %bb.j, label %bb.d, !prof !8

bb.d:                                             ; preds = %bb.c
  %i.d = icmp samesign ugt i8 %2, 28
  br i1 %i.d, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RNvNtCs5RLZBEkhFyl_9jiff_core5civil13days_in_month.exit, %bb.d
  %.sroa.518.0.insert.ext = zext nneg i8 %2 to i32
  %.sroa.518.0.insert.shift = shl nuw nsw i32 %.sroa.518.0.insert.ext, 24
  %.sroa.417.0.insert.ext = zext nneg i8 %1 to i32
  %.sroa.417.0.insert.shift = shl nuw nsw i32 %.sroa.417.0.insert.ext, 16
  %.sroa.417.0.insert.insert = or disjoint i32 %.sroa.518.0.insert.shift, %.sroa.417.0.insert.shift
  %.sroa.016.0.insert.ext = zext i16 %0 to i32
  %.sroa.016.0.insert.insert = or disjoint i32 %.sroa.417.0.insert.insert, %.sroa.016.0.insert.ext
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.e = icmp eq i8 %1, 2
  br i1 %i.e, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.f = srem i16 %0, 25
  %i.g = icmp eq i16 %i.f, 0
  %..i = select i1 %i.g, i16 15, i16 3
  %i.h = and i16 %..i, %0
  %i.i = icmp eq i16 %i.h, 0
  %spec.select.i = select i1 %i.i, i8 29, i8 28
  br label %_RNvNtCs5RLZBEkhFyl_9jiff_core5civil13days_in_month.exit

bb.h:                                             ; preds = %bb.f
  %i.j = lshr i8 %1, 3
  %i.k = xor i8 %i.j, %1
  %i.l = or i8 %i.k, 30
  br label %_RNvNtCs5RLZBEkhFyl_9jiff_core5civil13days_in_month.exit

_RNvNtCs5RLZBEkhFyl_9jiff_core5civil13days_in_month.exit: ; preds = %bb.g, %bb.h
  %.sroa.0.0.i = phi i8 [ %i.l, %bb.h ], [ %spec.select.i, %bb.g ]
  %i.m = icmp samesign ugt i8 %2, %.sroa.0.0.i
  br i1 %i.m, label %bb.i, label %bb.e

bb.i:                                             ; preds = %_RNvNtCs5RLZBEkhFyl_9jiff_core5civil13days_in_month.exit
  %.sroa.530.0.insert.ext = zext i16 %0 to i32
  %.sroa.530.0.insert.shift = shl nuw i32 %.sroa.530.0.insert.ext, 16
  %.sroa.429.0.insert.ext = zext nneg i8 %1 to i32
  %.sroa.429.0.insert.shift = shl nuw nsw i32 %.sroa.429.0.insert.ext, 8
  %.sroa.429.0.insert.insert = or disjoint i32 %.sroa.429.0.insert.shift, %.sroa.530.0.insert.shift
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.i, %bb.e
  %.sroa.6.0 = phi i32 [ 3327, %bb.b ], [ %.sroa.429.0.insert.insert, %bb.i ], [ %.sroa.016.0.insert.insert, %bb.e ], [ 8447, %bb.a ], [ 767, %bb.c ]
  %.sroa.0.0 = phi i16 [ 1, %bb.b ], [ 1, %bb.i ], [ 0, %bb.e ], [ 1, %bb.a ], [ 1, %bb.c ]
  %.sroa.6.0.insert.ext = zext i32 %.sroa.6.0 to i48
  %.sroa.6.0.insert.shift = shl nuw i48 %.sroa.6.0.insert.ext, 16
  %.sroa.0.0.insert.ext = zext nneg i16 %.sroa.0.0 to i48
  %.sroa.0.0.insert.insert = or disjoint i48 %.sroa.6.0.insert.shift, %.sroa.0.0.insert.ext
  ret i48 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef range(i8 0, 2) i8 @_RNvMNtNtCs5XgW7KoffLW_12opendal_core5types4modeNtB2_9EntryMode9from_path(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #4 {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvMNtCsgxBkk5gSRhY_4core5sliceSh9ends_withCs5XgW7KoffLW_12opendal_core.exit.thread, label %_RNvMNtCsgxBkk5gSRhY_4core5sliceSh9ends_withCs5XgW7KoffLW_12opendal_core.exit

_RNvMNtCsgxBkk5gSRhY_4core5sliceSh9ends_withCs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 %1
  %i.b = getelementptr i8, ptr %i.a, i64 -1
  %rhsc = load i8, ptr %i.b, align 1
  %rhsc.fr = freeze i8 %rhsc
  %i.c = icmp eq i8 %rhsc.fr, 47
  %spec.select = zext i1 %i.c to i8
  br label %_RNvMNtCsgxBkk5gSRhY_4core5sliceSh9ends_withCs5XgW7KoffLW_12opendal_core.exit.thread

_RNvMNtCsgxBkk5gSRhY_4core5sliceSh9ends_withCs5XgW7KoffLW_12opendal_core.exit.thread: ; preds = %bb.a, %_RNvMNtCsgxBkk5gSRhY_4core5sliceSh9ends_withCs5XgW7KoffLW_12opendal_core.exit
  %i.d = phi i8 [ %spec.select, %_RNvMNtCsgxBkk5gSRhY_4core5sliceSh9ends_withCs5XgW7KoffLW_12opendal_core.exit ], [ 0, %bb.a ]
  ret i8 %i.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtCs5XgW7KoffLW_12opendal_core3raw4timeNtB5_9Timestamp11from_second(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [88 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %1, ptr %i.e, align 8
  %i.f = add i64 %1, 377705023201
  %or.cond.i = icmp ult i64 %i.f, 631107230402
  br i1 %or.cond.i, label %bb.c, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @_RNvMs_NtCs4CtJ3uPHEZZ_4jiff5errorNtB4_5Error11jcore_range(i32 7167) #24, !noalias !373 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.g, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.e, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXse_NtNtNtCsgxBkk5gSRhY_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6i54tJFfzR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @25, ptr noundef nonnull %i.a)
          to label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6i54tJFfzR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.i, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  ret void

_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6i54tJFfzR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error3newNtNtCs6i54tJFfzR_5alloc6string6StringEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.c, i8 noundef 0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6i54tJFfzR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5XgW7KoffLW_12opendal_core.exit
  call void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error10set_sourceNtNtCs4CtJ3uPHEZZ_4jiff5error5ErrorEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.c, ptr noundef %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.d

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs4CtJ3uPHEZZ_4jiff5error5ErrorECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.g, %bb.f, %bb.h
  resume { ptr, i32 } %lpad.thr_comm

bb.f:                                             ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6i54tJFfzR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5XgW7KoffLW_12opendal_core.exit, %bb.b
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq ptr %i.g, null
  br i1 %i.j, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs4CtJ3uPHEZZ_4jiff5error5ErrorECs5XgW7KoffLW_12opendal_core.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !374
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.h, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs4CtJ3uPHEZZ_4jiff5error5ErrorECs5XgW7KoffLW_12opendal_core.exit

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtCs4CtJ3uPHEZZ_4jiff5error10ErrorInnerE9drop_slowBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #24
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs4CtJ3uPHEZZ_4jiff5error5ErrorECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtCs5XgW7KoffLW_12opendal_core3raw4timeNtB5_9Timestamp13parse_rfc2822(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [56 x i8], align 8                ; 11 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 2 uses
  %i.t = alloca [88 x i8], align 8                ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %2, ptr %i.w, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !617)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.x = icmp eq i64 %2, 0
  br i1 %i.x, label %bb.b, label %.preheader422.i

bb.b:                                             ; preds = %bb.a
  %i.y = tail call noundef ptr @_RNvXs_NtNtNtCs4CtJ3uPHEZZ_4jiff5error3fmt7rfc2822NtB8_5ErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB4_5ErrorE4from(i24 4) #24, !noalias !618
  br label %_RNvMNtNtCs4CtJ3uPHEZZ_4jiff3fmt7rfc2822NtB2_14DateTimeParser20parse_zoned_internal.exit.thread.i

end_hunk_0
