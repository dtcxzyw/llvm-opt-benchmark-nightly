Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/fuzz_indexing-6b65dc084f7ace2a.fuzz_indexing.ea400c9b89110869-cgu.0?download=true
inline.NumInlined: 15603
inline.NumDeleted: 7430
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 156
begin_hunk_0_@"_ZN7bincode3ser23Serializer$LT$W$C$O$GT$21serialize_literal_u6417hdc322d449c8939c5E":bb.a
  br label %bb.h

bb.h:                                             ; preds = %.thread.i.i.i, %bb.f
  %.sroa.0.116.i.i.i = phi ptr [ %.sroa.0.042.i.i.i, %.thread.i.i.i ], [ %i.m, %bb.f ]
  %.sroa.5.114.i.i.i = phi i64 [ %.sroa.5.041.i.i.i, %.thread.i.i.i ], [ %i.l, %bb.f ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !45998
  %i.w = icmp eq i64 %.sroa.5.114.i.i.i, 0
  br i1 %i.w, label %_ZN7bincode9byteorder13WriteBytesExt9write_u6417h2ddb716e287b11aeE.exit.thread, label %bb.b

_ZN7bincode9byteorder13WriteBytesExt9write_u6417h2ddb716e287b11aeE.exit.thread: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

_ZN7bincode9byteorder13WriteBytesExt9write_u6417h2ddb716e287b11aeE.exit.thread3: ; preds = %bb.d, %.split36.i.i.i, %.split35.i.i.i
  %.sroa.05.1.i.i.i.ph = phi ptr [ %i.f, %.split35.i.i.i ], [ %i.f, %.split36.i.i.i ], [ @345, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !45998
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i

_ZN7bincode9byteorder13WriteBytesExt9write_u6417h2ddb716e287b11aeE.exit: ; preds = %.split.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !45998
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN7bincode9byteorder13WriteBytesExt9write_u6417h2ddb716e287b11aeE.exit.thread3, %_ZN7bincode9byteorder13WriteBytesExt9write_u6417h2ddb716e287b11aeE.exit
  %.sroa.05.1.i.i.i6 = phi ptr [ %.sroa.05.1.i.i.i.ph, %_ZN7bincode9byteorder13WriteBytesExt9write_u6417h2ddb716e287b11aeE.exit.thread3 ], [ %i.f, %_ZN7bincode9byteorder13WriteBytesExt9write_u6417h2ddb716e287b11aeE.exit ]
  %i.x = call noundef nonnull align 8 ptr @"_ZN7bincode5error129_$LT$impl$u20$core..convert..From$LT$std..io..error..Error$GT$$u20$for$u20$alloc..boxed..Box$LT$bincode..error..ErrorKind$GT$$GT$4from17hc729f952263b302dE"(ptr noundef nonnull %.sroa.05.1.i.i.i6)
  br label %bb.j

bb.j:                                             ; preds = %_ZN7bincode9byteorder13WriteBytesExt9write_u6417h2ddb716e287b11aeE.exit.thread, %_ZN7bincode9byteorder13WriteBytesExt9write_u6417h2ddb716e287b11aeE.exit, %bb.i
  %.sroa.0.0 = phi ptr [ %i.x, %bb.i ], [ null, %_ZN7bincode9byteorder13WriteBytesExt9write_u6417h2ddb716e287b11aeE.exit ], [ null, %_ZN7bincode9byteorder13WriteBytesExt9write_u6417h2ddb716e287b11aeE.exit.thread ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_ZN7bincode8internal14serialize_into17h048015bf29dbd871E(ptr noalias noundef nonnull align 4 dereferenceable(4) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) unnamed_addr #3 personality ptr @rust_eh_personality !guid !46002 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46003)
  %i.b = call fastcc noundef align 8 ptr @"_ZN5rstar4node1_89_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$rstar..node..ParentNode$LT$T$GT$$GT$9serialize17hd937c84bebb1cc9aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a) ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %"_ZN5rstar5rtree1_94_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$rstar..rtree..RTree$LT$T$C$Params$GT$$GT$9serialize17h38dc46d1a12f51dcE.exit"

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val20.i = load i64, ptr %i.c, align 8, !alias.scope !46003, !noundef !18
  %i.d = tail call fastcc noundef align 8 ptr @"_ZN7bincode3ser23Serializer$LT$W$C$O$GT$21serialize_literal_u6417hdc322d449c8939c5E"(ptr nonnull %0, i64 noundef %.val20.i), !noalias !46004
  br label %"_ZN5rstar5rtree1_94_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$rstar..rtree..RTree$LT$T$C$Params$GT$$GT$9serialize17h38dc46d1a12f51dcE.exit"

"_ZN5rstar5rtree1_94_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$rstar..rtree..RTree$LT$T$C$Params$GT$$GT$9serialize17h38dc46d1a12f51dcE.exit": ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.d, %bb.b ], [ %i.b, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN7bumpalo11collections7raw_vec15RawVec$LT$T$GT$11allocate_in17h6e54f395061cb071E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 8 %2) unnamed_addr #3 personality ptr @rust_eh_personality !guid !46005 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 24) ; 2 uses
  %i.c = extractvalue { i64, i1 } %i.b, 0         ; 6 uses
  %i.d = extractvalue { i64, i1 } %i.b, 1
  br i1 %i.d, label %bb.c, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN7bumpalo11collections7raw_vec17capacity_overflow17h2914ddf5de003a02E() #64
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.c, i64 noundef 8)
  br i1 %i.f, label %.split, label %.split15

bb.e:                                             ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h8aaefd67d0855e38E.exit", %bb.f, %bb.b
  %.sroa.01.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.b ], [ %i.x, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h8aaefd67d0855e38E.exit" ], [ %i.y, %bb.f ]
  store ptr %.sroa.01.0, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.h, align 8
  ret void

.split15:                                         ; preds = %bb.d
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @455, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @470, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1829) #64
  unreachable

.split:                                           ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !18, !noundef !18 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !18, !noundef !18 ; 2 uses
  %i.m = load ptr, ptr %i.j, align 16, !nonnull !18, !noundef !18 ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = and i64 %i.n, 7
  %i.p = sub nsw i64 0, %i.o
  %i.q = getelementptr i8, ptr %i.l, i64 %i.p     ; 3 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.m to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = icmp ult ptr %i.q, %i.m
  %i.v = icmp ugt i64 %i.c, %i.t
  %or.cond.i = or i1 %i.u, %i.v
  br i1 %or.cond.i, label %bb.f, label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h8aaefd67d0855e38E.exit"

"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h8aaefd67d0855e38E.exit": ; preds = %.split
  %i.w = sub i64 0, %i.c
  %i.x = getelementptr i8, ptr %i.q, i64 %i.w     ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.x) ]
  store ptr %i.x, ptr %i.k, align 16
  br label %bb.e

bb.f:                                             ; preds = %.split
  %i.y = tail call noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hc36405045e189820E"(ptr noundef nonnull align 8 %2, i64 noundef 8, i64 noundef %i.c) ; 2 uses
  %.not16 = icmp eq ptr %i.y, null
  br i1 %.not16, label %bb.g, label %bb.e

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN7bumpalo5alloc18handle_alloc_error17h077d55f6423c56d4E(i64 noundef 8, i64 noundef %i.c) #64
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @"_ZN7bumpalo11collections7raw_vec15RawVec$LT$T$GT$25reserve_internal_or_panic17h6f91d12d336b64e5E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #19 personality ptr @rust_eh_personality !guid !46008 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46009)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.val.i = load i64, ptr %i.a, align 8, !alias.scope !46009 ; 3 uses
  %i.b = icmp eq i64 %1, -1
  br i1 %i.b, label %bb.r, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.c = add nuw i64 %1, 1
  %i.d = shl i64 %.val.i, 1
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.c, i64 %i.d) ; 3 uses
  %i.e = icmp ugt i64 %.sroa.0.0.i.i.i, 41175768021673106
  %i.f = mul nuw nsw i64 %.sroa.0.0.i.i.i, 224    ; 14 uses
  br i1 %i.e, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %.val.i, 0
  %i.g = mul i64 %.val.i, 224                     ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not.i, label %bb.p, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %0, align 8, !alias.scope !46009, !nonnull !18, !noundef !18 ; 6 uses
  %.val46.i = load ptr, ptr %i.h, align 8, !alias.scope !46009 ; 7 uses
  %i.j = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.f, i64 noundef range(i64 1, 9) 8), !noalias !46009
  br i1 %i.j, label %bb.e, label %"_ZN68_$LT$$RF$bumpalo..Bump$LT$_$GT$$u20$as$u20$bumpalo..alloc..Alloc$GT$7realloc17h4236831281c69308E.exit.thread55.i"

bb.e:                                             ; preds = %bb.d
  %i.k = icmp eq i64 %i.g, 0
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val46.i) ]
  %i.l = getelementptr inbounds nuw i8, ptr %.val46.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !46009, !nonnull !18, !noundef !18 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !46009, !nonnull !18, !noundef !18 ; 2 uses
  %i.p = load ptr, ptr %i.m, align 16, !noalias !46009, !nonnull !18, !noundef !18 ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = and i64 %i.q, 7
  %i.s = sub nsw i64 0, %i.r
  %i.t = getelementptr i8, ptr %i.o, i64 %i.s     ; 3 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.p to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp ult ptr %i.t, %i.p
  %i.y = icmp ugt i64 %i.f, %i.w
  %or.cond.i.i.i = or i1 %i.x, %i.y
  br i1 %or.cond.i.i.i, label %"_ZN68_$LT$$RF$bumpalo..Bump$LT$_$GT$$u20$as$u20$bumpalo..alloc..Alloc$GT$7realloc17h4236831281c69308E.exit.i", label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h8aaefd67d0855e38E.exit.i.i"

"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h8aaefd67d0855e38E.exit.i.i": ; preds = %bb.f
  %i.z = sub nsw i64 0, %i.f
  %i.aa = getelementptr i8, ptr %i.t, i64 %i.z    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aa) ]
  store ptr %i.aa, ptr %i.n, align 16, !noalias !46009
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp ugt i64 %i.f, %i.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val46.i) ]
  br i1 %.not.i.i, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.val46.i, i64 16 ; 2 uses
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !46009 ; 2 uses
  %.phi.trans.insert32.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 32 ; 2 uses
  %.pre33.i.i.i = load ptr, ptr %.phi.trans.insert32.i.i.i, align 8, !noalias !46009 ; 3 uses
  %i.ab = icmp eq ptr %.pre33.i.i.i, %i.i
  br i1 %i.ab, label %bb.i, label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h8aaefd67d0855e38E.exit.thread.i.i.i"

"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h8aaefd67d0855e38E.exit.thread.i.i.i": ; preds = %bb.h
  %.pre.i.i = load ptr, ptr %.pre.i.i.i, align 16, !noalias !46009 ; 2 uses
  %.pre.i = ptrtoint ptr %.pre33.i.i.i to i64
  %.pre58.i = and i64 %.pre.i, 7
  %.pre60.i = sub nsw i64 0, %.pre58.i
  %.pre62.i = ptrtoint ptr %.pre.i.i to i64
  br label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h8aaefd67d0855e38E.exit.thread.i.thread23.i.i"

"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h8aaefd67d0855e38E.exit.thread.i.thread23.i.i": ; preds = %bb.j, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h8aaefd67d0855e38E.exit.thread.i.i.i"
  %.pre-phi63.i = phi i64 [ %.pre62.i, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h8aaefd67d0855e38E.exit.thread.i.i.i" ], [ %i.aw, %bb.j ]
  %.pre-phi61.i = phi i64 [ %.pre60.i, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h8aaefd67d0855e38E.exit.thread.i.i.i" ], [ %i.at, %bb.j ]
  %i.ac = phi ptr [ %.phi.trans.insert32.i.i.i, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h8aaefd67d0855e38E.exit.thread.i.i.i" ], [ %i.ao, %bb.j ]
  %i.ad = phi ptr [ %.pre33.i.i.i, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h8aaefd67d0855e38E.exit.thread.i.i.i" ], [ %i.ap, %bb.j ]
  %2 = phi ptr [ %.pre.i.i, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h8aaefd67d0855e38E.exit.thread.i.i.i" ], [ %i.aq, %bb.j ]
  %i.ae = getelementptr i8, ptr %i.ad, i64 %.pre-phi61.i ; 3 uses
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.af, %.pre-phi63.i
  %i.ah = icmp ult ptr %i.ae, %2
  %i.ai = icmp ugt i64 %i.f, %i.ag
  %or.cond.i22.i.i.i = or i1 %i.ah, %i.ai
  br i1 %or.cond.i22.i.i.i, label %bb.l, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h8aaefd67d0855e38E.exit.thread.i.thread23.i.i"
  %i.aj = sub nsw i64 0, %i.f
  %i.ak = getelementptr i8, ptr %i.ae, i64 %i.aj  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  store ptr %i.ak, ptr %i.ac, align 8, !noalias !46009
  br label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.al = sub nuw nsw i64 %i.f, %i.g              ; 3 uses
  %i.am = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.al, i64 noundef range(i64 1, 9) 8), !noalias !46009
  br i1 %i.am, label %bb.j, label %"_ZN68_$LT$$RF$bumpalo..Bump$LT$_$GT$$u20$as$u20$bumpalo..alloc..Alloc$GT$7realloc17h4236831281c69308E.exit.thread55.i"

bb.j:                                             ; preds = %bb.i
  %i.an = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !46009, !nonnull !18, !noundef !18 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !46009, !nonnull !18, !noundef !18 ; 3 uses
  %i.aq = load ptr, ptr %i.an, align 16, !noalias !46009, !nonnull !18, !noundef !18 ; 3 uses
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = and i64 %i.ar, 7
  %i.at = sub nsw i64 0, %i.as                    ; 2 uses
  %i.au = getelementptr i8, ptr %i.ap, i64 %i.at  ; 3 uses
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.aq to i64               ; 2 uses
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = icmp ult ptr %i.au, %i.aq
  %i.az = icmp ugt i64 %i.al, %i.ax
  %or.cond.i.i.i.i = or i1 %i.ay, %i.az
  br i1 %or.cond.i.i.i.i, label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h8aaefd67d0855e38E.exit.thread.i.thread23.i.i", label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = sub nsw i64 0, %i.al
  %i.bb = getelementptr i8, ptr %i.au, i64 %i.ba  ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bb) ]
  store ptr %i.bb, ptr %i.ao, align 16, !noalias !46009
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bb, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.i, i64 range(i64 1, 0) %i.g, i1 false), !noalias !46009
  br label %bb.q

bb.l:                                             ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h8aaefd67d0855e38E.exit.thread.i.thread23.i.i"
  %i.bc = tail call noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hc36405045e189820E"(ptr noundef nonnull align 8 %.val46.i, i64 noundef range(i64 1, 9) 8, i64 noundef range(i64 2, 0) %i.f), !noalias !46009 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %"_ZN68_$LT$$RF$bumpalo..Bump$LT$_$GT$$u20$as$u20$bumpalo..alloc..Alloc$GT$7realloc17h4236831281c69308E.exit.thread55.i", label %bb.m

bb.m:                                             ; preds = %bb.l, %.thread.i.i.i
  %.sroa.012.031.i.i.i = phi ptr [ %i.ak, %.thread.i.i.i ], [ %i.bc, %bb.l ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.012.031.i.i.i, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.i, i64 range(i64 1, 0) %i.g, i1 false), !noalias !46009
  br label %bb.q

bb.n:                                             ; preds = %bb.g
  %i.be = sub nuw i64 %i.g, %i.f                  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.val46.i, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !46009, !nonnull !18, !noundef !18
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !46009, !nonnull !18, !noundef !18 ; 2 uses
  %i.bj = icmp ne ptr %i.bi, %i.i
  %i.bk = lshr exact i64 %i.g, 1
  %.not.i.i.i = icmp ult i64 %i.be, %i.bk
  %or.cond.i = select i1 %i.bj, i1 true, i1 %.not.i.i.i
  br i1 %or.cond.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.be ; 3 uses
  store ptr %i.bl, ptr %i.bh, align 8, !noalias !46009
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bl, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.i, i64 %i.f, i1 false), !noalias !46009
  br label %bb.q

bb.p:                                             ; preds = %bb.c
  %i.bm = load ptr, ptr %i.h, align 8, !alias.scope !46009, !nonnull !18, !align !23, !noundef !18 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !noalias !46009, !nonnull !18, !noundef !18 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !noalias !46009, !nonnull !18, !noundef !18 ; 2 uses
  %i.br = load ptr, ptr %i.bo, align 16, !noalias !46009, !nonnull !18, !noundef !18 ; 2 uses
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = and i64 %i.bs, 7
  %i.bu = sub nsw i64 0, %i.bt
  %i.bv = getelementptr i8, ptr %i.bq, i64 %i.bu  ; 3 uses
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.br to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = icmp ult ptr %i.bv, %i.br
  %i.ca = icmp ugt i64 %i.f, %i.by
  %or.cond.i.i = or i1 %i.bz, %i.ca
  br i1 %or.cond.i.i, label %"_ZN68_$LT$$RF$bumpalo..Bump$LT$_$GT$$u20$as$u20$bumpalo..alloc..Alloc$GT$7realloc17h4236831281c69308E.exit.i", label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h8aaefd67d0855e38E.exit.i"

"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h8aaefd67d0855e38E.exit.i": ; preds = %bb.p
  %i.cb = sub nsw i64 0, %i.f
  %i.cc = getelementptr i8, ptr %i.bv, i64 %i.cb  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cc) ]
  store ptr %i.cc, ptr %i.bp, align 16, !noalias !46009
  br label %bb.q

"_ZN68_$LT$$RF$bumpalo..Bump$LT$_$GT$$u20$as$u20$bumpalo..alloc..Alloc$GT$7realloc17h4236831281c69308E.exit.i": ; preds = %bb.p, %bb.f
  %.val46.sink.i = phi ptr [ %.val46.i, %bb.f ], [ %i.bm, %bb.p ]
  %i.cd = tail call noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hc36405045e189820E"(ptr noundef nonnull align 8 %.val46.sink.i, i64 noundef 8, i64 noundef %i.f), !noalias !46009 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %"_ZN68_$LT$$RF$bumpalo..Bump$LT$_$GT$$u20$as$u20$bumpalo..alloc..Alloc$GT$7realloc17h4236831281c69308E.exit.thread55.i", label %bb.q

"_ZN68_$LT$$RF$bumpalo..Bump$LT$_$GT$$u20$as$u20$bumpalo..alloc..Alloc$GT$7realloc17h4236831281c69308E.exit.thread55.i": ; preds = %"_ZN68_$LT$$RF$bumpalo..Bump$LT$_$GT$$u20$as$u20$bumpalo..alloc..Alloc$GT$7realloc17h4236831281c69308E.exit.i", %bb.l, %bb.i, %bb.d
  tail call void @_ZN7bumpalo5alloc18handle_alloc_error17h077d55f6423c56d4E(i64 noundef 8, i64 noundef %i.f) #64, !noalias !46009
  unreachable

bb.q:                                             ; preds = %"_ZN68_$LT$$RF$bumpalo..Bump$LT$_$GT$$u20$as$u20$bumpalo..alloc..Alloc$GT$7realloc17h4236831281c69308E.exit.i", %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h8aaefd67d0855e38E.exit.i", %bb.o, %bb.n, %bb.m, %bb.k, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h8aaefd67d0855e38E.exit.i.i"
  %.sroa.029.253.i = phi ptr [ %i.cd, %"_ZN68_$LT$$RF$bumpalo..Bump$LT$_$GT$$u20$as$u20$bumpalo..alloc..Alloc$GT$7realloc17h4236831281c69308E.exit.i" ], [ %i.cc, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h8aaefd67d0855e38E.exit.i" ], [ %i.bl, %bb.o ], [ %i.i, %bb.n ], [ %i.bb, %bb.k ], [ %.sroa.012.031.i.i.i, %bb.m ], [ %i.aa, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h8aaefd67d0855e38E.exit.i.i" ]
  store ptr %.sroa.029.253.i, ptr %0, align 8, !alias.scope !46009
  store i64 %.sroa.0.0.i.i.i, ptr %i.a, align 8, !alias.scope !46009
  ret void

bb.r:                                             ; preds = %bb.a, %bb.b
  tail call void @_ZN7bumpalo11collections7raw_vec17capacity_overflow17h2914ddf5de003a02E() #64
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN7geojson10conversion12to_geo_types124_$LT$impl$u20$core..convert..TryFrom$LT$geojson..geojson..GeoJson$GT$$u20$for$u20$geo_types..geometry..Geometry$LT$T$GT$$GT$8try_from17hc0c2e1f7b0cc7df2E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(320) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(320) %1) unnamed_addr #3 personality ptr @rust_eh_personality !guid !46171 {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 4 uses
  %i.b = alloca [320 x i8], align 8               ; 11 uses
  %.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i = alloca [48 x i8], align 8 ; 6 uses
  %i.c = alloca [128 x i8], align 8               ; 4 uses
  %i.d = alloca [320 x i8], align 8               ; 11 uses
  %.sroa.6.i.i.i.i.i11.i.i.i.i.i.i.i.i.i.i = alloca [48 x i8], align 8 ; 6 uses
  %i.e = alloca [128 x i8], align 8               ; 4 uses
  %i.f = alloca [320 x i8], align 8               ; 11 uses
  %.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = alloca [48 x i8], align 8 ; 6 uses
  %i.g = alloca [56 x i8], align 8                ; 7 uses
  %i.h = alloca [56 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 11 uses
  %.sroa.15.i.i = alloca [288 x i8], align 8      ; 10 uses
  %i.j = alloca [320 x i8], align 8               ; 8 uses
  %i.k = load i64, ptr %1, align 8, !range !91, !noundef !18 ; 4 uses
  %i.l = icmp ne i64 %i.k, 9
  tail call void @llvm.assume(i1 %i.l)
  %i.m = add nsw i64 %i.k, -8
  %i.n = icmp samesign ugt i64 %i.k, 7
  %i.o = select i1 %i.n, i64 %i.m, i64 1
  switch i64 %i.o, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.s
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call fastcc void @"_ZN7geojson10conversion12to_geo_types126_$LT$impl$u20$core..convert..TryFrom$LT$geojson..geometry..Geometry$GT$$u20$for$u20$geo_types..geometry..Geometry$LT$T$GT$$GT$8try_from17h392328ebbc62e1feE"(ptr noalias noundef align 8 captures(address) dereferenceable(320) %0, ptr noalias noundef align 8 captures(address) dereferenceable(128) %i.p)
  br label %"_ZN7geojson10conversion12to_geo_types115_$LT$impl$u20$core..convert..TryFrom$LT$geojson..Feature$GT$$u20$for$u20$geo_types..geometry..Geometry$LT$T$GT$$GT$8try_from17h4c3aefede41f3201E.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46173)
  %.not.i = icmp eq i64 %i.k, 7
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @"_ZN7geojson10conversion12to_geo_types126_$LT$impl$u20$core..convert..TryFrom$LT$geojson..geometry..Geometry$GT$$u20$for$u20$geo_types..geometry..Geometry$LT$T$GT$$GT$8try_from17h392328ebbc62e1feE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(320) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(320) %1)
          to label %bb.m unwind label %bb.k

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull readonly align 8 dereferenceable(320) %1, i64 320, i1 false), !alias.scope !46174
  br label %"_ZN7geojson10conversion12to_geo_types115_$LT$impl$u20$core..convert..TryFrom$LT$geojson..Feature$GT$$u20$for$u20$geo_types..geometry..Geometry$LT$T$GT$$GT$8try_from17h4c3aefede41f3201E.exit"

bb.g:                                             ; preds = %bb.n, %bb.m
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 296
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46175)
  %i.r = load i64, ptr %i.q, align 8, !range !61, !alias.scope !46176, !noundef !18 ; 2 uses
  %switch.i.i = icmp sgt i64 %i.r, 0
  br i1 %switch.i.i, label %bb.h, label %"_ZN4core3ptr69drop_in_place$LT$core..option..Option$LT$geojson..feature..Id$GT$$GT$17had7b727f0ca2cb90E.exit.i"

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 304
  %.val1.i.i = load ptr, ptr %i.s, align 8, !alias.scope !46176, !nonnull !18, !noundef !18
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !46177
  br label %"_ZN4core3ptr69drop_in_place$LT$core..option..Option$LT$geojson..feature..Id$GT$$GT$17had7b727f0ca2cb90E.exit.i"

.noexc.i:                                         ; preds = %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17hb92c8151464fc21cE.exit.i23.i", %"_ZN4core3ptr69drop_in_place$LT$core..option..Option$LT$geojson..feature..Id$GT$$GT$17had7b727f0ca2cb90E.exit.i"
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46178)
  %i.u = load i64, ptr %i.t, align 8, !range !54, !alias.scope !46179, !noundef !18
  %i.v = icmp eq i64 %i.u, -9223372036854775808
  br i1 %i.v, label %"_ZN7geojson10conversion12to_geo_types115_$LT$impl$u20$core..convert..TryFrom$LT$geojson..Feature$GT$$u20$for$u20$geo_types..geometry..Geometry$LT$T$GT$$GT$8try_from17h4c3aefede41f3201E.exit", label %bb.i

bb.i:                                             ; preds = %.noexc.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46180)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46182)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 256
  %.val1.i.i.i.i.i = load i64, ptr %i.w, align 8, !alias.scope !46183, !noundef !18 ; 4 uses
  %i.x = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.x, label %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17hb92c8151464fc21cE.exit.i.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 248
  %.val.i.i.i.i.i = load ptr, ptr %i.y, align 8, !alias.scope !46183, !nonnull !18, !noundef !18
  %or.cond.i.i.i.i.i.i.i.i.i = icmp slt i64 %.val1.i.i.i.i.i, 2305843009213693950
  tail call void @llvm.assume(i1 %or.cond.i.i.i.i.i.i.i.i.i), !noalias !46182
  %i.z = shl i64 %.val1.i.i.i.i.i, 3
  %i.aa = and i64 %i.z, -16                       ; 2 uses
  %i.ab = add i64 %i.aa, 16                       ; 2 uses
  %i.ac = add nsw i64 %.val1.i.i.i.i.i, 17
  %i.ad = add i64 %i.ac, %i.ab                    ; 3 uses
  %i.ae = icmp uge i64 %i.ad, %i.ab
  tail call void @llvm.assume(i1 %i.ae), !noalias !46182
  %i.af = icmp ult i64 %i.ad, 9223372036854775793
  tail call void @llvm.assume(i1 %i.af), !noalias !46182
  %i.ag = sub nuw nsw i64 -16, %i.aa
  %i.ah = getelementptr inbounds i8, ptr %.val.i.i.i.i.i, i64 %i.ag
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ah, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 16) #63, !noalias !46184, !inline_history !5
  br label %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17hb92c8151464fc21cE.exit.i.i"

"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17hb92c8151464fc21cE.exit.i.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i.i.i, %bb.i
  tail call fastcc void @"_ZN4core3ptr116drop_in_place$LT$alloc..vec..Vec$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$$GT$17h9a4c6a5dbdc6b06bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.t), !noalias !46172, !inline_history !6
  br label %"_ZN7geojson10conversion12to_geo_types115_$LT$impl$u20$core..convert..TryFrom$LT$geojson..Feature$GT$$u20$for$u20$geo_types..geometry..Geometry$LT$T$GT$$GT$8try_from17h4c3aefede41f3201E.exit"

bb.j:                                             ; preds = %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17hb92c8151464fc21cE.exit.i23.i"
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 224
  invoke void @"_ZN4core3ptr125drop_in_place$LT$core..option..Option$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$$GT$17hf1e7aefb3054a1e5E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.aj) #65
          to label %common.resume unwind label %bb.p, !noalias !46172

bb.k:                                             ; preds = %bb.e
end_hunk_0
