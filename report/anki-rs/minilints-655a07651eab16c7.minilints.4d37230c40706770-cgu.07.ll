Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/minilints-655a07651eab16c7.minilints.4d37230c40706770-cgu.07?download=true
inline.NumInlined: 204
inline.NumDeleted: 84
begin_hunk_0_@_ZN6anyhow5error11object_drop17ha40fd6bbd152cf14E:bb.a
.body.i.i.i:                                      ; preds = %bb.f, %bb.d
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.h, %bb.d ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h55871c3b753a23b3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k) #14
          to label %bb.j unwind label %bb.g

bb.g:                                             ; preds = %.body.i.i.i
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #13
  unreachable

"_ZN4core3ptr101drop_in_place$LT$anyhow..error..ContextError$LT$alloc..string..String$C$std..io..error..Error$GT$$GT$17hdae15584ca386733E.exit.i.i": ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h50b2f11b8a1e4913E.exit.i.i.i.i"
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h55871c3b753a23b3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %"_ZN4core3ptr158drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$anyhow..error..ContextError$LT$alloc..string..String$C$std..io..error..Error$GT$$GT$$GT$$GT$17h1be42a60413e6a46E.exit" unwind label %bb.i

bb.h:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #13
  unreachable

bb.i:                                             ; preds = %"_ZN4core3ptr101drop_in_place$LT$anyhow..error..ContextError$LT$alloc..string..String$C$std..io..error..Error$GT$$GT$17hdae15584ca386733E.exit.i.i"
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.body.i.i.i, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.o, %bb.i ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.e, %bb.c ]
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 88, i64 noundef 8) #15
  resume { ptr, i32 } %eh.lpad-body.i

"_ZN4core3ptr158drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$anyhow..error..ContextError$LT$alloc..string..String$C$std..io..error..Error$GT$$GT$$GT$$GT$17h1be42a60413e6a46E.exit": ; preds = %"_ZN4core3ptr101drop_in_place$LT$anyhow..error..ContextError$LT$alloc..string..String$C$std..io..error..Error$GT$$GT$17hdae15584ca386733E.exit.i.i"
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 88, i64 noundef 8) #15
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN6anyhow5error11object_drop17he96fe786f1f20186E(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !range !9, !alias.scope !74, !noundef !4
  %i.c = icmp eq i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h64a86009d8e52553E.exit.i.i"

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @"_ZN85_$LT$std..sync..lazy_lock..LazyLock$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc58de8c6118d55feE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h64a86009d8e52553E.exit.i.i" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17he8d55425d647311bE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #14
          to label %bb.i unwind label %bb.h

"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h64a86009d8e52553E.exit.i.i": ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  %.val.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !76, !nonnull !4, !noundef !4 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %i.h = load i64, ptr %.val.i.i.i, align 8, !range !8, !alias.scope !79, !noalias !75, !noundef !4
  switch i64 %i.h, label %"_ZN4core3ptr102drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$serde_json..error..Error$GT$$GT$$GT$17h45a4b055d51e9b81E.exit" [
    i64 0, label %bb.d
    i64 1, label %bb.f
  ]

bb.d:                                             ; preds = %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h64a86009d8e52553E.exit.i.i"
  %i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16
  %.val1.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !79, !noalias !75, !noundef !4 ; 2 uses
  %i.j = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %i.j, label %"_ZN4core3ptr102drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$serde_json..error..Error$GT$$GT$$GT$17h45a4b055d51e9b81E.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 8
  %.val.i.i.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !79, !noalias !75, !nonnull !4, !noundef !4
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i.i.i, i64 noundef 1) #15, !noalias !80
  br label %"_ZN4core3ptr102drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$serde_json..error..Error$GT$$GT$$GT$17h45a4b055d51e9b81E.exit"

bb.f:                                             ; preds = %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h64a86009d8e52553E.exit.i.i"
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h55871c3b753a23b3E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.l)
          to label %"_ZN4core3ptr102drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$serde_json..error..Error$GT$$GT$$GT$17h45a4b055d51e9b81E.exit" unwind label %bb.g, !noalias !75

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef 40, i64 noundef 8) #15, !noalias !75
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #13
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.e, %bb.c ], [ %i.m, %bb.g ]
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 64, i64 noundef 8) #15
  resume { ptr, i32 } %eh.lpad-body.i

"_ZN4core3ptr102drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$serde_json..error..Error$GT$$GT$$GT$17h45a4b055d51e9b81E.exit": ; preds = %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h64a86009d8e52553E.exit.i.i", %bb.d, %bb.e, %bb.f
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef 40, i64 noundef 8) #15, !noalias !75
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 64, i64 noundef 8) #15
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN6anyhow5error11object_drop17hf25c44e086a72b64E(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !range !9, !alias.scope !85, !noundef !4
  %i.c = icmp eq i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h64a86009d8e52553E.exit.i.i"

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @"_ZN85_$LT$std..sync..lazy_lock..LazyLock$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc58de8c6118d55feE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h64a86009d8e52553E.exit.i.i" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @"_ZN4core3ptr40drop_in_place$LT$anki_process..Error$GT$17h373b37228040197cE"(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.f) #14
          to label %bb.f unwind label %bb.d

"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h64a86009d8e52553E.exit.i.i": ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @"_ZN4core3ptr40drop_in_place$LT$anki_process..Error$GT$17h373b37228040197cE"(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.g)
          to label %"_ZN4core3ptr97drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$anki_process..Error$GT$$GT$$GT$17hbd8687bf7c72d9b5E.exit" unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #13
  unreachable

bb.e:                                             ; preds = %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h64a86009d8e52553E.exit.i.i"
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.e, %bb.c ]
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 136, i64 noundef 8) #15
  resume { ptr, i32 } %eh.lpad-body.i

"_ZN4core3ptr97drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$anki_process..Error$GT$$GT$$GT$17hbd8687bf7c72d9b5E.exit": ; preds = %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h64a86009d8e52553E.exit.i.i"
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 136, i64 noundef 8) #15
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN6anyhow5error17context_drop_rest17he420c7239b59b4edE(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i128, ptr %1, align 8, !noundef !4
  %i.b = icmp eq i128 %i.a, 166593273626562474080533280498620587164
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !9, !noundef !4
  %i.e = icmp eq i64 %i.d, 2                      ; 2 uses
  br i1 %i.b, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.c, label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h64a86009d8e52553E.exit.i.i"

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @"_ZN85_$LT$std..sync..lazy_lock..LazyLock$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc58de8c6118d55feE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h64a86009d8e52553E.exit.i.i" unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke fastcc void @"_ZN4core3ptr147drop_in_place$LT$anyhow..error..ContextError$LT$alloc..string..String$C$core..mem..manually_drop..ManuallyDrop$LT$std..io..error..Error$GT$$GT$$GT$17hd966c5302097d699E"(ptr noalias noundef align 8 dereferenceable(32) %i.h) #14
          to label %common.resume unwind label %bb.g

"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h64a86009d8e52553E.exit.i.i": ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6e42a662ebe3718aE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %"_ZN4core3ptr147drop_in_place$LT$anyhow..error..ContextError$LT$alloc..string..String$C$core..mem..manually_drop..ManuallyDrop$LT$std..io..error..Error$GT$$GT$$GT$17hd966c5302097d699E.exit.i.i" unwind label %bb.e

bb.e:                                             ; preds = %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h64a86009d8e52553E.exit.i.i"
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h95bcb76995369695E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #13
  unreachable

"_ZN4core3ptr147drop_in_place$LT$anyhow..error..ContextError$LT$alloc..string..String$C$core..mem..manually_drop..ManuallyDrop$LT$std..io..error..Error$GT$$GT$$GT$17hd966c5302097d699E.exit.i.i": ; preds = %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h64a86009d8e52553E.exit.i.i"
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h95bcb76995369695E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %"_ZN4core3ptr204drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$anyhow..error..ContextError$LT$alloc..string..String$C$core..mem..manually_drop..ManuallyDrop$LT$std..io..error..Error$GT$$GT$$GT$$GT$$GT$17h534446ebc3a9ef3bE.exit" unwind label %bb.l

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #13
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.l, %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.d ], [ %i.n, %bb.j ], [ %i.j, %bb.e ], [ %i.r, %bb.l ]
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 88, i64 noundef 8) #15
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.i, label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h64a86009d8e52553E.exit.i.i2"

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @"_ZN85_$LT$std..sync..lazy_lock..LazyLock$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc58de8c6118d55feE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.m)
          to label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h64a86009d8e52553E.exit.i.i2" unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h55871c3b753a23b3E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.o)
          to label %common.resume unwind label %bb.k

"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h64a86009d8e52553E.exit.i.i2": ; preds = %bb.i, %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h55871c3b753a23b3E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.p)
          to label %"_ZN4core3ptr204drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$anyhow..error..ContextError$LT$alloc..string..String$C$core..mem..manually_drop..ManuallyDrop$LT$std..io..error..Error$GT$$GT$$GT$$GT$$GT$17h534446ebc3a9ef3bE.exit" unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #13
  unreachable

bb.l:                                             ; preds = %"_ZN4core3ptr147drop_in_place$LT$anyhow..error..ContextError$LT$alloc..string..String$C$core..mem..manually_drop..ManuallyDrop$LT$std..io..error..Error$GT$$GT$$GT$17hd966c5302097d699E.exit.i.i", %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h64a86009d8e52553E.exit.i.i2"
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

"_ZN4core3ptr204drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$anyhow..error..ContextError$LT$alloc..string..String$C$core..mem..manually_drop..ManuallyDrop$LT$std..io..error..Error$GT$$GT$$GT$$GT$$GT$17h534446ebc3a9ef3bE.exit": ; preds = %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h64a86009d8e52553E.exit.i.i2", %"_ZN4core3ptr147drop_in_place$LT$anyhow..error..ContextError$LT$alloc..string..String$C$core..mem..manually_drop..ManuallyDrop$LT$std..io..error..Error$GT$$GT$$GT$17hd966c5302097d699E.exit.i.i"
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 88, i64 noundef 8) #15
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN6anyhow5error17object_drop_front17h20d6afe13320bf84E(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !range !9, !alias.scope !90, !noundef !4
  %i.c = icmp eq i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %"_ZN4core3ptr143drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$core..mem..manually_drop..ManuallyDrop$LT$anki_process..Error$GT$$GT$$GT$$GT$17hd49d2d5ce525e413E.exit"

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @"_ZN85_$LT$std..sync..lazy_lock..LazyLock$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc58de8c6118d55feE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %"_ZN4core3ptr143drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$core..mem..manually_drop..ManuallyDrop$LT$anki_process..Error$GT$$GT$$GT$$GT$17hd49d2d5ce525e413E.exit" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 136, i64 noundef 8) #15
  resume { ptr, i32 } %i.e

"_ZN4core3ptr143drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$core..mem..manually_drop..ManuallyDrop$LT$anki_process..Error$GT$$GT$$GT$$GT$17hd49d2d5ce525e413E.exit": ; preds = %bb.a, %bb.b
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 136, i64 noundef 8) #15
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN6anyhow5error17object_drop_front17h6b603c3622ac83eeE(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !range !9, !alias.scope !95, !noundef !4
  %i.c = icmp eq i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %"_ZN4core3ptr148drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$core..mem..manually_drop..ManuallyDrop$LT$serde_json..error..Error$GT$$GT$$GT$$GT$17h135125d89f4272ccE.exit"

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @"_ZN85_$LT$std..sync..lazy_lock..LazyLock$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc58de8c6118d55feE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %"_ZN4core3ptr148drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$core..mem..manually_drop..ManuallyDrop$LT$serde_json..error..Error$GT$$GT$$GT$$GT$17h135125d89f4272ccE.exit" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 64, i64 noundef 8) #15
  resume { ptr, i32 } %i.e

"_ZN4core3ptr148drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$core..mem..manually_drop..ManuallyDrop$LT$serde_json..error..Error$GT$$GT$$GT$$GT$17h135125d89f4272ccE.exit": ; preds = %bb.a, %bb.b
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 64, i64 noundef 8) #15
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN6anyhow5error17object_drop_front17h838296c55592fb97E(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !range !9, !alias.scope !100, !noundef !4
  %i.c = icmp eq i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %"_ZN4core3ptr131drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$core..mem..manually_drop..ManuallyDrop$LT$$RF$str$GT$$GT$$GT$$GT$17ha38e4f2ebb6d8a2dE.exit"

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @"_ZN85_$LT$std..sync..lazy_lock..LazyLock$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc58de8c6118d55feE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %"_ZN4core3ptr131drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$core..mem..manually_drop..ManuallyDrop$LT$$RF$str$GT$$GT$$GT$$GT$17ha38e4f2ebb6d8a2dE.exit" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 72, i64 noundef 8) #15
  resume { ptr, i32 } %i.e

"_ZN4core3ptr131drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$core..mem..manually_drop..ManuallyDrop$LT$$RF$str$GT$$GT$$GT$$GT$17ha38e4f2ebb6d8a2dE.exit": ; preds = %bb.a, %bb.b
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 72, i64 noundef 8) #15
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN6anyhow5error17object_drop_front17hb198f88eba6bec16E(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !range !9, !alias.scope !105, !noundef !4
  %i.c = icmp eq i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %"_ZN4core3ptr145drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$core..mem..manually_drop..ManuallyDrop$LT$std..io..error..Error$GT$$GT$$GT$$GT$17hc75ef696ccaff3c6E.exit"

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @"_ZN85_$LT$std..sync..lazy_lock..LazyLock$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc58de8c6118d55feE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %"_ZN4core3ptr145drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$core..mem..manually_drop..ManuallyDrop$LT$std..io..error..Error$GT$$GT$$GT$$GT$17hc75ef696ccaff3c6E.exit" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 64, i64 noundef 8) #15
  resume { ptr, i32 } %i.e

"_ZN4core3ptr145drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$core..mem..manually_drop..ManuallyDrop$LT$std..io..error..Error$GT$$GT$$GT$$GT$17hc75ef696ccaff3c6E.exit": ; preds = %bb.a, %bb.b
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 64, i64 noundef 8) #15
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN6anyhow5error17object_drop_front17he2f70eb78e18b382E(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !range !9, !alias.scope !110, !noundef !4
  %i.c = icmp eq i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %"_ZN4core3ptr151drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$core..mem..manually_drop..ManuallyDrop$LT$anki_io..error..FileIoError$GT$$GT$$GT$$GT$17hb09d1c22f618073dE.exit"

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @"_ZN85_$LT$std..sync..lazy_lock..LazyLock$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc58de8c6118d55feE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %"_ZN4core3ptr151drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$core..mem..manually_drop..ManuallyDrop$LT$anki_io..error..FileIoError$GT$$GT$$GT$$GT$17hb09d1c22f618073dE.exit" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 112, i64 noundef 8) #15
  resume { ptr, i32 } %i.e

"_ZN4core3ptr151drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$core..mem..manually_drop..ManuallyDrop$LT$anki_io..error..FileIoError$GT$$GT$$GT$$GT$17hb09d1c22f618073dE.exit": ; preds = %bb.a, %bb.b
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 112, i64 noundef 8) #15
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN6anyhow5error17object_drop_front17hf2b05c20c82bca09E(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !range !9, !alias.scope !115, !noundef !4
  %i.c = icmp eq i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %"_ZN4core3ptr152drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$core..mem..manually_drop..ManuallyDrop$LT$alloc..string..FromUtf8Error$GT$$GT$$GT$$GT$17hce7cf8137dc7a391E.exit"

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @"_ZN85_$LT$std..sync..lazy_lock..LazyLock$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc58de8c6118d55feE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %"_ZN4core3ptr152drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$core..mem..manually_drop..ManuallyDrop$LT$alloc..string..FromUtf8Error$GT$$GT$$GT$$GT$17hce7cf8137dc7a391E.exit" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 96, i64 noundef 8) #15
  resume { ptr, i32 } %i.e

"_ZN4core3ptr152drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$core..mem..manually_drop..ManuallyDrop$LT$alloc..string..FromUtf8Error$GT$$GT$$GT$$GT$17hce7cf8137dc7a391E.exit": ; preds = %bb.a, %bb.b
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 96, i64 noundef 8) #15
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_ZN6anyhow5error23object_reallocate_boxed17h050a142671723f59E(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15, !noalias !122
  %i.c = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef range(i64 8, 81) 32, i64 noundef 8) #15, !noalias !122 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.f, !prof !10

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 32) #16
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr101drop_in_place$LT$anyhow..error..ContextError$LT$alloc..string..String$C$std..io..error..Error$GT$$GT$17hdae15584ca386733E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a) #14
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #13
  unreachable

.body:                                            ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !9, !alias.scope !123, !noundef !4
  %i.i = icmp eq i64 %i.h, 2
  br i1 %i.i, label %bb.e, label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h64a86009d8e52553E.exit"

bb.e:                                             ; preds = %.body
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @"_ZN85_$LT$std..sync..lazy_lock..LazyLock$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc58de8c6118d55feE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.j)
          to label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h64a86009d8e52553E.exit" unwind label %bb.i

bb.f:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !9, !alias.scope !124, !noundef !4
end_hunk_0
