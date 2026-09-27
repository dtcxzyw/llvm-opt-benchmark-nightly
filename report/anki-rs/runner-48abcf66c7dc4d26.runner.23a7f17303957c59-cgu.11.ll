Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/runner-48abcf66c7dc4d26.runner.23a7f17303957c59-cgu.11?download=true
inline.NumInlined: 433
inline.NumDeleted: 262
begin_hunk_0_@"_ZN4core3ptr85drop_in_place$LT$runner..archive..download_and_check..$u7b$$u7b$closure$u7d$$u7d$$GT$17hfaa491af8de5dab9E":bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 0, ptr %i.o, align 8
  br label %.body

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr56drop_in_place$LT$reqwest..async_impl..client..Client$GT$17h56f78543f00826f1E.exit.i"

"_ZN4core3ptr56drop_in_place$LT$reqwest..async_impl..client..Client$GT$17h56f78543f00826f1E.exit5.i": ; preds = %bb.g, %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 0, ptr %i.q, align 8
  br label %"_ZN4core3ptr77drop_in_place$LT$reqwest..get$LT$$RF$str$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h1c9c7968bf7a15e6E.exit"

bb.i:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.j:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke fastcc void @"_ZN4core3ptr96drop_in_place$LT$reqwest..async_impl..response..Response..bytes..$u7b$$u7b$closure$u7d$$u7d$$GT$17hd79c348213a923b9E"(ptr noundef nonnull align 8 %i.s)
          to label %"_ZN4core3ptr77drop_in_place$LT$reqwest..get$LT$$RF$str$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h1c9c7968bf7a15e6E.exit" unwind label %bb.k

"_ZN4core3ptr77drop_in_place$LT$reqwest..get$LT$$RF$str$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h1c9c7968bf7a15e6E.exit": ; preds = %"_ZN4core3ptr56drop_in_place$LT$reqwest..async_impl..client..Client$GT$17h56f78543f00826f1E.exit5.i", %bb.b, %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.t, align 8
  br label %common.ret

.body:                                            ; preds = %"_ZN4core3ptr56drop_in_place$LT$reqwest..async_impl..client..Client$GT$17h56f78543f00826f1E.exit.i", %bb.k
  %.pn = phi { ptr, i32 } [ %i.v, %bb.k ], [ %.pn.i, %"_ZN4core3ptr56drop_in_place$LT$reqwest..async_impl..client..Client$GT$17h56f78543f00826f1E.exit.i" ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.u, align 8
  resume { ptr, i32 } %.pn

bb.k:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr96drop_in_place$LT$reqwest..async_impl..response..Response..bytes..$u7b$$u7b$closure$u7d$$u7d$$GT$17hd79c348213a923b9E"(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.b = load i8, ptr %i.a, align 8, !range !21, !noundef !5
  switch i8 %i.b, label %common.ret [
    i8 0, label %bb.b
    i8 3, label %bb.c
  ]

common.ret:                                       ; preds = %"_ZN4core3ptr54drop_in_place$LT$alloc..boxed..Box$LT$url..Url$GT$$GT$17h3ff42ce9cb91f384E.exit", %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @"_ZN4core3ptr60drop_in_place$LT$reqwest..async_impl..response..Response$GT$17h30134b2fe10fbe0fE"(ptr noalias noundef align 8 dereferenceable(136) %0)
  br label %common.ret

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 272
  invoke fastcc void @"_ZN4core3ptr111drop_in_place$LT$http_body_util..combinators..collect..Collect$LT$reqwest..async_impl..decoder..Decoder$GT$$GT$17h05e65232907777e3E"(ptr noalias noundef align 8 dereferenceable(144) %i.c)
          to label %bb.e unwind label %bb.d

common.resume:                                    ; preds = %bb.d, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %bb.i ], [ %i.d, %bb.d ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 264
  %.val2 = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$alloc..boxed..Box$LT$url..Url$GT$$GT$17h3ff42ce9cb91f384E"(ptr %.val2) #27
          to label %common.resume unwind label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 264
  %.val = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5 ; 5 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha3f255f5b51e12f3E"(ptr noalias noundef nonnull align 8 dereferenceable(88) %.val)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfab8dcfc0cf781a8E.exit.i.i" unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(88) %.val)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfab8dcfc0cf781a8E.exit.i.i": ; preds = %bb.e
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(88) %.val)
          to label %"_ZN4core3ptr54drop_in_place$LT$alloc..boxed..Box$LT$url..Url$GT$$GT$17h3ff42ce9cb91f384E.exit" unwind label %bb.h

bb.h:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfab8dcfc0cf781a8E.exit.i.i"
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.i, %bb.h ], [ %i.g, %bb.f ]
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 88, i64 noundef 8) #29
  br label %common.resume

"_ZN4core3ptr54drop_in_place$LT$alloc..boxed..Box$LT$url..Url$GT$$GT$17h3ff42ce9cb91f384E.exit": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfab8dcfc0cf781a8E.exit.i.i"
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 88, i64 noundef 8) #29
  br label %common.ret

bb.j:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr97drop_in_place$LT$tower_http..follow_redirect..BodyRepr$LT$reqwest..async_impl..body..Body$GT$$GT$17h1673dc627e080305E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !16, !noundef !5
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %"_ZN4core3ptr52drop_in_place$LT$reqwest..async_impl..body..Body$GT$17h0d085b0819b614c8E.exit"

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !642)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !643)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !644, !noundef !5 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !645)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !646)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !647, !nonnull !5, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !647, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !647, !noundef !5
  tail call void %i.f(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %i.i, i64 noundef %i.k), !inline_history !641
  br label %"_ZN4core3ptr52drop_in_place$LT$reqwest..async_impl..body..Body$GT$17h0d085b0819b614c8E.exit"

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i = load ptr, ptr %i.l, align 8, !alias.scope !644 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i = load ptr, ptr %i.m, align 8, !alias.scope !644, !nonnull !5, !align !10, !noundef !5 ; 5 uses
  %i.n = load ptr, ptr %.val1.i.i, align 8, !invariant.load !5, !noalias !644 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.n(ptr noundef nonnull %.val.i.i)
          to label %bb.f unwind label %bb.g, !noalias !644

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !13, !invariant.load !5, !noalias !644 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !14, !invariant.load !5, !noalias !644 ; 2 uses
  %i.s = icmp ult i64 %i.r, -9223372036854775807
  tail call void @llvm.assume(i1 %i.s)
  %i.t = icmp eq i64 %i.p, 0
  br i1 %i.t, label %"_ZN4core3ptr52drop_in_place$LT$reqwest..async_impl..body..Body$GT$17h0d085b0819b614c8E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i.i.i.i": ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) %i.r) #29, !noalias !644
  br label %"_ZN4core3ptr52drop_in_place$LT$reqwest..async_impl..body..Body$GT$17h0d085b0819b614c8E.exit"

bb.g:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !13, !invariant.load !5, !noalias !644 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !14, !invariant.load !5, !noalias !644 ; 2 uses
  %i.z = icmp ult i64 %i.y, -9223372036854775807
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = icmp eq i64 %i.w, 0
  br i1 %i.aa, label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h29851dc33d6b0cbfE.exit5.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i4.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i4.i.i.i.i.i": ; preds = %bb.g
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.w, i64 noundef range(i64 1, -9223372036854775807) %i.y) #29, !noalias !644
  br label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h29851dc33d6b0cbfE.exit5.i.i.i.i.i"

"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h29851dc33d6b0cbfE.exit5.i.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i4.i.i.i.i.i", %bb.g
  resume { ptr, i32 } %i.u

"_ZN4core3ptr52drop_in_place$LT$reqwest..async_impl..body..Body$GT$17h0d085b0819b614c8E.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i.i.i.i", %bb.f, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h0de06dcd82e78a02E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @10, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h2203e87d30c62748E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @10, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h4ba6c3072d2065e0E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @10, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h71b79d94de0bf7fdE(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @10, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h738dde9c6eaef7daE(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @10, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h7f3f4c894dd800f7E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @10, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h8423ce01dc213477E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @10, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17ha5d819ff80b3572cE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @10, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17hb5a096c4c5a738c8E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @10, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17hdbbf13f89f341358E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @10, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, target_mem: none) uwtable
define hidden { ptr, ptr } @_ZN4core5error5Error5cause17h9721d25001963051E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #4 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !650)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !650, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !noalias !650, !align !6, !noundef !5 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %"_ZN60_$LT$reqwest..error..Error$u20$as$u20$core..error..Error$GT$6source17hbed361c3999501e1E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.e = load ptr, ptr %i.d, align 8, !noalias !650, !nonnull !5, !align !10, !noundef !5
  br label %"_ZN60_$LT$reqwest..error..Error$u20$as$u20$core..error..Error$GT$6source17hbed361c3999501e1E.exit"

"_ZN60_$LT$reqwest..error..Error$u20$as$u20$core..error..Error$GT$6source17hbed361c3999501e1E.exit": ; preds = %bb.a, %bb.b
  %.sroa.3.0.i = phi ptr [ %i.e, %bb.b ], [ undef, %bb.a ]
  %i.f = insertvalue { ptr, ptr } poison, ptr %i.c, 0
  %i.g = insertvalue { ptr, ptr } %i.f, ptr %.sroa.3.0.i, 1
  ret { ptr, ptr } %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error6source17hac738f601d94b09dE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17h3b92eee58ee7a517E(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17h405b3b2ea910ec8cE(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17h46508249025049bcE(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17h4cedf9dd49c91bb2E(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17h632b9e7af6707fc2E(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17h7773544d9ccae8adE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17h9c3ef036815b3e33E(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17haddccc4ac318d521E(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17hd3dce358d3239d96E(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17he2582766a223411aE(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17he578dcbd9508411bE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17he9d35ed6d09a804bE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4core5error5Error7type_id17h1e2e6a343a8f0e91E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @11, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4core5error5Error7type_id17h31c4d64832b1aa9aE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @12, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4core5error5Error7type_id17h587326d2dad7b542E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @13, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4core5error5Error7type_id17h5a1a5ea45ccd8d81E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @14, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4core5error5Error7type_id17h5ce134786e4acdebE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @15, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4core5error5Error7type_id17h5fecd3d881608550E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @16, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4core5error5Error7type_id17h65ea0d8aaa0938efE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @17, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4core5error5Error7type_id17h6d06b65c381114d1E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @18, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4core5error5Error7type_id17h827bf8cd32ca4da6E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @19, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4core5error5Error7type_id17h8e73679aa84c49bcE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @20, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4core5error5Error7type_id17h987894c0397f1c5aE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @21, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4core5error5Error7type_id17hf3674614317047c1E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @22, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN56_$LT$anki_process..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h07859cf204d122f3E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = load i64, ptr %0, align 8, !range !18, !noundef !5 ; 3 uses
  %i.f = icmp ne i64 %i.e, -9223372036854775806
  tail call void @llvm.assume(i1 %i.f)
  %i.g = xor i64 %i.e, -9223372036854775808
  %i.h = icmp slt i64 %i.e, 0
end_hunk_0
begin_hunk_1_@"_ZN61_$LT$std..path..PathBuf$u20$as$u20$which..finder..PathExt$GT$11to_absolute17h7d45337afa234710E":bb.a

.noexc7:                                          ; preds = %bb.i
  %i.aa = load i8, ptr %i.b, align 8, !range !12, !noalias !679, !noundef !5 ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.aa, 10
  br i1 %.not.i.i.i, label %.loopexit.i, label %.lr.ph.split.i.i.i

bb.j:                                             ; preds = %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7cbf6871255fcadcE.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !680
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 64, i1 false), !noalias !681
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !682
  invoke void @"_ZN80_$LT$std..path..Components$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha54128b69019ea90E"(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc8:                                          ; preds = %bb.j
  %i.ab = load i8, ptr %i.a, align 8, !range !12, !noalias !682, !noundef !5 ; 2 uses
  %.not10.i.i = icmp eq i8 %i.ab, 10
  br i1 %.not10.i.i, label %_ZN4core4iter6traits8iterator8Iterator4fold17hc8683f60ac0c6dc3E.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc8
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.79.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.68.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br label %bb.k

bb.k:                                             ; preds = %.noexc10, %.lr.ph.i.i
  %i.ac = phi i8 [ %i.ab, %.lr.ph.i.i ], [ %i.ah, %.noexc10 ] ; 2 uses
  %i.ad = icmp samesign ugt i8 %i.ac, 5
  %i.ae = zext nneg i8 %i.ac to i64
  %i.af = add nsw i64 %i.ae, -5
  %i.ag = select i1 %i.ad, i64 %i.af, i64 0       ; 2 uses
  switch i64 %i.ag, label %bb.l [
    i64 0, label %bb.m
    i64 1, label %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7cbf6871255fcadcE.exit.i.i"
    i64 2, label %bb.n
    i64 3, label %bb.o
    i64 4, label %bb.p
  ]

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.k
  %.sroa.79.0.copyload.i.i = load i64, ptr %.sroa.79.0..sroa_idx.i.i, align 8, !noalias !682
  %.sroa.68.0.copyload.i.i = load ptr, ptr %.sroa.68.0..sroa_idx.i.i, align 8, !noalias !682, !nonnull !5, !noundef !5
  br label %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7cbf6871255fcadcE.exit.i.i"

bb.n:                                             ; preds = %bb.k
  br label %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7cbf6871255fcadcE.exit.i.i"

bb.o:                                             ; preds = %bb.k
  br label %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7cbf6871255fcadcE.exit.i.i"

bb.p:                                             ; preds = %bb.k
  %.sroa.46.0.copyload.i.i = load i64, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !682
  %.sroa.3.0.copyload.i.i = load ptr, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !682, !nonnull !5, !noundef !5
  br label %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7cbf6871255fcadcE.exit.i.i"

"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7cbf6871255fcadcE.exit.i.i": ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.k
  %.sroa.6.0.i.i.i.i.i.i = phi i64 [ %.sroa.79.0.copyload.i.i, %bb.m ], [ %.sroa.46.0.copyload.i.i, %bb.p ], [ 1, %bb.n ], [ 2, %bb.o ], [ %i.ag, %bb.k ]
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %.sroa.68.0.copyload.i.i, %bb.m ], [ %.sroa.3.0.copyload.i.i, %bb.p ], [ @7, %bb.n ], [ @8, %bb.o ], [ @6, %bb.k ]
  invoke void @_ZN3std4path7PathBuf5_push17h0cc293ef81b38932E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0.i.i.i.i.i.i, i64 noundef %.sroa.6.0.i.i.i.i.i.i)
          to label %.noexc9 unwind label %.loopexit

.noexc9:                                          ; preds = %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7cbf6871255fcadcE.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !682
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !682
  invoke void @"_ZN80_$LT$std..path..Components$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha54128b69019ea90E"(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %.noexc10 unwind label %.loopexit

.noexc10:                                         ; preds = %.noexc9
  %i.ah = load i8, ptr %i.a, align 8, !range !12, !noalias !682, !noundef !5 ; 2 uses
  %.not.i.i = icmp eq i8 %i.ah, 10
  br i1 %.not.i.i, label %_ZN4core4iter6traits8iterator8Iterator4fold17hc8683f60ac0c6dc3E.exit.i, label %bb.k

_ZN4core4iter6traits8iterator8Iterator4fold17hc8683f60ac0c6dc3E.exit.i: ; preds = %.noexc10, %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !682
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !680
  br label %"_ZN115_$LT$core..iter..adapters..skip_while..SkipWhile$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hc916d77068b49349E.exit"

bb.q:                                             ; preds = %.lr.ph.split.i.i.i
  store i8 1, ptr %i.x, align 8, !alias.scope !683, !noalias !684
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !679
  %i.ai = icmp samesign ugt i8 %i.z, 5
  %i.aj = zext nneg i8 %i.z to i64
  %i.ak = add nsw i64 %i.aj, -5
  %i.al = select i1 %i.ai, i64 %i.ak, i64 0       ; 2 uses
  switch i64 %i.al, label %bb.r [
    i64 0, label %bb.s
    i64 1, label %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7cbf6871255fcadcE.exit.i"
    i64 2, label %bb.t
    i64 3, label %bb.u
    i64 4, label %bb.v
  ]

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.i.i.sroa.10.0.copyload.i) ]
  br label %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7cbf6871255fcadcE.exit.i"

bb.t:                                             ; preds = %bb.q
  br label %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7cbf6871255fcadcE.exit.i"

bb.u:                                             ; preds = %bb.q
  br label %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7cbf6871255fcadcE.exit.i"

bb.v:                                             ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.i.i.sroa.7.0.copyload.i) ]
  br label %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7cbf6871255fcadcE.exit.i"

"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7cbf6871255fcadcE.exit.i": ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.q
  %.sroa.6.0.i.i.i.i.i = phi i64 [ %.sroa.5.i.i.sroa.11.0.copyload.i, %bb.s ], [ %.sroa.5.i.i.sroa.8.0.copyload.i, %bb.v ], [ 1, %bb.t ], [ 2, %bb.u ], [ %i.al, %bb.q ]
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %.sroa.5.i.i.sroa.10.0.copyload.i, %bb.s ], [ %.sroa.5.i.i.sroa.7.0.copyload.i, %bb.v ], [ @7, %bb.t ], [ @8, %bb.u ], [ @6, %bb.q ]
  invoke void @_ZN3std4path7PathBuf5_push17h0cc293ef81b38932E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0.i.i.i.i.i, i64 noundef %.sroa.6.0.i.i.i.i.i)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp

.loopexit.i:                                      ; preds = %.noexc7, %.noexc6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !679
  br label %"_ZN115_$LT$core..iter..adapters..skip_while..SkipWhile$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hc916d77068b49349E.exit"

"_ZN115_$LT$core..iter..adapters..skip_while..SkipWhile$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hc916d77068b49349E.exit": ; preds = %.loopexit.i, %_ZN4core4iter6traits8iterator8Iterator4fold17hc8683f60ac0c6dc3E.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha3f255f5b51e12f3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h22828b7800b2480bE.exit" unwind label %bb.w

bb.w:                                             ; preds = %"_ZN115_$LT$core..iter..adapters..skip_while..SkipWhile$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hc916d77068b49349E.exit"
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

common.resume:                                    ; preds = %bb.aa, %bb.w
  %common.resume.op = phi { ptr, i32 } [ %i.am, %bb.w ], [ %.pn, %bb.aa ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h22828b7800b2480bE.exit": ; preds = %"_ZN115_$LT$core..iter..adapters..skip_while..SkipWhile$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hc916d77068b49349E.exit"
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.y

bb.y:                                             ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h22828b7800b2480bE.exit", %bb.d
  ret void

bb.z:                                             ; preds = %bb.aa, %.loopexit.split-lp
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.aa:                                            ; preds = %.loopexit.split-lp, %bb.b
  %.pn = phi { ptr, i32 } [ %lpad.phi, %.loopexit.split-lp ], [ %i.m, %bb.b ]
  invoke void @"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h22828b7800b2480bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #27
          to label %common.resume unwind label %bb.z
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN62_$LT$anki_process..CodeDisplay$u20$as$u20$core..fmt..Debug$GT$3fmt17h3601e796178fe2feE"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @69, i64 noundef 11, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @68)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN64_$LT$anki_io..error..FileIoError$u20$as$u20$core..fmt..Debug$GT$3fmt17hb191c47308b3d168E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.c, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field3_finish17hb3d4bef75f82d4d6E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @72, i64 noundef 11, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @73, i64 noundef 4, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @70, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @74, i64 noundef 2, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @71, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @27, i64 noundef 6, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN65_$LT$alloc..string..FromUtf8Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h74eb3348ed036be9E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h76eec2bdcf20fea6E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @82, i64 noundef 13, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @83, i64 noundef 5, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @80, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @84, i64 noundef 5, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @81)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @"_ZN66_$LT$anki_io..error..FileIoError$u20$as$u20$core..error..Error$GT$11description17hefbc3333ebb66613E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @72, i64 11 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN66_$LT$anki_io..error..FileIoError$u20$as$u20$core..error..Error$GT$5cause17h6723bab80b9b354aE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @43, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN66_$LT$anki_io..error..FileIoError$u20$as$u20$core..error..Error$GT$6source17h95e13e9831afa7b6E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @43, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN6anyhow5error10object_ref17h21cef95856bafc28E(ptr noundef nonnull %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @91, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN6anyhow5error10object_ref17h2bce5053e7fabcfcE(ptr noundef nonnull %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @93, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN6anyhow5error10object_ref17h3c389f0486ce92eaE(ptr noundef nonnull %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @95, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN6anyhow5error10object_ref17h77114db65a9b7375E(ptr noundef nonnull %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @43, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN6anyhow5error10object_ref17hb121846c8af6ca45E(ptr noundef nonnull %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @97, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noalias noundef align 8 ptr @_ZN6anyhow5error12no_backtrace17ha76ee576cb20a584E(ptr nofree nonnull readnone captures(none) %0) unnamed_addr #3 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN6anyhow5error12object_boxed17h0f353a55768b4e5bE(ptr noundef nonnull %0) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @99, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN6anyhow5error12object_boxed17h94954d43d47a8f59E(ptr noundef nonnull %0) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @101, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN6anyhow5error12object_boxed17h9b1703be8884edf7E(ptr noundef nonnull %0) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @103, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN6anyhow5error12object_boxed17hf150304386d3ec65E(ptr noundef nonnull %0) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @105, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN6anyhow5error12object_boxed17hfce7cc7bb2afcc67E(ptr noundef nonnull %0) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @107, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef ptr @_ZN6anyhow5error15object_downcast17h6de55df840261f3fE(ptr nofree noundef nonnull readnone captures(ret: address, provenance) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #8 {
bb.a:
  %i.a = load i128, ptr %1, align 8, !noundef !5
  %i.b = icmp eq i128 %i.a, -163680180555130691116900902775116917808
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.0.0 = select i1 %i.b, ptr %i.c, ptr null
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef ptr @_ZN6anyhow5error15object_downcast17h701d638f76bb7adcE(ptr nofree noundef nonnull readnone captures(ret: address, provenance) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #8 {
bb.a:
  %i.a = load i128, ptr %1, align 8, !noundef !5
  %i.b = icmp eq i128 %i.a, 82957352856857069842157919874181726482
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.0.0 = select i1 %i.b, ptr %i.c, ptr null
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef ptr @_ZN6anyhow5error15object_downcast17hadb27c8becaf7603E(ptr nofree noundef nonnull readnone captures(ret: address, provenance) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #8 {
bb.a:
  %i.a = load i128, ptr %1, align 8, !noundef !5
  %i.b = icmp eq i128 %i.a, 164692792922995196943609666521115412323
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.0.0 = select i1 %i.b, ptr %i.c, ptr null
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef ptr @_ZN6anyhow5error15object_downcast17he9fd35e9b122ed49E(ptr nofree noundef nonnull readnone captures(ret: address, provenance) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #8 {
bb.a:
  %i.a = load i128, ptr %1, align 8, !noundef !5
  %i.b = icmp eq i128 %i.a, -69308422068989301611478926754130305610
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.0.0 = select i1 %i.b, ptr %i.c, ptr null
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef ptr @_ZN6anyhow5error16context_downcast17hf8dabc5555d5d681E(ptr nofree noundef nonnull readnone captures(ret: address, provenance) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #8 {
bb.a:
  %i.a = load i128, ptr %1, align 8, !noundef !5
  switch i128 %i.a, label %bb.d [
    i128 -93652901832424836513689306266955195027, label %bb.b
    i128 161763396755659809476855697968974569214, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.b, %bb.b ], [ %i.c, %bb.c ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$22construct_from_context17h45ef665ec61a4a72E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %3) unnamed_addr #9 {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 4 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %2, i64 80, i1 false)
  %i.d = call fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h27392df74027c465E"(ptr noalias noundef readonly align 8 captures(address) dereferenceable(96) %i.a, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %3)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h27392df74027c465E"(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @112, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef nonnull align 8 dereferenceable(96) %0, i64 96, i1 false)
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !687
  %i.d = tail call noundef align 8 dereferenceable_or_null(152) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef range(i64 64, 153) 152, i64 noundef 8) #29, !noalias !687 ; 3 uses
end_hunk_1
