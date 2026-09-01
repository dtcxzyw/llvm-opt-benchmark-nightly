Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/index_scheduler-0c73470abd85ee5a.index_scheduler.34b94f085cb09947-cgu.0?download=true
inline.NumInlined: 57300
inline.NumDeleted: 23973
loop-unroll.NumCompletelyUnrolled: 214
loop-unroll.NumRuntimeUnrolled: 566
loop-unroll.NumUnrolled: 784
loop-unroll.NumUnrolledNotLatch: 6
begin_hunk_0_@"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_append217h5bf0e0136515f629E":bb.a
  store i16 %.sroa.016.0.i.i.ph, ptr %i.bv, align 2, !noalias !138953
  br label %.backedge.i.i

bb.l:                                             ; preds = %.loopexit200
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 2 ; 2 uses
  %i.bz = load i16, ptr %i.by, align 2, !noalias !138953, !noundef !14
  store i16 %.sroa.016.0.i.i.ph, ptr %i.bv, align 2, !noalias !138953
  store i16 %.sroa.618.0.i.i.ph, ptr %i.by, align 2, !noalias !138953
  %i.ca = add nuw i64 %.sroa.013.0.i.i.ph.mux, 1
  br label %.outer189

bb.m:                                             ; preds = %bb.c
  %i.cb = icmp eq i64 %i.i, 0
  br i1 %i.cb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i16 7, ptr %i.cc, align 8, !alias.scope !138948
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !138957
  %i.cd = tail call noundef align 2 dereferenceable_or_null(32) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, 9) 2) #79, !noalias !138957 ; 4 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %.invoke, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.n
  store <8 x i16> <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>, ptr %i.cd, align 2, !noalias !138965
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store <8 x i16> <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>, ptr %i.cf, align 2, !noalias !138965
  %i.cg = icmp eq i64 %i.n, 0
  br i1 %i.cg, label %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h14adfb98af2d9514E.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i"

.invoke:                                          ; preds = %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h14adfb98af2d9514E.exit.i", %bb.n
  %i.ch = phi i64 [ 2, %bb.n ], [ 8, %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h14adfb98af2d9514E.exit.i" ]
  %i.ci = phi i64 [ 32, %bb.n ], [ 624, %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h14adfb98af2d9514E.exit.i" ]
  %i.cj = phi ptr [ @2232, %bb.n ], [ @2233, %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h14adfb98af2d9514E.exit.i" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.ch, i64 %i.ci, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cj) #80
          to label %.cont unwind label %.body.thread64

.cont:                                            ; preds = %.invoke
  unreachable

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i": ; preds = %.lr.ph.i.i.preheader.i
  %.val.i = load ptr, ptr %i.p, align 8, !alias.scope !138948, !nonnull !14, !noundef !14
  %i.ck = shl nuw nsw i64 %i.n, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.ck, i64 noundef 2) #79, !noalias !138948
  br label %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h14adfb98af2d9514E.exit.i"

bb.o:                                             ; preds = %bb.m
  %i.cl = shl i64 %i.n, 1
  %i.cm = invoke fastcc noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$8try_grow17h64198329b62dee23E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %i.cl)
          to label %.noexc39 unwind label %.body.thread64

.noexc39:                                         ; preds = %bb.o
  br i1 %i.cm, label %bb.q, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$15try_reserve_one17h774902b020a9a238E.exit"

"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h14adfb98af2d9514E.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i", %.lr.ph.i.i.preheader.i
  store ptr %i.cd, ptr %i.p, align 8, !alias.scope !138948
  store i64 8, ptr %i.m, align 8, !alias.scope !138948
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !138968
  %i.cn = tail call noundef align 8 dereferenceable_or_null(624) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 624, i64 noundef range(i64 1, 9) 8) #79, !noalias !138968 ; 3 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %.invoke, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h1b8af89e63a58f7cE.exit.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h1b8af89e63a58f7cE.exit.i": ; preds = %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h14adfb98af2d9514E.exit.i"
  invoke fastcc void @"_ZN4core3ptr109drop_in_place$LT$alloc..vec..Vec$LT$http..header..map..Bucket$LT$http..header..value..HeaderValue$GT$$GT$$GT$17hc101d944cd5636b7E"(ptr noalias noundef align 8 dereferenceable(24) %i.g)
          to label %bb.p unwind label %.body.thread

.body.thread:                                     ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h1b8af89e63a58f7cE.exit.i"
  %i.cp = landingpad { ptr, i32 }
          cleanup
  store i64 6, ptr %i.g, align 8, !alias.scope !138948
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.cn, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !138948
  br label %bb.ba

bb.p:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h1b8af89e63a58f7cE.exit.i"
  store i64 6, ptr %i.g, align 8, !alias.scope !138948
  %.sroa.5.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.cn, ptr %.sroa.5.0..sroa_idx4.i, align 8, !alias.scope !138948
  br label %"_ZN4http6header3map18HeaderMap$LT$T$GT$15try_reserve_one17h774902b020a9a238E.exit"

.body.thread64:                                   ; preds = %.invoke, %bb.e, %bb.ad, %bb.o, %bb.d
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

"_ZN4http6header3map18HeaderMap$LT$T$GT$15try_reserve_one17h774902b020a9a238E.exit": ; preds = %.backedge.i.i, %bb.p, %.noexc39, %._crit_edge.i, %.noexc37, %bb.c
  %i.cq = tail call fastcc noundef i16 @_ZN4http6header3map15hash_elem_using17h2bfd9d2f0a047624E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cs = load i16, ptr %i.cr, align 8, !noundef !14 ; 3 uses
  %i.ct = and i16 %i.cs, %i.cq
  %i.cu = zext nneg i16 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.cw = load i64, ptr %i.m, align 8, !noundef !14 ; 2 uses
  %i.cx = zext i16 %i.cs to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.not211 = icmp eq i64 %i.cw, 0
  %i.db = load ptr, ptr %i.cv, align 8, !nonnull !14, !align !97480, !noundef !14
  br label %.outer176

bb.q:                                             ; preds = %.noexc37, %.noexc39
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138973)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138976)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138979)
  %i.dc = load ptr, ptr %2, align 8, !alias.scope !138982, !nonnull !14, !align !240, !noundef !14
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.de = load ptr, ptr %i.dd, align 8, !noalias !138982, !nonnull !14, !noundef !14
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !alias.scope !138982, !noundef !14
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dj = load i64, ptr %i.di, align 8, !alias.scope !138982, !noundef !14
  invoke void %i.de(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.df, ptr noundef %i.dh, i64 noundef %i.dj)
          to label %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h66466555a16c8973E.exit" unwind label %bb.ay, !inline_history !94812

.loopexit204:                                     ; preds = %.outer176
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %.sroa.05.0.ph.mux ; 2 uses
  %i.dl = load i16, ptr %i.dk, align 2, !noundef !14 ; 2 uses
  %.not = icmp eq i16 %i.dl, -1
  br i1 %.not, label %bb.t, label %bb.s

bb.r:                                             ; preds = %bb.ad
  unreachable

bb.s:                                             ; preds = %.loopexit204
  %i.dm = zext i16 %i.dl to i64                   ; 6 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 2
  %i.do = load i16, ptr %i.dn, align 2, !noundef !14 ; 2 uses
  %i.dp = and i16 %i.do, %i.cs
  %i.dq = zext i16 %i.dp to i64
  %i.dr = sub i64 %.sroa.05.0.ph.mux, %i.dq
  %i.ds = and i64 %i.dr, %i.cx
  %i.dt = icmp samesign ult i64 %i.ds, %.sroa.011.0.ph
  br i1 %i.dt, label %bb.y, label %bb.x

bb.t:                                             ; preds = %.loopexit204
  %i.du = load i64, ptr %i.h, align 8, !noundef !14 ; 2 uses
  %i.dv = icmp ult i64 %i.du, 88686269585142076
  tail call void @llvm.assume(i1 %i.dv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  %i.dw = call fastcc noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$16try_insert_entry17ha7e2261b9447ee6bE"(ptr noalias noundef align 8 dereferenceable(96) %0, i16 noundef %i.cq, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.dw, label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17hff9a713a29a4440aE.exit", label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dx = load i64, ptr %i.m, align 8, !noundef !14 ; 2 uses
  %i.dy = icmp ult i64 %.sroa.05.0.ph.mux, %i.dx
  br i1 %i.dy, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dz = load ptr, ptr %i.cv, align 8, !nonnull !14, !align !97480, !noundef !14
  %i.ea = trunc i64 %i.du to i16
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %.sroa.05.0.ph.mux ; 2 uses
  store i16 %i.ea, ptr %i.eb, align 2
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 2
  store i16 %i.cq, ptr %i.ec, align 2
  br label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17hff9a713a29a4440aE.exit"

bb.w:                                             ; preds = %bb.u
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.05.0.ph.mux, i64 noundef %i.dx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2231) #80
  unreachable

bb.x:                                             ; preds = %bb.s
  %i.ed = icmp eq i16 %i.do, %i.cq
  br i1 %i.ed, label %bb.z, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread"

bb.y:                                             ; preds = %bb.s
  %i.ee = icmp samesign ugt i64 %.sroa.011.0.ph, 511
  br i1 %i.ee, label %bb.ap, label %.noexc49

"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread": ; preds = %bb.ac, %bb.aa, %.split, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit", %bb.x
  %i.ef = add nuw nsw i64 %.sroa.011.0.ph, 1
  %i.eg = add i64 %.sroa.05.0.ph.mux, 1
  br label %.outer176

.outer176:                                        ; preds = %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread", %"_ZN4http6header3map18HeaderMap$LT$T$GT$15try_reserve_one17h774902b020a9a238E.exit"
  %.sroa.011.0.ph = phi i64 [ %i.ef, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread" ], [ 0, %"_ZN4http6header3map18HeaderMap$LT$T$GT$15try_reserve_one17h774902b020a9a238E.exit" ] ; 3 uses
  %.sroa.05.0.ph = phi i64 [ %i.eg, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread" ], [ %i.cu, %"_ZN4http6header3map18HeaderMap$LT$T$GT$15try_reserve_one17h774902b020a9a238E.exit" ] ; 2 uses
  %i.eh = icmp ult i64 %.sroa.05.0.ph, %i.cw      ; 2 uses
  %.not211.not = xor i1 %.not211, true
  %brmerge233 = or i1 %i.eh, %.not211.not
  %.sroa.05.0.ph.mux = select i1 %i.eh, i64 %.sroa.05.0.ph, i64 0 ; 7 uses
  br i1 %brmerge233, label %.loopexit204, label %infloop232

bb.z:                                             ; preds = %bb.x
  %i.ei = load i64, ptr %i.h, align 8, !noundef !14 ; 2 uses
  %i.ej = icmp ugt i64 %i.ei, %i.dm
  br i1 %i.ej, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.ek = load ptr, ptr %i.cy, align 8, !nonnull !14, !noundef !14
  %i.el = getelementptr inbounds nuw [104 x i8], ptr %i.ek, i64 %i.dm ; 10 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 64
  %i.en = load ptr, ptr %i.em, align 8, !noundef !14
  %i.eo = icmp ne ptr %i.en, null                 ; 2 uses
  %i.ep = load ptr, ptr %1, align 8, !noundef !14 ; 2 uses
  %i.eq = icmp eq ptr %i.ep, null                 ; 2 uses
  %i.er = xor i1 %i.eo, %i.eq
  br i1 %i.er, label %bb.ab, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread"

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.eo, label %bb.ac, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit"

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ep) ]
  %i.es = getelementptr inbounds nuw i8, ptr %i.el, i64 80
  %i.et = load i64, ptr %i.es, align 8, !noundef !14 ; 2 uses
  %i.eu = load i64, ptr %i.da, align 8, !noundef !14
  %.not.i.i.i.i = icmp eq i64 %i.et, %i.eu
  br i1 %.not.i.i.i.i, label %.split, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread"

.split:                                           ; preds = %bb.ac
  %i.ev = load ptr, ptr %i.cz, align 8, !noundef !14
  %i.ew = getelementptr inbounds nuw i8, ptr %i.el, i64 72
  %i.ex = load ptr, ptr %i.ew, align 8, !noundef !14
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.ex, ptr %i.ev, i64 %i.et)
  %i.ey = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.ey, label %bb.ae, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread"

bb.ad:                                            ; preds = %bb.z
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.dm, i64 noundef %i.ei, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2230) #80
          to label %bb.r unwind label %.body.thread64

"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit": ; preds = %bb.ab
  tail call void @llvm.assume(i1 %i.eq)
  %i.ez = getelementptr inbounds nuw i8, ptr %i.el, i64 72
  %i.fa = load i8, ptr %i.ez, align 8, !range !138926, !noundef !14
  %i.fb = load i8, ptr %i.cz, align 8, !range !138926, !noundef !14
  %i.fc = icmp eq i8 %i.fa, %i.fb
  br i1 %i.fc, label %bb.ae, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread"

bb.ae:                                            ; preds = %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit", %.split
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138983)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138986)
  %i.fe = load i64, ptr %i.el, align 8, !range !751, !alias.scope !138983, !noalias !138988, !noundef !14
  %i.ff = trunc nuw i64 %i.fe to i1
  br i1 %i.ff, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  %i.fg = getelementptr inbounds nuw i8, ptr %i.el, i64 16 ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8, !alias.scope !138983, !noalias !138988, !noundef !14 ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.fj = load i64, ptr %i.fi, align 8, !alias.scope !138986, !noalias !138990, !noundef !14 ; 7 uses
  %i.fk = icmp ult i64 %i.fj, 128102389400760776
  tail call void @llvm.assume(i1 %i.fk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !138991
  %i.fl = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fl, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  store i64 1, ptr %i.b, align 8, !noalias !138991
  %i.fm = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.fh, ptr %i.fm, align 8, !noalias !138991
  %i.fn = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.fn, align 8, !noalias !138991
  %i.fo = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.dm, ptr %i.fo, align 8, !noalias !138991
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138992)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138995)
  %i.fp = load i64, ptr %i.fd, align 8, !range !9, !alias.scope !138997, !noalias !138998, !noundef !14
  %i.fq = icmp eq i64 %i.fj, %i.fp
  br i1 %i.fq, label %bb.ag, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h7c9ce625c6f3ad33E.exit.i"

bb.ag:                                            ; preds = %bb.af
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hd4397be18548f5f7E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2228)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h7c9ce625c6f3ad33E.exit.i" unwind label %bb.ah, !noalias !139000

bb.ah:                                            ; preds = %bb.ag
  %i.fr = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139001)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139004)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139007)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139010)
  %i.fs = load ptr, ptr %i.fl, align 8, !alias.scope !139013, !noalias !139014, !nonnull !14, !align !240, !noundef !14
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 32
  %i.fu = load ptr, ptr %i.ft, align 8, !noalias !139015, !nonnull !14, !noundef !14
  %i.fv = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.fw = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.fx = load ptr, ptr %i.fw, align 8, !alias.scope !139013, !noalias !139014, !noundef !14
  %i.fy = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.fz = load i64, ptr %i.fy, align 8, !alias.scope !139013, !noalias !139014, !noundef !14
  invoke void %i.fu(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fv, ptr noundef %i.fx, i64 noundef %i.fz)
          to label %.body.thread60.thread unwind label %bb.ai, !noalias !138990, !inline_history !94891

bb.ai:                                            ; preds = %bb.ah
  %i.ga = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !138990
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h7c9ce625c6f3ad33E.exit.i": ; preds = %bb.ag, %bb.af
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !alias.scope !138997, !noalias !138998, !nonnull !14, !noundef !14
  %i.gd = getelementptr inbounds nuw [72 x i8], ptr %i.gc, i64 %i.fj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.gd, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !138990
  %i.ge = add nuw nsw i64 %i.fj, 1                ; 2 uses
  store i64 %i.ge, ptr %i.fi, align 8, !alias.scope !138997, !noalias !138998
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !138991
  %.not.i42 = icmp ugt i64 %i.fh, %i.fj
  br i1 %.not.i42, label %bb.ao, label %bb.an

bb.aj:                                            ; preds = %bb.ae
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.gg = load i64, ptr %i.gf, align 8, !alias.scope !138986, !noalias !138990, !noundef !14 ; 6 uses
  %i.gh = icmp ult i64 %i.gg, 128102389400760776
  tail call void @llvm.assume(i1 %i.gh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !138991
  %i.gi = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.gi, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  store i64 0, ptr %i.a, align 8, !noalias !138991
  %i.gj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.dm, ptr %i.gj, align 8, !noalias !138991
  %i.gk = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.gk, align 8, !noalias !138991
  %i.gl = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.dm, ptr %i.gl, align 8, !noalias !138991
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139016)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139019)
  %i.gm = load i64, ptr %i.fd, align 8, !range !9, !alias.scope !139021, !noalias !139022, !noundef !14
  %i.gn = icmp eq i64 %i.gg, %i.gm
  br i1 %i.gn, label %bb.ak, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h7c9ce625c6f3ad33E.exit9.i"

bb.ak:                                            ; preds = %bb.aj
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hd4397be18548f5f7E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2227)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h7c9ce625c6f3ad33E.exit9.i" unwind label %bb.al, !noalias !139024

bb.al:                                            ; preds = %bb.ak
  %i.go = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139025)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139028)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139031)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139034)
  %i.gp = load ptr, ptr %i.gi, align 8, !alias.scope !139037, !noalias !139038, !nonnull !14, !align !240, !noundef !14
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 32
  %i.gr = load ptr, ptr %i.gq, align 8, !noalias !139039, !nonnull !14, !noundef !14
  %i.gs = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.gt = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.gu = load ptr, ptr %i.gt, align 8, !alias.scope !139037, !noalias !139038, !noundef !14
  %i.gv = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.gw = load i64, ptr %i.gv, align 8, !alias.scope !139037, !noalias !139038, !noundef !14
  invoke void %i.gr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.gs, ptr noundef %i.gu, i64 noundef %i.gw)
          to label %.body.thread60.thread unwind label %bb.am, !noalias !138990, !inline_history !94891

bb.am:                                            ; preds = %bb.al
  %i.gx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !138990
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h7c9ce625c6f3ad33E.exit9.i": ; preds = %bb.ak, %bb.aj
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.gz = load ptr, ptr %i.gy, align 8, !alias.scope !139021, !noalias !139022, !nonnull !14, !noundef !14
  %i.ha = getelementptr inbounds nuw [72 x i8], ptr %i.gz, i64 %i.gg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ha, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !138990
  %i.hb = add nuw nsw i64 %i.gg, 1
  store i64 %i.hb, ptr %i.gf, align 8, !alias.scope !139021, !noalias !139022
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !138991
  store i64 1, ptr %i.el, align 8, !alias.scope !138983, !noalias !138988
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store i64 %i.gg, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !138983, !noalias !138988
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store i64 %i.gg, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !138983, !noalias !138988
  br label %bb.aw

bb.an:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h7c9ce625c6f3ad33E.exit.i"
  %i.hc = load ptr, ptr %i.gb, align 8, !alias.scope !138986, !noalias !138990, !nonnull !14, !noundef !14
  %i.hd = getelementptr inbounds nuw [72 x i8], ptr %i.hc, i64 %i.fh ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  store i64 1, ptr %i.he, align 8, !noalias !138990
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 24
  store i64 %i.fj, ptr %i.hf, align 8, !noalias !138990
  store i64 1, ptr %i.el, align 8, !alias.scope !138983, !noalias !138988
  store i64 %i.fj, ptr %i.fg, align 8, !alias.scope !138983, !noalias !138988
  br label %bb.aw

bb.ao:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h7c9ce625c6f3ad33E.exit.i"
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.fh, i64 noundef %i.ge, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2229) #80
          to label %.noexc47 unwind label %.body.thread60

.noexc47:                                         ; preds = %bb.ao
  unreachable

bb.ap:                                            ; preds = %bb.y
  %i.hg = load i64, ptr %0, align 8, !range !802, !noundef !14
  %i.hh = icmp ne i64 %i.hg, 2
  br label %.noexc49

.noexc49:                                         ; preds = %bb.ap, %bb.y
  %.sroa.017.0 = phi i1 [ %i.hh, %bb.ap ], [ false, %bb.y ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  %i.hi = load i64, ptr %i.h, align 8, !alias.scope !139040, !noalias !139043, !noundef !14 ; 2 uses
  %i.hj = icmp ult i64 %i.hi, 88686269585142076
  tail call void @llvm.assume(i1 %i.hj)
  %i.hk = call fastcc noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$16try_insert_entry17ha7e2261b9447ee6bE"(ptr noalias noundef nonnull align 8 dereferenceable(96) %0, i16 noundef range(i16 0, -32768) %i.cq, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.e)
  br i1 %i.hk, label %bb.av, label %bb.aq

bb.aq:                                            ; preds = %.noexc49
  %i.hl = load ptr, ptr %i.cv, align 8, !alias.scope !139040, !noalias !139043, !nonnull !14, !align !97480, !noundef !14
  %i.hm = load i64, ptr %i.m, align 8, !alias.scope !139040, !noalias !139043, !noundef !14 ; 2 uses
  %i.hn = trunc i64 %i.hi to i16
  %.not212 = icmp eq i64 %i.hm, 0
end_hunk_0
