Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/build_script_build-7b2e547defce8cfe.build_script_build.8761f480a0e0ac17-cgu.2?download=true
inline.NumInlined: 32
inline.NumDeleted: 21
begin_hunk_0_@"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h189da5c4a278a5c0E":bb.a
  invoke void @"_ZN4core3ptr70drop_in_place$LT$prost_reflect..descriptor..error..DescriptorError$GT$17hb0592b8fa2287434E"(ptr nonnull align 8 %i.c) #16
          to label %bb.b unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #17
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h3b1cd8ba1ed67dd2E"(ptr align 8 %0) unnamed_addr #7 personality ptr @rust_eh_personality !guid !73 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [48 x i8], align 8                ; 2 uses
  %i.c = alloca [48 x i8], align 8                ; 2 uses
  invoke void @_ZN3std9backtrace9Backtrace7capture17h7feb9ff6f8afe076E(ptr nonnull sret([48 x i8]) align 8 %i.b)
          to label %"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17h5c55b98448d1f910E.exit" unwind label %bb.c

"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17h5c55b98448d1f910E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.d = call fastcc ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h337841712f6df92cE"(ptr nonnull readonly align 8 %i.a, ptr nonnull readonly align 8 %i.c)
  ret ptr %i.d

bb.b:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr38drop_in_place$LT$syn..error..Error$GT$17hfd561ad8d1ecc6d5E"(ptr align 8 %0) #16
          to label %bb.b unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #17
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17hd9bada7cd335758dE"(ptr %0) unnamed_addr #7 personality ptr @rust_eh_personality !guid !74 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 2 uses
  %i.b = alloca [48 x i8], align 8                ; 2 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.c, align 8
  invoke void @_ZN3std9backtrace9Backtrace7capture17h7feb9ff6f8afe076E(ptr nonnull sret([48 x i8]) align 8 %i.a)
          to label %"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17h31db0a0399078f29E.exit" unwind label %bb.c

"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17h31db0a0399078f29E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  %i.d = call fastcc ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h90d532b32b88261eE"(ptr %0, ptr nonnull readonly align 8 %i.b)
  ret ptr %i.d

bb.b:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h3bee472dd2a7bc70E"(ptr nonnull align 8 %i.c) #16
          to label %bb.b unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #17
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h19539a08fbd597f5E"(ptr align 8 %0) unnamed_addr #1 !guid !75 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h6e1d48fb7c9bfe91E"(ptr nonnull align 1 %i.b, ptr %i.a, i64 8, i64 72)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h26cd8599fc9d9fa1E"(ptr align 8 %0) unnamed_addr #1 !guid !76 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h6e1d48fb7c9bfe91E"(ptr nonnull align 1 %i.b, ptr %i.a, i64 8, i64 64)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h317c26c2fa132053E"(ptr align 8 %0) unnamed_addr #1 !guid !77 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h6e1d48fb7c9bfe91E"(ptr nonnull align 1 %i.b, ptr %i.a, i64 8, i64 80)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3748e229a6c08b8fE"(ptr align 8 %0) unnamed_addr #1 !guid !78 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h6e1d48fb7c9bfe91E"(ptr nonnull align 1 %i.b, ptr %i.a, i64 8, i64 72)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h37ee49df883e3f64E"(ptr align 8 %0) unnamed_addr #1 !guid !79 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h6e1d48fb7c9bfe91E"(ptr nonnull align 1 %i.b, ptr %i.a, i64 8, i64 128)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h53af64938ab60f78E"(ptr align 8 %0) unnamed_addr #1 !guid !80 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h6e1d48fb7c9bfe91E"(ptr nonnull align 1 %i.b, ptr %i.a, i64 8, i64 128)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha84a071a9c4d37a4E"(ptr align 8 %0) unnamed_addr #1 !guid !81 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h6e1d48fb7c9bfe91E"(ptr nonnull align 1 %i.b, ptr %i.a, i64 8, i64 80)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd46c2d512401bd95E"(ptr align 8 %0) unnamed_addr #1 !guid !82 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h6e1d48fb7c9bfe91E"(ptr nonnull align 1 %i.b, ptr %i.a, i64 8, i64 128)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf5ec9b93e469c6bbE"(ptr align 8 %0) unnamed_addr #1 !guid !83 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h6e1d48fb7c9bfe91E"(ptr nonnull align 1 %i.b, ptr %i.a, i64 8, i64 64)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @"_ZN77_$LT$prost..encoding..wire_type..WireType$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b36ba568124cf72E"(ptr nofree readonly align 1 captures(none) %0, ptr nofree readonly align 1 captures(none) %1) unnamed_addr #2 !guid !84 {
bb.a:
  %i.a = load i8, ptr %0, align 1
  %i.b = load i8, ptr %1, align 1
  %i.c = icmp eq i8 %i.a, %i.b
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hd4234b413daa955fE"(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #1 !guid !87 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load i64, ptr %1, align 8
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  br i1 %i.d, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 96
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.r = load i64, ptr %i.q, align 8
  %i.s = icmp eq i64 %i.r, -1
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.aa = load i64, ptr %i.z, align 8             ; 2 uses
  br i1 %i.s, label %bb.z, label %bb.y

thread-pre-split:                                 ; preds = %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h1995b7695209eaedE.exit"
  %.pr = load i64, ptr %1, align 8, !noalias !88
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %thread-pre-split
  %2 = phi i64 [ %.pr, %thread-pre-split ], [ 0, %.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !88)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ab = trunc nuw i64 %2 to i1
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ac = load i64, ptr %i.m, align 8, !noalias !88
  %i.ad = load i64, ptr %i.i, align 8, !noalias !88 ; 2 uses
  %i.ae = icmp eq i64 %i.ac, %i.ad
  br i1 %i.ae, label %.sink.split.i, label %bb.q

bb.e:                                             ; preds = %bb.c
  %i.af = load i8, ptr %i.f, align 2, !noalias !88
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %.sink.split.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = load i8, ptr %i.g, align 8, !noalias !88 ; 2 uses
  %i.ai = trunc nuw i8 %i.ah to i1                ; 2 uses
  %i.aj = and i8 %i.ah, 1
  %i.ak = xor i8 %i.aj, 1
  store i8 %i.ak, ptr %i.g, align 8, !noalias !88
  %i.al = load i64, ptr %i.e, align 8, !noalias !88 ; 5 uses
  %i.am = load ptr, ptr %i.h, align 8, !noalias !88 ; 2 uses
  %i.an = load i64, ptr %i.i, align 8, !noalias !88 ; 3 uses
  %i.ao = call { ptr, i64 } @"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17hd00fb23ee5fc52f6E"(i64 %i.al, ptr align 1 %i.am, i64 %i.an), !noalias !88 ; 2 uses
  %i.ap = extractvalue { ptr, i64 } %i.ao, 0      ; 3 uses
  %.not.i = icmp eq ptr %i.ap, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = extractvalue { ptr, i64 } %i.ao, 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.aq
  store ptr %i.ap, ptr %i.a, align 8, !noalias !88
  store ptr %i.ar, ptr %i.j, align 8, !noalias !88
  %i.as = call { i32, i32 } @_ZN4core3str11validations15next_code_point17h3c046b37fe3387d2E(ptr nonnull align 8 %i.a), !noalias !88 ; 2 uses
  %i.at = extractvalue { i32, i32 } %i.as, 0
  %i.au = extractvalue { i32, i32 } %i.as, 1      ; 3 uses
  %i.av = trunc i32 %i.at to i1
  br i1 %i.av, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.f
  call void @_ZN4core3str16slice_error_fail17h9e3908d5d4865c14E(ptr align 1 %i.am, i64 %i.an, i64 %i.al, i64 %i.an, ptr nonnull align 8 @63) #19, !noalias !88
  unreachable

bb.i:                                             ; preds = %bb.g
  br i1 %i.ai, label %bb.l, label %bb.m

bb.j:                                             ; preds = %bb.g
  br i1 %i.ai, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %i.f, align 2, !noalias !88
  br label %.sink.split.i

bb.l:                                             ; preds = %bb.j, %bb.i
  store i64 %i.al, ptr %i.k, align 8, !alias.scope !88
  store i64 %i.al, ptr %i.l, align 8, !alias.scope !88
  br label %.sink.split.i

bb.m:                                             ; preds = %bb.i
  %i.aw = icmp ult i32 %i.au, 128
  br i1 %i.aw, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = icmp ult i32 %i.au, 2048
  br i1 %i.ax, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = icmp ult i32 %i.au, 65536
  %..i = select i1 %i.ay, i64 3, i64 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.sroa.01.0.i = phi i64 [ 2, %bb.n ], [ %..i, %bb.o ], [ 1, %bb.m ]
  %i.az = load i64, ptr %i.e, align 8, !noalias !88
  %i.ba = add i64 %i.az, %.sroa.01.0.i            ; 2 uses
  store i64 %i.ba, ptr %i.e, align 8, !noalias !88
  store i64 %i.al, ptr %i.k, align 8, !alias.scope !88
  store i64 %i.ba, ptr %i.l, align 8, !alias.scope !88
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.split._crit_edge.i, %bb.p, %bb.l, %bb.k, %bb.e, %bb.d
  %.sink.i = phi i64 [ 2, %bb.k ], [ 0, %bb.l ], [ 1, %bb.p ], [ 1, %.split._crit_edge.i ], [ 2, %bb.d ], [ 2, %bb.e ] ; 2 uses
  store i64 %.sink.i, ptr %i.b, align 8, !alias.scope !88
  br label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h1995b7695209eaedE.exit"

bb.q:                                             ; preds = %bb.d
  %i.bb = load i64, ptr %i.n, align 8, !noalias !88
  %i.bc = icmp eq i64 %i.bb, -1
  %i.bd = load ptr, ptr %i.h, align 8, !noalias !88
  %i.be = load ptr, ptr %i.o, align 8, !noalias !88
  %i.bf = load i64, ptr %i.p, align 8, !noalias !88
  call void @_ZN4core3str7pattern14TwoWaySearcher4next17h0290b7e23a209381E(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.e, ptr align 1 %i.bd, i64 %i.ad, ptr align 1 %i.be, i64 %i.bf, i1 zeroext %i.bc)
  %i.bg = load i64, ptr %i.b, align 8             ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 1
  br i1 %i.bh, label %bb.r, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h1995b7695209eaedE.exit"

bb.r:                                             ; preds = %bb.q
  %i.bi = load i64, ptr %i.k, align 8, !alias.scope !88
  %i.bj = load i64, ptr %i.l, align 8, !alias.scope !88 ; 2 uses
  %i.bk = load ptr, ptr %i.h, align 8, !noalias !88
  %i.bl = load i64, ptr %i.i, align 8, !noalias !88 ; 3 uses
  %i.bm = icmp eq i64 %i.bj, 0
  br i1 %i.bm, label %.split._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.r, %bb.t
  %.sroa.02.015.i = phi i64 [ %i.bt, %bb.t ], [ %i.bj, %bb.r ] ; 5 uses
  %.not14.i = icmp ult i64 %.sroa.02.015.i, %i.bl
  br i1 %.not14.i, label %bb.s, label %.split.i

.split._crit_edge.i:                              ; preds = %bb.t, %bb.s, %.split.i, %bb.r
  %.sroa.02.0.lcssa.i = phi i64 [ 0, %bb.r ], [ %.sroa.02.015.i, %bb.s ], [ 0, %bb.t ], [ %i.bl, %.split.i ] ; 2 uses
  %i.bn = load i64, ptr %i.m, align 8, !noalias !88
  %i.bo = call i64 @_ZN4core3cmp3Ord3max17h61a3816a1b196fffE(i64 %.sroa.02.0.lcssa.i, i64 %i.bn)
  store i64 %i.bo, ptr %i.m, align 8, !noalias !88
  store i64 %i.bi, ptr %i.k, align 8, !alias.scope !88
  store i64 %.sroa.02.0.lcssa.i, ptr %i.l, align 8, !alias.scope !88
  br label %.sink.split.i

.split.i:                                         ; preds = %.lr.ph.i
  %i.bp = icmp eq i64 %.sroa.02.015.i, %i.bl
  br i1 %i.bp, label %.split._crit_edge.i, label %bb.t

bb.s:                                             ; preds = %.lr.ph.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.sroa.02.015.i
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = icmp sgt i8 %i.br, -65
  br i1 %i.bs, label %.split._crit_edge.i, label %bb.t

bb.t:                                             ; preds = %bb.s, %.split.i
  %i.bt = add i64 %.sroa.02.015.i, 1              ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %.split._crit_edge.i, label %.lr.ph.i

"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h1995b7695209eaedE.exit": ; preds = %.sink.split.i, %bb.q
  %i.bv = phi i64 [ %.sink.i, %.sink.split.i ], [ %i.bg, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  switch i64 %i.bv, label %bb.u [
    i64 0, label %bb.v
    i64 1, label %thread-pre-split
    i64 2, label %bb.w
  ]

bb.u:                                             ; preds = %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h1995b7695209eaedE.exit"
  unreachable

bb.v:                                             ; preds = %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h1995b7695209eaedE.exit"
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bx = load <2 x i64>, ptr %i.k, align 8
  store <2 x i64> %i.bx, ptr %i.bw, align 8
  store i64 1, ptr %0, align 8
  br label %bb.x

bb.w:                                             ; preds = %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h1995b7695209eaedE.exit"
  store i64 0, ptr %0, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.z, %bb.y
  ret void

bb.y:                                             ; preds = %bb.b
  tail call void @_ZN4core3str7pattern14TwoWaySearcher4next17h1b73c4af8278528bE(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.e, ptr align 1 %i.u, i64 %i.w, ptr align 1 %i.y, i64 %i.aa, i1 zeroext false)
  br label %bb.x

bb.z:                                             ; preds = %bb.b
  tail call void @_ZN4core3str7pattern14TwoWaySearcher4next17h1b73c4af8278528bE(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.e, ptr align 1 %i.u, i64 %i.w, ptr align 1 %i.y, i64 %i.aa, i1 zeroext true)
  br label %bb.x
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$8haystack17h92e3cd84950f08e9E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #2 !guid !89 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load i64, ptr %i.c, align 8
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hf63f9f7054aba0dbE"(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr nofree align 8 captures(none) %1) unnamed_addr #1 !guid !90 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.d = load i64, ptr %i.b, align 8              ; 2 uses
  %i.e = load i64, ptr %i.c, align 8              ; 2 uses
  %i.f = icmp ult i64 %i.e, %i.d
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %i.i = phi i64 [ %i.e, %.lr.ph ], [ %i.af, %bb.g ] ; 2 uses
  %i.j = phi i64 [ %i.d, %.lr.ph ], [ %i.z, %bb.g ] ; 2 uses
  %i.k = load i64, ptr %i.a, align 8
  %.not = icmp ugt i64 %i.i, %i.k
  br i1 %.not, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %1, align 8
  %i.m = sub nuw i64 %i.i, %i.j
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  %i.o = load i8, ptr %i.h, align 8
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr i8, ptr %i.g, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 -1
  %i.s = load i8, ptr %i.r, align 1
  %i.t = tail call { i64, i64 } @_ZN4core5slice6memchr6memchr17h464b775cf77f40e1E(i8 %i.s, ptr align 1 %i.n, i64 %i.m) ; 2 uses
  %i.u = extractvalue { i64, i64 } %i.t, 0
  %i.v = trunc nuw i64 %i.u to i1
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = extractvalue { i64, i64 } %i.t, 1
  %i.x = add i64 %i.w, 1
  %i.y = load i64, ptr %i.b, align 8
  %i.z = add i64 %i.x, %i.y                       ; 7 uses
  store i64 %i.z, ptr %i.b, align 8
  %i.aa = load i8, ptr %i.h, align 8              ; 2 uses
  %i.ab = zext i8 %i.aa to i64                    ; 4 uses
  %.not13 = icmp ult i64 %i.z, %i.ab
  br i1 %.not13, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ac = load i64, ptr %i.c, align 8
  store i64 %i.ac, ptr %i.b, align 8
  br label %._crit_edge

bb.f:                                             ; preds = %bb.d
  %i.ad = sub nuw i64 %i.z, %i.ab                 ; 2 uses
  %i.ae = load i64, ptr %i.a, align 8
  %.not14 = icmp ugt i64 %i.z, %i.ae
  br i1 %.not14, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.j, %bb.f, %bb.d
  %i.af = load i64, ptr %i.c, align 8             ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.z
  br i1 %i.ag, label %._crit_edge, label %bb.b

bb.h:                                             ; preds = %bb.f
  %i.ah = icmp ult i8 %i.aa, 5
  br i1 %i.ah, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 0, i64 %i.ab, i64 4, ptr nonnull align 8 @64) #19
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ai = load ptr, ptr %1, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ad
  %bcmp = tail call i32 @bcmp(ptr %i.aj, ptr nonnull %i.g, i64 %i.ab)
  %i.ak = icmp eq i32 %bcmp, 0
  br i1 %i.ak, label %bb.k, label %bb.g

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ad, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.z, ptr %i.am, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.g, %bb.a, %bb.k, %bb.e
  %.sink = phi i64 [ 1, %bb.k ], [ 0, %bb.e ], [ 0, %bb.a ], [ 0, %bb.g ], [ 0, %bb.b ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden align 8 ptr @"_ZN81_$LT$prost_types..protobuf..SourceCodeInfo$u20$as$u20$prost..message..Message$GT$11merge_field17hb74841fd4a0ef148E"(ptr align 8 %0, i32 %1, i8 %2, ptr align 8 %3, i32 %4) unnamed_addr #0 !guid !91 {
bb.a:
  %i.a = icmp eq i32 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call align 8 ptr @_ZN5prost8encoding7message14merge_repeated17he29f506b7fd7355eE(i8 %2, ptr align 8 %0, ptr align 8 %3, i32 %4)
  %i.c = tail call align 8 ptr @"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h41f0218788a2152fE"(ptr align 8 %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call align 8 ptr @_ZN5prost8encoding10skip_field17he13603f2458b73e5E(i8 %2, i32 %1, ptr align 8 %3, i32 %4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden align 8 ptr @"_ZN81_$LT$prost_types..protobuf..SourceCodeInfo$u20$as$u20$prost..message..Message$GT$11merge_field28_$u7b$$u7b$closure$u7d$$u7d$17hc0e55907320f6bd4E"(ptr align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality !guid !92 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  store ptr %0, ptr %i.a, align 8
  invoke void @_ZN5prost5error11DecodeError4push17ha8e343a8abbf72e9E(ptr nonnull align 8 %i.a, ptr nonnull align 1 @65, i64 14, ptr nonnull align 1 @66, i64 8)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr46drop_in_place$LT$prost..error..DecodeError$GT$17hd859ae4f59e8a7beE"(ptr nonnull align 8 %i.a) #16
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8
  ret ptr %i.c

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #17
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN90_$LT$prost..encoding..wire_type..WireType$u20$as$u20$core..convert..TryFrom$LT$u64$GT$$GT$8try_from17h06370dc372a900d2E"(ptr nofree writeonly sret([16 x i8]) align 8 captures(none) initializes((0, 1)) %0, i64 %1) unnamed_addr #1 !guid !93 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 2 uses
  %i.c = alloca [48 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [24 x i8], align 8                ; 2 uses
  %i.f = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %1, ptr %i.f, align 8
  switch i64 %1, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
  ]

end_hunk_0
