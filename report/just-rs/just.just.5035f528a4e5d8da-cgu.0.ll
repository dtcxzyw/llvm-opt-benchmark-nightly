Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/just.just.5035f528a4e5d8da-cgu.0?download=true
inline.NumInlined: 1390
inline.NumDeleted: 637
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11matched_arg10MatchedArgECs6SXwsBSuFuw_4just:bb.a

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs6SXwsBSuFuw_4just.exit.i.i.i: ; preds = %bb.f, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i.i
  %i.x = icmp eq i64 %i.m, %.val1.i
  br i1 %i.x, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i, label %.lr.ph.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs6SXwsBSuFuw_4just.exit.i.i.i, %bb.d
  %.val2.i = load i64, ptr %i.h, align 8, !range !23, !alias.scope !2391, !noundef !25 ; 2 uses
  %i.y = icmp eq i64 %.val2.i, 0
  br i1 %i.y, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecIBC_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEEECs6SXwsBSuFuw_4just.exit, label %bb.g

bb.g:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i
  %i.z = mul nuw i64 %.val2.i, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.z, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !2391
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecIBC_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEEECs6SXwsBSuFuw_4just.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecIBC_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEEECs6SXwsBSuFuw_4just.exit: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtBG_14string_literal13StringLiteralEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10expression10ExpressionECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(128) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val2 = load i64, ptr %i.b, align 8, !range !23, !alias.scope !750, !noundef !25 ; 2 uses
  %i.c = icmp eq i64 %.val2, 0
  br i1 %i.c, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralECs6SXwsBSuFuw_4just.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.val3 = load ptr, ptr %i.d, align 8, !nonnull !25, !noundef !25
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %.val2, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2411
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralECs6SXwsBSuFuw_4just.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val = load i64, ptr %i.e, align 8, !range !23, !alias.scope !750, !noundef !25 ; 2 uses
  %i.f = icmp eq i64 %.val, 0
  br i1 %i.f, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralECs6SXwsBSuFuw_4just.exit4, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.val1 = load ptr, ptr %i.g, align 8, !nonnull !25, !noundef !25
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2416
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralECs6SXwsBSuFuw_4just.exit4

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralECs6SXwsBSuFuw_4just.exit4: ; preds = %bb.d, %bb.e
  ret void

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralECs6SXwsBSuFuw_4just.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsaKJjC64KgbL_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs6SXwsBSuFuw_4just(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  tail call void %0(), !inline_history !2421
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !2422
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 25) %4) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2423)
  %i.b = add i64 %2, %1                           ; 2 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !23, !alias.scope !2423, !noundef !25 ; 2 uses
  %i.e = shl nuw i64 %i.d, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 range(i64 0, -1) %i.e)
  %i.f = icmp eq i64 %4, 1
  %.sroa.08.0.i = select i1 %i.f, i64 8, i64 4
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 range(i64 0, -1) %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2423
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.g, align 8, !alias.scope !2423
  call fastcc void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.d, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 25) %4), !noalias !2423
  %i.h = load i64, ptr %i.a, align 8, !range !2426, !noalias !2423, !noundef !25
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !range !2427, !noalias !2423, !noundef !25
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noalias !2423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2423
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.m, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #27
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.j, align 8, !noalias !2423, !nonnull !25, !noundef !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2423
  store ptr %i.n, ptr %i.g, align 8, !alias.scope !2423
  %i.o = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.o)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !2423
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @_RNCINvNtCsaKJjC64KgbL_3std2rt10lang_startuE0Cs6SXwsBSuFuw_4just(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !25, !noundef !25
  tail call fastcc void @_RINvNtNtCsaKJjC64KgbL_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs6SXwsBSuFuw_4just(ptr noundef nonnull %i.a) #31
  ret i32 0
}

; Function Attrs: cold inlinehint noreturn nonlazybind uwtable
define internal fastcc void @_RNCINvNtCsaKJjC64KgbL_3std3env10remove_varReE0Cs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noundef nonnull %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB6_5Debug3fmtCs6SXwsBSuFuw_4just, ptr %.sroa.42.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.d, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs3_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @14, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #27
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %.val = load ptr, ptr %i.c, align 8, !nonnull !25, !noundef !25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = ptrtoint ptr %.val to i64                ; 2 uses
  %i.g = and i64 %i.f, 3
  switch i64 %i.g, label %default.unreachable [
    i64 2, label %bb.g
    i64 3, label %bb.c
    i64 0, label %bb.g
    i64 1, label %bb.d
  ], !prof !44

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.i = and i64 %i.f, 1095216660480
  %i.j = icmp ne i64 %i.i, 1095216660480
  call void @llvm.assume(i1 %i.h)
  call void @llvm.assume(i1 %i.j)
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !alias.scope !2428
  store i8 3, ptr %i.a, align 8, !alias.scope !2428
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.a
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.g:                                             ; preds = %bb.c, %bb.b, %bb.b, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  resume { ptr, i32 } %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @_RNSNvYNCINvNtCsaKJjC64KgbL_3std2rt10lang_startuE0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceuE9call_once6vtableCs6SXwsBSuFuw_4just(ptr nofree noundef readonly captures(none) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !25, !noundef !25
  tail call fastcc void @_RINvNtNtCsaKJjC64KgbL_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs6SXwsBSuFuw_4just(ptr noundef nonnull readonly %i.a) #31, !noalias !2431
  ret i32 0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvCs6SXwsBSuFuw_4just4main() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 12 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [56 x i8], align 8                ; 6 uses
  %i.e = alloca [104 x i8], align 8               ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = alloca [760 x i8], align 8               ; 10 uses
  %.sroa.4.i.i.i.i.i.i.i.i = alloca [16 x i8], align 8 ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 9 uses
  %i.l = alloca [32 x i8], align 8                ; 8 uses
  %i.m = alloca [64 x i8], align 8                ; 12 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [32 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 10 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [24 x i8], align 8                ; 8 uses
  %i.s = alloca [24 x i8], align 8                ; 14 uses
  %i.t = alloca [760 x i8], align 8               ; 15 uses
  %i.u = alloca [56 x i8], align 8                ; 8 uses
  %i.v = alloca [56 x i8], align 8                ; 8 uses
  %i.w = alloca [104 x i8], align 8               ; 10 uses
  %i.x = alloca [552 x i8], align 8               ; 10 uses
  %i.y = alloca [104 x i8], align 8               ; 8 uses
  %i.z = alloca [112 x i8], align 8               ; 8 uses
  %.sroa.6.i = alloca [14 x i8], align 4          ; 6 uses
  %.sroa.851.i = alloca [3 x i8], align 1         ; 5 uses
  %.sroa.9.i = alloca [3 x i8], align 1           ; 5 uses
  %.sroa.10.i = alloca [5 x i8], align 1          ; 5 uses
  %i.aa = alloca [552 x i8], align 8              ; 7 uses
  %i.ab = alloca [552 x i8], align 8              ; 21 uses
  %i.ac = alloca [648 x i8], align 8              ; 7 uses
  %i.ad = alloca [648 x i8], align 8              ; 8 uses
  %i.ae = alloca [8 x i8], align 8                ; 3 uses
  %i.af = alloca [56 x i8], align 8               ; 9 uses
  %i.ag = alloca [24 x i8], align 8               ; 6 uses
  %i.ah = alloca [24 x i8], align 8               ; 6 uses
  %i.ai = alloca [64 x i8], align 8               ; 6 uses
  %i.aj = alloca [16 x i8], align 8               ; 5 uses
  %i.ak = alloca [8 x i8], align 8                ; 5 uses
  %i.al = alloca [24 x i8], align 8               ; 4 uses
  %i.am = alloca [24 x i8], align 8               ; 10 uses
  %i.an = alloca [8 x i8], align 8                ; 5 uses
  %i.ao = alloca [24 x i8], align 8               ; 10 uses
  %i.ap = alloca [760 x i8], align 8              ; 14 uses
  %i.aq = alloca [16 x i8], align 8               ; 5 uses
  %i.ar = alloca [24 x i8], align 8               ; 7 uses
  %i.as = alloca [32 x i8], align 8               ; 7 uses
  %i.at = alloca [24 x i8], align 8               ; 10 uses
  %i.au = alloca [24 x i8], align 8               ; 17 uses
  %i.av = alloca [80 x i8], align 8               ; 26 uses
  %i.aw = alloca [16 x i8], align 8               ; 4 uses
  %i.ax = alloca [24 x i8], align 8               ; 6 uses
  %i.ay = alloca [32 x i8], align 8               ; 8 uses
  %i.az = alloca [32 x i8], align 8               ; 9 uses
  %i.ba = alloca [80 x i8], align 8               ; 8 uses
  %i.bb = alloca [32 x i8], align 8               ; 10 uses
  %i.bc = alloca [24 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  call void @_RNvNtNtNtCsaKJjC64KgbL_3std3sys3env4unix6getenv(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 13)
  %i.bd = load i64, ptr %i.bc, align 8, !range !95, !noundef !25 ; 3 uses
  %.not = icmp eq i64 %i.bd, -1
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.sroa.468.0.copyload = load ptr, ptr %.sroa.468.0..sroa_idx, align 8 ; 4 uses
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %.sroa.569.0.copyload = load i64, ptr %.sroa.569.0..sroa_idx, align 8
  %i.be = icmp eq i64 %.sroa.569.0.copyload, 4
  br i1 %i.be, label %bb.c, label %_RNvXsb_NtNtCsaKJjC64KgbL_3std3ffi6os_strNtB5_8OsStringINtNtCsj6eKBz9Db1c_4core3cmp9PartialEqReE2eq.exit.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.468.0.copyload) ]
  %i.bf = load i32, ptr %.sroa.468.0.copyload, align 1
  %i.bg = icmp ne i32 %i.bf, 1752392034
  %i.bh = zext i1 %i.bg to i32
  %i.bi = icmp eq i32 %i.bh, 0
  br label %_RNvXsb_NtNtCsaKJjC64KgbL_3std3ffi6os_strNtB5_8OsStringINtNtCsj6eKBz9Db1c_4core3cmp9PartialEqReE2eq.exit.i

_RNvXsb_NtNtCsaKJjC64KgbL_3std3ffi6os_strNtB5_8OsStringINtNtCsj6eKBz9Db1c_4core3cmp9PartialEqReE2eq.exit.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i = phi i1 [ %i.bi, %bb.c ], [ false, %bb.b ]
  %i.bj = icmp eq i64 %i.bd, 0
  br i1 %i.bj, label %_RNCNvCs6SXwsBSuFuw_4just4main0B3_.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXsb_NtNtCsaKJjC64KgbL_3std3ffi6os_strNtB5_8OsStringINtNtCsj6eKBz9Db1c_4core3cmp9PartialEqReE2eq.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.468.0.copyload) ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.468.0.copyload, i64 noundef %i.bd, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2434
  br label %_RNCNvCs6SXwsBSuFuw_4just4main0B3_.exit

_RNCNvCs6SXwsBSuFuw_4just4main0B3_.exit:          ; preds = %_RNvXsb_NtNtCsaKJjC64KgbL_3std3ffi6os_strNtB5_8OsStringINtNtCsj6eKBz9Db1c_4core3cmp9PartialEqReE2eq.exit.i, %bb.d
  br i1 %.sroa.0.0.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.a, %_RNCNvCs6SXwsBSuFuw_4just4main0B3_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  br label %bb.h

bb.f:                                             ; preds = %_RNCNvCs6SXwsBSuFuw_4just4main0B3_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @_RNvNtCsaKJjC64KgbL_3std3env7args_os(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bb)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2439)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.val.i12 = load ptr, ptr %i.bk, align 8, !alias.scope !2439, !nonnull !25, !noundef !25 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %.val3.i = load ptr, ptr %i.bl, align 8, !alias.scope !2439, !nonnull !25, !noundef !25 ; 6 uses
  %i.bm = icmp ne ptr %.val3.i, %.val.i12         ; 2 uses
  %..i.i = zext i1 %i.bm to i64                   ; 2 uses
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %.val.i12, i64 %..i.i ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2442)
  br i1 %i.bm, label %.lr.ph.i.i, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCs6SXwsBSuFuw_4just.exit.thread

.lr.ph.i.i:                                       ; preds = %bb.f, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i
  %.sroa.0.011.i.i = phi i64 [ %i.bp, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i ], [ 0, %bb.f ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %.val.i12, i64 %.sroa.0.011.i.i ; 2 uses
  %i.bp = add nuw nsw i64 %.sroa.0.011.i.i, 1     ; 2 uses
  %.val8.i.i = load i64, ptr %i.bo, align 8, !range !23, !alias.scope !2445, !noalias !2439, !noundef !25 ; 2 uses
  %i.bq = icmp eq i64 %.val8.i.i, 0
  br i1 %i.bq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.br = getelementptr i8, ptr %i.bo, i64 8
  %.val9.i.i = load ptr, ptr %i.br, align 8, !alias.scope !2442, !noalias !2439, !nonnull !25, !noundef !25
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i, i64 noundef %.val8.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2448
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i: ; preds = %bb.g, %.lr.ph.i.i
  %i.bs = icmp eq i64 %i.bp, %..i.i
  br i1 %i.bs, label %bb.jy, label %.lr.ph.i.i

bb.h:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std3env6ArgsOsECs6SXwsBSuFuw_4just.exit, %bb.e
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  store i64 -1, ptr %i.ba, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store i64 -1, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  store ptr @26, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  store i64 5, ptr %i.bx, align 8
  store ptr @20, ptr %i.bt, align 8, !captures !2451
  store i64 13, ptr %i.bu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !2452
  invoke void @_RNvNtCsaKJjC64KgbL_3std3env7args_os(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ay)
          to label %bb.j unwind label %bb.i, !noalias !2452

bb.i:                                             ; preds = %bb.h
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !2452
  invoke void @_RNvNtCsaKJjC64KgbL_3std3env11current_dir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ax)
          to label %bb.k unwind label %bb.ek, !noalias !2452

bb.k:                                             ; preds = %bb.j
  %i.bz = load i64, ptr %i.ax, align 8, !range !95, !noalias !2452, !noundef !25 ; 5 uses
  %i.ca = icmp eq i64 %i.bz, -1                   ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.val7.i = load ptr, ptr %i.cb, align 8, !noalias !2452 ; 5 uses
  br i1 %i.ca, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.523.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %.sroa.523.0.copyload.i = load i64, ptr %.sroa.523.0..sroa_idx.i, align 8, !noalias !2452
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !2452
  %i.cc = ptrtoint ptr %.val7.i to i64            ; 2 uses
  %i.cd = and i64 %i.cc, 3
  switch i64 %i.cd, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtNtB4_2io5error5ErrorEECs6SXwsBSuFuw_4just.exit.i
    i64 3, label %bb.n
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtNtB4_2io5error5ErrorEECs6SXwsBSuFuw_4just.exit.i
    i64 1, label %bb.o
  ], !prof !44

default.unreachable:                              ; preds = %bb.ir, %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.ce = icmp ult ptr %.val7.i, inttoptr (i64 188978561024 to ptr)
  %i.cf = and i64 %i.cc, 1095216660480
  %i.cg = icmp ne i64 %i.cf, 1095216660480
  call void @llvm.assume(i1 %i.ce)
  call void @llvm.assume(i1 %i.cg)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtNtB4_2io5error5ErrorEECs6SXwsBSuFuw_4just.exit.i

bb.o:                                             ; preds = %bb.m
  %i.ch = getelementptr i8, ptr %.val7.i, i64 -1  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ch) ]
  %i.ci = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  store ptr %i.ch, ptr %i.ci, align 8, !alias.scope !2455, !noalias !2452
  store i8 3, ptr %i.aw, align 8, !alias.scope !2455, !noalias !2452
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ci)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtNtB4_2io5error5ErrorEECs6SXwsBSuFuw_4just.exit.i unwind label %bb.ek, !noalias !2452

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtNtB4_2io5error5ErrorEECs6SXwsBSuFuw_4just.exit.i: ; preds = %bb.o, %bb.n, %bb.m, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !2452
  br label %bb.p

bb.p:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtNtB4_2io5error5ErrorEECs6SXwsBSuFuw_4just.exit.i, %bb.l
  %.sroa.01.0.i = phi ptr [ null, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtNtB4_2io5error5ErrorEECs6SXwsBSuFuw_4just.exit.i ], [ %.val7.i, %bb.l ]
  %.sroa.5.0.i = phi i64 [ undef, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtNtB4_2io5error5ErrorEECs6SXwsBSuFuw_4just.exit.i ], [ %.sroa.523.0.copyload.i, %bb.l ] ; 2 uses
  %.sroa.7.038.i = phi ptr [ undef, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtNtB4_2io5error5ErrorEECs6SXwsBSuFuw_4just.exit.i ], [ %.val7.i, %bb.l ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !2452
  %.sroa.020.0.copyload.i = load ptr, ptr %i.ay, align 8, !noalias !2452 ; 6 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2452, !nonnull !25, !noundef !25 ; 6 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !2452 ; 7 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !2452, !nonnull !25, !noundef !25 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !2458
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.av, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.ba, i64 80, i1 false), !noalias !2464
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !2458
  call void @llvm.experimental.noalias.scope.decl(metadata !2465)
  call void @llvm.experimental.noalias.scope.decl(metadata !2468)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !2471
  %i.cj = icmp eq ptr %.sroa.4.0.copyload.i, %.sroa.6.0.copyload.i
  br i1 %i.cj, label %bb.q, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i

_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i: ; preds = %bb.p
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i, i64 24 ; 7 uses
  %.sroa.0.0.copyload1.i.i.i.i.i = load i64, ptr %.sroa.4.0.copyload.i, align 8, !noalias !2474 ; 4 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i, label %bb.q, label %bb.v

bb.q:                                             ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i, %bb.p
end_hunk_0
begin_hunk_1_@_RNvCs6SXwsBSuFuw_4just4main:bb.a

.lr.ph.i.i.i90.i.i.i:                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit97.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i94.i.i.i
  %.sroa.0.011.i.i.i91.i.i.i = phi i64 [ %i.ko, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i94.i.i.i ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit97.i.i.i ] ; 2 uses
  %i.kn = getelementptr inbounds nuw [24 x i8], ptr %.val4.i88.i.i.i, i64 %.sroa.0.011.i.i.i91.i.i.i ; 2 uses
  %i.ko = add nuw nsw i64 %.sroa.0.011.i.i.i91.i.i.i, 1 ; 2 uses
  %.val8.i.i.i92.i.i.i = load i64, ptr %i.kn, align 8, !range !23, !alias.scope !2777, !noalias !2780, !noundef !25 ; 2 uses
  %i.kp = icmp eq i64 %.val8.i.i.i92.i.i.i, 0
  br i1 %i.kp, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i94.i.i.i, label %bb.dq

bb.dq:                                            ; preds = %.lr.ph.i.i.i90.i.i.i
  %i.kq = getelementptr i8, ptr %i.kn, i64 8
  %.val9.i.i.i93.i.i.i = load ptr, ptr %i.kq, align 8, !alias.scope !2774, !noalias !2780, !nonnull !25, !noundef !25
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i93.i.i.i, i64 noundef %.val8.i.i.i92.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2781
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i94.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i94.i.i.i: ; preds = %bb.dq, %.lr.ph.i.i.i90.i.i.i
  %i.kr = icmp eq i64 %i.ko, %.val5.i89.i.i.i
  br i1 %i.kr, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i.i, label %.lr.ph.i.i.i90.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i94.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit97.i.i.i
  %.val.i95.i.i.i = load i64, ptr %i.au, align 8, !range !23, !alias.scope !2773, !noalias !2641, !noundef !25 ; 2 uses
  %i.ks = icmp eq i64 %.val.i95.i.i.i, 0
  br i1 %i.ks, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs6SXwsBSuFuw_4just.exit.i.i.i, label %bb.dr

bb.dr:                                            ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i.i
  %i.kt = mul nuw i64 %.val.i95.i.i.i, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i88.i.i.i, i64 noundef %i.kt, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !2780
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs6SXwsBSuFuw_4just.exit.i.i.i

bb.ds:                                            ; preds = %bb.ci, %bb.ch
  %i.ku = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i, 0
  br i1 %i.ku, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit96.i.i.i, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.i.sroa.0.0.copyload.i.i.i) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.i.sroa.0.0.copyload.i.i.i, i64 noundef %.sroa.0.0.copyload1.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2784
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit96.i.i.i

bb.du:                                            ; preds = %bb.ar, %_RNvXsb_NtNtCsaKJjC64KgbL_3std3ffi6os_strNtB5_8OsStringINtNtCsj6eKBz9Db1c_4core3cmp9PartialEqReE2eq.exit.i.i.i, %bb.aj
  %.sroa.1719.5.i = phi ptr [ undef, %bb.aj ], [ undef, %_RNvXsb_NtNtCsaKJjC64KgbL_3std3ffi6os_strNtB5_8OsStringINtNtCsj6eKBz9Db1c_4core3cmp9PartialEqReE2eq.exit.i.i.i ], [ %i.fj, %bb.ar ] ; 2 uses
  %storemerge.i.i.i = phi i1 [ false, %bb.aj ], [ false, %_RNvXsb_NtNtCsaKJjC64KgbL_3std3ffi6os_strNtB5_8OsStringINtNtCsj6eKBz9Db1c_4core3cmp9PartialEqReE2eq.exit.i.i.i ], [ true, %bb.ar ] ; 2 uses
  %i.kv = icmp eq i64 %i.ey, 0
  br i1 %i.kv, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit97.i.i.i, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload.i.i.i) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.0.copyload.i.i.i, i64 noundef %i.ey, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2787
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit97.i.i.i

bb.dw:                                            ; preds = %.thread.i.i.i, %bb.ai
  %.pn35112.i.i.i = phi { ptr, i32 } [ %i.ex, %.thread.i.i.i ], [ %.pn33.i.i.i, %bb.ai ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2790)
  %i.kw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.val4.i.i.i = load ptr, ptr %i.kw, align 8, !alias.scope !2790, !noalias !2793, !nonnull !25, !noundef !25 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.val5.i.i.i = load i64, ptr %i.kx, align 8, !alias.scope !2790, !noalias !2793, !noundef !25 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2794), !noalias !2797
  %i.ky = icmp eq i64 %.val5.i.i.i, 0
  br i1 %i.ky, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i, label %.lr.ph.i.i.i7.i.i

.lr.ph.i.i.i7.i.i:                                ; preds = %bb.dw, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i = phi i64 [ %i.la, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i ], [ 0, %bb.dw ] ; 2 uses
  %i.kz = getelementptr inbounds nuw [24 x i8], ptr %.val4.i.i.i, i64 %.sroa.0.011.i.i.i.i.i ; 2 uses
  %i.la = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i = load i64, ptr %i.kz, align 8, !range !23, !alias.scope !2798, !noalias !2801, !noundef !25 ; 2 uses
  %i.lb = icmp eq i64 %.val8.i.i.i.i.i, 0
  br i1 %i.lb, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i, label %bb.dx

bb.dx:                                            ; preds = %.lr.ph.i.i.i7.i.i
  %i.lc = getelementptr i8, ptr %i.kz, i64 8
  %.val9.i.i.i.i.i = load ptr, ptr %i.lc, align 8, !alias.scope !2794, !noalias !2801, !nonnull !25, !noundef !25
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2802
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i: ; preds = %bb.dx, %.lr.ph.i.i.i7.i.i
  %i.ld = icmp eq i64 %i.la, %.val5.i.i.i
  br i1 %i.ld, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i, label %.lr.ph.i.i.i7.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i, %bb.dw
  %.val.i.i.i = load i64, ptr %i.au, align 8, !range !23, !alias.scope !2790, !noalias !2793, !noundef !25 ; 2 uses
  %i.le = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.le, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs6SXwsBSuFuw_4just.exit.i.i, label %bb.dy

bb.dy:                                            ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i
  %i.lf = mul nuw i64 %.val.i.i.i, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i, i64 noundef %i.lf, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !2801
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs6SXwsBSuFuw_4just.exit.i.i

.body.i.i:                                        ; preds = %bb.ah, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i
  %.pn16.i.i.i.i = phi { ptr, i32 } [ %i.ee, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i ], [ %i.cz, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i ], [ %i.cz, %bb.ah ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2805)
  %.val4.i.i = load i64, ptr %i.av, align 8, !range !95, !alias.scope !2805, !noalias !2808, !noundef !25 ; 2 uses
  %i.lg = icmp sgt i64 %.val4.i.i, 0
  br i1 %i.lg, label %bb.dz, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit.i.i

bb.dz:                                            ; preds = %.body.i.i
  %i.lh = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.val5.i.i = load ptr, ptr %i.lh, align 8, !alias.scope !2805, !noalias !2808, !nonnull !25, !noundef !25
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i, i64 noundef %.val4.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2809
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit.i.i: ; preds = %bb.dz, %.body.i.i
  %i.li = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %.val.i.i = load i64, ptr %i.li, align 8, !range !95, !alias.scope !2805, !noalias !2808, !noundef !25 ; 2 uses
  %i.lj = icmp sgt i64 %.val.i.i, 0
  br i1 %i.lj, label %bb.ea, label %.body.i

bb.ea:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit.i.i
  %i.lk = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %.val1.i.i = load ptr, ptr %i.lk, align 8, !alias.scope !2805, !noalias !2808, !nonnull !25, !noundef !25
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2814
  br label %.body.i

bb.eb:                                            ; preds = %bb.ei
  %i.ll = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.eh, %bb.eb, %bb.ea, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit.i.i, %bb.di, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %.pn16.i.i.i.i, %bb.ea ], [ %.pn37.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit.i.i.i ], [ %.pn37.i.i.i, %bb.di ], [ %.pn16.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit.i.i ], [ %i.ll, %bb.eb ], [ %i.ln, %bb.eh ] ; 2 uses
  %i.lm = icmp sgt i64 %i.bz, 0
  br i1 %i.lm, label %bb.ec, label %common.resume

bb.ec:                                            ; preds = %.body.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.038.i) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.038.i, i64 noundef %i.bz, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2819
  br label %common.resume

bb.ed:                                            ; preds = %bb.dp, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !2458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !2458
  br i1 %.sroa.018.2.i, label %bb.ee, label %.critedge.i

bb.ee:                                            ; preds = %bb.ed
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1719.2.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !2452
  store ptr %.sroa.1719.2.i, ptr %i.ae, align 8, !noalias !2822
  invoke fastcc void @_RNvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB2_5Error4exitCs6SXwsBSuFuw_4just(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae) #27
          to label %bb.eg unwind label %bb.ef, !noalias !2452

bb.ef:                                            ; preds = %bb.ee
  %i.ln = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs2FJGJNE9lTN_12clap_builder5error10ErrorInnerECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(256) %.sroa.1719.2.i)
          to label %bb.eh unwind label %.body.i12.i, !noalias !2452

.body.i12.i:                                      ; preds = %bb.ef
  %i.lo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %.sroa.1719.2.i, i64 noundef 256, i64 noundef 8) #26, !noalias !2452
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !2452
  unreachable

bb.eg:                                            ; preds = %bb.ee
  unreachable

bb.eh:                                            ; preds = %bb.ef
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %.sroa.1719.2.i, i64 noundef 256, i64 noundef 8) #26, !noalias !2452
  br label %.body.i

.critedge.i:                                      ; preds = %bb.ed
  %i.lp = icmp sgt i64 %i.bz, 0
  br i1 %i.lp, label %.critedge.thread.i, label %_RNvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB4_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE8completeCs6SXwsBSuFuw_4just.exit

.critedge.thread.i:                               ; preds = %.critedge.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.038.i) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.038.i, i64 noundef %i.bz, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2825
  br label %_RNvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB4_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE8completeCs6SXwsBSuFuw_4just.exit

bb.ei:                                            ; preds = %bb.dg, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit81.i.i.i
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgYJ0xFPoqCG_13clap_complete3env11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(80) %i.av), !noalias !2601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !2458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !2458
  invoke void @_RNvNtCsaKJjC64KgbL_3std7process4exit(i32 noundef 0) #27
          to label %bb.ej unwind label %bb.eb, !noalias !2452

bb.ej:                                            ; preds = %bb.ei
  unreachable

bb.ek:                                            ; preds = %bb.o, %bb.j
  %i.lq = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std3env6ArgsOsECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ay) #28, !noalias !2452
  br label %bb.el

common.resume:                                    ; preds = %.body.i.i.i15, %.body6.i.i, %bb.in, %bb.ip, %bb.iv, %.body.i33, %bb.jx, %.body.i, %bb.ec, %bb.el
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %.pn.pn.ph.i, %bb.el ], [ %eh.lpad-body.i, %bb.ec ], [ %i.xv, %bb.ip ], [ %eh.lpad-body7.i.i, %.body6.i.i ], [ %eh.lpad-body.i.i.i16, %.body.i.i.i15 ], [ %lpad.thr_comm.split-lp.i.i, %bb.in ], [ %i.yf, %bb.iv ], [ %eh.lpad-body.i34, %.body.i33 ], [ %i.zt, %bb.jx ]
  resume { ptr, i32 } %common.resume.op

bb.el:                                            ; preds = %bb.ek, %bb.i
  %.pn.pn.ph.i = phi { ptr, i32 } [ %i.by, %bb.i ], [ %i.lq, %bb.ek ]
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgYJ0xFPoqCG_13clap_complete3env11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(80) %i.ba) #28
  br label %common.resume

_RNvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB4_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE8completeCs6SXwsBSuFuw_4just.exit: ; preds = %.critedge.i, %.critedge.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !2452
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @_RNvNtCsaKJjC64KgbL_3std3env7args_os(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.az)
  call void @llvm.experimental.noalias.scope.decl(metadata !2828)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.851.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !2828
  call void @llvm.experimental.noalias.scope.decl(metadata !2831)
  call void @llvm.experimental.noalias.scope.decl(metadata !2834)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !2836
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !2836
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !2836
  %.sink.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %.sink.i.sroa.gep83.i = getelementptr inbounds nuw i8, ptr %i.w, i64 44 ; 2 uses
  invoke void @_RNvXs2_NtCskXtk6F4WjxZ_4just9argumentsNtB5_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7command(ptr noalias nofree noundef nonnull sret([760 x i8]) align 8 captures(address) dereferenceable(760) %i.t)
          to label %bb.em unwind label %bb.in, !noalias !2836

bb.em:                                            ; preds = %_RNvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB4_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE8completeCs6SXwsBSuFuw_4just.exit
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.az, align 8, !alias.scope !2837, !noalias !2831 ; 6 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2837, !noalias !2831, !nonnull !25, !noundef !25 ; 6 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2837, !noalias !2831 ; 7 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %.sroa.6.0.copyload.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !2837, !noalias !2831, !nonnull !25, !noundef !25 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2838)
  call void @llvm.experimental.noalias.scope.decl(metadata !2841)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !2844
  call void @llvm.experimental.noalias.scope.decl(metadata !2849)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2852
  %i.lr = icmp eq ptr %.sroa.4.0.copyload.i.i, %.sroa.6.0.copyload.i.i
  br i1 %i.lr, label %bb.en, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i.i

_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i.i: ; preds = %bb.em
  %i.ls = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i.i, i64 24 ; 7 uses
  %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0.copyload.i.i, align 8, !noalias !2860 ; 4 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.en, label %bb.es

bb.en:                                            ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i.i, %bb.em
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ls, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i.i ], [ %.sroa.4.0.copyload.i.i, %bb.em ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2852
  %i.lt = ptrtoint ptr %.sroa.6.0.copyload.i.i to i64
  %i.lu = ptrtoint ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.lv = sub nuw i64 %i.lt, %i.lu
  %i.lw = udiv exact i64 %i.lv, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !2868)
  %i.lx = icmp eq ptr %.sroa.6.0.copyload.i.i, %.val.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.lx, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.en, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.lz, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.en ] ; 2 uses
  %i.ly = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.lz = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ly, align 8, !range !23, !alias.scope !2871, !noalias !2874, !noundef !25 ; 2 uses
  %i.ma = icmp eq i64 %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ma, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.eo

bb.eo:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mb = getelementptr i8, ptr %i.ly, i64 8
  %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.mb, align 8, !alias.scope !2868, !noalias !2874, !nonnull !25, !noundef !25
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2885
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.eo, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mc = icmp eq i64 %i.lz, %i.lw
  br i1 %i.mc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.en
  %i.md = icmp eq i64 %.sroa.5.0.copyload.i.i, 0
  br i1 %i.md, label %bb.fi, label %bb.ep

bb.ep:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i) ]
  %i.me = mul nuw i64 %.sroa.5.0.copyload.i.i, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.copyload.i.i, i64 noundef %i.me, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !2874
  br label %bb.fi

bb.eq:                                            ; preds = %bb.eu
  %i.mf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mg = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i, 0
  br i1 %i.mg, label %bb.fc, label %bb.er

bb.er:                                            ; preds = %bb.eq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i.i) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2888
  br label %bb.fc

bb.es:                                            ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i.i
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i.i, i64 8
  %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i.i, align 8, !noalias !2891 ; 3 uses
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i.i, i64 16
  %.sroa.6.sroa.5.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !2891
  %i.mh = ptrtoint ptr %.sroa.6.0.copyload.i.i to i64 ; 3 uses
  %i.mi = ptrtoint ptr %i.ls to i64
  %i.mj = sub nuw i64 %i.mh, %i.mi                ; 2 uses
  %i.mk = udiv exact i64 %i.mj, 24                ; 2 uses
  %i.ml = call i64 @llvm.umax.i64(i64 %i.mk, i64 3) ; 2 uses
  %..i.i.i.i.i.i.i.i = add nuw nsw i64 %i.ml, 1   ; 2 uses
  %i.mm = mul i64 %..i.i.i.i.i.i.i.i, 24          ; 3 uses
  %or.cond.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.mj, 9223372036854775776
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.eu, label %bb.et, !prof !2508

bb.et:                                            ; preds = %bb.es
  %i.mn = icmp eq i64 %i.mm, 0
  br i1 %i.mn, label %bb.ev, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.et
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !2892
  %i.mo = call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.mm, i64 noundef range(i64 1, 9) 8) #26, !noalias !2892 ; 2 uses
  %i.mp = icmp eq ptr %i.mo, null
  br i1 %i.mp, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i, %bb.es
  %.sroa.10.0.ph.i.i.i.i.i.i.i.i = phi i64 [ %i.mm, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i ], [ undef, %bb.es ]
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i = phi i64 [ 8, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i ], [ 0, %bb.es ]
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i, i64 %.sroa.10.0.ph.i.i.i.i.i.i.i.i) #27
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.eq, !noalias !2852

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.eu
  unreachable

bb.ev:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i, %bb.et
  %.sroa.10.0.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.et ], [ %i.mo, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.4.0.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.et ], [ %..i.i.i.i.i.i.i.i, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.mq = icmp samesign ult i64 %i.ml, %.sroa.4.0.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.mq)
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i, ptr %.sroa.10.0.i.i.i.i.i.i.i.i, align 8, !noalias !2852
  %.sroa.412.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i.i.i.i, i64 8
  store ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.412.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !2852
  %.sroa.513.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i.i.i.i, i64 16
  store i64 %.sroa.6.sroa.5.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.513.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !2852
  store i64 %.sroa.4.0.i.i.i.i.i.i.i.i, ptr %i.p, align 8, !noalias !2852
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !2852
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !2852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2852
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.o, align 8, !noalias !2895
  %.sroa.69.0..sroa_idx10.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.8.0..sroa_idx12.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %.sroa.5.0.copyload.i.i, ptr %.sroa.8.0..sroa_idx12.i.i.i.i.i, align 8, !noalias !2895
  %.sroa.10.0..sroa_idx15.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %.sroa.6.0.copyload.i.i, ptr %.sroa.10.0..sroa_idx15.i.i.i.i.i, align 8, !noalias !2895
  call void @llvm.experimental.noalias.scope.decl(metadata !2896)
  call void @llvm.experimental.noalias.scope.decl(metadata !2899)
  call void @llvm.experimental.noalias.scope.decl(metadata !2901)
  call void @llvm.experimental.noalias.scope.decl(metadata !2904)
  %i.mr = icmp eq ptr %i.ls, %.sroa.6.0.copyload.i.i
  br i1 %i.mr, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i.i.i.i.i, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i.i.i.i

_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ev, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i
  %i.ms = phi ptr [ %i.ng, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i ], [ %.sroa.10.0.i.i.i.i.i.i.i.i, %bb.ev ]
  %i.mt = phi i64 [ %i.ni, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i ], [ 1, %bb.ev ] ; 6 uses
  %.val41920.i.i.i.i.i.i.i.i.i = phi ptr [ %i.mu, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i ], [ %i.ls, %bb.ev ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2906)
  call void @llvm.experimental.noalias.scope.decl(metadata !2909)
  call void @llvm.experimental.noalias.scope.decl(metadata !2912)
  %i.mu = getelementptr inbounds nuw i8, ptr %.val41920.i.i.i.i.i.i.i.i.i, i64 24 ; 6 uses
  %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.val41920.i.i.i.i.i.i.i.i.i, align 8, !noalias !2915 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.loopexit.i.i.i.i.i, label %bb.ew

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i40: ; preds = %bb.fa, %bb.ez
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapNtNtCsaKJjC64KgbL_3std3env6ArgsOsNCNvXs_CsgIMNuTmDvdf_8clap_lexNtB1N_7RawArgsINtNtB4_7convert4FromB19_E4from0EECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.o) #28, !noalias !2917
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #28, !noalias !2852
  br label %.body.i.i.i15

bb.ew:                                            ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val41920.i.i.i.i.i.i.i.i.i, i64 8
  %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !2918 ; 3 uses
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val41920.i.i.i.i.i.i.i.i.i, i64 16
  %.sroa.6.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !2918
  %i.mv = icmp samesign ult i64 %i.mt, 384307168202282326
  call void @llvm.assume(i1 %i.mv)
  %i.mw = load i64, ptr %i.p, align 8, !range !23, !alias.scope !2919, !noalias !2920, !noundef !25
  %i.mx = icmp eq i64 %i.mt, %i.mw
  br i1 %i.mx, label %bb.fb, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i

_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.loopexit.i.i.i.i.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.6.0.copyload524.i.i.i.i.i = phi i64 [ %i.mt, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.ni, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i ]
  %.pre.i.i.i.i.i = ptrtoint ptr %i.mu to i64
  %.pre26.i.i.i.i.i = sub nuw i64 %i.mh, %.pre.i.i.i.i.i
  %.pre28.i.i.i.i.i = udiv exact i64 %.pre26.i.i.i.i.i, 24
  br label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i.i.i.i.i

_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.loopexit.i.i.i.i.i, %bb.ev
  %.pre-phi29.i.i.i.i.i = phi i64 [ %.pre28.i.i.i.i.i, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.loopexit.i.i.i.i.i ], [ 0, %bb.ev ]
  %.sroa.6.0.copyload5.i.i.i.i.i = phi i64 [ %.sroa.6.0.copyload524.i.i.i.i.i, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.loopexit.i.i.i.i.i ], [ 1, %bb.ev ]
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.mu, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.loopexit.i.i.i.i.i ], [ %i.ls, %bb.ev ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2921)
  %i.my = icmp eq ptr %.sroa.6.0.copyload.i.i, %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.my, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.na, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.mz = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.na = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.mz, align 8, !range !23, !alias.scope !2924, !noalias !2927, !noundef !25 ; 2 uses
  %i.nb = icmp eq i64 %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.nb, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ex

bb.ex:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
end_hunk_1
begin_hunk_2_@_RNvCs6SXwsBSuFuw_4just4main:bb.a
  %lpad.thr_comm.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val10.i.i.i.i = load i64, ptr %i.i, align 8, !range !95, !noalias !3210, !noundef !25 ; 2 uses
  %i.xm = icmp sgt i64 %.val10.i.i.i.i, 0
  br i1 %i.xm, label %bb.if, label %.body.i3.i.i

bb.if:                                            ; preds = %bb.ie
  %i.xn = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.val11.i.i.i.i = load ptr, ptr %i.xn, align 8, !noalias !3210, !nonnull !25, !noundef !25
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val11.i.i.i.i, i64 noundef %.val10.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3219
  br label %.body.i3.i.i

bb.ig:                                            ; preds = %bb.ih
  %i.xo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !2836
  unreachable

bb.ih:                                            ; preds = %.thread25.i.i.i.i, %.thread.i.i.i.i
  %.pn21.i.i.i.i = phi { ptr, i32 } [ %i.xg, %.thread.i.i.i.i ], [ %lpad.thr_comm27.i.i.i.i, %.thread25.i.i.i.i ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs2FJGJNE9lTN_12clap_builder5error5ErrorECs6SXwsBSuFuw_4just(ptr nonnull align 8 %i.xf) #28
          to label %.body.i3.i.i unwind label %bb.ig, !noalias !2836

bb.ii:                                            ; preds = %bb.id
  %i.xp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i3.i.i

.body.i3.i.i:                                     ; preds = %bb.ii, %bb.ih, %bb.if, %bb.ie
  %eh.lpad-body.i4.i.i = phi { ptr, i32 } [ %i.xp, %bb.ii ], [ %.pn21.i.i.i.i, %bb.ih ], [ %lpad.thr_comm.split-lp.i.i.i.i, %bb.if ], [ %lpad.thr_comm.split-lp.i.i.i.i, %bb.ie ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(760) %i.j) #28
          to label %.body6.i.i unwind label %bb.ik, !noalias !2836

bb.ij:                                            ; preds = %bb.id, %bb.ic, %bb.ib
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3210
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(760) %i.j)
          to label %_RINvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive6Parser14try_parse_fromNtNtCsaKJjC64KgbL_3std3env6ArgsOsNtNtNtB1O_3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i unwind label %bb.ht, !noalias !2836

bb.ik:                                            ; preds = %bb.il, %.body.i3.i.i
  %i.xq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !2836
  unreachable

bb.il:                                            ; preds = %bb.hv
  %i.xr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs2FJGJNE9lTN_12clap_builder5error5ErrorECs6SXwsBSuFuw_4just(ptr nonnull align 8 %i.xf) #28
          to label %.body6.i.i unwind label %bb.ik, !noalias !2836

bb.im:                                            ; preds = %.body6.i.i
  %i.xs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !2836
  unreachable

bb.in:                                            ; preds = %_RNvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB4_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE8completeCs6SXwsBSuFuw_4just.exit
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std3env6ArgsOsECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.az) #28, !noalias !2831
  br label %common.resume

_RINvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive6Parser14try_parse_fromNtNtCsaKJjC64KgbL_3std3env6ArgsOsNtNtNtB1O_3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i: ; preds = %bb.ij
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3205
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches10ArgMatchesECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(56) %i.v), !noalias !2836
  br label %bb.io

bb.io:                                            ; preds = %_RINvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive6Parser14try_parse_fromNtNtCsaKJjC64KgbL_3std3env6ArgsOsNtNtNtB1O_3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i, %_RINvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive6Parser14try_parse_fromNtNtCsaKJjC64KgbL_3std3env6ArgsOsNtNtNtB1O_3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.thread.i
  %i.xt = phi ptr [ %i.xa, %_RINvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive6Parser14try_parse_fromNtNtCsaKJjC64KgbL_3std3env6ArgsOsNtNtNtB1O_3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.thread.i ], [ %i.xf, %_RINvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive6Parser14try_parse_fromNtNtCsaKJjC64KgbL_3std3env6ArgsOsNtNtNtB1O_3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2836
  call void @llvm.experimental.noalias.scope.decl(metadata !3224)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2828
  store ptr %i.xt, ptr %i.g, align 8, !noalias !3227
  %i.xu = invoke fastcc noundef ptr @_RNvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB2_5Error5printCs6SXwsBSuFuw_4just(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g)
          to label %bb.iq unwind label %bb.ip, !noalias !2828 ; 4 uses

bb.ip:                                            ; preds = %bb.it, %bb.io
  %i.xv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs2FJGJNE9lTN_12clap_builder5error5ErrorECs6SXwsBSuFuw_4just(ptr nonnull align 8 %i.xt) #28
          to label %common.resume unwind label %bb.iw, !noalias !2828

bb.iq:                                            ; preds = %bb.io
  %.not.i.i = icmp eq ptr %i.xu, null
  br i1 %.not.i.i, label %bb.iu, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3227
  %i.xw = ptrtoint ptr %i.xu to i64               ; 2 uses
  %i.xx = and i64 %i.xw, 3
  switch i64 %i.xx, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs6SXwsBSuFuw_4just.exit.i.i
    i64 3, label %bb.is
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs6SXwsBSuFuw_4just.exit.i.i
    i64 1, label %bb.it
  ], !prof !44

bb.is:                                            ; preds = %bb.ir
  %i.xy = icmp ult ptr %i.xu, inttoptr (i64 188978561024 to ptr)
  %i.xz = and i64 %i.xw, 1095216660480
  %i.ya = icmp ne i64 %i.xz, 1095216660480
  call void @llvm.assume(i1 %i.xy)
  call void @llvm.assume(i1 %i.ya)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs6SXwsBSuFuw_4just.exit.i.i

bb.it:                                            ; preds = %bb.ir
  %i.yb = getelementptr i8, ptr %i.xu, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.yb) ]
  %i.yc = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.yb, ptr %i.yc, align 8, !alias.scope !3228, !noalias !3227
  store i8 3, ptr %i.f, align 8, !alias.scope !3228, !noalias !3227
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.yc)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs6SXwsBSuFuw_4just.exit.i.i unwind label %bb.ip, !noalias !2828

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs6SXwsBSuFuw_4just.exit.i.i: ; preds = %bb.it, %bb.is, %bb.ir, %bb.ir
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3227
  br label %bb.iu

bb.iu:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs6SXwsBSuFuw_4just.exit.i.i, %bb.iq
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xt, i64 249
  %i.ye = load i8, ptr %i.yd, align 1, !range !3231, !alias.scope !3224, !noalias !2828, !noundef !25
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs2FJGJNE9lTN_12clap_builder5error10ErrorInnerECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(256) %i.xt)
          to label %_RINvNtCskXtk6F4WjxZ_4just3run3runNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBB_3env6ArgsOsECs6SXwsBSuFuw_4just.exit.thread unwind label %bb.iv, !noalias !2828

bb.iv:                                            ; preds = %bb.iu
  %i.yf = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.xt, i64 noundef 256, i64 noundef 8) #26, !noalias !2828
  br label %common.resume

bb.iw:                                            ; preds = %bb.ip
  %i.yg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !2828
  unreachable

_RINvNtCskXtk6F4WjxZ_4just3run3runNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBB_3env6ArgsOsECs6SXwsBSuFuw_4just.exit.thread: ; preds = %bb.iu
  %i.yh = and i8 %i.ye, 29
  %switch.selectcmp.i.i = icmp eq i8 %i.yh, 12
  %i.yi = select i1 %switch.selectcmp.i.i, i32 0, i32 2
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.xt, i64 noundef 256, i64 noundef 8) #26, !noalias !2828
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2828
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !2828
  br label %bb.kc

bb.ix:                                            ; preds = %bb.hu
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches10ArgMatchesECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(56) %i.v), !noalias !2836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2836
  %.sroa.429.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.429.0.copyload.pre.i = load i32, ptr %.sroa.429.0..sroa_idx.phi.trans.insert.i, align 8, !noalias !2828
  %.sroa.5.0..sroa_idx.i32 = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %.sroa.8.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(636) %.sroa.8.0..sroa_idx5.i, ptr noundef nonnull align 4 dereferenceable(636) %.sroa.5.0..sroa_idx.i32, i64 636, i1 false), !noalias !2828
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !2828
  store i64 %i.xc, ptr %i.ac, align 8, !noalias !2828
  %.sroa.6.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i32 %.sroa.429.0.copyload.pre.i, ptr %.sroa.6.0..sroa_idx3.i, align 8, !noalias !2828
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !2828
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !2828
  call void @_RNvMNtCskXtk6F4WjxZ_4just6configNtB2_6Config14from_arguments(ptr noalias nofree noundef nonnull sret([552 x i8]) align 8 captures(none) dereferenceable(552) %i.aa, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(648) %i.ac), !noalias !2828
  %i.yj = load i64, ptr %i.aa, align 8, !range !95, !noalias !2828, !noundef !25
  %i.yk = icmp eq i64 %i.yj, -1
  br i1 %i.yk, label %.thread.i, label %bb.iy

.thread.i:                                        ; preds = %bb.ix
  %i.yl = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.472.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.472.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(64) %i.yl, i64 64, i1 false), !noalias !2828
  %i.ym = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 27, ptr %i.ym, align 8, !noalias !2828
  store i64 -1, ptr %i.ab, align 8, !noalias !2828
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !2828
  br label %.thread92.i

bb.iy:                                            ; preds = %bb.ix
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(552) %i.ab, ptr noundef nonnull align 8 dereferenceable(552) %i.aa, i64 552, i1 false), !noalias !2828
  %.pre.i = load i64, ptr %i.ab, align 8, !noalias !2828 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !2828
  %i.yn = icmp eq i64 %.pre.i, -1
  br i1 %i.yn, label %.thread92.i, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  call void @llvm.experimental.noalias.scope.decl(metadata !3232)
  %.sroa.475.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 440
  %.sroa.475.0.copyload.i = load i32, ptr %.sroa.475.0..sroa_idx.i, align 8, !alias.scope !3235, !noalias !2828 ; 2 uses
  %i.yo = icmp eq i32 %.sroa.475.0.copyload.i, -1
  br i1 %i.yo, label %.thread92.i, label %bb.ja

.thread92.i:                                      ; preds = %bb.iz, %bb.iy, %.thread.i
  %i.yp = phi i1 [ true, %.thread.i ], [ true, %bb.iy ], [ false, %bb.iz ]
  %.sroa.016.0.copyload153.i = phi i64 [ -1, %.thread.i ], [ -1, %bb.iy ], [ %.pre.i, %bb.iz ]
  %.sroa.6.i.4.i.4.i.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6.i, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %.sroa.6.i.4.i.4.i.4..sroa_idx, i8 0, i64 10, i1 false), !noalias !2828
  br label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultTNtNtCskXtk6F4WjxZ_4just5color5ColorNtNtBM_9verbosity9VerbosityERNtNtBM_5error5ErrorE17unwrap_or_defaultCs6SXwsBSuFuw_4just.exit.i

bb.ja:                                            ; preds = %bb.iz
  %i.yq = getelementptr inbounds nuw i8, ptr %i.ab, i64 544
  %i.yr = load i8, ptr %i.yq, align 8, !range !3237, !alias.scope !3238, !noalias !3239, !noundef !25
  %.sroa.980.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 467
  %.sroa.879.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 466
  %.sroa.1087.0.copyload.i = load i8, ptr %.sroa.879.0..sroa_idx.i, align 2, !alias.scope !3235, !noalias !2828
  %.sroa.986.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 463
  %.sroa.885.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 462
  %.sroa.879.0.copyload.i = load i8, ptr %.sroa.885.0..sroa_idx.i, align 2, !alias.scope !3235, !noalias !2828
  %.sroa.784.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 459
  %.sroa.677.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 458
  %.sroa.683.0.copyload.i = load i8, ptr %.sroa.677.0..sroa_idx.i, align 2, !alias.scope !3235, !noalias !2828
  %.sroa.576.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 444
  %i.ys = getelementptr inbounds nuw i8, ptr %i.ab, i64 432
  %.sroa.074.0.copyload.i = load i64, ptr %i.ys, align 8, !alias.scope !3235, !noalias !2828
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %.sroa.6.i, ptr noundef nonnull align 4 dereferenceable(14) %.sroa.576.0..sroa_idx.i, i64 14, i1 false), !noalias !2828
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.851.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.784.0..sroa_idx.i, i64 3, i1 false), !noalias !2828
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.9.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.986.0..sroa_idx.i, i64 3, i1 false), !noalias !2828
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.10.i, ptr noundef nonnull align 1 dereferenceable(5) %.sroa.980.0..sroa_idx.i, i64 5, i1 false), !noalias !2828
  %i.yt = icmp eq i8 %i.yr, 0
  br label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultTNtNtCskXtk6F4WjxZ_4just5color5ColorNtNtBM_9verbosity9VerbosityERNtNtBM_5error5ErrorE17unwrap_or_defaultCs6SXwsBSuFuw_4just.exit.i

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultTNtNtCskXtk6F4WjxZ_4just5color5ColorNtNtBM_9verbosity9VerbosityERNtNtBM_5error5ErrorE17unwrap_or_defaultCs6SXwsBSuFuw_4just.exit.i: ; preds = %bb.ja, %.thread92.i
  %i.yu = phi i1 [ %i.yp, %.thread92.i ], [ false, %bb.ja ]
  %.sroa.016.0.copyload152.i = phi i64 [ %.sroa.016.0.copyload153.i, %.thread92.i ], [ %.pre.i, %bb.ja ]
  %.sroa.1057.0.i = phi i1 [ false, %.thread92.i ], [ %i.yt, %bb.ja ]
  %.sroa.957.0.i = phi i8 [ 1, %.thread92.i ], [ %.sroa.1087.0.copyload.i, %bb.ja ]
  %.sroa.853.0.i = phi i8 [ -1, %.thread92.i ], [ %.sroa.879.0.copyload.i, %bb.ja ]
  %.sroa.9.0.i = phi i8 [ -1, %.thread92.i ], [ %.sroa.683.0.copyload.i, %bb.ja ]
  %.sroa.544.0.i = phi i32 [ 32, %.thread92.i ], [ %.sroa.475.0.copyload.i, %bb.ja ]
  %.sroa.042.0.i = phi i64 [ 4, %.thread92.i ], [ %.sroa.074.0.copyload.i, %bb.ja ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !2828
  invoke void @_RNvMNtCskXtk6F4WjxZ_4just6loaderNtB2_6Loader3new(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.z)
          to label %bb.jb unwind label %bb.jx, !noalias !2828

bb.jb:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultTNtNtCskXtk6F4WjxZ_4just5color5ColorNtNtBM_9verbosity9VerbosityERNtNtBM_5error5ErrorE17unwrap_or_defaultCs6SXwsBSuFuw_4just.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2828
  %.sroa.618.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  br i1 %i.yu, label %bb.jc, label %bb.jd

bb.jc:                                            ; preds = %bb.jb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.y, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.618.0..sroa_idx.i, i64 104, i1 false), !noalias !2828
  br label %bb.jl

bb.jd:                                            ; preds = %bb.jb
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 112
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !2828
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.434.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.618.0..sroa_idx.i, i64 104, i1 false), !noalias !2828
  %.sroa.535.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(440) %.sroa.535.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(440) %.sroa.7.0..sroa_idx.i, i64 440, i1 false), !noalias !2828
  store i64 %.sroa.016.0.copyload152.i, ptr %i.x, align 8, !noalias !2828
  call void @llvm.experimental.noalias.scope.decl(metadata !3240)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3243
  %i.yv = getelementptr inbounds nuw i8, ptr %i.x, i64 544
  %i.yw = load i8, ptr %i.yv, align 8, !range !3237, !alias.scope !3240, !noalias !3245, !noundef !25
  invoke void @_RNvMNtCskXtk6F4WjxZ_4just14signal_handlerNtB2_13SignalHandler7install(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.e, i8 noundef %i.yw)
          to label %bb.jf unwind label %bb.je, !noalias !3243

bb.je:                                            ; preds = %bb.jh, %bb.jd
  %i.yx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just6config6ConfigECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(552) %i.x) #28
          to label %.body.i33 unwind label %bb.jj, !noalias !3245

bb.jf:                                            ; preds = %bb.jd
  %i.yy = load i64, ptr %i.e, align 8, !range !3246, !noalias !3243, !noundef !25
  %.not.i39.i = icmp eq i64 %i.yy, -1
  br i1 %.not.i39.i, label %bb.jh, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.y, ptr noundef nonnull align 8 dereferenceable(104) %i.e, i64 104, i1 false), !noalias !3247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3243
  br label %bb.ji

bb.jh:                                            ; preds = %bb.jf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3243
  %i.yz = getelementptr inbounds nuw i8, ptr %i.x, i64 384
  invoke void @_RNvMs_NtCskXtk6F4WjxZ_4just10subcommandNtB4_10Subcommand7execute(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.yz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(552) %i.x, ptr noundef nonnull align 8 %i.z)
          to label %bb.ji unwind label %bb.je, !noalias !2828

bb.ji:                                            ; preds = %bb.jh, %bb.jg
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just6config6ConfigECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(552) %i.x)
          to label %_RNCINvNtCskXtk6F4WjxZ_4just3run3runNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBD_3env6ArgsOsEs0_0Cs6SXwsBSuFuw_4just.exit.i unwind label %bb.jk, !noalias !2828

bb.jj:                                            ; preds = %bb.je
  %i.za = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !3245
  unreachable

bb.jk:                                            ; preds = %bb.ju, %bb.ji
  %i.zb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i33

.body.i33:                                        ; preds = %bb.jr, %bb.jk, %bb.je
  %eh.lpad-body.i34 = phi { ptr, i32 } [ %i.yx, %bb.je ], [ %i.zb, %bb.jk ], [ %i.zl, %bb.jr ]
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just6loader6LoaderECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(112) %i.z) #28, !noalias !2828
  br label %common.resume

_RNCINvNtCskXtk6F4WjxZ_4just3run3runNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBD_3env6ArgsOsEs0_0Cs6SXwsBSuFuw_4just.exit.i: ; preds = %bb.ji
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2828
  %i.zc = load i64, ptr %i.y, align 8, !range !3246, !noalias !2828, !noundef !25
  %.not.i = icmp eq i64 %i.zc, -1
  br i1 %.not.i, label %_RINvNtCskXtk6F4WjxZ_4just3run3runNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBB_3env6ArgsOsECs6SXwsBSuFuw_4just.exit, label %bb.jl

bb.jl:                                            ; preds = %_RNCINvNtCskXtk6F4WjxZ_4just3run3runNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBD_3env6ArgsOsEs0_0Cs6SXwsBSuFuw_4just.exit.i, %bb.jc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !2828
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.w, ptr noundef nonnull align 8 dereferenceable(104) %i.y, i64 104, i1 false), !noalias !2828
  call void @llvm.experimental.noalias.scope.decl(metadata !3248)
  br i1 %.sroa.1057.0.i, label %bb.jp, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.zd = load i64, ptr %i.w, align 8, !range !1373, !alias.scope !3248, !noalias !3251, !noundef !25 ; 3 uses
  %i.ze = icmp ne i64 %i.zd, 58
  call void @llvm.assume(i1 %i.ze)
  %i.zf = add nsw i64 %i.zd, -5
  %i.zg = icmp samesign ugt i64 %i.zd, 4
  %i.zh = select i1 %i.zg, i64 %i.zf, i64 53
  switch i64 %i.zh, label %bb.jq [
    i64 18, label %bb.jo
    i64 76, label %bb.jo
    i64 83, label %bb.jn
  ]

bb.jn:                                            ; preds = %bb.jm
  br label %bb.jo

bb.jo:                                            ; preds = %bb.jn, %bb.jm, %bb.jm
  %.sink.i.sroa.phi.i = phi ptr [ %.sink.i.sroa.gep.i, %bb.jn ], [ %.sink.i.sroa.gep83.i, %bb.jm ], [ %.sink.i.sroa.gep83.i, %bb.jm ]
  %i.zi = load i8, ptr %.sink.i.sroa.phi.i, align 1, !range !3253, !alias.scope !3248, !noalias !3251, !noundef !25
  %i.zj = trunc nuw i8 %i.zi to i1
  br i1 %i.zj, label %bb.jq, label %bb.jp

bb.jp:                                            ; preds = %bb.jt, %bb.jo, %bb.jl
  %i.zk = invoke { i32, i32 } @_RNvMNtCskXtk6F4WjxZ_4just5errorNtB2_5Error4code(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.w)
          to label %bb.ju unwind label %bb.jr, !noalias !3251 ; 2 uses

bb.jq:                                            ; preds = %bb.jo, %bb.jm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3254
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3254
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3254
  store i64 %.sroa.042.0.i, ptr %i.b, align 8, !noalias !3255
  %.sroa.4.0..sroa_idx.i36 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %.sroa.544.0.i, ptr %.sroa.4.0..sroa_idx.i36, align 8, !noalias !3255
  %.sroa.559.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %.sroa.559.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(14) %.sroa.6.i, i64 14, i1 false), !noalias !2828
  %.sroa.660.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  store i8 %.sroa.9.0.i, ptr %.sroa.660.0..sroa_idx.i, align 2, !noalias !3255
  %.sroa.765.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.765.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.851.i, i64 3, i1 false), !noalias !2828
  %.sroa.866.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 30
  store i8 %.sroa.853.0.i, ptr %.sroa.866.0..sroa_idx.i, align 2, !noalias !3255
  %.sroa.967.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.967.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.9.i, i64 3, i1 false), !noalias !2828
  %.sroa.862.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 34
  store i8 %.sroa.957.0.i, ptr %.sroa.862.0..sroa_idx.i, align 2, !noalias !3255
  %.sroa.963.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.963.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(5) %.sroa.10.i, i64 5, i1 false), !noalias !2828
  invoke void @_RNvMNtCskXtk6F4WjxZ_4just5colorNtB2_5Color6stderr(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.b)
          to label %bb.js unwind label %bb.jr, !noalias !3254

bb.jr:                                            ; preds = %bb.js, %bb.jq, %bb.jp
  %i.zl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just5error5ErrorECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.w) #28
          to label %.body.i33 unwind label %bb.jv, !noalias !3251

bb.js:                                            ; preds = %bb.jq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3254
  %i.zm = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %i.w, ptr %i.zm, align 8, !noalias !3254
  %i.zn = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr @17, ptr %i.zn, align 8, !noalias !3254
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !noalias !3254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3254
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3254
  store ptr %i.d, ptr %i.a, align 8, !noalias !3254
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXNtCskXtk6F4WjxZ_4just13color_displayNtB2_7WrapperNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i.i, align 8, !noalias !3254
  invoke void @_RNvNtNtCsaKJjC64KgbL_3std2io5stdio7__eprint(ptr noundef nonnull @18, ptr noundef nonnull %i.a)
          to label %bb.jt unwind label %bb.jr, !noalias !3251

bb.jt:                                            ; preds = %bb.js
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3254
  br label %bb.jp

bb.ju:                                            ; preds = %bb.jp
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just5error5ErrorECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.w)
          to label %_RINvNtCskXtk6F4WjxZ_4just3run3runNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBB_3env6ArgsOsECs6SXwsBSuFuw_4just.exit.thread73 unwind label %bb.jk, !noalias !2828

bb.jv:                                            ; preds = %bb.jr
  %i.zo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !3251
  unreachable

_RINvNtCskXtk6F4WjxZ_4just3run3runNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBB_3env6ArgsOsECs6SXwsBSuFuw_4just.exit.thread73: ; preds = %bb.ju
  %i.zp = extractvalue { i32, i32 } %i.zk, 0
  %i.zq = trunc i32 %i.zp to i1
  %i.zr = extractvalue { i32, i32 } %i.zk, 1
  %.sroa.0.0.i.i35 = select i1 %i.zq, i32 %i.zr, i32 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2828
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2828
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just6loader6LoaderECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(112) %i.z), !noalias !2828
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !2828
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !2828
  br label %bb.kc

bb.jw:                                            ; preds = %bb.jx
  %i.zs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !2828
  unreachable

bb.jx:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultTNtNtCskXtk6F4WjxZ_4just5color5ColorNtNtBM_9verbosity9VerbosityERNtNtBM_5error5ErrorE17unwrap_or_defaultCs6SXwsBSuFuw_4just.exit.i
  %i.zt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCskXtk6F4WjxZ_4just6config6ConfigNtNtB11_5error5ErrorEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(552) %i.ab) #28
          to label %common.resume unwind label %bb.jw, !noalias !2828

_RINvNtCskXtk6F4WjxZ_4just3run3runNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBB_3env6ArgsOsECs6SXwsBSuFuw_4just.exit: ; preds = %_RNCINvNtCskXtk6F4WjxZ_4just3run3runNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBD_3env6ArgsOsEs0_0Cs6SXwsBSuFuw_4just.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2828
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just6loader6LoaderECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(112) %i.z), !noalias !2828
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !2828
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !2828
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.851.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  br label %bb.kd

bb.jy:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i
  %i.zu = icmp eq ptr %i.bn, %.val3.i
  br i1 %i.zu, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCs6SXwsBSuFuw_4just.exit.thread, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCs6SXwsBSuFuw_4just.exit

_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCs6SXwsBSuFuw_4just.exit: ; preds = %bb.jy
  %i.zv = getelementptr inbounds nuw i8, ptr %i.bn, i64 24 ; 4 uses
  %.sroa.0.0.copyload = load i64, ptr %i.bn, align 8, !noalias !3256 ; 2 uses
  switch i64 %.sroa.0.0.copyload, label %bb.jz [
    i64 -1, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCs6SXwsBSuFuw_4just.exit.thread
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs6SXwsBSuFuw_4just.exit
  ]

bb.jz:                                            ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCs6SXwsBSuFuw_4just.exit
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !noalias !3256, !nonnull !25, !noundef !25
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3259
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs6SXwsBSuFuw_4just.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs6SXwsBSuFuw_4just.exit: ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCs6SXwsBSuFuw_4just.exit, %bb.jz
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3262)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3268)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3271)
  %i.zw = ptrtoint ptr %.val3.i to i64
  %i.zx = ptrtoint ptr %i.zv to i64
  %i.zy = sub nuw i64 %i.zw, %i.zx
  %i.zz = udiv exact i64 %i.zy, 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3274)
  %i.aaa = icmp eq ptr %.val3.i, %i.zv
  br i1 %i.aaa, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i52

.lr.ph.i.i.i.i.i52:                               ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs6SXwsBSuFuw_4just.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i56
  %.sroa.0.011.i.i.i.i.i53 = phi i64 [ %i.aac, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i56 ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs6SXwsBSuFuw_4just.exit ] ; 2 uses
  %i.aab = getelementptr inbounds nuw [24 x i8], ptr %i.zv, i64 %.sroa.0.011.i.i.i.i.i53 ; 2 uses
  %i.aac = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i53, 1 ; 2 uses
  %.val8.i.i.i.i.i54 = load i64, ptr %i.aab, align 8, !range !23, !alias.scope !3277, !noalias !3280, !noundef !25 ; 2 uses
  %i.aad = icmp eq i64 %.val8.i.i.i.i.i54, 0
  br i1 %i.aad, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i56, label %bb.ka

bb.ka:                                            ; preds = %.lr.ph.i.i.i.i.i52
  %i.aae = getelementptr i8, ptr %i.aab, i64 8
  %.val9.i.i.i.i.i55 = load ptr, ptr %i.aae, align 8, !alias.scope !3274, !noalias !3280, !nonnull !25, !noundef !25
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i55, i64 noundef %.val8.i.i.i.i.i54, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3281
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i56

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i56: ; preds = %bb.ka, %.lr.ph.i.i.i.i.i52
  %i.aaf = icmp eq i64 %i.aac, %i.zz
  br i1 %i.aaf, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i52

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i56, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs6SXwsBSuFuw_4just.exit
  %i.aag = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.aah = load i64, ptr %i.aag, align 8, !alias.scope !3280, !noundef !25 ; 2 uses
  %i.aai = icmp eq i64 %i.aah, 0
  br i1 %i.aai, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std3env6ArgsOsECs6SXwsBSuFuw_4just.exit, label %bb.kb

bb.kb:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i
  %i.aaj = load ptr, ptr %i.bb, align 8, !alias.scope !3280, !nonnull !25, !noundef !25
  %i.aak = mul nuw i64 %i.aah, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aaj, i64 noundef %i.aak, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !3280
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std3env6ArgsOsECs6SXwsBSuFuw_4just.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std3env6ArgsOsECs6SXwsBSuFuw_4just.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i, %bb.kb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  br label %bb.h

bb.kc:                                            ; preds = %_RINvNtCskXtk6F4WjxZ_4just3run3runNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBB_3env6ArgsOsECs6SXwsBSuFuw_4just.exit.thread73, %_RINvNtCskXtk6F4WjxZ_4just3run3runNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBB_3env6ArgsOsECs6SXwsBSuFuw_4just.exit.thread
  %.sroa.4.1.i72 = phi i32 [ %i.yi, %_RINvNtCskXtk6F4WjxZ_4just3run3runNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBB_3env6ArgsOsECs6SXwsBSuFuw_4just.exit.thread ], [ %.sroa.0.0.i.i35, %_RINvNtCskXtk6F4WjxZ_4just3run3runNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBB_3env6ArgsOsECs6SXwsBSuFuw_4just.exit.thread73 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.851.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @_RNvNtCsaKJjC64KgbL_3std7process4exit(i32 noundef %.sroa.4.1.i72) #27
  unreachable

bb.kd:                                            ; preds = %_RINvNtCskXtk6F4WjxZ_4just3run3runNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBB_3env6ArgsOsECs6SXwsBSuFuw_4just.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std3env6ArgsOsECs6SXwsBSuFuw_4just.exit65
  ret void

_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCs6SXwsBSuFuw_4just.exit.thread: ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCs6SXwsBSuFuw_4just.exit, %bb.f, %bb.jy
  %.val.i.i.i.i57 = phi ptr [ %i.bn, %bb.f ], [ %i.bn, %bb.jy ], [ %i.zv, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCs6SXwsBSuFuw_4just.exit ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3287)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3293)
  %i.aal = ptrtoint ptr %.val3.i to i64
  %i.aam = ptrtoint ptr %.val.i.i.i.i57 to i64
  %i.aan = sub nuw i64 %i.aal, %i.aam
  %i.aao = udiv exact i64 %i.aan, 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3296)
  %i.aap = icmp eq ptr %.val3.i, %.val.i.i.i.i57
  br i1 %i.aap, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i64, label %.lr.ph.i.i.i.i.i59

.lr.ph.i.i.i.i.i59:                               ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCs6SXwsBSuFuw_4just.exit.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i63
  %.sroa.0.011.i.i.i.i.i60 = phi i64 [ %i.aar, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i63 ], [ 0, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCs6SXwsBSuFuw_4just.exit.thread ] ; 2 uses
  %i.aaq = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i57, i64 %.sroa.0.011.i.i.i.i.i60 ; 2 uses
  %i.aar = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i60, 1 ; 2 uses
  %.val8.i.i.i.i.i61 = load i64, ptr %i.aaq, align 8, !range !23, !alias.scope !3299, !noalias !3302, !noundef !25 ; 2 uses
  %i.aas = icmp eq i64 %.val8.i.i.i.i.i61, 0
  br i1 %i.aas, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i63, label %bb.ke

bb.ke:                                            ; preds = %.lr.ph.i.i.i.i.i59
  %i.aat = getelementptr i8, ptr %i.aaq, i64 8
  %.val9.i.i.i.i.i62 = load ptr, ptr %i.aat, align 8, !alias.scope !3296, !noalias !3302, !nonnull !25, !noundef !25
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i62, i64 noundef %.val8.i.i.i.i.i61, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3303
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i63

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i63: ; preds = %bb.ke, %.lr.ph.i.i.i.i.i59
  %i.aau = icmp eq i64 %i.aar, %i.aao
  br i1 %i.aau, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i64, label %.lr.ph.i.i.i.i.i59

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i64: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i63, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCs6SXwsBSuFuw_4just.exit.thread
  %i.aav = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.aaw = load i64, ptr %i.aav, align 8, !alias.scope !3302, !noundef !25 ; 2 uses
  %i.aax = icmp eq i64 %i.aaw, 0
  br i1 %i.aax, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std3env6ArgsOsECs6SXwsBSuFuw_4just.exit65, label %bb.kf

bb.kf:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i64
  %i.aay = load ptr, ptr %i.bb, align 8, !alias.scope !3302, !nonnull !25, !noundef !25
  %i.aaz = mul nuw i64 %i.aaw, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aay, i64 noundef %i.aaz, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !3302
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std3env6ArgsOsECs6SXwsBSuFuw_4just.exit65

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std3env6ArgsOsECs6SXwsBSuFuw_4just.exit65: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i64, %bb.kf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  tail call void @_RNvNtNtCsaKJjC64KgbL_3std2io5stdio6__print(ptr noundef nonnull @27, ptr noundef nonnull inttoptr (i64 4105 to ptr))
  br label %bb.kd
}

; Function Attrs: noreturn nonlazybind uwtable
define internal fastcc void @_RNvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB2_5Error4exitCs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) unnamed_addr #6 {
bb.a:
  %i.a = tail call fastcc noundef ptr @_RNvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB2_5Error5printCs6SXwsBSuFuw_4just(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs6SXwsBSuFuw_4just(ptr %i.a)
  %i.b = load ptr, ptr %0, align 8, !nonnull !25, !noundef !25
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 249
  %i.d = load i8, ptr %i.c, align 1, !range !3231, !noundef !25
  %i.e = and i8 %i.d, 29
  %switch.selectcmp = icmp eq i8 %i.e, 12
  %i.f = select i1 %switch.selectcmp, i32 0, i32 2
  tail call void @_RNvNtCsaKJjC64KgbL_3std7process4exit(i32 noundef %i.f) #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB2_5Error5printCs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3306)
  %i.f = load ptr, ptr %0, align 8, !alias.scope !3306, !noalias !3309, !nonnull !25, !noundef !25 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !range !36, !noalias !3311, !noundef !25
  %.not.i = icmp eq i64 %i.g, 2
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  call void @_RNvMs4_NtCs2FJGJNE9lTN_12clap_builder5errorNtB5_7Message9formatted(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(126) %i.h), !noalias !3306
  br label %_RNvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB2_5Error9formattedCs6SXwsBSuFuw_4just.exit

bb.c:                                             ; preds = %bb.a
  call void @_RNvXs_NtNtCs2FJGJNE9lTN_12clap_builder5error6formatNtB4_13RichFormatterNtB4_14ErrorFormatter12format_error(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
  br label %_RNvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB2_5Error9formattedCs6SXwsBSuFuw_4just.exit

_RNvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB2_5Error9formattedCs6SXwsBSuFuw_4just.exit: ; preds = %bb.b, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 249
  %i.j = load i8, ptr %i.i, align 1, !range !3231, !noundef !25 ; 2 uses
  %i.k = and i8 %i.j, 30
  %switch = icmp eq i8 %i.k, 12
  %.sroa.0.0.in.v = select i1 %switch, i64 248, i64 247
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.0.0.in.v
  %.sroa.0.0 = load i8, ptr %.sroa.0.0.in, align 1, !range !3312, !noundef !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.l = and i8 %i.j, 29
  %switch.selectcmp = icmp ne i8 %i.l, 12
  %i.m = zext i1 %switch.selectcmp to i8
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i8 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 25
  store i8 %.sroa.0.0, ptr %i.o, align 1
  store i64 0, ptr %i.c, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.59.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.p = load i64, ptr %i.e, align 8, !range !95, !noundef !25
  %.not = icmp eq i64 %i.p, -1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB2_5Error9formattedCs6SXwsBSuFuw_4just.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %_RNvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB2_5Error9formattedCs6SXwsBSuFuw_4just.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !25, !align !136, !noundef !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @_RNvMNtNtCs2FJGJNE9lTN_12clap_builder6output3fmtNtB2_9Colorizer12with_content(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.s = invoke noundef ptr @_RNvMs_NtNtCs2FJGJNE9lTN_12clap_builder6output3fmtNtB4_9Colorizer5print(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  %.val15 = load i64, ptr %i.d, align 8, !range !23, !alias.scope !3313, !noundef !25 ; 2 uses
  %i.u = icmp eq i64 %.val15, 0
  br i1 %i.u, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder6output3fmt9ColorizerECs6SXwsBSuFuw_4just.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val16 = load ptr, ptr %i.v, align 8, !nonnull !25, !noundef !25
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val16, i64 noundef %.val15, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3318
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder6output3fmt9ColorizerECs6SXwsBSuFuw_4just.exit

bb.i:                                             ; preds = %bb.f
  %.val13 = load i64, ptr %i.d, align 8, !range !23, !alias.scope !3313, !noundef !25 ; 2 uses
  %i.w = icmp eq i64 %.val13, 0
  br i1 %i.w, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder6output3fmt9ColorizerECs6SXwsBSuFuw_4just.exit17, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val14 = load ptr, ptr %i.x, align 8, !nonnull !25, !noundef !25
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val14, i64 noundef %.val13, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3323
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder6output3fmt9ColorizerECs6SXwsBSuFuw_4just.exit17

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder6output3fmt9ColorizerECs6SXwsBSuFuw_4just.exit17: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %i.s

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder6output3fmt9ColorizerECs6SXwsBSuFuw_4just.exit: ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.t
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB2_5Error8with_cmdCs6SXwsBSuFuw_4just(ptr noalias noundef nonnull returned align 8 captures(address, ret: address, provenance) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(760) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [126 x i8], align 2               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3331)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !3334, !nonnull !25, !noundef !25 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !3334, !noundef !25 ; 2 uses
  %.idx = shl nuw nsw i64 %i.g, 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder7builder3extNtB3_10Extensions3getNtNtB5_7styling6StylesECs6SXwsBSuFuw_4just.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i35, i64 16 ; 2 uses
  %i.k = add i64 %.sroa.8.0.i.i34, 1
  %i.l = icmp eq ptr %i.j, %i.h
end_hunk_2
