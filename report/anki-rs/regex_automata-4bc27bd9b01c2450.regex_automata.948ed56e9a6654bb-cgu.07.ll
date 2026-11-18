Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/regex_automata-4bc27bd9b01c2450.regex_automata.948ed56e9a6654bb-cgu.07?download=true
inline.NumInlined: 211
inline.NumDeleted: 31
begin_hunk_0_@"_ZN67_$LT$core..cell..RefCell$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h97d226bcf9baaa21E":bb.a
          cleanup
  invoke void @"_ZN4core3ptr96drop_in_place$LT$core..cell..Ref$LT$regex_automata..nfa..thompson..range_trie..RangeTrie$GT$$GT$17h8510f785a0de475eE"(ptr nonnull align 8 %i.a) #20
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.i, ptr noundef nonnull align 8 dereferenceable(160) %i.b, i64 160, i1 false)
  store i64 0, ptr %0, align 8
  call void @"_ZN4core3ptr96drop_in_place$LT$core..cell..Ref$LT$regex_automata..nfa..thompson..range_trie..RangeTrie$GT$$GT$17h8510f785a0de475eE"(ptr nonnull align 8 %i.a)
  ret void

bb.f:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #21
  unreachable

bb.g:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN67_$LT$core..cell..RefCell$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf3a35df8bd658febE"(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) %0, ptr align 8 %1, ptr align 8 %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !221 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 2 uses
  %i.c = load i64, ptr %1, align 8                ; 2 uses
  %i.d = icmp ult i64 %i.c, 9223372036854775807
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core4cell30panic_already_mutably_borrowed17h4b83bcbcb74b1f38E(ptr align 8 %2) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = add nuw nsw i64 %i.c, 1
  store i64 %i.e, ptr %1, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.g, align 8
  invoke void @"_ZN88_$LT$regex_automata..nfa..thompson..map..Utf8SuffixMap$u20$as$u20$core..clone..Clone$GT$5clone17hb949303e2256adb6E"(ptr nonnull sret([40 x i8]) align 8 %i.b, ptr nonnull align 8 %i.f)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr93drop_in_place$LT$core..cell..Ref$LT$regex_automata..nfa..thompson..map..Utf8SuffixMap$GT$$GT$17h3f383e92fe2a0f13E"(ptr nonnull align 8 %i.a) #20
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  store i64 0, ptr %0, align 8
  call void @"_ZN4core3ptr93drop_in_place$LT$core..cell..Ref$LT$regex_automata..nfa..thompson..map..Utf8SuffixMap$GT$$GT$17h3f383e92fe2a0f13E"(ptr nonnull align 8 %i.a)
  ret void

bb.f:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #21
  unreachable

bb.g:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @"_ZN70_$LT$core..num..error..TryFromIntError$u20$as$u20$core..fmt..Debug$GT$3fmt17h35cc3928c3b18294E"(ptr align 1 %0, ptr align 8 %1) unnamed_addr #1 !guid !222 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = call zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr align 8 %1, ptr nonnull align 1 @166, i64 15, ptr nonnull align 1 %i.a, ptr nonnull align 8 @165)
  ret i1 %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define align 8 ptr @"_ZN71_$LT$core..cell..RefMut$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h1da3b5e7fa7cabf0E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 !guid !223 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define align 8 ptr @"_ZN71_$LT$core..cell..RefMut$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h579c452510f49acdE"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 !guid !224 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define align 8 ptr @"_ZN71_$LT$core..cell..RefMut$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h5e8745e795609b3bE"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 !guid !225 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define align 8 ptr @"_ZN71_$LT$core..cell..RefMut$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h679e5bc4654e9eb9E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 !guid !226 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define align 8 ptr @"_ZN74_$LT$core..cell..RefMut$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h38e0f485c09e46f8E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 !guid !227 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define align 8 ptr @"_ZN74_$LT$core..cell..RefMut$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h56e076e2de84d0a3E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 !guid !228 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define align 8 ptr @"_ZN74_$LT$core..cell..RefMut$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h66f97a086092cdd5E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 !guid !229 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define align 8 ptr @"_ZN74_$LT$core..cell..RefMut$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h755c71495fb9608dE"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 !guid !230 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define align 8 ptr @"_ZN74_$LT$core..cell..RefMut$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h9c244c506b9352d1E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 !guid !231 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define align 8 ptr @"_ZN74_$LT$core..cell..RefMut$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17hedd720a1ba9054a2E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 !guid !232 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN86_$LT$regex_automata..nfa..thompson..compiler..Config$u20$as$u20$core..clone..Clone$GT$5clone17h4c63f5030ce4df0aE"(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 22)) %0, ptr align 8 %1) unnamed_addr #1 !guid !233 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.b = tail call i8 @"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h04562ac21d5acebbE"(ptr nonnull align 1 %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.d = tail call i8 @"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h04562ac21d5acebbE"(ptr nonnull align 1 %i.c)
  %i.e = tail call { i64, i64 } @"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4078ca892b2755f7E"(ptr align 8 %1) ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0
  %i.g = extractvalue { i64, i64 } %i.e, 1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.i = tail call i8 @"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h04562ac21d5acebbE"(ptr nonnull align 1 %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 21
  %i.k = tail call i8 @"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb44bc87d0363f061E"(ptr nonnull align 1 %i.j)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = tail call { i1, i8 } @"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h89f371379f90125dE"(ptr nonnull align 1 %i.l) ; 2 uses
  %i.n = extractvalue { i1, i8 } %i.m, 0
  %i.o = extractvalue { i1, i8 } %i.m, 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %i.b, ptr %i.p, align 2
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %i.d, ptr %i.q, align 1
  store i64 %i.f, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.g, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %i.i, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %i.k, ptr %i.t, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = zext i1 %i.n to i8
  store i8 %i.v, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.o, ptr %i.w, align 1
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7b09bc5ad6d9bfdbE"(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr align 8 %1, i64 %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !236 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.016 = alloca [24 x i8], align 8          ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = tail call { i64, ptr } @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h897ce1429f5c1ac0E"(i64 %2, i64 8, i64 32) ; 2 uses
  %i.f = extractvalue { i64, ptr } %i.e, 0        ; 5 uses
  %i.g = extractvalue { i64, ptr } %i.e, 1        ; 2 uses
  store i64 %i.f, ptr %i.d, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %i.i, align 8
  store ptr %i.d, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %2
  store ptr %1, ptr %i.b, align 8
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.k, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.l = icmp eq i64 %i.f, 0
  br i1 %i.l, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.i
  %3 = phi i64 [ %.pr, %bb.i ], [ %i.f, %bb.a ]
  %i.m = phi i64 [ %i.p, %bb.i ], [ 0, %bb.a ]
  %i.n = add i64 %3, -1
  store i64 %i.n, ptr %.sroa.2.0..sroa_idx, align 8
  %i.o = invoke { i64, ptr } @"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h555c2efe17e39b35E"(ptr nonnull align 8 %i.b)
          to label %bb.b unwind label %.loopexit  ; 2 uses

._crit_edge:                                      ; preds = %bb.b, %bb.i, %bb.a
  store i64 %2, ptr %i.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  ret void

.loopexit:                                        ; preds = %.lr.ph, %bb.d
  %4 = phi i64 [ %i.m, %.lr.ph ], [ %i.p, %bb.d ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store i64 %4, ptr %i.j, align 8
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.g
  %lpad.loopexit.split-lp30 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.u, %bb.e ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp30, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @"_ZN4core3ptr206drop_in_place$LT$$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$..to_vec..DropGuard$LT$regex_automata..nfa..thompson..compiler..Utf8Node$C$alloc..alloc..Global$GT$$GT$17he6a695d6e4df513dE"(ptr nonnull align 8 %i.c) #20
          to label %bb.k unwind label %bb.j

bb.b:                                             ; preds = %.lr.ph
  %i.p = extractvalue { i64, ptr } %i.o, 0        ; 7 uses
  %i.q = extractvalue { i64, ptr } %i.o, 1        ; 3 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ult i64 %i.p, %i.f
  br i1 %i.r, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb7250f407599c52eE"(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %i.q)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.t = invoke i24 @"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17he9f462bdf3f09dd2E"(ptr nonnull align 1 %i.s)
          to label %bb.i unwind label %bb.e, !noalias !237

bb.e:                                             ; preds = %.noexc
  %i.u = landingpad { ptr, i32 }
          cleanup
  store i64 %i.p, ptr %i.j, align 8
  invoke void @"_ZN4core3ptr90drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..nfa..Transition$GT$$GT$17h8d9a11beff15b3cfE"(ptr nonnull align 8 %i.a) #20
          to label %.body unwind label %bb.f, !noalias !237

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #21, !noalias !237
  unreachable

bb.g:                                             ; preds = %bb.c
  store i64 %i.p, ptr %i.j, align 8
  invoke void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 %i.p, i64 %i.f, ptr nonnull align 8 @168) #19
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.016, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %i.p ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.016, i64 24, i1 false)
  %.sroa.217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store i24 %i.t, ptr %.sroa.217.0..sroa_idx, align 8
  %.pr = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 2 uses
  %i.x = icmp eq i64 %.pr, 0
  br i1 %i.x, label %._crit_edge, label %.lr.ph

bb.j:                                             ; preds = %bb.k, %.body
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #21
  unreachable

bb.k:                                             ; preds = %.body
  invoke void @"_ZN4core3ptr93drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..compiler..Utf8Node$GT$$GT$17h7cd558fbaa692d5cE"(ptr nonnull align 8 %i.d) #20
          to label %bb.l unwind label %bb.j

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hca848d91d46dda9bE"(ptr align 8 %0) unnamed_addr #1 !guid !238 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$5clear28_$u7b$$u7b$closure$u7d$$u7d$17h95b771f90fb3bffdE"(ptr nonnull align 1 %i.a, ptr align 8 %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he051ca70c2817fbaE"(ptr align 8 %0) unnamed_addr #1 !guid !239 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @"_ZN9hashbrown3raw13RawTableInner14prepare_resize28_$u7b$$u7b$closure$u7d$$u7d$17h29ab433cdb756238E"(ptr align 8 %0, ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he60922a999140d91E"(ptr align 8 %0) unnamed_addr #1 !guid !240 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @"_ZN9hashbrown3raw13RawTableInner15rehash_in_place28_$u7b$$u7b$closure$u7d$$u7d$17h51b0170e9240ee70E"(ptr nonnull align 8 %i.a, ptr align 8 %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN88_$LT$regex_automata..nfa..thompson..compiler..Compiler$u20$as$u20$core..clone..Clone$GT$5clone17hba9314bfee8d656eE"(ptr nofree writeonly sret([448 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !241 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [160 x i8], align 8               ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [112 x i8], align 8               ; 4 uses
  %.sroa.29 = alloca [40 x i8], align 8           ; 2 uses
  %i.g = alloca [168 x i8], align 8               ; 4 uses
  %i.h = alloca [72 x i8], align 8                ; 3 uses
  %i.i = alloca [120 x i8], align 8               ; 4 uses
  %i.j = alloca [16 x i8], align 4                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @"_ZN74_$LT$regex_syntax..parser..ParserBuilder$u20$as$u20$core..clone..Clone$GT$5clone17hf962395a56a4d8acE"(ptr nonnull sret([16 x i8]) align 4 %i.j, ptr nonnull align 4 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.m = call i8 @"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h04562ac21d5acebbE"(ptr nonnull align 1 %i.l)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.o = call i8 @"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h04562ac21d5acebbE"(ptr nonnull align 1 %i.n)
  %i.p = call { i64, i64 } @"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4078ca892b2755f7E"(ptr align 8 %1) ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.r = call i8 @"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h04562ac21d5acebbE"(ptr nonnull align 1 %i.q)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 21
  %i.t = call i8 @"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb44bc87d0363f061E"(ptr nonnull align 1 %i.s)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = call { i1, i8 } @"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h89f371379f90125dE"(ptr nonnull align 1 %i.u) ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %i.y = icmp ult i64 %i.x, 9223372036854775807
  br i1 %i.y, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZN4core4cell30panic_already_mutably_borrowed17h4b83bcbcb74b1f38E(ptr nonnull align 8 @169) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.z = add nuw nsw i64 %i.x, 1
  store i64 %i.z, ptr %i.w, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  store ptr %i.aa, ptr %i.e, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.w, ptr %i.ab, align 8
  invoke void @"_ZN86_$LT$regex_automata..nfa..thompson..builder..Builder$u20$as$u20$core..clone..Clone$GT$5clone17hf59c1fb902f90b49E"(ptr nonnull sret([112 x i8]) align 8 %i.f, ptr nonnull align 8 %i.aa)
          to label %"_ZN67_$LT$core..cell..RefCell$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h882b6b2b59adad44E.exit" unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr91drop_in_place$LT$core..cell..Ref$LT$regex_automata..nfa..thompson..builder..Builder$GT$$GT$17h5e2935c05e6b8f1aE"(ptr nonnull align 8 %i.e) #20
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #21
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.ac, %bb.d ], [ %.pn.pn, %bb.f ]
  resume { ptr, i32 } %common.resume.op

"_ZN67_$LT$core..cell..RefCell$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h882b6b2b59adad44E.exit": ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ae, ptr noundef nonnull align 8 dereferenceable(112) %i.f, i64 112, i1 false)
  store i64 0, ptr %i.i, align 8
  call void @"_ZN4core3ptr91drop_in_place$LT$core..cell..Ref$LT$regex_automata..nfa..thompson..builder..Builder$GT$$GT$17h5e2935c05e6b8f1aE"(ptr nonnull align 8 %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 160
  invoke void @"_ZN67_$LT$core..cell..RefCell$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h5b9bbd9967c6c797E"(ptr nonnull sret([72 x i8]) align 8 %i.h, ptr nonnull align 8 %i.af, ptr nonnull align 8 @169)
          to label %bb.h unwind label %bb.g

bb.f:                                             ; preds = %.body, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ag, %bb.g ]
  invoke void @"_ZN4core3ptr95drop_in_place$LT$core..cell..RefCell$LT$regex_automata..nfa..thompson..builder..Builder$GT$$GT$17h5635682c7c2074b9E"(ptr nonnull align 8 %i.i) #20
          to label %common.resume unwind label %bb.w

bb.g:                                             ; preds = %"_ZN67_$LT$core..cell..RefCell$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h882b6b2b59adad44E.exit"
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.h:                                             ; preds = %"_ZN67_$LT$core..cell..RefCell$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h882b6b2b59adad44E.exit"
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ai = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.aj = icmp ult i64 %i.ai, 9223372036854775807
  br i1 %i.aj, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN4core4cell30panic_already_mutably_borrowed17h4b83bcbcb74b1f38E(ptr nonnull align 8 @169) #19
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ak = add nuw nsw i64 %i.ai, 1
  store i64 %i.ak, ptr %i.ah, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  store ptr %i.al, ptr %i.c, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ah, ptr %i.am, align 8
  invoke void @"_ZN91_$LT$regex_automata..nfa..thompson..range_trie..RangeTrie$u20$as$u20$core..clone..Clone$GT$5clone17hd93aa8f2ad605be2E"(ptr nonnull sret([160 x i8]) align 8 %i.d, ptr nonnull align 8 %i.al)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr96drop_in_place$LT$core..cell..Ref$LT$regex_automata..nfa..thompson..range_trie..RangeTrie$GT$$GT$17h8510f785a0de475eE"(ptr nonnull align 8 %i.c) #20
          to label %.body unwind label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.ao, ptr noundef nonnull align 8 dereferenceable(160) %i.d, i64 160, i1 false)
  store i64 0, ptr %i.g, align 8
  invoke void @"_ZN4core3ptr96drop_in_place$LT$core..cell..Ref$LT$regex_automata..nfa..thompson..range_trie..RangeTrie$GT$$GT$17h8510f785a0de475eE"(ptr nonnull align 8 %i.c)
          to label %bb.o unwind label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #21
  unreachable

.body:                                            ; preds = %bb.n, %bb.k, %.body6
  %.pn = phi { ptr, i32 } [ %eh.lpad-body7, %.body6 ], [ %i.aq, %bb.n ], [ %i.an, %bb.k ]
  invoke void @"_ZN4core3ptr98drop_in_place$LT$core..cell..RefCell$LT$regex_automata..nfa..thompson..compiler..Utf8State$GT$$GT$17hf73e948c15d15a94E"(ptr nonnull align 8 %i.h) #20
          to label %bb.f unwind label %bb.w

bb.n:                                             ; preds = %bb.l, %bb.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.o:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
end_hunk_0
