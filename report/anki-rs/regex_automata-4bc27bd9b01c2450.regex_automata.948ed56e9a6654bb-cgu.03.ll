Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/regex_automata-4bc27bd9b01c2450.regex_automata.948ed56e9a6654bb-cgu.03?download=true
inline.NumInlined: 311
inline.NumDeleted: 75
begin_hunk_0_@"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc46c096ec7a09a48E":bb.a
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc71eaae7df5e3a6bE"(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_ZN4core3fmt9Formatter11debug_tuple17h56f4f7e7cf4db9ecE(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr align 8 %1, ptr nonnull align 1 @228, i64 7)
  %.val.i = load i32, ptr %i.c, align 4
  store i32 %.val.i, ptr %i.a, align 4
  %i.d = call align 8 ptr @_ZN4core3fmt8builders10DebugTuple5field17h6bec910804d66a80E(ptr nonnull align 8 %i.b, ptr nonnull align 1 %i.a, ptr nonnull align 8 @229)
  %i.e = call zeroext i1 @_ZN4core3fmt8builders10DebugTuple6finish17h19c0455a7e2f40cfE(ptr align 8 %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hd81f02649364f8a9E"(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr align 8 %1, ptr nonnull align 1 @258, i64 14, ptr nonnull align 1 %i.a, ptr nonnull align 8 @257)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17he85ac68df500f9d8E"(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call zeroext i1 @"_ZN60_$LT$regex_syntax..ast..Span$u20$as$u20$core..fmt..Debug$GT$3fmt17hc162d692923b9d2bE"(ptr align 8 %i.a, ptr align 8 %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf598bfcafa744bd4E"(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = load ptr, ptr %0, align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_ZN4core3fmt9Formatter11debug_tuple17h56f4f7e7cf4db9ecE(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr align 8 %1, ptr nonnull align 1 inttoptr (i64 1 to ptr), i64 0)
  store ptr %i.d, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store ptr %i.e, ptr %i.a, align 8
  %i.f = call align 8 ptr @_ZN4core3fmt8builders10DebugTuple5field17h6bec910804d66a80E(ptr nonnull align 8 %i.c, ptr nonnull align 1 %i.b, ptr nonnull align 8 @104) ; 0 uses
  %i.g = call align 8 ptr @_ZN4core3fmt8builders10DebugTuple5field17h6bec910804d66a80E(ptr nonnull align 8 %i.c, ptr nonnull align 1 %i.a, ptr nonnull align 8 @104) ; 0 uses
  %i.h = call zeroext i1 @_ZN4core3fmt8builders10DebugTuple6finish17h19c0455a7e2f40cfE(ptr nonnull align 8 %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.h
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h172b0fbeed449226E"(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %i.f = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.g = load i64, ptr %i.f, align 8
  store i64 %i.g, ptr %i.d, align 8
  call void @_ZN4core3fmt2rt8Argument9new_debug17h28e1bfba628d5fbaE(ptr nonnull sret([16 x i8]) align 8 %i.b, ptr nonnull align 8 %i.d)
  call void @_ZN4core3fmt2rt8Argument9new_debug17h803836551f89218eE(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr nonnull align 4 @0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$6new_v117hb2f88a14e80c5759E"(ptr nonnull sret([48 x i8]) align 8 %i.e, ptr nonnull align 8 @261, ptr nonnull align 8 %i.c)
  %i.i = call zeroext i1 @_ZN4core3fmt9Formatter9write_fmt17h3363a56933637661E(ptr align 8 %1, ptr nonnull align 8 %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret i1 %i.i
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h7314530a5cdf503cE"(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %i.f = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.g = load i64, ptr %i.f, align 8
  store i64 %i.g, ptr %i.d, align 8
  call void @_ZN4core3fmt2rt8Argument9new_debug17h28e1bfba628d5fbaE(ptr nonnull sret([16 x i8]) align 8 %i.b, ptr nonnull align 8 %i.d)
  call void @_ZN4core3fmt2rt8Argument9new_debug17h1fb1906209659f08E(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr nonnull align 4 @0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$6new_v117hb2f88a14e80c5759E"(ptr nonnull sret([48 x i8]) align 8 %i.e, ptr nonnull align 8 @266, ptr nonnull align 8 %i.c)
  %i.i = call zeroext i1 @_ZN4core3fmt9Formatter9write_fmt17h3363a56933637661E(ptr align 8 %1, ptr nonnull align 8 %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret i1 %i.i
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h439a214e5287547eE"(ptr align 4 %0, i64 %1, ptr align 8 %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  call void @_ZN4core3fmt9Formatter10debug_list17hce385b9777d986d7E(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr align 8 %2)
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  %i.c = call align 8 ptr @_ZN4core3fmt8builders9DebugList7entries17h1cad9675c6c895f7E(ptr nonnull align 8 %i.a, ptr %0, ptr %i.b)
  %i.d = call zeroext i1 @_ZN4core3fmt8builders9DebugList6finish17hbf71f56035f2c70aE(ptr align 8 %i.c)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h5198fc518c570833E"(ptr align 4 %0, i64 %1, ptr align 8 %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  call void @_ZN4core3fmt9Formatter10debug_list17hce385b9777d986d7E(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr align 8 %2)
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1
  %i.c = call align 8 ptr @_ZN4core3fmt8builders9DebugList7entries17h2bffd7c5b0c3ee6cE(ptr nonnull align 8 %i.a, ptr %0, ptr %i.b)
  %i.d = call zeroext i1 @_ZN4core3fmt8builders9DebugList6finish17hbf71f56035f2c70aE(ptr align 8 %i.c)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h551dc592486ff9f6E"(ptr align 4 %0, i64 %1, ptr align 8 %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  call void @_ZN4core3fmt9Formatter10debug_list17hce385b9777d986d7E(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr align 8 %2)
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1
  %i.c = call align 8 ptr @_ZN4core3fmt8builders9DebugList7entries17h9710e0c9b9191960E(ptr nonnull align 8 %i.a, ptr %0, ptr %i.b)
  %i.d = call zeroext i1 @_ZN4core3fmt8builders9DebugList6finish17hbf71f56035f2c70aE(ptr align 8 %i.c)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_ZN4core3cmp10PartialOrd2ge17h5d66933964afa39dE(ptr align 4 %0, ptr align 4 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call i8 @"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$u32$GT$11partial_cmp17h3f995f974a7f1cd4E"(ptr align 4 %0, ptr align 4 %1) ; 2 uses
  %.not = icmp ne i8 %i.a, 2
  %i.b = icmp sgt i8 %i.a, -1
  %.sroa.0.0 = and i1 %.not, %i.b
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @_ZN4core3cmp9PartialEq2ne17h14b42939f6ab5867E(ptr nofree readonly align 4 captures(none) %0, ptr nofree readonly align 4 captures(none) %1) unnamed_addr #8 {
bb.a:
  %.val.i = load i32, ptr %0, align 4
  %.val1.i = load i32, ptr %1, align 4
  %i.a = icmp ne i32 %.val.i, %.val1.i
  ret i1 %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @_ZN4core3cmp9PartialEq2ne17h52f55e6ac8fa7ce9E(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  %.val = load i64, ptr %0, align 8
  %.val1 = load i64, ptr %1, align 8
  %i.a = icmp ne i64 %.val, %.val1
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define { i1, i8 } @"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hd7b1df72bae9bf86E"(ptr nofree readnone align 8 captures(none) %0, i32 %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i1, i8 } @_ZN14regex_automata4util8alphabet4Unit5as_u817h0a8798ed9adb5ef4E(i32 %1)
  ret { i1, i8 } %i.a
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define hidden void @_ZN4core3ptr19copy_nonoverlapping18precondition_check17hef61f88fbb2bf9c7E(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, ptr align 8 %5) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = icmp eq i64 %4, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %6 = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %3)
  %7 = icmp eq i64 %6, 1
  br i1 %7, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %8 = icmp eq i64 %2, 0
  %9 = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %3)
  %10 = icmp eq i64 %9, 1
  br i1 %10, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.e = ptrtoint ptr %0 to i64
  %i.f = add i64 %3, -1                           ; 2 uses
  %i.g = and i64 %i.f, %i.e
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.g, label %bb.k

bb.e:                                             ; preds = %bb.c, %bb.b
  store ptr @92, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.l, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr nonnull align 8 %i.a, ptr nonnull align 8 @94) #22
          to label %bb.m unwind label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.m = ptrtoint ptr %0 to i64
  %i.n = add i64 %3, -1                           ; 2 uses
  %i.o = and i64 %i.n, %i.m
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %11, label %bb.k

11:                                               ; preds = %bb.f
  %.not17 = icmp ne i64 %2, 0
  %.not = icmp eq ptr %0, null
  %or.cond18 = select i1 %.not17, i1 %.not, i1 false
  br i1 %or.cond18, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.d, %11
  %.sroa.011.0 = phi i64 [ %i.f, %bb.d ], [ %i.n, %11 ]
  %.sroa.0.0.shrunk = phi i1 [ true, %bb.d ], [ %8, %11 ]
  %i.q = ptrtoint ptr %1 to i64
  %i.r = and i64 %.sroa.011.0, %i.q
  %i.s = icmp eq i64 %i.r, 0
  %i.t = icmp ne ptr %1, null
  %or.cond = or i1 %i.t, %.sroa.0.0.shrunk
  %or.cond19 = select i1 %i.s, i1 %or.cond, i1 false
  br i1 %or.cond19, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.u = invoke zeroext i1 @_ZN4core9ub_checks23maybe_is_nonoverlapping7runtime17hdbc5c7d786316742E(ptr %0, ptr %1, i64 %2, i64 %4)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17h2cbcfb1212a61c82E() #24
  unreachable

bb.j:                                             ; preds = %bb.h
  br i1 %i.u, label %bb.l, label %bb.k

bb.k:                                             ; preds = %11, %bb.d, %bb.f, %bb.g, %bb.j
  store ptr @95, ptr %i.b, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 283, ptr %i.w, align 8
  store ptr %i.b, ptr %i.c, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %i.aa, align 8
  call void @_ZN4core9panicking18panic_nounwind_fmt17h12c54097655c17dbE(ptr nonnull align 8 %i.c, i1 zeroext false, ptr align 8 %5) #25
  unreachable

bb.l:                                             ; preds = %bb.j
  ret void

bb.m:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_ZN4core3ptr19swap_nonoverlapping17h0edb957881595fb2E(ptr %0, ptr %1, i64 %2, ptr nofree readnone align 8 captures(none) %3) unnamed_addr #1 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZN4core3ptr25swap_nonoverlapping_bytes17hf030f41259aec1cdE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = mul nuw nsw i64 %2, 12
  tail call void @_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17hf4b6470e88594d40E(ptr %0, ptr %1, i64 %i.a)
  br label %_ZN4core3ptr25swap_nonoverlapping_bytes17hf030f41259aec1cdE.exit

_ZN4core3ptr25swap_nonoverlapping_bytes17hf030f41259aec1cdE.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_ZN4core3ptr19swap_nonoverlapping17h332fa22c76ecd6e5E(ptr %0, ptr %1, i64 %2, ptr nofree readnone align 8 captures(none) %3) unnamed_addr #1 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZN4core3ptr25swap_nonoverlapping_bytes17hf030f41259aec1cdE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = shl nuw nsw i64 %2, 2
  %i.b = lshr i64 %2, 1                           ; 2 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17hf4b6470e88594d40E(ptr %0, ptr %1, i64 %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = and i64 %2, 1
  %.not4.i = icmp eq i64 %i.c, 0
  br i1 %.not4.i, label %_ZN4core3ptr25swap_nonoverlapping_bytes17hf030f41259aec1cdE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = and i64 %i.a, 9223372036854775800        ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %i.d
  tail call void @_ZN4core3ptr10swap_chunk17hd30f0b57c2f4e36bE(ptr align 1 %i.e, ptr align 1 %i.f)
  br label %_ZN4core3ptr25swap_nonoverlapping_bytes17hf030f41259aec1cdE.exit

_ZN4core3ptr25swap_nonoverlapping_bytes17hf030f41259aec1cdE.exit: ; preds = %bb.e, %bb.d, %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_ZN4core3ptr19swap_nonoverlapping17h3d86db5bdbcd0f85E(ptr %0, ptr %1, i64 %2, ptr nofree readnone align 8 captures(none) %3) unnamed_addr #1 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZN4core3ptr25swap_nonoverlapping_bytes17hf030f41259aec1cdE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = shl nuw nsw i64 %2, 2
  tail call void @_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17hf4b6470e88594d40E(ptr %0, ptr %1, i64 %i.a)
  br label %_ZN4core3ptr25swap_nonoverlapping_bytes17hf030f41259aec1cdE.exit

_ZN4core3ptr25swap_nonoverlapping_bytes17hf030f41259aec1cdE.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_ZN4core3ptr19swap_nonoverlapping17h4cab68631839a012E(ptr %0, ptr %1, i64 %2, ptr nofree readnone align 8 captures(none) %3) unnamed_addr #1 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZN4core3ptr25swap_nonoverlapping_bytes17hf030f41259aec1cdE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = shl nuw nsw i64 %2, 2
  tail call void @_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17hf4b6470e88594d40E(ptr %0, ptr %1, i64 %i.a)
  br label %_ZN4core3ptr25swap_nonoverlapping_bytes17hf030f41259aec1cdE.exit

_ZN4core3ptr25swap_nonoverlapping_bytes17hf030f41259aec1cdE.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_ZN4core3ptr19swap_nonoverlapping17hbfb5c03291eeb8f8E(ptr %0, ptr %1, i64 %2, ptr nofree readnone align 8 captures(none) %3) unnamed_addr #1 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZN4core3ptr25swap_nonoverlapping_bytes17hf030f41259aec1cdE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = mul nuw nsw i64 %2, 7
  tail call void @_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17hf4b6470e88594d40E(ptr %0, ptr %1, i64 %i.a)
  br label %_ZN4core3ptr25swap_nonoverlapping_bytes17hf030f41259aec1cdE.exit

_ZN4core3ptr25swap_nonoverlapping_bytes17hf030f41259aec1cdE.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_ZN4core3ptr19swap_nonoverlapping17heaa158a4ec56901fE(ptr %0, ptr %1, i64 %2, ptr nofree readnone align 8 captures(none) %3) unnamed_addr #1 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZN4core3ptr25swap_nonoverlapping_bytes17hf030f41259aec1cdE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = shl nuw nsw i64 %2, 2
  %i.b = lshr i64 %2, 1                           ; 2 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17hf4b6470e88594d40E(ptr %0, ptr %1, i64 %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = and i64 %2, 1
  %.not4.i = icmp eq i64 %i.c, 0
  br i1 %.not4.i, label %_ZN4core3ptr25swap_nonoverlapping_bytes17hf030f41259aec1cdE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = and i64 %i.a, 9223372036854775800        ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %i.d
  tail call void @_ZN4core3ptr10swap_chunk17hd30f0b57c2f4e36bE(ptr align 1 %i.e, ptr align 1 %i.f)
  br label %_ZN4core3ptr25swap_nonoverlapping_bytes17hf030f41259aec1cdE.exit

_ZN4core3ptr25swap_nonoverlapping_bytes17hf030f41259aec1cdE.exit: ; preds = %bb.e, %bb.d, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4core3ptr4swap17h9adb8405f0cc6846E(ptr nofree captures(none) %0, ptr nofree captures(none) %1) unnamed_addr #4 {
bb.a:
  %.sroa.0.0.copyload = load i32, ptr %0, align 4
  %i.a = load i32, ptr %1, align 4
  store i32 %i.a, ptr %0, align 4
  store i32 %.sroa.0.0.copyload, ptr %1, align 4
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4core3ptr4swap17hb1a2a719eb76caf1E(ptr nofree captures(none) %0, ptr nofree captures(none) %1) unnamed_addr #4 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %0, align 8
  %i.a = load i64, ptr %1, align 8
  store i64 %i.a, ptr %0, align 8
  store i64 %.sroa.0.0.copyload, ptr %1, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$12escape_debug17hd660f44cd3aafc5bE"(ptr nofree writeonly sret([16 x i8]) align 4 captures(none) initializes((0, 4), (12, 14)) %0, i32 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [12 x i8], align 1                ; 6 uses
  %i.b = alloca [12 x i8], align 1                ; 6 uses
  %i.c = alloca [16 x i8], align 4                ; 4 uses
  %i.d = alloca [16 x i8], align 4                ; 4 uses
  %i.e = alloca [16 x i8], align 4                ; 4 uses
  %i.f = alloca [16 x i8], align 4                ; 4 uses
  %i.g = alloca [16 x i8], align 4                ; 4 uses
  %i.h = alloca [16 x i8], align 4                ; 4 uses
  %i.i = alloca [16 x i8], align 4                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  switch i32 %1, label %bb.b [
    i32 0, label %bb.c
    i32 9, label %bb.d
    i32 13, label %bb.e
    i32 10, label %bb.f
    i32 92, label %bb.g
    i32 34, label %bb.h
    i32 39, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i32 %1, 767
end_hunk_0
