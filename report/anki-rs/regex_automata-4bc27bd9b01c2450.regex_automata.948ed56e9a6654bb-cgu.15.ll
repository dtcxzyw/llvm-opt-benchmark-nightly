Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/regex_automata-4bc27bd9b01c2450.regex_automata.948ed56e9a6654bb-cgu.15?download=true
inline.NumInlined: 510
inline.NumDeleted: 31
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN14regex_automata4util6search5Input8set_span17h165a8893dc52f678E:bb.a
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %.not = icmp ugt i64 %i.i, %i.l
  %i.m = add i64 %i.i, 1
  %.not1 = icmp ugt i64 %i.h, %i.m
  %or.cond = select i1 %.not, i1 true, i1 %.not1
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %i.l, ptr %i.d, align 8
  call void @_ZN4core3fmt2rt8Argument9new_debug17hc29c0eb123419bceE(ptr nonnull sret([16 x i8]) align 8 %i.b, ptr nonnull align 8 %i.f)
  call void @_ZN4core3fmt2rt8Argument11new_display17hb2d933a5b7a8448dE(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr nonnull align 8 %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$6new_v117hb2f88a14e80c5759E"(ptr nonnull sret([48 x i8]) align 8 %i.e, ptr nonnull align 8 @56, ptr nonnull align 8 %i.c)
  call void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr nonnull align 8 %i.e, ptr nonnull align 8 @57) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.h, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.i, ptr %i.p, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_ZN14regex_automata4util6search5Input9set_start17he303ac149fcd6aebE(ptr nofree align 8 captures(none) %0, i64 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i64, ptr %i.g, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %1, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.h, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %.not.i = icmp ugt i64 %i.h, %i.k
  %i.l = add i64 %i.h, 1
  %.not1.i = icmp ugt i64 %1, %i.l
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1.i
  br i1 %or.cond.i, label %bb.b, label %_ZN14regex_automata4util6search5Input8set_span17h0b0aa81a3bcd2b83E.exit

bb.b:                                             ; preds = %bb.a
  store i64 %i.k, ptr %i.d, align 8
  call void @_ZN4core3fmt2rt8Argument9new_debug17hc29c0eb123419bceE(ptr nonnull sret([16 x i8]) align 8 %i.b, ptr nonnull align 8 %i.f)
  call void @_ZN4core3fmt2rt8Argument11new_display17hb2d933a5b7a8448dE(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr nonnull align 8 %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$6new_v117hb2f88a14e80c5759E"(ptr nonnull sret([48 x i8]) align 8 %i.e, ptr nonnull align 8 @56, ptr nonnull align 8 %i.c)
  call void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr nonnull align 8 %i.e, ptr nonnull align 8 @57) #26
  unreachable

_ZN14regex_automata4util6search5Input8set_span17h0b0aa81a3bcd2b83E.exit: ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %1, ptr %i.n, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden i64 @_ZN14regex_automata4util6search5Match3end17h27644f4aea341c0eE(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8
  ret i64 %.val1
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_ZN14regex_automata4util6search5Match3new17h57fa6ef36cc6190aE(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, i32 %1, i64 %2, i64 %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 2 uses
  %i.b = tail call { i64, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h306f75d3ff8b3f0dE"(i64 %2, i64 %3, ptr nonnull align 8 @58) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0        ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.b, 1        ; 2 uses
  %.not = icmp ugt i64 %i.c, %i.d
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$9new_const17h1a58822e6cda6149E"(ptr nonnull sret([48 x i8]) align 8 %i.a, ptr nonnull align 8 @60)
  call void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr nonnull align 8 %i.a, ptr nonnull align 8 @61) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %1, ptr %i.e, align 8
  store i64 %i.c, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.f, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_ZN14regex_automata4util6search5Match3new17h9f8ef9f41f7ea4cdE(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, i32 %1, i64 %2, i64 %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 2 uses
  %.not = icmp ugt i64 %2, %3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$9new_const17h1a58822e6cda6149E"(ptr nonnull sret([48 x i8]) align 8 %i.a, ptr nonnull align 8 @60)
  call void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr nonnull align 8 %i.a, ptr nonnull align 8 @61) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %1, ptr %i.b, align 8
  store i64 %2, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.c, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden i64 @_ZN14regex_automata4util6search5Match5start17hb33e0d2a7553b7b4E(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  %.val = load i64, ptr %0, align 8
  ret i64 %.val
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden i32 @_ZN14regex_automata4util6search5Match7pattern17h51d9bcf6009a370cE(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8
  ret i32 %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @_ZN14regex_automata4util6search5Match8is_empty17h6fd410767374dfecE(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  %.val = load i64, ptr %0, align 8
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8
  %i.b = icmp uge i64 %.val, %.val1
  ret i1 %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @_ZN14regex_automata4util6search8Anchored11is_anchored17h514b5ada16441f2bE(ptr nofree readonly align 4 captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %i.b = icmp ne i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, i64 } @"_ZN14regex_automata4util6search99_$LT$impl$u20$core..ops..index..Index$LT$regex_automata..util..search..Span$GT$$u20$for$u20$str$GT$5index17h837034946b0c80d6E"(ptr align 1 %0, i64 %1, i64 %2, i64 %3, ptr align 8 %4) unnamed_addr #1 {
bb.a:
  %i.a = tail call { i64, i64 } @"_ZN14regex_automata4util6search128_$LT$impl$u20$core..convert..From$LT$regex_automata..util..search..Span$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$4from17h780d156e2246de68E"(i64 %2, i64 %3) ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0
  %i.c = extractvalue { i64, i64 } %i.a, 1
  %i.d = tail call { ptr, i64 } @"_ZN4core3str6traits66_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$str$GT$5index17hd0ddc93f37eca167E"(ptr align 1 %0, i64 %1, i64 %i.b, i64 %i.c, ptr align 8 %4)
  ret { ptr, i64 } %i.d
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i64, i32 } @_ZN14regex_automata4util6search9HalfMatch3new17hccc75a25358bb4fcE(i32 %0, i64 %1) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { i64, i32 } poison, i64 %1, 0
  %i.b = insertvalue { i64, i32 } %i.a, i32 %0, 1
  ret { i64, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden i64 @_ZN14regex_automata4util6search9HalfMatch6offset17h0dba85e8b82f9256E(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  ret i64 %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden i32 @_ZN14regex_automata4util6search9HalfMatch7pattern17h49aae4f31c2790ecE(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @_ZN14regex_automata4util6search9MatchKind25continue_past_first_match17h986dda88199d7caeE(ptr nofree readonly align 1 captures(none) %0) unnamed_addr #7 {
bb.a:
  %.val = load i8, ptr %0, align 1
  %1 = and i8 %.val, 1
  %i.a = icmp eq i8 %1, 0
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata4util6syntax10parse_with17h264bea69f05ef7d6E(ptr sret([128 x i8]) align 8 %0, ptr align 1 %1, i64 %2, ptr nofree readonly align 4 captures(none) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [240 x i8], align 8               ; 4 uses
  %i.b = alloca [16 x i8], align 4                ; 3 uses
  call void @_ZN12regex_syntax6parser13ParserBuilder3new17hab3c1227fc087ed5E(ptr nonnull sret([16 x i8]) align 4 %i.b)
  call void @_ZN14regex_automata4util6syntax6Config5apply17hce9ea99041daf60aE(ptr align 4 %3, ptr nonnull align 4 %i.b)
  call void @_ZN12regex_syntax6parser13ParserBuilder5build17hd65357ec60629444E(ptr nonnull sret([240 x i8]) align 8 %i.a, ptr nonnull align 4 %i.b)
  invoke void @_ZN12regex_syntax6parser6Parser5parse17hbeb8241fb9ace054E(ptr sret([128 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr align 1 %1, i64 %2)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr49drop_in_place$LT$regex_syntax..parser..Parser$GT$17hab3770943a866ef4E"(ptr nonnull align 8 %i.a) #27
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @"_ZN4core3ptr49drop_in_place$LT$regex_syntax..parser..Parser$GT$17hab3770943a866ef4E"(ptr nonnull align 8 %i.a)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata4util6syntax5parse17h158744c0a2c6c7bcE(ptr sret([128 x i8]) align 8 %0, ptr align 1 %1, i64 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [240 x i8], align 8               ; 6 uses
  %i.b = alloca [16 x i8], align 4                ; 5 uses
  %i.c = alloca [16 x i8], align 4                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.d, align 1
  store i8 10, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  store <4 x i8> <i8 0, i8 0, i8 1, i8 1>, ptr %i.f, align 1
  store i32 250, ptr %i.c, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 13
  store i8 0, ptr %i.g, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_ZN12regex_syntax6parser13ParserBuilder3new17hab3c1227fc087ed5E(ptr nonnull sret([16 x i8]) align 4 %i.b)
  call void @_ZN14regex_automata4util6syntax6Config5apply17hce9ea99041daf60aE(ptr nonnull readonly align 4 %i.c, ptr nonnull align 4 %i.b)
  call void @_ZN12regex_syntax6parser13ParserBuilder5build17hd65357ec60629444E(ptr nonnull sret([240 x i8]) align 8 %i.a, ptr nonnull align 4 %i.b)
  invoke void @_ZN12regex_syntax6parser6Parser5parse17hbeb8241fb9ace054E(ptr sret([128 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr align 1 %1, i64 %2)
          to label %_ZN14regex_automata4util6syntax10parse_with17h264bea69f05ef7d6E.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr49drop_in_place$LT$regex_syntax..parser..Parser$GT$17hab3770943a866ef4E"(ptr nonnull align 8 %i.a) #27
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.h

_ZN14regex_automata4util6syntax10parse_with17h264bea69f05ef7d6E.exit: ; preds = %bb.a
  call void @"_ZN4core3ptr49drop_in_place$LT$regex_syntax..parser..Parser$GT$17hab3770943a866ef4E"(ptr nonnull align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN14regex_automata4util6syntax6Config10multi_line17h398d87d04333245cE(ptr nofree writeonly sret([16 x i8]) align 4 captures(none) initializes((0, 16)) %0, ptr nofree align 4 captures(none) initializes((6, 7)) %1, i1 zeroext %2) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.b = zext i1 %2 to i8
  store i8 %i.b, ptr %i.a, align 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN14regex_automata4util6syntax6Config10nest_limit17h67fbc7697950e901E(ptr nofree writeonly sret([16 x i8]) align 4 captures(none) initializes((0, 16)) %0, ptr nofree align 4 captures(none) initializes((0, 4)) %1, i32 %2) unnamed_addr #6 {
bb.a:
  store i32 %2, ptr %1, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN14regex_automata4util6syntax6Config10swap_greed17h1765760b6497d066E(ptr nofree writeonly sret([16 x i8]) align 4 captures(none) initializes((0, 16)) %0, ptr nofree align 4 captures(none) initializes((9, 10)) %1, i1 zeroext %2) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.b = zext i1 %2 to i8
  store i8 %i.b, ptr %i.a, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @_ZN14regex_automata4util6syntax6Config11get_unicode17h13a9c5fb989d9be0E(ptr nofree readonly align 4 captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.b = load i8, ptr %i.a, align 1
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @_ZN14regex_automata4util6syntax6Config14get_multi_line17ha9c0cf96103ddfb8E(ptr nofree readonly align 4 captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.b = load i8, ptr %i.a, align 2
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define i32 @_ZN14regex_automata4util6syntax6Config14get_nest_limit17he0de05e6bdd22e9bE(ptr nofree readonly align 4 captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @_ZN14regex_automata4util6syntax6Config14get_swap_greed17hc7777cf201beff30E(ptr nofree readonly align 4 captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.b = load i8, ptr %i.a, align 1
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN14regex_automata4util6syntax6Config15line_terminator17h7f8d2e529480d413E(ptr nofree writeonly sret([16 x i8]) align 4 captures(none) initializes((0, 16)) %0, ptr nofree align 4 captures(none) initializes((4, 5)) %1, i8 %2) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %2, ptr %i.a, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN14regex_automata4util6syntax6Config16case_insensitive17he3493f43f9418fe5E(ptr nofree writeonly sret([16 x i8]) align 4 captures(none) initializes((0, 16)) %0, ptr nofree align 4 captures(none) initializes((5, 6)) %1, i1 zeroext %2) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.b = zext i1 %2 to i8
  store i8 %i.b, ptr %i.a, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN14regex_automata4util6syntax6Config17ignore_whitespace17h56d31f5408f52439E(ptr nofree writeonly sret([16 x i8]) align 4 captures(none) initializes((0, 16)) %0, ptr nofree align 4 captures(none) initializes((10, 11)) %1, i1 zeroext %2) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = zext i1 %2 to i8
  store i8 %i.b, ptr %i.a, align 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define i8 @_ZN14regex_automata4util6syntax6Config19get_line_terminator17h9a29ea330374c6afE(ptr nofree readonly align 4 captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i8, ptr %i.a, align 4
  ret i8 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN14regex_automata4util6syntax6Config20dot_matches_new_line17h468596779a487f5eE(ptr nofree writeonly sret([16 x i8]) align 4 captures(none) initializes((0, 16)) %0, ptr nofree align 4 captures(none) initializes((7, 8)) %1, i1 zeroext %2) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.b = zext i1 %2 to i8
  store i8 %i.b, ptr %i.a, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @_ZN14regex_automata4util6syntax6Config20get_case_insensitive17h1a1b4718257d99c4E(ptr nofree readonly align 4 captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.b = load i8, ptr %i.a, align 1
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @_ZN14regex_automata4util6syntax6Config21get_ignore_whitespace17h50e23d25f0f1662cE(ptr nofree readonly align 4 captures(none) %0) unnamed_addr #7 {
bb.a:
end_hunk_0
begin_hunk_1_@_ZN14regex_automata4util6syntax6Config5apply17hce9ea99041daf60aE:bb.a
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = tail call align 4 ptr @_ZN12regex_syntax6parser13ParserBuilder10multi_line17h13d000eb245080b7E(ptr align 4 %i.h, i1 zeroext %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.n = load i8, ptr %i.m, align 1
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = tail call align 4 ptr @_ZN12regex_syntax6parser13ParserBuilder20dot_matches_new_line17h2675b46606ac3c4bE(ptr align 4 %i.l, i1 zeroext %i.o)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i8, ptr %i.q, align 4
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = tail call align 4 ptr @_ZN12regex_syntax6parser13ParserBuilder4crlf17hdd611042d821632eE(ptr align 4 %i.p, i1 zeroext %i.s)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.v = load i8, ptr %i.u, align 4
  %i.w = tail call align 4 ptr @_ZN12regex_syntax6parser13ParserBuilder15line_terminator17h499a2fbc87364d09E(ptr align 4 %i.t, i8 %i.v)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.y = load i8, ptr %i.x, align 1
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = tail call align 4 ptr @_ZN12regex_syntax6parser13ParserBuilder10swap_greed17hf6b2b601f26432d3E(ptr align 4 %i.w, i1 zeroext %i.z)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ac = load i8, ptr %i.ab, align 2
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = tail call align 4 ptr @_ZN12regex_syntax6parser13ParserBuilder17ignore_whitespace17h59b0cb3cdb3af294E(ptr align 4 %i.aa, i1 zeroext %i.ad)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ag = load i8, ptr %i.af, align 4
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = tail call align 4 ptr @_ZN12regex_syntax6parser13ParserBuilder4utf817hfa6d5daffdb90309E(ptr align 4 %i.ae, i1 zeroext %i.ah)
  %i.aj = load i32, ptr %0, align 4
  %i.ak = tail call align 4 ptr @_ZN12regex_syntax6parser13ParserBuilder10nest_limit17h4ae83584ebd122b5E(ptr align 4 %i.ai, i32 %i.aj)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.am = load i8, ptr %i.al, align 1
  %i.an = trunc nuw i8 %i.am to i1
  %i.ao = tail call align 4 ptr @_ZN12regex_syntax6parser13ParserBuilder5octal17hc3a0621aae44987dE(ptr align 4 %i.ak, i1 zeroext %i.an) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN14regex_automata4util6syntax6Config5octal17h91c1c44fefeba57eE(ptr nofree writeonly sret([16 x i8]) align 4 captures(none) initializes((0, 16)) %0, ptr nofree align 4 captures(none) initializes((13, 14)) %1, i1 zeroext %2) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.b = zext i1 %2 to i8
  store i8 %i.b, ptr %i.a, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN14regex_automata4util6syntax6Config7unicode17h82643d5590175349E(ptr nofree writeonly sret([16 x i8]) align 4 captures(none) initializes((0, 16)) %0, ptr nofree align 4 captures(none) initializes((11, 12)) %1, i1 zeroext %2) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.b = zext i1 %2 to i8
  store i8 %i.b, ptr %i.a, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @_ZN14regex_automata4util6syntax6Config8get_crlf17hbd72cd9008931273E(ptr nofree readonly align 4 captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 4
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @_ZN14regex_automata4util6syntax6Config8get_utf817ha5f4525a10ad944eE(ptr nofree readonly align 4 captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN14regex_automata4util6syntax6Config9apply_ast17h0d31bb8cf65ecc19E(ptr nofree readonly align 4 captures(none) %0, ptr align 4 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.b = load i8, ptr %i.a, align 2
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = tail call align 4 ptr @_ZN12regex_syntax3ast5parse13ParserBuilder17ignore_whitespace17hebf9ee0c12072821E(ptr align 4 %1, i1 zeroext %i.c)
  %i.e = load i32, ptr %0, align 4
  %i.f = tail call align 4 ptr @_ZN12regex_syntax3ast5parse13ParserBuilder10nest_limit17h8618acb372fa954bE(ptr align 4 %i.d, i32 %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.h = load i8, ptr %i.g, align 1
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = tail call align 4 ptr @_ZN12regex_syntax3ast5parse13ParserBuilder5octal17hf42f4f8844c8e1e6E(ptr align 4 %i.f, i1 zeroext %i.i) ; 0 uses
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN14regex_automata4util6syntax6Config9apply_hir17h1105740f4788c964E(ptr nofree readonly align 4 captures(none) %0, ptr align 1 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.b = load i8, ptr %i.a, align 1
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = tail call align 1 ptr @_ZN12regex_syntax3hir9translate17TranslatorBuilder7unicode17h4799298a7f005212E(ptr align 1 %1, i1 zeroext %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.f = load i8, ptr %i.e, align 1
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = tail call align 1 ptr @_ZN12regex_syntax3hir9translate17TranslatorBuilder16case_insensitive17h7adffbe55bcf33d1E(ptr align 1 %i.d, i1 zeroext %i.g)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.j = load i8, ptr %i.i, align 2
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = tail call align 1 ptr @_ZN12regex_syntax3hir9translate17TranslatorBuilder10multi_line17ha27b015a61acad17E(ptr align 1 %i.h, i1 zeroext %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i8, ptr %i.m, align 4
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = tail call align 1 ptr @_ZN12regex_syntax3hir9translate17TranslatorBuilder4crlf17h00f802385c2e35bfE(ptr align 1 %i.l, i1 zeroext %i.o)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.r = load i8, ptr %i.q, align 1
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = tail call align 1 ptr @_ZN12regex_syntax3hir9translate17TranslatorBuilder20dot_matches_new_line17h4613978534ad1742E(ptr align 1 %i.p, i1 zeroext %i.s)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.v = load i8, ptr %i.u, align 4
  %i.w = tail call align 1 ptr @_ZN12regex_syntax3hir9translate17TranslatorBuilder15line_terminator17h44cad44b598211c6E(ptr align 1 %i.t, i8 %i.v)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.y = load i8, ptr %i.x, align 1
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = tail call align 1 ptr @_ZN12regex_syntax3hir9translate17TranslatorBuilder10swap_greed17h1ef9e86df3b30211E(ptr align 1 %i.w, i1 zeroext %i.z)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ac = load i8, ptr %i.ab, align 4
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = tail call align 1 ptr @_ZN12regex_syntax3hir9translate17TranslatorBuilder4utf817hf8d12eeb559ae873E(ptr align 1 %i.aa, i1 zeroext %i.ad) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @_ZN14regex_automata4util6syntax6Config9get_octal17h7480389efc936ee4E(ptr nofree readonly align 4 captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.b = load i8, ptr %i.a, align 1
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h25f5ae29e0a72417E"(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = load i32, ptr %i.b, align 4
  switch i32 %i.c, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr align 8 %1, ptr nonnull align 1 @83, i64 2)
  br label %"_ZN75_$LT$regex_automata..util..search..Anchored$u20$as$u20$core..fmt..Debug$GT$3fmt17hd7c4e7c481c0959dE.exit"

bb.d:                                             ; preds = %bb.a
  %i.e = tail call zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr align 8 %1, ptr nonnull align 1 @84, i64 3)
  br label %"_ZN75_$LT$regex_automata..util..search..Anchored$u20$as$u20$core..fmt..Debug$GT$3fmt17hd7c4e7c481c0959dE.exit"

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store ptr %i.f, ptr %i.a, align 8
  %i.g = call zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr align 8 %1, ptr nonnull align 1 @85, i64 7, ptr nonnull align 1 %i.a, ptr nonnull align 8 @86)
  br label %"_ZN75_$LT$regex_automata..util..search..Anchored$u20$as$u20$core..fmt..Debug$GT$3fmt17hd7c4e7c481c0959dE.exit"

"_ZN75_$LT$regex_automata..util..search..Anchored$u20$as$u20$core..fmt..Debug$GT$3fmt17hd7c4e7c481c0959dE.exit": ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.d, %bb.c ], [ %i.e, %bb.d ], [ %i.g, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17ha29f043314067cb7E"(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.c, ptr %i.a, align 8
  %i.d = call zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h76eec2bdcf20fea6E(ptr align 8 %1, ptr nonnull align 1 @129, i64 18, ptr nonnull align 1 @130, i64 6, ptr align 8 %i.b, ptr nonnull align 8 @131, ptr nonnull align 1 @132, i64 3, ptr nonnull align 1 %i.a, ptr nonnull align 8 @133)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hcd5c941f44e5baa2E"(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %.val = load i8, ptr %i.a, align 1
  %i.b = trunc nuw i8 %.val to i1                 ; 2 uses
  %..i = select i1 %i.b, i64 13, i64 3
  %.1.i = select i1 %i.b, ptr @88, ptr @87
  %i.c = tail call zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr align 8 %1, ptr nonnull align 1 %.1.i, i64 %..i)
  ret i1 %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @_ZN4core3cmp9PartialEq2ne17h868220df1bc9e393E(ptr nofree readonly align 1 captures(none) %0, ptr nofree readonly align 1 captures(none) %1) unnamed_addr #8 {
bb.a:
  %.val = load i8, ptr %0, align 1
  %.val1 = load i8, ptr %1, align 1
  %2 = xor i8 %.val1, %.val
  %3 = trunc i8 %2 to i1
  ret i1 %3
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_ZN4core3ops8function5FnMut8call_mut17h0da92f974496d2a3E(ptr sret([16 x i8]) align 8 %0, ptr nofree readnone align 1 captures(none) %1, i32 %2) unnamed_addr #1 {
bb.a:
  tail call void @_ZN14regex_automata3nfa8thompson6pikevm13FollowEpsilon7Explore17h56cac48064b761f3E(ptr sret([16 x i8]) align 8 %0, i32 %2)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i32 @_ZN4core3ops8function5FnMut8call_mut17h31d08590b6119addE(ptr nofree readnone align 1 captures(none) %0, ptr align 4 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @"_ZN80_$LT$regex_automata..util..primitives..StateID$u20$as$u20$core..clone..Clone$GT$5clone17hccbb874c83f6b730E"(ptr align 4 %1)
  ret i32 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_ZN4core3ops8function5FnMut8call_mut17hc5f12454fb9c8703E(ptr nofree readnone align 1 captures(none) %0, ptr align 8 %1, ptr align 8 %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call zeroext i1 @_ZN4core3cmp10PartialOrd2lt17h3741ab76ac2a3ef2E(ptr align 8 %1, ptr align 8 %2)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h3045f57744bf5838E"(ptr nofree readonly captures(none) %0, i64 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load <2 x ptr>, ptr %0, align 8
  store <2 x ptr> %i.b, ptr %i.a, align 16
  %i.c = call zeroext i1 @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17he16afc39d82c3810E"(ptr nonnull align 8 %i.a, i64 %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i64 @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h309f36a55ff08896E"(ptr nofree readonly captures(none) %0, ptr align 8 %1, i64 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call i64 @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h0ac37dfacb951110E"(ptr nonnull align 8 %i.a, ptr align 8 %1, i64 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h6402b30b905599dbE"(ptr sret([1400 x i8]) align 8 %0, ptr nofree readonly captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load <2 x ptr>, ptr %1, align 8
  store <2 x ptr> %i.b, ptr %i.a, align 16, !noalias !24
  invoke void @"_ZN14regex_automata4meta5regex7Builder19build_many_from_hir28_$u7b$$u7b$closure$u7d$$u7d$17h86f694b303810443E"(ptr sret([1400 x i8]) align 8 %0, ptr nonnull align 8 %i.a)
          to label %_ZN4core3ops8function6FnOnce9call_once17h1d1fec0bf06242bbE.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6718b6a26469d7a0E"(ptr nonnull align 8 %i.a)
          to label %"_ZN4core3ptr137drop_in_place$LT$regex_automata..meta..regex..Builder..build_many_from_hir$LT$regex_syntax..hir..Hir$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h6530e12ba8c558f5E.exit.i" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr137drop_in_place$LT$regex_automata..meta..regex..Builder..build_many_from_hir$LT$regex_syntax..hir..Hir$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h6530e12ba8c558f5E.exit.i": ; preds = %bb.b
  resume { ptr, i32 } %i.c

_ZN4core3ops8function6FnOnce9call_once17h1d1fec0bf06242bbE.exit: ; preds = %bb.a
  call void @"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6718b6a26469d7a0E"(ptr nonnull align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h8a9d510b976c7a82E"(ptr nofree readonly captures(none) %0, i64 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load <2 x ptr>, ptr %0, align 8
  store <2 x ptr> %i.b, ptr %i.a, align 16
  %i.c = call zeroext i1 @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h116d22e2d4fdf729E"(ptr nonnull align 8 %i.a, i64 %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h942b20935ee77ec6E"(ptr nofree readonly captures(none) %0, i64 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load <2 x ptr>, ptr %0, align 8
  store <2 x ptr> %i.b, ptr %i.a, align 16
  %i.c = call zeroext i1 @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17hdfa94609d042c311E"(ptr nonnull align 8 %i.a, i64 %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i64 @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h9e8a63328a04d7abE"(ptr nofree readonly captures(none) %0, ptr align 8 %1, i64 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call i64 @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17he20ac17e42f7444dE"(ptr nonnull align 8 %i.a, ptr align 8 %1, i64 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hb32ce49f77f572dcE"(ptr sret([1400 x i8]) align 8 %0, ptr nofree readonly captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load <2 x ptr>, ptr %1, align 8
  store <2 x ptr> %i.b, ptr %i.a, align 16, !noalias !27
  invoke void @"_ZN14regex_automata4meta5regex7Builder19build_many_from_hir28_$u7b$$u7b$closure$u7d$$u7d$17he8a8ccbf7fe33161E"(ptr sret([1400 x i8]) align 8 %0, ptr nonnull align 8 %i.a)
          to label %_ZN4core3ops8function6FnOnce9call_once17h0ebbd1f03cd73f5dE.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6718b6a26469d7a0E"(ptr nonnull align 8 %i.a)
          to label %"_ZN4core3ptr141drop_in_place$LT$regex_automata..meta..regex..Builder..build_many_from_hir$LT$$RF$regex_syntax..hir..Hir$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hd2251a4b1722cc8cE.exit.i" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr141drop_in_place$LT$regex_automata..meta..regex..Builder..build_many_from_hir$LT$$RF$regex_syntax..hir..Hir$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hd2251a4b1722cc8cE.exit.i": ; preds = %bb.b
  resume { ptr, i32 } %i.c

_ZN4core3ops8function6FnOnce9call_once17h0ebbd1f03cd73f5dE.exit: ; preds = %bb.a
  call void @"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6718b6a26469d7a0E"(ptr nonnull align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hc3a00ee50b7523d9E"(ptr nofree readonly captures(none) %0, i64 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load <2 x ptr>, ptr %0, align 8
  store <2 x ptr> %i.b, ptr %i.a, align 16
  %i.c = call zeroext i1 @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h4fe3ab58ca25b363E"(ptr nonnull align 8 %i.a, i64 %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hd216e240b7b4c5cbE"(ptr sret([1400 x i8]) align 8 %0, ptr nofree readonly captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load <2 x ptr>, ptr %1, align 8
  store <2 x ptr> %i.b, ptr %i.a, align 16, !noalias !30
  invoke void @"_ZN73_$LT$regex_automata..meta..regex..Regex$u20$as$u20$core..clone..Clone$GT$5clone28_$u7b$$u7b$closure$u7d$$u7d$17h80660e6e1ebee59cE"(ptr sret([1400 x i8]) align 8 %0, ptr nonnull align 8 %i.a)
          to label %_ZN4core3ops8function6FnOnce9call_once17h18db155759b9c86eE.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6718b6a26469d7a0E"(ptr nonnull align 8 %i.a)
          to label %"_ZN4core3ptr129drop_in_place$LT$$LT$regex_automata..meta..regex..Regex$u20$as$u20$core..clone..Clone$GT$..clone..$u7b$$u7b$closure$u7d$$u7d$$GT$17hf7c58aad15c7f701E.exit.i" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr129drop_in_place$LT$$LT$regex_automata..meta..regex..Regex$u20$as$u20$core..clone..Clone$GT$..clone..$u7b$$u7b$closure$u7d$$u7d$$GT$17hf7c58aad15c7f701E.exit.i": ; preds = %bb.b
  resume { ptr, i32 } %i.c

_ZN4core3ops8function6FnOnce9call_once17h18db155759b9c86eE.exit: ; preds = %bb.a
  call void @"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6718b6a26469d7a0E"(ptr nonnull align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i64 @_ZN4core3ops8function6FnOnce9call_once17h0bc5c995e5f72d7bE(i64 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call i64 @_ZN14regex_automata4util10primitives14PatternIDError17hb088d6fad12e2ed1E(i64 %0)
  ret i64 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_ZN4core3ops8function6FnOnce9call_once17h11ebcf256b74ae07E(ptr sret([56 x i8]) align 8 %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
end_hunk_1
