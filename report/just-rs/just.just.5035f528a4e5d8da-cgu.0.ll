Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/just.just.5035f528a4e5d8da-cgu.0?download=true
inline.NumInlined: 1390
inline.NumDeleted: 637
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RNvCs6SXwsBSuFuw_4just4main:bb.a
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
  br i1 %i.bs, label %bb.jw, label %.lr.ph.i.i

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
  br label %bb.ek

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !2452
  invoke void @_RNvNtCsaKJjC64KgbL_3std3env11current_dir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ax)
          to label %bb.k unwind label %bb.ej, !noalias !2452

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

default.unreachable:                              ; preds = %bb.ip, %bb.m
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
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtNtB4_2io5error5ErrorEECs6SXwsBSuFuw_4just.exit.i unwind label %bb.ej, !noalias !2452

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
  %.val.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ck, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i ], [ %.sroa.4.0.copyload.i, %bb.p ] ; 3 uses
  store i64 0, ptr %i.au, align 8, !alias.scope !2482, !noalias !2483
  %i.cl = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cl, align 8, !alias.scope !2482, !noalias !2483
  %i.cm = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i64 0, ptr %i.cm, align 8, !alias.scope !2482, !noalias !2483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !2471
  %i.cn = ptrtoint ptr %.sroa.6.0.copyload.i to i64
  %i.co = ptrtoint ptr %.val.i.i.i.i.i.i.i.i.i to i64
  %i.cp = sub nuw i64 %i.cn, %i.co
  %i.cq = udiv exact i64 %i.cp, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !2484)
  %i.cr = icmp eq ptr %.sroa.6.0.copyload.i, %.val.i.i.i.i.i.i.i.i.i
  br i1 %i.cr, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.q, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ct, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.q ] ; 2 uses
  %i.cs = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ct = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cs, align 8, !range !23, !alias.scope !2487, !noalias !2490, !noundef !25 ; 2 uses
  %i.cu = icmp eq i64 %.val8.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cu, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.cv = getelementptr i8, ptr %i.cs, i64 8
  %.val9.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cv, align 8, !alias.scope !2484, !noalias !2490, !nonnull !25, !noundef !25
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2501
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
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.020.0.copyload.i, i64 noundef %i.cy, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !2490
  br label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtB10_3env6ArgsOsNCINvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB3f_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE12try_completeBU_B2O_E0EE9from_iterCs6SXwsBSuFuw_4just.exit.i.i

bb.t:                                             ; preds = %bb.w
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.da = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i, 0
  br i1 %i.da, label %bb.ae, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.sroa.0.0.copyload.i.i.i.i, i64 noundef %.sroa.0.0.copyload1.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2504
  br label %bb.ae

bb.v:                                             ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i
  %.sroa.6.0..sroa_idx2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i, i64 8
  %.sroa.6.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i, align 8, !noalias !2507 ; 3 uses
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i, i64 16
  %.sroa.6.sroa.5.0.copyload.i.i.i.i = load i64, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i, align 8, !noalias !2507
  %i.db = ptrtoint ptr %.sroa.6.0.copyload.i to i64 ; 3 uses
  %i.dc = ptrtoint ptr %i.ck to i64
  %i.dd = sub nuw i64 %i.db, %i.dc                ; 2 uses
  %i.de = udiv exact i64 %i.dd, 24                ; 2 uses
  %i.df = call i64 @llvm.umax.i64(i64 %i.de, i64 3) ; 2 uses
  %..i.i.i.i.i = add nuw nsw i64 %i.df, 1         ; 2 uses
  %0 = mul i64 %..i.i.i.i.i, 24                   ; 3 uses
  %or.cond.i.i.i.i.i.i = icmp ugt i64 %i.dd, 9223372036854775776
  br i1 %or.cond.i.i.i.i.i.i, label %bb.w, label %1, !prof !2508

1:                                                ; preds = %bb.v
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %bb.x, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i: ; preds = %1
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !2509
  %i.dg = call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %0, i64 noundef range(i64 1, 9) 8) #26, !noalias !2509 ; 2 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i, %bb.v
  %.sroa.10.0.ph.i.i.i.i.i = phi i64 [ %0, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i ], [ undef, %bb.v ]
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i ], [ 0, %bb.v ]
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %.sroa.10.0.ph.i.i.i.i.i) #27
          to label %.noexc.i.i.i.i unwind label %bb.t, !noalias !2512

.noexc.i.i.i.i:                                   ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i, %1
  %.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %1 ], [ %i.dg, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i ] ; 5 uses
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %1 ], [ %..i.i.i.i.i, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i ] ; 2 uses
  %3 = icmp samesign ult i64 %i.df, %.sroa.4.0.i.i.i.i.i
  call void @llvm.assume(i1 %3)
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i, ptr %.sroa.10.0.i.i.i.i.i, align 8, !noalias !2512
  %.sroa.412.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i, i64 8
  store ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i, ptr %.sroa.412.0..sroa_idx.i.i.i.i, align 8, !noalias !2512
  %.sroa.513.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i, i64 16
  store i64 %.sroa.6.sroa.5.0.copyload.i.i.i.i, ptr %.sroa.513.0..sroa_idx.i.i.i.i, align 8, !noalias !2512
  store i64 %.sroa.4.0.i.i.i.i.i, ptr %i.at, align 8, !noalias !2471
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !2471
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !2471
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !2471
  store ptr %.sroa.020.0.copyload.i, ptr %i.as, align 8, !noalias !2513
  %.sroa.6.0..sroa_idx13.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.8.0..sroa_idx15.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i64 %.sroa.5.0.copyload.i, ptr %.sroa.8.0..sroa_idx15.i.i, align 8, !noalias !2513
  %.sroa.10.0..sroa_idx18.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store ptr %.sroa.6.0.copyload.i, ptr %.sroa.10.0..sroa_idx18.i.i, align 8, !noalias !2513
  call void @llvm.experimental.noalias.scope.decl(metadata !2514)
  call void @llvm.experimental.noalias.scope.decl(metadata !2517)
  call void @llvm.experimental.noalias.scope.decl(metadata !2519)
  call void @llvm.experimental.noalias.scope.decl(metadata !2522)
  %i.di = icmp eq ptr %i.ck, %.sroa.6.0.copyload.i
  br i1 %i.di, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i.i, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i

_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i: ; preds = %bb.x, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i
  %i.dj = phi ptr [ %i.dx, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i ], [ %.sroa.10.0.i.i.i.i.i, %bb.x ]
  %i.dk = phi i64 [ %i.dz, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i ], [ 1, %bb.x ] ; 5 uses
  %.val41920.i.i.i.i.i.i = phi ptr [ %i.dl, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i ], [ %i.ck, %bb.x ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2524)
  call void @llvm.experimental.noalias.scope.decl(metadata !2527)
  call void @llvm.experimental.noalias.scope.decl(metadata !2530)
  %i.dl = getelementptr inbounds nuw i8, ptr %.val41920.i.i.i.i.i.i, i64 24 ; 6 uses
  %.sroa.0.0.copyload1.i.i.i.i.i.i.i = load i64, ptr %.val41920.i.i.i.i.i.i, align 8, !noalias !2533 ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.loopexit.i.i, label %bb.y

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i: ; preds = %bb.ac, %bb.ab
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapNtNtCsaKJjC64KgbL_3std3env6ArgsOsNCINvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB1O_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE12try_completeNtNtNtB1d_3ffi6os_str8OsStringB19_E0EECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.as) #28, !noalias !2535
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.at) #28, !noalias !2512
  br label %.body.i.i

bb.y:                                             ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val41920.i.i.i.i.i.i, i64 8
  %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i, align 8, !noalias !2536 ; 3 uses
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val41920.i.i.i.i.i.i, i64 16
  %.sroa.6.sroa.5.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i.i.i, align 8, !noalias !2536
  %i.dm = icmp samesign ult i64 %i.dk, 384307168202282326
  call void @llvm.assume(i1 %i.dm)
  %i.dn = load i64, ptr %i.at, align 8, !range !23, !alias.scope !2537, !noalias !2538, !noundef !25
  %i.do = icmp eq i64 %i.dk, %i.dn
  br i1 %i.do, label %bb.ad, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i

_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.loopexit.i.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i
  %.pre.i.i = ptrtoint ptr %i.dl to i64
  %.pre33.i.i = sub nuw i64 %i.db, %.pre.i.i
  %.pre35.i.i = udiv exact i64 %.pre33.i.i, 24
  br label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i.i

_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i.i: ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.loopexit.i.i, %bb.x
  %.pre-phi36.i.i = phi i64 [ %.pre35.i.i, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.loopexit.i.i ], [ 0, %bb.x ]
  %.val.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dl, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.loopexit.i.i ], [ %i.ck, %bb.x ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2539)
  %i.dp = icmp eq ptr %.sroa.6.0.copyload.i, %.val.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.dp, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dr, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %i.dq = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.dr = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.dq, align 8, !range !23, !alias.scope !2542, !noalias !2545, !noundef !25 ; 2 uses
  %i.ds = icmp eq i64 %.val8.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ds, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dt = getelementptr i8, ptr %i.dq, i64 8
  %.val9.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.dt, align 8, !alias.scope !2539, !noalias !2545, !nonnull !25, !noundef !25
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2556
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.z, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.du = icmp eq i64 %i.dr, %.pre-phi36.i.i
  br i1 %i.du, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i.i
  %i.dv = icmp eq i64 %.sroa.5.0.copyload.i, 0
  br i1 %i.dv, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCINvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB39_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE12try_completeBR_B2J_E0EE11spec_extendCs6SXwsBSuFuw_4just.exit.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.dw = mul nuw i64 %.sroa.5.0.copyload.i, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.020.0.copyload.i, i64 noundef %i.dw, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !2545
  br label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCINvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB39_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE12try_completeBR_B2J_E0EE11spec_extendCs6SXwsBSuFuw_4just.exit.i.i.i.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i: ; preds = %._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs6SXwsBSuFuw_4just.exit.i.i_crit_edge.i.i.i.i, %bb.y
  %i.dx = phi ptr [ %.pre.i.i.i.i, %._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs6SXwsBSuFuw_4just.exit.i.i_crit_edge.i.i.i.i ], [ %i.dj, %bb.y ] ; 2 uses
  %i.dy = getelementptr inbounds nuw [24 x i8], ptr %i.dx, i64 %i.dk ; 3 uses
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i, ptr %i.dy, align 8, !noalias !2559
  %.sroa.410.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i, ptr %.sroa.410.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !2559
  %.sroa.511.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  store i64 %.sroa.6.sroa.5.0.copyload.i.i.i.i.i.i, ptr %.sroa.511.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !2559
  %i.dz = add nuw nsw i64 %i.dk, 1                ; 2 uses
  store i64 %i.dz, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2537, !noalias !2538
  %i.ea = icmp eq ptr %i.dl, %.sroa.6.0.copyload.i
  br i1 %i.ea, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.loopexit.i.i, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.ad
  %i.eb = landingpad { ptr, i32 }
          cleanup
  store ptr %i.dl, ptr %.sroa.6.0..sroa_idx13.i.i, align 8, !alias.scope !2560, !noalias !2561
  %i.ec = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i, 0
  br i1 %i.ec, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload1.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2564
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.y
  %i.ed = ptrtoint ptr %i.dl to i64
  %i.ee = sub nuw i64 %i.db, %i.ed
  %i.ef = udiv exact i64 %i.ee, 24
  %i.eg = add nuw nsw i64 %i.ef, 1
  invoke fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at, i64 noundef %i.dk, i64 noundef %i.eg, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs6SXwsBSuFuw_4just.exit.i.i_crit_edge.i.i.i.i unwind label %bb.ab, !noalias !2567

._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs6SXwsBSuFuw_4just.exit.i.i_crit_edge.i.i.i.i: ; preds = %bb.ad
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2537, !noalias !2538
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCINvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB39_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE12try_completeBR_B2J_E0EE11spec_extendCs6SXwsBSuFuw_4just.exit.i.i.i.i: ; preds = %bb.aa, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !2471
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false), !noalias !2483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !2471
  br label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtB10_3env6ArgsOsNCINvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB3f_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE12try_completeBU_B2O_E0EE9from_iterCs6SXwsBSuFuw_4just.exit.i.i

bb.ae:                                            ; preds = %bb.u, %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !2568), !noalias !2468
  %i.eh = icmp eq ptr %.sroa.6.0.copyload.i, %i.ck
  br i1 %i.eh, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.ae, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ej, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i ], [ 0, %bb.ae ] ; 2 uses
  %i.ei = getelementptr inbounds nuw [24 x i8], ptr %i.ck, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ej = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ei, align 8, !range !23, !alias.scope !2571, !noalias !2574, !noundef !25 ; 2 uses
  %i.ek = icmp eq i64 %.val8.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ek, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.el = getelementptr i8, ptr %i.ei, i64 8
  %.val9.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.el, align 8, !alias.scope !2568, !noalias !2574, !nonnull !25, !noundef !25
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2585
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.af, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.em = icmp eq i64 %i.ej, %i.de
  br i1 %i.em, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i, %bb.ae
  %i.en = icmp eq i64 %.sroa.5.0.copyload.i, 0
  br i1 %i.en, label %.body.i.i, label %bb.ag

bb.ag:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.020.0.copyload.i) ]
  %i.eo = mul nuw i64 %.sroa.5.0.copyload.i, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.020.0.copyload.i, i64 noundef %i.eo, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !2574
  br label %.body.i.i

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtB10_3env6ArgsOsNCINvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB3f_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE12try_completeBU_B2O_E0EE9from_iterCs6SXwsBSuFuw_4just.exit.i.i: ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCINvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB39_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE12try_completeBR_B2J_E0EE11spec_extendCs6SXwsBSuFuw_4just.exit.i.i.i.i, %bb.s, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2588)
  call void @llvm.experimental.noalias.scope.decl(metadata !2591)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !2593
  %i.ep = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.eq = load ptr, ptr %i.ep, align 8, !alias.scope !2588, !noalias !2596, !nonnull !25, !noundef !25 ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  %i.es = load i64, ptr %i.er, align 8, !alias.scope !2588, !noalias !2596, !noundef !25 ; 4 uses
  invoke void @_RNvNtNtNtCsaKJjC64KgbL_3std3sys3env4unix6getenv(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ar, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eq, i64 noundef %i.es)
          to label %_RINvNtCsaKJjC64KgbL_3std3env6var_osReECs6SXwsBSuFuw_4just.exit.i.i.i unwind label %.thread.i.i.i, !noalias !2597

bb.ah:                                            ; preds = %bb.al, %bb.ak
  %i.et = trunc nuw i8 %.sroa.021.2.i.i.i to i1
  br i1 %i.et, label %bb.dv, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs6SXwsBSuFuw_4just.exit.i.i

.thread.i.i.i:                                    ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtB10_3env6ArgsOsNCINvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB3f_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE12try_completeBU_B2O_E0EE9from_iterCs6SXwsBSuFuw_4just.exit.i.i
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.dv

_RINvNtCsaKJjC64KgbL_3std3env6var_osReECs6SXwsBSuFuw_4just.exit.i.i.i: ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtB10_3env6ArgsOsNCINvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB3f_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE12try_completeBU_B2O_E0EE9from_iterCs6SXwsBSuFuw_4just.exit.i.i
  %i.ev = load i64, ptr %i.ar, align 8, !range !95, !noalias !2593, !noundef !25 ; 9 uses
  %.not.i.i.i = icmp eq i64 %i.ev, -1
  br i1 %.not.i.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_RINvNtCsaKJjC64KgbL_3std3env6var_osReECs6SXwsBSuFuw_4just.exit.i.i.i
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.9.0.copyload.i.i.i = load ptr, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8, !noalias !2593 ; 10 uses
  %.sroa.15.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.15.0.copyload.i.i.i = load i64, ptr %.sroa.15.0..sroa_idx.i.i.i, align 8, !noalias !2593 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !2593
  switch i64 %.sroa.15.0.copyload.i.i.i, label %_RNvXsb_NtNtCsaKJjC64KgbL_3std3ffi6os_strNtB5_8OsStringINtNtCsj6eKBz9Db1c_4core3cmp9PartialEqReE2eq.exit.thread.i.i.i [
    i64 0, label %bb.dt
    i64 1, label %_RNvXsb_NtNtCsaKJjC64KgbL_3std3ffi6os_strNtB5_8OsStringINtNtCsj6eKBz9Db1c_4core3cmp9PartialEqReE2eq.exit.i.i.i
  ]

bb.aj:                                            ; preds = %_RINvNtCsaKJjC64KgbL_3std3env6var_osReECs6SXwsBSuFuw_4just.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !2593
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit97.i.i.i

bb.ak:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit96.i.i.i, %bb.am
  %.pn33.i.i.i = phi { ptr, i32 } [ %i.ex, %bb.am ], [ %.pn.pn.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit96.i.i.i ] ; 2 uses
  %.sroa.021.2.i.i.i = phi i8 [ %.sroa.021.3.i.i.i, %bb.am ], [ %.sroa.021.4.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit96.i.i.i ]
  %i.ew = icmp eq i64 %i.ev, 0
  br i1 %i.ew, label %bb.ah, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload.i.i.i) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.0.copyload.i.i.i, i64 noundef %i.ev, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2598
  br label %bb.ah

bb.am:                                            ; preds = %bb.aq, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit74.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit70.i.i.i, %bb.ar, %bb.ao, %bb.an, %_RNvXsb_NtNtCsaKJjC64KgbL_3std3ffi6os_strNtB5_8OsStringINtNtCsj6eKBz9Db1c_4core3cmp9PartialEqReE2eq.exit.thread.i.i.i
  %.sroa.021.3.i.i.i = phi i8 [ 1, %bb.aq ], [ %.sroa.021.9.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit74.i.i.i ], [ %.sroa.021.8.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit70.i.i.i ], [ 1, %bb.ar ], [ 1, %bb.ao ], [ 1, %bb.an ], [ 1, %_RNvXsb_NtNtCsaKJjC64KgbL_3std3ffi6os_strNtB5_8OsStringINtNtCsj6eKBz9Db1c_4core3cmp9PartialEqReE2eq.exit.thread.i.i.i ]
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

_RNvXsb_NtNtCsaKJjC64KgbL_3std3ffi6os_strNtB5_8OsStringINtNtCsj6eKBz9Db1c_4core3cmp9PartialEqReE2eq.exit.i.i.i: ; preds = %bb.ai
end_hunk_0
begin_hunk_1_@_RNvCs6SXwsBSuFuw_4just4main:bb.a

bb.dy:                                            ; preds = %.body.i.i
  %i.le = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.val5.i.i = load ptr, ptr %i.le, align 8, !alias.scope !2805, !noalias !2808, !nonnull !25, !noundef !25
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i, i64 noundef %.val4.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2809
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit.i.i: ; preds = %bb.dy, %.body.i.i
  %i.lf = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %.val.i.i = load i64, ptr %i.lf, align 8, !range !95, !alias.scope !2805, !noalias !2808, !noundef !25 ; 2 uses
  %i.lg = icmp sgt i64 %.val.i.i, 0
  br i1 %i.lg, label %bb.dz, label %.body.i

bb.dz:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit.i.i
  %i.lh = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %.val1.i.i = load ptr, ptr %i.lh, align 8, !alias.scope !2805, !noalias !2808, !nonnull !25, !noundef !25
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2814
  br label %.body.i

bb.ea:                                            ; preds = %bb.eh
  %i.li = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.eg, %bb.ea, %bb.dz, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit.i.i, %bb.dh, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %.pn16.i.i.i.i, %bb.dz ], [ %.pn37.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit.i.i.i ], [ %.pn37.i.i.i, %bb.dh ], [ %.pn16.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit.i.i ], [ %i.li, %bb.ea ], [ %i.lk, %bb.eg ] ; 2 uses
  %i.lj = icmp sgt i64 %i.bz, 0
  br i1 %i.lj, label %bb.eb, label %common.resume

bb.eb:                                            ; preds = %.body.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.038.i) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.038.i, i64 noundef %i.bz, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2819
  br label %common.resume

bb.ec:                                            ; preds = %bb.do, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !2458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !2458
  br i1 %.sroa.018.2.i, label %bb.ed, label %.critedge.i

bb.ed:                                            ; preds = %bb.ec
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1719.2.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !2452
  store ptr %.sroa.1719.2.i, ptr %i.ae, align 8, !noalias !2822
  invoke fastcc void @_RNvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB2_5Error4exitCs6SXwsBSuFuw_4just(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae) #27
          to label %bb.ef unwind label %bb.ee, !noalias !2452

bb.ee:                                            ; preds = %bb.ed
  %i.lk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs2FJGJNE9lTN_12clap_builder5error10ErrorInnerECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(256) %.sroa.1719.2.i)
          to label %bb.eg unwind label %.body.i12.i, !noalias !2452

.body.i12.i:                                      ; preds = %bb.ee
  %i.ll = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %.sroa.1719.2.i, i64 noundef 256, i64 noundef 8) #26, !noalias !2452
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !2452
  unreachable

bb.ef:                                            ; preds = %bb.ed
  unreachable

bb.eg:                                            ; preds = %bb.ee
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %.sroa.1719.2.i, i64 noundef 256, i64 noundef 8) #26, !noalias !2452
  br label %.body.i

.critedge.i:                                      ; preds = %bb.ec
  %i.lm = icmp sgt i64 %i.bz, 0
  br i1 %i.lm, label %.critedge.thread.i, label %_RNvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB4_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE8completeCs6SXwsBSuFuw_4just.exit

.critedge.thread.i:                               ; preds = %.critedge.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.038.i) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.038.i, i64 noundef %i.bz, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2825
  br label %_RNvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB4_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE8completeCs6SXwsBSuFuw_4just.exit

bb.eh:                                            ; preds = %bb.df, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit81.i.i.i
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgYJ0xFPoqCG_13clap_complete3env11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(80) %i.av), !noalias !2601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !2458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !2458
  invoke void @_RNvNtCsaKJjC64KgbL_3std7process4exit(i32 noundef 0) #27
          to label %bb.ei unwind label %bb.ea, !noalias !2452

bb.ei:                                            ; preds = %bb.eh
  unreachable

bb.ej:                                            ; preds = %bb.o, %bb.j
  %i.ln = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std3env6ArgsOsECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ay) #28, !noalias !2452
  br label %bb.ek

common.resume:                                    ; preds = %.body.i.i.i15, %.body6.i.i, %bb.il, %bb.in, %bb.it, %.body.i33, %bb.jv, %.body.i, %bb.eb, %bb.ek
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %.pn.pn.ph.i, %bb.ek ], [ %eh.lpad-body.i, %bb.eb ], [ %i.xp, %bb.in ], [ %eh.lpad-body7.i.i, %.body6.i.i ], [ %eh.lpad-body.i.i.i16, %.body.i.i.i15 ], [ %lpad.thr_comm.split-lp.i.i, %bb.il ], [ %i.xz, %bb.it ], [ %eh.lpad-body.i34, %.body.i33 ], [ %i.zp, %bb.jv ]
  resume { ptr, i32 } %common.resume.op

bb.ek:                                            ; preds = %bb.ej, %bb.i
  %.pn.pn.ph.i = phi { ptr, i32 } [ %i.by, %bb.i ], [ %i.ln, %bb.ej ]
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgYJ0xFPoqCG_13clap_complete3env11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(80) %i.ba) #28
  br label %common.resume

_RNvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB4_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE8completeCs6SXwsBSuFuw_4just.exit: ; preds = %.critedge.i, %.critedge.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !2452
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @_RNvNtCsaKJjC64KgbL_3std3env7args_os(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.az)
  call void @llvm.experimental.noalias.scope.decl(metadata !2828)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
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
          to label %bb.el unwind label %bb.il, !noalias !2836

bb.el:                                            ; preds = %_RNvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB4_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE8completeCs6SXwsBSuFuw_4just.exit
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
  %i.lo = icmp eq ptr %.sroa.4.0.copyload.i.i, %.sroa.6.0.copyload.i.i
  br i1 %i.lo, label %bb.em, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i.i

_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i.i: ; preds = %bb.el
  %i.lp = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i.i, i64 24 ; 7 uses
  %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0.copyload.i.i, align 8, !noalias !2860 ; 4 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.em, label %bb.er

bb.em:                                            ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i.i, %bb.el
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.lp, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i.i ], [ %.sroa.4.0.copyload.i.i, %bb.el ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2852
  %i.lq = ptrtoint ptr %.sroa.6.0.copyload.i.i to i64
  %i.lr = ptrtoint ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ls = sub nuw i64 %i.lq, %i.lr
  %i.lt = udiv exact i64 %i.ls, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !2868)
  %i.lu = icmp eq ptr %.sroa.6.0.copyload.i.i, %.val.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.lu, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.em, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.lw, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.em ] ; 2 uses
  %i.lv = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.lw = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.lv, align 8, !range !23, !alias.scope !2871, !noalias !2874, !noundef !25 ; 2 uses
  %i.lx = icmp eq i64 %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.lx, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.en

bb.en:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ly = getelementptr i8, ptr %i.lv, i64 8
  %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ly, align 8, !alias.scope !2868, !noalias !2874, !nonnull !25, !noundef !25
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2885
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.en, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.lz = icmp eq i64 %i.lw, %i.lt
  br i1 %i.lz, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.em
  %i.ma = icmp eq i64 %.sroa.5.0.copyload.i.i, 0
  br i1 %i.ma, label %bb.fg, label %bb.eo

bb.eo:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i) ]
  %i.mb = mul nuw i64 %.sroa.5.0.copyload.i.i, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.copyload.i.i, i64 noundef %i.mb, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !2874
  br label %bb.fg

bb.ep:                                            ; preds = %bb.es
  %i.mc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.md = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i, 0
  br i1 %i.md, label %bb.fa, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i.i) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2888
  br label %bb.fa

bb.er:                                            ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i.i
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i.i, i64 8
  %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i.i, align 8, !noalias !2891 ; 3 uses
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i.i, i64 16
  %.sroa.6.sroa.5.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !2891
  %i.me = ptrtoint ptr %.sroa.6.0.copyload.i.i to i64 ; 3 uses
  %i.mf = ptrtoint ptr %i.lp to i64
  %i.mg = sub nuw i64 %i.me, %i.mf                ; 2 uses
  %i.mh = udiv exact i64 %i.mg, 24                ; 2 uses
  %i.mi = call i64 @llvm.umax.i64(i64 %i.mh, i64 3) ; 2 uses
  %..i.i.i.i.i.i.i.i = add nuw nsw i64 %i.mi, 1   ; 2 uses
  %4 = mul i64 %..i.i.i.i.i.i.i.i, 24             ; 3 uses
  %or.cond.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.mg, 9223372036854775776
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.es, label %5, !prof !2508

5:                                                ; preds = %bb.er
  %6 = icmp eq i64 %4, 0
  br i1 %6, label %bb.et, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i: ; preds = %5
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !2892
  %i.mj = call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %4, i64 noundef range(i64 1, 9) 8) #26, !noalias !2892 ; 2 uses
  %i.mk = icmp eq ptr %i.mj, null
  br i1 %i.mk, label %bb.es, label %bb.et

bb.es:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i, %bb.er
  %.sroa.10.0.ph.i.i.i.i.i.i.i.i = phi i64 [ %4, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i ], [ undef, %bb.er ]
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i = phi i64 [ 8, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i ], [ 0, %bb.er ]
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i, i64 %.sroa.10.0.ph.i.i.i.i.i.i.i.i) #27
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.ep, !noalias !2852

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.es
  unreachable

bb.et:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i, %5
  %.sroa.10.0.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %5 ], [ %i.mj, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.4.0.i.i.i.i.i.i.i.i = phi i64 [ 0, %5 ], [ %..i.i.i.i.i.i.i.i, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %7 = icmp samesign ult i64 %i.mi, %.sroa.4.0.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 %7)
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
  %i.ml = icmp eq ptr %i.lp, %.sroa.6.0.copyload.i.i
  br i1 %i.ml, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i.i.i.i.i, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i.i.i.i

_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.et, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i
  %i.mm = phi ptr [ %i.na, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i ], [ %.sroa.10.0.i.i.i.i.i.i.i.i, %bb.et ]
  %i.mn = phi i64 [ %i.nc, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i ], [ 1, %bb.et ] ; 6 uses
  %.val41920.i.i.i.i.i.i.i.i.i = phi ptr [ %i.mo, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i ], [ %i.lp, %bb.et ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2906)
  call void @llvm.experimental.noalias.scope.decl(metadata !2909)
  call void @llvm.experimental.noalias.scope.decl(metadata !2912)
  %i.mo = getelementptr inbounds nuw i8, ptr %.val41920.i.i.i.i.i.i.i.i.i, i64 24 ; 6 uses
  %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.val41920.i.i.i.i.i.i.i.i.i, align 8, !noalias !2915 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.loopexit.i.i.i.i.i, label %bb.eu

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i40: ; preds = %bb.ey, %bb.ex
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapNtNtCsaKJjC64KgbL_3std3env6ArgsOsNCNvXs_CsgIMNuTmDvdf_8clap_lexNtB1N_7RawArgsINtNtB4_7convert4FromB19_E4from0EECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.o) #28, !noalias !2917
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #28, !noalias !2852
  br label %.body.i.i.i15

bb.eu:                                            ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val41920.i.i.i.i.i.i.i.i.i, i64 8
  %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !2918 ; 3 uses
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val41920.i.i.i.i.i.i.i.i.i, i64 16
  %.sroa.6.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !2918
  %i.mp = icmp samesign ult i64 %i.mn, 384307168202282326
  call void @llvm.assume(i1 %i.mp)
  %i.mq = load i64, ptr %i.p, align 8, !range !23, !alias.scope !2919, !noalias !2920, !noundef !25
  %i.mr = icmp eq i64 %i.mn, %i.mq
  br i1 %i.mr, label %bb.ez, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i

_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.loopexit.i.i.i.i.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.6.0.copyload524.i.i.i.i.i = phi i64 [ %i.mn, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.nc, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i ]
  %.pre.i.i.i.i.i = ptrtoint ptr %i.mo to i64
  %.pre26.i.i.i.i.i = sub nuw i64 %i.me, %.pre.i.i.i.i.i
  %.pre28.i.i.i.i.i = udiv exact i64 %.pre26.i.i.i.i.i, 24
  br label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i.i.i.i.i

_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.loopexit.i.i.i.i.i, %bb.et
  %.pre-phi29.i.i.i.i.i = phi i64 [ %.pre28.i.i.i.i.i, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.loopexit.i.i.i.i.i ], [ 0, %bb.et ]
  %.sroa.6.0.copyload5.i.i.i.i.i = phi i64 [ %.sroa.6.0.copyload524.i.i.i.i.i, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.loopexit.i.i.i.i.i ], [ 1, %bb.et ]
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.mo, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.loopexit.i.i.i.i.i ], [ %i.lp, %bb.et ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2921)
  %i.ms = icmp eq ptr %.sroa.6.0.copyload.i.i, %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.ms, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.mu, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.mt = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.mu = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.mt, align 8, !range !23, !alias.scope !2924, !noalias !2927, !noundef !25 ; 2 uses
  %i.mv = icmp eq i64 %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.mv, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ev

bb.ev:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mw = getelementptr i8, ptr %i.mt, i64 8
  %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.mw, align 8, !alias.scope !2921, !noalias !2927, !nonnull !25, !noundef !25
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2938
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ev, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mx = icmp eq i64 %i.mu, %.pre-phi29.i.i.i.i.i
  br i1 %i.mx, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i.i.i.i.i
  %i.my = icmp eq i64 %.sroa.5.0.copyload.i.i, 0
  br i1 %i.my, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_CsgIMNuTmDvdf_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i, label %bb.ew

bb.ew:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mz = mul nuw i64 %.sroa.5.0.copyload.i.i, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.copyload.i.i, i64 noundef %i.mz, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !2927
  br label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_CsgIMNuTmDvdf_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i: ; preds = %._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs6SXwsBSuFuw_4just.exit.i.i_crit_edge.i.i.i.i.i.i.i, %bb.eu
  %i.na = phi ptr [ %.pre.i.i.i.i.i.i.i, %._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs6SXwsBSuFuw_4just.exit.i.i_crit_edge.i.i.i.i.i.i.i ], [ %i.mm, %bb.eu ] ; 2 uses
  %i.nb = getelementptr inbounds nuw [24 x i8], ptr %i.na, i64 %i.mn ; 3 uses
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i.i, ptr %i.nb, align 8, !noalias !2941
  %.sroa.410.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  store ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, ptr %.sroa.410.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !2941
  %.sroa.511.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.nb, i64 16
  store i64 %.sroa.6.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i, ptr %.sroa.511.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !2941
  %i.nc = add nuw nsw i64 %i.mn, 1                ; 3 uses
  store i64 %i.nc, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !2919, !noalias !2920
  %i.nd = icmp eq ptr %i.mo, %.sroa.6.0.copyload.i.i
  br i1 %i.nd, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.loopexit.i.i.i.i.i, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i.i.i.i

bb.ex:                                            ; preds = %bb.ez
  %i.ne = landingpad { ptr, i32 }
          cleanup
  store ptr %i.mo, ptr %.sroa.69.0..sroa_idx10.i.i.i.i.i, align 8, !alias.scope !2942, !noalias !2943
  %i.nf = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.nf, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i40, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2946
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i40

bb.ez:                                            ; preds = %bb.eu
  %i.ng = ptrtoint ptr %i.mo to i64
  %i.nh = sub nuw i64 %i.me, %i.ng
  %i.ni = udiv exact i64 %i.nh, 24
  %i.nj = add nuw nsw i64 %i.ni, 1
  invoke fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef %i.mn, i64 noundef %i.nj, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs6SXwsBSuFuw_4just.exit.i.i_crit_edge.i.i.i.i.i.i.i unwind label %bb.ex, !noalias !2920

._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs6SXwsBSuFuw_4just.exit.i.i_crit_edge.i.i.i.i.i.i.i: ; preds = %bb.ez
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !2919, !noalias !2920
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_CsgIMNuTmDvdf_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i: ; preds = %bb.ew, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2852
  %.sroa.0.0.copyload1.i.i.i.i.i13 = load i64, ptr %i.p, align 8, !noalias !2949
  %.sroa.5.0.copyload3.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !2949
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2852
  br label %bb.fg

bb.fa:                                            ; preds = %bb.eq, %bb.ep
  call void @llvm.experimental.noalias.scope.decl(metadata !2950), !noalias !2953
  %i.nk = icmp eq ptr %.sroa.6.0.copyload.i.i, %i.lp
  br i1 %i.nk, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i46, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i41

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i41:                 ; preds = %bb.fa, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i45
  %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i42 = phi i64 [ %i.nm, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i45 ], [ 0, %bb.fa ] ; 2 uses
  %i.nl = getelementptr inbounds nuw [24 x i8], ptr %i.lp, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i42 ; 2 uses
  %i.nm = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i42, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i.i.i.i.i43 = load i64, ptr %i.nl, align 8, !range !23, !alias.scope !2954, !noalias !2957, !noundef !25 ; 2 uses
  %i.nn = icmp eq i64 %.val8.i.i.i.i.i.i.i.i.i.i.i.i43, 0
  br i1 %i.nn, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i45, label %bb.fb

bb.fb:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i41
  %i.no = getelementptr i8, ptr %i.nl, i64 8
  %.val9.i.i.i.i.i.i.i.i.i.i.i.i44 = load ptr, ptr %i.no, align 8, !alias.scope !2950, !noalias !2957, !nonnull !25, !noundef !25
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i.i.i.i.i44, i64 noundef %.val8.i.i.i.i.i.i.i.i.i.i.i.i43, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2968
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i45

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i45: ; preds = %bb.fb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i41
  %i.np = icmp eq i64 %i.nm, %i.mh
  br i1 %i.np, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i46, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i41

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i46: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i45, %bb.fa
  %i.nq = icmp eq i64 %.sroa.5.0.copyload.i.i, 0
  br i1 %i.nq, label %.body.i.i.i15, label %bb.fc

bb.fc:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i46
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i) ]
  %i.nr = mul nuw i64 %.sroa.5.0.copyload.i.i, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.copyload.i.i, i64 noundef %i.nr, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !2957
  br label %.body.i.i.i15

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit.i.i.i.i: ; preds = %bb.gu, %.body.i.i.i.i, %bb.ff
  %.pn56.i.i.i.i = phi { ptr, i32 } [ %i.oa, %bb.ff ], [ %.pn.i.i.i.i, %bb.gu ], [ %.pn.i.i.i.i, %.body.i.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2971)
  call void @llvm.experimental.noalias.scope.decl(metadata !2974), !noalias !2977
  %.val4.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !2978, !noalias !2979, !nonnull !25, !noundef !25 ; 2 uses
  %.val5.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !2978, !noalias !2979, !noundef !25 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2980), !noalias !2977
  %i.ns = icmp eq i64 %.val5.i.i.i.i.i, 0
  br i1 %i.ns, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i.i.i = phi i64 [ %i.nu, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit.i.i.i.i ] ; 2 uses
  %i.nt = getelementptr inbounds nuw [24 x i8], ptr %.val4.i.i.i.i.i, i64 %.sroa.0.011.i.i.i.i.i.i.i ; 2 uses
  %i.nu = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i = load i64, ptr %i.nt, align 8, !range !23, !alias.scope !2983, !noalias !2986, !noundef !25 ; 2 uses
  %i.nv = icmp eq i64 %.val8.i.i.i.i.i.i.i, 0
  br i1 %i.nv, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i, label %bb.fd

bb.fd:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.nw = getelementptr i8, ptr %i.nt, i64 8
  %.val9.i.i.i.i.i.i.i = load ptr, ptr %i.nw, align 8, !alias.scope !2980, !noalias !2986, !nonnull !25, !noundef !25
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2987
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i: ; preds = %bb.fd, %.lr.ph.i.i.i.i.i.i.i
  %i.nx = icmp eq i64 %i.nu, %.val5.i.i.i.i.i
  br i1 %i.nx, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit.i.i.i.i
  %.val.i.i.i.i.i = load i64, ptr %i.s, align 8, !range !23, !alias.scope !2978, !noalias !2979, !noundef !25 ; 2 uses
  %i.ny = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.ny, label %.body.i.i.i15, label %bb.fe

bb.fe:                                            ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i.i.i
  %i.nz = mul nuw i64 %.val.i.i.i.i.i, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i.i.i, i64 noundef %i.nz, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !2986
  br label %.body.i.i.i15

bb.ff:                                            ; preds = %.invoke.i.i.i.i, %bb.hh, %bb.hf, %bb.he, %bb.fk, %bb.fi
  %i.oa = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit.i.i.i.i

bb.fg:                                            ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_CsgIMNuTmDvdf_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i, %bb.eo, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.6.0.i.i.i.i.i = phi i64 [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.eo ], [ %.sroa.6.0.copyload5.i.i.i.i.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_CsgIMNuTmDvdf_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.5.0.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ inttoptr (i64 8 to ptr), %bb.eo ], [ %.sroa.5.0.copyload3.i.i.i.i.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_CsgIMNuTmDvdf_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i = phi i64 [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.eo ], [ %.sroa.0.0.copyload1.i.i.i.i.i13, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_CsgIMNuTmDvdf_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i ]
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %i.s, align 8, !alias.scope !2849, !noalias !2990
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 8 uses
  store ptr %.sroa.5.0.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !2849, !noalias !2990
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 10 uses
  store i64 %.sroa.6.0.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !2849, !noalias !2990
  %i.ob = getelementptr inbounds nuw i8, ptr %i.t, i64 748
  %.val62.i.i.i.i = load i32, ptr %i.ob, align 4, !alias.scope !2991, !noalias !2992, !noundef !25 ; 2 uses
  %i.oc = and i32 %.val62.i.i.i.i, 2048
end_hunk_1
begin_hunk_2_@_RNvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB2_5Error5printCs6SXwsBSuFuw_4just:bb.a
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
  br i1 %i.l, label %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder7builder3extNtB3_10Extensions3getNtNtB5_7styling6StylesECs6SXwsBSuFuw_4just.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.01.i.i35 = phi ptr [ %i.j, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %.sroa.8.0.i.i34 = phi i64 [ %i.k, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %.val.i.i = load i128, ptr %.sroa.0.01.i.i35, align 8, !noalias !3334
  %i.m = icmp eq i128 %.val.i.i, 157895625981651112732266107629742924636
  br i1 %i.m, label %bb.c, label %bb.b

bb.c:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !3334, !noundef !25 ; 2 uses
  %i.p = icmp ult i64 %.sroa.8.0.i.i34, %i.o
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.0.i.i34, i64 noundef %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #30
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !3334, !nonnull !25, !noundef !25
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %.sroa.8.0.i.i34 ; 2 uses
  %.val5.i = load ptr, ptr %i.s, align 8, !noalias !3328, !nonnull !25, !noundef !25
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %.val6.i = load ptr, ptr %i.t, align 8, !noalias !3328, !nonnull !25, !align !136, !noundef !25 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !137, !invariant.load !25, !noalias !3328
  %i.w = add nsw i64 %i.v, -1
  %i.x = and i64 %i.w, -16
  %i.y = getelementptr inbounds nuw i8, ptr %.val5.i, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3328
  %i.aa = getelementptr inbounds nuw i8, ptr %.val6.i, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !invariant.load !25, !noalias !3328, !nonnull !25
  invoke void %i.ab(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.z) #32
          to label %.noexc23 unwind label %bb.g, !inline_history !3335

.noexc23:                                         ; preds = %bb.e
  %i.ac = load i128, ptr %i.a, align 16, !noalias !3328, !noundef !25
  %.not.i = icmp eq i128 %i.ac, 157895625981651112732266107629742924636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3328
  br i1 %.not.i, label %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder7builder3extNtB3_10Extensions3getNtNtB5_7styling6StylesECs6SXwsBSuFuw_4just.exit, label %bb.f, !prof !3336

bb.f:                                             ; preds = %.noexc23
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #30
          to label %.noexc24 unwind label %bb.g

.noexc24:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs2FJGJNE9lTN_12clap_builder5error5ErrorECs6SXwsBSuFuw_4just(ptr %0) #28
          to label %bb.m unwind label %bb.o

_RINvMNtNtCs2FJGJNE9lTN_12clap_builder7builder3extNtB3_10Extensions3getNtNtB5_7styling6StylesECs6SXwsBSuFuw_4just.exit: ; preds = %bb.b, %bb.a, %.noexc23
  %.sroa.0.0.i = phi ptr [ %i.z, %.noexc23 ], [ null, %bb.a ], [ null, %bb.b ] ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0.i, null
  %. = select i1 %.not, ptr @28, ptr %.sroa.0.0.i ; 9 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.c, ptr noundef nonnull align 2 dereferenceable(14) %., i64 14, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %., i64 14
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.af, ptr noundef nonnull align 2 dereferenceable(14) %i.ae, i64 14, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %., i64 28
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.ah, ptr noundef nonnull align 2 dereferenceable(14) %i.ag, i64 14, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %., i64 42
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.aj, ptr noundef nonnull align 2 dereferenceable(14) %i.ai, i64 14, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %., i64 56
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.al, ptr noundef nonnull align 2 dereferenceable(14) %i.ak, i64 14, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %., i64 70
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.an, ptr noundef nonnull align 2 dereferenceable(14) %i.am, i64 14, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %., i64 84
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.ap, ptr noundef nonnull align 2 dereferenceable(14) %i.ao, i64 14, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %., i64 98
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.ar, ptr noundef nonnull align 2 dereferenceable(14) %i.aq, i64 14, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %., i64 112
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.at, ptr noundef nonnull align 2 dereferenceable(14) %i.as, i64 14, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(126) %i.au, ptr noundef nonnull align 2 dereferenceable(126) %i.c, i64 126, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 748
  %i.aw = load i32, ptr %i.av, align 4, !noundef !25 ; 4 uses
  %i.ax = and i32 %i.aw, 536870912
  %.not14 = icmp eq i32 %i.ax, 0
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 752
  %i.az = load i32, ptr %i.ay, align 8            ; 4 uses
  %i.ba = and i32 %i.az, 536870912
  %.not15 = icmp eq i32 %i.ba, 0
  %or.cond = select i1 %.not14, i1 %.not15, i1 false
  %i.bb = or i32 %i.az, %i.aw
  %i.bc = lshr i32 %i.bb, 28
  %i.bd = trunc nuw nsw i32 %i.bc to i8
  %spec.select = and i8 %i.bd, 1
  %.sroa.09.0 = select i1 %or.cond, i8 %spec.select, i8 2
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 247
  store i8 %.sroa.09.0, ptr %i.be, align 1
  %i.bf = and i32 %i.aw, 262144
  %.not.i25 = icmp eq i32 %i.bf, 0
  %i.bg = and i32 %i.az, 262144
  %.not1.i = icmp eq i32 %i.bg, 0
  %or.cond1.i = select i1 %.not.i25, i1 %.not1.i, i1 false
  br i1 %or.cond1.i, label %bb.h, label %_RNvMs5_NtNtCs2FJGJNE9lTN_12clap_builder7builder7commandNtB5_7Command10color_help.exit

bb.h:                                             ; preds = %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder7builder3extNtB3_10Extensions3getNtNtB5_7styling6StylesECs6SXwsBSuFuw_4just.exit
  %i.bh = or i32 %i.az, %i.aw                     ; 2 uses
  %i.bi = and i32 %i.bh, 536870912
  %or.cond.i = icmp eq i32 %i.bi, 0
  br i1 %or.cond.i, label %bb.i, label %_RNvMs5_NtNtCs2FJGJNE9lTN_12clap_builder7builder7commandNtB5_7Command10color_help.exit

bb.i:                                             ; preds = %bb.h
  %i.bj = lshr i32 %i.bh, 28
  %i.bk = trunc nuw nsw i32 %i.bj to i8
  %spec.select.i = and i8 %i.bk, 1
  br label %_RNvMs5_NtNtCs2FJGJNE9lTN_12clap_builder7builder7commandNtB5_7Command10color_help.exit

_RNvMs5_NtNtCs2FJGJNE9lTN_12clap_builder7builder7commandNtB5_7Command10color_help.exit: ; preds = %bb.i, %bb.h, %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder7builder3extNtB3_10Extensions3getNtNtB5_7styling6StylesECs6SXwsBSuFuw_4just.exit
  %.sroa.0.0.i26 = phi i8 [ 2, %bb.h ], [ 2, %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder7builder3extNtB3_10Extensions3getNtNtB5_7styling6StylesECs6SXwsBSuFuw_4just.exit ], [ %spec.select.i, %bb.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i8 %.sroa.0.0.i26, ptr %i.bl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvNtNtCs2FJGJNE9lTN_12clap_builder5error6format13get_help_flag(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(760) %1)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %_RNvMs5_NtNtCs2FJGJNE9lTN_12clap_builder7builder7commandNtB5_7Command10color_help.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !3337)
  call void @llvm.experimental.noalias.scope.decl(metadata !3340)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.val.i = load i64, ptr %i.bm, align 8, !range !622, !alias.scope !3337, !noalias !3340, !noundef !25 ; 2 uses
  %i.bn = icmp sgt i64 %.val.i, 0
  br i1 %i.bn, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bo = getelementptr i8, ptr %0, i64 88
  %.val1.i = load ptr, ptr %i.bo, align 8, !alias.scope !3337, !noalias !3340, !nonnull !25, !noundef !25
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3342
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.b, i64 24, i1 false), !alias.scope !3347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %0

bb.m:                                             ; preds = %bb.g, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bp, %bb.n ], [ %i.ad, %bb.g ]
  resume { ptr, i32 } %.pn

bb.n:                                             ; preds = %_RNvMs5_NtNtCs2FJGJNE9lTN_12clap_builder7builder7commandNtB5_7Command10color_help.exit
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs2FJGJNE9lTN_12clap_builder5error5ErrorECs6SXwsBSuFuw_4just(ptr %0) #28
          to label %bb.m unwind label %bb.o

bb.o:                                             ; preds = %bb.g, %bb.n
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs6SXwsBSuFuw_4just(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 1, 25) %3) unnamed_addr #7 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %4 = extractvalue { i64, i1 } %i.a, 0           ; 7 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %4, %i.c
  %or.cond = select i1 %i.b, i1 true, i1 %.not, !prof !2508
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !2508

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %.0.val, 0
  br i1 %i.d, label %bb.c, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.e = mul nuw i64 %3, %.0.val                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.f = icmp uge i64 %4, %i.e
  tail call void @llvm.assume(i1 %i.f)
  %i.g = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.e, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 0, -9223372036854775808) %4) #26
  br label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %4, 0
  br i1 %i.h, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.i = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26
  %i.j = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %4, i64 noundef range(i64 1, 9) %2) #26
  br label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.g, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator4grow.exit ], [ %i.j, %bb.d ] ; 2 uses
  %i.k = icmp eq ptr %.pn8, null
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.l, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.i, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.m, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %4, %bb.e ], [ %4, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.n, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsz_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8IntoIterNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB7_7set_val9SetValZSTE10dying_nextCs6SXwsBSuFuw_4just(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !25 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3351)
  %.sroa.01.0.copyload.i.i = load i64, ptr %1, align 8, !alias.scope !3354, !noalias !3355
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !3354, !noalias !3355 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !3354, !noalias !3355 ; 5 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !3354, !noalias !3355 ; 5 uses
  store i64 0, ptr %1, align 8, !alias.scope !3354, !noalias !3355
  %i.d = trunc nuw i64 %.sroa.01.0.copyload.i.i to i1
  br i1 %i.d, label %bb.c, label %_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB8_7set_val9SetValZSTE16deallocating_endNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %.sroa.5.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.d, label %.loopexit.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload.i.i) ]
  %i.e = icmp eq i64 %.sroa.5.sroa.6.0.copyload.i.i, 0
  br i1 %i.e, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter51 = and i64 %.sroa.5.sroa.6.0.copyload.i.i, 7 ; 2 uses
  %lcmp.mod52.not = icmp eq i64 %xtraiter51, 0
  br i1 %lcmp.mod52.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.022.025.i.i.prol = phi ptr [ %i.g, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %.sroa.020.024.i.i.prol = phi i64 [ %i.h, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %prol.iter53 = phi i64 [ %prol.iter53.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i.prol, i64 280
  %i.g = load ptr, ptr %i.f, align 8, !noalias !3357, !nonnull !25, !noundef !25 ; 3 uses
  %i.h = add i64 %.sroa.020.024.i.i.prol, -1      ; 2 uses
  %prol.iter53.next = add i64 %prol.iter53, 1     ; 2 uses
  %prol.iter53.cmp.not = icmp eq i64 %prol.iter53.next, %xtraiter51
  br i1 %prol.iter53.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !3358

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa41.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.g, %.lr.ph.i.i.prol ]
  %.sroa.022.025.i.i.unr = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.g, %.lr.ph.i.i.prol ]
  %.sroa.020.024.i.i.unr = phi i64 [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.h, %.lr.ph.i.i.prol ]
  %i.i = icmp ult i64 %.sroa.5.sroa.6.0.copyload.i.i, 8
  br i1 %i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.022.025.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %.sroa.022.025.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.020.024.i.i = phi i64 [ %i.z, %.lr.ph.i.i ], [ %.sroa.020.024.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i, i64 280
  %i.k = load ptr, ptr %i.j, align 8, !noalias !3357, !nonnull !25, !noundef !25
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 280
  %i.m = load ptr, ptr %i.l, align 8, !noalias !3357, !nonnull !25, !noundef !25
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 280
  %i.o = load ptr, ptr %i.n, align 8, !noalias !3357, !nonnull !25, !noundef !25
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 280
  %i.q = load ptr, ptr %i.p, align 8, !noalias !3357, !nonnull !25, !noundef !25
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 280
  %i.s = load ptr, ptr %i.r, align 8, !noalias !3357, !nonnull !25, !noundef !25
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 280
  %i.u = load ptr, ptr %i.t, align 8, !noalias !3357, !nonnull !25, !noundef !25
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 280
  %i.w = load ptr, ptr %i.v, align 8, !noalias !3357, !nonnull !25, !noundef !25
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 280
  %i.y = load ptr, ptr %i.x, align 8, !noalias !3357, !nonnull !25, !noundef !25 ; 2 uses
  %i.z = add i64 %.sroa.020.024.i.i, -8           ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.loopexit.i, label %.lr.ph.i.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d, %bb.c
  %.sroa.8.0.ph.i = phi ptr [ null, %bb.d ], [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.c ], [ null, %.lr.ph.i.i ], [ null, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.0.0.ph.i = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.d ], [ %.sroa.5.sroa.0.0.copyload.i.i, %bb.c ], [ %.lcssa41.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.y, %.lr.ph.i.i ] ; 3 uses
  %i.ab = ptrtoint ptr %.sroa.8.0.ph.i to i64     ; 2 uses
  %i.ac = load ptr, ptr %.sroa.0.0.ph.i, align 8, !noalias !3360, !noundef !25 ; 2 uses
  %.not.i.i4.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i4.i.i, label %_RINvMsj_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB8_7set_val9SetValZSTNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit.i, label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %.loopexit.i, %.lr.ph.i2.i
  %i.ad = phi ptr [ %i.af, %.lr.ph.i2.i ], [ %i.ac, %.loopexit.i ] ; 3 uses
  %.sroa.0.06.i.i = phi ptr [ %i.ad, %.lr.ph.i2.i ], [ %.sroa.0.0.ph.i, %.loopexit.i ]
  %.sroa.3.05.i.i = phi i64 [ %i.ae, %.lr.ph.i2.i ], [ %i.ab, %.loopexit.i ] ; 2 uses
  %i.ae = add i64 %.sroa.3.05.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sroa.3.05.i.i, 0
  %..i.i.i = select i1 %.not.i.i.i, i64 280, i64 376
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.06.i.i, i64 noundef %..i.i.i, i64 noundef 8) #26, !noalias !3365
  %i.af = load ptr, ptr %i.ad, align 8, !noalias !3360, !noundef !25 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i, label %_RINvMsj_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB8_7set_val9SetValZSTNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit.i, label %.lr.ph.i2.i

_RINvMsj_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB8_7set_val9SetValZSTNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit.i: ; preds = %.lr.ph.i2.i, %.loopexit.i
  %.sroa.3.0.lcssa.i.i = phi i64 [ %i.ab, %.loopexit.i ], [ %i.ae, %.lr.ph.i2.i ]
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.0.0.ph.i, %.loopexit.i ], [ %i.ad, %.lr.ph.i2.i ]
  %.not.i2.i.i = icmp eq i64 %.sroa.3.0.lcssa.i.i, 0
  %..i3.i.i = select i1 %.not.i2.i.i, i64 280, i64 376
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa.i.i, i64 noundef %..i3.i.i, i64 noundef 8) #26, !noalias !3365
  br label %_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB8_7set_val9SetValZSTE16deallocating_endNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit

_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB8_7set_val9SetValZSTE16deallocating_endNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit: ; preds = %bb.b, %_RINvMsj_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB8_7set_val9SetValZSTNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit.i
  store ptr null, ptr %0, align 8
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  %i.ag = add i64 %i.b, -1
  store i64 %i.ag, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3366)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3369)
  %i.ah = load i64, ptr %1, align 8, !range !2426, !alias.scope !3372, !noalias !3373, !noundef !25
  %i.ai = trunc nuw i64 %i.ah to i1
  br i1 %i.ai, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !3372, !noalias !3373, !noundef !25 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.ak, null
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br i1 %.not.i.i1, label %bb.g, label %._RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB7_7set_val9SetValZSTE10init_frontCs6SXwsBSuFuw_4just.exit_crit_edge.i

._RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB7_7set_val9SetValZSTE10init_frontCs6SXwsBSuFuw_4just.exit_crit_edge.i: ; preds = %bb.f
  %.sroa.48.0.copyload.i.pre.i = load i64, ptr %i.al, align 8, !alias.scope !3375, !noalias !3378
  %.sroa.59.0..sroa_idx.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.59.0.copyload.i.pre.i = load i64, ptr %.sroa.59.0..sroa_idx.i.phi.trans.insert.i, align 8, !alias.scope !3375, !noalias !3378
  br label %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB7_7set_val9SetValZSTE10init_frontCs6SXwsBSuFuw_4just.exit.i

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !3372, !noalias !3373, !noundef !25 ; 5 uses
  %.sroa.013.015.i.i = load ptr, ptr %i.al, align 8, !alias.scope !3372, !noalias !3373, !nonnull !25, !noundef !25 ; 3 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %._crit_edge.i.i, label %.lr.ph.i.i2.preheader

.lr.ph.i.i2.preheader:                            ; preds = %bb.g
  %xtraiter = and i64 %i.an, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol

.lr.ph.i.i2.prol:                                 ; preds = %.lr.ph.i.i2.preheader, %.lr.ph.i.i2.prol
  %.sroa.013.017.i.i.prol = phi ptr [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ], [ %.sroa.013.015.i.i, %.lr.ph.i.i2.preheader ]
  %.sroa.011.016.i.i.prol = phi i64 [ %i.aq, %.lr.ph.i.i2.prol ], [ %i.an, %.lr.ph.i.i2.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i2.prol ], [ 0, %.lr.ph.i.i2.preheader ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.prol, i64 280
  %i.aq = add i64 %.sroa.011.016.i.i.prol, -1     ; 2 uses
  %.sroa.013.0.i.i.prol = load ptr, ptr %i.ap, align 8, !noalias !3380, !nonnull !25, !noundef !25 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol, !llvm.loop !3381

.lr.ph.i.i2.prol.loopexit:                        ; preds = %.lr.ph.i.i2.prol, %.lr.ph.i.i2.preheader
  %.sroa.013.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.013.017.i.i.unr = phi ptr [ %.sroa.013.015.i.i, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.011.016.i.i.unr = phi i64 [ %i.an, %.lr.ph.i.i2.preheader ], [ %i.aq, %.lr.ph.i.i2.prol ]
  %i.ar = icmp ult i64 %i.an, 8
  br i1 %i.ar, label %._crit_edge.i.i, label %.lr.ph.i.i2

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2, %bb.g
  %.sroa.013.0.lcssa.i.i = phi ptr [ %.sroa.013.015.i.i, %bb.g ], [ %.sroa.013.0.i.i.lcssa.unr, %.lr.ph.i.i2.prol.loopexit ], [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ]
end_hunk_2
