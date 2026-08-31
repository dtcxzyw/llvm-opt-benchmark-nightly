Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_syntax-a50718c2c80ccc00.regex_syntax.2817212ec1702884-cgu.00?download=true
inline.NumInlined: 618
inline.NumDeleted: 116
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvMs3_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE11parse_octalB9_
define internal fastcc void @_RNvMs3_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE11parse_octalB9_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !12964 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
    #dbg_declare(ptr poison, !12980, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !12984)
    #dbg_declare(ptr poison, !12972, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !12986)
  %.sroa.6 = alloca [16 x i8], align 8            ; 4 uses
    #dbg_declare(ptr %.sroa.6, !12983, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !12987)
    #dbg_declare(ptr %.sroa.6, !12970, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !12988)
    #dbg_value(ptr %1, !12969, !DIExpression(), !12989)
    #dbg_value(ptr %1, !12990, !DIExpression(), !12993)
    #dbg_value(ptr %1, !12995, !DIExpression(), !12998)
    #dbg_value(ptr %1, !12990, !DIExpression(), !13000)
    #dbg_value(ptr %1, !12995, !DIExpression(), !13002)
    #dbg_value(ptr %1, !12990, !DIExpression(), !13004)
    #dbg_value(ptr %1, !12995, !DIExpression(), !13007)
    #dbg_value(ptr %1, !12990, !DIExpression(), !13009)
    #dbg_value(ptr %1, !13012, !DIExpression(), !13015)
    #dbg_value(i32 8, !13017, !DIExpression(), !13039)
    #dbg_value(ptr @63, !13041, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13050)
    #dbg_value(i64 20, !13041, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13050)
  %.val40 = load ptr, ptr %1, align 8, !dbg !13052, !nonnull !27, !align !3718, !noundef !27 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val40, i64 193, !dbg !13053
  %i.c = load i8, ptr %i.b, align 1, !dbg !13053, !range !3737, !noundef !27
  %i.d = trunc nuw i8 %i.c to i1, !dbg !13053
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !13053, !prof !4047

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #25, !dbg !13054
  unreachable, !dbg !13054

bb.c:                                             ; preds = %bb.a
  %i.e = tail call fastcc noundef i32 @_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE4charB9_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1), !dbg !13055
  %i.f = icmp samesign ugt i32 %i.e, 47, !dbg !13056
  br i1 %i.f, label %bb.d, label %bb.e, !dbg !13056, !prof !4047

bb.d:                                             ; preds = %bb.c
  %i.g = tail call fastcc noundef i32 @_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE4charB9_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1), !dbg !13057
  %i.h = icmp samesign ult i32 %i.g, 56, !dbg !13058
  br i1 %i.h, label %bb.f, label %bb.e, !dbg !13058, !prof !4047

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @66, i64 noundef 58, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #25, !dbg !13059
  unreachable, !dbg !13059

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6), !dbg !13060
    #dbg_value(ptr %.val40, !13061, !DIExpression(DW_OP_plus_uconst, 160, DW_OP_stack_value), !13064)
  %i.i = getelementptr inbounds nuw i8, ptr %.val40, i64 160, !dbg !13066 ; 3 uses
  %.sroa.0.0.copyload = load i64, ptr %i.i, align 8, !dbg !13069 ; 9 uses
    #dbg_value(i64 %.sroa.0.0.copyload, !12970, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13070)
    #dbg_value(i64 %.sroa.0.0.copyload, !12983, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13071)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.val40, i64 168, !dbg !13069 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i64 16, i1 false), !dbg !13069
  br label %bb.g, !dbg !13072

bb.g:                                             ; preds = %bb.o, %bb.f
  %i.j = tail call fastcc noundef zeroext i1 @_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE4bumpB9_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1), !dbg !13073
  br i1 %i.j, label %bb.m, label %bb.h, !dbg !13074

bb.h:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.g
    #dbg_value(ptr %.val40, !13061, !DIExpression(DW_OP_plus_uconst, 160, DW_OP_stack_value), !13075)
  %.sroa.04.0.copyload = load i64, ptr %i.i, align 8, !dbg !13077 ; 7 uses
    #dbg_value(i64 %.sroa.04.0.copyload, !12972, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13078)
    #dbg_value(i64 %.sroa.04.0.copyload, !12980, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13071)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !13079
  %i.l = load ptr, ptr %i.k, align 8, !dbg !13079, !nonnull !27, !noundef !27 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !13079
  %i.n = load i64, ptr %i.m, align 8, !dbg !13079, !noundef !27 ; 4 uses
    #dbg_value(ptr %i.l, !13080, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13088)
    #dbg_value(ptr %i.l, !13090, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13096)
    #dbg_value(ptr %i.l, !13098, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13115)
    #dbg_value(ptr %i.l, !13117, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13123)
    #dbg_value(ptr %i.l, !13125, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13135)
    #dbg_value(i64 %i.n, !13080, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13088)
    #dbg_value(i64 %i.n, !13090, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13096)
    #dbg_value(i64 %i.n, !13098, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13115)
    #dbg_value(i64 %i.n, !13117, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13123)
    #dbg_value(i64 %i.n, !13125, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13135)
    #dbg_value(i64 %.sroa.0.0.copyload, !13085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13088)
    #dbg_value(i64 %.sroa.0.0.copyload, !13095, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13096)
    #dbg_value(i64 %.sroa.0.0.copyload, !13110, !DIExpression(), !13137)
    #dbg_value(i64 %.sroa.0.0.copyload, !13130, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13135)
    #dbg_value(i64 %.sroa.0.0.copyload, !13138, !DIExpression(), !13142)
    #dbg_value(i64 %.sroa.04.0.copyload, !13085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13088)
    #dbg_value(i64 %.sroa.04.0.copyload, !13095, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13096)
    #dbg_value(i64 %.sroa.04.0.copyload, !13112, !DIExpression(), !13137)
    #dbg_value(i64 %.sroa.04.0.copyload, !13130, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13135)
    #dbg_value(i64 %.sroa.0.0.copyload, !13109, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13115)
    #dbg_value(i64 %.sroa.0.0.copyload, !13122, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13123)
    #dbg_value(i64 %.sroa.04.0.copyload, !13109, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13115)
    #dbg_value(i64 %.sroa.04.0.copyload, !13122, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13123)
    #dbg_value(ptr %i.l, !13144, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13155)
    #dbg_value(i64 %i.n, !13144, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13155)
    #dbg_value(i64 %.sroa.0.0.copyload, !13149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13155)
    #dbg_value(i64 %.sroa.04.0.copyload, !13149, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13155)
    #dbg_value(i64 %.sroa.0.0.copyload, !13150, !DIExpression(), !13157)
    #dbg_value(i64 %.sroa.0.0.copyload, !13158, !DIExpression(), !13162)
    #dbg_value(i64 %.sroa.04.0.copyload, !13152, !DIExpression(), !13157)
    #dbg_value(i64 %.sroa.04.0.copyload, !13158, !DIExpression(), !13164)
    #dbg_value(ptr %i.l, !13153, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13166)
    #dbg_value(i64 %i.n, !13153, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13166)
  %i.o = icmp ugt i64 %.sroa.0.0.copyload, %.sroa.04.0.copyload, !dbg !13167
  %i.p = icmp ugt i64 %.sroa.04.0.copyload, %i.n
  %or.cond.i = or i1 %i.o, %i.p, !dbg !13167
  br i1 %or.cond.i, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread44, label %bb.i, !dbg !13167, !prof !13168

bb.i:                                             ; preds = %bb.h
  %i.q = icmp eq i64 %.sroa.0.0.copyload, %i.n, !dbg !13169
  br i1 %i.q, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread, label %bb.j, !dbg !13169

bb.j:                                             ; preds = %bb.i
  %i.r = icmp eq i64 %.sroa.0.0.copyload, 0, !dbg !13170
  br i1 %i.r, label %bb.k, label %bb.l, !dbg !13170

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.s = icmp eq i64 %.sroa.04.0.copyload, %i.n, !dbg !13171
  br i1 %i.s, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit, !dbg !13171

bb.l:                                             ; preds = %bb.j
    #dbg_value(ptr %i.l, !13161, !DIExpression(), !13162)
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.0.0.copyload, !dbg !13172
    #dbg_value(ptr %i.t, !13173, !DIExpression(), !13178)
    #dbg_value(ptr %i.t, !13180, !DIExpression(), !13183)
  %i.u = load i8, ptr %i.t, align 1, !dbg !13185, !alias.scope !13186, !noundef !27
    #dbg_value(i8 %i.u, !13189, !DIExpression(), !13192)
  %i.v = icmp sgt i8 %i.u, -65, !dbg !13194
  br i1 %i.v, label %bb.k, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread44, !dbg !13195, !prof !13196

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit: ; preds = %bb.k
    #dbg_value(ptr %i.l, !13161, !DIExpression(), !13164)
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.04.0.copyload, !dbg !13197
    #dbg_value(ptr %i.w, !13173, !DIExpression(), !13198)
    #dbg_value(ptr %i.w, !13180, !DIExpression(), !13200)
  %i.x = load i8, ptr %i.w, align 1, !dbg !13203, !alias.scope !13186, !noundef !27
    #dbg_value(i8 %i.x, !13189, !DIExpression(), !13204)
  %i.y = icmp sgt i8 %i.x, -65, !dbg !13206
  br i1 %i.y, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread44, !dbg !13207, !prof !13208

bb.m:                                             ; preds = %bb.g
  %i.z = tail call fastcc noundef i32 @_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE4charB9_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1), !dbg !13209
  %i.aa = icmp samesign ugt i32 %i.z, 47, !dbg !13210
  br i1 %i.aa, label %bb.n, label %bb.h, !dbg !13210

bb.n:                                             ; preds = %bb.m
  %i.ab = tail call fastcc noundef i32 @_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE4charB9_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1), !dbg !13211
  %i.ac = icmp samesign ult i32 %i.ab, 56, !dbg !13212
  br i1 %i.ac, label %bb.o, label %bb.h, !dbg !13212

bb.o:                                             ; preds = %bb.n
    #dbg_value(ptr %.val40, !13061, !DIExpression(DW_OP_plus_uconst, 160, DW_OP_stack_value), !13213)
  %i.ad = load i64, ptr %i.i, align 8, !dbg !13215, !noundef !27
  %i.ae = sub i64 %i.ad, %.sroa.0.0.copyload, !dbg !13216
  %i.af = icmp ult i64 %i.ae, 3, !dbg !13216
  br i1 %i.af, label %bb.g, label %bb.h, !dbg !13216

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread44: ; preds = %bb.l, %bb.h, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit
  tail call void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.n, i64 noundef %.sroa.0.0.copyload, i64 noundef %.sroa.04.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #25, !dbg !13217
  unreachable, !dbg !13217

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread: ; preds = %bb.k, %bb.i, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit
    #dbg_value(ptr %i.l, !13131, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13218)
    #dbg_value(i64 %i.n, !13131, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13218)
  %i.ag = sub nuw i64 %.sroa.04.0.copyload, %.sroa.0.0.copyload, !dbg !13219 ; 2 uses
    #dbg_value(i64 %i.ag, !13133, !DIExpression(), !13220)
    #dbg_value(ptr %i.l, !13141, !DIExpression(), !13142)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.0.0.copyload, !dbg !13221 ; 3 uses
    #dbg_value(ptr %i.ah, !12974, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13222)
    #dbg_value(ptr %i.ah, !13038, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13039)
    #dbg_value(i64 %i.ag, !12974, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13222)
    #dbg_value(i64 %i.ag, !13038, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13039)
    #dbg_value(ptr %i.ah, !13223, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13282)
    #dbg_value(ptr %i.ah, !13233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13284)
    #dbg_value(i64 %i.ag, !13223, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13282)
    #dbg_value(i64 %i.ag, !13233, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13284)
    #dbg_value(i32 8, !13228, !DIExpression(), !13282)
    #dbg_value(i32 8, !13285, !DIExpression(), !13292)
    #dbg_value(i32 8, !13294, !DIExpression(), !13304)
    #dbg_value(i32 8, !13306, !DIExpression(), !13316)
    #dbg_value(i8 0, !13229, !DIExpression(), !13318)
    #dbg_value(i8 0, !13290, !DIExpression(), !13292)
  switch i64 %i.ag, label %thread-pre-split.i [
    i64 0, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread
    i64 1, label %bb.p
  ], !dbg !13319

bb.p:                                             ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread
  %i.ai = load i8, ptr %i.ah, align 1, !dbg !13320, !alias.scope !13321, !noundef !27 ; 2 uses
  switch i8 %i.ai, label %bb.q [
    i8 43, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread
    i8 45, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread
  ], !dbg !13320

thread-pre-split.i:                               ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread
  %.pr.i = load i8, ptr %i.ah, align 1, !dbg !13320, !alias.scope !13321
  br label %bb.q, !dbg !13320

bb.q:                                             ; preds = %thread-pre-split.i, %bb.p
  %i.aj = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.ai, %bb.p ], !dbg !13320
  %cond.i = icmp eq i8 %i.aj, 43, !dbg !13320     ; 2 uses
  %i.ak = sext i1 %cond.i to i64, !dbg !13320
  %.sroa.15.0.i = add nsw i64 %i.ag, %i.ak, !dbg !13320 ; 10 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64, !dbg !13320
  %.sroa.0.0.i41 = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.sroa.0.0.idx.i, !dbg !13320 ; 9 uses
    #dbg_value(ptr %.sroa.0.0.i41, !13233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13284)
    #dbg_value(ptr %.sroa.0.0.i41, !13223, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13282)
    #dbg_value(i64 %.sroa.15.0.i, !13233, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13284)
    #dbg_value(i64 %.sroa.15.0.i, !13223, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13282)
    #dbg_value(i32 0, !13240, !DIExpression(), !13324)
    #dbg_value(i32 0, !13297, !DIExpression(), !13304)
    #dbg_value(i32 0, !13315, !DIExpression(), !13316)
    #dbg_value(i32 0, !13325, !DIExpression(), !13329)
    #dbg_value(ptr %.sroa.0.0.i41, !13291, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13292)
    #dbg_value(i64 %.sroa.15.0.i, !13291, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13292)
  %i.al = icmp samesign ult i64 %.sroa.15.0.i, 9
  br i1 %i.al, label %.preheader.i, label %.preheader81.split.us.i.preheader, !dbg !13331

.preheader81.split.us.i:                          ; preds = %2
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.1.us.i56, i64 1, !dbg !13332
    #dbg_value(ptr %i.am, !13258, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13333)
  %i.an = add nsw i64 %.sroa.15.1.us.i55, -1, !dbg !13332 ; 2 uses
    #dbg_value(i64 %i.an, !13258, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13333)
  %i.ao = shl nuw i32 %.sroa.045.0.us.i54, 3, !dbg !13334
    #dbg_value(i32 %i.ao, !13298, !DIExpression(), !13335)
    #dbg_value(i32 %i.ao, !13259, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !13336)
    #dbg_value(i32 %i.ao, !13240, !DIExpression(), !13324)
    #dbg_value(i32 %i.ao, !13297, !DIExpression(), !13304)
    #dbg_value(i32 %i.ao, !13315, !DIExpression(), !13316)
    #dbg_value(i32 %i.ao, !13325, !DIExpression(), !13329)
  %i.ap = or disjoint i32 %4, %i.ao, !dbg !13337  ; 2 uses
    #dbg_value(ptr %i.am, !13233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13284)
    #dbg_value(ptr %i.am, !13223, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13282)
    #dbg_value(i64 %i.an, !13233, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13284)
    #dbg_value(i64 %i.an, !13223, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13282)
    #dbg_value(i32 %i.ap, !13325, !DIExpression(), !13329)
    #dbg_value(i32 %i.ap, !13315, !DIExpression(), !13316)
    #dbg_value(i32 %i.ap, !13297, !DIExpression(), !13304)
    #dbg_value(i32 %i.ap, !13240, !DIExpression(), !13324)
  %.not72.us.i = icmp eq i64 %i.an, 0, !dbg !13338
  br i1 %.not72.us.i, label %.loopexit.i, label %.preheader81.split.us.i.preheader, !dbg !13338

.preheader81.split.us.i.preheader:                ; preds = %bb.q, %.preheader81.split.us.i
  %.sroa.0.1.us.i56 = phi ptr [ %i.am, %.preheader81.split.us.i ], [ %.sroa.0.0.i41, %bb.q ] ; 2 uses
  %.sroa.15.1.us.i55 = phi i64 [ %i.an, %.preheader81.split.us.i ], [ %.sroa.15.0.i, %bb.q ]
  %.sroa.045.0.us.i54 = phi i32 [ %i.ap, %.preheader81.split.us.i ], [ 0, %bb.q ] ; 2 uses
    #dbg_value(ptr %.sroa.0.1.us.i56, !13233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13284)
    #dbg_value(i64 %.sroa.15.1.us.i55, !13233, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13284)
    #dbg_value(i32 %.sroa.045.0.us.i54, !13325, !DIExpression(), !13329)
    #dbg_value(ptr %.sroa.0.1.us.i56, !13256, !DIExpression(), !13333)
    #dbg_value(ptr %.sroa.0.1.us.i56, !13258, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13333)
    #dbg_value(i64 %.sroa.15.1.us.i55, !13258, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13333)
  %i.aq = icmp ugt i32 %.sroa.045.0.us.i54, 536870911, !dbg !13334
    #dbg_value(i32 %.sroa.045.0.us.i54, !13298, !DIExpression(DW_OP_constu, 3, DW_OP_shl, DW_OP_stack_value), !13335)
    #dbg_value(i1 %i.aq, !13300, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13335)
    #dbg_value(i1 %i.aq, !13339, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13342)
  %i.ar = load i8, ptr %.sroa.0.1.us.i56, align 1, !dbg !13344, !alias.scope !13321, !noundef !27 ; 2 uses
  br i1 %i.aq, label %.split.us.i, label %2, !dbg !13345, !prof !1194

2:                                                ; preds = %.preheader81.split.us.i.preheader
    #dbg_value(i32 %.sroa.045.0.us.i54, !13298, !DIExpression(DW_OP_constu, 3, DW_OP_shl, DW_OP_stack_value), !13335)
    #dbg_value(i64 %.sroa.15.1.us.i55, !13258, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13333)
    #dbg_value(ptr %.sroa.0.1.us.i56, !13258, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13333)
    #dbg_value(i32 %.sroa.045.0.us.i54, !13259, !DIExpression(DW_OP_constu, 3, DW_OP_shl, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !13336)
    #dbg_value(i32 1, !13259, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !13336)
  %3 = zext i8 %i.ar to i32, !dbg !13346
    #dbg_value(i32 %3, !13347, !DIExpression(), !13355)
    #dbg_value(i32 8, !13352, !DIExpression(), !13355)
  %4 = add nsw i32 %3, -48, !dbg !13357           ; 2 uses
    #dbg_value(i32 poison, !13353, !DIExpression(), !13358)
  %5 = icmp ult i32 %4, 8, !dbg !13359
    #dbg_value(i32 poison, !13261, !DIExpression(), !13360)
    #dbg_value(i32 %.sroa.045.0.us.i54, !13240, !DIExpression(DW_OP_constu, 3, DW_OP_shl, DW_OP_stack_value), !13324)
    #dbg_value(i32 %.sroa.045.0.us.i54, !13297, !DIExpression(DW_OP_constu, 3, DW_OP_shl, DW_OP_stack_value), !13304)
    #dbg_value(i32 %.sroa.045.0.us.i54, !13315, !DIExpression(DW_OP_constu, 3, DW_OP_shl, DW_OP_stack_value), !13316)
    #dbg_value(i32 %.sroa.045.0.us.i54, !13325, !DIExpression(DW_OP_constu, 3, DW_OP_shl, DW_OP_stack_value), !13329)
    #dbg_value(i32 poison, !13328, !DIExpression(), !13329)
    #dbg_value(i1 false, !13339, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13361)
  br i1 %5, label %.preheader81.split.us.i, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread, !dbg !13363

.preheader.i:                                     ; preds = %bb.q
    #dbg_value(ptr %.sroa.0.0.i41, !13233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13284)
    #dbg_value(ptr %.sroa.0.0.i41, !13223, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13282)
    #dbg_value(i64 %.sroa.15.0.i, !13233, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13284)
    #dbg_value(i64 %.sroa.15.0.i, !13223, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13282)
    #dbg_value(i32 0, !13325, !DIExpression(), !13329)
    #dbg_value(i32 0, !13315, !DIExpression(), !13316)
    #dbg_value(i32 0, !13297, !DIExpression(), !13304)
    #dbg_value(i32 0, !13240, !DIExpression(), !13324)
  %.not7391.i = icmp eq i64 %.sroa.15.0.i, 0, !dbg !13364
  br i1 %.not7391.i, label %.loopexit.i, label %.lr.ph.split.us.i, !dbg !13364

.lr.ph.split.us.i:                                ; preds = %.preheader.i
    #dbg_value(ptr %.sroa.0.0.i41, !13242, !DIExpression(), !13365)
    #dbg_value(ptr %.sroa.0.0.i41, !13244, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13365)
    #dbg_value(i64 %.sroa.15.0.i, !13244, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13365)
    #dbg_value(!DIArgList(i32 0, i32 8), !13240, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !13324)
    #dbg_value(!DIArgList(i32 0, i32 8), !13297, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !13304)
    #dbg_value(!DIArgList(i32 0, i32 8), !13315, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !13316)
    #dbg_value(!DIArgList(i32 0, i32 8), !13325, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !13329)
  %6 = load i8, ptr %.sroa.0.0.i41, align 1, !dbg !13366, !alias.scope !13321, !noundef !27
  %7 = zext i8 %6 to i32, !dbg !13367
    #dbg_value(i32 %7, !13347, !DIExpression(), !13368)
    #dbg_value(i32 8, !13352, !DIExpression(), !13368)
  %8 = add nsw i32 %7, -48, !dbg !13370           ; 3 uses
    #dbg_value(i32 poison, !13353, !DIExpression(), !13371)
  %9 = icmp ult i32 %8, 8, !dbg !13372
  br i1 %9, label %10, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread, !dbg !13373

10:                                               ; preds = %.lr.ph.split.us.i
    #dbg_value(i32 0, !13240, !DIExpression(), !13324)
    #dbg_value(i32 0, !13297, !DIExpression(), !13304)
    #dbg_value(i32 0, !13315, !DIExpression(), !13316)
    #dbg_value(i32 0, !13325, !DIExpression(), !13329)
    #dbg_value(i64 %.sroa.15.0.i, !13244, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13365)
    #dbg_value(ptr %.sroa.0.0.i41, !13244, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13365)
    #dbg_value(i32 poison, !13245, !DIExpression(), !13374)
    #dbg_value(ptr %.sroa.0.0.i41, !13233, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13284)
    #dbg_value(ptr %.sroa.0.0.i41, !13223, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13282)
    #dbg_value(i64 %.sroa.15.0.i, !13233, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13284)
    #dbg_value(i64 %.sroa.15.0.i, !13223, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13282)
    #dbg_value(i32 %8, !13325, !DIExpression(), !13329)
    #dbg_value(i32 %8, !13315, !DIExpression(), !13316)
    #dbg_value(i32 %8, !13297, !DIExpression(), !13304)
    #dbg_value(i32 %8, !13240, !DIExpression(), !13324)
  %.not73.us.i = icmp eq i64 %.sroa.15.0.i, 1, !dbg !13364
  br i1 %.not73.us.i, label %.loopexit.i, label %.lr.ph.split.us.i.1, !dbg !13364

.lr.ph.split.us.i.1:                              ; preds = %10
  %11 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i41, i64 1, !dbg !13375
    #dbg_value(ptr %11, !13244, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13365)
    #dbg_value(ptr %11, !13233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13284)
    #dbg_value(ptr %11, !13223, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13282)
    #dbg_value(ptr %11, !13242, !DIExpression(), !13365)
    #dbg_value(ptr %11, !13244, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13365)
    #dbg_value(i64 %.sroa.15.0.i, !13244, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13365)
    #dbg_value(!DIArgList(i32 %8, i32 8), !13240, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !13324)
    #dbg_value(!DIArgList(i32 %8, i32 8), !13297, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !13304)
    #dbg_value(!DIArgList(i32 %8, i32 8), !13315, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !13316)
    #dbg_value(!DIArgList(i32 %8, i32 8), !13325, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !13329)
  %12 = load i8, ptr %11, align 1, !dbg !13366, !alias.scope !13321, !noundef !27
  %13 = zext i8 %12 to i32, !dbg !13367
    #dbg_value(i32 %13, !13347, !DIExpression(), !13368)
    #dbg_value(i32 8, !13352, !DIExpression(), !13368)
  %14 = add nsw i32 %13, -48, !dbg !13370         ; 2 uses
    #dbg_value(i32 poison, !13353, !DIExpression(), !13371)
  %15 = icmp ult i32 %14, 8, !dbg !13372
  br i1 %15, label %16, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread, !dbg !13373

16:                                               ; preds = %.lr.ph.split.us.i.1
  %17 = shl nuw nsw i32 %8, 3, !dbg !13376
    #dbg_value(i32 %17, !13240, !DIExpression(), !13324)
    #dbg_value(i32 %17, !13297, !DIExpression(), !13304)
    #dbg_value(i32 %17, !13315, !DIExpression(), !13316)
    #dbg_value(i32 %17, !13325, !DIExpression(), !13329)
    #dbg_value(i64 %.sroa.15.0.i, !13244, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13365)
    #dbg_value(ptr %.sroa.0.0.i41, !13244, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13365)
    #dbg_value(i32 poison, !13245, !DIExpression(), !13374)
  %18 = or disjoint i32 %14, %17, !dbg !13377     ; 2 uses
    #dbg_value(ptr %.sroa.0.0.i41, !13233, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13284)
    #dbg_value(ptr %.sroa.0.0.i41, !13223, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13282)
    #dbg_value(i64 %.sroa.15.0.i, !13233, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13284)
    #dbg_value(i64 %.sroa.15.0.i, !13223, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13282)
    #dbg_value(i32 %18, !13325, !DIExpression(), !13329)
    #dbg_value(i32 %18, !13315, !DIExpression(), !13316)
    #dbg_value(i32 %18, !13297, !DIExpression(), !13304)
    #dbg_value(i32 %18, !13240, !DIExpression(), !13324)
  %.not73.us.i.1 = icmp eq i64 %.sroa.15.0.i, 2, !dbg !13364
  br i1 %.not73.us.i.1, label %.loopexit.i, label %.lr.ph.split.us.i.2, !dbg !13364

.lr.ph.split.us.i.2:                              ; preds = %16
  %19 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i41, i64 2, !dbg !13375
    #dbg_value(ptr %19, !13244, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13365)
    #dbg_value(ptr %19, !13233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13284)
    #dbg_value(ptr %19, !13223, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13282)
    #dbg_value(ptr %19, !13242, !DIExpression(), !13365)
    #dbg_value(ptr %19, !13244, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13365)
    #dbg_value(i64 %.sroa.15.0.i, !13244, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13365)
    #dbg_value(!DIArgList(i32 %18, i32 8), !13240, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !13324)
    #dbg_value(!DIArgList(i32 %18, i32 8), !13297, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !13304)
    #dbg_value(!DIArgList(i32 %18, i32 8), !13315, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !13316)
    #dbg_value(!DIArgList(i32 %18, i32 8), !13325, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !13329)
  %20 = load i8, ptr %19, align 1, !dbg !13366, !alias.scope !13321, !noundef !27
  %21 = zext i8 %20 to i32, !dbg !13367
    #dbg_value(i32 %21, !13347, !DIExpression(), !13368)
    #dbg_value(i32 8, !13352, !DIExpression(), !13368)
  %22 = add nsw i32 %21, -48, !dbg !13370         ; 2 uses
    #dbg_value(i32 poison, !13353, !DIExpression(), !13371)
  %23 = icmp ult i32 %22, 8, !dbg !13372
  br i1 %23, label %24, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread, !dbg !13373

24:                                               ; preds = %.lr.ph.split.us.i.2
  %25 = shl nuw nsw i32 %18, 3, !dbg !13376
    #dbg_value(i32 %25, !13240, !DIExpression(), !13324)
    #dbg_value(i32 %25, !13297, !DIExpression(), !13304)
    #dbg_value(i32 %25, !13315, !DIExpression(), !13316)
    #dbg_value(i32 %25, !13325, !DIExpression(), !13329)
    #dbg_value(i64 %.sroa.15.0.i, !13244, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13365)
    #dbg_value(ptr %.sroa.0.0.i41, !13244, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13365)
    #dbg_value(i32 poison, !13245, !DIExpression(), !13374)
  %26 = or disjoint i32 %22, %25, !dbg !13377     ; 2 uses
    #dbg_value(ptr %.sroa.0.0.i41, !13233, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13284)
    #dbg_value(ptr %.sroa.0.0.i41, !13223, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13282)
    #dbg_value(i64 %.sroa.15.0.i, !13233, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13284)
    #dbg_value(i64 %.sroa.15.0.i, !13223, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13282)
    #dbg_value(i32 %26, !13325, !DIExpression(), !13329)
    #dbg_value(i32 %26, !13315, !DIExpression(), !13316)
    #dbg_value(i32 %26, !13297, !DIExpression(), !13304)
    #dbg_value(i32 %26, !13240, !DIExpression(), !13324)
  %.not73.us.i.2 = icmp eq i64 %.sroa.15.0.i, 3, !dbg !13364
  br i1 %.not73.us.i.2, label %.loopexit.i, label %.lr.ph.split.us.i.3, !dbg !13364

.lr.ph.split.us.i.3:                              ; preds = %24
  %27 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i41, i64 3, !dbg !13375
    #dbg_value(ptr %27, !13244, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13365)
    #dbg_value(ptr %27, !13233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13284)
    #dbg_value(ptr %27, !13223, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13282)
    #dbg_value(ptr %27, !13242, !DIExpression(), !13365)
    #dbg_value(ptr %27, !13244, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13365)
    #dbg_value(i64 %.sroa.15.0.i, !13244, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13365)
    #dbg_value(!DIArgList(i32 %26, i32 8), !13240, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !13324)
    #dbg_value(!DIArgList(i32 %26, i32 8), !13297, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !13304)
    #dbg_value(!DIArgList(i32 %26, i32 8), !13315, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !13316)
    #dbg_value(!DIArgList(i32 %26, i32 8), !13325, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !13329)
  %28 = load i8, ptr %27, align 1, !dbg !13366, !alias.scope !13321, !noundef !27
  %29 = zext i8 %28 to i32, !dbg !13367
    #dbg_value(i32 %29, !13347, !DIExpression(), !13368)
    #dbg_value(i32 8, !13352, !DIExpression(), !13368)
  %30 = add nsw i32 %29, -48, !dbg !13370         ; 2 uses
    #dbg_value(i32 poison, !13353, !DIExpression(), !13371)
  %31 = icmp ult i32 %30, 8, !dbg !13372
  br i1 %31, label %32, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread, !dbg !13373

32:                                               ; preds = %.lr.ph.split.us.i.3
  %33 = shl nuw nsw i32 %26, 3, !dbg !13376
    #dbg_value(i32 %33, !13240, !DIExpression(), !13324)
    #dbg_value(i32 %33, !13297, !DIExpression(), !13304)
    #dbg_value(i32 %33, !13315, !DIExpression(), !13316)
    #dbg_value(i32 %33, !13325, !DIExpression(), !13329)
    #dbg_value(i64 %.sroa.15.0.i, !13244, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13365)
    #dbg_value(ptr %.sroa.0.0.i41, !13244, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13365)
    #dbg_value(i32 poison, !13245, !DIExpression(), !13374)
  %34 = or disjoint i32 %30, %33, !dbg !13377     ; 2 uses
    #dbg_value(ptr %.sroa.0.0.i41, !13233, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13284)
    #dbg_value(ptr %.sroa.0.0.i41, !13223, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13282)
    #dbg_value(i64 %.sroa.15.0.i, !13233, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13284)
    #dbg_value(i64 %.sroa.15.0.i, !13223, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13282)
    #dbg_value(i32 %34, !13325, !DIExpression(), !13329)
    #dbg_value(i32 %34, !13315, !DIExpression(), !13316)
    #dbg_value(i32 %34, !13297, !DIExpression(), !13304)
    #dbg_value(i32 %34, !13240, !DIExpression(), !13324)
  %.not73.us.i.3 = icmp eq i64 %.sroa.15.0.i, 4, !dbg !13364
  br i1 %.not73.us.i.3, label %.loopexit.i, label %.lr.ph.split.us.i.4, !dbg !13364

.lr.ph.split.us.i.4:                              ; preds = %32
  %35 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i41, i64 4, !dbg !13375
    #dbg_value(ptr %35, !13244, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13365)
    #dbg_value(ptr %35, !13233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13284)
    #dbg_value(ptr %35, !13223, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13282)
    #dbg_value(ptr %35, !13242, !DIExpression(), !13365)
    #dbg_value(ptr %35, !13244, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13365)
    #dbg_value(i64 %.sroa.15.0.i, !13244, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13365)
    #dbg_value(!DIArgList(i32 %34, i32 8), !13240, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !13324)
    #dbg_value(!DIArgList(i32 %34, i32 8), !13297, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !13304)
    #dbg_value(!DIArgList(i32 %34, i32 8), !13315, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !13316)
    #dbg_value(!DIArgList(i32 %34, i32 8), !13325, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !13329)
  %36 = load i8, ptr %35, align 1, !dbg !13366, !alias.scope !13321, !noundef !27
  %37 = zext i8 %36 to i32, !dbg !13367
    #dbg_value(i32 %37, !13347, !DIExpression(), !13368)
    #dbg_value(i32 8, !13352, !DIExpression(), !13368)
  %38 = add nsw i32 %37, -48, !dbg !13370         ; 2 uses
    #dbg_value(i32 poison, !13353, !DIExpression(), !13371)
  %39 = icmp ult i32 %38, 8, !dbg !13372
  br i1 %39, label %40, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread, !dbg !13373

40:                                               ; preds = %.lr.ph.split.us.i.4
  %41 = shl i32 %34, 3, !dbg !13376
    #dbg_value(i32 %41, !13240, !DIExpression(), !13324)
    #dbg_value(i32 %41, !13297, !DIExpression(), !13304)
    #dbg_value(i32 %41, !13315, !DIExpression(), !13316)
    #dbg_value(i32 %41, !13325, !DIExpression(), !13329)
    #dbg_value(i64 %.sroa.15.0.i, !13244, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13365)
    #dbg_value(ptr %.sroa.0.0.i41, !13244, !DIExpression(DW_OP_plus_uconst, 5, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13365)
    #dbg_value(i32 poison, !13245, !DIExpression(), !13374)
  %42 = or disjoint i32 %38, %41, !dbg !13377     ; 2 uses
    #dbg_value(ptr %.sroa.0.0.i41, !13233, !DIExpression(DW_OP_plus_uconst, 5, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13284)
    #dbg_value(ptr %.sroa.0.0.i41, !13223, !DIExpression(DW_OP_plus_uconst, 5, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13282)
    #dbg_value(i64 %.sroa.15.0.i, !13233, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13284)
    #dbg_value(i64 %.sroa.15.0.i, !13223, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13282)
    #dbg_value(i32 %42, !13325, !DIExpression(), !13329)
    #dbg_value(i32 %42, !13315, !DIExpression(), !13316)
    #dbg_value(i32 %42, !13297, !DIExpression(), !13304)
    #dbg_value(i32 %42, !13240, !DIExpression(), !13324)
  %.not73.us.i.4 = icmp eq i64 %.sroa.15.0.i, 5, !dbg !13364
  br i1 %.not73.us.i.4, label %.loopexit.i, label %bb.r, !dbg !13364

bb.r:                                             ; preds = %40
  %43 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i41, i64 5, !dbg !13375
    #dbg_value(ptr %43, !13244, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13365)
    #dbg_value(ptr %43, !13233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13284)
    #dbg_value(ptr %43, !13223, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13282)
    #dbg_value(ptr %43, !13242, !DIExpression(), !13365)
    #dbg_value(ptr %43, !13244, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13365)
    #dbg_value(i64 %.sroa.15.0.i, !13244, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13365)
    #dbg_value(!DIArgList(i32 %42, i32 8), !13240, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !13324)
    #dbg_value(!DIArgList(i32 %42, i32 8), !13297, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !13304)
    #dbg_value(!DIArgList(i32 %42, i32 8), !13315, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !13316)
    #dbg_value(!DIArgList(i32 %42, i32 8), !13325, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !13329)
  %44 = load i8, ptr %43, align 1, !dbg !13366, !alias.scope !13321, !noundef !27
  %i.as = zext i8 %44 to i32, !dbg !13367
    #dbg_value(i32 %i.as, !13347, !DIExpression(), !13368)
    #dbg_value(i32 8, !13352, !DIExpression(), !13368)
  %i.at = add nsw i32 %i.as, -48, !dbg !13370     ; 2 uses
    #dbg_value(i32 poison, !13353, !DIExpression(), !13371)
  %i.au = icmp ult i32 %i.at, 8, !dbg !13372
  br i1 %i.au, label %.preheader.i.a, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread, !dbg !13373

.preheader.i.a:                                   ; preds = %bb.r
  %45 = shl i32 %42, 3, !dbg !13376
    #dbg_value(i32 %45, !13240, !DIExpression(), !13324)
    #dbg_value(i32 %45, !13297, !DIExpression(), !13304)
    #dbg_value(i32 %45, !13315, !DIExpression(), !13316)
    #dbg_value(i32 %45, !13325, !DIExpression(), !13329)
    #dbg_value(i64 %.sroa.15.0.i, !13244, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13365)
    #dbg_value(ptr %.sroa.0.0.i41, !13244, !DIExpression(DW_OP_plus_uconst, 6, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13365)
    #dbg_value(i32 poison, !13245, !DIExpression(), !13374)
  %46 = or disjoint i32 %i.at, %45, !dbg !13377   ; 2 uses
    #dbg_value(ptr %.sroa.0.0.i41, !13233, !DIExpression(DW_OP_plus_uconst, 6, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13284)
    #dbg_value(ptr %.sroa.0.0.i41, !13223, !DIExpression(DW_OP_plus_uconst, 6, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13282)
    #dbg_value(i64 %.sroa.15.0.i, !13233, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13284)
    #dbg_value(i64 %.sroa.15.0.i, !13223, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13282)
    #dbg_value(i32 %46, !13325, !DIExpression(), !13329)
    #dbg_value(i32 %46, !13315, !DIExpression(), !13316)
    #dbg_value(i32 %46, !13297, !DIExpression(), !13304)
    #dbg_value(i32 %46, !13240, !DIExpression(), !13324)
  %.not7391.i.a = icmp eq i64 %.sroa.15.0.i, 6, !dbg !13364
  br i1 %.not7391.i.a, label %.loopexit.i, label %.lr.ph.split.us.i.a, !dbg !13364

.lr.ph.split.us.i.a:                              ; preds = %.preheader.i.a
  %47 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i41, i64 6, !dbg !13375
    #dbg_value(ptr %47, !13244, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13365)
    #dbg_value(ptr %47, !13233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13284)
    #dbg_value(ptr %47, !13223, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13282)
    #dbg_value(ptr %47, !13242, !DIExpression(), !13365)
    #dbg_value(ptr %47, !13244, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13365)
    #dbg_value(i64 %.sroa.15.0.i, !13244, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13365)
    #dbg_value(!DIArgList(i32 %46, i32 8), !13240, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !13324)
    #dbg_value(!DIArgList(i32 %46, i32 8), !13297, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !13304)
    #dbg_value(!DIArgList(i32 %46, i32 8), !13315, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !13316)
    #dbg_value(!DIArgList(i32 %46, i32 8), !13325, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !13329)
  %i.av = load i8, ptr %47, align 1, !dbg !13366, !alias.scope !13321, !noundef !27
  %i.aw = zext i8 %i.av to i32, !dbg !13367
    #dbg_value(i32 %i.aw, !13347, !DIExpression(), !13368)
    #dbg_value(i32 8, !13352, !DIExpression(), !13368)
  %i.ax = add nsw i32 %i.aw, -48, !dbg !13370     ; 2 uses
    #dbg_value(i32 poison, !13353, !DIExpression(), !13371)
  %i.ay = icmp ult i32 %i.ax, 8, !dbg !13372
  br i1 %i.ay, label %48, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread, !dbg !13373

48:                                               ; preds = %.lr.ph.split.us.i.a
  %49 = shl i32 %46, 3, !dbg !13376
    #dbg_value(i32 %49, !13240, !DIExpression(), !13324)
    #dbg_value(i32 %49, !13297, !DIExpression(), !13304)
    #dbg_value(i32 %49, !13315, !DIExpression(), !13316)
    #dbg_value(i32 %49, !13325, !DIExpression(), !13329)
    #dbg_value(i64 %.sroa.15.0.i, !13244, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13365)
    #dbg_value(ptr %.sroa.0.0.i41, !13244, !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13365)
    #dbg_value(i32 poison, !13245, !DIExpression(), !13374)
  %50 = or disjoint i32 %i.ax, %49, !dbg !13377   ; 2 uses
    #dbg_value(ptr %.sroa.0.0.i41, !13233, !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13284)
    #dbg_value(ptr %.sroa.0.0.i41, !13223, !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13282)
    #dbg_value(i64 %.sroa.15.0.i, !13233, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13284)
    #dbg_value(i64 %.sroa.15.0.i, !13223, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13282)
    #dbg_value(i32 %50, !13325, !DIExpression(), !13329)
    #dbg_value(i32 %50, !13315, !DIExpression(), !13316)
    #dbg_value(i32 %50, !13297, !DIExpression(), !13304)
    #dbg_value(i32 %50, !13240, !DIExpression(), !13324)
  %.not73.us.i.6 = icmp eq i64 %.sroa.15.0.i, 7, !dbg !13364
  br i1 %.not73.us.i.6, label %.loopexit.i, label %bb.s, !dbg !13364

bb.s:                                             ; preds = %48
  %51 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i41, i64 7, !dbg !13375
    #dbg_value(ptr %51, !13244, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13365)
    #dbg_value(ptr %51, !13233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13284)
    #dbg_value(ptr %51, !13223, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13282)
    #dbg_value(ptr %51, !13242, !DIExpression(), !13365)
    #dbg_value(ptr %51, !13244, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13365)
    #dbg_value(i64 %.sroa.15.0.i, !13244, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13365)
    #dbg_value(!DIArgList(i32 %50, i32 8), !13240, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !13324)
    #dbg_value(!DIArgList(i32 %50, i32 8), !13297, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !13304)
    #dbg_value(!DIArgList(i32 %50, i32 8), !13315, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !13316)
    #dbg_value(!DIArgList(i32 %50, i32 8), !13325, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !13329)
  %52 = load i8, ptr %51, align 1, !dbg !13366, !alias.scope !13321, !noundef !27
  %53 = zext i8 %52 to i32, !dbg !13367
    #dbg_value(i32 %53, !13347, !DIExpression(), !13368)
    #dbg_value(i32 8, !13352, !DIExpression(), !13368)
  %54 = add nsw i32 %53, -48, !dbg !13370         ; 2 uses
    #dbg_value(i32 poison, !13353, !DIExpression(), !13371)
  %55 = icmp ult i32 %54, 8, !dbg !13372
  br i1 %55, label %56, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread, !dbg !13373

56:                                               ; preds = %bb.s
  %57 = shl i32 %50, 3, !dbg !13376
    #dbg_value(i32 %57, !13240, !DIExpression(), !13324)
    #dbg_value(i32 %57, !13297, !DIExpression(), !13304)
    #dbg_value(i32 %57, !13315, !DIExpression(), !13316)
    #dbg_value(i32 %57, !13325, !DIExpression(), !13329)
    #dbg_value(i64 %.sroa.15.0.i, !13244, !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13365)
    #dbg_value(ptr %.sroa.0.0.i41, !13244, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13365)
    #dbg_value(i32 poison, !13245, !DIExpression(), !13374)
  %58 = or disjoint i32 %54, %57, !dbg !13377
    #dbg_value(ptr %.sroa.0.0.i41, !13233, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13284)
    #dbg_value(ptr %.sroa.0.0.i41, !13223, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13282)
    #dbg_value(i64 %.sroa.15.0.i, !13233, !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13284)
    #dbg_value(i64 %.sroa.15.0.i, !13223, !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13282)
    #dbg_value(i32 %58, !13325, !DIExpression(), !13329)
    #dbg_value(i32 %58, !13315, !DIExpression(), !13316)
    #dbg_value(i32 %58, !13297, !DIExpression(), !13304)
    #dbg_value(i32 %58, !13240, !DIExpression(), !13324)
  br label %.loopexit.i, !dbg !13364

.loopexit.i:                                      ; preds = %.preheader81.split.us.i, %10, %16, %24, %32, %40, %.preheader.i.a, %48, %56, %.preheader.i
  %.sroa.045.1.i = phi i32 [ %58, %56 ], [ 0, %.preheader.i ], [ %8, %10 ], [ %18, %16 ], [ %26, %24 ], [ %34, %32 ], [ %42, %40 ], [ %46, %.preheader.i.a ], [ %50, %48 ], [ %i.ap, %.preheader81.split.us.i ], !dbg !13378
    #dbg_value(i32 %.sroa.045.1.i, !13325, !DIExpression(), !13329)
    #dbg_value(i32 %.sroa.045.1.i, !13315, !DIExpression(), !13316)
    #dbg_value(i32 %.sroa.045.1.i, !13297, !DIExpression(), !13304)
    #dbg_value(i32 %.sroa.045.1.i, !13240, !DIExpression(), !13324)
  %i.az = zext i32 %.sroa.045.1.i to i64, !dbg !13379
  %i.ba = shl nuw i64 %i.az, 32, !dbg !13379
  br label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit, !dbg !13379

.split.us.i:                                      ; preds = %.preheader81.split.us.i.preheader
    #dbg_value(i8 %i.ar, !13347, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !13380)
    #dbg_value(i32 8, !13352, !DIExpression(), !13380)
    #dbg_value(i8 %i.ar, !13353, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 48, DW_OP_minus, DW_OP_stack_value), !13382)
  %i.bb = and i8 %i.ar, -8, !dbg !13383
  %i.bc = icmp eq i8 %i.bb, 48, !dbg !13383
  %spec.select.i = select i1 %i.bc, i64 513, i64 257, !dbg !13363
  br label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit, !dbg !13363

_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit: ; preds = %.loopexit.i, %.split.us.i
  %.sroa.8.0.insert.insert.i = phi i64 [ %spec.select.i, %.split.us.i ], [ %i.ba, %.loopexit.i ], !dbg !13379 ; 4 uses
    #dbg_value(i64 %.sroa.8.0.insert.insert.i, !13384, !DIExpression(DW_OP_constu, 8, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !13396)
    #dbg_value(i64 %.sroa.8.0.insert.insert.i, !13384, !DIExpression(DW_OP_constu, 16, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 16, 16), !13396)
    #dbg_value(i64 %.sroa.8.0.insert.insert.i, !13384, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !13396)
    #dbg_value(ptr @69, !13391, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13396)
    #dbg_value(i64 18, !13391, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13396)
    #dbg_declare(ptr %i.a, !13394, !DIExpression(), !13398)
  %i.bd = trunc i64 %.sroa.8.0.insert.insert.i to i1, !dbg !13399
    #dbg_value(i64 %.sroa.8.0.insert.insert.i, !13384, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !13396)
  br i1 %i.bd, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultmNtNtNtB4_3num5error13ParseIntErrorE6expectCs3roNzt6HBWW_12regex_syntax.exit, !dbg !13400, !prof !13401

_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread: ; preds = %2, %.lr.ph.split.us.i, %.lr.ph.split.us.i.1, %.lr.ph.split.us.i.2, %.lr.ph.split.us.i.3, %.lr.ph.split.us.i.4, %bb.r, %.lr.ph.split.us.i.a, %bb.s, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread, %bb.p, %bb.p, %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit
  %.sroa.8.0.insert.insert.i47 = phi i64 [ %.sroa.8.0.insert.insert.i, %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit ], [ 257, %.lr.ph.split.us.i ], [ 257, %bb.p ], [ 257, %bb.p ], [ 1, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread ], [ 257, %bb.s ], [ 257, %.lr.ph.split.us.i.a ], [ 257, %bb.r ], [ 257, %.lr.ph.split.us.i.4 ], [ 257, %.lr.ph.split.us.i.3 ], [ 257, %.lr.ph.split.us.i.2 ], [ 257, %.lr.ph.split.us.i.1 ], [ 257, %2 ]
  %.sroa.4.0.extract.shift.i = lshr i64 %.sroa.8.0.insert.insert.i47, 8
    #dbg_value(i64 %.sroa.4.0.extract.shift.i, !13384, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !13396)
  %.sroa.4.0.extract.trunc.i = trunc i64 %.sroa.4.0.extract.shift.i to i8
    #dbg_value(i8 %.sroa.4.0.extract.trunc.i, !13384, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !13396)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13402
  store i8 %.sroa.4.0.extract.trunc.i, ptr %i.a, align 1, !dbg !13402
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 18, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #25, !dbg !13403
  unreachable, !dbg !13403

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultmNtNtNtB4_3num5error13ParseIntErrorE6expectCs3roNzt6HBWW_12regex_syntax.exit: ; preds = %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit
  %.sroa.6.0.extract.shift.i = lshr i64 %.sroa.8.0.insert.insert.i, 32
    #dbg_value(i64 %.sroa.6.0.extract.shift.i, !13384, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !13396)
  %.sroa.6.0.extract.trunc.i = trunc nuw i64 %.sroa.6.0.extract.shift.i to i32 ; 2 uses
    #dbg_value(i32 %.sroa.6.0.extract.trunc.i, !13384, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !13396)
    #dbg_value(i32 %.sroa.6.0.extract.trunc.i, !12976, !DIExpression(), !13404)
    #dbg_value(i32 %.sroa.6.0.extract.trunc.i, !13405, !DIExpression(), !13410)
    #dbg_value(i32 %.sroa.6.0.extract.trunc.i, !13412, !DIExpression(), !13417)
    #dbg_value(i32 %.sroa.6.0.extract.trunc.i, !13419, !DIExpression(), !13442)
  %i.be = xor i32 %.sroa.6.0.extract.trunc.i, 55296, !dbg !13444
  %i.bf = add i32 %i.be, -1114112, !dbg !13444
  %i.bg = icmp ult i32 %i.bf, -1112064, !dbg !13444
  br i1 %i.bg, label %bb.u, label %bb.t, !dbg !13444, !prof !1194

bb.t:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultmNtNtNtB4_3num5error13ParseIntErrorE6expectCs3roNzt6HBWW_12regex_syntax.exit
  %i.bh = icmp ult i64 %.sroa.8.0.insert.insert.i, 4785074604081152, !dbg !13445
  tail call void @llvm.assume(i1 %i.bh), !dbg !13445
    #dbg_value(i32 %.sroa.6.0.extract.trunc.i, !13047, !DIExpression(), !13050)
    #dbg_value(i32 %.sroa.6.0.extract.trunc.i, !12978, !DIExpression(), !13446)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13447
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false), !dbg !13448
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !13447
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.612.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i64 16, i1 false), !dbg !13448
  store i64 %.sroa.0.0.copyload, ptr %0, align 8, !dbg !13447
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !13447
  store i64 %.sroa.04.0.copyload, ptr %.sroa.511.0..sroa_idx, align 8, !dbg !13447
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 52, !dbg !13447
  store i8 3, ptr %i.bi, align 4, !dbg !13447
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !13447
  store i32 %.sroa.6.0.extract.trunc.i, ptr %i.bj, align 8, !dbg !13447
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !13449
  ret void, !dbg !13450

bb.u:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultmNtNtNtB4_3num5error13ParseIntErrorE6expectCs3roNzt6HBWW_12regex_syntax.exit
    #dbg_value(i32 -1, !13047, !DIExpression(), !13050)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 20, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #25, !dbg !13451
  unreachable, !dbg !13451
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE12parse_escapeB9_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #4 !dbg !13452 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 17 uses
    #dbg_declare(ptr poison, !13528, !DIExpression(DW_OP_LLVM_fragment, 72, 952), !13540)
    #dbg_declare(ptr poison, !13543, !DIExpression(DW_OP_LLVM_fragment, 72, 952), !13582)
    #dbg_declare(ptr poison, !13537, !DIExpression(DW_OP_LLVM_fragment, 64, 896), !13584)
    #dbg_declare(ptr poison, !13587, !DIExpression(DW_OP_LLVM_fragment, 64, 896), !13625)
    #dbg_declare(ptr poison, !13535, !DIExpression(DW_OP_LLVM_fragment, 64, 448), !13627)
    #dbg_declare(ptr poison, !13535, !DIExpression(DW_OP_LLVM_fragment, 512, 512), !13627)
    #dbg_declare(ptr poison, !13630, !DIExpression(DW_OP_LLVM_fragment, 64, 448), !13654)
    #dbg_declare(ptr poison, !13630, !DIExpression(DW_OP_LLVM_fragment, 512, 512), !13654)
  %i.e = alloca [56 x i8], align 8                ; 4 uses
  %i.f = alloca [128 x i8], align 8               ; 4 uses
    #dbg_declare(ptr poison, !13534, !DIExpression(DW_OP_LLVM_fragment, 72, 952), !13656)
    #dbg_declare(ptr poison, !13509, !DIExpression(DW_OP_LLVM_fragment, 72, 952), !13657)
  %i.g = alloca [128 x i8], align 8               ; 7 uses
  %.sroa.052 = alloca [48 x i8], align 8          ; 3 uses
    #dbg_declare(ptr %.sroa.052, !13507, !DIExpression(DW_OP_LLVM_fragment, 0, 384), !13658)
  %i.h = alloca [56 x i8], align 8                ; 3 uses
  %i.i = alloca [112 x i8], align 8               ; 3 uses
    #dbg_declare(ptr poison, !13534, !DIExpression(DW_OP_LLVM_fragment, 64, 896), !13659)
    #dbg_declare(ptr poison, !13493, !DIExpression(DW_OP_LLVM_fragment, 64, 896), !13660)
  %i.j = alloca [128 x i8], align 8               ; 7 uses
  %.sroa.614 = alloca [112 x i8], align 8         ; 6 uses
  %i.k = alloca [56 x i8], align 8                ; 3 uses
    #dbg_declare(ptr poison, !13534, !DIExpression(DW_OP_LLVM_fragment, 64, 448), !13661)
    #dbg_declare(ptr poison, !13534, !DIExpression(DW_OP_LLVM_fragment, 512, 512), !13661)
    #dbg_declare(ptr poison, !13487, !DIExpression(DW_OP_LLVM_fragment, 64, 448), !13662)
    #dbg_declare(ptr poison, !13487, !DIExpression(DW_OP_LLVM_fragment, 512, 512), !13662)
  %i.l = alloca [128 x i8], align 8               ; 7 uses
  %.sroa.6 = alloca [56 x i8], align 8            ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 10 uses
    #dbg_declare(ptr %i.m, !984, !DIExpression(DW_OP_LLVM_fragment, 0, 192), !13663)
  %i.n = alloca [56 x i8], align 8                ; 3 uses
    #dbg_declare(ptr %i.m, !984, !DIExpression(DW_OP_LLVM_fragment, 0, 192), !13665)
  %i.o = alloca [48 x i8], align 8                ; 5 uses
  %i.p = alloca [4 x i8], align 4                 ; 4 uses
    #dbg_value(ptr %1, !13471, !DIExpression(), !13667)
    #dbg_value(ptr %1, !13668, !DIExpression(), !13671)
    #dbg_value(ptr %1, !13673, !DIExpression(), !13676)
    #dbg_value(ptr %1, !13668, !DIExpression(), !13678)
    #dbg_value(ptr %1, !13673, !DIExpression(), !13680)
    #dbg_value(ptr %1, !13673, !DIExpression(), !13683)
    #dbg_value(ptr %1, !13673, !DIExpression(), !13685)
    #dbg_value(ptr %1, !13668, !DIExpression(), !13687)
    #dbg_value(ptr %1, !13673, !DIExpression(), !13689)
    #dbg_value(ptr %1, !13692, !DIExpression(), !13695)
    #dbg_value(ptr %1, !13697, !DIExpression(), !13700)
    #dbg_value(ptr %1, !13673, !DIExpression(), !13702)
    #dbg_value(ptr %1, !13704, !DIExpression(), !13707)
    #dbg_value(ptr %1, !13668, !DIExpression(), !13709)
    #dbg_value(ptr %1, !13673, !DIExpression(), !13711)
    #dbg_declare(ptr %i.m, !13479, !DIExpression(), !13714)
    #dbg_declare(ptr %i.m, !13715, !DIExpression(), !13719)
    #dbg_declare(ptr %i.m, !13715, !DIExpression(), !13721)
    #dbg_declare(ptr %i.m, !13715, !DIExpression(), !13723)
    #dbg_declare(ptr %i.m, !13715, !DIExpression(), !13725)
    #dbg_declare(ptr poison, !13718, !DIExpression(), !13727)
    #dbg_declare(ptr %i.n, !13483, !DIExpression(), !13728)
    #dbg_declare(ptr %i.l, !13651, !DIExpression(), !13729)
    #dbg_declare(ptr %i.k, !13485, !DIExpression(), !13730)
    #dbg_declare(ptr %i.j, !13622, !DIExpression(), !13731)
    #dbg_declare(ptr %i.i, !13491, !DIExpression(), !13732)
    #dbg_declare(ptr %i.h, !13497, !DIExpression(), !13733)
    #dbg_declare(ptr %i.d, !13499, !DIExpression(), !13734)
    #dbg_declare(ptr poison, !13718, !DIExpression(), !13735)
    #dbg_declare(ptr %i.g, !13579, !DIExpression(), !13736)
    #dbg_declare(ptr poison, !13652, !DIExpression(), !13737)
    #dbg_declare(ptr poison, !13623, !DIExpression(), !13738)
    #dbg_value(i8 0, !13476, !DIExpression(), !13739)
    #dbg_value(i8 5, !13740, !DIExpression(), !13748)
    #dbg_value(i32 11, !13746, !DIExpression(), !13748)
    #dbg_value(i8 4, !13740, !DIExpression(), !13750)
    #dbg_value(i32 13, !13746, !DIExpression(), !13750)
    #dbg_value(i8 3, !13740, !DIExpression(), !13752)
    #dbg_value(i32 10, !13746, !DIExpression(), !13752)
    #dbg_value(i8 2, !13740, !DIExpression(), !13754)
    #dbg_value(i32 9, !13746, !DIExpression(), !13754)
    #dbg_value(i8 1, !13740, !DIExpression(), !13756)
    #dbg_value(i32 12, !13746, !DIExpression(), !13756)
    #dbg_value(i8 0, !13740, !DIExpression(), !13758)
    #dbg_value(i32 7, !13746, !DIExpression(), !13758)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !13760
  %i.q = tail call fastcc noundef i32 @_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE4charB9_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1), !dbg !13761 ; 2 uses
  store i32 %i.q, ptr %i.p, align 4, !dbg !13761
    #dbg_value(ptr %i.p, !13472, !DIExpression(), !13762)
    #dbg_value(ptr @72, !13475, !DIExpression(), !13762)
  %i.r = icmp eq i32 %i.q, 92, !dbg !13763
  br i1 %i.r, label %bb.b, label %bb.c, !dbg !13763, !prof !4047

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !13764
  %.val192 = load ptr, ptr %1, align 8, !dbg !13765, !nonnull !27, !align !3718, !noundef !27 ; 7 uses
    #dbg_value(ptr %.val192, !13766, !DIExpression(DW_OP_plus_uconst, 160, DW_OP_stack_value), !13769)
  %i.s = getelementptr inbounds nuw i8, ptr %.val192, i64 160, !dbg !13771 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !13774
  %i.t = tail call fastcc noundef zeroext i1 @_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE4bumpB9_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1), !dbg !13775
  br i1 %i.t, label %bb.h, label %bb.d, !dbg !13776

bb.c:                                             ; preds = %bb.a
  call void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failedccECs3roNzt6HBWW_12regex_syntax(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.p, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) @72, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #25, !dbg !13777
  unreachable, !dbg !13777

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !13720
    #dbg_value(ptr %.val192, !13766, !DIExpression(DW_OP_plus_uconst, 160, DW_OP_stack_value), !13778)
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 24, !dbg !13780
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !13781
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !dbg !13780
    #dbg_value(i32 10, !976, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !13782)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !13784
  %.val199 = load ptr, ptr %i.v, align 8, !dbg !13784, !nonnull !27, !noundef !27
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !13784
  %.val200 = load i64, ptr %i.w, align 8, !dbg !13784, !noundef !27 ; 5 uses
    #dbg_value(ptr poison, !983, !DIExpression(), !13782)
    #dbg_declare(ptr %i.o, !984, !DIExpression(), !13785)
    #dbg_declare(ptr poison, !988, !DIExpression(), !13786)
    #dbg_declare(ptr poison, !1046, !DIExpression(), !13794)
    #dbg_declare(ptr poison, !1058, !DIExpression(), !13796)
    #dbg_declare(ptr poison, !1068, !DIExpression(), !13798)
    #dbg_declare(ptr poison, !1078, !DIExpression(), !13800)
    #dbg_value(i64 0, !1117, !DIExpression(), !13802)
    #dbg_value(ptr %.val199, !1039, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13804)
    #dbg_value(ptr %.val199, !1033, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13805)
    #dbg_value(ptr %.val199, !1034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13806)
    #dbg_value(ptr %.val199, !1027, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13807)
    #dbg_value(ptr %.val199, !1021, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13808)
    #dbg_value(i64 %.val200, !1039, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13804)
    #dbg_value(i64 %.val200, !1033, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13805)
    #dbg_value(i64 %.val200, !1034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13806)
    #dbg_value(i64 %.val200, !1027, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13807)
    #dbg_value(i64 %.val200, !1021, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13808)
    #dbg_value(ptr %.val199, !1012, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13809)
    #dbg_value(ptr %.val199, !1007, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13810)
    #dbg_value(ptr %.val199, !1000, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13811)
    #dbg_value(ptr %.val199, !1051, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13812)
    #dbg_value(i64 %.val200, !1012, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13809)
    #dbg_value(i64 %.val200, !1007, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13810)
    #dbg_value(i64 %.val200, !1000, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13811)
    #dbg_value(i64 %.val200, !1051, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13812)
    #dbg_value(i64 %.val200, !1052, !DIExpression(), !13813)
    #dbg_value(i64 %.val200, !1065, !DIExpression(), !13814)
    #dbg_value(i64 %.val200, !1075, !DIExpression(), !13815)
    #dbg_value(i64 %.val200, !1141, !DIExpression(), !13816)
    #dbg_value(i64 %.val200, !1173, !DIExpression(), !13818)
    #dbg_value(i64 %.val200, !1093, !DIExpression(), !13820)
    #dbg_value(i64 %.val200, !1125, !DIExpression(), !13802)
    #dbg_value(i64 1, !1094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13820)
end_hunk_0
begin_hunk_1_@llvm.umax.i64
!13174 = distinct !DISubprogram(name: "read<u8>", linkageName: "_RNvMNtNtCsj6eKBz9Db1c_4core3ptr9const_ptrPh4readCs3roNzt6HBWW_12regex_syntax", scope: !1144, file: !1143, line: 1148, type: !13175, scopeLine: 1148, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !43, templateParams: !330, retainedNodes: !13177)
!13175 = !DISubroutineType(types: !13176)
!13176 = !{!19, !329, !1149}
!13177 = !{!13173}
!13178 = !DILocation(line: 0, scope: !13174, inlinedAt: !13179)
!13179 = distinct !DILocation(line: 145, column: 50, scope: !13154, inlinedAt: !13156)
!13180 = !DILocalVariable(name: "src", arg: 1, scope: !13181, file: !1175, line: 1716, type: !329)
!13181 = distinct !DISubprogram(name: "read<u8>", linkageName: "_RINvNtCsj6eKBz9Db1c_4core3ptr4readhECs3roNzt6HBWW_12regex_syntax", scope: !322, file: !1175, line: 1716, type: !13175, scopeLine: 1716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !43, templateParams: !330, retainedNodes: !13182)
!13182 = !{!13180}
!13183 = !DILocation(line: 0, scope: !13181, inlinedAt: !13184)
!13184 = distinct !DILocation(line: 1153, column: 18, scope: !13174, inlinedAt: !13179)
!13185 = !DILocation(line: 1755, column: 9, scope: !13181, inlinedAt: !13184)
!13186 = !{!13187}
!13187 = distinct !{!13187, !13188, !"_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range: argument 0"}
!13188 = distinct !{!13188, !"_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range"}
!13189 = !DILocalVariable(name: "self", arg: 1, scope: !13190, file: !4583, line: 1227, type: !19)
!13190 = distinct !DISubprogram(name: "is_utf8_char_boundary", linkageName: "_RNvMs4_NtCsj6eKBz9Db1c_4core3numh21is_utf8_char_boundary", scope: !4584, file: !4583, line: 1227, type: !4585, scopeLine: 1227, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !43, templateParams: !27, retainedNodes: !13191)
!13191 = !{!13189}
!13192 = !DILocation(line: 0, scope: !13190, inlinedAt: !13193)
!13193 = distinct !DILocation(line: 145, column: 57, scope: !13154, inlinedAt: !13156)
!13194 = !DILocation(line: 1229, column: 9, scope: !13190, inlinedAt: !13193)
!13195 = !DILocation(line: 145, column: 24, scope: !13154, inlinedAt: !13156)
!13196 = !{!"branch_weights", i32 2146410443, i32 1073205}
!13197 = !DILocation(line: 871, column: 18, scope: !13159, inlinedAt: !13165)
!13198 = !DILocation(line: 0, scope: !13174, inlinedAt: !13199)
!13199 = distinct !DILocation(line: 146, column: 63, scope: !13154, inlinedAt: !13156)
!13200 = !DILocation(line: 0, scope: !13181, inlinedAt: !13201)
!13201 = distinct !DILocation(line: 1153, column: 18, scope: !13202, inlinedAt: !13199)
!13202 = !DILexicalBlockFile(scope: !13174, file: !1143, discriminator: 2)
!13203 = !DILocation(line: 1755, column: 9, scope: !13181, inlinedAt: !13201)
!13204 = !DILocation(line: 0, scope: !13190, inlinedAt: !13205)
!13205 = distinct !DILocation(line: 146, column: 70, scope: !13154, inlinedAt: !13156)
!13206 = !DILocation(line: 1229, column: 9, scope: !13190, inlinedAt: !13205)
!13207 = !DILocation(line: 262, column: 12, scope: !13118, inlinedAt: !13124)
!13208 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!13209 = !DILocation(line: 1688, column: 28, scope: !12971)
!13210 = !DILocation(line: 1688, column: 16, scope: !12971)
!13211 = !DILocation(line: 1689, column: 21, scope: !12971)
!13212 = !DILocation(line: 1689, column: 16, scope: !12971)
!13213 = !DILocation(line: 555, column: 22, scope: !13062, inlinedAt: !13214)
!13214 = !DILocation(line: 632, column: 27, scope: !13006, inlinedAt: !13003)
!13215 = !DILocation(line: 558, column: 18, scope: !13062, inlinedAt: !13214)
!13216 = !DILocation(line: 1690, column: 16, scope: !12971)
!13217 = !DILocation(line: 335, column: 21, scope: !13111, inlinedAt: !13116)
!13218 = !DILocation(line: 0, scope: !13132, inlinedAt: !13136)
!13219 = !DILocation(line: 305, column: 27, scope: !13132, inlinedAt: !13136)
!13220 = !DILocation(line: 0, scope: !13134, inlinedAt: !13136)
!13221 = !DILocation(line: 871, column: 18, scope: !13139, inlinedAt: !13143)
!13222 = !DILocation(line: 0, scope: !12975)
!13223 = !DILocalVariable(name: "src", arg: 1, scope: !13224, file: !4583, line: 1773, type: !995)
!13224 = distinct !DISubprogram(name: "from_ascii_bytes_radix_impl", linkageName: "_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl", scope: !13019, file: !4583, line: 1773, type: !13225, scopeLine: 1773, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !43, templateParams: !27, retainedNodes: !13227)
!13225 = !DISubroutineType(types: !13226)
!13226 = !{!13022, !995, !433}
!13227 = !{!13223, !13228, !13229, !13231, !13233, !13234, !13236, !13238, !13240, !13242, !13244, !13245, !13247, !13249, !13251, !13252, !13254, !13256, !13258, !13259, !13261, !13263, !13265, !13267, !13269, !13271, !13272, !13274, !13276, !13278, !13280}
!13228 = !DILocalVariable(name: "radix", arg: 2, scope: !13224, file: !4583, line: 1773, type: !433)
!13229 = !DILocalVariable(name: "is_signed_ty", scope: !13230, file: !4583, line: 1786, type: !282, align: 8)
!13230 = distinct !DILexicalBlock(scope: !13224, file: !4583, line: 1786, column: 17)
!13231 = !DILocalVariable(name: "is_positive", scope: !13232, file: !4583, line: 1788, type: !282, align: 8)
!13232 = distinct !DILexicalBlock(scope: !13230, file: !4583, line: 1788, column: 17)
!13233 = !DILocalVariable(name: "digits", scope: !13232, file: !4583, line: 1788, type: !995, align: 64)
!13234 = !DILocalVariable(name: "rest", scope: !13235, file: !4583, line: 1792, type: !995, align: 64)
!13235 = distinct !DILexicalBlock(scope: !13230, file: !4583, line: 1792, column: 21)
!13236 = !DILocalVariable(name: "rest", scope: !13237, file: !4583, line: 1793, type: !995, align: 64)
!13237 = distinct !DILexicalBlock(scope: !13230, file: !4583, line: 1793, column: 21)
!13238 = !DILocalVariable(name: "rest", scope: !13237, file: !4583, line: 1793, type: !13239, align: 64)
!13239 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&&[u8]", baseType: !995, size: 64, align: 64, dwarfAddressSpace: 0)
!13240 = !DILocalVariable(name: "result", scope: !13241, file: !4583, line: 1797, type: !433, align: 32)
!13241 = distinct !DILexicalBlock(scope: !13232, file: !4583, line: 1797, column: 17)
!13242 = !DILocalVariable(name: "c", scope: !13243, file: !4583, line: 1819, type: !4201, align: 64)
!13243 = distinct !DILexicalBlock(scope: !13241, file: !4583, line: 1819, column: 63)
!13244 = !DILocalVariable(name: "rest", scope: !13243, file: !4583, line: 1819, type: !995, align: 64)
!13245 = !DILocalVariable(name: "x", scope: !13246, file: !4583, line: 1821, type: !433, align: 32)
!13246 = distinct !DILexicalBlock(scope: !13243, file: !4583, line: 1821, column: 33)
!13247 = !DILocalVariable(name: "value", scope: !13248, file: !4583, line: 1802, type: !433, align: 32)
!13248 = distinct !DILexicalBlock(scope: !13243, file: !4583, line: 1802, column: 29)
!13249 = !DILocalVariable(name: "c", scope: !13250, file: !4583, line: 1819, type: !4201, align: 64)
!13250 = distinct !DILexicalBlock(scope: !13241, file: !4583, line: 1819, column: 63)
!13251 = !DILocalVariable(name: "rest", scope: !13250, file: !4583, line: 1819, type: !995, align: 64)
!13252 = !DILocalVariable(name: "x", scope: !13253, file: !4583, line: 1821, type: !433, align: 32)
!13253 = distinct !DILexicalBlock(scope: !13250, file: !4583, line: 1821, column: 33)
!13254 = !DILocalVariable(name: "value", scope: !13255, file: !4583, line: 1802, type: !433, align: 32)
!13255 = distinct !DILexicalBlock(scope: !13250, file: !4583, line: 1802, column: 29)
!13256 = !DILocalVariable(name: "c", scope: !13257, file: !4583, line: 1835, type: !4201, align: 64)
!13257 = distinct !DILexicalBlock(scope: !13241, file: !4583, line: 1835, column: 63)
!13258 = !DILocalVariable(name: "rest", scope: !13257, file: !4583, line: 1835, type: !995, align: 64)
!13259 = !DILocalVariable(name: "mul", scope: !13260, file: !4583, line: 1846, type: !4243, align: 32)
!13260 = distinct !DILexicalBlock(scope: !13257, file: !4583, line: 1846, column: 33)
!13261 = !DILocalVariable(name: "x", scope: !13262, file: !4583, line: 1847, type: !433, align: 32)
!13262 = distinct !DILexicalBlock(scope: !13260, file: !4583, line: 1847, column: 33)
!13263 = !DILocalVariable(name: "value", scope: !13264, file: !4583, line: 1802, type: !433, align: 32)
!13264 = distinct !DILexicalBlock(scope: !13260, file: !4583, line: 1802, column: 29)
!13265 = !DILocalVariable(name: "value", scope: !13266, file: !4583, line: 1802, type: !433, align: 32)
!13266 = distinct !DILexicalBlock(scope: !13262, file: !4583, line: 1802, column: 29)
!13267 = !DILocalVariable(name: "value", scope: !13268, file: !4583, line: 1802, type: !433, align: 32)
!13268 = distinct !DILexicalBlock(scope: !13262, file: !4583, line: 1802, column: 29)
!13269 = !DILocalVariable(name: "c", scope: !13270, file: !4583, line: 1835, type: !4201, align: 64)
!13270 = distinct !DILexicalBlock(scope: !13241, file: !4583, line: 1835, column: 63)
!13271 = !DILocalVariable(name: "rest", scope: !13270, file: !4583, line: 1835, type: !995, align: 64)
!13272 = !DILocalVariable(name: "mul", scope: !13273, file: !4583, line: 1846, type: !4243, align: 32)
!13273 = distinct !DILexicalBlock(scope: !13270, file: !4583, line: 1846, column: 33)
!13274 = !DILocalVariable(name: "x", scope: !13275, file: !4583, line: 1847, type: !433, align: 32)
!13275 = distinct !DILexicalBlock(scope: !13273, file: !4583, line: 1847, column: 33)
!13276 = !DILocalVariable(name: "value", scope: !13277, file: !4583, line: 1802, type: !433, align: 32)
!13277 = distinct !DILexicalBlock(scope: !13273, file: !4583, line: 1802, column: 29)
!13278 = !DILocalVariable(name: "value", scope: !13279, file: !4583, line: 1802, type: !433, align: 32)
!13279 = distinct !DILexicalBlock(scope: !13275, file: !4583, line: 1802, column: 29)
!13280 = !DILocalVariable(name: "value", scope: !13281, file: !4583, line: 1802, type: !433, align: 32)
!13281 = distinct !DILexicalBlock(scope: !13275, file: !4583, line: 1802, column: 29)
!13282 = !DILocation(line: 0, scope: !13224, inlinedAt: !13283)
!13283 = distinct !DILocation(line: 1682, column: 17, scope: !13018, inlinedAt: !13040)
!13284 = !DILocation(line: 0, scope: !13232, inlinedAt: !13283)
!13285 = !DILocalVariable(name: "radix", arg: 1, scope: !13286, file: !4583, line: 1573, type: !433)
!13286 = distinct !DISubprogram(name: "can_not_overflow<u32>", linkageName: "_RINvNtCsj6eKBz9Db1c_4core3num16can_not_overflowmECs3roNzt6HBWW_12regex_syntax", scope: !14, file: !4583, line: 1573, type: !13287, scopeLine: 1573, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !43, templateParams: !486, retainedNodes: !13289)
!13287 = !DISubroutineType(types: !13288)
!13288 = !{!282, !433, !282, !995}
!13289 = !{!13285, !13290, !13291}
!13290 = !DILocalVariable(name: "is_signed_ty", scope: !13286, file: !4583, line: 1573, type: !282, align: 8)
!13291 = !DILocalVariable(name: "digits", arg: 3, scope: !13286, file: !4583, line: 1573, type: !995)
!13292 = !DILocation(line: 0, scope: !13286, inlinedAt: !13293)
!13293 = distinct !DILocation(line: 1808, column: 20, scope: !13241, inlinedAt: !13283)
!13294 = !DILocalVariable(name: "rhs", arg: 2, scope: !13295, file: !8435, line: 1329, type: !433)
!13295 = distinct !DISubprogram(name: "checked_mul", linkageName: "_RNvMs6_NtCsj6eKBz9Db1c_4core3numm11checked_mul", scope: !12513, file: !8435, line: 1329, type: !12514, scopeLine: 1329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !43, templateParams: !27, retainedNodes: !13296)
!13296 = !{!13297, !13294, !13298, !13300, !13301, !13303}
!13297 = !DILocalVariable(name: "self", arg: 1, scope: !13295, file: !8435, line: 1329, type: !433)
!13298 = !DILocalVariable(name: "a", scope: !13299, file: !8435, line: 1330, type: !433, align: 32)
!13299 = distinct !DILexicalBlock(scope: !13295, file: !8435, line: 1330, column: 13)
!13300 = !DILocalVariable(name: "b", scope: !13299, file: !8435, line: 1330, type: !282, align: 8)
!13301 = !DILocalVariable(name: "a", scope: !13302, file: !8435, line: 1330, type: !433, align: 32)
!13302 = distinct !DILexicalBlock(scope: !13295, file: !8435, line: 1330, column: 13)
!13303 = !DILocalVariable(name: "b", scope: !13302, file: !8435, line: 1330, type: !282, align: 8)
!13304 = !DILocation(line: 0, scope: !13295, inlinedAt: !13305)
!13305 = distinct !DILocation(line: 1846, column: 50, scope: !13257, inlinedAt: !13283)
!13306 = !DILocalVariable(name: "rhs", arg: 2, scope: !13307, file: !8435, line: 3211, type: !433)
!13307 = distinct !DISubprogram(name: "overflowing_mul", linkageName: "_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_mul", scope: !12513, file: !8435, line: 3211, type: !13308, scopeLine: 3211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !43, templateParams: !27, retainedNodes: !13314)
!13308 = !DISubroutineType(types: !13309)
!13309 = !{!13310, !433, !433}
!13310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(u32, bool)", file: !2, size: 64, align: 32, elements: !13311, templateParams: !27, identifier: "207aae7b51c398d54b045bc76bc3c2be")
!13311 = !{!13312, !13313}
!13312 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !13310, file: !2, baseType: !433, size: 32, align: 32)
!13313 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !13310, file: !2, baseType: !282, size: 8, align: 8, offset: 32)
!13314 = !{!13315, !13306}
!13315 = !DILocalVariable(name: "self", arg: 1, scope: !13307, file: !8435, line: 3211, type: !433)
!13316 = !DILocation(line: 0, scope: !13307, inlinedAt: !13317)
!13317 = distinct !DILocation(line: 1330, column: 31, scope: !13295, inlinedAt: !13305)
!13318 = !DILocation(line: 0, scope: !13230, inlinedAt: !13283)
!13319 = !DILocation(line: 1781, column: 20, scope: !13224, inlinedAt: !13283)
!13320 = !DILocation(line: 1788, column: 49, scope: !13230, inlinedAt: !13283)
!13321 = !{!13322}
!13322 = distinct !{!13322, !13323, !"_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl: argument 0"}
!13323 = distinct !{!13323, !"_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl"}
!13324 = !DILocation(line: 0, scope: !13241, inlinedAt: !13283)
!13325 = !DILocalVariable(name: "self", arg: 1, scope: !13326, file: !8435, line: 930, type: !433)
!13326 = distinct !DISubprogram(name: "checked_add", linkageName: "_RNvMs6_NtCsj6eKBz9Db1c_4core3numm11checked_add", scope: !12513, file: !8435, line: 930, type: !12514, scopeLine: 930, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !43, templateParams: !27, retainedNodes: !13327)
!13327 = !{!13325, !13328}
!13328 = !DILocalVariable(name: "rhs", arg: 2, scope: !13326, file: !8435, line: 930, type: !433)
!13329 = !DILocation(line: 0, scope: !13326, inlinedAt: !13330)
!13330 = distinct !DILocation(line: 1849, column: 68, scope: !13262, inlinedAt: !13283)
!13331 = !DILocation(line: 1574, column: 5, scope: !13286, inlinedAt: !13293)
!13332 = !DILocation(line: 1835, column: 43, scope: !13257, inlinedAt: !13283)
!13333 = !DILocation(line: 0, scope: !13257, inlinedAt: !13283)
!13334 = !DILocation(line: 3212, column: 26, scope: !13307, inlinedAt: !13317)
!13335 = !DILocation(line: 0, scope: !13299, inlinedAt: !13305)
!13336 = !DILocation(line: 0, scope: !13260, inlinedAt: !13283)
!13337 = !DILocation(line: 938, column: 37, scope: !13326, inlinedAt: !13330)
!13338 = !DILocation(line: 1835, column: 39, scope: !13257, inlinedAt: !13283)
!13339 = !DILocalVariable(name: "b", arg: 1, scope: !13340, file: !8488, line: 477, type: !282)
!13340 = distinct !DISubprogram(name: "unlikely", linkageName: "_RNvNtCsj6eKBz9Db1c_4core10intrinsics8unlikely", scope: !8489, file: !8488, line: 477, type: !8490, scopeLine: 477, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !43, templateParams: !27, retainedNodes: !13341)
!13341 = !{!13339}
!13342 = !DILocation(line: 0, scope: !13340, inlinedAt: !13343)
!13343 = distinct !DILocation(line: 1331, column: 16, scope: !13299, inlinedAt: !13305)
!13344 = !DILocation(line: 1847, column: 57, scope: !13260, inlinedAt: !13283)
!13345 = !DILocation(line: 478, column: 8, scope: !13340, inlinedAt: !13343)
!13346 = !DILocation(line: 1847, column: 56, scope: !13260, inlinedAt: !13283)
!13347 = !DILocalVariable(name: "self", arg: 1, scope: !13348, file: !3340, line: 406, type: !260)
!13348 = distinct !DISubprogram(name: "to_digit", linkageName: "_RNvMNtNtCsj6eKBz9Db1c_4core4char7methodsc8to_digit", scope: !3341, file: !3340, line: 406, type: !13349, scopeLine: 406, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !43, templateParams: !27, retainedNodes: !13351)
!13349 = !DISubroutineType(types: !13350)
!13350 = !{!4243, !260, !433}
!13351 = !{!13347, !13352, !13353}
!13352 = !DILocalVariable(name: "radix", arg: 2, scope: !13348, file: !3340, line: 406, type: !433)
!13353 = !DILocalVariable(name: "value", scope: !13354, file: !3340, line: 412, type: !433, align: 32)
!13354 = distinct !DILexicalBlock(scope: !13348, file: !3340, line: 412, column: 9)
!13355 = !DILocation(line: 0, scope: !13348, inlinedAt: !13356)
!13356 = distinct !DILocation(line: 1847, column: 69, scope: !13260, inlinedAt: !13283)
!13357 = !DILocation(line: 412, column: 24, scope: !13348, inlinedAt: !13356)
!13358 = !DILocation(line: 0, scope: !13354, inlinedAt: !13356)
!13359 = !DILocation(line: 427, column: 12, scope: !13354, inlinedAt: !13356)
!13360 = !DILocation(line: 0, scope: !13262, inlinedAt: !13283)
!13361 = !DILocation(line: 0, scope: !13340, inlinedAt: !13362)
!13362 = distinct !DILocation(line: 938, column: 16, scope: !13326, inlinedAt: !13330)
!13363 = !DILocation(line: 1801, column: 25, scope: !13260, inlinedAt: !13283)
!13364 = !DILocation(line: 1819, column: 39, scope: !13243, inlinedAt: !13283)
!13365 = !DILocation(line: 0, scope: !13243, inlinedAt: !13283)
!13366 = !DILocation(line: 1821, column: 57, scope: !13243, inlinedAt: !13283)
!13367 = !DILocation(line: 1821, column: 56, scope: !13243, inlinedAt: !13283)
!13368 = !DILocation(line: 0, scope: !13348, inlinedAt: !13369)
!13369 = distinct !DILocation(line: 1821, column: 69, scope: !13243, inlinedAt: !13283)
!13370 = !DILocation(line: 412, column: 24, scope: !13348, inlinedAt: !13369)
!13371 = !DILocation(line: 0, scope: !13354, inlinedAt: !13369)
!13372 = !DILocation(line: 427, column: 12, scope: !13354, inlinedAt: !13369)
!13373 = !DILocation(line: 1801, column: 25, scope: !13243, inlinedAt: !13283)
!13374 = !DILocation(line: 0, scope: !13246, inlinedAt: !13283)
!13375 = !DILocation(line: 1819, column: 43, scope: !13243, inlinedAt: !13283)
!13376 = !DILocation(line: 1820, column: 33, scope: !13243, inlinedAt: !13283)
!13377 = !DILocation(line: 1822, column: 33, scope: !13246, inlinedAt: !13283)
!13378 = !DILocation(line: 1797, column: 34, scope: !13232, inlinedAt: !13283)
!13379 = !DILocation(line: 1861, column: 14, scope: !13224, inlinedAt: !13283)
!13380 = !DILocation(line: 0, scope: !13348, inlinedAt: !13381)
!13381 = distinct !DILocation(line: 1847, column: 69, scope: !13260, inlinedAt: !13283)
!13382 = !DILocation(line: 0, scope: !13354, inlinedAt: !13381)
!13383 = !DILocation(line: 427, column: 12, scope: !13354, inlinedAt: !13381)
!13384 = !DILocalVariable(name: "self", arg: 1, scope: !13385, file: !3460, line: 1178, type: !13022)
!13385 = distinct !DISubprogram(name: "expect<u32, core::num::error::ParseIntError>", linkageName: "_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultmNtNtNtB4_3num5error13ParseIntErrorE6expectCs3roNzt6HBWW_12regex_syntax", scope: !13022, file: !3460, line: 1178, type: !13386, scopeLine: 1178, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !43, templateParams: !13030, declaration: !13388, retainedNodes: !13390)
!13386 = !DISubroutineType(cc: DW_CC_nocall, types: !13387)
!13387 = !{!433, !13022, !922, !1149}
!13388 = !DISubprogram(name: "expect<u32, core::num::error::ParseIntError>", linkageName: "_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultmNtNtNtB4_3num5error13ParseIntErrorE6expectCs3roNzt6HBWW_12regex_syntax", scope: !13022, file: !3460, line: 1178, type: !13389, scopeLine: 1178, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !13030)
!13389 = !DISubroutineType(types: !13387)
!13390 = !{!13384, !13391, !13392, !13394}
!13391 = !DILocalVariable(name: "msg", arg: 2, scope: !13385, file: !3460, line: 1178, type: !922)
!13392 = !DILocalVariable(name: "t", scope: !13393, file: !3460, line: 1183, type: !433, align: 32)
!13393 = distinct !DILexicalBlock(scope: !13385, file: !3460, line: 1183, column: 13)
!13394 = !DILocalVariable(name: "e", scope: !13395, file: !3460, line: 1184, type: !12, align: 8)
!13395 = distinct !DILexicalBlock(scope: !13385, file: !3460, line: 1184, column: 13)
!13396 = !DILocation(line: 0, scope: !13385, inlinedAt: !13397)
!13397 = distinct !DILocation(line: 1697, column: 43, scope: !12975)
!13398 = !DILocation(line: 1184, column: 17, scope: !13395, inlinedAt: !13397)
!13399 = !DILocation(line: 1182, column: 15, scope: !13385, inlinedAt: !13397)
!13400 = !DILocation(line: 1182, column: 9, scope: !13385, inlinedAt: !13397)
!13401 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!13402 = !DILocation(line: 1184, column: 17, scope: !13385, inlinedAt: !13397)
!13403 = !DILocation(line: 1184, column: 23, scope: !13395, inlinedAt: !13397)
!13404 = !DILocation(line: 0, scope: !12977)
!13405 = !DILocalVariable(name: "i", arg: 1, scope: !13406, file: !3340, line: 200, type: !433)
!13406 = distinct !DISubprogram(name: "from_u32", linkageName: "_RNvMNtNtCsj6eKBz9Db1c_4core4char7methodsc8from_u32", scope: !3341, file: !3340, line: 200, type: !13407, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !43, templateParams: !27, retainedNodes: !13409)
!13407 = !DISubroutineType(types: !13408)
!13408 = !{!4160, !433}
!13409 = !{!13405}
!13410 = !DILocation(line: 0, scope: !13406, inlinedAt: !13411)
!13411 = !DILocation(line: 1700, column: 17, scope: !12977)
!13412 = !DILocalVariable(name: "i", arg: 1, scope: !13413, file: !4795, line: 13, type: !433)
!13413 = distinct !DISubprogram(name: "from_u32", linkageName: "_RNvNtNtCsj6eKBz9Db1c_4core4char7convert8from_u32", scope: !4796, file: !4795, line: 13, type: !13407, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !43, templateParams: !27, retainedNodes: !13414)
!13414 = !{!13412, !13415}
!13415 = !DILocalVariable(name: "c", scope: !13416, file: !4795, line: 16, type: !260, align: 32)
!13416 = distinct !DILexicalBlock(scope: !13413, file: !4795, line: 16, column: 9)
!13417 = !DILocation(line: 0, scope: !13413, inlinedAt: !13418)
!13418 = !DILocation(line: 201, column: 9, scope: !13406, inlinedAt: !13411)
!13419 = !DILocalVariable(name: "i", arg: 1, scope: !13420, file: !4795, line: 280, type: !433)
!13420 = distinct !DISubprogram(name: "char_try_from_u32", linkageName: "_RNvNtNtCsj6eKBz9Db1c_4core4char7convert17char_try_from_u32", scope: !4796, file: !4795, line: 280, type: !13421, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !43, templateParams: !27, retainedNodes: !13441)
!13421 = !DISubroutineType(types: !13422)
!13422 = !{!13423, !433}
!13423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Result<char, core::char::convert::CharTryFromError>", scope: !359, file: !2, size: 32, align: 32, flags: DIFlagPublic, elements: !13424, templateParams: !27, identifier: "a44ec55cc93945d3718c110f7578ae5a")
!13424 = !{!13425}
!13425 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !13423, file: !2, size: 32, align: 32, elements: !13426, templateParams: !27, identifier: "361ab053ebc4c2c2c2cb9d7fb3c89368", discriminator: !13440)
!13426 = !{!13427, !13436}
!13427 = !DIDerivedType(tag: DW_TAG_member, name: "Ok", scope: !13425, file: !2, baseType: !13428, size: 32, align: 32)
!13428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !13423, file: !2, size: 32, align: 32, flags: DIFlagPublic, elements: !13429, templateParams: !13431, identifier: "788a3b4f2d8b26d69ea9679f5328ac39")
!13429 = !{!13430}
!13430 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !13428, file: !2, baseType: !260, size: 32, align: 32, flags: DIFlagPublic)
!13431 = !{!4167, !13432}
!13432 = !DITemplateTypeParameter(name: "E", type: !13433)
!13433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CharTryFromError", scope: !4796, file: !2, align: 8, flags: DIFlagPublic, elements: !13434, templateParams: !27, identifier: "fa6ea3328f358621f1e3ac5416daad0a")
!13434 = !{!13435}
!13435 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !13433, file: !2, baseType: !7, align: 8, flags: DIFlagPrivate)
!13436 = !DIDerivedType(tag: DW_TAG_member, name: "Err", scope: !13425, file: !2, baseType: !13437, size: 32, align: 32, extraData: i32 -1)
!13437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Err", scope: !13423, file: !2, size: 32, align: 32, flags: DIFlagPublic, elements: !13438, templateParams: !13431, identifier: "70029348838cd15242e12fe6630b296d")
!13438 = !{!13439}
!13439 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !13437, file: !2, baseType: !13433, align: 8, flags: DIFlagPublic)
!13440 = !DIDerivedType(tag: DW_TAG_member, scope: !13423, file: !2, baseType: !433, size: 32, align: 32, flags: DIFlagArtificial)
!13441 = !{!13419}
!13442 = !DILocation(line: 0, scope: !13420, inlinedAt: !13443)
!13443 = !DILocation(line: 15, column: 11, scope: !13413, inlinedAt: !13418)
!13444 = !DILocation(line: 293, column: 8, scope: !13420, inlinedAt: !13443)
!13445 = !DILocation(line: 297, column: 21, scope: !13420, inlinedAt: !13443)
!13446 = !DILocation(line: 0, scope: !12979)
!13447 = !DILocation(line: 1701, column: 9, scope: !12979)
!13448 = !DILocation(line: 385, column: 9, scope: !12981, inlinedAt: !12985)
!13449 = !DILocation(line: 1706, column: 5, scope: !12964)
!13450 = !DILocation(line: 1706, column: 6, scope: !12964)
!13451 = !DILocation(line: 969, column: 21, scope: !13042, inlinedAt: !13051)
!13452 = distinct !DISubprogram(name: "parse_escape<&mut regex_syntax::ast::parse::Parser>", linkageName: "_RNvMs3_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE12parse_escapeB9_", scope: !463, file: !211, line: 1479, type: !13453, scopeLine: 1479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !43, templateParams: !927, declaration: !13469, retainedNodes: !13470)
!13453 = !DISubroutineType(types: !13454)
!13454 = !{!13455, !462}
!13455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Result<regex_syntax::ast::parse::Primitive, regex_syntax::ast::Error>", scope: !359, file: !2, size: 1024, align: 64, flags: DIFlagPublic, elements: !13456, templateParams: !27, identifier: "4ac5fa64a52a64bacdb10d552a1bd72c")
!13456 = !{!13457}
!13457 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !13455, file: !2, size: 1024, align: 64, elements: !13458, templateParams: !27, identifier: "7e587899ce4970d711033c2b879a7258", discriminator: !13468)
!13458 = !{!13459, !13464}
!13459 = !DIDerivedType(tag: DW_TAG_member, name: "Ok", scope: !13457, file: !2, baseType: !13460, size: 1024, align: 64, extraData: i64 -1)
!13460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !13455, file: !2, size: 1024, align: 64, flags: DIFlagPublic, elements: !13461, templateParams: !13463, identifier: "561b9d79de4d838516818d5469fdcd06")
!13461 = !{!13462}
!13462 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !13460, file: !2, baseType: !212, size: 896, align: 64, offset: 64, flags: DIFlagPublic)
!13463 = !{!1224, !369}
!13464 = !DIDerivedType(tag: DW_TAG_member, name: "Err", scope: !13457, file: !2, baseType: !13465, size: 1024, align: 64)
!13465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Err", scope: !13455, file: !2, size: 1024, align: 64, flags: DIFlagPublic, elements: !13466, templateParams: !13463, identifier: "d9906f176292070b72b9c2892119f634")
!13466 = !{!13467}
!13467 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !13465, file: !2, baseType: !370, size: 1024, align: 64, flags: DIFlagPublic)
!13468 = !DIDerivedType(tag: DW_TAG_member, scope: !13455, file: !2, baseType: !126, size: 64, align: 64, flags: DIFlagArtificial)
!13469 = !DISubprogram(name: "parse_escape<&mut regex_syntax::ast::parse::Parser>", linkageName: "_RNvMs3_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE12parse_escapeB9_", scope: !463, file: !211, line: 1479, type: !13453, scopeLine: 1479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !927)
!13470 = !{!13471, !13472, !13475, !13476, !13479, !13481, !13483, !13485, !13487, !13489, !13491, !13493, !13495, !13497, !13499, !13501, !13507, !13509, !13512, !13527}
!13471 = !DILocalVariable(name: "self", arg: 1, scope: !13452, file: !211, line: 1479, type: !462)
!13472 = !DILocalVariable(name: "left_val", scope: !13473, file: !211, line: 1480, type: !3346, align: 64)
!13473 = !DILexicalBlockFile(scope: !13474, file: !211, discriminator: 0)
!13474 = distinct !DILexicalBlock(scope: !13452, file: !4981, line: 46, column: 13)
!13475 = !DILocalVariable(name: "right_val", scope: !13473, file: !211, line: 1480, type: !3346, align: 64)
!13476 = !DILocalVariable(name: "kind", scope: !13477, file: !211, line: 1480, type: !192, align: 8)
!13477 = !DILexicalBlockFile(scope: !13478, file: !211, discriminator: 0)
!13478 = distinct !DILexicalBlock(scope: !13474, file: !4981, line: 48, column: 21)
!13479 = !DILocalVariable(name: "start", scope: !13480, file: !211, line: 1481, type: !227, align: 64)
!13480 = distinct !DILexicalBlock(scope: !13452, file: !211, line: 1481, column: 9)
!13481 = !DILocalVariable(name: "c", scope: !13482, file: !211, line: 1488, type: !260, align: 32)
!13482 = distinct !DILexicalBlock(scope: !13480, file: !211, line: 1488, column: 9)
!13483 = !DILocalVariable(name: "lit", scope: !13484, file: !211, line: 1498, type: !221, align: 64)
!13484 = distinct !DILexicalBlock(scope: !13482, file: !211, line: 1498, column: 17)
!13485 = !DILocalVariable(name: "lit", scope: !13486, file: !211, line: 1509, type: !221, align: 64)
!13486 = distinct !DILexicalBlock(scope: !13482, file: !211, line: 1509, column: 17)
!13487 = !DILocalVariable(name: "residual", scope: !13488, file: !211, line: 1509, type: !4988, align: 64)
!13488 = distinct !DILexicalBlock(scope: !13482, file: !211, line: 1509, column: 47)
!13489 = !DILocalVariable(name: "val", scope: !13490, file: !211, line: 1509, type: !221, align: 64)
!13490 = distinct !DILexicalBlock(scope: !13482, file: !211, line: 1509, column: 47)
!13491 = !DILocalVariable(name: "cls", scope: !13492, file: !211, line: 1514, type: !287, align: 64)
!13492 = distinct !DILexicalBlock(scope: !13482, file: !211, line: 1514, column: 17)
!13493 = !DILocalVariable(name: "residual", scope: !13494, file: !211, line: 1514, type: !4988, align: 64)
!13494 = distinct !DILexicalBlock(scope: !13482, file: !211, line: 1514, column: 57)
!13495 = !DILocalVariable(name: "val", scope: !13496, file: !211, line: 1514, type: !287, align: 64)
!13496 = distinct !DILexicalBlock(scope: !13482, file: !211, line: 1514, column: 57)
!13497 = !DILocalVariable(name: "cls", scope: !13498, file: !211, line: 1519, type: !277, align: 64)
!13498 = distinct !DILexicalBlock(scope: !13482, file: !211, line: 1519, column: 17)
!13499 = !DILocalVariable(name: "span", scope: !13500, file: !211, line: 1528, type: !224, align: 64)
!13500 = distinct !DILexicalBlock(scope: !13482, file: !211, line: 1528, column: 9)
!13501 = !DILocalVariable(name: "special", scope: !13502, file: !211, line: 1543, type: !13503, align: 64)
!13502 = distinct !DILexicalBlock(scope: !13500, file: !211, line: 1543, column: 9)
!13503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<&mut regex_syntax::ast::parse::Parser>", scope: !13504, file: !2, size: 64, align: 64, elements: !13505, templateParams: !27, identifier: "d5528698ce9140848e048058258acb69")
!13504 = !DINamespace(name: "parse_escape", scope: !3465)
!13505 = !{!13506}
!13506 = !DIDerivedType(tag: DW_TAG_member, name: "_ref__span", scope: !13503, file: !2, baseType: !954, size: 64, align: 64)
!13507 = !DILocalVariable(name: "wb", scope: !13508, file: !211, line: 1566, type: !265, align: 64)
!13508 = distinct !DILexicalBlock(scope: !13502, file: !211, line: 1566, column: 17)
!13509 = !DILocalVariable(name: "residual", scope: !13510, file: !211, line: 1574, type: !4988, align: 64)
!13510 = distinct !DILexicalBlock(scope: !13511, file: !211, line: 1574, column: 70)
!13511 = distinct !DILexicalBlock(scope: !13508, file: !211, line: 1575, column: 21)
!13512 = !DILocalVariable(name: "val", scope: !13513, file: !211, line: 1574, type: !13514, align: 8)
!13513 = distinct !DILexicalBlock(scope: !13511, file: !211, line: 1574, column: 70)
!13514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<regex_syntax::ast::AssertionKind>", scope: !3673, file: !2, size: 8, align: 8, flags: DIFlagPublic, elements: !13515, templateParams: !27, identifier: "6e6a4b308d1c5c18d2b59a0e4aa2cc15")
!13515 = !{!13516}
!13516 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !13514, file: !2, size: 8, align: 8, elements: !13517, templateParams: !27, identifier: "4808d206d97b0ee4f442c205d9598e18", discriminator: !13526)
!13517 = !{!13518, !13522}
!13518 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !13516, file: !2, baseType: !13519, size: 8, align: 8, extraData: i8 -1)
!13519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !13514, file: !2, size: 8, align: 8, flags: DIFlagPublic, elements: !27, templateParams: !13520, identifier: "5a1ddb3995a6bbe48759fb9cf5e47cd7")
!13520 = !{!13521}
!13521 = !DITemplateTypeParameter(name: "T", type: !69)
!13522 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !13516, file: !2, baseType: !13523, size: 8, align: 8)
!13523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !13514, file: !2, size: 8, align: 8, flags: DIFlagPublic, elements: !13524, templateParams: !13520, identifier: "539591a2e9aca9f73955dd394d5ab3")
!13524 = !{!13525}
!13525 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !13523, file: !2, baseType: !69, size: 8, align: 8, flags: DIFlagPublic)
!13526 = !DIDerivedType(tag: DW_TAG_member, scope: !13514, file: !2, baseType: !19, size: 8, align: 8, flags: DIFlagArtificial)
!13527 = !DILocalVariable(name: "kind", scope: !13511, file: !211, line: 1573, type: !69, align: 8)
!13528 = !DILocalVariable(name: "e", scope: !13529, file: !3460, line: 2193, type: !370, align: 64)
!13529 = distinct !DILexicalBlock(scope: !13530, file: !3460, line: 2193, column: 13)
!13530 = distinct !DISubprogram(name: "from_residual<regex_syntax::ast::parse::Primitive, regex_syntax::ast::Error, regex_syntax::ast::Error>", linkageName: "_RNvXsq_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultNtNtNtCs3roNzt6HBWW_12regex_syntax3ast5parse9PrimitiveNtBO_5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1C_EE13from_residualBQ_", scope: !5046, file: !3460, line: 2191, type: !13531, scopeLine: 2191, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !43, templateParams: !13539, retainedNodes: !13533)
!13531 = !DISubroutineType(types: !13532)
!13532 = !{!13455, !4988, !1149}
!13533 = !{!13534, !13535, !13537, !13528}
!13534 = !DILocalVariable(name: "residual", arg: 1, scope: !13530, file: !3460, line: 2191, type: !4988)
!13535 = !DILocalVariable(name: "e", scope: !13536, file: !3460, line: 2193, type: !370, align: 64)
!13536 = distinct !DILexicalBlock(scope: !13530, file: !3460, line: 2193, column: 13)
!13537 = !DILocalVariable(name: "e", scope: !13538, file: !3460, line: 2193, type: !370, align: 64)
!13538 = distinct !DILexicalBlock(scope: !13530, file: !3460, line: 2193, column: 13)
!13539 = !{!1224, !369, !5052}
!13540 = !DILocation(line: 2193, column: 17, scope: !13529, inlinedAt: !13541)
!13541 = !DILocation(line: 1574, column: 25, scope: !13542)
!13542 = !DILexicalBlockFile(scope: !13510, file: !211, discriminator: 2)
!13543 = !DILocalVariable(name: "e", scope: !13544, file: !3460, line: 2179, type: !370, align: 64)
!13544 = distinct !DILexicalBlock(scope: !13545, file: !3460, line: 2179, column: 13)
!13545 = distinct !DISubprogram(name: "branch<core::option::Option<regex_syntax::ast::AssertionKind>, regex_syntax::ast::Error>", linkageName: "_RNvXsp_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultINtNtB7_6option6OptionNtNtCs3roNzt6HBWW_12regex_syntax3ast13AssertionKindENtB18_5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1a_", scope: !5059, file: !3460, line: 2176, type: !13546, scopeLine: 2176, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !43, templateParams: !13571, retainedNodes: !13578)
!13546 = !DISubroutineType(types: !13547)
!13547 = !{!13548, !13563}
!13548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ControlFlow<core::result::Result<core::convert::Infallible, regex_syntax::ast::Error>, core::option::Option<regex_syntax::ast::AssertionKind>>", scope: !5063, file: !2, size: 1024, align: 64, flags: DIFlagPublic, elements: !13549, templateParams: !27, identifier: "8900f9b309ab827dae74b48b322eb248")
!13549 = !{!13550}
!13550 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !13548, file: !2, size: 1024, align: 64, elements: !13551, templateParams: !27, identifier: "df7a412ab3b493e68af5bed463a965fd", discriminator: !13562)
!13551 = !{!13552, !13558}
!13552 = !DIDerivedType(tag: DW_TAG_member, name: "Continue", scope: !13550, file: !2, baseType: !13553, size: 1024, align: 64, extraData: i64 -1)
!13553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Continue", scope: !13548, file: !2, size: 1024, align: 64, flags: DIFlagPublic, elements: !13554, templateParams: !13556, identifier: "85e58e674e6d29573432e0afc3b96dcb")
!13554 = !{!13555}
!13555 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !13553, file: !2, baseType: !13514, size: 8, align: 8, offset: 64, flags: DIFlagPublic)
!13556 = !{!5072, !13557}
!13557 = !DITemplateTypeParameter(name: "C", type: !13514)
!13558 = !DIDerivedType(tag: DW_TAG_member, name: "Break", scope: !13550, file: !2, baseType: !13559, size: 1024, align: 64)
!13559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Break", scope: !13548, file: !2, size: 1024, align: 64, flags: DIFlagPublic, elements: !13560, templateParams: !13556, identifier: "db4ff173db2d29ec68f110ddb4b8e827")
!13560 = !{!13561}
!13561 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !13559, file: !2, baseType: !4988, size: 1024, align: 64, flags: DIFlagPublic)
!13562 = !DIDerivedType(tag: DW_TAG_member, scope: !13548, file: !2, baseType: !126, size: 64, align: 64, flags: DIFlagArtificial)
!13563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Result<core::option::Option<regex_syntax::ast::AssertionKind>, regex_syntax::ast::Error>", scope: !359, file: !2, size: 1024, align: 64, flags: DIFlagPublic, elements: !13564, templateParams: !27, identifier: "47df039605bdf04ca51ccf89489f74eb")
!13564 = !{!13565}
!13565 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !13563, file: !2, size: 1024, align: 64, elements: !13566, templateParams: !27, identifier: "4eb4700e8437913da53fb004ba4740ad", discriminator: !13577)
!13566 = !{!13567, !13573}
!13567 = !DIDerivedType(tag: DW_TAG_member, name: "Ok", scope: !13565, file: !2, baseType: !13568, size: 1024, align: 64, extraData: i64 -1)
!13568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !13563, file: !2, size: 1024, align: 64, flags: DIFlagPublic, elements: !13569, templateParams: !13571, identifier: "5823dae55ece1bcea2ed7c809c894887")
!13569 = !{!13570}
!13570 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !13568, file: !2, baseType: !13514, size: 8, align: 8, offset: 64, flags: DIFlagPublic)
!13571 = !{!13572, !369}
!13572 = !DITemplateTypeParameter(name: "T", type: !13514)
!13573 = !DIDerivedType(tag: DW_TAG_member, name: "Err", scope: !13565, file: !2, baseType: !13574, size: 1024, align: 64)
!13574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Err", scope: !13563, file: !2, size: 1024, align: 64, flags: DIFlagPublic, elements: !13575, templateParams: !13571, identifier: "8c25ed08004f3a7ef9ea091062de3c02")
!13575 = !{!13576}
!13576 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !13574, file: !2, baseType: !370, size: 1024, align: 64, flags: DIFlagPublic)
end_hunk_1
