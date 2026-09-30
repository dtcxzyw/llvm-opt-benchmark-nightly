Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/just.just.5035f528a4e5d8da-cgu.0?download=true
inline.NumInlined: 1390
inline.NumDeleted: 637
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs6SXwsBSuFuw_4just:bb.a
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.j, align 8, !noalias !2435, !nonnull !13, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2435
  store ptr %i.n, ptr %i.g, align 8, !alias.scope !2435
  %i.o = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.o)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !2435
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @_RNCINvNtCsaKJjC64KgbL_3std2rt10lang_startuE0Cs6SXwsBSuFuw_4just(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !13, !noundef !13
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
  %.val = load ptr, ptr %i.c, align 8, !nonnull !13, !noundef !13 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = ptrtoint ptr %.val to i64                ; 2 uses
  %i.g = and i64 %i.f, 3
  switch i64 %i.g, label %default.unreachable [
    i64 2, label %bb.g
    i64 3, label %bb.c
    i64 0, label %bb.g
    i64 1, label %bb.d
  ], !prof !15

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
  store ptr %i.k, ptr %i.l, align 8, !alias.scope !2439
  store i8 3, ptr %i.a, align 8, !alias.scope !2439
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
  %i.a = load ptr, ptr %0, align 8, !nonnull !13, !noundef !13
  tail call fastcc void @_RINvNtNtCsaKJjC64KgbL_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs6SXwsBSuFuw_4just(ptr noundef nonnull readonly %i.a) #31, !noalias !2442
  ret i32 0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvCs6SXwsBSuFuw_4just4main() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 9 uses
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
  %.sroa.10.i = alloca [5 x i8], align 1          ; 5 uses
  %i.aa = alloca [552 x i8], align 8              ; 7 uses
  %i.ab = alloca [552 x i8], align 8              ; 18 uses
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
  %i.bd = load i64, ptr %i.bc, align 8, !range !16, !noundef !13 ; 3 uses
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
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.468.0.copyload, i64 noundef %i.bd, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2984
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2985)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.val.i12 = load ptr, ptr %i.bk, align 8, !alias.scope !2985, !nonnull !13, !noundef !13 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %.val3.i = load ptr, ptr %i.bl, align 8, !alias.scope !2985, !nonnull !13, !noundef !13 ; 7 uses
  %i.bm = icmp ne ptr %.val3.i, %.val.i12
  %..i.i = zext i1 %i.bm to i64                   ; 2 uses
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %.val.i12, i64 %..i.i ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2986)
  %.not99 = icmp eq ptr %.val3.i, %.val.i12
  br i1 %.not99, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCs6SXwsBSuFuw_4just.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i
  %.sroa.0.011.i.i = phi i64 [ %i.bp, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i ], [ 0, %bb.f ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %.val.i12, i64 %.sroa.0.011.i.i ; 2 uses
  %i.bp = add nuw nsw i64 %.sroa.0.011.i.i, 1     ; 2 uses
  %.val8.i.i = load i64, ptr %i.bo, align 8, !range !12, !alias.scope !2987, !noalias !2985, !noundef !13 ; 2 uses
  %i.bq = icmp eq i64 %.val8.i.i, 0
  br i1 %i.bq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.br = getelementptr i8, ptr %i.bo, i64 8
  %.val9.i.i = load ptr, ptr %i.br, align 8, !alias.scope !2986, !noalias !2985, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i, i64 noundef %.val8.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2988
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
  store ptr @20, ptr %i.bt, align 8, !captures !2989
  store i64 13, ptr %i.bu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !2990
  invoke void @_RNvNtCsaKJjC64KgbL_3std3env7args_os(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ay)
          to label %bb.j unwind label %bb.i, !noalias !2990

bb.i:                                             ; preds = %bb.h
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !2990
  invoke void @_RNvNtCsaKJjC64KgbL_3std3env11current_dir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ax)
          to label %bb.k unwind label %bb.ek, !noalias !2990

bb.k:                                             ; preds = %bb.j
  %i.bz = load i64, ptr %i.ax, align 8, !range !16, !noalias !2990, !noundef !13 ; 5 uses
  %i.ca = icmp eq i64 %i.bz, -1                   ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.val7.i = load ptr, ptr %i.cb, align 8, !noalias !2990 ; 5 uses
  br i1 %i.ca, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.523.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %.sroa.523.0.copyload.i = load i64, ptr %.sroa.523.0..sroa_idx.i, align 8, !noalias !2990
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !2990
  %i.cc = ptrtoint ptr %.val7.i to i64            ; 2 uses
  %i.cd = and i64 %i.cc, 3
  switch i64 %i.cd, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtNtB4_2io5error5ErrorEECs6SXwsBSuFuw_4just.exit.i
    i64 3, label %bb.n
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtNtB4_2io5error5ErrorEECs6SXwsBSuFuw_4just.exit.i
    i64 1, label %bb.o
  ], !prof !15

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
  store ptr %i.ch, ptr %i.ci, align 8, !alias.scope !2991, !noalias !2990
  store i8 3, ptr %i.aw, align 8, !alias.scope !2991, !noalias !2990
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ci)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtNtB4_2io5error5ErrorEECs6SXwsBSuFuw_4just.exit.i unwind label %bb.ek, !noalias !2990

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtNtB4_2io5error5ErrorEECs6SXwsBSuFuw_4just.exit.i: ; preds = %bb.o, %bb.n, %bb.m, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !2990
  br label %bb.p

bb.p:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtNtB4_2io5error5ErrorEECs6SXwsBSuFuw_4just.exit.i, %bb.l
  %.sroa.01.0.i = phi ptr [ null, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtNtB4_2io5error5ErrorEECs6SXwsBSuFuw_4just.exit.i ], [ %.val7.i, %bb.l ]
  %.sroa.5.0.i = phi i64 [ undef, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtNtB4_2io5error5ErrorEECs6SXwsBSuFuw_4just.exit.i ], [ %.sroa.523.0.copyload.i, %bb.l ] ; 2 uses
  %.sroa.7.038.i = phi ptr [ undef, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtNtB4_2io5error5ErrorEECs6SXwsBSuFuw_4just.exit.i ], [ %.val7.i, %bb.l ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !2990
  %.sroa.020.0.copyload.i = load ptr, ptr %i.ay, align 8, !noalias !2990 ; 6 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2990, !nonnull !13, !noundef !13 ; 6 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !2990 ; 7 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !2990, !nonnull !13, !noundef !13 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !2992
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.av, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.ba, i64 80, i1 false), !noalias !2993
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !2992
  call void @llvm.experimental.noalias.scope.decl(metadata !2994)
  call void @llvm.experimental.noalias.scope.decl(metadata !2995)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !2996
  %i.cj = icmp eq ptr %.sroa.4.0.copyload.i, %.sroa.6.0.copyload.i
  br i1 %i.cj, label %bb.q, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i

_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i: ; preds = %bb.p
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i, i64 24 ; 7 uses
  %.sroa.0.0.copyload1.i.i.i.i.i = load i64, ptr %.sroa.4.0.copyload.i, align 8, !noalias !2997 ; 4 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i, label %bb.q, label %bb.v

bb.q:                                             ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i, %bb.p
  %.val.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ck, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i ], [ %.sroa.4.0.copyload.i, %bb.p ] ; 3 uses
  store i64 0, ptr %i.au, align 8, !alias.scope !2998, !noalias !2999
  %i.cl = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cl, align 8, !alias.scope !2998, !noalias !2999
  %i.cm = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i64 0, ptr %i.cm, align 8, !alias.scope !2998, !noalias !2999
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !2996
  %i.cn = ptrtoint ptr %.sroa.6.0.copyload.i to i64
  %i.co = ptrtoint ptr %.val.i.i.i.i.i.i.i.i.i to i64
  %i.cp = sub nuw i64 %i.cn, %i.co
  %i.cq = udiv exact i64 %i.cp, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !3000)
  %i.cr = icmp eq ptr %.sroa.6.0.copyload.i, %.val.i.i.i.i.i.i.i.i.i
  br i1 %i.cr, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.q, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ct, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.q ] ; 2 uses
  %i.cs = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ct = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cs, align 8, !range !12, !alias.scope !3001, !noalias !3002, !noundef !13 ; 2 uses
  %i.cu = icmp eq i64 %.val8.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cu, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.cv = getelementptr i8, ptr %i.cs, i64 8
  %.val9.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cv, align 8, !alias.scope !3000, !noalias !3002, !nonnull !13, !noundef !13
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3003
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.r, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.cw = icmp eq i64 %i.ct, %i.cq
  br i1 %i.cw, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i, %bb.q
  %i.cx = icmp eq i64 %.sroa.5.0.copyload.i, 0
  br i1 %i.cx, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtB10_3env6ArgsOsNCINvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB3f_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE12try_completeBU_B2O_E0EE9from_iterCs6SXwsBSuFuw_4just.exit.i.i, label %bb.s

bb.s:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.020.0.copyload.i) ]
  %i.cy = mul nuw i64 %.sroa.5.0.copyload.i, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.020.0.copyload.i, i64 noundef %i.cy, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !3002
  br label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtB10_3env6ArgsOsNCINvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB3f_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE12try_completeBU_B2O_E0EE9from_iterCs6SXwsBSuFuw_4just.exit.i.i

bb.t:                                             ; preds = %bb.x
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.da = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i, 0
  br i1 %i.da, label %bb.af, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.sroa.0.0.copyload.i.i.i.i, i64 noundef %.sroa.0.0.copyload1.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3004
  br label %bb.af

bb.v:                                             ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i
  %.sroa.6.0..sroa_idx2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i, i64 8
  %.sroa.6.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i, align 8, !noalias !3005 ; 3 uses
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i, i64 16
  %.sroa.6.sroa.5.0.copyload.i.i.i.i = load i64, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i, align 8, !noalias !3005
  %i.db = ptrtoint ptr %.sroa.6.0.copyload.i to i64 ; 3 uses
  %i.dc = ptrtoint ptr %i.ck to i64
  %i.dd = sub nuw i64 %i.db, %i.dc                ; 2 uses
  %i.de = udiv exact i64 %i.dd, 24                ; 2 uses
  %i.df = call i64 @llvm.umax.i64(i64 %i.de, i64 3) ; 2 uses
  %..i.i.i.i.i = add nuw nsw i64 %i.df, 1         ; 2 uses
  %i.dg = mul i64 %..i.i.i.i.i, 24                ; 3 uses
  %or.cond.i.i.i.i.i.i = icmp ugt i64 %i.dd, 9223372036854775776
  br i1 %or.cond.i.i.i.i.i.i, label %bb.x, label %bb.w, !prof !29

bb.w:                                             ; preds = %bb.v
  %i.dh = icmp eq i64 %i.dg, 0
  br i1 %i.dh, label %bb.y, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i: ; preds = %bb.w
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !3006
  %i.di = call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.dg, i64 noundef range(i64 1, 9) 8) #26, !noalias !3006 ; 2 uses
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i, %bb.v
end_hunk_0
