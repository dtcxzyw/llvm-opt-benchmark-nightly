Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/just-b5787c51d404debe.just.f4201053fadd6f59-cgu.0?download=true
inline.NumInlined: 27272
inline.NumDeleted: 11238
loop-unroll.NumCompletelyUnrolled: 122
loop-unroll.NumRuntimeUnrolled: 664
loop-unroll.NumUnrolled: 789
begin_hunk_0_@_RNvXs_NtCskXtk6F4WjxZ_4just6switchNtB4_6SwitchNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt:bb.a
  store ptr %i.g, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRcNtB6_7Display3fmtCskXtk6F4WjxZ_4just, ptr %.sroa.43.0..sroa_idx, align 8
  %i.h = load ptr, ptr %1, align 8, !nonnull !28, !noundef !28
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !28, !align !35, !noundef !28
  %i.k = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.j, ptr noundef nonnull @2810, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs4wP2HXfJTCR_5alloc6string6StringNtB6_7Display3fmtCskXtk6F4WjxZ_4just, ptr %.sroa.47.0..sroa_idx, align 8
  %i.l = load ptr, ptr %1, align 8, !nonnull !28, !noundef !28
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !28, !align !35, !noundef !28
  %i.o = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.n, ptr noundef nonnull @2811, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.0.1.in = phi i1 [ %i.k, %bb.b ], [ %i.o, %bb.c ]
  ret i1 %.sroa.0.1.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_RNvXs_NtCskXtk6F4WjxZ_4just7keywordNtB4_7KeywordINtNtCsj6eKBz9Db1c_4core3cmp9PartialEqReE2eq(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #49 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !122, !noundef !28 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs_NtCskXtk6F4WjxZ_4just7keywordNtB4_7KeywordINtNtCsj6eKBz9Db1c_4core3cmp9PartialEqReE2eq, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64       ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !28
  %i.e = icmp eq i64 %i.d, %switch.ext
  br i1 %i.e, label %bb.a, label %bb.b

bb.a:                                             ; preds = %switch.lookup
  %i.f = zext nneg i8 %i.a to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs_NtCskXtk6F4WjxZ_4just7keywordNtB4_7KeywordINtNtCsj6eKBz9Db1c_4core3cmp9PartialEqReE2eq.5098, i64 %i.f
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.g = load ptr, ptr %1, align 8, !nonnull !28, !noundef !28
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %switch.load2, ptr noundef nonnull dereferenceable(1) %i.g, i64 %switch.ext)
  %i.h = icmp eq i32 %bcmp, 0
  br label %bb.b

bb.b:                                             ; preds = %switch.lookup, %bb.a
  %.sroa.0.0 = phi i1 [ %i.h, %bb.a ], [ false, %switch.lookup ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtCskXtk6F4WjxZ_4just7settingNtB4_7SettingNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = load i8, ptr %0, align 8, !range !96, !noundef !28
  switch i8 %i.i, label %default.unreachable63 [
    i8 0, label %bb.c
    i8 1, label %bb.c
    i8 2, label %bb.c
    i8 3, label %bb.c
    i8 4, label %bb.d
    i8 5, label %bb.d
    i8 6, label %bb.c
    i8 7, label %bb.c
    i8 8, label %bb.d
    i8 9, label %bb.c
    i8 10, label %bb.c
    i8 11, label %bb.c
    i8 12, label %bb.c
    i8 13, label %bb.c
    i8 14, label %bb.e
    i8 15, label %bb.c
    i8 16, label %bb.c
    i8 17, label %bb.b
    i8 18, label %bb.c
    i8 19, label %bb.c
    i8 20, label %bb.c
    i8 21, label %bb.c
    i8 22, label %bb.g
    i8 23, label %bb.g
    i8 24, label %bb.d
    i8 25, label %bb.c
    i8 26, label %bb.c
    i8 27, label %bb.g
    i8 28, label %bb.d
  ]

default.unreachable63:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  br label %bb.e

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.j, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.h, ptr %i.g, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRbNtB6_7Display3fmtCskXtk6F4WjxZ_4just, ptr %.sroa.43.0..sroa_idx, align 8
  %i.k = load ptr, ptr %1, align 8, !nonnull !28, !noundef !28
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !28, !align !35, !noundef !28
  %i.n = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.m, ptr noundef nonnull @85, ptr noundef nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.f

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtB6_7Display3fmtBA_, ptr %.sroa.418.0..sroa_idx, align 8
  %i.p = load ptr, ptr %1, align 8, !nonnull !28, !noundef !28
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !28, !align !35, !noundef !28
  %i.s = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.r, ptr noundef nonnull @85, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.f

bb.e:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ 8, %bb.b ], [ 24, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  store ptr %i.t, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralNtB6_7Display3fmtBA_, ptr %.sroa.434.0..sroa_idx, align 8
  %i.u = load ptr, ptr %1, align 8, !nonnull !28, !noundef !28
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !28, !align !35, !noundef !28
  %i.x = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.w, ptr noundef nonnull @85, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.g, %bb.c, %bb.e
  %.sroa.0.1.in = phi i1 [ %i.n, %bb.c ], [ %i.s, %bb.d ], [ %i.x, %bb.e ], [ %i.ac, %bb.g ]
  ret i1 %.sroa.0.1.in

bb.g:                                             ; preds = %bb.a, %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRINtNtCskXtk6F4WjxZ_4just11interpreter11InterpreterNtNtBB_10expression10ExpressionENtB6_7Display3fmtBB_, ptr %.sroa.450.0..sroa_idx, align 8
  %i.z = load ptr, ptr %1, align 8, !nonnull !28, !noundef !28
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !28, !align !35, !noundef !28
  %i.ac = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ab, ptr noundef nonnull @1212, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtCskXtk6F4WjxZ_4just7signalsNtB4_7SignalsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 4 dereferenceable(4) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 8 uses
  %i.f = alloca [1 x i8], align 1                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 0, ptr %i.f, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !102259
  %i.i = call { i64, ptr } @_RNvXsa_NtCsaKJjC64KgbL_3std2fsNtB5_4FileNtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4read(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %1, ptr noalias nofree noundef nonnull %i.f, i64 noundef 1) ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.i, 0        ; 2 uses
  %i.k = extractvalue { i64, ptr } %i.i, 1        ; 3 uses
  store i64 %i.j, ptr %i.e, align 8, !noalias !102259
  store ptr %i.k, ptr %i.g, align 8, !noalias !102259
  %i.l = trunc nuw i64 %i.j to i1
  %2 = ptrtoint ptr %i.k to i64                   ; 2 uses
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %3 = phi i64 [ %5, %bb.f ], [ %2, %bb.a ]       ; 4 uses
  %4 = phi ptr [ %i.ai, %bb.f ], [ %i.k, %bb.a ]  ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
  %i.m = and i64 %3, 3
  switch i64 %i.m, label %default.unreachable [
    i64 2, label %bb.b
    i64 3, label %.split25.i
    i64 0, label %.split26.i
    i64 1, label %.split.i
  ], !prof !69

default.unreachable:                              ; preds = %.lr.ph
  unreachable

bb.b:                                             ; preds = %.lr.ph
  %i.n = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc.i unwind label %bb.g

.noexc.i:                                         ; preds = %bb.b
  %i.o = lshr i64 %3, 32
  %i.p = trunc nuw i64 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !28, !noundef !28
  %i.s = invoke noundef zeroext i1 %i.r(i32 noundef %i.p)
          to label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit.i unwind label %bb.g, !inline_history !13

.split25.i:                                       ; preds = %.lr.ph
  %i.t = lshr i64 %3, 32
  %i.u = icmp ult ptr %4, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i.i = trunc i64 %i.t to i8
  %spec.select.i.i.i.i = select i1 %i.u, i8 %switch.idx.cast.i.i.i.i, i8 -1 ; 2 uses
  %i.v = icmp ne i8 %spec.select.i.i.i.i, -1
  call void @llvm.assume(i1 %i.v)
  %i.w = icmp eq i8 %spec.select.i.i.i.i, 35
  br i1 %i.w, label %bb.d, label %.loopexit

.split26.i:                                       ; preds = %.lr.ph
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.y = load i8, ptr %i.x, align 8, !range !71, !noundef !28
  %i.z = icmp eq i8 %i.y, 35
  br i1 %i.z, label %.thread.thread.i, label %.loopexit

.split.i:                                         ; preds = %.lr.ph
  %i.aa = getelementptr i8, ptr %4, i64 31
  %i.ab = load i8, ptr %i.aa, align 8, !range !71, !noundef !28
  %i.ac = icmp eq i8 %i.ab, 35
  br i1 %i.ac, label %bb.e, label %.loopexit

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.lcssa = phi i64 [ %2, %bb.a ], [ %5, %bb.f ]  ; 2 uses
  switch i64 %.lcssa, label %bb.c [
    i64 0, label %.loopexit
    i64 1, label %bb.j
  ], !prof !78

bb.c:                                             ; preds = %._crit_edge
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.lcssa, i64 noundef 1, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @197) #70
  unreachable

_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit.i: ; preds = %.noexc.i
  br i1 %i.s, label %.thread.thread.i, label %.loopexit

.thread.thread.i:                                 ; preds = %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit.i, %.split26.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !102260
  br label %bb.f

bb.d:                                             ; preds = %.split25.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !102260
  %i.ad = and i64 %3, 1095216660480
  %i.ae = icmp ne i64 %i.ad, 1095216660480
  call void @llvm.assume(i1 %i.u)
  call void @llvm.assume(i1 %i.ae)
  br label %bb.f

bb.e:                                             ; preds = %.split.i
  %i.af = getelementptr i8, ptr %4, i64 -1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !102260
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.af) ]
  store ptr %i.af, ptr %i.h, align 8, !alias.scope !102261, !noalias !102260
  store i8 3, ptr %i.d, align 8, !alias.scope !102261, !noalias !102260
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h), !noalias !102262
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %.thread.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !102260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !102259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !102259
  %i.ag = call { i64, ptr } @_RNvXsa_NtCsaKJjC64KgbL_3std2fsNtB5_4FileNtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4read(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %1, ptr noalias nofree noundef nonnull %i.f, i64 noundef 1) ; 2 uses
  %i.ah = extractvalue { i64, ptr } %i.ag, 0      ; 2 uses
  %i.ai = extractvalue { i64, ptr } %i.ag, 1      ; 3 uses
  store i64 %i.ah, ptr %i.e, align 8, !noalias !102259
  store ptr %i.ai, ptr %i.g, align 8, !noalias !102259
  %i.aj = trunc nuw i64 %i.ah to i1
  %5 = ptrtoint ptr %i.ai to i64                  ; 2 uses
  br i1 %i.aj, label %.lr.ph, label %._crit_edge

bb.g:                                             ; preds = %.noexc.i, %bb.b
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #71
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %lpad.thr_comm.i

bb.i:                                             ; preds = %bb.g
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #72
  unreachable

.loopexit:                                        ; preds = %.split26.i, %.split25.i, %.split.i, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit.i, %._crit_edge
  %.sroa.09.0.i.ph = phi ptr [ @199, %._crit_edge ], [ %4, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit.i ], [ %4, %.split.i ], [ %4, %.split25.i ], [ %4, %.split26.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !102259
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !102259
  %i.al = load i8, ptr %i.f, align 1, !noundef !28 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %i.al, ptr %i.c, align 1, !noalias !102263
  %switch.tableidx = add i8 %i.al, -1             ; 3 uses
  %i.am = icmp ult i8 %switch.tableidx, 15
  br i1 %i.am, label %switch.hole_check, label %.split.i2

.split.i2:                                        ; preds = %switch.hole_check, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !102263
  store ptr %i.c, ptr %i.a, align 8, !noalias !102263
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXNtNtNtCsj6eKBz9Db1c_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !102263
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @1798, ptr noundef nonnull %i.a), !noalias !102264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !102263
  %i.an = call noundef nonnull ptr @_RINvMNtNtCs4wP2HXfJTCR_5alloc2io5errorNtNtNtCsj6eKBz9Db1c_4core2io5error5Error3newNtNtB7_6string6StringECsgYJ0xFPoqCG_13clap_complete(i8 noundef 42, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b) #73, !noalias !102263
  br label %_RNvXs2_NtCskXtk6F4WjxZ_4just6signalNtB5_6SignalINtNtCsj6eKBz9Db1c_4core7convert7TryFromhE8try_from.exit

switch.hole_check:                                ; preds = %bb.j
  %switch.maskindex = zext nneg i8 %switch.tableidx to i16
  %switch.shifted = lshr i16 16391, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %.split.i2

switch.lookup:                                    ; preds = %switch.hole_check
  %i.ao = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs_NtCskXtk6F4WjxZ_4just7signalsNtB4_7SignalsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next, i64 %i.ao
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %_RNvXs2_NtCskXtk6F4WjxZ_4just6signalNtB5_6SignalINtNtCsj6eKBz9Db1c_4core7convert7TryFromhE8try_from.exit

_RNvXs2_NtCskXtk6F4WjxZ_4just6signalNtB5_6SignalINtNtCsj6eKBz9Db1c_4core7convert7TryFromhE8try_from.exit: ; preds = %switch.lookup, %.split.i2
  %.sroa.9.1 = phi ptr [ %i.an, %.split.i2 ], [ undef, %switch.lookup ]
  %.sroa.5.1 = phi i32 [ undef, %.split.i2 ], [ %switch.ext, %switch.lookup ]
  %.sink.i = phi i32 [ 1, %.split.i2 ], [ 0, %switch.lookup ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.k

bb.k:                                             ; preds = %_RNvXs2_NtCskXtk6F4WjxZ_4just6signalNtB5_6SignalINtNtCsj6eKBz9Db1c_4core7convert7TryFromhE8try_from.exit, %.loopexit
  %.sroa.9.0 = phi ptr [ %.sroa.9.1, %_RNvXs2_NtCskXtk6F4WjxZ_4just6signalNtB5_6SignalINtNtCsj6eKBz9Db1c_4core7convert7TryFromhE8try_from.exit ], [ %.sroa.09.0.i.ph, %.loopexit ]
  %.sroa.5.0 = phi i32 [ %.sroa.5.1, %_RNvXs2_NtCskXtk6F4WjxZ_4just6signalNtB5_6SignalINtNtCsj6eKBz9Db1c_4core7convert7TryFromhE8try_from.exit ], [ undef, %.loopexit ]
  %.sroa.0.0 = phi i32 [ %.sink.i, %_RNvXs2_NtCskXtk6F4WjxZ_4just6signalNtB5_6SignalINtNtCsj6eKBz9Db1c_4core7convert7TryFromhE8try_from.exit ], [ 1, %.loopexit ]
  store i32 %.sroa.0.0, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtCskXtk6F4WjxZ_4just7versionNtB4_7VersionNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsd_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.d, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsd_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.47.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.c, ptr %i.e, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXsd_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.411.0..sroa_idx, align 8
  %i.f = load ptr, ptr %1, align 8, !nonnull !28, !noundef !28
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !28, !align !35, !noundef !28
  %i.i = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.h, ptr noundef nonnull @2815, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtCskXtk6F4WjxZ_4just7warningNtB4_7WarningNtNtB6_13color_display12ColorDisplay3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [17 x i8], align 1                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [17 x i8], align 1                ; 7 uses
  %i.e = alloca [72 x i8], align 8                ; 17 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load i8, ptr %i.f, align 8, !range !40, !noundef !28
  %i.h = trunc nuw i8 %i.g to i1                  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 34
  %i.j = load i8, ptr %i.i, align 2, !range !38, !noundef !28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  switch i8 %i.j, label %default.unreachable128 [
    i8 0, label %bb.d
    i8 1, label %bb.b
    i8 2, label %bb.c
  ]

default.unreachable128:                           ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsaBFuFXHOo0Z_12nu_ansi_term7display17AnsiGenericStringeEECskXtk6F4WjxZ_4just.exit127, %bb.d, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.19.0 = phi i32 [ 6, %bb.a ], [ 6, %bb.b ], [ 255, %bb.c ]
  %.sroa.03.0 = phi i8 [ 1, %bb.a ], [ 1, %bb.b ], [ 0, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i8 %.sroa.03.0, ptr %i.k, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 49
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 57
  store i64 0, ptr %.sroa.3.0..sroa_idx, align 1
  store i32 %.sroa.19.0, ptr %.sroa.19.0..sroa_idx, align 1
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 61
  store i32 255, ptr %.sroa.21.0..sroa_idx, align 1
  store i64 -1, ptr %i.e, align 8
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr @2816, ptr %.sroa.469.0..sroa_idx, align 8
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 8, ptr %.sroa.570.0..sroa_idx, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 3 uses
  store i64 -3, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  switch i8 %i.j, label %default.unreachable128 [
    i8 0, label %bb.g
    i8 1, label %bb.e
    i8 2, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  br i1 %i.h, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f
  %.sroa.073.0 = phi i8 [ 0, %bb.f ], [ 1, %bb.e ], [ 1, %bb.d ]
  store i8 %.sroa.073.0, ptr %i.d, align 1
  %.sroa.574.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.2182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  store i64 0, ptr %.sroa.574.0..sroa_idx, align 1
  store i8 -1, ptr %.sroa.2182.0..sroa_idx, align 1
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 13
  store i8 -1, ptr %.sroa.25.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.e, ptr %i.c, align 8
  %.sroa.486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs4_NtCsaBFuFXHOo0Z_12nu_ansi_term7displayINtB5_17AnsiGenericStringeENtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.486.0..sroa_idx, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.d, ptr %i.m, align 8
  %.sroa.490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXs2_NtCsaBFuFXHOo0Z_12nu_ansi_term4ansiNtB5_6PrefixNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.490.0..sroa_idx, align 8
  %i.n = load ptr, ptr %1, align 8, !nonnull !28, !noundef !28 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !28, !align !35, !noundef !28 ; 2 uses
  %i.q = invoke noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.p, ptr noundef nonnull @2817, ptr noundef nonnull %i.c)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsaBFuFXHOo0Z_12nu_ansi_term7display17AnsiGenericStringeEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(72) %i.e) #71
  resume { ptr, i32 } %i.r

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.q, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !102285)
  %.val.i = load i64, ptr %i.e, align 8, !range !37, !alias.scope !102285, !noundef !28 ; 2 uses
  %i.s = icmp sgt i64 %.val.i, 0
  br i1 %i.s, label %bb.k, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECskXtk6F4WjxZ_4just.exit.i

bb.k:                                             ; preds = %bb.j
  %.val1.i = load ptr, ptr %.sroa.469.0..sroa_idx, align 8, !alias.scope !102285, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !102286
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECskXtk6F4WjxZ_4just.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.k, %bb.j
  %.val2.i = load i64, ptr %i.l, align 8, !range !82, !alias.scope !102285, !noundef !28 ; 2 uses
  %i.t = icmp sgt i64 %.val2.i, 0
  br i1 %i.t, label %bb.l, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsaBFuFXHOo0Z_12nu_ansi_term7display17AnsiGenericStringeEECskXtk6F4WjxZ_4just.exit

bb.l:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECskXtk6F4WjxZ_4just.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.val3.i = load ptr, ptr %i.u, align 8, !alias.scope !102285, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %.val2.i, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !102287
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsaBFuFXHOo0Z_12nu_ansi_term7display17AnsiGenericStringeEECskXtk6F4WjxZ_4just.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsaBFuFXHOo0Z_12nu_ansi_term7display17AnsiGenericStringeEECskXtk6F4WjxZ_4just.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECskXtk6F4WjxZ_4just.exit.i, %bb.l
end_hunk_0
