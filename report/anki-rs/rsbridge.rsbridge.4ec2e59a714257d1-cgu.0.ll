Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/rsbridge.rsbridge.4ec2e59a714257d1-cgu.0?download=true
inline.NumInlined: 153
inline.NumDeleted: 111
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@"_ZN59_$LT$anki_io..error..FileOp$u20$as$u20$core..fmt..Debug$GT$3fmt17h98121c6bc1368113E":bb.a
bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.c ], [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.j, %bb.f ], [ %i.k, %bb.g ], [ %i.l, %bb.h ], [ %i.m, %bb.i ], [ %i.n, %bb.j ], [ %i.o, %bb.k ], [ %i.p, %bb.l ], [ %i.q, %bb.m ], [ %i.r, %bb.n ], [ %i.s, %bb.o ], [ %i.t, %bb.p ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h33c15cb69ff25ee9E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !align !4, !noundef !3
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @48, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @47)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @46, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h7bf365e97427cb32E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(44) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i32, ptr %0, align 4, !range !8, !noundef !3
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @48, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @50)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @46, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb2850b5c2b054c9aE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !align !4, !noundef !3
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @48, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @51)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @46, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN69_$LT$snafu..report..Report$LT$E$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17hd6e0514586f60270E"(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = load i64, ptr %0, align 8, !range !9, !noundef !3
  %.not = icmp eq i64 %i.b, 3
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @56, ptr %i.c, align 8
  %i.d = call noundef zeroext i1 @"_ZN69_$LT$snafu..report..ReportFormatter$u20$as$u20$core..fmt..Display$GT$3fmt17h3134c867ae984153E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.d, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN85_$LT$pyo3..pyclass..guard..PyClassGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc051a92f69f8775cE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.b = tail call noundef nonnull align 8 ptr @"_ZN119_$LT$pyo3..pycell..impl_..PyStaticClassObject$LT$T$GT$$u20$as$u20$pyo3..pycell..impl_..PyClassObjectLayout$LT$T$GT$$GT$14borrow_checker17h4130cfcac41a6e99E"(ptr noundef nonnull align 8 %i.a)
  %i.c = atomicrmw add ptr %i.b, i64 -1 release, align 8 ; 0 uses
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN85_$LT$std..sync..lazy_lock..LazyLock$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4203c111a846b5fdE"(ptr noalias noundef align 8 dereferenceable(40) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i32, ptr %i.b, align 8, !noundef !3
  switch i32 %i.c, label %bb.b [
    i32 3, label %bb.c
    i32 2, label %bb.i
    i32 0, label %bb.f
  ], !prof !202

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @119, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.g, align 8
  call void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @121) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h767066512780c8cdE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %.sink.split unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he35d6fee8a527506E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.j, %bb.g ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.a
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h767066512780c8cdE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %.sink.split unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he35d6fee8a527506E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable

.sink.split:                                      ; preds = %bb.f, %bb.c
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he35d6fee8a527506E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN89_$LT$anki..sync..collection..sanity..SanityCheckDueCounts$u20$as$u20$core..fmt..Debug$GT$3fmt17he25f73eecbbbbc4fE"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field3_finish17hb3d4bef75f82d4d6E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @135, i64 noundef 20, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @136, i64 noundef 3, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @123, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @137, i64 noundef 5, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @123, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @138, i64 noundef 6, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @124)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef i32 @_ZN8rsbridge9_rsbridge9_PYO3_DEF18__pyo3_module_exec17hc5d00c5686ad352aE(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 5 uses
  %i.b = alloca [64 x i8], align 8                ; 6 uses
  %i.c = alloca [72 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [72 x i8], align 8                ; 14 uses
  %i.g = alloca [64 x i8], align 8                ; 8 uses
  %i.h = alloca [64 x i8], align 8                ; 5 uses
  %.sroa.11.i = alloca [48 x i8], align 8         ; 4 uses
  %i.i = alloca [4 x i8], align 4                 ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !216
  store ptr @1, ptr %i.j, align 8, !noalias !216
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 30, ptr %i.k, align 8, !noalias !216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !216
  %i.l = invoke noundef i32 @_ZN4pyo38internal5state11AttachGuard6assume17h85b4163abd16dd6cE()
          to label %bb.b unwind label %.thread31.i, !noalias !216

.thread31.i:                                      ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.thread.i

bb.b:                                             ; preds = %bb.a
  store i32 %i.l, ptr %i.i, align 4, !noalias !216
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !217
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !218
  %i.o = icmp eq ptr %0, null
  br i1 %i.o, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !219
  invoke void @_ZN4pyo33err5PyErr4take17h8041d479270201e2E(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a)
          to label %.noexc11.i unwind label %bb.k, !noalias !216

.noexc11.i:                                       ; preds = %bb.c
  %i.p = load i64, ptr %i.a, align 8, !range !14, !noalias !219, !noundef !3
  %i.q = trunc nuw i64 %i.p to i1
  br i1 %i.q, label %bb.d, label %bb.e, !prof !10

bb.d:                                             ; preds = %.noexc11.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %i.r, i64 64, i1 false), !noalias !218
  br label %.noexc12.i

bb.e:                                             ; preds = %.noexc11.i
  invoke void @_ZN4pyo33err15failed_to_fetch17hada96dcc96a828f7E(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.b)
          to label %.noexc12.i unwind label %bb.k, !noalias !216

.noexc12.i:                                       ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !219
  %.sroa.6.8.copyload.i.i.i.i = load ptr, ptr %i.b, align 8, !noalias !218
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.6.8.copyload.i.i.i.i, ptr %i.s, align 8, !noalias !216
  %.sroa.213.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.213.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.n, i64 56, i1 false), !noalias !216
  store i32 1, ptr %i.f, align 8, !noalias !216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !218
  br label %bb.m

bb.f:                                             ; preds = %bb.b
  invoke void @"_ZN4pyo38instance17Borrowed$LT$T$GT$4cast5inner17hb721ef223dc1c6eeE"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noundef nonnull %0)
          to label %.noexc13.i unwind label %bb.k, !noalias !216

.noexc13.i:                                       ; preds = %bb.f
  %i.t = load ptr, ptr %i.d, align 8, !noalias !218, !noundef !3 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !noalias !218, !nonnull !3, !noundef !3 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !218
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.noexc13.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  invoke void @"_ZN4pyo33err10cast_error106_$LT$impl$u20$core..convert..From$LT$pyo3..err..cast_error..CastError$GT$$u20$for$u20$pyo3..err..PyErr$GT$4from17ha339786068ae757aE"(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.w, ptr noundef nonnull %i.t, ptr noundef nonnull %i.v)
          to label %.noexc14.i unwind label %bb.k, !noalias !216

.noexc14.i:                                       ; preds = %bb.g
  store i32 1, ptr %i.f, align 8, !noalias !216
  br label %bb.m

bb.h:                                             ; preds = %.noexc13.i
  store ptr %i.v, ptr %i.e, align 8, !noalias !218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !218
  invoke void @_ZN8rsbridge9_rsbridge17h9b055730e1e3ef4aE(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e)
          to label %.noexc15.i unwind label %bb.k

.noexc15.i:                                       ; preds = %bb.h
  %i.x = load i64, ptr %i.c, align 8, !range !14, !noalias !218, !noundef !3
  %i.y = trunc nuw i64 %i.x to i1
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.noexc15.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aa, ptr noundef nonnull align 8 dereferenceable(64) %i.z, i64 64, i1 false), !noalias !216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !218
  br label %"_ZN4pyo35impl_10trampoline11module_exec28_$u7b$$u7b$closure$u7d$$u7d$17h52953ca956ff2289E.exit.sink.split.i.i.i"

bb.j:                                             ; preds = %.noexc15.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !218
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 0, ptr %i.ab, align 4, !noalias !216
  br label %"_ZN4pyo35impl_10trampoline11module_exec28_$u7b$$u7b$closure$u7d$$u7d$17h52953ca956ff2289E.exit.sink.split.i.i.i"

"_ZN4pyo35impl_10trampoline11module_exec28_$u7b$$u7b$closure$u7d$$u7d$17h52953ca956ff2289E.exit.sink.split.i.i.i": ; preds = %bb.j, %bb.i
  %.sink.i.i.i = phi i32 [ 1, %bb.i ], [ 0, %bb.j ]
  store i32 %.sink.i.i.i, ptr %i.f, align 8, !noalias !216
  br label %bb.m

bb.k:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.c
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
          filter [0 x ptr] zeroinitializer
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  %i.ae = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h4334ae8ed31d71f7E(ptr noundef %i.ad)
          to label %.thread40.i unwind label %bb.l, !noalias !216 ; 2 uses

bb.l:                                             ; preds = %bb.k
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17h2cbcfb1212a61c82E() #24, !noalias !216
  unreachable

.thread40.i:                                      ; preds = %bb.k
  %i.ag = extractvalue { ptr, ptr } %i.ae, 0      ; 2 uses
  %i.ah = extractvalue { ptr, ptr } %i.ae, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ah) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !216
  br label %bb.n

bb.m:                                             ; preds = %"_ZN4pyo35impl_10trampoline11module_exec28_$u7b$$u7b$closure$u7d$$u7d$17h52953ca956ff2289E.exit.sink.split.i.i.i", %.noexc14.i, %.noexc12.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !217
  %.sroa.016.0.copyload18.i = load ptr, ptr %i.f, align 8, !noalias !216
  %.sroa.8.0..sroa_idx19.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.8.0.copyload20.i = load ptr, ptr %.sroa.8.0..sroa_idx19.i, align 8, !noalias !216 ; 2 uses
  %.sroa.12.0..sroa_idx22.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.12.sroa.0.0.copyload.i = load ptr, ptr %.sroa.12.0..sroa_idx22.i, align 8, !noalias !216 ; 2 uses
  %.sroa.12.sroa.4.0..sroa.12.0..sroa_idx22.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.11.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.12.sroa.4.0..sroa.12.0..sroa_idx22.sroa_idx.i, i64 48, i1 false), !noalias !216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !216
  %i.ai = ptrtoint ptr %.sroa.016.0.copyload18.i to i64 ; 2 uses
  %.sroa.023.0.extract.trunc.i = trunc i64 %i.ai to i32
  %.sroa.023.4.extract.shift.i = lshr i64 %i.ai, 32
  %.sroa.023.4.extract.trunc.i = trunc nuw i64 %.sroa.023.4.extract.shift.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !216
  switch i32 %.sroa.023.0.extract.trunc.i, label %bb.o [
    i32 2, label %bb.n
    i32 0, label %"_ZN4core3ptr55drop_in_place$LT$pyo3..internal..state..AttachGuard$GT$17hf9ff993ef830a594E.exit9.i"
  ], !prof !220

bb.n:                                             ; preds = %bb.m, %.thread40.i
  %.sroa.6.046.i = phi ptr [ %i.ag, %.thread40.i ], [ %.sroa.8.0.copyload20.i, %bb.m ] ; 2 uses
  %.sroa.9.045.i = phi ptr [ %i.ah, %.thread40.i ], [ %.sroa.12.sroa.0.0.copyload.i, %bb.m ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.046.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.045.i) ]
  invoke void @_ZN4pyo35panic14PanicException18from_panic_payload17hdfe567927f068adcE(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.h, ptr noundef nonnull align 1 %.sroa.6.046.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.9.045.i)
          to label %.noexc.i unwind label %bb.p, !noalias !216

.noexc.i:                                         ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.g, ptr noundef nonnull align 8 dereferenceable(64) %i.h, i64 64, i1 false), !noalias !221
  br label %.invoke.i

bb.o:                                             ; preds = %bb.m
  store ptr %.sroa.8.0.copyload20.i, ptr %i.g, align 8, !noalias !216
  %.sroa.9.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %.sroa.12.sroa.0.0.copyload.i, ptr %.sroa.9.8..sroa_idx.i, align 8, !noalias !216
  %.sroa.11.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.11.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.11.i, i64 48, i1 false), !noalias !216
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.o, %.noexc.i
  invoke void @_ZN4pyo33err9err_state10PyErrState7restore17h2a77df95d734c17aE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.g)
          to label %"_ZN4core3ptr55drop_in_place$LT$pyo3..internal..state..AttachGuard$GT$17hf9ff993ef830a594E.exit9.i" unwind label %bb.p, !noalias !216

bb.p:                                             ; preds = %.invoke.i, %bb.n
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @"_ZN76_$LT$pyo3..internal..state..AttachGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h44d01a65e6c67c5fE"(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.i)
          to label %.thread.i unwind label %bb.q, !noalias !216

"_ZN4core3ptr55drop_in_place$LT$pyo3..internal..state..AttachGuard$GT$17hf9ff993ef830a594E.exit9.i": ; preds = %.invoke.i, %bb.m
  %.sroa.0.0.i.i = phi i32 [ -1, %.invoke.i ], [ %.sroa.023.4.extract.trunc.i, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !216
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i)
  invoke void @"_ZN76_$LT$pyo3..internal..state..AttachGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h44d01a65e6c67c5fE"(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.i)
          to label %bb.s unwind label %bb.r

bb.q:                                             ; preds = %.thread.i, %bb.p
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24, !noalias !216
  unreachable

.thread.i:                                        ; preds = %bb.p, %.thread31.i
  invoke void @"_ZN71_$LT$pyo3..impl_..panic..PanicTrap$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4ba9793514ad974dE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %.body unwind label %bb.q, !noalias !216

bb.r:                                             ; preds = %"_ZN4core3ptr55drop_in_place$LT$pyo3..internal..state..AttachGuard$GT$17hf9ff993ef830a594E.exit9.i"
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %.thread.i, %bb.r
  call void @_ZN4core9panicking19panic_cannot_unwind17h2cbcfb1212a61c82E() #24
  unreachable

bb.s:                                             ; preds = %"_ZN4core3ptr55drop_in_place$LT$pyo3..internal..state..AttachGuard$GT$17hf9ff993ef830a594E.exit9.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !216
  ret i32 %.sroa.0.0.i.i
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden noundef align 8 dereferenceable_or_null(8) ptr @"_ZN9once_cell4sync17OnceCell$LT$T$GT$3get17h1563c7e5ec3da75eE"(ptr nofree noundef nonnull align 8 captures(ret: address, provenance) %0) unnamed_addr #9 {
bb.a:
  %i.a = load atomic ptr, ptr %0 acquire, align 8
  %i.b = icmp eq ptr %i.a, inttoptr (i64 2 to ptr)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0 = select i1 %i.b, ptr %i.c, ptr null
  ret ptr %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_ZN4pyo35impl_8pymodule9ModuleDef16init_multi_phase17hac3f3cdd9d132005E(ptr noundef nonnull align 8) unnamed_addr #3

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking19panic_cannot_unwind17h2cbcfb1212a61c82E() unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #11

; Function Attrs: cold minsize nonlazybind optsize uwtable
declare { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h4334ae8ed31d71f7E(ptr noundef) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN58_$LT$std..io..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h9a1796086550048bE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN55_$LT$std..path..PathBuf$u20$as$u20$core..fmt..Debug$GT$3fmt17h5454522f8dd4523fE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h01bbff3c14dc0e0cE"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u32$GT$3fmt17h10d10443330589e5E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u32$GT$3fmt17h040070a16e6b2c22E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17hb55abab394fd8017E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$3fmt17h6f03b4a794a26c86E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h37bd9ab57da75b39E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc4803d29c2697c0cE"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @"_ZN71_$LT$pyo3..impl_..panic..PanicTrap$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4ba9793514ad974dE"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdeac811373b54f98E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @"_ZN76_$LT$pyo3..internal..state..AttachGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h44d01a65e6c67c5fE"(ptr noalias noundef align 4 dereferenceable(4)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @"_ZN78_$LT$pyo3..internal..state..SuspendAttach$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha5ae340a7362c2c4E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h767066512780c8cdE"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he35d6fee8a527506E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #14

; Function Attrs: nounwind nonlazybind uwtable
declare void @Py_IncRef(ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN134_$LT$pyo3..internal..pyclass_init..PyNativeTypeInitializer$LT$T$GT$$u20$as$u20$pyo3..internal..pyclass_init..PyObjectInit$LT$T$GT$$GT$15into_new_object17hc72c7363cbfe7f1dE"(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noundef) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN4pyo36pycell5impl_30PyClassObjectContents$LT$T$GT$3new17h4baebf7ca59a4512E"(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noundef nonnull) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @"_ZN47_$LT$T$u20$as$u20$pyo3..err..PyErrArguments$GT$9arguments17hc996c8e049067441E"(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_ZN4pyo38internal5state13SuspendAttach3new17hb37e0e4efc1bcc34E() unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare noundef range(i32 0, 3) i32 @_ZN4pyo38internal5state11AttachGuard6assume17h85b4163abd16dd6cE() unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN4pyo38instance17Borrowed$LT$T$GT$4cast5inner17hb721ef223dc1c6eeE"(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noundef nonnull) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @"_ZN4pyo33err10cast_error106_$LT$impl$u20$core..convert..From$LT$pyo3..err..cast_error..CastError$GT$$u20$for$u20$pyo3..err..PyErr$GT$4from17ha339786068ae757aE"(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #3

; Function Attrs: cold nonlazybind uwtable
declare void @_ZN4pyo35panic14PanicException18from_panic_payload17hdfe567927f068adcE(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare void @_ZN4pyo33err9err_state10PyErrState7restore17h2a77df95d734c17aE(ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #3

; Function Attrs: nounwind nonlazybind uwtable
declare void @PyErr_WriteUnraisable(ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN8rsbridge31__pyfunction_initialize_logging17h48c742a0c733d748E(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
end_hunk_0
