Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/xtask-b763c3982f933b22.xtask.67f4837adcdb5ddd-cgu.0?download=true
inline.NumInlined: 1754
inline.NumDeleted: 971
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 13
begin_hunk_0_@"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h4f55ab233fe0ccfcE":bb.a
bb.j:                                             ; preds = %.loopexit11.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !117
  %i.bo = load <2 x i64>, ptr %i.bn, align 8, !alias.scope !112, !noalias !115 ; 3 uses
  %i.bp = shufflevector <2 x i64> %i.bo, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.bq = xor <2 x i64> %i.bp, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.bq, ptr %i.b, align 16, !alias.scope !120, !noalias !117
  %i.br = shufflevector <2 x i64> %i.bo, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.bs = xor <2 x i64> %i.br, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.bs, ptr %.sroa.59.0..sroa_idx.i.i.i.i.i.i.i.i, align 16, !alias.scope !120, !noalias !117
  store <2 x i64> %i.bo, ptr %.sroa.711.0..sroa_idx.i.i.i.i.i.i.i.i, align 16, !alias.scope !120, !noalias !117
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i.i.i.i.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !120, !noalias !117
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hc12f8cdcc3e95aa8E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bh, i64 noundef %i.bj), !noalias !123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !124
  store i8 -1, ptr %i.a, align 1, !noalias !124
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hc12f8cdcc3e95aa8E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !124
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.b, align 16, !alias.scope !137, !noalias !117
  %.sroa.10.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !137, !noalias !117
  %.sroa.17.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i.i.i.i.i.i.i.i, align 16, !alias.scope !137, !noalias !117 ; 3 uses
  %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !137, !noalias !117
  %i.bt = load i64, ptr %.sroa.913.0..sroa_idx.i.i.i.i.i.i.i.i, align 16, !alias.scope !137, !noalias !117, !noundef !4
  %i.bu = shl i64 %i.bt, 56
  %i.bv = load i64, ptr %i.g, align 8, !alias.scope !137, !noalias !117, !noundef !4
  %i.bw = or i64 %i.bu, %i.bv                     ; 2 uses
  %i.bx = xor i64 %i.bw, %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.by = add i64 %.sroa.17.0.copyload.i.i.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.bz = add i64 %i.bx, %.sroa.10.0.copyload.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ca = tail call i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i.i.i.i.i.i.i.i, i64 %.sroa.17.0.copyload.i.i.i.i.i.i.i.i.i, i64 13)
  %i.cb = xor i64 %i.ca, %i.by                    ; 3 uses
  %i.cc = tail call i64 @llvm.fshl.i64(i64 %i.bx, i64 %i.bx, i64 16)
  %i.cd = xor i64 %i.cc, %i.bz                    ; 3 uses
  %i.ce = tail call i64 @llvm.fshl.i64(i64 %i.by, i64 %i.by, i64 32)
  %i.cf = add i64 %i.bz, %i.cb                    ; 3 uses
  %i.cg = add i64 %i.cd, %i.ce                    ; 2 uses
  %i.ch = tail call i64 @llvm.fshl.i64(i64 %i.cb, i64 %i.cb, i64 17)
  %i.ci = xor i64 %i.cf, %i.ch                    ; 3 uses
  %i.cj = tail call i64 @llvm.fshl.i64(i64 %i.cd, i64 %i.cd, i64 21)
  %i.ck = xor i64 %i.cj, %i.cg                    ; 3 uses
  %i.cl = tail call i64 @llvm.fshl.i64(i64 %i.cf, i64 %i.cf, i64 32)
  %i.cm = xor i64 %i.cg, %i.bw
  %i.cn = xor i64 %i.cl, 255
  %i.co = add i64 %i.cm, %i.ci                    ; 3 uses
  %i.cp = add i64 %i.ck, %i.cn                    ; 2 uses
  %i.cq = tail call i64 @llvm.fshl.i64(i64 %i.ci, i64 %i.ci, i64 13)
  %i.cr = xor i64 %i.co, %i.cq                    ; 3 uses
  %i.cs = tail call i64 @llvm.fshl.i64(i64 %i.ck, i64 %i.ck, i64 16)
  %i.ct = xor i64 %i.cs, %i.cp                    ; 3 uses
  %i.cu = tail call i64 @llvm.fshl.i64(i64 %i.co, i64 %i.co, i64 32)
  %i.cv = add i64 %i.cr, %i.cp                    ; 3 uses
  %i.cw = add i64 %i.ct, %i.cu                    ; 2 uses
  %i.cx = tail call i64 @llvm.fshl.i64(i64 %i.cr, i64 %i.cr, i64 17)
  %i.cy = xor i64 %i.cv, %i.cx                    ; 3 uses
  %i.cz = tail call i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 21)
  %i.da = xor i64 %i.cz, %i.cw                    ; 3 uses
  %i.db = tail call i64 @llvm.fshl.i64(i64 %i.cv, i64 %i.cv, i64 32)
  %i.dc = add i64 %i.cy, %i.cw                    ; 3 uses
  %i.dd = add i64 %i.da, %i.db                    ; 2 uses
  %i.de = tail call i64 @llvm.fshl.i64(i64 %i.cy, i64 %i.cy, i64 13)
  %i.df = xor i64 %i.de, %i.dc                    ; 3 uses
  %i.dg = tail call i64 @llvm.fshl.i64(i64 %i.da, i64 %i.da, i64 16)
  %i.dh = xor i64 %i.dg, %i.dd                    ; 3 uses
  %i.di = tail call i64 @llvm.fshl.i64(i64 %i.dc, i64 %i.dc, i64 32)
  %i.dj = add i64 %i.df, %i.dd                    ; 3 uses
  %i.dk = add i64 %i.dh, %i.di                    ; 2 uses
  %i.dl = tail call i64 @llvm.fshl.i64(i64 %i.df, i64 %i.df, i64 17)
  %i.dm = xor i64 %i.dl, %i.dj                    ; 3 uses
  %i.dn = tail call i64 @llvm.fshl.i64(i64 %i.dh, i64 %i.dh, i64 21)
  %i.do = xor i64 %i.dn, %i.dk                    ; 3 uses
  %i.dp = tail call i64 @llvm.fshl.i64(i64 %i.dj, i64 %i.dj, i64 32)
  %i.dq = add i64 %i.dm, %i.dk
  %i.dr = add i64 %i.do, %i.dp                    ; 2 uses
  %i.ds = tail call i64 @llvm.fshl.i64(i64 %i.dm, i64 %i.dm, i64 13)
  %i.dt = xor i64 %i.ds, %i.dq                    ; 3 uses
  %i.du = tail call i64 @llvm.fshl.i64(i64 %i.do, i64 %i.do, i64 16)
  %i.dv = xor i64 %i.du, %i.dr                    ; 2 uses
  %i.dw = add i64 %i.dt, %i.dr                    ; 3 uses
  %i.dx = tail call i64 @llvm.fshl.i64(i64 %i.dt, i64 %i.dt, i64 17)
  %i.dy = tail call i64 @llvm.fshl.i64(i64 %i.dv, i64 %i.dv, i64 21)
  %i.dz = tail call i64 @llvm.fshl.i64(i64 %i.dw, i64 %i.dw, i64 32)
  %i.ea = xor i64 %i.dy, %i.dx
  %i.eb = xor i64 %i.ea, %i.dz
  %i.ec = xor i64 %i.eb, %i.dw                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !117
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  %i.ed = lshr i64 %i.ec, 57
  %i.ee = trunc nuw nsw i64 %i.ed to i8
  %i.ef = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !alias.scope !148, !noalias !149, !noundef !4 ; 2 uses
  %i.eh = load ptr, ptr %.val.i.i.i.i, align 8, !alias.scope !148, !noalias !149, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i.i.i.i.i.i = insertelement <16 x i8> poison, i8 %i.ee, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %.sroa.9.0.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.j ], [ %i.ez, %bb.l ]
  %.pn.i.i.i.i.i.i.i = phi i64 [ %i.ec, %bb.j ], [ %i.fa, %bb.l ]
  %.sroa.01.0.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i, %i.eg ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.sroa.01.0.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ei, align 1, !noalias !151 ; 2 uses
  %i.ej = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i.i.i.i.i
  %i.ek = bitcast <16 x i1> %i.ej to i16          ; 2 uses
  %.not.i.not33.i.i.i.i.i.i.i = icmp eq i16 %i.ek, 0
  br i1 %.not.i.not33.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.k, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h704454d26fa041f5E.exit.thread.i.i.i.i.i.i.i"
  %.sroa.06.0.i34.i.i.i.i.i.i.i = phi i16 [ %i.ey, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h704454d26fa041f5E.exit.thread.i.i.i.i.i.i.i" ], [ %i.ek, %bb.k ] ; 3 uses
  %i.el = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.i.i.i.i.i.i.i, i1 true)
  %i.em = zext nneg i16 %i.el to i64
  %i.en = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i, %i.em
  %i.eo = and i64 %i.en, %i.eg
  %i.ep = sub nsw i64 0, %i.eo
  %i.eq = getelementptr inbounds [24 x i8], ptr %i.eh, i64 %i.ep ; 2 uses
  %i.er = getelementptr i8, ptr %i.eq, i64 -8
  %.val5.i.i.i.i.i.i.i.i = load i64, ptr %i.er, align 8, !noalias !154, !noundef !4
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bj, %.val5.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h704454d26fa041f5E.exit.i.i.i.i.i.i.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h704454d26fa041f5E.exit.thread.i.i.i.i.i.i.i", !prof !157

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h704454d26fa041f5E.exit.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.es = getelementptr i8, ptr %i.eq, i64 -16
  %.val4.i.i.i.i.i.i.i.i = load ptr, ptr %i.es, align 8, !noalias !154, !nonnull !4, !noundef !4
  %bcmp.i.i.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %i.bh, ptr nonnull readonly align 1 %.val4.i.i.i.i.i.i.i.i, i64 %i.bj), !alias.scope !158, !noalias !162
  %i.et = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.et, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hec66f134c3869e53E.exit.loopexit.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h704454d26fa041f5E.exit.thread.i.i.i.i.i.i.i", !prof !163

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h704454d26fa041f5E.exit.thread.i.i.i.i.i.i.i", %bb.k
  %i.eu = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ev = bitcast <16 x i1> %i.eu to i16
  %i.ew = icmp eq i16 %i.ev, 0
  br i1 %i.ew, label %bb.l, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h2369e526437a9c24E.exit, !prof !164

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h704454d26fa041f5E.exit.thread.i.i.i.i.i.i.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h704454d26fa041f5E.exit.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i
  %i.ex = add i16 %.sroa.06.0.i34.i.i.i.i.i.i.i, -1
  %i.ey = and i16 %i.ex, %.sroa.06.0.i34.i.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i.i.i = icmp eq i16 %i.ey, 0
  br i1 %.not.i.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.l:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.ez = add i64 %.sroa.9.0.i.i.i.i.i.i.i.i, 16  ; 2 uses
  %i.fa = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i, %i.ez
  br label %bb.k

_ZN4core4iter6traits8iterator8Iterator8try_fold17h2369e526437a9c24E.exit: ; preds = %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hec66f134c3869e53E.exit.loopexit.i", %.loopexit11.i, %._crit_edge.i.i.i.i.i.i.i, %bb.a
  %.sroa.0.0.i = phi ptr [ null, %bb.a ], [ %i.bf, %._crit_edge.i.i.i.i.i.i.i ], [ null, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hec66f134c3869e53E.exit.loopexit.i" ], [ %i.bf, %.loopexit11.i ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN12clap_builder4util8flat_map20FlatMap$LT$K$C$V$GT$12remove_entry17h9567be95efd75bfeE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %1, ptr noalias noundef nonnull readonly align 1 captures(none) %2, i64 noundef range(i64 4, 16) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 7 uses
  %.idx = shl nuw nsw i64 %i.d, 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.backedge.i
  %i.g = phi ptr [ %i.i, %.backedge.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.h = phi i64 [ %i.l, %.backedge.i ], [ 0, %bb.a ] ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.j = getelementptr i8, ptr %i.g, i64 8
  %.val9.i = load i64, ptr %i.j, align 8, !noalias !165, !noundef !4
  %.not.i.i.i.i.i = icmp eq i64 %.val9.i, %3
  br i1 %.not.i.i.i.i.i, label %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i", label %.backedge.i

"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i": ; preds = %.lr.ph.i
  %.val8.i = load ptr, ptr %i.g, align 8, !noalias !165, !nonnull !4, !align !170, !noundef !4
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly align 1 dereferenceable(1) %.val8.i, ptr noundef nonnull readonly align 1 dereferenceable(1) %2, i64 %3), !alias.scope !171, !noalias !165
  %bcmp.i.fr.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i
  %i.k = icmp eq i32 %bcmp.i.fr.i.i.i.i, 0
  br i1 %i.k, label %bb.b, label %.backedge.i

.backedge.i:                                      ; preds = %.lr.ph.i, %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i"
  %i.l = add nuw nsw i64 %i.h, 1
  %i.m = icmp eq ptr %i.i, %i.e
  br i1 %i.m, label %.loopexit, label %.lr.ph.i

bb.b:                                             ; preds = %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  %i.n = icmp ult i64 %i.d, 576460752303423488
  tail call void @llvm.assume(i1 %i.n)
  %.not.i = icmp samesign ult i64 %i.h, %i.d
  br i1 %.not.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hf1e330be9de66299E.exit", label %bb.c, !prof !178

bb.c:                                             ; preds = %bb.b
  tail call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17headf60d52b65606fE"(i64 noundef %i.h, i64 noundef %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #29, !noalias !175
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hf1e330be9de66299E.exit": ; preds = %bb.b
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.h ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !noalias !175, !nonnull !4, !align !170, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load i64, ptr %i.q, align 8, !noalias !175, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.t = xor i64 %i.h, -1                         ; 2 uses
  %i.u = add nsw i64 %i.d, %i.t
  %i.v = shl nsw i64 %i.u, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.s, i64 %i.v, i1 false), !noalias !175
  %i.w = add nsw i64 %i.d, -1
  store i64 %i.w, ptr %i.c, align 8, !alias.scope !175
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !179, !noalias !182, !noundef !4 ; 5 uses
  %i.z = icmp ult i64 %i.y, 88686269585142076
  tail call void @llvm.assume(i1 %i.z)
  %.not.i10 = icmp samesign ult i64 %i.h, %i.y
  br i1 %.not.i10, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h89885977d92e07e7E.exit", label %bb.d, !prof !178

bb.d:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hf1e330be9de66299E.exit"
  tail call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17headf60d52b65606fE"(i64 noundef %i.h, i64 noundef %i.y, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #29, !noalias !184
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h89885977d92e07e7E.exit": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hf1e330be9de66299E.exit"
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !179, !noalias !182, !nonnull !4, !noundef !4
  %i.ac = getelementptr inbounds nuw [104 x i8], ptr %i.ab, i64 %i.h ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %i.ac, i64 104, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 104
  %i.ae = add nsw i64 %i.y, %i.t
  %i.af = mul nsw i64 %i.ae, 104
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ac, ptr nonnull align 8 %i.ad, i64 %i.af, i1 false), !noalias !184
  %i.ag = add nsw i64 %i.y, -1
  store i64 %i.ag, ptr %i.x, align 8, !alias.scope !179, !noalias !182
  store ptr %i.p, ptr %0, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.backedge.i, %bb.a, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h89885977d92e07e7E.exit"
  %.sink24 = phi i64 [ 8, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h89885977d92e07e7E.exit" ], [ 16, %bb.a ], [ 16, %.backedge.i ]
  %.sink = phi i64 [ %i.r, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h89885977d92e07e7E.exit" ], [ 2, %bb.a ], [ 2, %.backedge.i ]
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink24
  store i64 %.sink, ptr %.sroa.4.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN12clap_builder4util8flat_map20FlatMap$LT$K$C$V$GT$6insert17he7441719bd5b15b2E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(104) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 5 uses
  %.idx = shl nuw nsw i64 %i.d, 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit._crit_edge", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit.backedge"
  %.sroa.8.024 = phi i64 [ %i.h, %"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit.backedge" ], [ 0, %bb.a ] ; 4 uses
  %.sroa.012.023 = phi ptr [ %i.g, %"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit.backedge" ], [ %i.b, %bb.a ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.012.023, i64 16 ; 2 uses
  %i.h = add nuw nsw i64 %.sroa.8.024, 1
  %i.i = getelementptr i8, ptr %.sroa.012.023, i64 8
  %.val9 = load i64, ptr %i.i, align 8, !noundef !4
  %.not.i.i = icmp eq i64 %.val9, %3
  br i1 %.not.i.i, label %.split, label %"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit.backedge"

.split:                                           ; preds = %.lr.ph
  %.val = load ptr, ptr %.sroa.012.023, align 8, !nonnull !4, !noundef !4
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val, ptr nonnull readonly %2, i64 %3)
  %i.j = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.j, label %bb.k, label %"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit.backedge"

"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit.backedge": ; preds = %.split, %.lr.ph
  %i.k = icmp eq ptr %i.g, %i.e
  br i1 %i.k, label %"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit._crit_edge", label %.lr.ph

"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit._crit_edge": ; preds = %"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit.backedge", %bb.a
  %i.l = load i64, ptr %1, align 8, !range !185, !alias.scope !186, !noalias !191, !noundef !4
  %i.m = icmp eq i64 %i.d, %i.l
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit._crit_edge"
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h90488284a11b96fbE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @7)
          to label %._crit_edge unwind label %bb.g, !noalias !196

._crit_edge:                                      ; preds = %bb.b
  %.pre = load ptr, ptr %i.a, align 8, !alias.scope !186, !noalias !191
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit._crit_edge"
  %i.n = phi ptr [ %.pre, %._crit_edge ], [ %i.b, %"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit._crit_edge" ]
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.d ; 2 uses
  store ptr %2, ptr %i.o, align 8, !noalias !197
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %3, ptr %i.p, align 8, !noalias !198
  %i.q = add i64 %i.d, 1
  store i64 %i.q, ptr %i.c, align 8, !alias.scope !186, !noalias !191
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !199, !noalias !202, !noundef !4 ; 3 uses
  %i.u = load i64, ptr %i.r, align 8, !range !185, !alias.scope !199, !noalias !202, !noundef !4
  %i.v = icmp eq i64 %i.t, %i.u
  br i1 %i.v, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h227c91f2cdf747efE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8)
          to label %bb.i unwind label %bb.e, !noalias !204

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$clap_builder..parser..matches..matched_arg..MatchedArg$GT$17h6b9b9f8ff9486e1dE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(104) %4) #30
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !204
  unreachable

bb.g:                                             ; preds = %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$clap_builder..parser..matches..matched_arg..MatchedArg$GT$17h6b9b9f8ff9486e1dE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(104) %4) #30
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !196
  unreachable

bb.i:                                             ; preds = %bb.d, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !199, !noalias !202, !nonnull !4, !noundef !4
  %i.ac = getelementptr inbounds nuw [104 x i8], ptr %i.ab, i64 %i.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ac, ptr noundef nonnull align 8 dereferenceable(104) %4, i64 104, i1 false)
  %i.ad = add i64 %i.t, 1
  store i64 %i.ad, ptr %i.s, align 8, !alias.scope !199, !noalias !202
  store i64 2, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.i
  ret void

bb.k:                                             ; preds = %.split
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.af = load i64, ptr %i.ae, align 8, !noundef !4 ; 2 uses
  %i.ag = icmp ult i64 %.sroa.8.024, %i.af
  br i1 %i.ag, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !4, !noundef !4
  %i.aj = getelementptr inbounds nuw [104 x i8], ptr %i.ai, i64 %.sroa.8.024 ; 8 uses
  %i.ak = load <2 x i64>, ptr %4, align 8, !alias.scope !205, !noalias !4
  %i.al = load <2 x i64>, ptr %i.aj, align 1, !alias.scope !209, !noalias !4
  store <2 x i64> %i.ak, ptr %i.aj, align 1, !alias.scope !209, !noalias !4
  store <2 x i64> %i.al, ptr %4, align 8, !alias.scope !205, !noalias !4
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ao = load <2 x i64>, ptr %i.an, align 8, !alias.scope !212, !noalias !4
  %i.ap = load <2 x i64>, ptr %i.am, align 1, !alias.scope !215, !noalias !4
  store <2 x i64> %i.ao, ptr %i.am, align 1, !alias.scope !215, !noalias !4
  store <2 x i64> %i.ap, ptr %i.an, align 8, !alias.scope !212, !noalias !4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.as = load <2 x i64>, ptr %i.ar, align 8, !alias.scope !218, !noalias !4
  %i.at = load <2 x i64>, ptr %i.aq, align 1, !alias.scope !221, !noalias !4
  store <2 x i64> %i.as, ptr %i.aq, align 1, !alias.scope !221, !noalias !4
  store <2 x i64> %i.at, ptr %i.ar, align 8, !alias.scope !218, !noalias !4
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.aw = load <2 x i64>, ptr %i.av, align 8, !alias.scope !224, !noalias !4
  %i.ax = load <2 x i64>, ptr %i.au, align 1, !alias.scope !227, !noalias !4
  store <2 x i64> %i.aw, ptr %i.au, align 1, !alias.scope !227, !noalias !4
  store <2 x i64> %i.ax, ptr %i.av, align 8, !alias.scope !224, !noalias !4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 64 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.ba = load <2 x i64>, ptr %i.az, align 8, !alias.scope !230, !noalias !4
  %i.bb = load <2 x i64>, ptr %i.ay, align 1, !alias.scope !233, !noalias !4
  store <2 x i64> %i.ba, ptr %i.ay, align 1, !alias.scope !233, !noalias !4
  store <2 x i64> %i.bb, ptr %i.az, align 8, !alias.scope !230, !noalias !4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aj, i64 80 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.be = load <2 x i64>, ptr %i.bd, align 8, !alias.scope !236, !noalias !4
  %i.bf = load <2 x i64>, ptr %i.bc, align 1, !alias.scope !239, !noalias !4
  store <2 x i64> %i.be, ptr %i.bc, align 1, !alias.scope !239, !noalias !4
  store <2 x i64> %i.bf, ptr %i.bd, align 8, !alias.scope !236, !noalias !4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aj, i64 96 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  %.sroa.0.0.copyload.i.12.i.i.i.i = load i64, ptr %i.bg, align 1, !alias.scope !242, !noalias !244
  %.sroa.02.0.copyload.i.12.i.i.i.i = load i64, ptr %i.bh, align 8, !alias.scope !244, !noalias !242
  store i64 %.sroa.02.0.copyload.i.12.i.i.i.i, ptr %i.bg, align 1, !alias.scope !242, !noalias !244
  store i64 %.sroa.0.0.copyload.i.12.i.i.i.i, ptr %i.bh, align 8, !alias.scope !244, !noalias !242
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %4, i64 104, i1 false)
  br label %bb.j

bb.m:                                             ; preds = %bb.k
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.8.024, i64 noundef %i.af, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #29
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$clap_builder..parser..matches..matched_arg..MatchedArg$GT$17h6b9b9f8ff9486e1dE"(ptr noalias noundef align 8 dereferenceable(104) %4) #30
          to label %.body unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31
  unreachable

.body:                                            ; preds = %bb.g, %bb.e, %bb.o
  %eh.lpad-body15 = phi { ptr, i32 } [ %i.bi, %bb.o ], [ %i.y, %bb.g ], [ %i.w, %bb.e ]
  resume { ptr, i32 } %eh.lpad-body15
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN12clap_builder4util9any_value8AnyValue13downcast_into17h69f59c538d018e37E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN5xtask4main17hb2a19bbcbf99ae36E:bb.a
          to label %.noexc113.i.i unwind label %bb.cq, !noalias !2203

.noexc113.i.i:                                    ; preds = %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !2296
  br label %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17h774e5be826b4ec35E.exit.thread.i.i.i

bb.ej:                                            ; preds = %bb.eh
  call void @llvm.experimental.noalias.scope.decl(metadata !2301)
  call void @llvm.experimental.noalias.scope.decl(metadata !2304)
  %i.te = load ptr, ptr %i.ca, align 8, !alias.scope !2304, !noalias !2306, !noundef !4
  %.not.i.i.i.i11.i = icmp eq ptr %i.te, null
  br i1 %.not.i.i.i.i11.i, label %bb.ep, label %bb.ek, !prof !178

bb.ek:                                            ; preds = %bb.ej
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !2308
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bz, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ca, i64 32, i1 false), !noalias !2306
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @21, i64 noundef 99, ptr noundef nonnull align 1 %i.bz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @53, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #29
          to label %bb.en unwind label %bb.el, !noalias !2309

bb.el:                                            ; preds = %bb.ek
  %i.tf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2310)
  call void @llvm.experimental.noalias.scope.decl(metadata !2313)
  call void @llvm.experimental.noalias.scope.decl(metadata !2316)
  %i.tg = load ptr, ptr %i.bz, align 8, !alias.scope !2319, !noalias !2308, !nonnull !4, !noundef !4
  %i.th = atomicrmw sub ptr %i.tg, i64 1 release, align 8, !noalias !2320
  %i.ti = icmp eq i64 %i.th, 1
  br i1 %i.ti, label %bb.em, label %.body.i.i.i10.i

bb.em:                                            ; preds = %bb.el
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf71341fb7d59a632E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bz)
          to label %.body.i.i.i10.i unwind label %bb.eo, !noalias !2309

bb.en:                                            ; preds = %bb.ek
  unreachable

bb.eo:                                            ; preds = %bb.em
  %i.tj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !2309
  unreachable

bb.ep:                                            ; preds = %bb.ej
  %i.tk = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.tk, align 8, !alias.scope !2321, !noalias !2322
  %.sroa.4.0..sroa_idx.i.i110.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %.sroa.5.i.sroa.0.0.copyload.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i110.i.i, align 8, !noalias !2296
  %.sroa.5.i.sroa.4.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %.sroa.5.i.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.5.i.sroa.4.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !2296
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !2296
  br label %bb.ei

bb.eq:                                            ; preds = %.body.i.i.i10.i
  %i.tl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !2300
  unreachable

_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17h774e5be826b4ec35E.exit.thread.i.i.i: ; preds = %.noexc113.i.i, %.noexc111.i.i
  %.sroa.12.0.ph.i.i.i = phi i64 [ undef, %.noexc111.i.i ], [ %.sroa.5.i.sroa.4.0.i.i.i, %.noexc113.i.i ]
  %.sroa.10.0.ph.i.i.i = phi ptr [ undef, %.noexc111.i.i ], [ %.sroa.5.i.sroa.0.0.i.i.i, %.noexc113.i.i ]
  %.sroa.7.0.ph.i.i.i = phi i64 [ -9223372036854775808, %.noexc111.i.i ], [ %.sroa.03.0.i.i.i.i, %.noexc113.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !2292
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !noalias !2292
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !2292
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !2292
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !noalias !2323
  br label %_ZN12clap_builder6parser5error12MatchesError6unwrap17h2538d813e74ad56aE.exit.i.i.i

_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17h774e5be826b4ec35E.exit.i.i.i: ; preds = %.noexc111.i.i
  %.sroa.054.0.copyload.i.i.i = load i64, ptr %i.tb, align 8, !noalias !2327 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %.sroa.7.0.copyload.i107.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !2327 ; 2 uses
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %.sroa.10.0.copyload.i.i.i = load ptr, ptr %.sroa.10.0..sroa_idx.i.i.i, align 8, !noalias !2327 ; 2 uses
  %.sroa.12.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 32 ; 2 uses
  %i.tm = load <2 x i64>, ptr %.sroa.12.0..sroa_idx.i.i.i, align 8, !noalias !2327
  %.sroa.12.0.copyload.i.i.i = load i64, ptr %.sroa.12.0..sroa_idx.i.i.i, align 8, !noalias !2327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !2292
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !noalias !2292
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !2292
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !2292
  store ptr @146, ptr %i.by, align 8, !noalias !2328
  %i.tn = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i64 4, ptr %i.tn, align 8, !noalias !2328
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !noalias !2328
  %.not.i.i.i9.i = icmp eq i64 %.sroa.054.0.copyload.i.i.i, 2
  br i1 %.not.i.i.i9.i, label %_ZN12clap_builder6parser5error12MatchesError6unwrap17h2538d813e74ad56aE.exit.i.i.i, label %bb.er, !prof !2331

bb.er:                                            ; preds = %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17h774e5be826b4ec35E.exit.i.i.i
  store i64 %.sroa.054.0.copyload.i.i.i, ptr %i.bx, align 8, !noalias !2332
  %.sroa.7.0..sroa_idx56.i.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i64 %.sroa.7.0.copyload.i107.i.i, ptr %.sroa.7.0..sroa_idx56.i.i.i, align 8, !noalias !2332
  %.sroa.10.0..sroa_idx58.i.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store ptr %.sroa.10.0.copyload.i.i.i, ptr %.sroa.10.0..sroa_idx58.i.i.i, align 8, !noalias !2332
  %.sroa.12.0..sroa_idx60.i.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store <2 x i64> %i.tm, ptr %.sroa.12.0..sroa_idx60.i.i.i, align 8, !noalias !2332
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !2328
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !2328
  store ptr %i.by, ptr %i.bv, align 8, !noalias !2328
  br label %.invoke.i.i

.invoke.i.i:                                      ; preds = %bb.er, %bb.cx
  %.sink226.i.sroa.phi.i = phi ptr [ %.sink226.i.sroa.gep.i, %bb.cx ], [ %.sink226.i.sroa.gep31.i, %bb.er ]
  %.sink226.i.sroa.phi32.i = phi ptr [ %.sink226.i.sroa.gep33.i, %bb.cx ], [ %.sink226.i.sroa.gep34.i, %bb.er ]
  %.sink226.i.sroa.phi35.i = phi ptr [ %.sink226.i.sroa.gep36.i, %bb.cx ], [ %.sink226.i.sroa.gep37.i, %bb.er ]
  %.sink226.i.i = phi ptr [ %i.co, %bb.cx ], [ %i.bv, %bb.er ]
  %.sink223.i.i = phi ptr [ %i.cq, %bb.cx ], [ %i.bx, %bb.er ]
  %.sink221.i.sroa.phi.i = phi ptr [ %.sink221.i.sroa.gep.i, %bb.cx ], [ %.sink221.i.sroa.gep21.i, %bb.er ]
  %.sink221.i.sroa.phi22.i = phi ptr [ %.sink221.i.sroa.gep23.i, %bb.cx ], [ %.sink221.i.sroa.gep24.i, %bb.er ]
  %.sink221.i.sroa.phi25.i = phi ptr [ %.sink221.i.sroa.gep26.i, %bb.cx ], [ %.sink221.i.sroa.gep27.i, %bb.er ]
  %.sink221.i.sroa.phi28.i = phi ptr [ %.sink221.i.sroa.gep29.i, %bb.cx ], [ %.sink221.i.sroa.gep30.i, %bb.er ]
  %.sink221.i.i = phi ptr [ %i.cp, %bb.cx ], [ %i.bw, %bb.er ] ; 2 uses
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h059cc771bb24094dE", ptr %.sink226.i.sroa.phi.i, align 8, !noalias !2199
  store ptr %.sink223.i.i, ptr %.sink226.i.sroa.phi32.i, align 8, !noalias !2199
  store ptr @"_ZN80_$LT$clap_builder..parser..error..MatchesError$u20$as$u20$core..fmt..Display$GT$3fmt17ha5c5d701dae1d4c8E", ptr %.sink226.i.sroa.phi35.i, align 8, !noalias !2199
  store ptr @18, ptr %.sink221.i.i, align 8, !noalias !2199
  store i64 2, ptr %.sink221.i.sroa.phi.i, align 8, !noalias !2199
  store ptr null, ptr %.sink221.i.sroa.phi22.i, align 8, !noalias !2199
  store ptr %.sink226.i.i, ptr %.sink221.i.sroa.phi25.i, align 8, !noalias !2199
  store i64 2, ptr %.sink221.i.sroa.phi28.i, align 8, !noalias !2199
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %.sink221.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #29
          to label %.cont.i.i unwind label %bb.cq, !noalias !2203

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZN12clap_builder6parser5error12MatchesError6unwrap17h2538d813e74ad56aE.exit.i.i.i: ; preds = %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17h774e5be826b4ec35E.exit.i.i.i, %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17h774e5be826b4ec35E.exit.thread.i.i.i
  %.sroa.7.081.i.i.i = phi i64 [ %.sroa.7.0.ph.i.i.i, %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17h774e5be826b4ec35E.exit.thread.i.i.i ], [ %.sroa.7.0.copyload.i107.i.i, %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17h774e5be826b4ec35E.exit.i.i.i ] ; 6 uses
  %.sroa.10.077.i.i.i = phi ptr [ %.sroa.10.0.ph.i.i.i, %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17h774e5be826b4ec35E.exit.thread.i.i.i ], [ %.sroa.10.0.copyload.i.i.i, %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17h774e5be826b4ec35E.exit.i.i.i ] ; 5 uses
  %.sroa.12.076.i.i.i = phi i64 [ %.sroa.12.0.ph.i.i.i, %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17h774e5be826b4ec35E.exit.thread.i.i.i ], [ %.sroa.12.0.copyload.i.i.i, %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17h774e5be826b4ec35E.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !2328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !2292
  %.not.i103.i.i = icmp eq i64 %.sroa.7.081.i.i.i, -9223372036854775808
  br i1 %.not.i103.i.i, label %bb.ft, label %bb.es

bb.es:                                            ; preds = %_ZN12clap_builder6parser5error12MatchesError6unwrap17h2538d813e74ad56aE.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1166.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !2292
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !2292
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.sroa.6.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !2333
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !2337)
  %i.to = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.tp = load ptr, ptr %i.to, align 8, !alias.scope !2337, !noalias !2340, !nonnull !4, !noundef !4 ; 3 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %i.tr = load i64, ptr %i.tq, align 8, !alias.scope !2337, !noalias !2340, !noundef !4 ; 7 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.tr, 4
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tp, i64 %.idx.i.i.i
  %i.tt = icmp eq i64 %i.tr, 0
  br i1 %i.tt, label %.thread.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.es, %.backedge.i.i.i.i
  %i.tu = phi ptr [ %i.tw, %.backedge.i.i.i.i ], [ %i.tp, %bb.es ] ; 3 uses
  %i.tv = phi i64 [ %i.ui, %.backedge.i.i.i.i ], [ 0, %bb.es ] ; 7 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tu, i64 16 ; 2 uses
  %i.tx = getelementptr i8, ptr %i.tu, i64 8
  %.val9.i.i.i.i = load i64, ptr %i.tx, align 8, !noalias !2343, !noundef !4
  %.not.i.i.i.i.i.i128.i.i = icmp eq i64 %.val9.i.i.i.i, 12
  br i1 %.not.i.i.i.i.i.i128.i.i, label %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i.i.i", label %.backedge.i.i.i.i

"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i
  %.val8.i.i.i.i = load ptr, ptr %i.tu, align 8, !noalias !2343, !nonnull !4, !align !170, !noundef !4 ; 2 uses
  %i.ty = load i64, ptr %.val8.i.i.i.i, align 1
  %i.tz = xor i64 %i.ty, 7310575239085057383
  %i.ua = getelementptr i8, ptr %.val8.i.i.i.i, i64 8
  %i.ub = load i32, ptr %i.ua, align 1
  %i.uc = zext i32 %i.ub to i64
  %i.ud = xor i64 %i.uc, 2003136095
  %i.ue = or i64 %i.tz, %i.ud
  %i.uf = icmp ne i64 %i.ue, 0
  %i.ug = zext i1 %i.uf to i32
  %bcmp.i.fr.i.i.i.i.i.i.i = freeze i32 %i.ug
  %i.uh = icmp eq i32 %bcmp.i.fr.i.i.i.i.i.i.i, 0
  br i1 %i.uh, label %bb.et, label %.backedge.i.i.i.i

.backedge.i.i.i.i:                                ; preds = %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i
  %i.ui = add nuw nsw i64 %i.tv, 1
  %i.uj = icmp eq ptr %i.tw, %i.ts
  br i1 %i.uj, label %.thread.i.i.i.i, label %.lr.ph.i.i.i.i

bb.et:                                            ; preds = %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !2348), !noalias !2351
  %i.uk = icmp ult i64 %i.tr, 576460752303423488
  call void @llvm.assume(i1 %i.uk), !noalias !2351
  %.not.i.i129.i.i = icmp samesign ult i64 %i.tv, %i.tr
  br i1 %.not.i.i129.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hf1e330be9de66299E.exit.i.i.i", label %.invoke227.i.i, !prof !178

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hf1e330be9de66299E.exit.i.i.i": ; preds = %bb.et
  %i.ul = getelementptr inbounds nuw [16 x i8], ptr %i.tp, i64 %i.tv ; 4 uses
  %i.um = load ptr, ptr %i.ul, align 8, !noalias !2352, !nonnull !4, !align !170, !noundef !4
  %i.un = getelementptr inbounds nuw i8, ptr %i.ul, i64 8
  %i.uo = load i64, ptr %i.un, align 8, !noalias !2352, !noundef !4
  %i.up = getelementptr inbounds nuw i8, ptr %i.ul, i64 16
  %i.uq = xor i64 %i.tv, -1                       ; 2 uses
  %i.ur = add nsw i64 %i.tr, %i.uq
  %i.us = shl nsw i64 %i.ur, 4
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ul, ptr nonnull align 8 %i.up, i64 %i.us, i1 false), !noalias !2352
  %i.ut = add nsw i64 %i.tr, -1
  store i64 %i.ut, ptr %i.tq, align 8, !alias.scope !2353, !noalias !2340
  call void @llvm.experimental.noalias.scope.decl(metadata !2354), !noalias !2351
  %i.uu = getelementptr inbounds nuw i8, ptr %i.cz, i64 40 ; 2 uses
  %i.uv = load i64, ptr %i.uu, align 8, !alias.scope !2357, !noalias !2358, !noundef !4 ; 5 uses
  %i.uw = icmp ult i64 %i.uv, 88686269585142076
  call void @llvm.assume(i1 %i.uw), !noalias !2351
  %.not.i10.i.i.i = icmp samesign ult i64 %i.tv, %i.uv
  br i1 %.not.i10.i.i.i, label %.noexc.i.i.i, label %.invoke227.i.i, !prof !178

.invoke227.i.i:                                   ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hf1e330be9de66299E.exit.i.i.i", %bb.et
  %i.ux = phi i64 [ %i.tr, %bb.et ], [ %i.uv, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hf1e330be9de66299E.exit.i.i.i" ]
  %i.uy = phi ptr [ @5, %bb.et ], [ @6, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hf1e330be9de66299E.exit.i.i.i" ]
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17headf60d52b65606fE"(i64 noundef %i.tv, i64 noundef %i.ux, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.uy) #29
          to label %.cont228.i.i unwind label %bb.fu, !noalias !2203

.cont228.i.i:                                     ; preds = %.invoke227.i.i
  unreachable

.noexc.i.i.i:                                     ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hf1e330be9de66299E.exit.i.i.i"
  %i.uz = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %i.va = load ptr, ptr %i.uz, align 8, !alias.scope !2357, !noalias !2358, !nonnull !4, !noundef !4
  %i.vb = getelementptr inbounds nuw [104 x i8], ptr %i.va, i64 %i.tv ; 4 uses
  %.sroa.7141.16.copyload142.i.i = load i64, ptr %i.vb, align 8, !noalias !2360 ; 4 uses
  %.sroa.11.16..sroa_idx143.i.i = getelementptr inbounds nuw i8, ptr %i.vb, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.11.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.11.16..sroa_idx143.i.i, i64 96, i1 false), !noalias !2360
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 104
  %i.vd = add nsw i64 %i.uv, %i.uq
  %i.ve = mul nsw i64 %i.vd, 104
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.vb, ptr nonnull align 8 %i.vc, i64 %i.ve, i1 false), !noalias !2361
  %i.vf = add nsw i64 %i.uv, -1
  store i64 %i.vf, ptr %i.uu, align 8, !alias.scope !2357, !noalias !2358
  %.not.i.i38.i.i.i = icmp eq i64 %.sroa.7141.16.copyload142.i.i, 2
  br i1 %.not.i.i38.i.i.i, label %.thread.i.i.i.i, label %bb.eu

bb.eu:                                            ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !2362
  store i64 %.sroa.7141.16.copyload142.i.i, ptr %i.br, align 8, !noalias !2362
  %.sroa.11.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.11.16..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.11.i.i, i64 96, i1 false), !noalias !2362
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !2362
  store i128 -15607121060179142519861403081325339266, ptr %i.bn, align 16, !noalias !2362
  invoke void @_ZN12clap_builder6parser7matches11matched_arg10MatchedArg13infer_type_id17h498c56091c240590E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.bq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.br, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.bn)
          to label %bb.ev unwind label %bb.ey, !noalias !2366

.thread.i.i.i.i:                                  ; preds = %.backedge.i.i.i.i, %.noexc.i.i.i, %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !2333
  br label %.thread.i.i.i

bb.ev:                                            ; preds = %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !2362
  %.sroa.04.0.copyload.i.i.i.i.i = load i128, ptr %i.bq, align 16, !noalias !2362 ; 2 uses
  %i.vg = icmp eq i128 %.sroa.04.0.copyload.i.i.i.i.i, -15607121060179142519861403081325339266
  %i.vh = trunc i128 %.sroa.04.0.copyload.i.i.i.i.i to i8
  br i1 %i.vg, label %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches16try_remove_arg_t17h496dd934298313bfE.exit.i.i.i.i, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !2362
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !2362
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.bo, ptr noundef nonnull align 8 dereferenceable(104) %i.br, i64 104, i1 false), !noalias !2362
  invoke fastcc void @"_ZN12clap_builder4util8flat_map20FlatMap$LT$K$C$V$GT$6insert17he7441719bd5b15b2E"(ptr noalias noundef align 8 captures(address) dereferenceable(104) %i.bp, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.cz, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.um, i64 noundef %i.uo, ptr noalias noundef align 8 captures(address) dereferenceable(104) %i.bo)
          to label %.noexc44.i.i.i unwind label %bb.fu, !noalias !2367

.noexc44.i.i.i:                                   ; preds = %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !2362
  %i.vi = load i64, ptr %i.bp, align 8, !range !298, !alias.scope !2368, !noalias !2362, !noundef !4
  %i.vj = icmp eq i64 %i.vi, 2
  br i1 %i.vj, label %.thread90.i.i.i, label %bb.ex

bb.ex:                                            ; preds = %.noexc44.i.i.i
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$clap_builder..parser..matches..matched_arg..MatchedArg$GT$17h6b9b9f8ff9486e1dE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(104) %i.bp)
          to label %.thread90.i.i.i unwind label %bb.fu, !noalias !2367

.thread90.i.i.i:                                  ; preds = %bb.ex, %.noexc44.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !2362
  %.sroa.10.i.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.10.i.sroa.6.i.i.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.10.i.sroa.6.0..sroa_idx.i.i.i, i64 15, i1 false), !noalias !2333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !2362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !2333
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.1166.i.i.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.10.i.sroa.6.i.i.i, i64 15, i1 false), !noalias !2371
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !2292
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !2292
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.sroa.6.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !2292
  store ptr @147, ptr %i.bi, align 8, !noalias !2372
  %i.vk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i64 12, ptr %i.vk, align 8, !noalias !2372
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !2372
  br label %bb.fx

bb.ey:                                            ; preds = %bb.eu
  %lpad.thr_comm.split-lp.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$clap_builder..parser..matches..matched_arg..MatchedArg$GT$17h6b9b9f8ff9486e1dE"(ptr noalias noundef align 8 dereferenceable(104) %i.br) #30
          to label %.body.i.i.i unwind label %bb.ez, !noalias !2366

bb.ez:                                            ; preds = %bb.ey
  %i.vl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !2366
  unreachable

_ZN12clap_builder6parser7matches11arg_matches10ArgMatches16try_remove_arg_t17h496dd934298313bfE.exit.i.i.i.i: ; preds = %bb.ev
  %.sroa.7.0.copyload.i.i.i.i = load i64, ptr %.sroa.11.16..sroa_idx.i.i, align 8, !noalias !2375 ; 3 uses
  %.sroa.10.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %.sroa.10.i.sroa.0.0.copyload68.i.i.i = load i8, ptr %.sroa.10.0..sroa_idx.i.i.i.i, align 8, !noalias !2333 ; 3 uses
  %.sroa.10.i.sroa.6.0..sroa.10.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.10.i.sroa.6.i.i.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.10.i.sroa.6.0..sroa.10.0..sroa_idx.i.sroa_idx.i.i.i, i64 15, i1 false), !noalias !2333
  %.sroa.11.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %.sroa.11.0.copyload.i.i.i.i = load i128, ptr %.sroa.11.0..sroa_idx.i.i.i.i, align 8, !noalias !2375 ; 2 uses
  %.sroa.12.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.0..sroa_idx.i.i.i.i, i64 56, i1 false), !noalias !2333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !2362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !2333
  %cond.i.i = icmp eq i64 %.sroa.7141.16.copyload142.i.i, 3
  br i1 %cond.i.i, label %bb.fw, label %bb.fa

bb.fa:                                            ; preds = %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches16try_remove_arg_t17h496dd934298313bfE.exit.i.i.i.i
  store i64 %.sroa.7141.16.copyload142.i.i, ptr %i.bu, align 8, !noalias !2333
  %.sroa.3.0..sroa_idx2.i40.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i64 %.sroa.7.0.copyload.i.i.i.i, ptr %.sroa.3.0..sroa_idx2.i40.i.i.i, align 8, !noalias !2333
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store i8 %.sroa.10.i.sroa.0.0.copyload68.i.i.i, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i.i, align 8, !noalias !2333
  %.sroa.10.i.sroa.6.0..sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.10.i.sroa.6.0..sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i.sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.10.i.sroa.6.i.i.i, i64 15, i1 false), !noalias !2333
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  store i128 %.sroa.11.0.copyload.i.i.i.i, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i.i, align 8, !noalias !2333
  %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.i.i.i.i, i64 56, i1 false), !noalias !2333
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !2333
  invoke void @_ZN12clap_builder6parser7matches11matched_arg10MatchedArg17into_vals_flatten17h88b4e7d789f7178bE(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.bt, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(104) %i.bu)
          to label %.noexc46.i.i.i unwind label %bb.fu, !noalias !2367

.noexc46.i.i.i:                                   ; preds = %bb.fa
  invoke fastcc void @"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8dca9623cfa215a3E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.bs, ptr noalias noundef align 8 dereferenceable(96) %i.bt)
          to label %bb.fc unwind label %bb.fb, !noalias !2376

bb.fb:                                            ; preds = %bb.fl, %.noexc46.i.i.i
  %i.vm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i41.i.i.i

.body.i41.i.i.i:                                  ; preds = %bb.fp, %bb.fo, %bb.ff, %bb.fe, %bb.fb
  %eh.lpad-body.i42.i.i.i = phi { ptr, i32 } [ %i.vx, %bb.fe ], [ %i.vm, %bb.fb ], [ %i.vx, %bb.ff ], [ %i.wp, %bb.fp ], [ %i.wp, %bb.fo ]
  invoke fastcc void @"_ZN4core3ptr168drop_in_place$LT$core..iter..adapters..flatten..Flatten$LT$alloc..vec..into_iter..IntoIter$LT$alloc..vec..Vec$LT$clap_builder..util..any_value..AnyValue$GT$$GT$$GT$$GT$17h49654e04aa77ac5aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(96) %i.bt)
          to label %.body.i.i.i unwind label %bb.fs, !noalias !2376

bb.fc:                                            ; preds = %.noexc46.i.i.i
  %i.vn = load ptr, ptr %i.bs, align 8, !noalias !2333, !noundef !4 ; 13 uses
  %.not5.i.i.i.i = icmp eq ptr %i.vn, null
  br i1 %.not5.i.i.i.i, label %bb.fm, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %.sroa.25.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.sroa.25.0.copyload.i.i.i.i = load ptr, ptr %.sroa.25.0..sroa_idx.i.i.i.i, align 8, !noalias !2333, !nonnull !4, !noundef !4 ; 4 uses
  %.sroa.36.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !2377)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !2380
  store ptr %i.vn, ptr %i.bm, align 8, !noalias !2384
  %i.vo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %.sroa.25.0.copyload.i.i.i.i, ptr %i.vo, align 8, !noalias !2384
  %i.vp = getelementptr inbounds nuw i8, ptr %.sroa.25.0.copyload.i.i.i.i, i64 16
  %i.vq = load i64, ptr %i.vp, align 8, !range !251, !invariant.load !4, !alias.scope !2377, !noalias !2386
  %i.vr = add i64 %i.vq, -1
  %i.vs = and i64 %i.vr, -16
  %i.vt = getelementptr i8, ptr %i.vn, i64 %i.vs
  %i.vu = getelementptr i8, ptr %i.vt, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !2384
  %i.vv = getelementptr inbounds nuw i8, ptr %.sroa.25.0.copyload.i.i.i.i, i64 24
  %i.vw = load ptr, ptr %i.vv, align 8, !invariant.load !4, !alias.scope !2377, !noalias !2386, !nonnull !4
  invoke void %i.vw(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.bl, ptr noundef align 1 %i.vu)
          to label %"_ZN5alloc4sync83Arc$LT$dyn$u20$core..any..Any$u2b$core..marker..Sync$u2b$core..marker..Send$C$A$GT$8downcast17hff302ce97e23ceb5E.exit.i.i.i.i.i" unwind label %bb.fe, !noalias !2386

bb.fe:                                            ; preds = %bb.fd
  %i.vx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vy = atomicrmw sub ptr %i.vn, i64 1 release, align 8, !noalias !2387
  %i.vz = icmp eq i64 %i.vy, 1
  br i1 %i.vz, label %bb.ff, label %.body.i41.i.i.i

bb.ff:                                            ; preds = %bb.fe
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf71341fb7d59a632E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bm)
          to label %.body.i41.i.i.i unwind label %bb.fg, !noalias !2386

bb.fg:                                            ; preds = %bb.ff
  %i.wa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !2386
  unreachable

"_ZN5alloc4sync83Arc$LT$dyn$u20$core..any..Any$u2b$core..marker..Sync$u2b$core..marker..Send$C$A$GT$8downcast17hff302ce97e23ceb5E.exit.i.i.i.i.i": ; preds = %bb.fd
  %i.wb = load i128, ptr %i.bl, align 16, !noalias !2384, !noundef !4
  %i.wc = icmp eq i128 %i.wb, -15607121060179142519861403081325339266
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !2384
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !2380
  br i1 %i.wc, label %bb.fh, label %bb.fn

bb.fh:                                            ; preds = %"_ZN5alloc4sync83Arc$LT$dyn$u20$core..any..Any$u2b$core..marker..Sync$u2b$core..marker..Send$C$A$GT$8downcast17hff302ce97e23ceb5E.exit.i.i.i.i.i"
  %i.wd = cmpxchg ptr %i.vn, i64 1, i64 0 monotonic monotonic, align 8, !noalias !2392
  %i.we = extractvalue { i64, i1 } %i.wd, 1
  br i1 %i.we, label %bb.fi, label %"_ZN5alloc4sync16Arc$LT$T$C$A$GT$10try_unwrap17hc4dc1d60b9a60547E.exit.i.i.i.i.i"

bb.fi:                                            ; preds = %bb.fh
  fence acquire
  %i.wf = getelementptr inbounds nuw i8, ptr %i.vn, i64 16
  %i.wg = load i8, ptr %i.wf, align 8, !range !412, !noalias !2392, !noundef !4 ; 3 uses
  %i.wh = icmp eq ptr %i.vn, inttoptr (i64 -1 to ptr)
  br i1 %i.wh, label %bb.fm, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.wi = getelementptr inbounds nuw i8, ptr %i.vn, i64 8
  %i.wj = atomicrmw sub ptr %i.wi, i64 1 release, align 8, !noalias !2392
  %i.wk = icmp eq i64 %i.wj, 1
  br i1 %i.wk, label %bb.fk, label %bb.fm

bb.fk:                                            ; preds = %bb.fj
  fence acquire
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.vn, i64 noundef 24, i64 noundef 8) #32, !noalias !2392
  br label %bb.fm

"_ZN5alloc4sync16Arc$LT$T$C$A$GT$10try_unwrap17hc4dc1d60b9a60547E.exit.i.i.i.i.i": ; preds = %bb.fh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !2380
  store ptr %i.vn, ptr %i.bk, align 8, !noalias !2380
  %i.wl = getelementptr inbounds nuw i8, ptr %i.vn, i64 16
  %i.wm = load i8, ptr %i.wl, align 1, !range !412, !alias.scope !2395, !noalias !2398, !noundef !4
end_hunk_1
