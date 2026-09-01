Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/xtask-4cd5076fd53ab298.xtask.9db97cdd31b73b23-cgu.0?download=true
inline.NumInlined: 15191
inline.NumDeleted: 6593
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 95
begin_hunk_0_@_ZN4http6header3map15hash_elem_using17hfa00c2547dd9d71bE:bb.a
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !20673

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.cp, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.06.i.i.i.i.unr = phi i64 [ %i.cg, %.lr.ph.i.i.i.i.preheader ], [ %i.cp, %.lr.ph.i.i.i.i.prol ]
  %.sroa.04.05.i.i.i.i.unr = phi ptr [ %.val.i.i31, %.lr.ph.i.i.i.i.preheader ], [ %i.cl, %.lr.ph.i.i.i.i.prol ]
  %i.cq = icmp ult i64 %.val1.i.i32, 8
  br i1 %i.cq, label %"_ZN67_$LT$http..header..name..HeaderName$u20$as$u20$core..hash..Hash$GT$4hash17h2b065edd76cbc5baE.exit", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.sroa.0.06.i.i.i.i = phi i64 [ %i.ee, %.lr.ph.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.sroa.04.05.i.i.i.i = phi ptr [ %i.ea, %.lr.ph.i.i.i.i ], [ %.sroa.04.05.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i.i, i64 1
  %i.cs = load i8, ptr %.sroa.04.05.i.i.i.i, align 1, !alias.scope !20666, !noalias !20669, !noundef !8
  %i.ct = zext i8 %i.cs to i64
  %i.cu = xor i64 %.sroa.0.06.i.i.i.i, %i.ct
  %i.cv = mul i64 %i.cu, 1099511628211
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i.i, i64 2
  %i.cx = load i8, ptr %i.cr, align 1, !alias.scope !20666, !noalias !20669, !noundef !8
  %i.cy = zext i8 %i.cx to i64
  %i.cz = xor i64 %i.cv, %i.cy
  %i.da = mul i64 %i.cz, 1099511628211
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i.i, i64 3
  %i.dc = load i8, ptr %i.cw, align 1, !alias.scope !20666, !noalias !20669, !noundef !8
  %i.dd = zext i8 %i.dc to i64
  %i.de = xor i64 %i.da, %i.dd
  %i.df = mul i64 %i.de, 1099511628211
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i.i, i64 4
  %i.dh = load i8, ptr %i.db, align 1, !alias.scope !20666, !noalias !20669, !noundef !8
  %i.di = zext i8 %i.dh to i64
  %i.dj = xor i64 %i.df, %i.di
  %i.dk = mul i64 %i.dj, 1099511628211
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i.i, i64 5
  %i.dm = load i8, ptr %i.dg, align 1, !alias.scope !20666, !noalias !20669, !noundef !8
  %i.dn = zext i8 %i.dm to i64
  %i.do = xor i64 %i.dk, %i.dn
  %i.dp = mul i64 %i.do, 1099511628211
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i.i, i64 6
  %i.dr = load i8, ptr %i.dl, align 1, !alias.scope !20666, !noalias !20669, !noundef !8
  %i.ds = zext i8 %i.dr to i64
  %i.dt = xor i64 %i.dp, %i.ds
  %i.du = mul i64 %i.dt, 1099511628211
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i.i, i64 7
  %i.dw = load i8, ptr %i.dq, align 1, !alias.scope !20666, !noalias !20669, !noundef !8
  %i.dx = zext i8 %i.dw to i64
  %i.dy = xor i64 %i.du, %i.dx
  %i.dz = mul i64 %i.dy, 1099511628211
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i.i, i64 8 ; 2 uses
  %i.eb = load i8, ptr %i.dv, align 1, !alias.scope !20666, !noalias !20669, !noundef !8
  %i.ec = zext i8 %i.eb to i64
  %i.ed = xor i64 %i.dz, %i.ec
  %i.ee = mul i64 %i.ed, 1099511628211            ; 2 uses
  %i.ef = icmp eq ptr %i.ea, %i.cj
  br i1 %i.ef, label %"_ZN67_$LT$http..header..name..HeaderName$u20$as$u20$core..hash..Hash$GT$4hash17h2b065edd76cbc5baE.exit", label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.eg = load i8, ptr %i.ch, align 8, !range !20652, !noalias !20661, !noundef !8
  %i.eh = zext nneg i8 %i.eg to i64
  %i.ei = xor i64 %i.cg, %i.eh
  %i.ej = mul i64 %i.ei, 2232315406967589409
  br label %"_ZN67_$LT$http..header..name..HeaderName$u20$as$u20$core..hash..Hash$GT$4hash17h2b065edd76cbc5baE.exit"

"_ZN67_$LT$http..header..name..HeaderName$u20$as$u20$core..hash..Hash$GT$4hash17h2b065edd76cbc5baE.exit": ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.g, %bb.f, %"_ZN67_$LT$http..header..name..HeaderName$u20$as$u20$core..hash..Hash$GT$4hash17h41eee3b1f19abb99E.exit"
  %.sroa.0.0 = phi i64 [ %i.cb, %"_ZN67_$LT$http..header..name..HeaderName$u20$as$u20$core..hash..Hash$GT$4hash17h41eee3b1f19abb99E.exit" ], [ %i.ej, %bb.g ], [ %i.cg, %bb.f ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.ee, %.lr.ph.i.i.i.i ]
  %i.ek = trunc i64 %.sroa.0.0 to i16
  %i.el = and i16 %i.ek, 32767
  ret i16 %i.el
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 0, 3) i8 @"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_append217h47eecc3db5a9995dE"(ptr noalias noundef nonnull align 8 dereferenceable(96) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %1, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = invoke fastcc noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$15try_reserve_one17h8e510c9b8652aa7fE"(ptr noalias noundef align 8 dereferenceable(96) %0)
          to label %bb.b unwind label %bb.ae

bb.b:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call fastcc noundef i16 @_ZN4http6header3map15hash_elem_using17hfa00c2547dd9d71bE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load i16, ptr %i.h, align 8, !noundef !8 ; 3 uses
  %i.j = and i16 %i.i, %i.g
  %i.k = zext nneg i16 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !8 ; 2 uses
  %i.o = zext i16 %i.i to i64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.not150 = icmp eq i64 %i.n, 0
  %i.t = load ptr, ptr %i.l, align 8, !nonnull !8, !align !20674, !noundef !8
  br label %.outer132

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20678)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20681)
  %i.u = load ptr, ptr %2, align 8, !alias.scope !20684, !nonnull !8, !align !461, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !noalias !20684, !nonnull !8, !noundef !8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !20684, !noundef !8
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !20684, !noundef !8
  invoke void %i.w(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef %i.z, i64 noundef %i.ab)
          to label %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h682a465a928c1da9E.exit.thread" unwind label %bb.ac, !inline_history !19555

.loopexit:                                        ; preds = %.outer132
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.sroa.05.0.ph.mux ; 2 uses
  %i.ad = load i16, ptr %i.ac, align 2, !noundef !8 ; 2 uses
  %.not = icmp eq i16 %i.ad, -1
  br i1 %.not, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.q
  unreachable

bb.f:                                             ; preds = %.loopexit
  %i.ae = zext i16 %i.ad to i64                   ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  %i.ag = load i16, ptr %i.af, align 2, !noundef !8 ; 2 uses
  %i.ah = and i16 %i.ag, %i.i
  %i.ai = zext i16 %i.ah to i64
  %i.aj = sub i64 %.sroa.05.0.ph.mux, %i.ai
  %i.ak = and i64 %i.aj, %i.o
  %i.al = icmp samesign ult i64 %i.ak, %.sroa.011.0.ph
  br i1 %i.al, label %bb.l, label %bb.k

bb.g:                                             ; preds = %.loopexit
  %i.am = load i64, ptr %i.p, align 8, !noundef !8 ; 2 uses
  %i.an = icmp ult i64 %i.am, 88686269585142076
  tail call void @llvm.assume(i1 %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  %i.ao = call fastcc noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$16try_insert_entry17hdaa4f007e59bac81E"(ptr noalias noundef align 8 dereferenceable(96) %0, i16 noundef %i.g, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.ao, label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h33a1640e4870b675E.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = load i64, ptr %i.m, align 8, !noundef !8 ; 2 uses
  %i.aq = icmp ult i64 %.sroa.05.0.ph.mux, %i.ap
  br i1 %i.aq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ar = load ptr, ptr %i.l, align 8, !nonnull !8, !align !20674, !noundef !8
  %i.as = trunc i64 %i.am to i16
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %.sroa.05.0.ph.mux ; 2 uses
  store i16 %i.as, ptr %i.at, align 2
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  store i16 %i.g, ptr %i.au, align 2
  br label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h33a1640e4870b675E.exit"

bb.j:                                             ; preds = %bb.h
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.05.0.ph.mux, i64 noundef %i.ap, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @565) #54
  unreachable

bb.k:                                             ; preds = %bb.f
  %i.av = icmp eq i16 %i.ag, %i.g
  br i1 %i.av, label %bb.m, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread"

bb.l:                                             ; preds = %bb.f
  %i.aw = icmp samesign ugt i64 %.sroa.011.0.ph, 511
  br i1 %i.aw, label %bb.s, label %.noexc

"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread": ; preds = %bb.p, %bb.n, %.split, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit", %bb.k
  %i.ax = add nuw nsw i64 %.sroa.011.0.ph, 1
  %i.ay = add i64 %.sroa.05.0.ph.mux, 1
  br label %.outer132

.outer132:                                        ; preds = %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread", %bb.c
  %.sroa.011.0.ph = phi i64 [ %i.ax, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread" ], [ 0, %bb.c ] ; 3 uses
  %.sroa.05.0.ph = phi i64 [ %i.ay, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread" ], [ %i.k, %bb.c ] ; 2 uses
  %i.az = icmp ult i64 %.sroa.05.0.ph, %i.n       ; 2 uses
  %.not150.not = xor i1 %.not150, true
  %brmerge = or i1 %i.az, %.not150.not
  %.sroa.05.0.ph.mux = select i1 %i.az, i64 %.sroa.05.0.ph, i64 0 ; 7 uses
  br i1 %brmerge, label %.loopexit, label %infloop

bb.m:                                             ; preds = %bb.k
  %i.ba = load i64, ptr %i.p, align 8, !noundef !8 ; 2 uses
  %i.bb = icmp ugt i64 %i.ba, %i.ae
  br i1 %i.bb, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bc = load ptr, ptr %i.q, align 8, !nonnull !8, !noundef !8
  %i.bd = getelementptr inbounds nuw [104 x i8], ptr %i.bc, i64 %i.ae ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 64
  %i.bf = load ptr, ptr %i.be, align 8, !noundef !8
  %i.bg = icmp ne ptr %i.bf, null                 ; 2 uses
  %i.bh = load ptr, ptr %1, align 8, !noundef !8
  %i.bi = icmp eq ptr %i.bh, null                 ; 3 uses
  %not..i.i = xor i1 %i.bi, true
  %i.bj = xor i1 %i.bg, %i.bi
  br i1 %i.bj, label %bb.o, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread"

bb.o:                                             ; preds = %bb.n
  br i1 %i.bg, label %bb.p, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit"

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.assume(i1 %not..i.i)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 80
  %i.bl = load i64, ptr %i.bk, align 8, !noundef !8 ; 2 uses
  %i.bm = load i64, ptr %i.s, align 8, !noundef !8
  %.not.i.i.i.i = icmp eq i64 %i.bl, %i.bm
  br i1 %.not.i.i.i.i, label %.split, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread"

.split:                                           ; preds = %bb.p
  %i.bn = load ptr, ptr %i.r, align 8, !noundef !8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 72
  %i.bp = load ptr, ptr %i.bo, align 8, !noundef !8
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.bp, ptr %i.bn, i64 %i.bl)
  %i.bq = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.bq, label %bb.r, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread"

bb.q:                                             ; preds = %bb.m
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ae, i64 noundef %i.ba, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @564) #54
          to label %bb.e unwind label %bb.ae

"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit": ; preds = %bb.o
  tail call void @llvm.assume(i1 %i.bi)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bd, i64 72
  %i.bs = load i8, ptr %i.br, align 8, !range !20652, !noundef !8
  %i.bt = load i8, ptr %i.r, align 8, !range !20652, !noundef !8
  %i.bu = icmp eq i8 %i.bs, %i.bt
  br i1 %i.bu, label %bb.r, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread"

bb.r:                                             ; preds = %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit", %.split
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  invoke fastcc void @_ZN4http6header3map12append_value17hbe3f692a887c8205E(i64 noundef %i.ae, ptr noalias noundef align 8 dereferenceable(104) %i.bd, ptr noalias noundef align 8 dereferenceable(24) %i.bv, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.z unwind label %bb.ab

bb.s:                                             ; preds = %bb.l
  %i.bw = load i64, ptr %0, align 8, !range !479, !noundef !8
  %i.bx = icmp ne i64 %i.bw, 2
  br label %.noexc

.noexc:                                           ; preds = %bb.s, %bb.l
  %.sroa.017.0 = phi i1 [ %i.bx, %bb.s ], [ false, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  %i.by = load i64, ptr %i.p, align 8, !alias.scope !20685, !noalias !20688, !noundef !8 ; 2 uses
  %i.bz = icmp ult i64 %i.by, 88686269585142076
  tail call void @llvm.assume(i1 %i.bz)
  %i.ca = call fastcc noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$16try_insert_entry17hdaa4f007e59bac81E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %0, i16 noundef %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.d)
  br i1 %i.ca, label %bb.y, label %bb.t

bb.t:                                             ; preds = %.noexc
  %i.cb = load ptr, ptr %i.l, align 8, !alias.scope !20685, !noalias !20688, !nonnull !8, !align !20674, !noundef !8
  %i.cc = load i64, ptr %i.m, align 8, !alias.scope !20685, !noalias !20688, !noundef !8 ; 2 uses
  %i.cd = trunc i64 %i.by to i16
  %.not151 = icmp eq i64 %i.cc, 0
  br label %.outer

.outer:                                           ; preds = %bb.v, %bb.t
  %.sroa.07.0.i.ph = phi i64 [ %i.ck, %bb.v ], [ 0, %bb.t ] ; 2 uses
  %.sroa.6.0.i.ph = phi i16 [ %i.cl, %bb.v ], [ %i.g, %bb.t ] ; 2 uses
  %.sroa.04.0.i.ph = phi i16 [ %i.cg, %bb.v ], [ %i.cd, %bb.t ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ %i.cm, %bb.v ], [ %.sroa.05.0.ph.mux, %bb.t ] ; 2 uses
  %i.ce = icmp ult i64 %.sroa.01.0.i.ph, %i.cc    ; 2 uses
  %.not151.not = xor i1 %.not151, true
  %brmerge166 = or i1 %i.ce, %.not151.not
  %.sroa.01.0.i.ph.mux = select i1 %i.ce, i64 %.sroa.01.0.i.ph, i64 0 ; 2 uses
  br i1 %brmerge166, label %.loopexit149, label %infloop165

.loopexit149:                                     ; preds = %.outer
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %.sroa.01.0.i.ph.mux ; 4 uses
  %i.cg = load i16, ptr %i.cf, align 2, !noalias !20688, !noundef !8 ; 2 uses
  %i.ch = icmp eq i16 %i.cg, -1
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 2 ; 3 uses
  br i1 %i.ch, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.loopexit149
  store i16 %.sroa.04.0.i.ph, ptr %i.cf, align 2, !noalias !20688
  store i16 %.sroa.6.0.i.ph, ptr %i.ci, align 2, !noalias !20688
  %i.cj = icmp ugt i64 %.sroa.07.0.i.ph, 127
  %or.cond.i = or i1 %.sroa.017.0, %i.cj
  br i1 %or.cond.i, label %bb.w, label %.thread52

bb.v:                                             ; preds = %.loopexit149
  %i.ck = add i64 %.sroa.07.0.i.ph, 1
  %i.cl = load i16, ptr %i.ci, align 2, !noalias !20688, !noundef !8
  store i16 %.sroa.04.0.i.ph, ptr %i.cf, align 2, !noalias !20688
  store i16 %.sroa.6.0.i.ph, ptr %i.ci, align 2, !noalias !20688
  %i.cm = add nuw i64 %.sroa.01.0.i.ph.mux, 1
  br label %.outer

bb.w:                                             ; preds = %bb.u
  %i.cn = load i64, ptr %0, align 8, !range !479, !alias.scope !20685, !noalias !20688, !noundef !8
  %i.co = icmp eq i64 %i.cn, 0
  br i1 %i.co, label %bb.x, label %.thread52

bb.x:                                             ; preds = %bb.w
  store i64 1, ptr %0, align 8, !alias.scope !20685, !noalias !20688
  br label %.thread52

.thread52:                                        ; preds = %bb.w, %bb.x, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h33a1640e4870b675E.exit"

bb.y:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h33a1640e4870b675E.exit"

"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h33a1640e4870b675E.exit": ; preds = %bb.g, %bb.y, %.thread52, %bb.i, %bb.ad, %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h682a465a928c1da9E.exit.thread", %bb.aa, %bb.z
  %.sroa.0.2 = phi i8 [ 1, %bb.aa ], [ 0, %.thread52 ], [ 2, %bb.ad ], [ 1, %bb.z ], [ 2, %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h682a465a928c1da9E.exit.thread" ], [ 0, %bb.i ], [ 2, %bb.y ], [ 2, %bb.g ]
  ret i8 %.sroa.0.2

bb.z:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20691)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20694)
  %i.cp = load ptr, ptr %1, align 8, !alias.scope !20697, !noundef !8 ; 2 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h33a1640e4870b675E.exit", label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20698)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20701)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20704)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20707)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8, !noalias !20710, !nonnull !8, !noundef !8
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cu = load ptr, ptr %i.r, align 8, !alias.scope !20710, !noundef !8
  %i.cv = load i64, ptr %i.s, align 8, !alias.scope !20710, !noundef !8
  tail call void %i.cs(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ct, ptr noundef %i.cu, i64 noundef %i.cv), !inline_history !20711
  br label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h33a1640e4870b675E.exit"

bb.ab:                                            ; preds = %bb.r
  %lpad.thr_comm.split-lp63 = landingpad { ptr, i32 }
          cleanup
  br label %.thread55

bb.ac:                                            ; preds = %bb.d
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %.thread55

"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h682a465a928c1da9E.exit.thread": ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20712)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20715)
  %i.cx = load ptr, ptr %1, align 8, !alias.scope !20718, !noundef !8 ; 2 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h33a1640e4870b675E.exit", label %bb.ad

bb.ad:                                            ; preds = %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h682a465a928c1da9E.exit.thread"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20719)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20722)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20725)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20728)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %i.da = load ptr, ptr %i.cz, align 8, !noalias !20731, !nonnull !8, !noundef !8
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !alias.scope !20731, !noundef !8
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.df = load i64, ptr %i.de, align 8, !alias.scope !20731, !noundef !8
  tail call void %i.da(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.db, ptr noundef %i.dd, i64 noundef %i.df), !inline_history !20711
  br label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h33a1640e4870b675E.exit"

bb.ae:                                            ; preds = %bb.a, %bb.q
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20732)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20735)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20738)
  %i.dg = load ptr, ptr %2, align 8, !alias.scope !20741, !nonnull !8, !align !461, !noundef !8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.di = load ptr, ptr %i.dh, align 8, !noalias !20741, !nonnull !8, !noundef !8
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !alias.scope !20741, !noundef !8
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dn = load i64, ptr %i.dm, align 8, !alias.scope !20741, !noundef !8
  invoke void %i.di(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dj, ptr noundef %i.dl, i64 noundef %i.dn)
          to label %.thread55 unwind label %bb.af, !inline_history !19555

bb.af:                                            ; preds = %bb.ag, %bb.ae
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h33a1640e4870b675E.exit41": ; preds = %.thread55, %bb.ag
  resume { ptr, i32 } %.pn59

.thread55:                                        ; preds = %bb.ae, %bb.ac, %bb.ab
  %.pn59 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp63, %bb.ab ], [ %i.cw, %bb.ac ], [ %lpad.thr_comm, %bb.ae ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20742)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20745)
  %i.dp = load ptr, ptr %1, align 8, !alias.scope !20748, !noundef !8 ; 2 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h33a1640e4870b675E.exit41", label %bb.ag

bb.ag:                                            ; preds = %.thread55
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20749)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20752)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20755)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20758)
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  %i.ds = load ptr, ptr %i.dr, align 8, !noalias !20761, !nonnull !8, !noundef !8
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !alias.scope !20761, !noundef !8
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dx = load i64, ptr %i.dw, align 8, !alias.scope !20761, !noundef !8
  invoke void %i.ds(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dt, ptr noundef %i.dv, i64 noundef %i.dx)
          to label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h33a1640e4870b675E.exit41" unwind label %bb.af, !inline_history !19544

infloop:                                          ; preds = %.outer132, %infloop
  br label %infloop

infloop165:                                       ; preds = %.outer, %infloop165
  br label %infloop165
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_insert217h1a0b2ca5b6840d52E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 dereferenceable(96) %1, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %2, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(40) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 6 uses
  %i.e = alloca [40 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.018 = alloca [32 x i8], align 8          ; 3 uses
  %.sroa.8 = alloca [7 x i8], align 1             ; 3 uses
  %i.g = invoke fastcc noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$15try_reserve_one17h8e510c9b8652aa7fE"(ptr noalias noundef align 8 dereferenceable(96) %1)
          to label %bb.b unwind label %bb.ae

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call fastcc noundef i16 @_ZN4http6header3map15hash_elem_using17hfa00c2547dd9d71bE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noundef nonnull align 8 %2) ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.j = load i16, ptr %i.i, align 8, !noundef !8 ; 3 uses
  %i.k = and i16 %i.j, %i.h
  %i.l = zext nneg i16 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !noundef !8 ; 2 uses
  %i.p = zext i16 %i.j to i64
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.not156 = icmp eq i64 %i.o, 0
  %i.u = load ptr, ptr %i.m, align 8, !nonnull !8, !align !20674, !noundef !8
  br label %.outer139

bb.d:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 3, ptr %i.v, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20762)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20765)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20768)
  %i.w = load ptr, ptr %3, align 8, !alias.scope !20771, !nonnull !8, !align !461, !noundef !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !noalias !20771, !nonnull !8, !noundef !8
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !20771, !noundef !8
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !20771, !noundef !8
  invoke void %i.y(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef %i.ab, i64 noundef %i.ad)
          to label %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h682a465a928c1da9E.exit.thread" unwind label %bb.ac, !inline_history !19555

.loopexit:                                        ; preds = %.outer139
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.sroa.04.0.ph.mux ; 2 uses
  %i.af = load i16, ptr %i.ae, align 2, !noundef !8 ; 2 uses
  %.not = icmp eq i16 %i.af, -1
  br i1 %.not, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.q
  unreachable

bb.f:                                             ; preds = %.loopexit
  %i.ag = zext i16 %i.af to i64                   ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %i.ai = load i16, ptr %i.ah, align 2, !noundef !8 ; 2 uses
  %i.aj = and i16 %i.ai, %i.j
  %i.ak = zext i16 %i.aj to i64
  %i.al = sub i64 %.sroa.04.0.ph.mux, %i.ak
  %i.am = and i64 %i.al, %i.p
  %i.an = icmp samesign ult i64 %i.am, %.sroa.010.0.ph
  br i1 %i.an, label %bb.l, label %bb.k

bb.g:                                             ; preds = %.loopexit
  %i.ao = load i64, ptr %i.q, align 8, !noundef !8 ; 2 uses
  %i.ap = icmp ult i64 %i.ao, 88686269585142076
  tail call void @llvm.assume(i1 %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false)
  %i.aq = call fastcc noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$16try_insert_entry17hdaa4f007e59bac81E"(ptr noalias noundef align 8 dereferenceable(96) %1, i16 noundef %i.h, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.aq, label %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h682a465a928c1da9E.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = load i64, ptr %i.n, align 8, !noundef !8 ; 2 uses
  %i.as = icmp ult i64 %.sroa.04.0.ph.mux, %i.ar
  br i1 %i.as, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.at = load ptr, ptr %i.m, align 8, !nonnull !8, !align !20674, !noundef !8
  %i.au = trunc i64 %i.ao to i16
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.sroa.04.0.ph.mux ; 2 uses
  store i16 %i.au, ptr %i.av, align 2
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  store i16 %i.h, ptr %i.aw, align 2
  br label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h33a1640e4870b675E.exit.critedge"

bb.j:                                             ; preds = %bb.h
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.04.0.ph.mux, i64 noundef %i.ar, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @567) #54
  unreachable

bb.k:                                             ; preds = %bb.f
  %i.ax = icmp eq i16 %i.ai, %i.h
  br i1 %i.ax, label %bb.m, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread"

bb.l:                                             ; preds = %bb.f
  %i.ay = icmp samesign ugt i64 %.sroa.010.0.ph, 511
  br i1 %i.ay, label %bb.t, label %.noexc

"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread": ; preds = %bb.p, %bb.n, %.split, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit", %bb.k
  %i.az = add nuw nsw i64 %.sroa.010.0.ph, 1
  %i.ba = add i64 %.sroa.04.0.ph.mux, 1
  br label %.outer139

.outer139:                                        ; preds = %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread", %bb.c
  %.sroa.010.0.ph = phi i64 [ %i.az, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread" ], [ 0, %bb.c ] ; 3 uses
  %.sroa.04.0.ph = phi i64 [ %i.ba, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread" ], [ %i.l, %bb.c ] ; 2 uses
  %i.bb = icmp ult i64 %.sroa.04.0.ph, %i.o       ; 2 uses
  %.not156.not = xor i1 %.not156, true
  %brmerge = or i1 %i.bb, %.not156.not
  %.sroa.04.0.ph.mux = select i1 %i.bb, i64 %.sroa.04.0.ph, i64 0 ; 7 uses
  br i1 %brmerge, label %.loopexit, label %infloop

bb.m:                                             ; preds = %bb.k
  %i.bc = load i64, ptr %i.q, align 8, !noundef !8 ; 2 uses
  %i.bd = icmp ugt i64 %i.bc, %i.ag
  br i1 %i.bd, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.be = load ptr, ptr %i.r, align 8, !nonnull !8, !noundef !8
  %i.bf = getelementptr inbounds nuw [104 x i8], ptr %i.be, i64 %i.ag ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  %i.bh = load ptr, ptr %i.bg, align 8, !noundef !8
  %i.bi = icmp ne ptr %i.bh, null                 ; 2 uses
  %i.bj = load ptr, ptr %2, align 8, !noundef !8
  %i.bk = icmp eq ptr %i.bj, null                 ; 3 uses
  %not..i.i = xor i1 %i.bk, true
  %i.bl = xor i1 %i.bi, %i.bk
  br i1 %i.bl, label %bb.o, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread"

bb.o:                                             ; preds = %bb.n
  br i1 %i.bi, label %bb.p, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit"

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.assume(i1 %not..i.i)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 80
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !8 ; 2 uses
  %i.bo = load i64, ptr %i.t, align 8, !noundef !8
  %.not.i.i.i.i = icmp eq i64 %i.bn, %i.bo
  br i1 %.not.i.i.i.i, label %.split, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread"

.split:                                           ; preds = %bb.p
  %i.bp = load ptr, ptr %i.s, align 8, !noundef !8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bf, i64 72
  %i.br = load ptr, ptr %i.bq, align 8, !noundef !8
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.br, ptr %i.bp, i64 %i.bn)
  %i.bs = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.bs, label %bb.r, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread"

bb.q:                                             ; preds = %bb.m
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ag, i64 noundef %i.bc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @566) #54
          to label %bb.e unwind label %bb.ae

"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit": ; preds = %bb.o
  tail call void @llvm.assume(i1 %i.bk)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bf, i64 72
  %i.bu = load i8, ptr %i.bt, align 8, !range !20652, !noundef !8
  %i.bv = load i8, ptr %i.s, align 8, !range !20652, !noundef !8
  %i.bw = icmp eq i8 %i.bu, %i.bv
  br i1 %i.bw, label %bb.r, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread"

bb.r:                                             ; preds = %.split, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false)
  invoke fastcc void @"_ZN4http6header3map18HeaderMap$LT$T$GT$15insert_occupied17h90cdeca53126b138E"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.d, ptr noalias noundef align 8 dereferenceable(96) %1, i64 noundef %i.ag, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.s unwind label %bb.ab

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.018, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.434.0.copyload = load i8, ptr %.sroa.434.0..sroa_idx, align 8
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.535.0..sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.018, i64 32, i1 false)
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.434.0.copyload, ptr %.sroa.527.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8, i64 7, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !20772)
  call void @llvm.experimental.noalias.scope.decl(metadata !20775)
  %i.bx = load ptr, ptr %2, align 8, !alias.scope !20778, !noundef !8 ; 2 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h33a1640e4870b675E.exit", label %bb.aa

bb.t:                                             ; preds = %bb.l
  %i.bz = load i64, ptr %1, align 8, !range !479, !noundef !8
  %i.ca = icmp ne i64 %i.bz, 2
  br label %.noexc

.noexc:                                           ; preds = %bb.t, %bb.l
  %.sroa.015.0 = phi i1 [ %i.ca, %bb.t ], [ false, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false)
  %i.cb = load i64, ptr %i.q, align 8, !alias.scope !20779, !noalias !20782, !noundef !8 ; 2 uses
  %i.cc = icmp ult i64 %i.cb, 88686269585142076
  tail call void @llvm.assume(i1 %i.cc)
  %i.cd = call fastcc noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$16try_insert_entry17hdaa4f007e59bac81E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %1, i16 noundef %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.e)
  br i1 %i.cd, label %bb.z, label %bb.u

bb.u:                                             ; preds = %.noexc
  %i.ce = load ptr, ptr %i.m, align 8, !alias.scope !20779, !noalias !20782, !nonnull !8, !align !20674, !noundef !8
  %i.cf = load i64, ptr %i.n, align 8, !alias.scope !20779, !noalias !20782, !noundef !8 ; 2 uses
  %i.cg = trunc i64 %i.cb to i16
  %.not157 = icmp eq i64 %i.cf, 0
  br label %.outer

.outer:                                           ; preds = %bb.w, %bb.u
  %.sroa.07.0.i.ph = phi i64 [ %i.cn, %bb.w ], [ 0, %bb.u ] ; 2 uses
  %.sroa.6.0.i.ph = phi i16 [ %i.co, %bb.w ], [ %i.h, %bb.u ] ; 2 uses
  %.sroa.04.0.i.ph = phi i16 [ %i.cj, %bb.w ], [ %i.cg, %bb.u ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ %i.cp, %bb.w ], [ %.sroa.04.0.ph.mux, %bb.u ] ; 2 uses
  %i.ch = icmp ult i64 %.sroa.01.0.i.ph, %i.cf    ; 2 uses
  %.not157.not = xor i1 %.not157, true
  %brmerge171 = or i1 %i.ch, %.not157.not
  %.sroa.01.0.i.ph.mux = select i1 %i.ch, i64 %.sroa.01.0.i.ph, i64 0 ; 2 uses
  br i1 %brmerge171, label %.loopexit155, label %infloop170

.loopexit155:                                     ; preds = %.outer
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %.sroa.01.0.i.ph.mux ; 4 uses
  %i.cj = load i16, ptr %i.ci, align 2, !noalias !20782, !noundef !8 ; 2 uses
  %i.ck = icmp eq i16 %i.cj, -1
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 2 ; 3 uses
  br i1 %i.ck, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.loopexit155
  store i16 %.sroa.04.0.i.ph, ptr %i.ci, align 2, !noalias !20782
  store i16 %.sroa.6.0.i.ph, ptr %i.cl, align 2, !noalias !20782
  %i.cm = icmp ugt i64 %.sroa.07.0.i.ph, 127
  %or.cond.i = or i1 %.sroa.015.0, %i.cm
  br i1 %or.cond.i, label %bb.x, label %.thread63

bb.w:                                             ; preds = %.loopexit155
  %i.cn = add i64 %.sroa.07.0.i.ph, 1
  %i.co = load i16, ptr %i.cl, align 2, !noalias !20782, !noundef !8
  store i16 %.sroa.04.0.i.ph, ptr %i.ci, align 2, !noalias !20782
  store i16 %.sroa.6.0.i.ph, ptr %i.cl, align 2, !noalias !20782
  %i.cp = add nuw i64 %.sroa.01.0.i.ph.mux, 1
  br label %.outer

bb.x:                                             ; preds = %bb.v
  %i.cq = load i64, ptr %1, align 8, !range !479, !alias.scope !20779, !noalias !20782, !noundef !8
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %bb.y, label %.thread63

bb.y:                                             ; preds = %bb.x
  store i64 1, ptr %1, align 8, !alias.scope !20779, !noalias !20782
  br label %.thread63

.thread63:                                        ; preds = %bb.x, %bb.y, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h33a1640e4870b675E.exit.critedge"

bb.z:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h682a465a928c1da9E.exit"

"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h33a1640e4870b675E.exit.critedge": ; preds = %.thread63, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.018, i64 32, i1 false)
  %.sroa.527.0..sroa_idx.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 2, ptr %.sroa.527.0..sroa_idx.c, align 8
  %.sroa.6.0..sroa_idx.c = getelementptr inbounds nuw i8, ptr %0, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx.c, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8, i64 7, i1 false)
  br label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h33a1640e4870b675E.exit"

"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h33a1640e4870b675E.exit": ; preds = %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h33a1640e4870b675E.exit.critedge", %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h682a465a928c1da9E.exit", %bb.ad, %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h682a465a928c1da9E.exit.thread", %bb.aa, %bb.s
  ret void

bb.aa:                                            ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !20785)
  call void @llvm.experimental.noalias.scope.decl(metadata !20788)
  call void @llvm.experimental.noalias.scope.decl(metadata !20791)
  call void @llvm.experimental.noalias.scope.decl(metadata !20794)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !noalias !20797, !nonnull !8, !noundef !8
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cv = load ptr, ptr %i.s, align 8, !alias.scope !20797, !noundef !8
  %i.cw = load i64, ptr %i.t, align 8, !alias.scope !20797, !noundef !8
  call void %i.ct(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cu, ptr noundef %i.cv, i64 noundef %i.cw), !inline_history !20711
  br label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h33a1640e4870b675E.exit"

"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h682a465a928c1da9E.exit": ; preds = %bb.g, %bb.z
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 3, ptr %i.cx, align 8
  br label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h33a1640e4870b675E.exit"

bb.ab:                                            ; preds = %bb.r
  %lpad.thr_comm.split-lp74 = landingpad { ptr, i32 }
          cleanup
  br label %.thread66

bb.ac:                                            ; preds = %bb.d
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %.thread66

"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h682a465a928c1da9E.exit.thread": ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20798)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20801)
  %i.cz = load ptr, ptr %2, align 8, !alias.scope !20804, !noundef !8 ; 2 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h33a1640e4870b675E.exit", label %bb.ad

bb.ad:                                            ; preds = %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h682a465a928c1da9E.exit.thread"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20805)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20808)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20811)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20814)
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %i.dc = load ptr, ptr %i.db, align 8, !noalias !20817, !nonnull !8, !noundef !8
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !alias.scope !20817, !noundef !8
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dh = load i64, ptr %i.dg, align 8, !alias.scope !20817, !noundef !8
  tail call void %i.dc(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dd, ptr noundef %i.df, i64 noundef %i.dh), !inline_history !20711
  br label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h33a1640e4870b675E.exit"

bb.ae:                                            ; preds = %bb.a, %bb.q
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20818)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20821)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20824)
  %i.di = load ptr, ptr %3, align 8, !alias.scope !20827, !nonnull !8, !align !461, !noundef !8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.dk = load ptr, ptr %i.dj, align 8, !noalias !20827, !nonnull !8, !noundef !8
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 8
end_hunk_0
begin_hunk_1_@"_ZN5xtask6common6assets14download_asset28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hfcb531a5aa52faeeE":bb.a
  store i64 2, ptr %.sroa.6.0..sroa_idx.i.i.i139, align 8, !noalias !33467
  %.sroa.7.0..sroa_idx.i.i.i140 = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx.i.i.i140, align 8, !noalias !33467
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bd, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.bb)
          to label %bb.an unwind label %bb.ao, !noalias !33468

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !33459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !33452
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !33469
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !33469
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.bd, i64 24, i1 false), !noalias !33446
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store ptr %i.el, ptr %i.ew, align 8, !noalias !33472
  store i64 3, ptr %i.az, align 8, !noalias !33472
  %i.ex = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h44ae63a85c1ae231E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.ba, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.az)
          to label %bb.ep unwind label %bb.aq

bb.ao:                                            ; preds = %bb.am
  %i.ey = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN6anyhow5error65_$LT$impl$u20$core..ops..drop..Drop$u20$for$u20$anyhow..Error$GT$4drop17hf449d51980abb73cE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.be)
          to label %.body142 unwind label %bb.ap, !noalias !33468

bb.ap:                                            ; preds = %bb.ao
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !33468
  unreachable

bb.aq:                                            ; preds = %bb.an
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %.body142

bb.ar:                                            ; preds = %_ZN3std2fs11OpenOptions4open17h053f656398d4292aE.exit
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.fc = load i32, ptr %i.fb, align 4, !range !13682, !alias.scope !33410, !noalias !33413, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 202 ; 2 uses
  store i8 1, ptr %i.fd, align 2
  store i32 %i.fc, ptr %i.dc, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf)
  invoke void @_ZN3std2fs4File9try_clone17hd9f8be43e0e710deE(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.cf, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.dc)
          to label %bb.at unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.at:                                            ; preds = %bb.ar
  %i.ff = load i32, ptr %i.cf, align 8, !range !10275, !alias.scope !33475, !noalias !33478, !noundef !8
  %i.fg = trunc nuw i32 %i.ff to i1
  br i1 %i.fg, label %bb.au, label %bb.bc

bb.au:                                            ; preds = %bb.at
  %i.fh = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !alias.scope !33475, !noalias !33478, !nonnull !8, !noundef !8
  %i.fj = invoke fastcc noundef nonnull ptr @"_ZN52_$LT$E$u20$as$u20$anyhow..context..ext..StdError$GT$11ext_context17h2d985bcc3551e044E"(ptr noundef nonnull %i.fi, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1176, i64 noundef 18)
          to label %bb.ax unwind label %bb.aw     ; 2 uses

bb.av:                                            ; preds = %bb.aw, %bb.as
  %.pn32 = phi { ptr, i32 } [ %i.fk, %bb.aw ], [ %i.fe, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  br label %.body163

bb.aw:                                            ; preds = %bb.au
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.ax:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  %i.fl = load ptr, ptr %i.dj, align 8, !nonnull !8, !align !461, !noundef !8
  %i.fm = load ptr, ptr %i.dk, align 8, !nonnull !8, !align !461, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !33480
  store ptr %i.fj, ptr %i.ay, align 8, !noalias !33480
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !33480
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !33486
  store ptr %i.fl, ptr %i.aw, align 8, !noalias !33486
  %.sroa.42.0..sroa_idx.i.i.i148 = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.42.0..sroa_idx.i.i.i148, align 8, !noalias !33486
  %i.fn = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store ptr %i.fm, ptr %i.fn, align 8, !noalias !33486
  %.sroa.46.0..sroa_idx.i.i.i149 = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.46.0..sroa_idx.i.i.i149, align 8, !noalias !33486
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !33493
  store ptr @1205, ptr %i.av, align 8, !noalias !33501
  %.sroa.4.0..sroa_idx.i.i.i150 = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx.i.i.i150, align 8, !noalias !33501
  %.sroa.5.0..sroa_idx.i.i.i151 = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store ptr %i.aw, ptr %.sroa.5.0..sroa_idx.i.i.i151, align 8, !noalias !33501
  %.sroa.6.0..sroa_idx.i.i.i152 = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store i64 2, ptr %.sroa.6.0..sroa_idx.i.i.i152, align 8, !noalias !33501
  %.sroa.7.0..sroa_idx.i.i.i153 = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx.i.i.i153, align 8, !noalias !33501
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.av)
          to label %bb.ay unwind label %bb.az, !noalias !33502

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !33493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !33486
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !33503
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !33503
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ax, i64 24, i1 false), !noalias !33480
  %i.fo = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store ptr %i.fj, ptr %i.fo, align 8, !noalias !33506
  store i64 3, ptr %i.at, align 8, !noalias !33506
  %i.fp = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h44ae63a85c1ae231E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.au, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.at)
          to label %bb.en unwind label %bb.bb

bb.az:                                            ; preds = %bb.ax
  %i.fq = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN6anyhow5error65_$LT$impl$u20$core..ops..drop..Drop$u20$for$u20$anyhow..Error$GT$4drop17hf449d51980abb73cE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ay)
          to label %.body163 unwind label %bb.ba, !noalias !33502

bb.ba:                                            ; preds = %bb.az
  %i.fr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !33502
  unreachable

bb.bb:                                            ; preds = %bb.ay
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %.body163

bb.bc:                                            ; preds = %bb.at
  %i.ft = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.fu = load i32, ptr %i.ft, align 4, !range !13682, !alias.scope !33475, !noalias !33478, !noundef !8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  call void @llvm.experimental.noalias.scope.decl(metadata !33509)
  call void @llvm.experimental.noalias.scope.decl(metadata !33512)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !33515
  %i.fv = call noundef dereferenceable_or_null(8192) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 8192, i64 noundef range(i64 1, 9) 1) #47, !noalias !33515 ; 2 uses
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 8192, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @445) #54
          to label %.noexc.i.i unwind label %bb.be, !noalias !33520

.noexc.i.i:                                       ; preds = %bb.bd
  unreachable

bb.be:                                            ; preds = %bb.bd
  %i.fx = landingpad { ptr, i32 }
          cleanup
  %i.fy = call noundef i32 @close(i32 noundef range(i32 0, -1) %i.fu) #47, !noalias !33520 ; 0 uses
  br label %.body163

bb.bf:                                            ; preds = %bb.bc
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i64 8192, ptr %i.fz, align 8, !alias.scope !33520
  %.sroa.4.0..sroa_idx.i.i161 = getelementptr inbounds nuw i8, ptr %0, i64 400
  store ptr %i.fv, ptr %.sroa.4.0..sroa_idx.i.i161, align 8, !alias.scope !33520
  %.sroa.5.0..sroa_idx.i.i162 = getelementptr inbounds nuw i8, ptr %0, i64 408
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i162, align 8, !alias.scope !33520
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i8 0, ptr %i.ga, align 8, !alias.scope !33520
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 420
  store i32 %i.fu, ptr %i.gb, align 4, !alias.scope !33520
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 201
  store i8 1, ptr %i.gc, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, ptr noundef nonnull align 8 dereferenceable(32) @1177, i64 32, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !33521)
  call void @llvm.experimental.noalias.scope.decl(metadata !33524)
  call void @llvm.experimental.noalias.scope.decl(metadata !33526)
  call void @llvm.experimental.noalias.scope.decl(metadata !33529)
  call void @llvm.experimental.noalias.scope.decl(metadata !33532)
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ge = load i64, ptr %i.gd, align 8, !alias.scope !33535, !noalias !33536, !noundef !8 ; 4 uses
  %i.gf = icmp ult i64 %i.ge, 88686269585142076
  call void @llvm.assume(i1 %i.gf)
  %i.gg = icmp eq i64 %i.ge, 0
  br i1 %i.gg, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$3get17h1828a5dce7112c54E.exit.thread", label %bb.bg

"_ZN4http6header3map18HeaderMap$LT$T$GT$3get17h1828a5dce7112c54E.exit.thread": ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  br label %.thread427

bb.bg:                                            ; preds = %bb.bf
  %i.gh = call fastcc noundef i16 @_ZN4http6header3map15hash_elem_using17hfa00c2547dd9d71bE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.dh, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.bv), !noalias !33539 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.gj = load i16, ptr %i.gi, align 8, !alias.scope !33535, !noalias !33536, !noundef !8 ; 3 uses
  %i.gk = and i16 %i.gj, %i.gh
  %i.gl = zext nneg i16 %i.gk to i64
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.gn = load i64, ptr %i.gm, align 8, !alias.scope !33535, !noalias !33536, !noundef !8 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.gp = load ptr, ptr %i.go, align 8, !alias.scope !33535, !noalias !33536, !nonnull !8, !align !20674
  %i.gq = zext i16 %i.gj to i64
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.gs = load ptr, ptr %i.gr, align 8, !alias.scope !33535, !noalias !33536, !nonnull !8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.gv = load ptr, ptr %i.bv, align 8, !alias.scope !33524, !noalias !33521 ; 4 uses
  %i.gw = icmp eq ptr %i.gv, null                 ; 4 uses
  %not..i.i.i.i.i.i = xor i1 %i.gw, true
  %i.gx = load i8, ptr %i.gt, align 8, !range !20652, !alias.scope !33524, !noalias !33521
  %i.gy = load i64, ptr %i.gu, align 8, !alias.scope !33524, !noalias !33521 ; 4 uses
  %i.gz = load ptr, ptr %i.gt, align 8, !alias.scope !33524, !noalias !33521 ; 3 uses
  %.not572 = icmp eq i64 %i.gn, 0
  br label %.outer

.outer:                                           ; preds = %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread.i.i.i.i", %bb.bg
  %.sroa.05.0.i.i.i.i.ph = phi i64 [ %i.hm, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread.i.i.i.i" ], [ 0, %bb.bg ] ; 2 uses
  %.sroa.0.0.i.i.i.i.ph = phi i64 [ %i.hn, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread.i.i.i.i" ], [ %i.gl, %bb.bg ] ; 2 uses
  %i.ha = icmp ult i64 %.sroa.0.0.i.i.i.i.ph, %i.gn ; 2 uses
  %.not572.not = xor i1 %.not572, true
  %brmerge = or i1 %i.ha, %.not572.not
  %.sroa.0.0.i.i.i.i.ph.mux = select i1 %i.ha, i64 %.sroa.0.0.i.i.i.i.ph, i64 0 ; 3 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %.sroa.0.0.i.i.i.i.ph.mux ; 2 uses
  %i.hc = load i16, ptr %i.hb, align 2, !noalias !33540, !noundef !8 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.hc, -1
  br i1 %.not.i.i.i.i, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$4get217h338f0330c7b1989aE.exit.i", label %bb.bh

bb.bh:                                            ; preds = %.loopexit
  %i.hd = zext i16 %i.hc to i64                   ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 2
  %i.hf = load i16, ptr %i.he, align 2, !noalias !33540, !noundef !8 ; 2 uses
  %i.hg = and i16 %i.hf, %i.gj
  %i.hh = zext i16 %i.hg to i64
  %i.hi = sub i64 %.sroa.0.0.i.i.i.i.ph.mux, %i.hh
  %i.hj = and i64 %i.hi, %i.gq
  %i.hk = icmp samesign ugt i64 %.sroa.05.0.i.i.i.i.ph, %i.hj
  br i1 %i.hk, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$4get217h338f0330c7b1989aE.exit.i", label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hl = icmp eq i16 %i.hf, %i.gh
  br i1 %i.hl, label %bb.bj, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread.i.i.i.i"

"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread.i.i.i.i": ; preds = %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.i.i.i.i", %.split.i.i.i.i, %bb.bm, %bb.bk, %bb.bi
  %i.hm = add nuw nsw i64 %.sroa.05.0.i.i.i.i.ph, 1
  %i.hn = add i64 %.sroa.0.0.i.i.i.i.ph.mux, 1
  br label %.outer

bb.bj:                                            ; preds = %bb.bi
  %i.ho = icmp samesign ugt i64 %i.ge, %i.hd
  br i1 %i.ho, label %bb.bk, label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  %i.hp = getelementptr inbounds nuw [104 x i8], ptr %i.gs, i64 %i.hd ; 5 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 64
  %i.hr = load ptr, ptr %i.hq, align 8, !noalias !33540, !noundef !8
  %i.hs = icmp ne ptr %i.hr, null                 ; 2 uses
  %i.ht = xor i1 %i.gw, %i.hs
  br i1 %i.ht, label %bb.bl, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread.i.i.i.i"

bb.bl:                                            ; preds = %bb.bk
  br i1 %i.hs, label %bb.bm, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.i.i.i.i"

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.assume(i1 %not..i.i.i.i.i.i)
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hp, i64 80
  %i.hv = load i64, ptr %i.hu, align 8, !noalias !33540, !noundef !8
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.hv, %i.gy
  br i1 %.not.i.i.i.i.i.i.i.i, label %.split.i.i.i.i, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread.i.i.i.i"

.split.i.i.i.i:                                   ; preds = %bb.bm
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hp, i64 72
  %i.hx = load ptr, ptr %i.hw, align 8, !noalias !33540, !noundef !8
  %bcmp.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr %i.hx, ptr %i.gz, i64 %i.gy), !noalias !33540
  %i.hy = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.hy, label %"_ZN92_$LT$http..header..name..HeaderName$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find17h54bdff71bbc06893E.exit.i.i", label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread.i.i.i.i"

"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.i.i.i.i": ; preds = %bb.bl
  call void @llvm.assume(i1 %i.gw)
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hp, i64 72
  %i.ia = load i8, ptr %i.hz, align 8, !range !20652, !noalias !33540, !noundef !8
  %i.ib = icmp eq i8 %i.ia, %i.gx
  br i1 %i.ib, label %"_ZN92_$LT$http..header..name..HeaderName$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find17h54bdff71bbc06893E.exit.i.i", label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread.i.i.i.i"

bb.bn:                                            ; preds = %bb.bj
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.hd, i64 noundef %i.ge, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @574) #54
          to label %.noexc.i unwind label %bb.bo, !noalias !33541

.noexc.i:                                         ; preds = %bb.bn
  unreachable

"_ZN92_$LT$http..header..name..HeaderName$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find17h54bdff71bbc06893E.exit.i.i": ; preds = %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.i.i.i.i", %.split.i.i.i.i
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hp, i64 24
  br label %"_ZN4http6header3map18HeaderMap$LT$T$GT$4get217h338f0330c7b1989aE.exit.i"

bb.bo:                                            ; preds = %bb.bn
  %i.id = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.gw, label %.body166, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ie = getelementptr inbounds nuw i8, ptr %i.gv, i64 32
  %i.if = load ptr, ptr %i.ie, align 8, !noalias !33542, !nonnull !8, !noundef !8
  %i.ig = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  invoke void %i.if(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ig, ptr noundef %i.gz, i64 noundef %i.gy)
          to label %.body166 unwind label %bb.br, !noalias !33521, !inline_history !19544

"_ZN4http6header3map18HeaderMap$LT$T$GT$4get217h338f0330c7b1989aE.exit.i": ; preds = %bb.bh, %.loopexit, %"_ZN92_$LT$http..header..name..HeaderName$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find17h54bdff71bbc06893E.exit.i.i"
  %.sroa.0.0.i.i = phi ptr [ %i.ic, %"_ZN92_$LT$http..header..name..HeaderName$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find17h54bdff71bbc06893E.exit.i.i" ], [ null, %.loopexit ], [ null, %bb.bh ] ; 3 uses
  %i.ih = icmp eq ptr %i.gv, null
  br i1 %i.ih, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$3get17h1828a5dce7112c54E.exit", label %bb.bq

bb.bq:                                            ; preds = %"_ZN4http6header3map18HeaderMap$LT$T$GT$4get217h338f0330c7b1989aE.exit.i"
  %i.ii = getelementptr inbounds nuw i8, ptr %i.gv, i64 32
  %i.ij = load ptr, ptr %i.ii, align 8, !noalias !33555, !nonnull !8, !noundef !8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  invoke void %i.ij(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ik, ptr noundef %i.gz, i64 noundef %i.gy)
          to label %"_ZN4http6header3map18HeaderMap$LT$T$GT$3get17h1828a5dce7112c54E.exit" unwind label %bb.bs, !inline_history !33568

bb.br:                                            ; preds = %bb.bp
  %i.il = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !33521
  unreachable

bb.bs:                                            ; preds = %bb.bq
  %i.im = landingpad { ptr, i32 }
          cleanup
  br label %.body166

"_ZN4http6header3map18HeaderMap$LT$T$GT$3get17h1828a5dce7112c54E.exit": ; preds = %"_ZN4http6header3map18HeaderMap$LT$T$GT$4get217h338f0330c7b1989aE.exit.i", %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  %.not.i = icmp eq ptr %.sroa.0.0.i.i, null
  br i1 %.not.i, label %.thread427, label %bb.bt

bb.bt:                                            ; preds = %"_ZN4http6header3map18HeaderMap$LT$T$GT$3get17h1828a5dce7112c54E.exit"
  %i.in = getelementptr i8, ptr %.sroa.0.0.i.i, i64 8
  %.val.i = load ptr, ptr %i.in, align 8, !nonnull !8, !noundef !8 ; 7 uses
  %i.io = getelementptr i8, ptr %.sroa.0.0.i.i, i64 16
  %.val3.i = load i64, ptr %i.io, align 8, !noundef !8 ; 8 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.val3.i
  %i.iq = icmp samesign eq i64 %.val3.i, 0
  br i1 %i.iq, label %.thread427, label %.lr.ph.i.i.i

bb.bu:                                            ; preds = %.lr.ph.i.i.i
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.03.01.i.i.i, i64 1 ; 2 uses
  %i.is = icmp eq ptr %i.ir, %i.ip
  br i1 %i.is, label %bb.bv, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bt, %bb.bu
  %.sroa.03.01.i.i.i = phi ptr [ %i.ir, %bb.bu ], [ %.val.i, %bb.bt ] ; 2 uses
  %i.it = load i8, ptr %.sroa.03.01.i.i.i, align 1, !noundef !8 ; 2 uses
  %i.iu = add i8 %i.it, -32
  %or.cond.i.i.i = icmp ult i8 %i.iu, 95
  %i.iv = icmp eq i8 %i.it, 9
  %or.cond1.i.i.i = or i1 %i.iv, %or.cond.i.i.i
  br i1 %or.cond1.i.i.i, label %bb.bu, label %.thread427

bb.bv:                                            ; preds = %bb.bu
  %cond = icmp eq i64 %.val3.i, 1
  %i.iw = load i8, ptr %.val.i, align 1, !alias.scope !33569, !noalias !33576 ; 2 uses
  br i1 %cond, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  switch i8 %i.iw, label %.lr.ph.i.i.i169.preheader [
    i8 43, label %.thread427
    i8 45, label %.thread427
  ]

.lr.ph.i.i.i169.preheader:                        ; preds = %bb.ca, %bb.by, %bb.bw
  %.sroa.01.162.i.i.i.ph = phi ptr [ %i.ix, %bb.by ], [ %.val.i, %bb.ca ], [ %.val.i, %bb.bw ]
  %.sroa.16.161.i.i.i.ph = phi i64 [ %i.iy, %bb.by ], [ %.val3.i, %bb.ca ], [ 1, %bb.bw ]
  br label %.lr.ph.i.i.i169

bb.bx:                                            ; preds = %bb.bv
  %cond.i.i.i = icmp eq i8 %i.iw, 43
  br i1 %cond.i.i.i, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %bb.bx
  %i.ix = getelementptr inbounds nuw i8, ptr %.val.i, i64 1 ; 2 uses
  %i.iy = add i64 %.val3.i, -1                    ; 2 uses
  %i.iz = icmp ult i64 %.val3.i, 18
  br i1 %i.iz, label %.lr.ph.i.i.i169.preheader, label %.preheader53.i.i.i

.preheader53.i.i.i:                               ; preds = %bb.ca, %bb.by
  %.sroa.16.0.ph.i.i.i = phi i64 [ %.val3.i, %bb.ca ], [ %i.iy, %bb.by ] ; 2 uses
  %.sroa.01.0.ph.i.i.i = phi ptr [ %.val.i, %bb.ca ], [ %i.ix, %bb.by ]
  %.not.i.not.i.i553 = icmp eq i64 %.sroa.16.0.ph.i.i.i, 0
  br i1 %.not.i.not.i.i553, label %.thread427, label %.lr.ph

bb.bz:                                            ; preds = %bb.cb
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i556, i64 1
  %i.jb = add i64 %.sroa.16.0.i.i.i555, -1        ; 2 uses
  %.not.i.not.i.i = icmp eq i64 %i.jb, 0
  br i1 %.not.i.not.i.i, label %.thread427, label %.lr.ph

bb.ca:                                            ; preds = %bb.bx
  %i.jc = icmp ult i64 %.val3.i, 17
  br i1 %i.jc, label %.lr.ph.i.i.i169.preheader, label %.preheader53.i.i.i

.lr.ph:                                           ; preds = %.preheader53.i.i.i, %bb.bz
  %.sroa.01.0.i.i.i556 = phi ptr [ %i.ja, %bb.bz ], [ %.sroa.01.0.ph.i.i.i, %.preheader53.i.i.i ] ; 2 uses
  %.sroa.16.0.i.i.i555 = phi i64 [ %i.jb, %bb.bz ], [ %.sroa.16.0.ph.i.i.i, %.preheader53.i.i.i ]
  %.sroa.017.0.i.i.i554 = phi i64 [ %i.jl, %bb.bz ], [ 0, %.preheader53.i.i.i ]
  %i.jd = load i8, ptr %.sroa.01.0.i.i.i556, align 1, !alias.scope !33569, !noalias !33576, !noundef !8
  %i.je = zext i8 %i.jd to i32
  %i.jf = add nsw i32 %i.je, -48                  ; 2 uses
  %i.jg = icmp ult i32 %i.jf, 10
  br i1 %i.jg, label %bb.cb, label %.thread427

bb.cb:                                            ; preds = %.lr.ph
  %i.jh = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.017.0.i.i.i554, i64 10) ; 2 uses
  %i.ji = extractvalue { i64, i1 } %i.jh, 0       ; 2 uses
  %i.jj = extractvalue { i64, i1 } %i.jh, 1
  %i.jk = zext nneg i32 %i.jf to i64
  %i.jl = add i64 %i.ji, %i.jk                    ; 3 uses
  %.not50.i.i.i = icmp ult i64 %i.jl, %i.ji
  %or.cond.i.i = select i1 %i.jj, i1 true, i1 %.not50.i.i.i
  br i1 %or.cond.i.i, label %.thread427, label %bb.bz

.lr.ph.i.i.i169:                                  ; preds = %.lr.ph.i.i.i169.preheader, %bb.cc
  %.sroa.01.162.i.i.i = phi ptr [ %i.js, %bb.cc ], [ %.sroa.01.162.i.i.i.ph, %.lr.ph.i.i.i169.preheader ] ; 2 uses
  %.sroa.16.161.i.i.i = phi i64 [ %i.jr, %bb.cc ], [ %.sroa.16.161.i.i.i.ph, %.lr.ph.i.i.i169.preheader ]
  %.sroa.017.160.i.i.i = phi i64 [ %i.ju, %bb.cc ], [ 0, %.lr.ph.i.i.i169.preheader ]
  %i.jm = load i8, ptr %.sroa.01.162.i.i.i, align 1, !alias.scope !33569, !noalias !33576, !noundef !8
  %i.jn = zext i8 %i.jm to i32
  %i.jo = add nsw i32 %i.jn, -48                  ; 2 uses
  %i.jp = icmp ugt i32 %i.jo, 9
  br i1 %i.jp, label %.thread427, label %bb.cc

bb.cc:                                            ; preds = %.lr.ph.i.i.i169
  %i.jq = mul i64 %.sroa.017.160.i.i.i, 10
  %i.jr = add nsw i64 %.sroa.16.161.i.i.i, -1     ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.01.162.i.i.i, i64 1
  %i.jt = zext nneg i32 %i.jo to i64
  %i.ju = add i64 %i.jq, %i.jt                    ; 2 uses
  %.not51.i.i.i = icmp eq i64 %i.jr, 0
  br i1 %.not51.i.i.i, label %.thread427, label %.lr.ph.i.i.i169

.thread427:                                       ; preds = %.lr.ph.i.i.i, %bb.bz, %.lr.ph, %bb.cb, %bb.cc, %.lr.ph.i.i.i169, %.preheader53.i.i.i, %"_ZN4http6header3map18HeaderMap$LT$T$GT$3get17h1828a5dce7112c54E.exit.thread", %"_ZN4http6header3map18HeaderMap$LT$T$GT$3get17h1828a5dce7112c54E.exit", %bb.bt, %bb.bw, %bb.bw
  %.sroa.03.0.i = phi i64 [ 0, %bb.bt ], [ 0, %bb.bw ], [ 1, %bb.bz ], [ 0, %bb.bw ], [ 0, %"_ZN4http6header3map18HeaderMap$LT$T$GT$3get17h1828a5dce7112c54E.exit" ], [ 1, %.preheader53.i.i.i ], [ 0, %"_ZN4http6header3map18HeaderMap$LT$T$GT$3get17h1828a5dce7112c54E.exit.thread" ], [ 1, %bb.cc ], [ 0, %.lr.ph.i.i.i169 ], [ 0, %.lr.ph ], [ 0, %bb.cb ], [ 0, %.lr.ph.i.i.i ]
  %.sroa.34.0.i = phi i64 [ undef, %bb.bt ], [ undef, %bb.bw ], [ %i.jl, %bb.bz ], [ undef, %bb.bw ], [ undef, %"_ZN4http6header3map18HeaderMap$LT$T$GT$3get17h1828a5dce7112c54E.exit" ], [ 0, %.preheader53.i.i.i ], [ undef, %"_ZN4http6header3map18HeaderMap$LT$T$GT$3get17h1828a5dce7112c54E.exit.thread" ], [ %i.ju, %bb.cc ], [ undef, %.lr.ph.i.i.i169 ], [ undef, %.lr.ph ], [ undef, %bb.cb ], [ undef, %.lr.ph.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6342)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce)
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ce, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1178)
          to label %bb.ce unwind label %bb.cd

bb.cd:                                            ; preds = %.thread427
  %i.jv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  br label %.body173

bb.ce:                                            ; preds = %.thread427
  store i8 0, ptr %i.fd, align 2
  %i.jw = load i32, ptr %i.dc, align 8, !range !13682, !noundef !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6342, ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !33578
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cf, %bb.ce
  %i.jx = atomicrmw add ptr @_ZN5tokio7runtime4task2id2Id4next7NEXT_ID17h767d8531f09ca4cbE, i64 1 monotonic, align 8, !noalias !33578 ; 2 uses
  %.not.i.i = icmp eq i64 %i.jx, 0
  br i1 %.not.i.i, label %bb.cf, label %bb.cg
end_hunk_1
begin_hunk_2_@_ZN7reqwest10async_impl6client6Client7request17h388fa87f11cf124eE:bb.a

bb.c:                                             ; preds = %bb.b
  %switch.i.i.i = icmp samesign ult i8 %.sroa.0.0.copyload1, 10
  %i.g = icmp eq i64 %.sroa.68.0.copyload, 0
  %or.cond = select i1 %switch.i.i.i, i1 true, i1 %i.g
  br i1 %or.cond, label %"_ZN4core3ptr123drop_in_place$LT$reqwest..async_impl..client..Client..request$LT$alloc..string..String$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hc044ca5b6c03599aE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i": ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.55.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.55.0.copyload, i64 noundef %.sroa.68.0.copyload, i64 noundef 1) #47, !noalias !42664
  br label %"_ZN4core3ptr123drop_in_place$LT$reqwest..async_impl..client..Client..request$LT$alloc..string..String$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hc044ca5b6c03599aE.exit"

bb.d:                                             ; preds = %bb.b
  %.sroa.5.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6.sroa.17, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.3.0..sroa_idx, i64 72, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.sroa.19, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx3, i64 7, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.8, i8 0, i64 16, i1 false)
  br label %"_ZN4core3ptr123drop_in_place$LT$reqwest..async_impl..client..Client..request$LT$alloc..string..String$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hc044ca5b6c03599aE.exit"

"_ZN4core3ptr123drop_in_place$LT$reqwest..async_impl..client..Client..request$LT$alloc..string..String$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hc044ca5b6c03599aE.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i", %bb.c, %bb.d
  %.sroa.6.sroa.21.0 = phi i64 [ %.sroa.68.0.copyload, %bb.d ], [ undef, %bb.c ], [ undef, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i" ]
  %.sroa.6.sroa.20.0 = phi ptr [ %.sroa.55.0.copyload, %bb.d ], [ undef, %bb.c ], [ undef, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i" ]
  %.sroa.6.sroa.18.0 = phi i8 [ %.sroa.0.0.copyload1, %bb.d ], [ undef, %bb.c ], [ undef, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i" ]
  %.sroa.6.sroa.16.0 = phi ptr [ %i.f, %bb.d ], [ undef, %bb.c ], [ undef, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i" ]
  %.sroa.5.0 = phi ptr [ undef, %bb.d ], [ %i.f, %bb.c ], [ %i.f, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i" ]
  %.sroa.0.0 = phi i64 [ 0, %bb.d ], [ 2, %bb.c ], [ 2, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.h = atomicrmw add ptr %.0.val, i64 1 monotonic, align 8
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %"_ZN4core3ptr123drop_in_place$LT$reqwest..async_impl..client..Client..request$LT$alloc..string..String$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hc044ca5b6c03599aE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %.sroa.0.0, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.5.0, ptr %.sroa.5.0..sroa_idx2, align 8
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx4.sroa_idx, align 8
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 0, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx4.sroa_idx, align 8
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx4.sroa_idx, align 8
  %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx4.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.8, i64 16, i1 false)
  %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx4.sroa_idx, align 8
  %.sroa.6.sroa.10.0..sroa.6.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i64 0, ptr %.sroa.6.sroa.10.0..sroa.6.0..sroa_idx4.sroa_idx, align 8
  %.sroa.6.sroa.11.0..sroa.6.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.6.sroa.11.0..sroa.6.0..sroa_idx4.sroa_idx, align 8
  %.sroa.6.sroa.12.0..sroa.6.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i64 0, ptr %.sroa.6.sroa.12.0..sroa.6.0..sroa_idx4.sroa_idx, align 8
  %.sroa.6.sroa.13.0..sroa.6.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i16 0, ptr %.sroa.6.sroa.13.0..sroa.6.0..sroa_idx4.sroa_idx, align 8
  %.sroa.6.sroa.15.0..sroa.6.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i64 %i.c, ptr %.sroa.6.sroa.15.0..sroa.6.0..sroa_idx4.sroa_idx, align 8
  %.sroa.6.sroa.16.0..sroa.6.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store ptr %.sroa.6.sroa.16.0, ptr %.sroa.6.sroa.16.0..sroa.6.0..sroa_idx4.sroa_idx, align 8
  %.sroa.6.sroa.17.0..sroa.6.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6.sroa.17.0..sroa.6.0..sroa_idx4.sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6.sroa.17, i64 72, i1 false)
  %.sroa.6.sroa.18.0..sroa.6.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  store i8 %.sroa.6.sroa.18.0, ptr %.sroa.6.sroa.18.0..sroa.6.0..sroa_idx4.sroa_idx, align 8
  %.sroa.6.sroa.19.0..sroa.6.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 225
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.sroa.19.0..sroa.6.0..sroa_idx4.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.sroa.19, i64 7, i1 false)
  %.sroa.6.sroa.20.0..sroa.6.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  store ptr %.sroa.6.sroa.20.0, ptr %.sroa.6.sroa.20.0..sroa.6.0..sroa_idx4.sroa_idx, align 8
  %.sroa.6.sroa.21.0..sroa.6.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store i64 %.sroa.6.sroa.21.0, ptr %.sroa.6.sroa.21.0..sroa.6.0..sroa_idx4.sroa_idx, align 8
  %.sroa.6.sroa.22.0..sroa.6.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  store ptr null, ptr %.sroa.6.sroa.22.0..sroa.6.0..sroa_idx4.sroa_idx, align 8
  %.sroa.6.sroa.23.0..sroa.6.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  store i8 2, ptr %.sroa.6.sroa.23.0..sroa.6.0..sroa_idx4.sroa_idx, align 8
  call void @_ZN7reqwest10async_impl7request14RequestBuilder3new17hfe554bcbd3c529d2E(ptr noalias noundef nonnull sret([272 x i8]) align 8 captures(address) dereferenceable(272) %0, ptr noundef nonnull %.0.val, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(264) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.17)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.19)
  ret void

bb.f:                                             ; preds = %"_ZN4core3ptr123drop_in_place$LT$reqwest..async_impl..client..Client..request$LT$alloc..string..String$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hc044ca5b6c03599aE.exit"
  call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr41drop_in_place$LT$http..method..Method$GT$17h30abae5580368b2aE"(ptr noalias noundef align 8 dereferenceable(24) %1) #55
  resume { ptr, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN7reqwest10async_impl7request14RequestBuilder4json17h9ea771070548a0beE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(272) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(272) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(72) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [32 x i8], align 8                ; 11 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 5 uses
  %i.g = alloca [40 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.5 = alloca [32 x i8], align 8            ; 5 uses
  %i.i = alloca [40 x i8], align 8                ; 8 uses
  %i.j = alloca [32 x i8], align 8                ; 4 uses
  %i.k = alloca [40 x i8], align 8                ; 8 uses
  %i.l = load i64, ptr %1, align 8, !range !479, !noundef !8
  %i.m = icmp eq i64 %i.l, 2
  br i1 %i.m, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !42671
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !42675
  %i.n = tail call noundef dereferenceable_or_null(128) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, 9) 1) #47, !noalias !42675 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.c, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hdbad330c31c32612E.exit.i"

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 128, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @104) #54
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.c
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hdbad330c31c32612E.exit.i": ; preds = %bb.b
  store i64 128, ptr %i.c, align 8, !noalias !42671
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  store ptr %i.n, ptr %i.p, align 8, !noalias !42671
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.q, align 8, !noalias !42671
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !42680
  store ptr %i.c, ptr %i.b, align 8, !noalias !42680
  %i.r = invoke fastcc noalias noundef align 8 ptr @"_ZN10serde_json5value3ser81_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$serde_json..value..Value$GT$9serialize17h5d116488b970e604E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %2, ptr noalias noundef align 8 dereferenceable(8) %i.b)
          to label %bb.f unwind label %bb.d, !noalias !42684 ; 2 uses

bb.d:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hdbad330c31c32612E.exit.i"
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val4.i = load i64, ptr %i.c, align 8, !noalias !42671 ; 2 uses
  %i.t = icmp eq i64 %.val4.i, 0
  br i1 %i.t, label %.thread43, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val5.i = load ptr, ptr %i.p, align 8, !noalias !42671, !nonnull !8, !noundef !8
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i, i64 noundef %.val4.i, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !42671
  br label %.thread43

bb.f:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hdbad330c31c32612E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !42680
  %.not.i = icmp eq ptr %i.r, null
  %.sroa.0.0.copyload33 = load i64, ptr %i.c, align 8, !noalias !42685 ; 6 uses
  br i1 %.not.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = icmp eq i64 %.sroa.0.0.copyload33, 0
  br i1 %i.u, label %.thread49, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val3.i = load ptr, ptr %i.p, align 8, !noalias !42671, !nonnull !8, !noundef !8
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %.sroa.0.0.copyload33, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !42671
  br label %.thread49

bb.i:                                             ; preds = %bb.c, %bb.k
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.thread43

.thread49:                                        ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !42671
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  %.sroa.6.0.copyload35 = load ptr, ptr %i.p, align 8, !noalias !42685 ; 4 uses
  %.sroa.8.0.copyload37 = load i64, ptr %i.q, align 8, !noalias !42685
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !42671
  %i.w = icmp eq i64 %.sroa.0.0.copyload33, -9223372036854775808
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.thread49, %bb.j
  %.sroa.6.053 = phi ptr [ %i.r, %.thread49 ], [ %.sroa.6.0.copyload35, %bb.j ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.053) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i16 0, ptr %i.g, align 8
  %i.x = invoke fastcc noundef nonnull align 8 ptr @_ZN7reqwest5error5Error3new17h7a33dd0cec3b22acE(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.g, ptr noalias noundef align 8 %.sroa.6.053)
          to label %bb.ap unwind label %bb.i      ; 2 uses

bb.l:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) @1257, i64 32, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !42686)
  call void @llvm.experimental.noalias.scope.decl(metadata !42689)
  call void @llvm.experimental.noalias.scope.decl(metadata !42691)
  call void @llvm.experimental.noalias.scope.decl(metadata !42694)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !42697, !noalias !42698, !noundef !8 ; 4 uses
  %i.ab = icmp ult i64 %i.aa, 88686269585142076
  call void @llvm.assume(i1 %i.ab)
  %i.ac = icmp eq i64 %i.aa, 0
  br i1 %i.ac, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$12contains_key17hd72bec0a7b061d3aE.exit.thread95", label %bb.m

"_ZN4http6header3map18HeaderMap$LT$T$GT$12contains_key17hd72bec0a7b061d3aE.exit.thread95": ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.z

bb.m:                                             ; preds = %bb.l
  %i.ad = call fastcc noundef i16 @_ZN4http6header3map15hash_elem_using17hfa00c2547dd9d71bE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.y, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.d), !noalias !42701 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.af = load i16, ptr %i.ae, align 8, !alias.scope !42697, !noalias !42698, !noundef !8 ; 3 uses
  %i.ag = and i16 %i.af, %i.ad
  %i.ah = zext nneg i16 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !42697, !noalias !42698, !noundef !8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !42697, !noalias !42698, !nonnull !8, !align !20674
  %i.am = zext i16 %i.af to i64
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !42697, !noalias !42698, !nonnull !8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ar = load ptr, ptr %i.d, align 8, !alias.scope !42689, !noalias !42686 ; 4 uses
  %i.as = icmp eq ptr %i.ar, null                 ; 4 uses
  %not..i.i.i.i.i = xor i1 %i.as, true
  %i.at = load i8, ptr %i.ap, align 8, !range !20652, !alias.scope !42689, !noalias !42686
  %i.au = load i64, ptr %i.aq, align 8, !alias.scope !42689, !noalias !42686 ; 4 uses
  %i.av = load ptr, ptr %i.ap, align 8, !alias.scope !42689, !noalias !42686 ; 3 uses
  %.not = icmp eq i64 %i.aj, 0
  br label %.outer

.outer:                                           ; preds = %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread.i.i.i", %bb.m
  %.sroa.05.0.i.i.i.ph = phi i64 [ %i.bi, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread.i.i.i" ], [ 0, %bb.m ] ; 2 uses
  %.sroa.0.0.i.i.i.ph = phi i64 [ %i.bj, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread.i.i.i" ], [ %i.ah, %bb.m ] ; 2 uses
  %i.aw = icmp ult i64 %.sroa.0.0.i.i.i.ph, %i.aj ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.aw, %.not.not
  %.sroa.0.0.i.i.i.ph.mux = select i1 %i.aw, i64 %.sroa.0.0.i.i.i.ph, i64 0 ; 3 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %.sroa.0.0.i.i.i.ph.mux ; 2 uses
  %i.ay = load i16, ptr %i.ax, align 2, !noalias !42702, !noundef !8 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ay, -1
  br i1 %.not.i.i.i, label %"_ZN92_$LT$http..header..name..HeaderName$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find17h54bdff71bbc06893E.exit.i", label %bb.n

bb.n:                                             ; preds = %.loopexit
  %i.az = zext i16 %i.ay to i64                   ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %i.bb = load i16, ptr %i.ba, align 2, !noalias !42702, !noundef !8 ; 2 uses
  %i.bc = and i16 %i.bb, %i.af
  %i.bd = zext i16 %i.bc to i64
  %i.be = sub i64 %.sroa.0.0.i.i.i.ph.mux, %i.bd
  %i.bf = and i64 %i.be, %i.am
  %i.bg = icmp samesign ugt i64 %.sroa.05.0.i.i.i.ph, %i.bf
  br i1 %i.bg, label %"_ZN92_$LT$http..header..name..HeaderName$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find17h54bdff71bbc06893E.exit.i", label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bh = icmp eq i16 %i.bb, %i.ad
  br i1 %i.bh, label %bb.p, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread.i.i.i"

"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread.i.i.i": ; preds = %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.i.i.i", %.split.i.i.i, %bb.s, %bb.q, %bb.o
  %i.bi = add nuw nsw i64 %.sroa.05.0.i.i.i.ph, 1
  %i.bj = add i64 %.sroa.0.0.i.i.i.ph.mux, 1
  br label %.outer

bb.p:                                             ; preds = %bb.o
  %i.bk = icmp samesign ugt i64 %i.aa, %i.az
  br i1 %i.bk, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.bl = getelementptr inbounds nuw [104 x i8], ptr %i.ao, i64 %i.az ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 64
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !42702, !noundef !8
  %i.bo = icmp ne ptr %i.bn, null                 ; 2 uses
  %i.bp = xor i1 %i.as, %i.bo
  br i1 %i.bp, label %bb.r, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread.i.i.i"

bb.r:                                             ; preds = %bb.q
  br i1 %i.bo, label %bb.s, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.i.i.i"

bb.s:                                             ; preds = %bb.r
  call void @llvm.assume(i1 %not..i.i.i.i.i)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 80
  %i.br = load i64, ptr %i.bq, align 8, !noalias !42702, !noundef !8
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.br, %i.au
  br i1 %.not.i.i.i.i.i.i.i, label %.split.i.i.i, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread.i.i.i"

.split.i.i.i:                                     ; preds = %bb.s
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 72
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !42702, !noundef !8
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr %i.bt, ptr %i.av, i64 %i.au), !noalias !42702
  %i.bu = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.bu, label %"_ZN92_$LT$http..header..name..HeaderName$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find17h54bdff71bbc06893E.exit.i", label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread.i.i.i"

"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.i.i.i": ; preds = %bb.r
  call void @llvm.assume(i1 %i.as)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 72
  %i.bw = load i8, ptr %i.bv, align 8, !range !20652, !noalias !42702, !noundef !8
  %i.bx = icmp eq i8 %i.bw, %i.at
  br i1 %i.bx, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$12contains_key17hd72bec0a7b061d3aE.exit.thread", label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread.i.i.i"

"_ZN4http6header3map18HeaderMap$LT$T$GT$12contains_key17hd72bec0a7b061d3aE.exit.thread": ; preds = %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ae

bb.t:                                             ; preds = %bb.p
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.az, i64 noundef %i.aa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @574) #54
          to label %.noexc.i unwind label %bb.u, !noalias !42703

.noexc.i:                                         ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.t
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.as, label %.thread73, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !noalias !42704, !nonnull !8, !noundef !8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  invoke void %i.ca(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cb, ptr noundef %i.av, i64 noundef %i.au)
          to label %.thread73 unwind label %bb.x, !noalias !42686, !inline_history !19544

"_ZN92_$LT$http..header..name..HeaderName$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find17h54bdff71bbc06893E.exit.i": ; preds = %.split.i.i.i, %bb.n, %.loopexit
  %3 = phi i1 [ false, %.loopexit ], [ true, %.split.i.i.i ], [ false, %bb.n ]
  %i.cc = icmp eq ptr %i.ar, null
  br i1 %i.cc, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$12contains_key17hd72bec0a7b061d3aE.exit", label %bb.w

bb.w:                                             ; preds = %"_ZN92_$LT$http..header..name..HeaderName$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find17h54bdff71bbc06893E.exit.i"
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !noalias !42717, !nonnull !8, !noundef !8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  invoke void %i.ce(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cf, ptr noundef %i.av, i64 noundef %i.au)
          to label %"_ZN4http6header3map18HeaderMap$LT$T$GT$12contains_key17hd72bec0a7b061d3aE.exit" unwind label %.thread79, !inline_history !42730

bb.x:                                             ; preds = %bb.v
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !42686
  unreachable

.thread59:                                        ; preds = %bb.ab, %bb.z
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %.thread73

.thread79:                                        ; preds = %bb.ad, %bb.w
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread73

bb.y:                                             ; preds = %bb.ae
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread43

"_ZN4http6header3map18HeaderMap$LT$T$GT$12contains_key17hd72bec0a7b061d3aE.exit": ; preds = %"_ZN92_$LT$http..header..name..HeaderName$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find17h54bdff71bbc06893E.exit.i", %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %3, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %"_ZN4http6header3map18HeaderMap$LT$T$GT$12contains_key17hd72bec0a7b061d3aE.exit.thread95", %"_ZN4http6header3map18HeaderMap$LT$T$GT$12contains_key17hd72bec0a7b061d3aE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) @1257, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @595, ptr %i.i, align 8, !alias.scope !42731
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @1107, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !42731
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 16, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !42731
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !42731
  %i.ci = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i8 0, ptr %i.ci, align 8, !alias.scope !42731
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke fastcc void @"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_insert217h1a0b2ca5b6840d52E"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.f, ptr noalias noundef align 8 dereferenceable(96) %i.y, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.j, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.i)
          to label %bb.aa unwind label %.thread59

bb.aa:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !42734)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.ck = load i8, ptr %i.cj, align 8, !range !11934, !alias.scope !42737, !noalias !42734, !noundef !8
  %i.cl = icmp eq i8 %i.ck, 3
  br i1 %i.cl, label %bb.ab, label %bb.ac, !prof !14

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @293, i64 noundef 23, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @554, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1724) #54
          to label %.noexc23 unwind label %.thread59

.noexc23:                                         ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.f, i64 40, i1 false), !alias.scope !42739
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.experimental.noalias.scope.decl(metadata !42740)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.cn = load i8, ptr %i.cm, align 8, !range !483, !alias.scope !42740, !noundef !8
  %i.co = icmp eq i8 %i.cn, 2
  br i1 %i.co, label %"_ZN4core3ptr81drop_in_place$LT$core..option..Option$LT$http..header..value..HeaderValue$GT$$GT$17hc8406ce736f21ecaE.exit", label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.experimental.noalias.scope.decl(metadata !42743)
  call void @llvm.experimental.noalias.scope.decl(metadata !42746)
  call void @llvm.experimental.noalias.scope.decl(metadata !42749)
  %i.cp = load ptr, ptr %i.k, align 8, !alias.scope !42752, !nonnull !8, !align !461, !noundef !8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8, !noalias !42752, !nonnull !8, !noundef !8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.ct = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !alias.scope !42752, !noundef !8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !alias.scope !42752, !noundef !8
  invoke void %i.cr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cs, ptr noundef %i.cu, i64 noundef %i.cw)
          to label %"_ZN4core3ptr81drop_in_place$LT$core..option..Option$LT$http..header..value..HeaderValue$GT$$GT$17hc8406ce736f21ecaE.exit" unwind label %.thread79, !inline_history !16735

"_ZN4core3ptr81drop_in_place$LT$core..option..Option$LT$http..header..value..HeaderValue$GT$$GT$17hc8406ce736f21ecaE.exit": ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ae

bb.ae:                                            ; preds = %"_ZN4http6header3map18HeaderMap$LT$T$GT$12contains_key17hd72bec0a7b061d3aE.exit.thread", %"_ZN4http6header3map18HeaderMap$LT$T$GT$12contains_key17hd72bec0a7b061d3aE.exit", %"_ZN4core3ptr81drop_in_place$LT$core..option..Option$LT$http..header..value..HeaderValue$GT$$GT$17hc8406ce736f21ecaE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %.sroa.0.0.copyload33, ptr %i.h, align 8
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.sroa.6.0.copyload35, ptr %.sroa.539.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sroa.8.0.copyload37, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @"_ZN92_$LT$bytes..bytes..Bytes$u20$as$u20$core..convert..From$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$4from17h105911369ca93d58E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.h)
          to label %bb.ag unwind label %bb.y

bb.af:                                            ; preds = %bb.as, %"_ZN4core3ptr56drop_in_place$LT$reqwest..async_impl..client..Client$GT$17hec39b520569f024bE.exit"
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !42753)
  %i.cy = load i64, ptr %1, align 8, !range !491, !alias.scope !42753, !noundef !8
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %.thread41, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !42756)
  call void @llvm.experimental.noalias.scope.decl(metadata !42759)
  %i.db = load ptr, ptr %i.da, align 8, !alias.scope !42762, !noundef !8 ; 2 uses
  %.not.i.i.i26 = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i26, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.experimental.noalias.scope.decl(metadata !42763)
  call void @llvm.experimental.noalias.scope.decl(metadata !42766)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %i.dd = load ptr, ptr %i.dc, align 8, !noalias !42769, !nonnull !8, !noundef !8
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !alias.scope !42769, !noundef !8
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.di = load i64, ptr %i.dh, align 8, !alias.scope !42769, !noundef !8
  invoke void %i.dd(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.de, ptr noundef %i.dg, i64 noundef %i.di)
          to label %.thread41 unwind label %bb.an, !inline_history !14091

bb.aj:                                            ; preds = %bb.ah
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i.i = load ptr, ptr %i.dj, align 8, !alias.scope !42762 ; 5 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i.i = load ptr, ptr %i.dk, align 8, !alias.scope !42762, !nonnull !8, !align !461, !noundef !8 ; 5 uses
  %i.dl = load ptr, ptr %.val1.i.i.i, align 8, !invariant.load !8, !noalias !42762 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i.i.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  invoke void %i.dl(ptr noundef nonnull %.val.i.i.i)
          to label %bb.al unwind label %bb.am, !noalias !42762

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.dm = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !range !33, !invariant.load !8, !noalias !42762 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.dp = load i64, ptr %i.do, align 8, !range !5277, !invariant.load !8, !noalias !42762 ; 2 uses
  %i.dq = icmp ult i64 %i.dp, -9223372036854775807
  call void @llvm.assume(i1 %i.dq)
  %i.dr = icmp eq i64 %i.dn, 0
  br i1 %i.dr, label %.thread41, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i": ; preds = %bb.al
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.dn, i64 noundef range(i64 1, -9223372036854775807) %i.dp) #47, !noalias !42762
  br label %.thread41

bb.am:                                            ; preds = %bb.ak
  %i.ds = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !range !33, !invariant.load !8, !noalias !42762 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.dw = load i64, ptr %i.dv, align 8, !range !5277, !invariant.load !8, !noalias !42762 ; 2 uses
  %i.dx = icmp ult i64 %i.dw, -9223372036854775807
  call void @llvm.assume(i1 %i.dx)
  %i.dy = icmp eq i64 %i.du, 0
  br i1 %i.dy, label %.thread67, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i": ; preds = %bb.am
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.du, i64 noundef range(i64 1, -9223372036854775807) %i.dw) #47, !noalias !42762
  br label %.thread67

bb.an:                                            ; preds = %bb.ai
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %.thread67

.thread67:                                        ; preds = %bb.an, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i", %bb.am
  %eh.lpad-body29 = phi { ptr, i32 } [ %i.dz, %bb.an ], [ %i.ds, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i" ], [ %i.ds, %bb.am ]
  store i64 1, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.da, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5, i64 32, i1 false)
  br label %.thread43

.thread41:                                        ; preds = %bb.ai, %bb.ag, %bb.al, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i"
  store i64 1, ptr %1, align 8
  %.sroa.5.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx3, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %.thread

.thread73:                                        ; preds = %bb.u, %bb.v, %.thread79, %.thread59
  %.pn66 = phi { ptr, i32 } [ %i.ch, %.thread59 ], [ %lpad.thr_comm, %.thread79 ], [ %i.by, %bb.v ], [ %i.by, %bb.u ] ; 2 uses
  %i.ea = icmp eq i64 %.sroa.0.0.copyload33, 0
  br i1 %i.ea, label %.thread43, label %bb.ao

bb.ao:                                            ; preds = %.thread73
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload35) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload35, i64 noundef %.sroa.0.0.copyload33, i64 noundef range(i64 1, -9223372036854775807) 1) #47
  br label %.thread43

bb.ap:                                            ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke fastcc void @"_ZN4core3ptr110drop_in_place$LT$core..result..Result$LT$reqwest..async_impl..request..Request$C$reqwest..error..Error$GT$$GT$17hd547304c3607ec1fE"(ptr noalias noundef align 8 dereferenceable(264) %1)
          to label %bb.ar unwind label %bb.aq

.thread:                                          ; preds = %bb.a, %.thread41, %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(272) %1, i64 272, i1 false)
  ret void

bb.aq:                                            ; preds = %bb.ap
  %i.eb = landingpad { ptr, i32 }
          cleanup
  store i64 2, ptr %1, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.x, ptr %.sroa.56.0..sroa_idx, align 8
  br label %.thread43

bb.ar:                                            ; preds = %bb.ap
end_hunk_2
begin_hunk_3_@"_ZN7reqwest10async_impl8response8Response5bytes28_$u7b$$u7b$closure$u7d$$u7d$17hba0b216e3d972376E":bb.a
  %i.ee = getelementptr i8, ptr %i.eb, i64 %i.ed
  %i.ef = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eg = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.eb, i64 %i.eg
  %i.eh = getelementptr i8, ptr %i.eb, i64 %i.eg
  %next.gep751 = getelementptr i8, ptr %i.eh, i64 16
  store <8 x i16> <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>, ptr %next.gep, align 2, !noalias !43063
  store <8 x i16> <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>, ptr %next.gep751, align 2, !noalias !43063
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ei = icmp eq i64 %index.next, %n.vec
  br i1 %i.ei, label %.lr.ph.i.i.i.i.i.i.preheader755, label %vector.body, !llvm.loop !43066

.lr.ph.i.i.i.i.i.i.preheader755:                  ; preds = %vector.body, %.lr.ph.i.i.i.i.i.i.preheader
  %.sroa.0.09.i.i.i.i.i.i.ph = phi ptr [ %i.eb, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ee, %vector.body ]
  %.sroa.03.08.i.i.i.i.i.i.ph = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ef, %vector.body ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader755, %.lr.ph.i.i.i.i.i.i
  %.sroa.0.09.i.i.i.i.i.i = phi ptr [ %i.el, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.09.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader755 ] ; 3 uses
  %.sroa.03.08.i.i.i.i.i.i = phi i64 [ %i.ej, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.03.08.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader755 ] ; 2 uses
  %i.ej = add nuw nsw i64 %.sroa.03.08.i.i.i.i.i.i, 1
  store i16 -1, ptr %.sroa.0.09.i.i.i.i.i.i, align 2, !noalias !43063
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i.i, i64 2
  store i16 0, ptr %i.ek, align 2, !noalias !43063
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i.i, i64 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %.sroa.03.08.i.i.i.i.i.i, %i.dw
  br i1 %exitcond.not.i.i.i.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17hacb7358607277acfE.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i.i, !llvm.loop !43067

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17hacb7358607277acfE.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha9a886d75417c9a7E.exit.i.i.i.i.i.i"
  %.sroa.0.0.lcssa16.i.i.i.i.i.i = phi ptr [ %i.eb, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha9a886d75417c9a7E.exit.i.i.i.i.i.i" ], [ %i.el, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  store i16 -1, ptr %.sroa.0.0.lcssa16.i.i.i.i.i.i, align 2, !noalias !43063
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa16.i.i.i.i.i.i, i64 2
  store i16 0, ptr %i.em, align 2, !noalias !43063
  %i.en = icmp eq i64 %i.dr, 0
  br i1 %i.en, label %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h7acf44491c982670E.exit.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17hacb7358607277acfE.exit.i.i.i.i"
  %.val.i21.i.i.i = load ptr, ptr %i.av, align 8, !alias.scope !43053, !noalias !43049, !nonnull !8, !noundef !8
  %i.eo = shl nuw nsw i64 %i.dr, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i21.i.i.i, i64 noundef %i.eo, i64 noundef 2) #47, !noalias !43068
  br label %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h7acf44491c982670E.exit.i.i.i.i"

bb.ab:                                            ; preds = %bb.aa
  %i.ep = invoke fastcc noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$8try_grow17haea69580bd90cf09E"(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.aj, i64 noundef %i.dx)
          to label %"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_reserve17hbd1b96306d7f198bE.exit.i.i.i" unwind label %.loopexit.i, !noalias !43054

"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h7acf44491c982670E.exit.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17hacb7358607277acfE.exit.i.i.i.i"
  store ptr %i.eb, ptr %i.av, align 8, !alias.scope !43053, !noalias !43049
  store i64 %i.dx, ptr %i.aw, align 8, !alias.scope !43053, !noalias !43049
  %i.eq = lshr i64 %i.dx, 2
  %i.er = sub nuw nsw i64 %i.dx, %i.eq            ; 3 uses
  %i.es = mul nuw nsw i64 %i.er, 104              ; 2 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !43069
  %i.et = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.es, i64 noundef range(i64 1, 9) 8) #47, !noalias !43069 ; 3 uses
  %i.eu = icmp eq ptr %i.et, null
  br i1 %i.eu, label %.invoke.i.i.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hdbad330c31c32612E.exit.i.i.i.i"

.invoke.i.i.i:                                    ; preds = %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h7acf44491c982670E.exit.i.i.i.i", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i"
  %i.ev = phi i64 [ 2, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i" ], [ 8, %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h7acf44491c982670E.exit.i.i.i.i" ]
  %i.ew = phi i64 [ %i.ea, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i" ], [ %i.es, %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h7acf44491c982670E.exit.i.i.i.i" ]
  %i.ex = phi ptr [ @568, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i" ], [ @569, %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h7acf44491c982670E.exit.i.i.i.i" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.ev, i64 %i.ew, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ex) #54
          to label %.cont.i.i.i unwind label %.loopexit.split-lp.i, !noalias !43054

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hdbad330c31c32612E.exit.i.i.i.i": ; preds = %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h7acf44491c982670E.exit.i.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !43074)
  %.val.i.i.i.i.i = load ptr, ptr %i.ay, align 8, !alias.scope !43077, !noalias !43049, !nonnull !8, !noundef !8 ; 3 uses
  invoke fastcc void @"_ZN4core3ptr96drop_in_place$LT$$u5b$http..header..map..Bucket$LT$http..header..value..HeaderValue$GT$$u5d$$GT$17hf1eb4dfc17aacc06E"(ptr noalias noundef nonnull align 8 %.val.i.i.i.i.i, i64 noundef 0)
          to label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h62614eb66c936b58E.exit.i.i.i.i.i" unwind label %bb.ac, !noalias !43078

bb.ac:                                            ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hdbad330c31c32612E.exit.i.i.i.i"
  %i.ey = landingpad { ptr, i32 }
          cleanup
  %.val4.i.i.i.i.i = load i64, ptr %i.au, align 8, !range !33, !alias.scope !43077, !noalias !43049, !noundef !8 ; 2 uses
  %i.ez = icmp eq i64 %.val4.i.i.i.i.i, 0
  br i1 %i.ez, label %.body.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fa = mul nuw i64 %.val4.i.i.i.i.i, 104
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %i.fa, i64 noundef range(i64 1, -9223372036854775807) 8) #47, !noalias !43078
  br label %.body.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h62614eb66c936b58E.exit.i.i.i.i.i": ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hdbad330c31c32612E.exit.i.i.i.i"
  %.val2.i.i.i.i.i = load i64, ptr %i.au, align 8, !range !33, !alias.scope !43077, !noalias !43049, !noundef !8 ; 2 uses
  %i.fb = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.fb, label %"_ZN4core3ptr109drop_in_place$LT$alloc..vec..Vec$LT$http..header..map..Bucket$LT$http..header..value..HeaderValue$GT$$GT$$GT$17hb65dc6e3ed25b711E.exit.i.i.i.i", label %bb.ae

bb.ae:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h62614eb66c936b58E.exit.i.i.i.i.i"
  %i.fc = mul nuw i64 %.val2.i.i.i.i.i, 104
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %i.fc, i64 noundef range(i64 1, -9223372036854775807) 8) #47, !noalias !43078
  br label %"_ZN4core3ptr109drop_in_place$LT$alloc..vec..Vec$LT$http..header..map..Bucket$LT$http..header..value..HeaderValue$GT$$GT$$GT$17hb65dc6e3ed25b711E.exit.i.i.i.i"

.body.i.i.i.i:                                    ; preds = %bb.ad, %bb.ac
  store i64 %i.er, ptr %i.au, align 8, !alias.scope !43053, !noalias !43049
  store ptr %i.et, ptr %i.ay, align 8, !alias.scope !43053, !noalias !43049
  br label %.body.i.i.i

"_ZN4core3ptr109drop_in_place$LT$alloc..vec..Vec$LT$http..header..map..Bucket$LT$http..header..value..HeaderValue$GT$$GT$$GT$17hb65dc6e3ed25b711E.exit.i.i.i.i": ; preds = %bb.ae, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h62614eb66c936b58E.exit.i.i.i.i.i"
  store i64 %i.er, ptr %i.au, align 8, !alias.scope !43053, !noalias !43049
  store ptr %i.et, ptr %i.ay, align 8, !alias.scope !43053, !noalias !43049
  br label %"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_reserve17hbd1b96306d7f198bE.exit.thread96.i.i.i"

"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_reserve17hbd1b96306d7f198bE.exit.i.i.i": ; preds = %bb.ab
  br i1 %i.ep, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_reserve17hbd1b96306d7f198bE.exit.thread.i.i.i", label %"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_reserve17hbd1b96306d7f198bE.exit.thread96.i.i.i", !prof !6578

"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_reserve17hbd1b96306d7f198bE.exit.thread.i.i.i": ; preds = %"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_reserve17hbd1b96306d7f198bE.exit.i.i.i", %bb.z
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @293, i64 noundef 23, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @554, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @295) #54
          to label %.noexc24.i.i.i unwind label %.loopexit.split-lp.i, !noalias !43054

.noexc24.i.i.i:                                   ; preds = %"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_reserve17hbd1b96306d7f198bE.exit.thread.i.i.i"
  unreachable

"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_reserve17hbd1b96306d7f198bE.exit.thread96.i.i.i": ; preds = %"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_reserve17hbd1b96306d7f198bE.exit.i.i.i", %"_ZN4core3ptr109drop_in_place$LT$alloc..vec..Vec$LT$http..header..map..Bucket$LT$http..header..value..HeaderValue$GT$$GT$$GT$17hb65dc6e3ed25b711E.exit.i.i.i.i", %"_ZN99_$LT$http..header..map..HeaderMap$LT$T$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h0268a0236837d17eE.exit.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !43079)
  call void @llvm.experimental.noalias.scope.decl(metadata !43082)
  %i.fd = icmp eq i64 %.sroa.425.0.copyload.i.i, 0
  br i1 %i.fd, label %bb.af, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h63511c4f00868403E.exit.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h63511c4f00868403E.exit.i.i.i.i": ; preds = %"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_reserve17hbd1b96306d7f198bE.exit.thread96.i.i.i"
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.322.0.copyload.i.i, i64 104 ; 2 uses
  store ptr %i.fe, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !43085, !noalias !43086
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %.sroa.322.0.copyload.i.i, align 8, !noalias !43089 ; 3 uses
  %.not.i.i16.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i, 2
  br i1 %.not.i.i16.i.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.bp, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h63511c4f00868403E.exit.i.i.i.i", %"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_reserve17hbd1b96306d7f198bE.exit.thread96.i.i.i"
  invoke fastcc void @"_ZN4core3ptr88drop_in_place$LT$http..header..map..IntoIter$LT$http..header..value..HeaderValue$GT$$GT$17hdc187f1d2a1ecae9E"(ptr noalias noundef align 8 dereferenceable(72) %i.o)
          to label %bb.x unwind label %bb.ch, !noalias !43036

bb.ag:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h63511c4f00868403E.exit.i.i.i.i"
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.322.0.copyload.i.i, i64 64
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.322.0.copyload.i.i, i64 8
  %.sroa.7.0.copyload.i.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !43089
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx.i.i.i.i, i64 32, i1 false), !noalias !43054
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.322.0.copyload.i.i, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !43037
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %i.ff, i64 40, i1 false), !noalias !43054
  %i.fg = trunc nuw i64 %.sroa.0.0.copyload.i.i.i.i to i1
  %.sroa.56.0.i.i.i.i = select i1 %i.fg, i64 %.sroa.7.0.copyload.i.i.i.i, i64 undef
  %i.fh = load i64, ptr %i.bg, align 8, !noalias !43037 ; 2 uses
  %i.fi = load ptr, ptr %i.bh, align 8, !noalias !43037, !nonnull !8
  br label %bb.ai

bb.ah:                                            ; preds = %.body32.thread.i.i.i, %.body.i.i.i
  %i.fj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !43054
  unreachable

bb.ai:                                            ; preds = %bb.bq, %bb.ag
  %i.fk = phi ptr [ %i.ix, %bb.bq ], [ %i.fe, %bb.ag ] ; 15 uses
  %.lcssa172187.i.i.i = phi i64 [ %.sroa.56.0.i47.i.i.i, %bb.bq ], [ %.sroa.56.0.i.i.i.i, %bb.ag ] ; 8 uses
  %.sroa.0.0.i50168.lcssa178.i.i.i = phi i64 [ %.sroa.0.0.copyload.i40.i.i.i, %bb.bq ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.ag ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !43037
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false), !noalias !43037
  call void @llvm.experimental.noalias.scope.decl(metadata !43090)
  call void @llvm.experimental.noalias.scope.decl(metadata !43093)
  %i.fl = invoke fastcc noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$15try_reserve_one17h8e510c9b8652aa7fE"(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.aj)
          to label %bb.aj unwind label %.loopexit.i.i.i, !noalias !43095

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.fl, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  store i64 %.sroa.0.0.i50168.lcssa178.i.i.i, ptr %i.o, align 8, !noalias !43037
  store i64 %.lcssa172187.i.i.i, ptr %i.az, align 8, !noalias !43037
  store ptr %i.fk, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !43037
  call void @llvm.experimental.noalias.scope.decl(metadata !43097)
  call void @llvm.experimental.noalias.scope.decl(metadata !43100)
  %i.fm = load ptr, ptr %i.l, align 8, !alias.scope !43103, !noalias !43104, !noundef !8 ; 2 uses
  %i.fn = icmp eq ptr %i.fm, null
  br i1 %i.fn, label %bb.bb, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.experimental.noalias.scope.decl(metadata !43105)
  call void @llvm.experimental.noalias.scope.decl(metadata !43108)
  call void @llvm.experimental.noalias.scope.decl(metadata !43111)
  call void @llvm.experimental.noalias.scope.decl(metadata !43114)
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  %i.fp = load ptr, ptr %i.fo, align 8, !noalias !43117, !nonnull !8, !noundef !8
  %i.fq = load ptr, ptr %i.ba, align 8, !alias.scope !43118, !noalias !43104, !noundef !8
  %i.fr = load i64, ptr %i.bb, align 8, !alias.scope !43118, !noalias !43104, !noundef !8
  invoke void %i.fp(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef %i.fq, i64 noundef %i.fr)
          to label %bb.bb unwind label %.body32.loopexit.split-lp.i.i.i, !noalias !43054, !inline_history !43119

bb.am:                                            ; preds = %bb.aj
  %i.fs = call fastcc noundef i16 @_ZN4http6header3map15hash_elem_using17hfa00c2547dd9d71bE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %i.l), !noalias !43120 ; 4 uses
  %i.ft = load i16, ptr %i.ax, align 8, !alias.scope !43121, !noalias !43122, !noundef !8 ; 3 uses
  %i.fu = and i16 %i.ft, %i.fs
  %i.fv = zext nneg i16 %i.fu to i64
  %i.fw = load i64, ptr %i.aw, align 8, !alias.scope !43121, !noalias !43122, !noundef !8 ; 2 uses
  %i.fx = zext i16 %i.ft to i64
  %i.fy = load ptr, ptr %i.l, align 8, !noalias !43037 ; 4 uses
  %i.fz = icmp eq ptr %i.fy, null                 ; 3 uses
  %not..i.i.i.i.i.i = xor i1 %i.fz, true
  %i.ga = load i8, ptr %i.ba, align 8, !range !20652, !noalias !43037
  %i.gb = load i64, ptr %i.bb, align 8, !noalias !43037 ; 3 uses
  %i.gc = load ptr, ptr %i.ba, align 8, !noalias !43037 ; 3 uses
  %i.gd = ptrtoint ptr %i.fy to i64
  %i.ge = ptrtoint ptr %i.gc to i64
  %.not = icmp eq i64 %i.fw, 0
  %i.gf = load ptr, ptr %i.av, align 8, !alias.scope !43121, !noalias !43122, !nonnull !8, !align !20674, !noundef !8
  br label %.outer754

.outer754:                                        ; preds = %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread.i.i.i.i", %bb.am
  %.sroa.07.0.i.i.i.i.ph = phi i64 [ %i.gu, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread.i.i.i.i" ], [ 0, %bb.am ] ; 4 uses
  %.sroa.0.0.i28.i.i.i.ph = phi i64 [ %i.gv, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread.i.i.i.i" ], [ %i.fv, %bb.am ] ; 2 uses
  %i.gg = icmp ult i64 %.sroa.0.0.i28.i.i.i.ph, %i.fw ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.gg, %.not.not
  %.sroa.0.0.i28.i.i.i.ph.mux = select i1 %i.gg, i64 %.sroa.0.0.i28.i.i.i.ph, i64 0 ; 4 uses
  br i1 %brmerge, label %.loopexit930, label %infloop

.loopexit930:                                     ; preds = %.outer754
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %.sroa.0.0.i28.i.i.i.ph.mux ; 2 uses
  %i.gi = load i16, ptr %i.gh, align 2, !noalias !43095, !noundef !8 ; 2 uses
  %.not.i29.i.i.i = icmp eq i16 %i.gi, -1
  br i1 %.not.i29.i.i.i, label %bb.ao, label %bb.ap

bb.an:                                            ; preds = %bb.aw
  unreachable

bb.ao:                                            ; preds = %.loopexit930
  %i.gj = icmp samesign ugt i64 %.sroa.07.0.i.i.i.i.ph, 511
  br i1 %i.gj, label %.sink.split.i.i.i, label %bb.bc

bb.ap:                                            ; preds = %.loopexit930
  %i.gk = zext i16 %i.gi to i64                   ; 5 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 2
  %i.gm = load i16, ptr %i.gl, align 2, !noalias !43095, !noundef !8 ; 2 uses
  %i.gn = and i16 %i.gm, %i.ft
  %i.go = zext i16 %i.gn to i64
  %i.gp = sub i64 %.sroa.0.0.i28.i.i.i.ph.mux, %i.go
  %i.gq = and i64 %i.gp, %i.fx
  %i.gr = icmp samesign ult i64 %i.gq, %.sroa.07.0.i.i.i.i.ph
  br i1 %i.gr, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gs = icmp eq i16 %i.gm, %i.fs
  br i1 %i.gs, label %bb.as, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread.i.i.i.i"

bb.ar:                                            ; preds = %bb.ap
  %i.gt = icmp samesign ugt i64 %.sroa.07.0.i.i.i.i.ph, 511
  br i1 %i.gt, label %.sink.split.i.i.i, label %bb.bc

"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread.i.i.i.i": ; preds = %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.i.i.i.i", %.split.i.i.i.i, %bb.av, %bb.at, %bb.aq
  %i.gu = add nuw nsw i64 %.sroa.07.0.i.i.i.i.ph, 1
  %i.gv = add i64 %.sroa.0.0.i28.i.i.i.ph.mux, 1
  br label %.outer754

bb.as:                                            ; preds = %bb.aq
  %i.gw = load i64, ptr %i.at, align 8, !alias.scope !43121, !noalias !43122, !noundef !8 ; 2 uses
  %i.gx = icmp ugt i64 %i.gw, %i.gk
  br i1 %i.gx, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.gy = load ptr, ptr %i.ay, align 8, !alias.scope !43121, !noalias !43122, !nonnull !8, !noundef !8
  %i.gz = getelementptr inbounds nuw [104 x i8], ptr %i.gy, i64 %i.gk ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 64
  %i.hb = load ptr, ptr %i.ha, align 8, !noalias !43095, !noundef !8
  %i.hc = icmp ne ptr %i.hb, null                 ; 2 uses
  %i.hd = xor i1 %i.fz, %i.hc
  br i1 %i.hd, label %bb.au, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread.i.i.i.i"

bb.au:                                            ; preds = %bb.at
  br i1 %i.hc, label %bb.av, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.i.i.i.i"

bb.av:                                            ; preds = %bb.au
  call void @llvm.assume(i1 %not..i.i.i.i.i.i)
  %i.he = getelementptr inbounds nuw i8, ptr %i.gz, i64 80
  %i.hf = load i64, ptr %i.he, align 8, !noalias !43095, !noundef !8
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.hf, %i.gb
  br i1 %.not.i.i.i.i.i.i.i.i, label %.split.i.i.i.i, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread.i.i.i.i"

.split.i.i.i.i:                                   ; preds = %bb.av
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gz, i64 72
  %i.hh = load ptr, ptr %i.hg, align 8, !noalias !43095, !noundef !8
  %bcmp.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr %i.hh, ptr %i.gc, i64 %i.gb), !noalias !43095
  %i.hi = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.hi, label %bb.ax, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread.i.i.i.i"

bb.aw:                                            ; preds = %bb.as
  store i64 %.sroa.0.0.i50168.lcssa178.i.i.i, ptr %i.o, align 8, !noalias !43037
  store i64 %.lcssa172187.i.i.i, ptr %i.az, align 8, !noalias !43037
  store ptr %i.fk, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !43037
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.gk, i64 noundef %i.gw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @563) #54
          to label %bb.an unwind label %.loopexit.split-lp.i.i.i, !noalias !43095

"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.i.i.i.i": ; preds = %bb.au
  call void @llvm.assume(i1 %i.fz)
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gz, i64 72
  %i.hk = load i8, ptr %i.hj, align 8, !range !20652, !noalias !43095, !noundef !8
  %i.hl = icmp eq i8 %i.hk, %i.ga
  br i1 %i.hl, label %.loopexit282.i.i.i, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread.i.i.i.i"

bb.ax:                                            ; preds = %.split.i.i.i.i
  %i.hm = getelementptr inbounds nuw i8, ptr %i.fy, i64 32
  %i.hn = load ptr, ptr %i.hm, align 8, !noalias !43123, !nonnull !8, !noundef !8
  invoke void %i.hn(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef %i.gc, i64 noundef %i.gb)
          to label %.loopexit282.i.i.i unwind label %.body32.loopexit.i.i.i, !noalias !43054, !inline_history !43119

.loopexit.i.i.i:                                  ; preds = %bb.ai
  %lpad.loopexit130.i.i.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.i50168.lcssa178.i.i.i, ptr %i.o, align 8, !noalias !43037
  store i64 %.lcssa172187.i.i.i, ptr %i.az, align 8, !noalias !43037
  store ptr %i.fk, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !43037
  %.pre.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !43136, !noalias !43104
  br label %bb.ay

.loopexit.split-lp.i.i.i:                         ; preds = %bb.aw
  %lpad.loopexit.split-lp131.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ay:                                            ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i
  %i.ho = phi ptr [ %.pre.i.i.i, %.loopexit.i.i.i ], [ %i.fy, %.loopexit.split-lp.i.i.i ] ; 2 uses
  %lpad.phi132.i.i.i = phi { ptr, i32 } [ %lpad.loopexit130.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp131.i.i.i, %.loopexit.split-lp.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43141)
  call void @llvm.experimental.noalias.scope.decl(metadata !43142)
  %i.hp = icmp eq ptr %i.ho, null
  br i1 %i.hp, label %.body32.thread.i.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.experimental.noalias.scope.decl(metadata !43143)
  call void @llvm.experimental.noalias.scope.decl(metadata !43146)
  call void @llvm.experimental.noalias.scope.decl(metadata !43149)
  call void @llvm.experimental.noalias.scope.decl(metadata !43152)
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 32
  %i.hr = load ptr, ptr %i.hq, align 8, !noalias !43155, !nonnull !8, !noundef !8
  %i.hs = load ptr, ptr %i.ba, align 8, !alias.scope !43156, !noalias !43104, !noundef !8
  %i.ht = load i64, ptr %i.bb, align 8, !alias.scope !43156, !noalias !43104, !noundef !8
  invoke void %i.hr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef %i.hs, i64 noundef %i.ht)
          to label %.body32.thread.i.i.i unwind label %bb.ba, !noalias !43120, !inline_history !19544

bb.ba:                                            ; preds = %bb.az
  %i.hu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !43120
  unreachable

.body32.thread105.loopexit.i.i.i:                 ; preds = %bb.cc
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body32.thread105.loopexit.i.i.body.i

.body32.thread105.loopexit.i.i.body.i:            ; preds = %bb.bz, %bb.bv, %.body32.thread105.loopexit.i.i.i
  %eh.lpad-body51.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i, %.body32.thread105.loopexit.i.i.i ], [ %i.jt, %bb.bv ], [ %i.kk, %bb.bz ]
  store ptr %i.fk, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !43037
  store i64 %.sroa.0.0.i50.i.i.i, ptr %i.o, align 8, !noalias !43037
  store i64 %.sroa.5.0.i49.i.i.i, ptr %i.az, align 8, !noalias !43037
  br label %.body.i.i.i

.body32.thread105.loopexit.split-lp.loopexit.i.i.i: ; preds = %bb.bi, %.loopexit282.i.i.i, %bb.bc
  %lpad.loopexit136.i.i.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.i50168.lcssa178.i.i.i, ptr %i.o, align 8, !noalias !43037
  store i64 %.lcssa172187.i.i.i, ptr %i.az, align 8, !noalias !43037
  store ptr %i.fk, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !43037
  br label %.body.i.i.i

.body32.thread105.loopexit.split-lp.loopexit.split-lp.i.i.i: ; preds = %bb.bn, %bb.bk
  %lpad.loopexit.split-lp137.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body32.loopexit.i.i.i:                           ; preds = %bb.ax
  %lpad.loopexit133.i.i.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.i50168.lcssa178.i.i.i, ptr %i.o, align 8, !noalias !43037
  store i64 %.lcssa172187.i.i.i, ptr %i.az, align 8, !noalias !43037
  store ptr %i.fk, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !43037
  br label %.body32.thread.i.i.i

.body32.loopexit.split-lp.i.i.i:                  ; preds = %bb.bb, %bb.al
  %lpad.loopexit.split-lp134.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body32.thread.i.i.i

bb.bb:                                            ; preds = %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !43037
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @293, i64 noundef 23, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @554, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @296) #54
          to label %.noexc34.i.i.i unwind label %.body32.loopexit.split-lp.i.i.i, !noalias !43054

.noexc34.i.i.i:                                   ; preds = %bb.bb
  unreachable

.sink.split.i.i.i:                                ; preds = %bb.ar, %bb.ao
  %i.hv = load i64, ptr %i.aj, align 8, !range !479, !alias.scope !43121, !noalias !43122, !noundef !8
  %i.hw = icmp ne i64 %i.hv, 2
  br label %bb.bc

bb.bc:                                            ; preds = %.sink.split.i.i.i, %bb.ar, %bb.ao
  %.sroa.21.0.ph.i.i.i = phi i1 [ false, %bb.ao ], [ false, %bb.ar ], [ %i.hw, %.sink.split.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !43157
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.584.8..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i64 16, i1 false), !noalias !43037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !43037
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !43037
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.m, i64 40, i1 false), !noalias !43037
  store i64 %i.gd, ptr %i.g, align 8, !noalias !43162
  store i64 %i.ge, ptr %.sroa.483.8..sroa_idx.i.i.i, align 8, !noalias !43162
  %i.hx = load i64, ptr %i.at, align 8, !alias.scope !43163, !noalias !43166, !noundef !8 ; 3 uses
  %i.hy = icmp ult i64 %i.hx, 88686269585142076
  call void @llvm.assume(i1 %i.hy)
  %i.hz = invoke fastcc noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$16try_insert_entry17hdaa4f007e59bac81E"(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.aj, i16 noundef %i.fs, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.i)
          to label %.noexc35.i.i.i unwind label %.body32.thread105.loopexit.split-lp.loopexit.i.i.i, !noalias !43054

.noexc35.i.i.i:                                   ; preds = %bb.bc
  br i1 %i.hz, label %bb.bk, label %bb.bd

bb.bd:                                            ; preds = %.noexc35.i.i.i
  %i.ia = load ptr, ptr %i.av, align 8, !alias.scope !43163, !noalias !43166, !nonnull !8, !align !20674, !noundef !8
  %i.ib = load i64, ptr %i.aw, align 8, !alias.scope !43163, !noalias !43166, !noundef !8 ; 2 uses
  %i.ic = trunc i64 %i.hx to i16
  %.not946 = icmp eq i64 %i.ib, 0
  br label %.outer

.outer:                                           ; preds = %bb.bf, %bb.bd
  %.sroa.07.0.i.i.i.i.i.ph = phi i64 [ %i.ij, %bb.bf ], [ 0, %bb.bd ] ; 2 uses
  %.sroa.6.0.i.i.i.i.i.ph = phi i16 [ %i.ik, %bb.bf ], [ %i.fs, %bb.bd ] ; 2 uses
  %.sroa.04.0.i.i.i.i.i.ph = phi i16 [ %i.if, %bb.bf ], [ %i.ic, %bb.bd ] ; 2 uses
  %.sroa.01.0.i.i.i.i.i.ph = phi i64 [ %i.il, %bb.bf ], [ %.sroa.0.0.i28.i.i.i.ph.mux, %bb.bd ] ; 2 uses
  %i.id = icmp ult i64 %.sroa.01.0.i.i.i.i.i.ph, %i.ib ; 2 uses
  %.not946.not = xor i1 %.not946, true
  %brmerge1127 = or i1 %i.id, %.not946.not
  %.sroa.01.0.i.i.i.i.i.ph.mux = select i1 %i.id, i64 %.sroa.01.0.i.i.i.i.i.ph, i64 0 ; 2 uses
  br i1 %brmerge1127, label %.loopexit934, label %infloop1126

.loopexit934:                                     ; preds = %.outer
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %.sroa.01.0.i.i.i.i.i.ph.mux ; 4 uses
  %i.if = load i16, ptr %i.ie, align 2, !noalias !43169, !noundef !8 ; 2 uses
  %i.ig = icmp eq i16 %i.if, -1
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 2 ; 3 uses
  br i1 %i.ig, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.loopexit934
  store i16 %.sroa.04.0.i.i.i.i.i.ph, ptr %i.ie, align 2, !noalias !43169
  store i16 %.sroa.6.0.i.i.i.i.i.ph, ptr %i.ih, align 2, !noalias !43169
  %i.ii = icmp ugt i64 %.sroa.07.0.i.i.i.i.i.ph, 127
  %or.cond.i.i.i.i.i = or i1 %.sroa.21.0.ph.i.i.i, %i.ii
  br i1 %or.cond.i.i.i.i.i, label %bb.bg, label %bb.bl

bb.bf:                                            ; preds = %.loopexit934
  %i.ij = add i64 %.sroa.07.0.i.i.i.i.i.ph, 1
  %i.ik = load i16, ptr %i.ih, align 2, !noalias !43169, !noundef !8
  store i16 %.sroa.04.0.i.i.i.i.i.ph, ptr %i.ie, align 2, !noalias !43169
  store i16 %.sroa.6.0.i.i.i.i.i.ph, ptr %i.ih, align 2, !noalias !43169
  %i.il = add nuw i64 %.sroa.01.0.i.i.i.i.i.ph.mux, 1
  br label %.outer

bb.bg:                                            ; preds = %bb.be
  %i.im = load i64, ptr %i.aj, align 8, !range !479, !alias.scope !43163, !noalias !43166, !noundef !8
  %i.in = icmp eq i64 %i.im, 0
  br i1 %i.in, label %bb.bh, label %bb.bl

bb.bh:                                            ; preds = %bb.bg
  store i64 1, ptr %i.aj, align 8, !alias.scope !43163, !noalias !43166
  br label %bb.bl

.loopexit282.i.i.i:                               ; preds = %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.i.i.i.i", %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !43037
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !43037
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !43037
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %i.m, i64 40, i1 false), !noalias !43037
  invoke fastcc void @"_ZN4http6header3map18HeaderMap$LT$T$GT$15insert_occupied17h90cdeca53126b138E"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(144) %i.aj, i64 noundef %i.gk, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.j)
          to label %bb.bi unwind label %.body32.thread105.loopexit.split-lp.loopexit.i.i.i, !noalias !43054

bb.bi:                                            ; preds = %.loopexit282.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !43037
end_hunk_3
