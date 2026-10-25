Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_syntax-a50718c2c80ccc00.regex_syntax.2817212ec1702884-cgu.00?download=true
inline.NumInlined: 618
inline.NumDeleted: 116
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvMs3_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE11parse_groupB9_:bb.a
bb.cf:                                            ; preds = %bb.ce
  %i.hl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3ast3AstEBF_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.i) #23
          to label %.body unwind label %bb.cg, !dbg !13642

bb.cg:                                            ; preds = %bb.cf
  %i.hm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21, !dbg !13643
  unreachable, !dbg !13643

bb.ch:                                            ; preds = %bb.cd
    #dbg_value(ptr %i.hj, !3299, !DIExpression(), !12961)
  store i64 %i.hg, ptr %i.hj, align 8, !dbg !13644
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hj, i64 8, !dbg !13644
  store ptr %i.hh, ptr %i.hn, align 8, !dbg !13644
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !13645
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !13646
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.521.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i64 24, i1 false), !dbg !13647
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.y, i64 88, i1 false), !dbg !13647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !13630
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !13646
  store ptr %i.hj, ptr %.sroa.420.0..sroa_idx, align 8, !dbg !13646
  %.sroa.521.sroa.4.0..sroa.521.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !13646
  store i64 %i.am, ptr %.sroa.521.sroa.4.0..sroa.521.0..sroa_idx.sroa_idx, align 8, !dbg !13646
  %.sroa.521.sroa.5.0..sroa.521.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !13646
  store i64 %spec.select18.i, ptr %.sroa.521.sroa.5.0..sroa.521.0..sroa_idx.sroa_idx, align 8, !dbg !13646
  %.sroa.521.sroa.6.0..sroa.521.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136, !dbg !13646
  store i64 %spec.select.i, ptr %.sroa.521.sroa.6.0..sroa.521.0..sroa_idx.sroa_idx, align 8, !dbg !13646
  br label %bb.bu, !dbg !13648

bb.ci:                                            ; preds = %_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE5errorB9_.exit, %bb.bx, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0), !dbg !13649
  ret void, !dbg !13618
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE11parse_octalB9_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !13655 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
    #dbg_declare(ptr poison, !13751, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !13755)
    #dbg_declare(ptr poison, !13746, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !13756)
  %.sroa.6 = alloca [16 x i8], align 8            ; 4 uses
    #dbg_declare(ptr %.sroa.6, !13752, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !13757)
    #dbg_declare(ptr %.sroa.6, !13745, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !13758)
    #dbg_value(ptr %1, !13744, !DIExpression(), !13759)
    #dbg_value(ptr %1, !13760, !DIExpression(), !13763)
    #dbg_value(ptr %1, !13764, !DIExpression(), !13767)
    #dbg_value(ptr %1, !13760, !DIExpression(), !13769)
    #dbg_value(ptr %1, !13764, !DIExpression(), !13771)
    #dbg_value(ptr %1, !13760, !DIExpression(), !13774)
    #dbg_value(ptr %1, !13764, !DIExpression(), !13776)
    #dbg_value(ptr %1, !13760, !DIExpression(), !13779)
    #dbg_value(ptr %1, !13780, !DIExpression(), !13783)
    #dbg_value(i32 8, !13784, !DIExpression(), !13788)
    #dbg_value(ptr @63, !13789, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13797)
    #dbg_value(i64 20, !13789, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13797)
  %.val40 = load ptr, ptr %1, align 8, !dbg !13882, !nonnull !978, !align !2250, !noundef !978 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val40, i64 193, !dbg !13883
  %i.c = load i8, ptr %i.b, align 1, !dbg !13883, !range !2261, !noundef !978
  %i.d = trunc nuw i8 %i.c to i1, !dbg !13883
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !13883, !prof !2371

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #25, !dbg !13884
  unreachable, !dbg !13884

bb.c:                                             ; preds = %bb.a
  %i.e = tail call fastcc noundef i32 @_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE4charB9_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1), !dbg !13885
  %i.f = icmp samesign ugt i32 %i.e, 47, !dbg !13886
  br i1 %i.f, label %bb.d, label %bb.e, !dbg !13886, !prof !2371

bb.d:                                             ; preds = %bb.c
  %i.g = tail call fastcc noundef i32 @_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE4charB9_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1), !dbg !13887
  %i.h = icmp samesign ult i32 %i.g, 56, !dbg !13888
  br i1 %i.h, label %bb.f, label %bb.e, !dbg !13888, !prof !2371

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @66, i64 noundef 58, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #25, !dbg !13889
  unreachable, !dbg !13889

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6), !dbg !13890
    #dbg_value(ptr %.val40, !13798, !DIExpression(DW_OP_plus_uconst, 160, DW_OP_stack_value), !13801)
  %i.i = getelementptr inbounds nuw i8, ptr %.val40, i64 160, !dbg !13891 ; 3 uses
  %.sroa.0.0.copyload = load i64, ptr %i.i, align 8, !dbg !13892 ; 9 uses
    #dbg_value(i64 %.sroa.0.0.copyload, !13745, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13803)
    #dbg_value(i64 %.sroa.0.0.copyload, !13752, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13804)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.val40, i64 168, !dbg !13892 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i64 16, i1 false), !dbg !13892
  br label %bb.g, !dbg !13893

bb.g:                                             ; preds = %bb.o, %bb.f
  %i.j = tail call fastcc noundef zeroext i1 @_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE4bumpB9_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1), !dbg !13894
  br i1 %i.j, label %bb.m, label %bb.h, !dbg !13895

bb.h:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.g
    #dbg_value(ptr %.val40, !13798, !DIExpression(DW_OP_plus_uconst, 160, DW_OP_stack_value), !13806)
  %.sroa.04.0.copyload = load i64, ptr %i.i, align 8, !dbg !13896 ; 7 uses
    #dbg_value(i64 %.sroa.04.0.copyload, !13746, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13807)
    #dbg_value(i64 %.sroa.04.0.copyload, !13751, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13804)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !13897
  %i.l = load ptr, ptr %i.k, align 8, !dbg !13897, !nonnull !978, !noundef !978 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !13897
  %i.n = load i64, ptr %i.m, align 8, !dbg !13897, !noundef !978 ; 4 uses
    #dbg_value(ptr %i.l, !13808, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13812)
    #dbg_value(ptr %i.l, !13813, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13817)
    #dbg_value(ptr %i.l, !13818, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13825)
    #dbg_value(ptr %i.l, !13826, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13830)
    #dbg_value(ptr %i.l, !13831, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13837)
    #dbg_value(i64 %i.n, !13808, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13812)
    #dbg_value(i64 %i.n, !13813, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13817)
    #dbg_value(i64 %i.n, !13818, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13825)
    #dbg_value(i64 %i.n, !13826, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13830)
    #dbg_value(i64 %i.n, !13831, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13837)
    #dbg_value(i64 %.sroa.0.0.copyload, !13809, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13812)
    #dbg_value(i64 %.sroa.0.0.copyload, !13814, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13817)
    #dbg_value(i64 %.sroa.0.0.copyload, !13820, !DIExpression(), !13838)
    #dbg_value(i64 %.sroa.0.0.copyload, !13832, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13837)
    #dbg_value(i64 %.sroa.0.0.copyload, !13839, !DIExpression(), !13843)
    #dbg_value(i64 %.sroa.04.0.copyload, !13809, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13812)
    #dbg_value(i64 %.sroa.04.0.copyload, !13814, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13817)
    #dbg_value(i64 %.sroa.04.0.copyload, !13821, !DIExpression(), !13838)
    #dbg_value(i64 %.sroa.04.0.copyload, !13832, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13837)
    #dbg_value(i64 %.sroa.0.0.copyload, !13819, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13825)
    #dbg_value(i64 %.sroa.0.0.copyload, !13827, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13830)
    #dbg_value(i64 %.sroa.04.0.copyload, !13819, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13825)
    #dbg_value(i64 %.sroa.04.0.copyload, !13827, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13830)
    #dbg_value(ptr %i.l, !3472, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13676)
    #dbg_value(i64 %i.n, !3472, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13676)
    #dbg_value(i64 %.sroa.0.0.copyload, !3475, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13676)
    #dbg_value(i64 %.sroa.04.0.copyload, !3475, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13676)
    #dbg_value(i64 %.sroa.0.0.copyload, !3476, !DIExpression(), !13677)
    #dbg_value(i64 %.sroa.0.0.copyload, !3480, !DIExpression(), !13679)
    #dbg_value(i64 %.sroa.04.0.copyload, !3477, !DIExpression(), !13677)
    #dbg_value(i64 %.sroa.04.0.copyload, !3480, !DIExpression(), !13681)
    #dbg_value(ptr %i.l, !3478, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13682)
    #dbg_value(i64 %i.n, !3478, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13682)
  %i.o = icmp ugt i64 %.sroa.0.0.copyload, %.sroa.04.0.copyload, !dbg !13898
  %i.p = icmp ugt i64 %.sroa.04.0.copyload, %i.n
  %or.cond.i = or i1 %i.o, %i.p, !dbg !13898
  br i1 %or.cond.i, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread44, label %bb.i, !dbg !13898, !prof !3483

bb.i:                                             ; preds = %bb.h
  %i.q = icmp eq i64 %.sroa.0.0.copyload, %i.n, !dbg !13899
  br i1 %i.q, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread, label %bb.j, !dbg !13899

bb.j:                                             ; preds = %bb.i
  %i.r = icmp eq i64 %.sroa.0.0.copyload, 0, !dbg !13900
  br i1 %i.r, label %bb.k, label %bb.l, !dbg !13900

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.s = icmp eq i64 %.sroa.04.0.copyload, %i.n, !dbg !13901
  br i1 %i.s, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit, !dbg !13901

bb.l:                                             ; preds = %bb.j
    #dbg_value(ptr %i.l, !3481, !DIExpression(), !13679)
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.0.0.copyload, !dbg !13902
    #dbg_value(ptr %i.t, !3484, !DIExpression(), !13684)
    #dbg_value(ptr %i.t, !3488, !DIExpression(), !13686)
  %i.u = load i8, ptr %i.t, align 1, !dbg !13903, !alias.scope !13844, !noundef !978
    #dbg_value(i8 %i.u, !3490, !DIExpression(), !13690)
  %i.v = icmp sgt i8 %i.u, -65, !dbg !13904
  br i1 %i.v, label %bb.k, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread44, !dbg !13905, !prof !3492

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit: ; preds = %bb.k
    #dbg_value(ptr %i.l, !3481, !DIExpression(), !13681)
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.04.0.copyload, !dbg !13906
    #dbg_value(ptr %i.w, !3484, !DIExpression(), !13692)
    #dbg_value(ptr %i.w, !3488, !DIExpression(), !13694)
  %i.x = load i8, ptr %i.w, align 1, !dbg !13907, !alias.scope !13844, !noundef !978
    #dbg_value(i8 %i.x, !3490, !DIExpression(), !13696)
  %i.y = icmp sgt i8 %i.x, -65, !dbg !13908
  br i1 %i.y, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread44, !dbg !13909, !prof !3494

bb.m:                                             ; preds = %bb.g
  %i.z = tail call fastcc noundef i32 @_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE4charB9_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1), !dbg !13910
  %i.aa = icmp samesign ugt i32 %i.z, 47, !dbg !13911
  br i1 %i.aa, label %bb.n, label %bb.h, !dbg !13911

bb.n:                                             ; preds = %bb.m
  %i.ab = tail call fastcc noundef i32 @_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE4charB9_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1), !dbg !13912
  %i.ac = icmp samesign ult i32 %i.ab, 56, !dbg !13913
  br i1 %i.ac, label %bb.o, label %bb.h, !dbg !13913

bb.o:                                             ; preds = %bb.n
    #dbg_value(ptr %.val40, !13798, !DIExpression(DW_OP_plus_uconst, 160, DW_OP_stack_value), !13846)
  %i.ad = load i64, ptr %i.i, align 8, !dbg !13914, !noundef !978
  %i.ae = sub i64 %i.ad, %.sroa.0.0.copyload, !dbg !13915
  %i.af = icmp ult i64 %i.ae, 3, !dbg !13915
  br i1 %i.af, label %bb.g, label %bb.h, !dbg !13915

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread44: ; preds = %bb.l, %bb.h, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit
  tail call void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.n, i64 noundef %.sroa.0.0.copyload, i64 noundef %.sroa.04.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #25, !dbg !13916
  unreachable, !dbg !13916

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread: ; preds = %bb.k, %bb.i, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit
    #dbg_value(ptr %i.l, !13833, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13847)
    #dbg_value(i64 %i.n, !13833, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13847)
  %i.ag = sub nuw i64 %.sroa.04.0.copyload, %.sroa.0.0.copyload, !dbg !13917 ; 3 uses
    #dbg_value(i64 %i.ag, !13834, !DIExpression(), !13848)
    #dbg_value(ptr %i.l, !13840, !DIExpression(), !13843)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.0.0.copyload, !dbg !13918 ; 3 uses
    #dbg_value(ptr %i.ah, !13747, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13849)
    #dbg_value(ptr %i.ah, !13785, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13788)
    #dbg_value(i64 %i.ag, !13747, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13849)
    #dbg_value(i64 %i.ag, !13785, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13788)
    #dbg_value(ptr %i.ah, !3495, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13698)
    #dbg_value(ptr %i.ah, !3501, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13699)
    #dbg_value(i64 %i.ag, !3495, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13698)
    #dbg_value(i64 %i.ag, !3501, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13699)
    #dbg_value(i32 8, !3498, !DIExpression(), !13698)
    #dbg_value(i32 8, !3530, !DIExpression(), !13701)
    #dbg_value(i32 8, !3536, !DIExpression(), !13703)
    #dbg_value(i32 8, !3543, !DIExpression(), !13705)
    #dbg_value(i8 0, !3499, !DIExpression(), !13706)
    #dbg_value(i8 0, !3533, !DIExpression(), !13701)
  switch i64 %i.ag, label %thread-pre-split.i [
    i64 0, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread
    i64 1, label %bb.p
  ], !dbg !13919

bb.p:                                             ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread
  %i.ai = load i8, ptr %i.ah, align 1, !dbg !13920, !alias.scope !13850, !noundef !978 ; 2 uses
  switch i8 %i.ai, label %bb.q [
    i8 43, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread
    i8 45, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread
  ], !dbg !13920

thread-pre-split.i:                               ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread
  %.pr.i = load i8, ptr %i.ah, align 1, !dbg !13920, !alias.scope !13850
  br label %bb.q, !dbg !13920

bb.q:                                             ; preds = %thread-pre-split.i, %bb.p
  %i.aj = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.ai, %bb.p ], !dbg !13920
  %cond.i = icmp eq i8 %i.aj, 43, !dbg !13920     ; 2 uses
  %i.ak = sext i1 %cond.i to i64, !dbg !13920
  %.sroa.15.0.i = add nsw i64 %i.ag, %i.ak, !dbg !13920 ; 10 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64, !dbg !13920
  %.sroa.0.0.i41 = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.sroa.0.0.idx.i, !dbg !13920 ; 9 uses
    #dbg_value(ptr %.sroa.0.0.i41, !3501, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13699)
    #dbg_value(ptr %.sroa.0.0.i41, !3495, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13698)
    #dbg_value(i64 %.sroa.15.0.i, !3501, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13699)
    #dbg_value(i64 %.sroa.15.0.i, !3495, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13698)
    #dbg_value(i32 0, !3506, !DIExpression(), !13709)
    #dbg_value(i32 0, !3537, !DIExpression(), !13703)
    #dbg_value(i32 0, !3549, !DIExpression(), !13705)
    #dbg_value(i32 0, !3551, !DIExpression(), !13711)
    #dbg_value(ptr %.sroa.0.0.i41, !3534, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13701)
    #dbg_value(i64 %.sroa.15.0.i, !3534, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13701)
  %i.al = icmp samesign ult i64 %.sroa.15.0.i, 9
  br i1 %i.al, label %.preheader.i, label %.preheader81.split.us.i.preheader, !dbg !13921

.preheader81.split.us.i:                          ; preds = %bb.r
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.1.us.i56, i64 1, !dbg !13922
    #dbg_value(ptr %i.am, !3516, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13712)
  %i.an = add nsw i64 %.sroa.15.1.us.i55, -1, !dbg !13922 ; 2 uses
    #dbg_value(i64 %i.an, !3516, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13712)
  %i.ao = shl nuw i32 %.sroa.045.0.us.i54, 3, !dbg !13923
    #dbg_value(i32 %i.ao, !3538, !DIExpression(), !13713)
    #dbg_value(i32 %i.ao, !3517, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !13714)
    #dbg_value(i32 %i.ao, !3506, !DIExpression(), !13709)
    #dbg_value(i32 %i.ao, !3537, !DIExpression(), !13703)
    #dbg_value(i32 %i.ao, !3549, !DIExpression(), !13705)
    #dbg_value(i32 %i.ao, !3551, !DIExpression(), !13711)
  %i.ap = or disjoint i32 %i.at, %i.ao, !dbg !13924 ; 2 uses
    #dbg_value(ptr %i.am, !3501, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13699)
    #dbg_value(ptr %i.am, !3495, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13698)
    #dbg_value(i64 %i.an, !3501, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13699)
    #dbg_value(i64 %i.an, !3495, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13698)
    #dbg_value(i32 %i.ap, !3551, !DIExpression(), !13711)
    #dbg_value(i32 %i.ap, !3549, !DIExpression(), !13705)
    #dbg_value(i32 %i.ap, !3537, !DIExpression(), !13703)
    #dbg_value(i32 %i.ap, !3506, !DIExpression(), !13709)
  %.not72.us.i = icmp eq i64 %i.an, 0, !dbg !13925
  br i1 %.not72.us.i, label %.loopexit.i, label %.preheader81.split.us.i.preheader, !dbg !13925

.preheader81.split.us.i.preheader:                ; preds = %bb.q, %.preheader81.split.us.i
  %.sroa.0.1.us.i56 = phi ptr [ %i.am, %.preheader81.split.us.i ], [ %.sroa.0.0.i41, %bb.q ] ; 2 uses
  %.sroa.15.1.us.i55 = phi i64 [ %i.an, %.preheader81.split.us.i ], [ %.sroa.15.0.i, %bb.q ]
  %.sroa.045.0.us.i54 = phi i32 [ %i.ap, %.preheader81.split.us.i ], [ 0, %bb.q ] ; 2 uses
    #dbg_value(ptr %.sroa.0.1.us.i56, !3501, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13699)
    #dbg_value(i64 %.sroa.15.1.us.i55, !3501, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13699)
    #dbg_value(i32 %.sroa.045.0.us.i54, !3551, !DIExpression(), !13711)
    #dbg_value(ptr %.sroa.0.1.us.i56, !3515, !DIExpression(), !13712)
    #dbg_value(ptr %.sroa.0.1.us.i56, !3516, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13712)
    #dbg_value(i64 %.sroa.15.1.us.i55, !3516, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13712)
  %i.aq = icmp ugt i32 %.sroa.045.0.us.i54, 536870911, !dbg !13923
    #dbg_value(i32 %.sroa.045.0.us.i54, !3538, !DIExpression(DW_OP_constu, 3, DW_OP_shl, DW_OP_stack_value), !13713)
    #dbg_value(i1 %i.aq, !3539, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13713)
    #dbg_value(i1 %i.aq, !3556, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13716)
  %i.ar = load i8, ptr %.sroa.0.1.us.i56, align 1, !dbg !13926, !alias.scope !13850, !noundef !978 ; 2 uses
  br i1 %i.aq, label %.split.us.i, label %bb.r, !dbg !13927, !prof !1672

bb.r:                                             ; preds = %.preheader81.split.us.i.preheader
    #dbg_value(i32 %.sroa.045.0.us.i54, !3538, !DIExpression(DW_OP_constu, 3, DW_OP_shl, DW_OP_stack_value), !13713)
    #dbg_value(i64 %.sroa.15.1.us.i55, !3516, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13712)
    #dbg_value(ptr %.sroa.0.1.us.i56, !3516, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13712)
    #dbg_value(i32 %.sroa.045.0.us.i54, !3517, !DIExpression(DW_OP_constu, 3, DW_OP_shl, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !13714)
    #dbg_value(i32 1, !3517, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !13714)
  %i.as = zext i8 %i.ar to i32, !dbg !13928
    #dbg_value(i32 %i.as, !3558, !DIExpression(), !13718)
    #dbg_value(i32 8, !3561, !DIExpression(), !13718)
  %i.at = add nsw i32 %i.as, -48, !dbg !13929     ; 2 uses
    #dbg_value(i32 poison, !3562, !DIExpression(), !13719)
  %i.au = icmp ult i32 %i.at, 8, !dbg !13930
    #dbg_value(i32 poison, !3518, !DIExpression(), !13720)
    #dbg_value(i32 %.sroa.045.0.us.i54, !3506, !DIExpression(DW_OP_constu, 3, DW_OP_shl, DW_OP_stack_value), !13709)
    #dbg_value(i32 %.sroa.045.0.us.i54, !3537, !DIExpression(DW_OP_constu, 3, DW_OP_shl, DW_OP_stack_value), !13703)
    #dbg_value(i32 %.sroa.045.0.us.i54, !3549, !DIExpression(DW_OP_constu, 3, DW_OP_shl, DW_OP_stack_value), !13705)
    #dbg_value(i32 %.sroa.045.0.us.i54, !3551, !DIExpression(DW_OP_constu, 3, DW_OP_shl, DW_OP_stack_value), !13711)
    #dbg_value(i32 poison, !3552, !DIExpression(), !13711)
    #dbg_value(i1 false, !3556, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13722)
  br i1 %i.au, label %.preheader81.split.us.i, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread, !dbg !13931

.preheader.i:                                     ; preds = %bb.q
    #dbg_value(ptr %.sroa.0.0.i41, !3501, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13699)
    #dbg_value(ptr %.sroa.0.0.i41, !3495, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13698)
    #dbg_value(i64 %.sroa.15.0.i, !3501, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13699)
    #dbg_value(i64 %.sroa.15.0.i, !3495, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13698)
    #dbg_value(i32 0, !3551, !DIExpression(), !13711)
    #dbg_value(i32 0, !3549, !DIExpression(), !13705)
    #dbg_value(i32 0, !3537, !DIExpression(), !13703)
    #dbg_value(i32 0, !3506, !DIExpression(), !13709)
  %.not7391.i = icmp eq i64 %.sroa.15.0.i, 0, !dbg !13932
  br i1 %.not7391.i, label %.loopexit.i, label %.lr.ph.split.us.i, !dbg !13932

.lr.ph.split.us.i:                                ; preds = %.preheader.i
    #dbg_value(ptr %.sroa.0.0.i41, !3507, !DIExpression(), !13723)
    #dbg_value(ptr %.sroa.0.0.i41, !3508, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13723)
    #dbg_value(i64 %.sroa.15.0.i, !3508, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13723)
    #dbg_value(!DIArgList(i32 0, i32 8), !3506, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !13709)
    #dbg_value(!DIArgList(i32 0, i32 8), !3537, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !13703)
    #dbg_value(!DIArgList(i32 0, i32 8), !3549, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !13705)
    #dbg_value(!DIArgList(i32 0, i32 8), !3551, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !13711)
  %i.av = load i8, ptr %.sroa.0.0.i41, align 1, !dbg !13933, !alias.scope !13850, !noundef !978
  %i.aw = zext i8 %i.av to i32, !dbg !13934
    #dbg_value(i32 %i.aw, !3558, !DIExpression(), !13725)
    #dbg_value(i32 8, !3561, !DIExpression(), !13725)
  %i.ax = add nsw i32 %i.aw, -48, !dbg !13935     ; 3 uses
    #dbg_value(i32 poison, !3562, !DIExpression(), !13726)
  %i.ay = icmp ult i32 %i.ax, 8, !dbg !13936
  br i1 %i.ay, label %bb.s, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread, !dbg !13937

bb.s:                                             ; preds = %.lr.ph.split.us.i
    #dbg_value(i32 0, !3506, !DIExpression(), !13709)
    #dbg_value(i32 0, !3537, !DIExpression(), !13703)
    #dbg_value(i32 0, !3549, !DIExpression(), !13705)
    #dbg_value(i32 0, !3551, !DIExpression(), !13711)
    #dbg_value(i64 %.sroa.15.0.i, !3508, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13723)
    #dbg_value(ptr %.sroa.0.0.i41, !3508, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13723)
    #dbg_value(i32 poison, !3509, !DIExpression(), !13727)
    #dbg_value(ptr %.sroa.0.0.i41, !3501, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13699)
    #dbg_value(ptr %.sroa.0.0.i41, !3495, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13698)
    #dbg_value(i64 %.sroa.15.0.i, !3501, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13699)
    #dbg_value(i64 %.sroa.15.0.i, !3495, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13698)
    #dbg_value(i32 %i.ax, !3551, !DIExpression(), !13711)
    #dbg_value(i32 %i.ax, !3549, !DIExpression(), !13705)
    #dbg_value(i32 %i.ax, !3537, !DIExpression(), !13703)
    #dbg_value(i32 %i.ax, !3506, !DIExpression(), !13709)
  %.not73.us.i = icmp eq i64 %.sroa.15.0.i, 1, !dbg !13932
  br i1 %.not73.us.i, label %.loopexit.i, label %.lr.ph.split.us.i.1, !dbg !13932

.lr.ph.split.us.i.1:                              ; preds = %bb.s
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i41, i64 1, !dbg !13938
    #dbg_value(ptr %i.az, !3508, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13723)
    #dbg_value(ptr %i.az, !3501, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13699)
    #dbg_value(ptr %i.az, !3495, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13698)
    #dbg_value(ptr %i.az, !3507, !DIExpression(), !13723)
    #dbg_value(ptr %i.az, !3508, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13723)
    #dbg_value(i64 %.sroa.15.0.i, !3508, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13723)
    #dbg_value(!DIArgList(i32 %i.ax, i32 8), !3506, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !13709)
    #dbg_value(!DIArgList(i32 %i.ax, i32 8), !3537, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !13703)
    #dbg_value(!DIArgList(i32 %i.ax, i32 8), !3549, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !13705)
    #dbg_value(!DIArgList(i32 %i.ax, i32 8), !3551, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !13711)
  %i.ba = load i8, ptr %i.az, align 1, !dbg !13933, !alias.scope !13850, !noundef !978
  %i.bb = zext i8 %i.ba to i32, !dbg !13934
    #dbg_value(i32 %i.bb, !3558, !DIExpression(), !13725)
    #dbg_value(i32 8, !3561, !DIExpression(), !13725)
  %i.bc = add nsw i32 %i.bb, -48, !dbg !13935     ; 2 uses
    #dbg_value(i32 poison, !3562, !DIExpression(), !13726)
  %i.bd = icmp ult i32 %i.bc, 8, !dbg !13936
  br i1 %i.bd, label %bb.t, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread, !dbg !13937

bb.t:                                             ; preds = %.lr.ph.split.us.i.1
  %i.be = shl nuw nsw i32 %i.ax, 3, !dbg !13939
    #dbg_value(i32 %i.be, !3506, !DIExpression(), !13709)
    #dbg_value(i32 %i.be, !3537, !DIExpression(), !13703)
    #dbg_value(i32 %i.be, !3549, !DIExpression(), !13705)
    #dbg_value(i32 %i.be, !3551, !DIExpression(), !13711)
    #dbg_value(i64 %.sroa.15.0.i, !3508, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13723)
    #dbg_value(ptr %.sroa.0.0.i41, !3508, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13723)
    #dbg_value(i32 poison, !3509, !DIExpression(), !13727)
  %i.bf = or disjoint i32 %i.bc, %i.be, !dbg !13940 ; 2 uses
    #dbg_value(ptr %.sroa.0.0.i41, !3501, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13699)
    #dbg_value(ptr %.sroa.0.0.i41, !3495, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13698)
    #dbg_value(i64 %.sroa.15.0.i, !3501, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13699)
    #dbg_value(i64 %.sroa.15.0.i, !3495, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13698)
    #dbg_value(i32 %i.bf, !3551, !DIExpression(), !13711)
    #dbg_value(i32 %i.bf, !3549, !DIExpression(), !13705)
end_hunk_0
begin_hunk_1_@_RNvMs3_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE11parse_octalB9_:bb.a

.lr.ph.split.us.i.4:                              ; preds = %bb.v
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i41, i64 4, !dbg !13938
    #dbg_value(ptr %i.bu, !3508, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13723)
    #dbg_value(ptr %i.bu, !3501, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13699)
    #dbg_value(ptr %i.bu, !3495, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13698)
    #dbg_value(ptr %i.bu, !3507, !DIExpression(), !13723)
    #dbg_value(ptr %i.bu, !3508, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13723)
    #dbg_value(i64 %.sroa.15.0.i, !3508, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13723)
    #dbg_value(!DIArgList(i32 %i.bt, i32 8), !3506, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !13709)
    #dbg_value(!DIArgList(i32 %i.bt, i32 8), !3537, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !13703)
    #dbg_value(!DIArgList(i32 %i.bt, i32 8), !3549, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !13705)
    #dbg_value(!DIArgList(i32 %i.bt, i32 8), !3551, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !13711)
  %i.bv = load i8, ptr %i.bu, align 1, !dbg !13933, !alias.scope !13850, !noundef !978
  %i.bw = zext i8 %i.bv to i32, !dbg !13934
    #dbg_value(i32 %i.bw, !3558, !DIExpression(), !13725)
    #dbg_value(i32 8, !3561, !DIExpression(), !13725)
  %i.bx = add nsw i32 %i.bw, -48, !dbg !13935     ; 2 uses
    #dbg_value(i32 poison, !3562, !DIExpression(), !13726)
  %i.by = icmp ult i32 %i.bx, 8, !dbg !13936
  br i1 %i.by, label %bb.w, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread, !dbg !13937

bb.w:                                             ; preds = %.lr.ph.split.us.i.4
  %i.bz = shl i32 %i.bt, 3, !dbg !13939
    #dbg_value(i32 %i.bz, !3506, !DIExpression(), !13709)
    #dbg_value(i32 %i.bz, !3537, !DIExpression(), !13703)
    #dbg_value(i32 %i.bz, !3549, !DIExpression(), !13705)
    #dbg_value(i32 %i.bz, !3551, !DIExpression(), !13711)
    #dbg_value(i64 %.sroa.15.0.i, !3508, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13723)
    #dbg_value(ptr %.sroa.0.0.i41, !3508, !DIExpression(DW_OP_plus_uconst, 5, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13723)
    #dbg_value(i32 poison, !3509, !DIExpression(), !13727)
  %i.ca = or disjoint i32 %i.bx, %i.bz, !dbg !13940 ; 2 uses
    #dbg_value(ptr %.sroa.0.0.i41, !3501, !DIExpression(DW_OP_plus_uconst, 5, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13699)
    #dbg_value(ptr %.sroa.0.0.i41, !3495, !DIExpression(DW_OP_plus_uconst, 5, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13698)
    #dbg_value(i64 %.sroa.15.0.i, !3501, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13699)
    #dbg_value(i64 %.sroa.15.0.i, !3495, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13698)
    #dbg_value(i32 %i.ca, !3551, !DIExpression(), !13711)
    #dbg_value(i32 %i.ca, !3549, !DIExpression(), !13705)
    #dbg_value(i32 %i.ca, !3537, !DIExpression(), !13703)
    #dbg_value(i32 %i.ca, !3506, !DIExpression(), !13709)
  %.not73.us.i.4 = icmp eq i64 %.sroa.15.0.i, 5, !dbg !13932
  br i1 %.not73.us.i.4, label %.loopexit.i, label %.lr.ph.split.us.i.5, !dbg !13932

.lr.ph.split.us.i.5:                              ; preds = %bb.w
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i41, i64 5, !dbg !13938
    #dbg_value(ptr %i.cb, !3508, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13723)
    #dbg_value(ptr %i.cb, !3501, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13699)
    #dbg_value(ptr %i.cb, !3495, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13698)
    #dbg_value(ptr %i.cb, !3507, !DIExpression(), !13723)
    #dbg_value(ptr %i.cb, !3508, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13723)
    #dbg_value(i64 %.sroa.15.0.i, !3508, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13723)
    #dbg_value(!DIArgList(i32 %i.ca, i32 8), !3506, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !13709)
    #dbg_value(!DIArgList(i32 %i.ca, i32 8), !3537, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !13703)
    #dbg_value(!DIArgList(i32 %i.ca, i32 8), !3549, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !13705)
    #dbg_value(!DIArgList(i32 %i.ca, i32 8), !3551, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !13711)
  %i.cc = load i8, ptr %i.cb, align 1, !dbg !13933, !alias.scope !13850, !noundef !978
  %i.cd = zext i8 %i.cc to i32, !dbg !13934
    #dbg_value(i32 %i.cd, !3558, !DIExpression(), !13725)
    #dbg_value(i32 8, !3561, !DIExpression(), !13725)
  %i.ce = add nsw i32 %i.cd, -48, !dbg !13935     ; 2 uses
    #dbg_value(i32 poison, !3562, !DIExpression(), !13726)
  %i.cf = icmp ult i32 %i.ce, 8, !dbg !13936
  br i1 %i.cf, label %bb.x, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread, !dbg !13937

bb.x:                                             ; preds = %.lr.ph.split.us.i.5
  %i.cg = shl i32 %i.ca, 3, !dbg !13939
    #dbg_value(i32 %i.cg, !3506, !DIExpression(), !13709)
    #dbg_value(i32 %i.cg, !3537, !DIExpression(), !13703)
    #dbg_value(i32 %i.cg, !3549, !DIExpression(), !13705)
    #dbg_value(i32 %i.cg, !3551, !DIExpression(), !13711)
    #dbg_value(i64 %.sroa.15.0.i, !3508, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13723)
    #dbg_value(ptr %.sroa.0.0.i41, !3508, !DIExpression(DW_OP_plus_uconst, 6, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13723)
    #dbg_value(i32 poison, !3509, !DIExpression(), !13727)
  %i.ch = or disjoint i32 %i.ce, %i.cg, !dbg !13940 ; 2 uses
    #dbg_value(ptr %.sroa.0.0.i41, !3501, !DIExpression(DW_OP_plus_uconst, 6, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13699)
    #dbg_value(ptr %.sroa.0.0.i41, !3495, !DIExpression(DW_OP_plus_uconst, 6, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13698)
    #dbg_value(i64 %.sroa.15.0.i, !3501, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13699)
    #dbg_value(i64 %.sroa.15.0.i, !3495, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13698)
    #dbg_value(i32 %i.ch, !3551, !DIExpression(), !13711)
    #dbg_value(i32 %i.ch, !3549, !DIExpression(), !13705)
    #dbg_value(i32 %i.ch, !3537, !DIExpression(), !13703)
    #dbg_value(i32 %i.ch, !3506, !DIExpression(), !13709)
  %.not73.us.i.5 = icmp eq i64 %.sroa.15.0.i, 6, !dbg !13932
  br i1 %.not73.us.i.5, label %.loopexit.i, label %.lr.ph.split.us.i.6, !dbg !13932

.lr.ph.split.us.i.6:                              ; preds = %bb.x
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i41, i64 6, !dbg !13938
    #dbg_value(ptr %i.ci, !3508, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13723)
    #dbg_value(ptr %i.ci, !3501, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13699)
    #dbg_value(ptr %i.ci, !3495, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13698)
    #dbg_value(ptr %i.ci, !3507, !DIExpression(), !13723)
    #dbg_value(ptr %i.ci, !3508, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13723)
    #dbg_value(i64 %.sroa.15.0.i, !3508, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13723)
    #dbg_value(!DIArgList(i32 %i.ch, i32 8), !3506, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !13709)
    #dbg_value(!DIArgList(i32 %i.ch, i32 8), !3537, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !13703)
    #dbg_value(!DIArgList(i32 %i.ch, i32 8), !3549, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !13705)
    #dbg_value(!DIArgList(i32 %i.ch, i32 8), !3551, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !13711)
  %i.cj = load i8, ptr %i.ci, align 1, !dbg !13933, !alias.scope !13850, !noundef !978
  %i.ck = zext i8 %i.cj to i32, !dbg !13934
    #dbg_value(i32 %i.ck, !3558, !DIExpression(), !13725)
    #dbg_value(i32 8, !3561, !DIExpression(), !13725)
  %i.cl = add nsw i32 %i.ck, -48, !dbg !13935     ; 2 uses
    #dbg_value(i32 poison, !3562, !DIExpression(), !13726)
  %i.cm = icmp ult i32 %i.cl, 8, !dbg !13936
  br i1 %i.cm, label %bb.y, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread, !dbg !13937

bb.y:                                             ; preds = %.lr.ph.split.us.i.6
  %i.cn = shl i32 %i.ch, 3, !dbg !13939
    #dbg_value(i32 %i.cn, !3506, !DIExpression(), !13709)
    #dbg_value(i32 %i.cn, !3537, !DIExpression(), !13703)
    #dbg_value(i32 %i.cn, !3549, !DIExpression(), !13705)
    #dbg_value(i32 %i.cn, !3551, !DIExpression(), !13711)
    #dbg_value(i64 %.sroa.15.0.i, !3508, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13723)
    #dbg_value(ptr %.sroa.0.0.i41, !3508, !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13723)
    #dbg_value(i32 poison, !3509, !DIExpression(), !13727)
  %i.co = or disjoint i32 %i.cl, %i.cn, !dbg !13940 ; 2 uses
    #dbg_value(ptr %.sroa.0.0.i41, !3501, !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13699)
    #dbg_value(ptr %.sroa.0.0.i41, !3495, !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13698)
    #dbg_value(i64 %.sroa.15.0.i, !3501, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13699)
    #dbg_value(i64 %.sroa.15.0.i, !3495, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13698)
    #dbg_value(i32 %i.co, !3551, !DIExpression(), !13711)
    #dbg_value(i32 %i.co, !3549, !DIExpression(), !13705)
    #dbg_value(i32 %i.co, !3537, !DIExpression(), !13703)
    #dbg_value(i32 %i.co, !3506, !DIExpression(), !13709)
  %.not73.us.i.6 = icmp eq i64 %.sroa.15.0.i, 7, !dbg !13932
  br i1 %.not73.us.i.6, label %.loopexit.i, label %.lr.ph.split.us.i.7, !dbg !13932

.lr.ph.split.us.i.7:                              ; preds = %bb.y
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i41, i64 7, !dbg !13938
    #dbg_value(ptr %i.cp, !3508, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13723)
    #dbg_value(ptr %i.cp, !3501, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13699)
    #dbg_value(ptr %i.cp, !3495, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13698)
    #dbg_value(ptr %i.cp, !3507, !DIExpression(), !13723)
    #dbg_value(ptr %i.cp, !3508, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13723)
    #dbg_value(i64 %.sroa.15.0.i, !3508, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13723)
    #dbg_value(!DIArgList(i32 %i.co, i32 8), !3506, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !13709)
    #dbg_value(!DIArgList(i32 %i.co, i32 8), !3537, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !13703)
    #dbg_value(!DIArgList(i32 %i.co, i32 8), !3549, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !13705)
    #dbg_value(!DIArgList(i32 %i.co, i32 8), !3551, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !13711)
  %i.cq = load i8, ptr %i.cp, align 1, !dbg !13933, !alias.scope !13850, !noundef !978
  %i.cr = zext i8 %i.cq to i32, !dbg !13934
    #dbg_value(i32 %i.cr, !3558, !DIExpression(), !13725)
    #dbg_value(i32 8, !3561, !DIExpression(), !13725)
  %i.cs = add nsw i32 %i.cr, -48, !dbg !13935     ; 2 uses
    #dbg_value(i32 poison, !3562, !DIExpression(), !13726)
  %i.ct = icmp ult i32 %i.cs, 8, !dbg !13936
  br i1 %i.ct, label %bb.z, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread, !dbg !13937

bb.z:                                             ; preds = %.lr.ph.split.us.i.7
  %i.cu = shl i32 %i.co, 3, !dbg !13939
    #dbg_value(i32 %i.cu, !3506, !DIExpression(), !13709)
    #dbg_value(i32 %i.cu, !3537, !DIExpression(), !13703)
    #dbg_value(i32 %i.cu, !3549, !DIExpression(), !13705)
    #dbg_value(i32 %i.cu, !3551, !DIExpression(), !13711)
    #dbg_value(i64 %.sroa.15.0.i, !3508, !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13723)
    #dbg_value(ptr %.sroa.0.0.i41, !3508, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13723)
    #dbg_value(i32 poison, !3509, !DIExpression(), !13727)
  %i.cv = or disjoint i32 %i.cs, %i.cu, !dbg !13940
    #dbg_value(ptr %.sroa.0.0.i41, !3501, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13699)
    #dbg_value(ptr %.sroa.0.0.i41, !3495, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13698)
    #dbg_value(i64 %.sroa.15.0.i, !3501, !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13699)
    #dbg_value(i64 %.sroa.15.0.i, !3495, !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13698)
    #dbg_value(i32 %i.cv, !3551, !DIExpression(), !13711)
    #dbg_value(i32 %i.cv, !3549, !DIExpression(), !13705)
    #dbg_value(i32 %i.cv, !3537, !DIExpression(), !13703)
    #dbg_value(i32 %i.cv, !3506, !DIExpression(), !13709)
  br label %.loopexit.i, !dbg !13932

.loopexit.i:                                      ; preds = %.preheader81.split.us.i, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %.preheader.i
  %.sroa.045.1.i = phi i32 [ %i.cv, %bb.z ], [ 0, %.preheader.i ], [ %i.ax, %bb.s ], [ %i.bf, %bb.t ], [ %i.bm, %bb.u ], [ %i.bt, %bb.v ], [ %i.ca, %bb.w ], [ %i.ch, %bb.x ], [ %i.co, %bb.y ], [ %i.ap, %.preheader81.split.us.i ], !dbg !13941
    #dbg_value(i32 %.sroa.045.1.i, !3551, !DIExpression(), !13711)
    #dbg_value(i32 %.sroa.045.1.i, !3549, !DIExpression(), !13705)
    #dbg_value(i32 %.sroa.045.1.i, !3537, !DIExpression(), !13703)
    #dbg_value(i32 %.sroa.045.1.i, !3506, !DIExpression(), !13709)
  %i.cw = zext i32 %.sroa.045.1.i to i64, !dbg !13942
  %i.cx = shl nuw i64 %i.cw, 32, !dbg !13942
  br label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit, !dbg !13942

.split.us.i:                                      ; preds = %.preheader81.split.us.i.preheader
    #dbg_value(i8 %i.ar, !3558, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !13729)
    #dbg_value(i32 8, !3561, !DIExpression(), !13729)
    #dbg_value(i8 %i.ar, !3562, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 48, DW_OP_minus, DW_OP_stack_value), !13730)
  %i.cy = and i8 %i.ar, -8, !dbg !13943
  %i.cz = icmp eq i8 %i.cy, 48, !dbg !13943
  %spec.select.i = select i1 %i.cz, i64 513, i64 257, !dbg !13931
  br label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit, !dbg !13931

_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit: ; preds = %.loopexit.i, %.split.us.i
  %.sroa.8.0.insert.insert.i = phi i64 [ %spec.select.i, %.split.us.i ], [ %i.cx, %.loopexit.i ], !dbg !13942 ; 4 uses
    #dbg_value(i64 %.sroa.8.0.insert.insert.i, !13854, !DIExpression(DW_OP_constu, 8, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !13735)
    #dbg_value(i64 %.sroa.8.0.insert.insert.i, !13854, !DIExpression(DW_OP_constu, 16, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 16, 16), !13735)
    #dbg_value(i64 %.sroa.8.0.insert.insert.i, !13854, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !13735)
    #dbg_value(ptr @69, !13859, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13735)
    #dbg_value(i64 18, !13859, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13735)
    #dbg_declare(ptr %i.a, !13861, !DIExpression(), !13736)
  %i.da = trunc i64 %.sroa.8.0.insert.insert.i to i1, !dbg !13944
    #dbg_value(i64 %.sroa.8.0.insert.insert.i, !13854, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !13735)
  br i1 %i.da, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultmNtNtNtB4_3num5error13ParseIntErrorE6expectCs3roNzt6HBWW_12regex_syntax.exit, !dbg !13945, !prof !13864

_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread: ; preds = %bb.r, %.lr.ph.split.us.i, %.lr.ph.split.us.i.1, %.lr.ph.split.us.i.2, %.lr.ph.split.us.i.3, %.lr.ph.split.us.i.4, %.lr.ph.split.us.i.5, %.lr.ph.split.us.i.6, %.lr.ph.split.us.i.7, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread, %bb.p, %bb.p, %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit
  %.sroa.8.0.insert.insert.i47 = phi i64 [ %.sroa.8.0.insert.insert.i, %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit ], [ 256, %.lr.ph.split.us.i ], [ 256, %bb.p ], [ 256, %bb.p ], [ %i.ag, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread ], [ 256, %.lr.ph.split.us.i.7 ], [ 256, %.lr.ph.split.us.i.6 ], [ 256, %.lr.ph.split.us.i.5 ], [ 256, %.lr.ph.split.us.i.4 ], [ 256, %.lr.ph.split.us.i.3 ], [ 256, %.lr.ph.split.us.i.2 ], [ 256, %.lr.ph.split.us.i.1 ], [ 256, %bb.r ]
  %.sroa.4.0.extract.shift.i = lshr i64 %.sroa.8.0.insert.insert.i47, 8
    #dbg_value(i64 %.sroa.4.0.extract.shift.i, !13854, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !13735)
  %.sroa.4.0.extract.trunc.i = trunc i64 %.sroa.4.0.extract.shift.i to i8
    #dbg_value(i8 %.sroa.4.0.extract.trunc.i, !13854, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !13735)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13946
  store i8 %.sroa.4.0.extract.trunc.i, ptr %i.a, align 1, !dbg !13946
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 18, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #25, !dbg !13947
  unreachable, !dbg !13947

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultmNtNtNtB4_3num5error13ParseIntErrorE6expectCs3roNzt6HBWW_12regex_syntax.exit: ; preds = %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit
  %.sroa.6.0.extract.shift.i = lshr i64 %.sroa.8.0.insert.insert.i, 32
    #dbg_value(i64 %.sroa.6.0.extract.shift.i, !13854, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !13735)
  %.sroa.6.0.extract.trunc.i = trunc nuw i64 %.sroa.6.0.extract.shift.i to i32 ; 2 uses
    #dbg_value(i32 %.sroa.6.0.extract.trunc.i, !13854, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !13735)
    #dbg_value(i32 %.sroa.6.0.extract.trunc.i, !13748, !DIExpression(), !13867)
    #dbg_value(i32 %.sroa.6.0.extract.trunc.i, !13868, !DIExpression(), !13871)
    #dbg_value(i32 %.sroa.6.0.extract.trunc.i, !13872, !DIExpression(), !13876)
    #dbg_value(i32 %.sroa.6.0.extract.trunc.i, !13877, !DIExpression(), !13880)
  %i.db = xor i32 %.sroa.6.0.extract.trunc.i, 55296, !dbg !13948
  %i.dc = add i32 %i.db, -1114112, !dbg !13948
  %i.dd = icmp ult i32 %i.dc, -1112064, !dbg !13948
  br i1 %i.dd, label %bb.ab, label %bb.aa, !dbg !13948, !prof !1672

bb.aa:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultmNtNtNtB4_3num5error13ParseIntErrorE6expectCs3roNzt6HBWW_12regex_syntax.exit
  %i.de = icmp ult i64 %.sroa.8.0.insert.insert.i, 4785074604081152, !dbg !13949
  tail call void @llvm.assume(i1 %i.de), !dbg !13949
    #dbg_value(i32 %.sroa.6.0.extract.trunc.i, !13793, !DIExpression(), !13797)
    #dbg_value(i32 %.sroa.6.0.extract.trunc.i, !13749, !DIExpression(), !13881)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13950
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false), !dbg !13951
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !13950
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.612.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i64 16, i1 false), !dbg !13951
  store i64 %.sroa.0.0.copyload, ptr %0, align 8, !dbg !13950
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !13950
  store i64 %.sroa.04.0.copyload, ptr %.sroa.511.0..sroa_idx, align 8, !dbg !13950
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 52, !dbg !13950
  store i8 3, ptr %i.df, align 4, !dbg !13950
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !13950
  store i32 %.sroa.6.0.extract.trunc.i, ptr %i.dg, align 8, !dbg !13950
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !13952
  ret void, !dbg !13953

bb.ab:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultmNtNtNtB4_3num5error13ParseIntErrorE6expectCs3roNzt6HBWW_12regex_syntax.exit
    #dbg_value(i32 -1, !13793, !DIExpression(), !13797)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 20, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #25, !dbg !13954
  unreachable, !dbg !13954
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE12parse_escapeB9_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #4 !dbg !13974 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 17 uses
    #dbg_declare(ptr poison, !14251, !DIExpression(DW_OP_LLVM_fragment, 72, 952), !14261)
    #dbg_declare(ptr poison, !14262, !DIExpression(DW_OP_LLVM_fragment, 72, 952), !14280)
    #dbg_declare(ptr poison, !14256, !DIExpression(DW_OP_LLVM_fragment, 64, 896), !14283)
    #dbg_declare(ptr poison, !14284, !DIExpression(DW_OP_LLVM_fragment, 64, 896), !14302)
    #dbg_declare(ptr poison, !14255, !DIExpression(DW_OP_LLVM_fragment, 64, 448), !14305)
    #dbg_declare(ptr poison, !14255, !DIExpression(DW_OP_LLVM_fragment, 512, 512), !14305)
    #dbg_declare(ptr poison, !14306, !DIExpression(DW_OP_LLVM_fragment, 64, 448), !14311)
    #dbg_declare(ptr poison, !14306, !DIExpression(DW_OP_LLVM_fragment, 512, 512), !14311)
  %i.e = alloca [56 x i8], align 8                ; 4 uses
  %i.f = alloca [128 x i8], align 8               ; 4 uses
    #dbg_declare(ptr poison, !14254, !DIExpression(DW_OP_LLVM_fragment, 72, 952), !14312)
    #dbg_declare(ptr poison, !14244, !DIExpression(DW_OP_LLVM_fragment, 72, 952), !14313)
  %i.g = alloca [128 x i8], align 8               ; 7 uses
  %.sroa.052 = alloca [48 x i8], align 8          ; 3 uses
    #dbg_declare(ptr %.sroa.052, !14243, !DIExpression(DW_OP_LLVM_fragment, 0, 384), !14314)
  %i.h = alloca [56 x i8], align 8                ; 3 uses
  %i.i = alloca [112 x i8], align 8               ; 3 uses
    #dbg_declare(ptr poison, !14254, !DIExpression(DW_OP_LLVM_fragment, 64, 896), !14315)
    #dbg_declare(ptr poison, !14238, !DIExpression(DW_OP_LLVM_fragment, 64, 896), !14316)
  %i.j = alloca [128 x i8], align 8               ; 7 uses
  %.sroa.614 = alloca [112 x i8], align 8         ; 6 uses
  %i.k = alloca [56 x i8], align 8                ; 3 uses
    #dbg_declare(ptr poison, !14254, !DIExpression(DW_OP_LLVM_fragment, 64, 448), !14317)
    #dbg_declare(ptr poison, !14254, !DIExpression(DW_OP_LLVM_fragment, 512, 512), !14317)
    #dbg_declare(ptr poison, !14235, !DIExpression(DW_OP_LLVM_fragment, 64, 448), !14318)
    #dbg_declare(ptr poison, !14235, !DIExpression(DW_OP_LLVM_fragment, 512, 512), !14318)
  %i.l = alloca [128 x i8], align 8               ; 7 uses
  %.sroa.6 = alloca [56 x i8], align 8            ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 10 uses
    #dbg_declare(ptr %i.m, !1536, !DIExpression(DW_OP_LLVM_fragment, 0, 192), !13997)
  %i.n = alloca [56 x i8], align 8                ; 3 uses
    #dbg_declare(ptr %i.m, !1536, !DIExpression(DW_OP_LLVM_fragment, 0, 192), !13999)
  %i.o = alloca [48 x i8], align 8                ; 5 uses
  %i.p = alloca [4 x i8], align 4                 ; 4 uses
    #dbg_value(ptr %1, !14225, !DIExpression(), !14319)
    #dbg_value(ptr %1, !14320, !DIExpression(), !14323)
    #dbg_value(ptr %1, !14324, !DIExpression(), !14327)
    #dbg_value(ptr %1, !14320, !DIExpression(), !14329)
    #dbg_value(ptr %1, !14324, !DIExpression(), !14332)
    #dbg_value(ptr %1, !14324, !DIExpression(), !14334)
    #dbg_value(ptr %1, !14324, !DIExpression(), !14336)
    #dbg_value(ptr %1, !14320, !DIExpression(), !14338)
    #dbg_value(ptr %1, !14324, !DIExpression(), !14341)
    #dbg_value(ptr %1, !14342, !DIExpression(), !14345)
    #dbg_value(ptr %1, !14346, !DIExpression(), !14349)
    #dbg_value(ptr %1, !14324, !DIExpression(), !14351)
    #dbg_value(ptr %1, !14352, !DIExpression(), !14355)
    #dbg_value(ptr %1, !14320, !DIExpression(), !14357)
    #dbg_value(ptr %1, !14324, !DIExpression(), !14360)
    #dbg_declare(ptr %i.m, !14231, !DIExpression(), !14361)
    #dbg_declare(ptr %i.m, !14362, !DIExpression(), !14366)
    #dbg_declare(ptr %i.m, !14362, !DIExpression(), !14368)
    #dbg_declare(ptr %i.m, !14362, !DIExpression(), !14370)
    #dbg_declare(ptr %i.m, !14362, !DIExpression(), !14372)
    #dbg_declare(ptr poison, !14363, !DIExpression(), !14373)
    #dbg_declare(ptr %i.n, !14233, !DIExpression(), !14374)
    #dbg_declare(ptr %i.l, !14307, !DIExpression(), !14375)
    #dbg_declare(ptr %i.k, !14234, !DIExpression(), !14376)
    #dbg_declare(ptr %i.j, !14298, !DIExpression(), !14377)
    #dbg_declare(ptr %i.i, !14237, !DIExpression(), !14378)
    #dbg_declare(ptr %i.h, !14240, !DIExpression(), !14379)
    #dbg_declare(ptr %i.d, !14241, !DIExpression(), !14380)
    #dbg_declare(ptr poison, !14363, !DIExpression(), !14381)
    #dbg_declare(ptr %i.g, !14276, !DIExpression(), !14382)
    #dbg_declare(ptr poison, !14308, !DIExpression(), !14383)
    #dbg_declare(ptr poison, !14299, !DIExpression(), !14384)
    #dbg_value(i8 0, !14230, !DIExpression(), !14385)
    #dbg_value(i8 5, !14386, !DIExpression(), !14394)
    #dbg_value(i32 11, !14390, !DIExpression(), !14394)
    #dbg_value(i8 4, !14386, !DIExpression(), !14396)
    #dbg_value(i32 13, !14390, !DIExpression(), !14396)
    #dbg_value(i8 3, !14386, !DIExpression(), !14398)
    #dbg_value(i32 10, !14390, !DIExpression(), !14398)
    #dbg_value(i8 2, !14386, !DIExpression(), !14400)
    #dbg_value(i32 9, !14390, !DIExpression(), !14400)
    #dbg_value(i8 1, !14386, !DIExpression(), !14402)
    #dbg_value(i32 12, !14390, !DIExpression(), !14402)
    #dbg_value(i8 0, !14386, !DIExpression(), !14404)
    #dbg_value(i32 7, !14390, !DIExpression(), !14404)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !14460
  %i.q = tail call fastcc noundef i32 @_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE4charB9_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1), !dbg !14461 ; 2 uses
  store i32 %i.q, ptr %i.p, align 4, !dbg !14461
    #dbg_value(ptr %i.p, !14227, !DIExpression(), !14405)
    #dbg_value(ptr @72, !14228, !DIExpression(), !14405)
  %i.r = icmp eq i32 %i.q, 92, !dbg !14462
  br i1 %i.r, label %bb.b, label %bb.c, !dbg !14462, !prof !2371

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !14463
  %.val192 = load ptr, ptr %1, align 8, !dbg !14464, !nonnull !978, !align !2250, !noundef !978 ; 7 uses
    #dbg_value(ptr %.val192, !14406, !DIExpression(DW_OP_plus_uconst, 160, DW_OP_stack_value), !14409)
  %i.s = getelementptr inbounds nuw i8, ptr %.val192, i64 160, !dbg !14465 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !14466
  %i.t = tail call fastcc noundef zeroext i1 @_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE4bumpB9_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1), !dbg !14467
  br i1 %i.t, label %bb.h, label %bb.d, !dbg !14468

bb.c:                                             ; preds = %bb.a
  call void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failedccECs3roNzt6HBWW_12regex_syntax(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.p, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) @72, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #25, !dbg !14469
  unreachable, !dbg !14469

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !14365
    #dbg_value(ptr %.val192, !14406, !DIExpression(DW_OP_plus_uconst, 160, DW_OP_stack_value), !14412)
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 24, !dbg !14470
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !14471
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !dbg !14470
    #dbg_value(i32 10, !1530, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !14413)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !14472
  %.val199 = load ptr, ptr %i.v, align 8, !dbg !14472, !nonnull !978, !noundef !978
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !14472
  %.val200 = load i64, ptr %i.w, align 8, !dbg !14472, !noundef !978 ; 5 uses
    #dbg_value(ptr poison, !1535, !DIExpression(), !14010)
    #dbg_declare(ptr %i.o, !1536, !DIExpression(), !14011)
    #dbg_declare(ptr poison, !1539, !DIExpression(), !14019)
    #dbg_declare(ptr poison, !1579, !DIExpression(), !14021)
    #dbg_declare(ptr poison, !1587, !DIExpression(), !14023)
    #dbg_declare(ptr poison, !1594, !DIExpression(), !14025)
    #dbg_declare(ptr poison, !1600, !DIExpression(), !14027)
    #dbg_value(i64 0, !1627, !DIExpression(), !14029)
    #dbg_value(ptr %.val199, !1572, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14030)
    #dbg_value(ptr %.val199, !1568, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14031)
    #dbg_value(ptr %.val199, !1569, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14032)
    #dbg_value(ptr %.val199, !1565, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14033)
    #dbg_value(ptr %.val199, !1561, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14034)
    #dbg_value(i64 %.val200, !1572, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14030)
    #dbg_value(i64 %.val200, !1568, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14031)
    #dbg_value(i64 %.val200, !1569, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14032)
    #dbg_value(i64 %.val200, !1565, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14033)
    #dbg_value(i64 %.val200, !1561, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14034)
    #dbg_value(ptr %.val199, !1554, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14035)
    #dbg_value(ptr %.val199, !1551, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14036)
    #dbg_value(ptr %.val199, !1547, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14037)
    #dbg_value(ptr %.val199, !1582, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14038)
    #dbg_value(i64 %.val200, !1554, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14035)
    #dbg_value(i64 %.val200, !1551, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14036)
    #dbg_value(i64 %.val200, !1547, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14037)
    #dbg_value(i64 %.val200, !1582, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14038)
    #dbg_value(i64 %.val200, !1583, !DIExpression(), !14039)
    #dbg_value(i64 %.val200, !1591, !DIExpression(), !14040)
    #dbg_value(i64 %.val200, !1598, !DIExpression(), !14041)
    #dbg_value(i64 %.val200, !1639, !DIExpression(), !14043)
    #dbg_value(i64 %.val200, !1664, !DIExpression(), !14045)
    #dbg_value(i64 %.val200, !1611, !DIExpression(), !14046)
    #dbg_value(i64 %.val200, !1633, !DIExpression(), !14029)
    #dbg_value(i64 1, !1612, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14046)
end_hunk_1
