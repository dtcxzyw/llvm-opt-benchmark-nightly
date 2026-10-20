Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/xxhash?download=true
inline.NumInlined: 819
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 56
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 64
begin_hunk_0_@XXH3_64bits_update:bb.a
  %i.o = sub nuw nsw i32 256, %i.m
  %i.p = zext nneg i32 %i.o to i64                ; 3 uses
  %.not.i.not = icmp ugt i64 %2, %i.p
  br i1 %.not.i.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.r = zext nneg i32 %i.m to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %i.t = trunc nuw nsw i64 %2 to i32
  %i.u = load i32, ptr %i.l, align 64, !tbaa !38, !alias.scope !123
  %i.v = add i32 %i.u, %i.t
  br label %bb.o

bb.e:                                             ; preds = %bb.c
  %.not74.i = icmp eq i32 %i.m, 0
  br i1 %.not74.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.x = zext nneg i32 %i.m to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull readonly align 1 %1, i64 %i.p, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.p
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !35, !alias.scope !123 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ae = load i64, ptr %i.ad, align 32, !tbaa !34, !alias.scope !123
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.af = load i64, ptr %i.aa, align 8, !tbaa !24, !alias.scope !125 ; 3 uses
  %i.ag = shl i64 %i.af, 3
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ag ; 2 uses
  %i.ai = sub i64 %i.ac, %i.af                    ; 2 uses
  %.not.i3 = icmp ugt i64 %i.ai, 4
  %.pre71.pre = load <2 x i64>, ptr %0, align 64, !tbaa !18, !alias.scope !124 ; 2 uses
  %.phi.trans.insert76.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  br i1 %.not.i3, label %..thread_crit_edge, label %.preheader33

..thread_crit_edge:                               ; preds = %bb.f
  %.phi.trans.insert72.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre73.pre = load <2 x i64>, ptr %.phi.trans.insert72.phi.trans.insert, align 16, !tbaa !18, !alias.scope !128
  %.phi.trans.insert74.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre75.pre = load <2 x i64>, ptr %.phi.trans.insert74.phi.trans.insert, align 32, !tbaa !18, !alias.scope !128
  %.pre77.pre = load <2 x i64>, ptr %.phi.trans.insert76.phi.trans.insert, align 16, !tbaa !18, !alias.scope !128
  br label %.thread

.preheader33:                                     ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ae ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 16) ]
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.phi.trans.insert61 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ak = load <2 x i64>, ptr %i.aj, align 1, !tbaa !18, !alias.scope !127, !noalias !129
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.am = load <2 x i64>, ptr %i.al, align 1, !tbaa !18, !alias.scope !127, !noalias !129
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.ao = load <2 x i64>, ptr %i.an, align 1, !tbaa !18, !alias.scope !127, !noalias !129
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.aq = load <2 x i64>, ptr %i.ap, align 1, !tbaa !18, !alias.scope !127, !noalias !129
  %.phi.trans.insert.promoted = load <2 x i64>, ptr %.phi.trans.insert, align 16
  %.phi.trans.insert61.promoted = load <2 x i64>, ptr %.phi.trans.insert61, align 32
  %.phi.trans.insert63.promoted = load <2 x i64>, ptr %.phi.trans.insert76.phi.trans.insert, align 16
  br label %bb.g

bb.g:                                             ; preds = %.preheader33, %XXH3_accumulate_sse2.exit47.i9
  %.pre64140 = phi <2 x i64> [ %i.eq, %XXH3_accumulate_sse2.exit47.i9 ], [ %.phi.trans.insert63.promoted, %.preheader33 ] ; 2 uses
  %.pre62138 = phi <2 x i64> [ %i.eg, %XXH3_accumulate_sse2.exit47.i9 ], [ %.phi.trans.insert61.promoted, %.preheader33 ] ; 2 uses
  %.pre60136 = phi <2 x i64> [ %i.dw, %XXH3_accumulate_sse2.exit47.i9 ], [ %.phi.trans.insert.promoted, %.preheader33 ] ; 2 uses
  %.pre65 = phi <2 x i64> [ %i.dm, %XXH3_accumulate_sse2.exit47.i9 ], [ %.pre71.pre, %.preheader33 ] ; 2 uses
  %.038.i4 = phi i64 [ %i.et, %XXH3_accumulate_sse2.exit47.i9 ], [ 4, %.preheader33 ]
  %.036.i5 = phi ptr [ %i.es, %XXH3_accumulate_sse2.exit47.i9 ], [ %i.w, %.preheader33 ] ; 2 uses
  %.035.i6 = phi ptr [ %i.h, %XXH3_accumulate_sse2.exit47.i9 ], [ %i.ah, %.preheader33 ]
  %.0.i7 = phi i64 [ %i.ac, %XXH3_accumulate_sse2.exit47.i9 ], [ %i.ai, %.preheader33 ] ; 4 uses
  %.not = icmp eq i64 %.0.i7, 0
  br i1 %.not, label %XXH3_accumulate_sse2.exit47.i9, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 16) ]
  br label %XXH3_accumulate_512_sse2.exit.i23

XXH3_accumulate_512_sse2.exit.i23:                ; preds = %.lr.ph, %XXH3_accumulate_512_sse2.exit.i23
  %i.ar = phi <2 x i64> [ %.pre64140, %.lr.ph ], [ %i.cx, %XXH3_accumulate_512_sse2.exit.i23 ]
  %i.as = phi <2 x i64> [ %.pre62138, %.lr.ph ], [ %i.ck, %XXH3_accumulate_512_sse2.exit.i23 ]
  %i.at = phi <2 x i64> [ %.pre60136, %.lr.ph ], [ %i.bx, %XXH3_accumulate_512_sse2.exit.i23 ]
  %i.au = phi <2 x i64> [ %.pre65, %.lr.ph ], [ %i.bk, %XXH3_accumulate_512_sse2.exit.i23 ]
  %.0.i46.i838 = phi i64 [ 0, %.lr.ph ], [ %i.cy, %XXH3_accumulate_512_sse2.exit.i23 ] ; 3 uses
  %i.av = shl i64 %.0.i46.i838, 6
  %i.aw = getelementptr inbounds nuw i8, ptr %.036.i5, i64 %i.av ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ax, i32 0, i32 3, i32 1), !noalias !130
  %i.ay = shl i64 %.0.i46.i838, 3
  %i.az = getelementptr inbounds nuw i8, ptr %.035.i6, i64 %i.ay ; 4 uses
  %i.ba = load <2 x i64>, ptr %i.aw, align 1, !tbaa !18, !alias.scope !126, !noalias !131 ; 2 uses
  %i.bb = load <2 x i64>, ptr %i.az, align 1, !tbaa !18, !alias.scope !127, !noalias !131
  %i.bc = xor <2 x i64> %i.bb, %i.ba              ; 2 uses
  %i.bd = bitcast <2 x i64> %i.bc to <4 x i32>
  %i.be = and <2 x i64> %i.bc, splat (i64 4294967295)
  %i.bf = and <4 x i32> %i.bd, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner = shufflevector <4 x i32> %i.bf, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.bg = bitcast <4 x i32> %.inner to <2 x i64>
  %i.bh = mul nuw <2 x i64> %i.be, %i.bg
  %i.bi = shufflevector <2 x i64> %i.ba, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.bj = add <2 x i64> %i.au, %i.bi
  %i.bk = add <2 x i64> %i.bj, %i.bh              ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bm = load <2 x i64>, ptr %i.bl, align 1, !tbaa !18, !alias.scope !126, !noalias !131 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bo = load <2 x i64>, ptr %i.bn, align 1, !tbaa !18, !alias.scope !127, !noalias !131
  %i.bp = xor <2 x i64> %i.bo, %i.bm              ; 2 uses
  %i.bq = bitcast <2 x i64> %i.bp to <4 x i32>
  %i.br = and <2 x i64> %i.bp, splat (i64 4294967295)
  %i.bs = and <4 x i32> %i.bq, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner185 = shufflevector <4 x i32> %i.bs, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.bt = bitcast <4 x i32> %.inner185 to <2 x i64>
  %i.bu = mul nuw <2 x i64> %i.br, %i.bt
  %i.bv = shufflevector <2 x i64> %i.bm, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.bw = add <2 x i64> %i.at, %i.bv
  %i.bx = add <2 x i64> %i.bw, %i.bu              ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.bz = load <2 x i64>, ptr %i.by, align 1, !tbaa !18, !alias.scope !126, !noalias !131 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.cb = load <2 x i64>, ptr %i.ca, align 1, !tbaa !18, !alias.scope !127, !noalias !131
  %i.cc = xor <2 x i64> %i.cb, %i.bz              ; 2 uses
  %i.cd = bitcast <2 x i64> %i.cc to <4 x i32>
  %i.ce = and <2 x i64> %i.cc, splat (i64 4294967295)
  %i.cf = and <4 x i32> %i.cd, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner186 = shufflevector <4 x i32> %i.cf, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.cg = bitcast <4 x i32> %.inner186 to <2 x i64>
  %i.ch = mul nuw <2 x i64> %i.ce, %i.cg
  %i.ci = shufflevector <2 x i64> %i.bz, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.cj = add <2 x i64> %i.as, %i.ci
  %i.ck = add <2 x i64> %i.cj, %i.ch              ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.cm = load <2 x i64>, ptr %i.cl, align 1, !tbaa !18, !alias.scope !126, !noalias !131 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.co = load <2 x i64>, ptr %i.cn, align 1, !tbaa !18, !alias.scope !127, !noalias !131
  %i.cp = xor <2 x i64> %i.co, %i.cm              ; 2 uses
  %i.cq = bitcast <2 x i64> %i.cp to <4 x i32>
  %i.cr = and <2 x i64> %i.cp, splat (i64 4294967295)
  %i.cs = and <4 x i32> %i.cq, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner187 = shufflevector <4 x i32> %i.cs, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.ct = bitcast <4 x i32> %.inner187 to <2 x i64>
  %i.cu = mul nuw <2 x i64> %i.cr, %i.ct
  %i.cv = shufflevector <2 x i64> %i.cm, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.cw = add <2 x i64> %i.ar, %i.cv
  %i.cx = add <2 x i64> %i.cw, %i.cu              ; 2 uses
  %i.cy = add nuw i64 %.0.i46.i838, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.cy, %.0.i7
  br i1 %exitcond.not, label %XXH3_accumulate_sse2.exit47.i9, label %XXH3_accumulate_512_sse2.exit.i23, !llvm.loop !4

XXH3_accumulate_sse2.exit47.i9:                   ; preds = %XXH3_accumulate_512_sse2.exit.i23, %bb.g
  %i.cz = phi <2 x i64> [ %.pre64140, %bb.g ], [ %i.cx, %XXH3_accumulate_512_sse2.exit.i23 ] ; 2 uses
  %i.da = phi <2 x i64> [ %.pre62138, %bb.g ], [ %i.ck, %XXH3_accumulate_512_sse2.exit.i23 ] ; 2 uses
  %i.db = phi <2 x i64> [ %.pre60136, %bb.g ], [ %i.bx, %XXH3_accumulate_512_sse2.exit.i23 ] ; 2 uses
  %i.dc = phi <2 x i64> [ %.pre65, %bb.g ], [ %i.bk, %XXH3_accumulate_512_sse2.exit.i23 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.dd = lshr <2 x i64> %i.dc, splat (i64 47)
  %i.de = xor <2 x i64> %i.ak, %i.dd
  %i.df = xor <2 x i64> %i.de, %i.dc              ; 2 uses
  %i.dg = bitcast <2 x i64> %i.df to <4 x i32>
  %i.dh = shufflevector <4 x i32> %i.dg, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.di = bitcast <4 x i32> %i.dh to <2 x i64>
  %i.dj = and <2 x i64> %i.df, splat (i64 4294967295)
  %i.dk = mul nuw <2 x i64> %i.dj, splat (i64 2654435761)
  %i.dl = mul <2 x i64> %i.di, splat (i64 -7046029290881679360)
  %i.dm = add <2 x i64> %i.dl, %i.dk              ; 3 uses
  %i.dn = lshr <2 x i64> %i.db, splat (i64 47)
  %i.do = xor <2 x i64> %i.am, %i.dn
  %i.dp = xor <2 x i64> %i.do, %i.db              ; 2 uses
  %i.dq = bitcast <2 x i64> %i.dp to <4 x i32>
  %i.dr = shufflevector <4 x i32> %i.dq, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.ds = bitcast <4 x i32> %i.dr to <2 x i64>
  %i.dt = and <2 x i64> %i.dp, splat (i64 4294967295)
  %i.du = mul nuw <2 x i64> %i.dt, splat (i64 2654435761)
  %i.dv = mul <2 x i64> %i.ds, splat (i64 -7046029290881679360)
  %i.dw = add <2 x i64> %i.dv, %i.du              ; 3 uses
  %i.dx = lshr <2 x i64> %i.da, splat (i64 47)
  %i.dy = xor <2 x i64> %i.ao, %i.dx
  %i.dz = xor <2 x i64> %i.dy, %i.da              ; 2 uses
  %i.ea = bitcast <2 x i64> %i.dz to <4 x i32>
  %i.eb = shufflevector <4 x i32> %i.ea, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.ec = bitcast <4 x i32> %i.eb to <2 x i64>
  %i.ed = and <2 x i64> %i.dz, splat (i64 4294967295)
  %i.ee = mul nuw <2 x i64> %i.ed, splat (i64 2654435761)
  %i.ef = mul <2 x i64> %i.ec, splat (i64 -7046029290881679360)
  %i.eg = add <2 x i64> %i.ef, %i.ee              ; 3 uses
  %i.eh = lshr <2 x i64> %i.cz, splat (i64 47)
  %i.ei = xor <2 x i64> %i.aq, %i.eh
  %i.ej = xor <2 x i64> %i.ei, %i.cz              ; 2 uses
  %i.ek = bitcast <2 x i64> %i.ej to <4 x i32>
  %i.el = shufflevector <4 x i32> %i.ek, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.em = bitcast <4 x i32> %i.el to <2 x i64>
  %i.en = and <2 x i64> %i.ej, splat (i64 4294967295)
  %i.eo = mul nuw <2 x i64> %i.en, splat (i64 2654435761)
  %i.ep = mul <2 x i64> %i.em, splat (i64 -7046029290881679360)
  %i.eq = add <2 x i64> %i.ep, %i.eo              ; 3 uses
  %i.er = shl nuw nsw i64 %.0.i7, 6
  %i.es = getelementptr inbounds nuw i8, ptr %.036.i5, i64 %i.er ; 2 uses
  %i.et = sub nuw nsw i64 %.038.i4, %.0.i7        ; 4 uses
  %.not44.i12 = icmp ult i64 %i.et, %i.ac
  br i1 %.not44.i12, label %bb.h, label %bb.g, !llvm.loop !6

bb.h:                                             ; preds = %XXH3_accumulate_sse2.exit47.i9
  store <2 x i64> %i.dw, ptr %.phi.trans.insert, align 16, !tbaa !18, !alias.scope !124
  store <2 x i64> %i.eg, ptr %.phi.trans.insert61, align 32, !tbaa !18, !alias.scope !124
  store <2 x i64> %i.eq, ptr %.phi.trans.insert76.phi.trans.insert, align 16, !tbaa !18, !alias.scope !124
  store <2 x i64> %i.dm, ptr %0, align 64, !tbaa !18, !alias.scope !132
  store i64 0, ptr %i.aa, align 8, !tbaa !24, !alias.scope !125
  %.not45.i16 = icmp eq i64 %i.et, 0
  br i1 %.not45.i16, label %XXH3_consumeStripes.exit24, label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.h
  %.pre77 = phi <2 x i64> [ %i.eq, %bb.h ], [ %.pre77.pre, %..thread_crit_edge ]
  %.pre75 = phi <2 x i64> [ %i.eg, %bb.h ], [ %.pre75.pre, %..thread_crit_edge ]
  %.pre73 = phi <2 x i64> [ %i.dw, %bb.h ], [ %.pre73.pre, %..thread_crit_edge ]
  %.pre71 = phi <2 x i64> [ %i.dm, %bb.h ], [ %.pre71.pre, %..thread_crit_edge ]
  %i.eu = phi i64 [ 0, %bb.h ], [ %i.af, %..thread_crit_edge ]
  %.1.i1531 = phi ptr [ %i.h, %bb.h ], [ %i.ah, %..thread_crit_edge ]
  %.137.i1430 = phi ptr [ %i.es, %bb.h ], [ %i.w, %..thread_crit_edge ]
  %.139.i1329 = phi i64 [ %i.et, %bb.h ], [ 4, %..thread_crit_edge ] ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 16) ]
  %.phi.trans.insert72 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.phi.trans.insert74 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.phi.trans.insert76 = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %XXH3_accumulate_512_sse2.exit51.i21

XXH3_accumulate_512_sse2.exit51.i21:              ; preds = %.thread, %XXH3_accumulate_512_sse2.exit51.i21
  %i.ev = phi <2 x i64> [ %.pre77, %.thread ], [ %i.hb, %XXH3_accumulate_512_sse2.exit51.i21 ]
  %i.ew = phi <2 x i64> [ %.pre75, %.thread ], [ %i.go, %XXH3_accumulate_512_sse2.exit51.i21 ]
  %i.ex = phi <2 x i64> [ %.pre73, %.thread ], [ %i.gb, %XXH3_accumulate_512_sse2.exit51.i21 ]
  %i.ey = phi <2 x i64> [ %.pre71, %.thread ], [ %i.fo, %XXH3_accumulate_512_sse2.exit51.i21 ]
  %.0.i.i1741 = phi i64 [ 0, %.thread ], [ %i.hc, %XXH3_accumulate_512_sse2.exit51.i21 ] ; 3 uses
  %i.ez = shl i64 %.0.i.i1741, 6
  %i.fa = getelementptr inbounds nuw i8, ptr %.137.i1430, i64 %i.ez ; 5 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.fb, i32 0, i32 3, i32 1), !noalias !130
  %i.fc = shl i64 %.0.i.i1741, 3
  %i.fd = getelementptr inbounds nuw i8, ptr %.1.i1531, i64 %i.fc ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %i.fe = load <2 x i64>, ptr %i.fa, align 1, !tbaa !18, !alias.scope !126, !noalias !133 ; 2 uses
  %i.ff = load <2 x i64>, ptr %i.fd, align 1, !tbaa !18, !alias.scope !127, !noalias !133
  %i.fg = xor <2 x i64> %i.ff, %i.fe              ; 2 uses
  %i.fh = bitcast <2 x i64> %i.fg to <4 x i32>
  %i.fi = and <2 x i64> %i.fg, splat (i64 4294967295)
  %i.fj = and <4 x i32> %i.fh, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner188 = shufflevector <4 x i32> %i.fj, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.fk = bitcast <4 x i32> %.inner188 to <2 x i64>
  %i.fl = mul nuw <2 x i64> %i.fi, %i.fk
  %i.fm = shufflevector <2 x i64> %i.fe, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.fn = add <2 x i64> %i.ey, %i.fm
  %i.fo = add <2 x i64> %i.fn, %i.fl              ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fq = load <2 x i64>, ptr %i.fp, align 1, !tbaa !18, !alias.scope !126, !noalias !133 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.fs = load <2 x i64>, ptr %i.fr, align 1, !tbaa !18, !alias.scope !127, !noalias !133
  %i.ft = xor <2 x i64> %i.fs, %i.fq              ; 2 uses
  %i.fu = bitcast <2 x i64> %i.ft to <4 x i32>
  %i.fv = and <2 x i64> %i.ft, splat (i64 4294967295)
  %i.fw = and <4 x i32> %i.fu, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner189 = shufflevector <4 x i32> %i.fw, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.fx = bitcast <4 x i32> %.inner189 to <2 x i64>
  %i.fy = mul nuw <2 x i64> %i.fv, %i.fx
  %i.fz = shufflevector <2 x i64> %i.fq, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ga = add <2 x i64> %i.ex, %i.fz
  %i.gb = add <2 x i64> %i.ga, %i.fy              ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fa, i64 32
  %i.gd = load <2 x i64>, ptr %i.gc, align 1, !tbaa !18, !alias.scope !126, !noalias !133 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fd, i64 32
  %i.gf = load <2 x i64>, ptr %i.ge, align 1, !tbaa !18, !alias.scope !127, !noalias !133
  %i.gg = xor <2 x i64> %i.gf, %i.gd              ; 2 uses
  %i.gh = bitcast <2 x i64> %i.gg to <4 x i32>
  %i.gi = and <2 x i64> %i.gg, splat (i64 4294967295)
  %i.gj = and <4 x i32> %i.gh, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner190 = shufflevector <4 x i32> %i.gj, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.gk = bitcast <4 x i32> %.inner190 to <2 x i64>
  %i.gl = mul nuw <2 x i64> %i.gi, %i.gk
  %i.gm = shufflevector <2 x i64> %i.gd, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.gn = add <2 x i64> %i.ew, %i.gm
  %i.go = add <2 x i64> %i.gn, %i.gl              ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fa, i64 48
  %i.gq = load <2 x i64>, ptr %i.gp, align 1, !tbaa !18, !alias.scope !126, !noalias !133 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fd, i64 48
  %i.gs = load <2 x i64>, ptr %i.gr, align 1, !tbaa !18, !alias.scope !127, !noalias !133
  %i.gt = xor <2 x i64> %i.gs, %i.gq              ; 2 uses
  %i.gu = bitcast <2 x i64> %i.gt to <4 x i32>
  %i.gv = and <2 x i64> %i.gt, splat (i64 4294967295)
  %i.gw = and <4 x i32> %i.gu, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner191 = shufflevector <4 x i32> %i.gw, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.gx = bitcast <4 x i32> %.inner191 to <2 x i64>
  %i.gy = mul nuw <2 x i64> %i.gv, %i.gx
  %i.gz = shufflevector <2 x i64> %i.gq, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ha = add <2 x i64> %i.ev, %i.gz
  %i.hb = add <2 x i64> %i.ha, %i.gy              ; 2 uses
  %i.hc = add nuw i64 %.0.i.i1741, 1              ; 2 uses
  %exitcond54.not = icmp eq i64 %i.hc, %.139.i1329
  br i1 %exitcond54.not, label %XXH3_accumulate_sse2.exit.i18, label %XXH3_accumulate_512_sse2.exit51.i21, !llvm.loop !4

XXH3_accumulate_sse2.exit.i18:                    ; preds = %XXH3_accumulate_512_sse2.exit51.i21
  store <2 x i64> %i.fo, ptr %0, align 64, !tbaa !18, !alias.scope !128
  store <2 x i64> %i.gb, ptr %.phi.trans.insert72, align 16, !tbaa !18, !alias.scope !128
  store <2 x i64> %i.go, ptr %.phi.trans.insert74, align 32, !tbaa !18, !alias.scope !128
  store <2 x i64> %i.hb, ptr %.phi.trans.insert76, align 16, !tbaa !18, !alias.scope !128
  %i.hd = add i64 %i.eu, %.139.i1329
  store i64 %i.hd, ptr %i.aa, align 8, !tbaa !24, !alias.scope !125
  br label %XXH3_consumeStripes.exit24

XXH3_consumeStripes.exit24:                       ; preds = %bb.h, %XXH3_accumulate_sse2.exit.i18
  store i32 0, ptr %i.l, align 64, !tbaa !38, !alias.scope !123
  br label %bb.i

bb.i:                                             ; preds = %XXH3_consumeStripes.exit24, %bb.e
  %.067.i = phi ptr [ %i.z, %XXH3_consumeStripes.exit24 ], [ %1, %bb.e ] ; 5 uses
  %i.he = icmp ult ptr %.067.i, %i.c
  tail call void @llvm.assume(i1 %i.he)
  %i.hf = ptrtoint ptr %i.c to i64                ; 2 uses
  %i.hg = ptrtoint ptr %.067.i to i64             ; 2 uses
  %i.hh = sub i64 %i.hf, %i.hg                    ; 2 uses
  %i.hi = icmp sgt i64 %i.hh, 256
  br i1 %i.hi, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.hj = getelementptr inbounds i8, ptr %i.c, i64 -1
  %i.hk = ptrtoint ptr %i.hj to i64
  %i.hl = sub i64 %i.hk, %i.hg
  %i.hm = lshr i64 %i.hl, 6                       ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !35, !alias.scope !123 ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.hr = load i64, ptr %i.hq, align 32, !tbaa !34, !alias.scope !123
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  %i.hs = load i64, ptr %i.hn, align 8, !tbaa !24, !alias.scope !135 ; 3 uses
  %i.ht = shl i64 %i.hs, 3
  %i.hu = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ht ; 2 uses
  %i.hv = sub i64 %i.hp, %i.hs                    ; 2 uses
  %.not.i2 = icmp ult i64 %i.hm, %i.hv
  br i1 %.not.i2, label %bb.m, label %.preheader32

.preheader32:                                     ; preds = %bb.j
  %i.hw = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.hr ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 16) ]
  %.pre85.pre = load <2 x i64>, ptr %0, align 64, !tbaa !18, !alias.scope !134
  %.phi.trans.insert79 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.phi.trans.insert81 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.phi.trans.insert83 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.hx = load <2 x i64>, ptr %i.hw, align 1, !tbaa !18, !alias.scope !137, !noalias !138
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.hz = load <2 x i64>, ptr %i.hy, align 1, !tbaa !18, !alias.scope !137, !noalias !138
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hw, i64 32
  %i.ib = load <2 x i64>, ptr %i.ia, align 1, !tbaa !18, !alias.scope !137, !noalias !138
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hw, i64 48
  %i.id = load <2 x i64>, ptr %i.ic, align 1, !tbaa !18, !alias.scope !137, !noalias !138
  %.phi.trans.insert79.promoted = load <2 x i64>, ptr %.phi.trans.insert79, align 16
  %.phi.trans.insert81.promoted = load <2 x i64>, ptr %.phi.trans.insert81, align 32
  %.phi.trans.insert83.promoted = load <2 x i64>, ptr %.phi.trans.insert83, align 16
  br label %bb.k

bb.k:                                             ; preds = %.preheader32, %XXH3_accumulate_sse2.exit47.i
  %.pre84151 = phi <2 x i64> [ %i.md, %XXH3_accumulate_sse2.exit47.i ], [ %.phi.trans.insert83.promoted, %.preheader32 ] ; 2 uses
  %.pre82149 = phi <2 x i64> [ %i.lt, %XXH3_accumulate_sse2.exit47.i ], [ %.phi.trans.insert81.promoted, %.preheader32 ] ; 2 uses
  %.pre80147 = phi <2 x i64> [ %i.lj, %XXH3_accumulate_sse2.exit47.i ], [ %.phi.trans.insert79.promoted, %.preheader32 ] ; 2 uses
  %.pre85 = phi <2 x i64> [ %i.kz, %XXH3_accumulate_sse2.exit47.i ], [ %.pre85.pre, %.preheader32 ] ; 2 uses
  %.038.i = phi i64 [ %i.mg, %XXH3_accumulate_sse2.exit47.i ], [ %i.hm, %.preheader32 ]
  %.036.i = phi ptr [ %i.mf, %XXH3_accumulate_sse2.exit47.i ], [ %.067.i, %.preheader32 ] ; 2 uses
  %.035.i = phi ptr [ %i.h, %XXH3_accumulate_sse2.exit47.i ], [ %i.hu, %.preheader32 ]
  %.0.i = phi i64 [ %i.hp, %XXH3_accumulate_sse2.exit47.i ], [ %i.hv, %.preheader32 ] ; 4 uses
  %.not48 = icmp eq i64 %.0.i, 0
  br i1 %.not48, label %XXH3_accumulate_sse2.exit47.i, label %.lr.ph44

.lr.ph44:                                         ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 16) ]
  br label %XXH3_accumulate_512_sse2.exit.i

XXH3_accumulate_512_sse2.exit.i:                  ; preds = %.lr.ph44, %XXH3_accumulate_512_sse2.exit.i
  %i.ie = phi <2 x i64> [ %.pre84151, %.lr.ph44 ], [ %i.kk, %XXH3_accumulate_512_sse2.exit.i ]
  %i.if = phi <2 x i64> [ %.pre82149, %.lr.ph44 ], [ %i.jx, %XXH3_accumulate_512_sse2.exit.i ]
  %i.ig = phi <2 x i64> [ %.pre80147, %.lr.ph44 ], [ %i.jk, %XXH3_accumulate_512_sse2.exit.i ]
  %i.ih = phi <2 x i64> [ %.pre85, %.lr.ph44 ], [ %i.ix, %XXH3_accumulate_512_sse2.exit.i ]
  %.0.i46.i43 = phi i64 [ 0, %.lr.ph44 ], [ %i.kl, %XXH3_accumulate_512_sse2.exit.i ] ; 3 uses
  %i.ii = shl i64 %.0.i46.i43, 6
  %i.ij = getelementptr inbounds nuw i8, ptr %.036.i, i64 %i.ii ; 5 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ik, i32 0, i32 3, i32 1), !noalias !139
  %i.il = shl i64 %.0.i46.i43, 3
  %i.im = getelementptr inbounds nuw i8, ptr %.035.i, i64 %i.il ; 4 uses
  %i.in = load <2 x i64>, ptr %i.ij, align 1, !tbaa !18, !alias.scope !136, !noalias !140 ; 2 uses
  %i.io = load <2 x i64>, ptr %i.im, align 1, !tbaa !18, !alias.scope !137, !noalias !140
  %i.ip = xor <2 x i64> %i.io, %i.in              ; 2 uses
  %i.iq = bitcast <2 x i64> %i.ip to <4 x i32>
  %i.ir = and <2 x i64> %i.ip, splat (i64 4294967295)
  %i.is = and <4 x i32> %i.iq, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner192 = shufflevector <4 x i32> %i.is, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.it = bitcast <4 x i32> %.inner192 to <2 x i64>
  %i.iu = mul nuw <2 x i64> %i.ir, %i.it
  %i.iv = shufflevector <2 x i64> %i.in, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.iw = add <2 x i64> %i.ih, %i.iv
  %i.ix = add <2 x i64> %i.iw, %i.iu              ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %i.iz = load <2 x i64>, ptr %i.iy, align 1, !tbaa !18, !alias.scope !136, !noalias !140 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  %i.jb = load <2 x i64>, ptr %i.ja, align 1, !tbaa !18, !alias.scope !137, !noalias !140
  %i.jc = xor <2 x i64> %i.jb, %i.iz              ; 2 uses
  %i.jd = bitcast <2 x i64> %i.jc to <4 x i32>
  %i.je = and <2 x i64> %i.jc, splat (i64 4294967295)
  %i.jf = and <4 x i32> %i.jd, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner193 = shufflevector <4 x i32> %i.jf, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.jg = bitcast <4 x i32> %.inner193 to <2 x i64>
  %i.jh = mul nuw <2 x i64> %i.je, %i.jg
  %i.ji = shufflevector <2 x i64> %i.iz, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.jj = add <2 x i64> %i.ig, %i.ji
  %i.jk = add <2 x i64> %i.jj, %i.jh              ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ij, i64 32
  %i.jm = load <2 x i64>, ptr %i.jl, align 1, !tbaa !18, !alias.scope !136, !noalias !140 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.im, i64 32
  %i.jo = load <2 x i64>, ptr %i.jn, align 1, !tbaa !18, !alias.scope !137, !noalias !140
  %i.jp = xor <2 x i64> %i.jo, %i.jm              ; 2 uses
  %i.jq = bitcast <2 x i64> %i.jp to <4 x i32>
  %i.jr = and <2 x i64> %i.jp, splat (i64 4294967295)
  %i.js = and <4 x i32> %i.jq, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner194 = shufflevector <4 x i32> %i.js, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.jt = bitcast <4 x i32> %.inner194 to <2 x i64>
  %i.ju = mul nuw <2 x i64> %i.jr, %i.jt
  %i.jv = shufflevector <2 x i64> %i.jm, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.jw = add <2 x i64> %i.if, %i.jv
  %i.jx = add <2 x i64> %i.jw, %i.ju              ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ij, i64 48
  %i.jz = load <2 x i64>, ptr %i.jy, align 1, !tbaa !18, !alias.scope !136, !noalias !140 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.im, i64 48
  %i.kb = load <2 x i64>, ptr %i.ka, align 1, !tbaa !18, !alias.scope !137, !noalias !140
  %i.kc = xor <2 x i64> %i.kb, %i.jz              ; 2 uses
  %i.kd = bitcast <2 x i64> %i.kc to <4 x i32>
  %i.ke = and <2 x i64> %i.kc, splat (i64 4294967295)
  %i.kf = and <4 x i32> %i.kd, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner195 = shufflevector <4 x i32> %i.kf, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.kg = bitcast <4 x i32> %.inner195 to <2 x i64>
  %i.kh = mul nuw <2 x i64> %i.ke, %i.kg
  %i.ki = shufflevector <2 x i64> %i.jz, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.kj = add <2 x i64> %i.ie, %i.ki
  %i.kk = add <2 x i64> %i.kj, %i.kh              ; 2 uses
  %i.kl = add nuw i64 %.0.i46.i43, 1              ; 2 uses
  %exitcond56.not = icmp eq i64 %i.kl, %.0.i
  br i1 %exitcond56.not, label %XXH3_accumulate_sse2.exit47.i, label %XXH3_accumulate_512_sse2.exit.i, !llvm.loop !4

XXH3_accumulate_sse2.exit47.i:                    ; preds = %XXH3_accumulate_512_sse2.exit.i, %bb.k
  %i.km = phi <2 x i64> [ %.pre84151, %bb.k ], [ %i.kk, %XXH3_accumulate_512_sse2.exit.i ] ; 2 uses
  %i.kn = phi <2 x i64> [ %.pre82149, %bb.k ], [ %i.jx, %XXH3_accumulate_512_sse2.exit.i ] ; 2 uses
  %i.ko = phi <2 x i64> [ %.pre80147, %bb.k ], [ %i.jk, %XXH3_accumulate_512_sse2.exit.i ] ; 2 uses
  %i.kp = phi <2 x i64> [ %.pre85, %bb.k ], [ %i.ix, %XXH3_accumulate_512_sse2.exit.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  %i.kq = lshr <2 x i64> %i.kp, splat (i64 47)
  %i.kr = xor <2 x i64> %i.hx, %i.kq
  %i.ks = xor <2 x i64> %i.kr, %i.kp              ; 2 uses
  %i.kt = bitcast <2 x i64> %i.ks to <4 x i32>
  %i.ku = shufflevector <4 x i32> %i.kt, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.kv = bitcast <4 x i32> %i.ku to <2 x i64>
  %i.kw = and <2 x i64> %i.ks, splat (i64 4294967295)
  %i.kx = mul nuw <2 x i64> %i.kw, splat (i64 2654435761)
  %i.ky = mul <2 x i64> %i.kv, splat (i64 -7046029290881679360)
  %i.kz = add <2 x i64> %i.ky, %i.kx              ; 2 uses
  %i.la = lshr <2 x i64> %i.ko, splat (i64 47)
  %i.lb = xor <2 x i64> %i.hz, %i.la
  %i.lc = xor <2 x i64> %i.lb, %i.ko              ; 2 uses
  %i.ld = bitcast <2 x i64> %i.lc to <4 x i32>
  %i.le = shufflevector <4 x i32> %i.ld, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.lf = bitcast <4 x i32> %i.le to <2 x i64>
  %i.lg = and <2 x i64> %i.lc, splat (i64 4294967295)
  %i.lh = mul nuw <2 x i64> %i.lg, splat (i64 2654435761)
  %i.li = mul <2 x i64> %i.lf, splat (i64 -7046029290881679360)
  %i.lj = add <2 x i64> %i.li, %i.lh              ; 2 uses
  %i.lk = lshr <2 x i64> %i.kn, splat (i64 47)
  %i.ll = xor <2 x i64> %i.ib, %i.lk
  %i.lm = xor <2 x i64> %i.ll, %i.kn              ; 2 uses
  %i.ln = bitcast <2 x i64> %i.lm to <4 x i32>
  %i.lo = shufflevector <4 x i32> %i.ln, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.lp = bitcast <4 x i32> %i.lo to <2 x i64>
  %i.lq = and <2 x i64> %i.lm, splat (i64 4294967295)
  %i.lr = mul nuw <2 x i64> %i.lq, splat (i64 2654435761)
  %i.ls = mul <2 x i64> %i.lp, splat (i64 -7046029290881679360)
  %i.lt = add <2 x i64> %i.ls, %i.lr              ; 2 uses
  %i.lu = lshr <2 x i64> %i.km, splat (i64 47)
  %i.lv = xor <2 x i64> %i.id, %i.lu
  %i.lw = xor <2 x i64> %i.lv, %i.km              ; 2 uses
  %i.lx = bitcast <2 x i64> %i.lw to <4 x i32>
  %i.ly = shufflevector <4 x i32> %i.lx, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.lz = bitcast <4 x i32> %i.ly to <2 x i64>
  %i.ma = and <2 x i64> %i.lw, splat (i64 4294967295)
  %i.mb = mul nuw <2 x i64> %i.ma, splat (i64 2654435761)
  %i.mc = mul <2 x i64> %i.lz, splat (i64 -7046029290881679360)
  %i.md = add <2 x i64> %i.mc, %i.mb              ; 2 uses
  %i.me = shl nuw i64 %.0.i, 6
  %i.mf = getelementptr inbounds nuw i8, ptr %.036.i, i64 %i.me ; 2 uses
  %i.mg = sub nuw nsw i64 %.038.i, %.0.i          ; 3 uses
  %.not44.i = icmp ult i64 %i.mg, %i.hp
  br i1 %.not44.i, label %bb.l, label %bb.k, !llvm.loop !6

bb.l:                                             ; preds = %XXH3_accumulate_sse2.exit47.i
  store <2 x i64> %i.lj, ptr %.phi.trans.insert79, align 16, !tbaa !18, !alias.scope !134
  store <2 x i64> %i.lt, ptr %.phi.trans.insert81, align 32, !tbaa !18, !alias.scope !134
  store <2 x i64> %i.md, ptr %.phi.trans.insert83, align 16, !tbaa !18, !alias.scope !134
  store <2 x i64> %i.kz, ptr %0, align 64, !tbaa !18, !alias.scope !141
  store i64 0, ptr %i.hn, align 8, !tbaa !24, !alias.scope !135
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %i.mh = phi i64 [ 0, %bb.l ], [ %i.hs, %bb.j ]
  %.139.i = phi i64 [ %i.mg, %bb.l ], [ %i.hm, %bb.j ] ; 4 uses
  %.137.i = phi ptr [ %i.mf, %bb.l ], [ %.067.i, %bb.j ] ; 3 uses
  %.1.i = phi ptr [ %i.h, %bb.l ], [ %i.hu, %bb.j ]
  %.not45.i = icmp eq i64 %.139.i, 0
  br i1 %.not45.i, label %XXH3_consumeStripes.exit, label %.preheader

.preheader:                                       ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 16) ]
  %.pre92 = load <2 x i64>, ptr %0, align 64, !tbaa !18, !alias.scope !142
  %.phi.trans.insert93 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.pre94 = load <2 x i64>, ptr %.phi.trans.insert93, align 16, !tbaa !18, !alias.scope !142
  %.phi.trans.insert95 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.pre96 = load <2 x i64>, ptr %.phi.trans.insert95, align 32, !tbaa !18, !alias.scope !142
  %.phi.trans.insert97 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.pre98 = load <2 x i64>, ptr %.phi.trans.insert97, align 16, !tbaa !18, !alias.scope !142
  br label %XXH3_accumulate_512_sse2.exit51.i

XXH3_accumulate_512_sse2.exit51.i:                ; preds = %.preheader, %XXH3_accumulate_512_sse2.exit51.i
  %i.mi = phi <2 x i64> [ %.pre98, %.preheader ], [ %i.oo, %XXH3_accumulate_512_sse2.exit51.i ]
  %i.mj = phi <2 x i64> [ %.pre96, %.preheader ], [ %i.ob, %XXH3_accumulate_512_sse2.exit51.i ]
  %i.mk = phi <2 x i64> [ %.pre94, %.preheader ], [ %i.no, %XXH3_accumulate_512_sse2.exit51.i ]
  %i.ml = phi <2 x i64> [ %.pre92, %.preheader ], [ %i.nb, %XXH3_accumulate_512_sse2.exit51.i ]
  %.0.i.i47 = phi i64 [ 0, %.preheader ], [ %i.op, %XXH3_accumulate_512_sse2.exit51.i ] ; 3 uses
  %i.mm = shl i64 %.0.i.i47, 6
  %i.mn = getelementptr inbounds nuw i8, ptr %.137.i, i64 %i.mm ; 5 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.mo, i32 0, i32 3, i32 1), !noalias !139
  %i.mp = shl i64 %.0.i.i47, 3
  %i.mq = getelementptr inbounds nuw i8, ptr %.1.i, i64 %i.mp ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  %i.mr = load <2 x i64>, ptr %i.mn, align 1, !tbaa !18, !alias.scope !136, !noalias !143 ; 2 uses
  %i.ms = load <2 x i64>, ptr %i.mq, align 1, !tbaa !18, !alias.scope !137, !noalias !143
  %i.mt = xor <2 x i64> %i.ms, %i.mr              ; 2 uses
  %i.mu = bitcast <2 x i64> %i.mt to <4 x i32>
  %i.mv = and <2 x i64> %i.mt, splat (i64 4294967295)
  %i.mw = and <4 x i32> %i.mu, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner196 = shufflevector <4 x i32> %i.mw, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.mx = bitcast <4 x i32> %.inner196 to <2 x i64>
  %i.my = mul nuw <2 x i64> %i.mv, %i.mx
  %i.mz = shufflevector <2 x i64> %i.mr, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.na = add <2 x i64> %i.ml, %i.mz
  %i.nb = add <2 x i64> %i.na, %i.my              ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mn, i64 16
  %i.nd = load <2 x i64>, ptr %i.nc, align 1, !tbaa !18, !alias.scope !136, !noalias !143 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  %i.nf = load <2 x i64>, ptr %i.ne, align 1, !tbaa !18, !alias.scope !137, !noalias !143
  %i.ng = xor <2 x i64> %i.nf, %i.nd              ; 2 uses
  %i.nh = bitcast <2 x i64> %i.ng to <4 x i32>
  %i.ni = and <2 x i64> %i.ng, splat (i64 4294967295)
  %i.nj = and <4 x i32> %i.nh, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner197 = shufflevector <4 x i32> %i.nj, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.nk = bitcast <4 x i32> %.inner197 to <2 x i64>
  %i.nl = mul nuw <2 x i64> %i.ni, %i.nk
  %i.nm = shufflevector <2 x i64> %i.nd, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.nn = add <2 x i64> %i.mk, %i.nm
  %i.no = add <2 x i64> %i.nn, %i.nl              ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.mn, i64 32
  %i.nq = load <2 x i64>, ptr %i.np, align 1, !tbaa !18, !alias.scope !136, !noalias !143 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.mq, i64 32
  %i.ns = load <2 x i64>, ptr %i.nr, align 1, !tbaa !18, !alias.scope !137, !noalias !143
  %i.nt = xor <2 x i64> %i.ns, %i.nq              ; 2 uses
  %i.nu = bitcast <2 x i64> %i.nt to <4 x i32>
  %i.nv = and <2 x i64> %i.nt, splat (i64 4294967295)
  %i.nw = and <4 x i32> %i.nu, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner198 = shufflevector <4 x i32> %i.nw, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.nx = bitcast <4 x i32> %.inner198 to <2 x i64>
  %i.ny = mul nuw <2 x i64> %i.nv, %i.nx
  %i.nz = shufflevector <2 x i64> %i.nq, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.oa = add <2 x i64> %i.mj, %i.nz
  %i.ob = add <2 x i64> %i.oa, %i.ny              ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.mn, i64 48
  %i.od = load <2 x i64>, ptr %i.oc, align 1, !tbaa !18, !alias.scope !136, !noalias !143 ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.mq, i64 48
  %i.of = load <2 x i64>, ptr %i.oe, align 1, !tbaa !18, !alias.scope !137, !noalias !143
  %i.og = xor <2 x i64> %i.of, %i.od              ; 2 uses
  %i.oh = bitcast <2 x i64> %i.og to <4 x i32>
  %i.oi = and <2 x i64> %i.og, splat (i64 4294967295)
  %i.oj = and <4 x i32> %i.oh, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner199 = shufflevector <4 x i32> %i.oj, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.ok = bitcast <4 x i32> %.inner199 to <2 x i64>
  %i.ol = mul nuw <2 x i64> %i.oi, %i.ok
  %i.om = shufflevector <2 x i64> %i.od, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.on = add <2 x i64> %i.mi, %i.om
  %i.oo = add <2 x i64> %i.on, %i.ol              ; 2 uses
  %i.op = add nuw i64 %.0.i.i47, 1                ; 2 uses
  %exitcond59.not = icmp eq i64 %i.op, %.139.i
  br i1 %exitcond59.not, label %XXH3_accumulate_sse2.exit.i, label %XXH3_accumulate_512_sse2.exit51.i, !llvm.loop !4

XXH3_accumulate_sse2.exit.i:                      ; preds = %XXH3_accumulate_512_sse2.exit51.i
  store <2 x i64> %i.nb, ptr %0, align 64, !tbaa !18, !alias.scope !142
  store <2 x i64> %i.no, ptr %.phi.trans.insert93, align 16, !tbaa !18, !alias.scope !142
  store <2 x i64> %i.ob, ptr %.phi.trans.insert95, align 32, !tbaa !18, !alias.scope !142
  store <2 x i64> %i.oo, ptr %.phi.trans.insert97, align 16, !tbaa !18, !alias.scope !142
  %i.oq = shl nuw i64 %.139.i, 6
  %i.or = getelementptr inbounds nuw i8, ptr %.137.i, i64 %i.oq
  %i.os = add i64 %i.mh, %.139.i
  store i64 %i.os, ptr %i.hn, align 8, !tbaa !24, !alias.scope !135
  br label %XXH3_consumeStripes.exit

XXH3_consumeStripes.exit:                         ; preds = %bb.m, %XXH3_accumulate_sse2.exit.i
  %.2.i = phi ptr [ %i.or, %XXH3_accumulate_sse2.exit.i ], [ %.137.i, %bb.m ] ; 3 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ou = getelementptr inbounds i8, ptr %.2.i, i64 -64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.ot, ptr noundef nonnull readonly align 1 dereferenceable(64) %i.ou, i64 64, i1 false)
  %.pre105 = ptrtoint ptr %.2.i to i64
  %.pre106 = sub i64 %i.hf, %.pre105
  br label %bb.n

bb.n:                                             ; preds = %XXH3_consumeStripes.exit, %bb.i
  %.pre-phi107 = phi i64 [ %.pre106, %XXH3_consumeStripes.exit ], [ %i.hh, %bb.i ] ; 3 uses
  %.168.i = phi ptr [ %.2.i, %XXH3_consumeStripes.exit ], [ %.067.i, %bb.i ] ; 2 uses
  %i.ov = icmp ult ptr %.168.i, %i.c
  tail call void @llvm.assume(i1 %i.ov)
  %i.ow = icmp slt i64 %.pre-phi107, 257
  tail call void @llvm.assume(i1 %i.ow)
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.ox, ptr readonly align 1 %.168.i, i64 %.pre-phi107, i1 false)
  %i.oy = trunc i64 %.pre-phi107 to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.d
  %storemerge.i = phi i32 [ %i.oy, %bb.n ], [ %i.v, %bb.d ]
  store i32 %storemerge.i, ptr %i.l, align 64, !tbaa !38, !alias.scope !123
  br label %XXH3_update.exit

XXH3_update.exit:                                 ; preds = %bb.b, %bb.o
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, target_mem: none) uwtable
define i64 @XXH3_64bits_digest(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #19 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = select i1 %i.d, ptr %i.e, ptr %i.c       ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.h = load i64, ptr %i.g, align 16, !tbaa !37  ; 4 uses
  %i.i = icmp ugt i64 %i.h, 240
  br i1 %i.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %.sroa.0.0.copyload = load <2 x i64>, ptr %0, align 16 ; 3 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.13.0.copyload = load <2 x i64>, ptr %.sroa.13.0..sroa_idx, align 16 ; 3 uses
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.23.0.copyload = load <2 x i64>, ptr %.sroa.23.0..sroa_idx, align 16 ; 3 uses
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.33.0.copyload = load <2 x i64>, ptr %.sroa.33.0..sroa_idx, align 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.k = load i32, ptr %i.j, align 64, !tbaa !38  ; 6 uses
  %i.l = icmp ugt i32 %i.k, 63
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = add i32 %i.k, -1
  %i.n = lshr i32 %i.m, 6
  %i.o = zext nneg i32 %i.n to i64                ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.q = load i64, ptr %i.p, align 8, !tbaa !39   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.s = load i64, ptr %i.r, align 8, !tbaa !35   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.v = load i64, ptr %i.u, align 32, !tbaa !34  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  %i.w = shl i64 %i.q, 3
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.w ; 2 uses
  %i.y = sub i64 %i.s, %i.q                       ; 2 uses
  %.not.i = icmp ugt i64 %i.y, %i.o
  br i1 %.not.i, label %.loopexit, label %.preheader22

.preheader22:                                     ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.v ; 4 uses
  %i.aa = load <2 x i64>, ptr %i.z, align 1, !tbaa !18, !alias.scope !160, !noalias !161
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ac = load <2 x i64>, ptr %i.ab, align 1, !tbaa !18, !alias.scope !160, !noalias !161
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ae = load <2 x i64>, ptr %i.ad, align 1, !tbaa !18, !alias.scope !160, !noalias !161
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ag = load <2 x i64>, ptr %i.af, align 1, !tbaa !18, !alias.scope !160, !noalias !161
  br label %bb.d

bb.d:                                             ; preds = %.preheader22, %XXH3_accumulate_sse2.exit47.i
  %.sroa.33.0 = phi <2 x i64> [ %.sroa.33.0.copyload, %.preheader22 ], [ %i.dy, %XXH3_accumulate_sse2.exit47.i ] ; 2 uses
  %.sroa.23.0 = phi <2 x i64> [ %.sroa.23.0.copyload, %.preheader22 ], [ %i.do, %XXH3_accumulate_sse2.exit47.i ] ; 2 uses
  %.sroa.13.0 = phi <2 x i64> [ %.sroa.13.0.copyload, %.preheader22 ], [ %i.de, %XXH3_accumulate_sse2.exit47.i ] ; 2 uses
  %.sroa.0.0 = phi <2 x i64> [ %.sroa.0.0.copyload, %.preheader22 ], [ %i.cu, %XXH3_accumulate_sse2.exit47.i ] ; 2 uses
  %.038.i = phi i64 [ %i.o, %.preheader22 ], [ %i.eb, %XXH3_accumulate_sse2.exit47.i ]
  %.036.i = phi ptr [ %i.t, %.preheader22 ], [ %i.ea, %XXH3_accumulate_sse2.exit47.i ] ; 2 uses
  %.035.i = phi ptr [ %i.x, %.preheader22 ], [ %i.f, %XXH3_accumulate_sse2.exit47.i ]
  %.0.i19 = phi i64 [ %i.y, %.preheader22 ], [ %i.s, %XXH3_accumulate_sse2.exit47.i ] ; 4 uses
  %.not30 = icmp eq i64 %.0.i19, 0
  br i1 %.not30, label %XXH3_accumulate_sse2.exit47.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.sroa.33.1 = phi <2 x i64> [ %i.cj, %.lr.ph ], [ %.sroa.33.0, %bb.d ]
  %.sroa.23.1 = phi <2 x i64> [ %i.bw, %.lr.ph ], [ %.sroa.23.0, %bb.d ]
  %.sroa.13.1 = phi <2 x i64> [ %i.bj, %.lr.ph ], [ %.sroa.13.0, %bb.d ]
  %.sroa.0.1 = phi <2 x i64> [ %i.aw, %.lr.ph ], [ %.sroa.0.0, %bb.d ]
  %.0.i46.i25 = phi i64 [ %i.ck, %.lr.ph ], [ 0, %bb.d ] ; 3 uses
  %i.ah = shl i64 %.0.i46.i25, 6
  %i.ai = getelementptr inbounds nuw i8, ptr %.036.i, i64 %i.ah ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.aj, i32 0, i32 3, i32 1), !noalias !162
  %i.ak = shl i64 %.0.i46.i25, 3
  %i.al = getelementptr inbounds nuw i8, ptr %.035.i, i64 %i.ak ; 4 uses
  %i.am = load <2 x i64>, ptr %i.ai, align 1, !tbaa !18, !alias.scope !159, !noalias !163 ; 2 uses
  %i.an = load <2 x i64>, ptr %i.al, align 1, !tbaa !18, !alias.scope !160, !noalias !163
  %i.ao = xor <2 x i64> %i.an, %i.am              ; 2 uses
  %i.ap = bitcast <2 x i64> %i.ao to <4 x i32>
  %i.aq = and <2 x i64> %i.ao, splat (i64 4294967295)
  %i.ar = and <4 x i32> %i.ap, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner = shufflevector <4 x i32> %i.ar, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.as = bitcast <4 x i32> %.inner to <2 x i64>
  %i.at = mul nuw <2 x i64> %i.aq, %i.as
  %i.au = shufflevector <2 x i64> %i.am, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.av = add <2 x i64> %.sroa.0.1, %i.au
  %i.aw = add <2 x i64> %i.av, %i.at              ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ay = load <2 x i64>, ptr %i.ax, align 1, !tbaa !18, !alias.scope !159, !noalias !163 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ba = load <2 x i64>, ptr %i.az, align 1, !tbaa !18, !alias.scope !160, !noalias !163
  %i.bb = xor <2 x i64> %i.ba, %i.ay              ; 2 uses
  %i.bc = bitcast <2 x i64> %i.bb to <4 x i32>
  %i.bd = and <2 x i64> %i.bb, splat (i64 4294967295)
  %i.be = and <4 x i32> %i.bc, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner87 = shufflevector <4 x i32> %i.be, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.bf = bitcast <4 x i32> %.inner87 to <2 x i64>
  %i.bg = mul nuw <2 x i64> %i.bd, %i.bf
  %i.bh = shufflevector <2 x i64> %i.ay, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.bi = add <2 x i64> %.sroa.13.1, %i.bh
  %i.bj = add <2 x i64> %i.bi, %i.bg              ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.bl = load <2 x i64>, ptr %i.bk, align 1, !tbaa !18, !alias.scope !159, !noalias !163 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.bn = load <2 x i64>, ptr %i.bm, align 1, !tbaa !18, !alias.scope !160, !noalias !163
  %i.bo = xor <2 x i64> %i.bn, %i.bl              ; 2 uses
  %i.bp = bitcast <2 x i64> %i.bo to <4 x i32>
  %i.bq = and <2 x i64> %i.bo, splat (i64 4294967295)
  %i.br = and <4 x i32> %i.bp, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner88 = shufflevector <4 x i32> %i.br, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.bs = bitcast <4 x i32> %.inner88 to <2 x i64>
  %i.bt = mul nuw <2 x i64> %i.bq, %i.bs
  %i.bu = shufflevector <2 x i64> %i.bl, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.bv = add <2 x i64> %.sroa.23.1, %i.bu
  %i.bw = add <2 x i64> %i.bv, %i.bt              ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.by = load <2 x i64>, ptr %i.bx, align 1, !tbaa !18, !alias.scope !159, !noalias !163 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.ca = load <2 x i64>, ptr %i.bz, align 1, !tbaa !18, !alias.scope !160, !noalias !163
  %i.cb = xor <2 x i64> %i.ca, %i.by              ; 2 uses
  %i.cc = bitcast <2 x i64> %i.cb to <4 x i32>
  %i.cd = and <2 x i64> %i.cb, splat (i64 4294967295)
  %i.ce = and <4 x i32> %i.cc, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner89 = shufflevector <4 x i32> %i.ce, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.cf = bitcast <4 x i32> %.inner89 to <2 x i64>
  %i.cg = mul nuw <2 x i64> %i.cd, %i.cf
  %i.ch = shufflevector <2 x i64> %i.by, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ci = add <2 x i64> %.sroa.33.1, %i.ch
  %i.cj = add <2 x i64> %i.ci, %i.cg              ; 2 uses
  %i.ck = add nuw i64 %.0.i46.i25, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ck, %.0.i19
  br i1 %exitcond.not, label %XXH3_accumulate_sse2.exit47.i, label %.lr.ph, !llvm.loop !4

XXH3_accumulate_sse2.exit47.i:                    ; preds = %.lr.ph, %bb.d
  %.sroa.33.2 = phi <2 x i64> [ %.sroa.33.0, %bb.d ], [ %i.cj, %.lr.ph ] ; 2 uses
  %.sroa.23.2 = phi <2 x i64> [ %.sroa.23.0, %bb.d ], [ %i.bw, %.lr.ph ] ; 2 uses
  %.sroa.13.2 = phi <2 x i64> [ %.sroa.13.0, %bb.d ], [ %i.bj, %.lr.ph ] ; 2 uses
  %.sroa.0.2 = phi <2 x i64> [ %.sroa.0.0, %bb.d ], [ %i.aw, %.lr.ph ] ; 2 uses
  %i.cl = lshr <2 x i64> %.sroa.0.2, splat (i64 47)
  %i.cm = xor <2 x i64> %i.aa, %i.cl
  %i.cn = xor <2 x i64> %i.cm, %.sroa.0.2         ; 2 uses
  %i.co = bitcast <2 x i64> %i.cn to <4 x i32>
  %i.cp = shufflevector <4 x i32> %i.co, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.cq = bitcast <4 x i32> %i.cp to <2 x i64>
  %i.cr = and <2 x i64> %i.cn, splat (i64 4294967295)
  %i.cs = mul nuw <2 x i64> %i.cr, splat (i64 2654435761)
  %i.ct = mul <2 x i64> %i.cq, splat (i64 -7046029290881679360)
  %i.cu = add <2 x i64> %i.ct, %i.cs              ; 2 uses
  %i.cv = lshr <2 x i64> %.sroa.13.2, splat (i64 47)
  %i.cw = xor <2 x i64> %i.ac, %i.cv
  %i.cx = xor <2 x i64> %i.cw, %.sroa.13.2        ; 2 uses
  %i.cy = bitcast <2 x i64> %i.cx to <4 x i32>
  %i.cz = shufflevector <4 x i32> %i.cy, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.da = bitcast <4 x i32> %i.cz to <2 x i64>
  %i.db = and <2 x i64> %i.cx, splat (i64 4294967295)
  %i.dc = mul nuw <2 x i64> %i.db, splat (i64 2654435761)
  %i.dd = mul <2 x i64> %i.da, splat (i64 -7046029290881679360)
  %i.de = add <2 x i64> %i.dd, %i.dc              ; 2 uses
  %i.df = lshr <2 x i64> %.sroa.23.2, splat (i64 47)
  %i.dg = xor <2 x i64> %i.ae, %i.df
  %i.dh = xor <2 x i64> %i.dg, %.sroa.23.2        ; 2 uses
  %i.di = bitcast <2 x i64> %i.dh to <4 x i32>
  %i.dj = shufflevector <4 x i32> %i.di, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.dk = bitcast <4 x i32> %i.dj to <2 x i64>
  %i.dl = and <2 x i64> %i.dh, splat (i64 4294967295)
  %i.dm = mul nuw <2 x i64> %i.dl, splat (i64 2654435761)
  %i.dn = mul <2 x i64> %i.dk, splat (i64 -7046029290881679360)
  %i.do = add <2 x i64> %i.dn, %i.dm              ; 2 uses
  %i.dp = lshr <2 x i64> %.sroa.33.2, splat (i64 47)
  %i.dq = xor <2 x i64> %i.ag, %i.dp
  %i.dr = xor <2 x i64> %i.dq, %.sroa.33.2        ; 2 uses
  %i.ds = bitcast <2 x i64> %i.dr to <4 x i32>
  %i.dt = shufflevector <4 x i32> %i.ds, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.du = bitcast <4 x i32> %i.dt to <2 x i64>
  %i.dv = and <2 x i64> %i.dr, splat (i64 4294967295)
  %i.dw = mul nuw <2 x i64> %i.dv, splat (i64 2654435761)
  %i.dx = mul <2 x i64> %i.du, splat (i64 -7046029290881679360)
  %i.dy = add <2 x i64> %i.dx, %i.dw              ; 2 uses
  %i.dz = shl nuw nsw i64 %.0.i19, 6
  %i.ea = getelementptr inbounds nuw i8, ptr %.036.i, i64 %i.dz ; 2 uses
  %i.eb = sub nuw nsw i64 %.038.i, %.0.i19        ; 3 uses
  %.not44.i = icmp ult i64 %i.eb, %i.s
  br i1 %.not44.i, label %.loopexit, label %bb.d, !llvm.loop !6

.loopexit:                                        ; preds = %XXH3_accumulate_sse2.exit47.i, %bb.c
  %.sroa.33.3 = phi <2 x i64> [ %.sroa.33.0.copyload, %bb.c ], [ %i.dy, %XXH3_accumulate_sse2.exit47.i ] ; 2 uses
  %.sroa.23.3 = phi <2 x i64> [ %.sroa.23.0.copyload, %bb.c ], [ %i.do, %XXH3_accumulate_sse2.exit47.i ] ; 2 uses
  %.sroa.13.3 = phi <2 x i64> [ %.sroa.13.0.copyload, %bb.c ], [ %i.de, %XXH3_accumulate_sse2.exit47.i ] ; 2 uses
  %.sroa.0.3 = phi <2 x i64> [ %.sroa.0.0.copyload, %bb.c ], [ %i.cu, %XXH3_accumulate_sse2.exit47.i ] ; 2 uses
  %.139.i = phi i64 [ %i.o, %bb.c ], [ %i.eb, %XXH3_accumulate_sse2.exit47.i ] ; 2 uses
  %.137.i = phi ptr [ %i.t, %bb.c ], [ %i.ea, %XXH3_accumulate_sse2.exit47.i ]
  %.1.i = phi ptr [ %i.x, %bb.c ], [ %i.f, %XXH3_accumulate_sse2.exit47.i ]
  %.not45.i = icmp eq i64 %.139.i, 0
  br i1 %.not45.i, label %XXH3_consumeStripes.exit, label %.preheader

.preheader:                                       ; preds = %.loopexit, %.preheader
  %.sroa.33.4 = phi <2 x i64> [ %i.ge, %.preheader ], [ %.sroa.33.3, %.loopexit ]
  %.sroa.23.4 = phi <2 x i64> [ %i.fr, %.preheader ], [ %.sroa.23.3, %.loopexit ]
  %.sroa.13.4 = phi <2 x i64> [ %i.fe, %.preheader ], [ %.sroa.13.3, %.loopexit ]
  %.sroa.0.4 = phi <2 x i64> [ %i.er, %.preheader ], [ %.sroa.0.3, %.loopexit ]
  %.0.i.i28 = phi i64 [ %i.gf, %.preheader ], [ 0, %.loopexit ] ; 3 uses
  %i.ec = shl i64 %.0.i.i28, 6
  %i.ed = getelementptr inbounds nuw i8, ptr %.137.i, i64 %i.ec ; 5 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ee, i32 0, i32 3, i32 1), !noalias !162
  %i.ef = shl i64 %.0.i.i28, 3
  %i.eg = getelementptr inbounds nuw i8, ptr %.1.i, i64 %i.ef ; 4 uses
  %i.eh = load <2 x i64>, ptr %i.ed, align 1, !tbaa !18, !alias.scope !159, !noalias !164 ; 2 uses
  %i.ei = load <2 x i64>, ptr %i.eg, align 1, !tbaa !18, !alias.scope !160, !noalias !164
  %i.ej = xor <2 x i64> %i.ei, %i.eh              ; 2 uses
  %i.ek = bitcast <2 x i64> %i.ej to <4 x i32>
  %i.el = and <2 x i64> %i.ej, splat (i64 4294967295)
  %i.em = and <4 x i32> %i.ek, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner90 = shufflevector <4 x i32> %i.em, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.en = bitcast <4 x i32> %.inner90 to <2 x i64>
  %i.eo = mul nuw <2 x i64> %i.el, %i.en
  %i.ep = shufflevector <2 x i64> %i.eh, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.eq = add <2 x i64> %.sroa.0.4, %i.ep
  %i.er = add <2 x i64> %i.eq, %i.eo              ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.et = load <2 x i64>, ptr %i.es, align 1, !tbaa !18, !alias.scope !159, !noalias !164 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ev = load <2 x i64>, ptr %i.eu, align 1, !tbaa !18, !alias.scope !160, !noalias !164
  %i.ew = xor <2 x i64> %i.ev, %i.et              ; 2 uses
  %i.ex = bitcast <2 x i64> %i.ew to <4 x i32>
  %i.ey = and <2 x i64> %i.ew, splat (i64 4294967295)
  %i.ez = and <4 x i32> %i.ex, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner91 = shufflevector <4 x i32> %i.ez, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.fa = bitcast <4 x i32> %.inner91 to <2 x i64>
  %i.fb = mul nuw <2 x i64> %i.ey, %i.fa
  %i.fc = shufflevector <2 x i64> %i.et, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.fd = add <2 x i64> %.sroa.13.4, %i.fc
  %i.fe = add <2 x i64> %i.fd, %i.fb              ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  %i.fg = load <2 x i64>, ptr %i.ff, align 1, !tbaa !18, !alias.scope !159, !noalias !164 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  %i.fi = load <2 x i64>, ptr %i.fh, align 1, !tbaa !18, !alias.scope !160, !noalias !164
  %i.fj = xor <2 x i64> %i.fi, %i.fg              ; 2 uses
  %i.fk = bitcast <2 x i64> %i.fj to <4 x i32>
  %i.fl = and <2 x i64> %i.fj, splat (i64 4294967295)
  %i.fm = and <4 x i32> %i.fk, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner92 = shufflevector <4 x i32> %i.fm, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.fn = bitcast <4 x i32> %.inner92 to <2 x i64>
  %i.fo = mul nuw <2 x i64> %i.fl, %i.fn
  %i.fp = shufflevector <2 x i64> %i.fg, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.fq = add <2 x i64> %.sroa.23.4, %i.fp
  %i.fr = add <2 x i64> %i.fq, %i.fo              ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ed, i64 48
  %i.ft = load <2 x i64>, ptr %i.fs, align 1, !tbaa !18, !alias.scope !159, !noalias !164 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.eg, i64 48
  %i.fv = load <2 x i64>, ptr %i.fu, align 1, !tbaa !18, !alias.scope !160, !noalias !164
  %i.fw = xor <2 x i64> %i.fv, %i.ft              ; 2 uses
  %i.fx = bitcast <2 x i64> %i.fw to <4 x i32>
  %i.fy = and <2 x i64> %i.fw, splat (i64 4294967295)
  %i.fz = and <4 x i32> %i.fx, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner93 = shufflevector <4 x i32> %i.fz, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.ga = bitcast <4 x i32> %.inner93 to <2 x i64>
  %i.gb = mul nuw <2 x i64> %i.fy, %i.ga
  %i.gc = shufflevector <2 x i64> %i.ft, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.gd = add <2 x i64> %.sroa.33.4, %i.gc
  %i.ge = add <2 x i64> %i.gd, %i.gb              ; 2 uses
  %i.gf = add nuw i64 %.0.i.i28, 1                ; 2 uses
  %exitcond34.not = icmp eq i64 %i.gf, %.139.i
  br i1 %exitcond34.not, label %XXH3_consumeStripes.exit, label %.preheader, !llvm.loop !4

XXH3_consumeStripes.exit:                         ; preds = %.preheader, %.loopexit
  %.sroa.33.5 = phi <2 x i64> [ %.sroa.33.3, %.loopexit ], [ %i.ge, %.preheader ]
  %.sroa.23.5 = phi <2 x i64> [ %.sroa.23.3, %.loopexit ], [ %i.fr, %.preheader ]
  %.sroa.13.5 = phi <2 x i64> [ %.sroa.13.3, %.loopexit ], [ %i.fe, %.preheader ]
  %.sroa.0.5 = phi <2 x i64> [ %.sroa.0.3, %.loopexit ], [ %i.er, %.preheader ]
  %i.gg = zext i32 %i.k to i64
  %i.gh = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.gg
  %i.gi = getelementptr inbounds i8, ptr %i.gh, i64 -64
  br label %XXH3_digest_long.exit

bb.e:                                             ; preds = %bb.b
  %i.gj = sub nuw nsw i32 64, %i.k
  %i.gk = zext nneg i32 %i.gj to i64              ; 3 uses
  %i.gl = icmp ne i32 %i.k, 0
  tail call void @llvm.assume(i1 %i.gl)
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.gn = sub nsw i64 0, %i.gk
  %i.go = getelementptr inbounds i8, ptr %i.j, i64 %i.gn
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull readonly align 1 %i.go, i64 %i.gk, i1 false)
  %i.gp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gk
  %i.gq = zext nneg i32 %i.k to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gp, ptr nonnull readonly align 64 %i.gm, i64 %i.gq, i1 false)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 544
  %.pre = load i64, ptr %.phi.trans.insert, align 32, !tbaa !34
  br label %XXH3_digest_long.exit

XXH3_digest_long.exit:                            ; preds = %XXH3_consumeStripes.exit, %bb.e
  %i.gr = phi i64 [ %i.v, %XXH3_consumeStripes.exit ], [ %.pre, %bb.e ]
  %.sroa.33.6 = phi <2 x i64> [ %.sroa.33.5, %XXH3_consumeStripes.exit ], [ %.sroa.33.0.copyload, %bb.e ]
  %.sroa.23.6 = phi <2 x i64> [ %.sroa.23.5, %XXH3_consumeStripes.exit ], [ %.sroa.23.0.copyload, %bb.e ]
  %.sroa.13.6 = phi <2 x i64> [ %.sroa.13.5, %XXH3_consumeStripes.exit ], [ %.sroa.13.0.copyload, %bb.e ]
  %.sroa.0.6 = phi <2 x i64> [ %.sroa.0.5, %XXH3_consumeStripes.exit ], [ %.sroa.0.0.copyload, %bb.e ]
  %.0.i = phi ptr [ %i.gi, %XXH3_consumeStripes.exit ], [ %i.a, %bb.e ] ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.gr ; 4 uses
  %i.gt = getelementptr inbounds i8, ptr %i.gs, i64 -7
  %i.gu = load <2 x i64>, ptr %.0.i, align 1, !tbaa !18, !noalias !165 ; 2 uses
  %i.gv = load <2 x i64>, ptr %i.gt, align 1, !tbaa !18, !noalias !165
  %i.gw = xor <2 x i64> %i.gv, %i.gu              ; 2 uses
  %i.gx = bitcast <2 x i64> %i.gw to <4 x i32>
  %i.gy = and <2 x i64> %i.gw, splat (i64 4294967295)
  %i.gz = and <4 x i32> %i.gx, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner94 = shufflevector <4 x i32> %i.gz, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.ha = bitcast <4 x i32> %.inner94 to <2 x i64>
  %i.hb = mul nuw <2 x i64> %i.gy, %i.ha
  %i.hc = shufflevector <2 x i64> %i.gu, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.hd = add <2 x i64> %.sroa.0.6, %i.hc
  %i.he = add <2 x i64> %i.hd, %i.hb              ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.hg = load <2 x i64>, ptr %i.hf, align 1, !tbaa !18, !noalias !165 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gs, i64 9
  %i.hi = load <2 x i64>, ptr %i.hh, align 1, !tbaa !18, !noalias !165
  %i.hj = xor <2 x i64> %i.hi, %i.hg              ; 2 uses
  %i.hk = bitcast <2 x i64> %i.hj to <4 x i32>
  %i.hl = and <2 x i64> %i.hj, splat (i64 4294967295)
  %i.hm = and <4 x i32> %i.hk, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner95 = shufflevector <4 x i32> %i.hm, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.hn = bitcast <4 x i32> %.inner95 to <2 x i64>
  %i.ho = mul nuw <2 x i64> %i.hl, %i.hn
  %i.hp = shufflevector <2 x i64> %i.hg, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.hq = add <2 x i64> %.sroa.13.6, %i.hp
  %i.hr = add <2 x i64> %i.hq, %i.ho              ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %i.ht = load <2 x i64>, ptr %i.hs, align 1, !tbaa !18, !noalias !165 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gs, i64 25
  %i.hv = load <2 x i64>, ptr %i.hu, align 1, !tbaa !18, !noalias !165
  %i.hw = xor <2 x i64> %i.hv, %i.ht              ; 2 uses
  %i.hx = bitcast <2 x i64> %i.hw to <4 x i32>
  %i.hy = and <2 x i64> %i.hw, splat (i64 4294967295)
  %i.hz = and <4 x i32> %i.hx, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner96 = shufflevector <4 x i32> %i.hz, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.ia = bitcast <4 x i32> %.inner96 to <2 x i64>
  %i.ib = mul nuw <2 x i64> %i.hy, %i.ia
  %i.ic = shufflevector <2 x i64> %i.ht, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.id = add <2 x i64> %.sroa.23.6, %i.ic
  %i.ie = add <2 x i64> %i.id, %i.ib              ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  %i.ig = load <2 x i64>, ptr %i.if, align 1, !tbaa !18, !noalias !165 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.gs, i64 41
  %i.ii = load <2 x i64>, ptr %i.ih, align 1, !tbaa !18, !noalias !165
  %i.ij = xor <2 x i64> %i.ii, %i.ig              ; 2 uses
  %i.ik = bitcast <2 x i64> %i.ij to <4 x i32>
  %i.il = and <2 x i64> %i.ij, splat (i64 4294967295)
  %i.im = and <4 x i32> %i.ik, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner97 = shufflevector <4 x i32> %i.im, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.in = bitcast <4 x i32> %.inner97 to <2 x i64>
  %i.io = mul nuw <2 x i64> %i.il, %i.in
  %i.ip = shufflevector <2 x i64> %i.ig, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.iq = add <2 x i64> %.sroa.33.6, %i.ip
  %i.ir = add <2 x i64> %i.iq, %i.io              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.is = getelementptr inbounds nuw i8, ptr %i.f, i64 11
  %i.it = mul i64 %i.h, -7046029288634856825
  %i.iu = load <8 x i64>, ptr %i.is, align 1, !tbaa !24, !alias.scope !166 ; 2 uses
  %i.iv = shufflevector <8 x i64> %i.iu, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.iw = shufflevector <2 x i64> %i.he, <2 x i64> %i.hr, <2 x i32> <i32 0, i32 2>
  %i.ix = shufflevector <2 x i64> %i.ie, <2 x i64> %i.ir, <2 x i32> <i32 0, i32 2>
  %i.iy = shufflevector <2 x i64> %i.iw, <2 x i64> %i.ix, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.iz = xor <4 x i64> %i.iv, %i.iy
  %i.ja = shufflevector <8 x i64> %i.iu, <8 x i64> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.jb = shufflevector <2 x i64> %i.he, <2 x i64> %i.hr, <2 x i32> <i32 1, i32 3>
  %i.jc = shufflevector <2 x i64> %i.ie, <2 x i64> %i.ir, <2 x i32> <i32 1, i32 3>
  %i.jd = shufflevector <2 x i64> %i.jb, <2 x i64> %i.jc, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.je = xor <4 x i64> %i.ja, %i.jd
  %i.jf = zext <4 x i64> %i.iz to <4 x i128>
  %i.jg = zext <4 x i64> %i.je to <4 x i128>
  %i.jh = mul nuw <4 x i128> %i.jg, %i.jf         ; 2 uses
  %i.ji = lshr <4 x i128> %i.jh, splat (i128 64)
  %i.jj = xor <4 x i128> %i.ji, %i.jh
  %i.jk = trunc <4 x i128> %i.jj to <4 x i64>
  %i.jl = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.jk)
  %op.rdx = add i64 %i.jl, %i.it                  ; 2 uses
  %i.jm = lshr i64 %op.rdx, 37
  %i.jn = xor i64 %i.jm, %op.rdx
  %i.jo = mul i64 %i.jn, 1609587791953885689      ; 2 uses
  %i.jp = lshr i64 %i.jo, 32
  %i.jq = xor i64 %i.jp, %i.jo
end_hunk_0
begin_hunk_1_@XXH3_128bits_reset_withSecretandSeed:bb.a
  store i32 1, ptr %i.m, align 4, !tbaa !36
  br label %XXH3_64bits_reset_withSecretandSeed.exit

XXH3_64bits_reset_withSecretandSeed.exit:         ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef i32 @XXH3_128bits_update(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(address) %1, i64 noundef %2) local_unnamed_addr #21 {
bb.a:
  %i.a = tail call i32 @XXH3_64bits_update(ptr noundef captures(address) %0, ptr noundef captures(address) %1, i64 noundef %2) ; 0 uses
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, target_mem: none) uwtable
define { i64, i64 } @XXH3_128bits_digest(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #19 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = select i1 %i.d, ptr %i.e, ptr %i.c       ; 14 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.h = load i64, ptr %i.g, align 16, !tbaa !37  ; 5 uses
  %i.i = icmp ugt i64 %i.h, 240
  br i1 %i.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %.sroa.0.0.copyload = load <2 x i64>, ptr %0, align 16 ; 3 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.13.0.copyload = load <2 x i64>, ptr %.sroa.13.0..sroa_idx, align 16 ; 3 uses
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.23.0.copyload = load <2 x i64>, ptr %.sroa.23.0..sroa_idx, align 16 ; 3 uses
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.33.0.copyload = load <2 x i64>, ptr %.sroa.33.0..sroa_idx, align 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.k = load i32, ptr %i.j, align 64, !tbaa !38  ; 6 uses
  %i.l = icmp ugt i32 %i.k, 63
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = add i32 %i.k, -1
  %i.n = lshr i32 %i.m, 6
  %i.o = zext nneg i32 %i.n to i64                ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.q = load i64, ptr %i.p, align 8, !tbaa !39   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.s = load i64, ptr %i.r, align 8, !tbaa !35   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.v = load i64, ptr %i.u, align 32, !tbaa !34  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !269)
  %i.w = shl i64 %i.q, 3
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.w ; 2 uses
  %i.y = sub i64 %i.s, %i.q                       ; 2 uses
  %.not.i = icmp ugt i64 %i.y, %i.o
  br i1 %.not.i, label %.loopexit, label %.preheader32

.preheader32:                                     ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.v ; 4 uses
  %i.aa = load <2 x i64>, ptr %i.z, align 1, !tbaa !18, !alias.scope !269, !noalias !270
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ac = load <2 x i64>, ptr %i.ab, align 1, !tbaa !18, !alias.scope !269, !noalias !270
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ae = load <2 x i64>, ptr %i.ad, align 1, !tbaa !18, !alias.scope !269, !noalias !270
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ag = load <2 x i64>, ptr %i.af, align 1, !tbaa !18, !alias.scope !269, !noalias !270
  br label %bb.d

bb.d:                                             ; preds = %.preheader32, %XXH3_accumulate_sse2.exit47.i
  %.sroa.33.0 = phi <2 x i64> [ %.sroa.33.0.copyload, %.preheader32 ], [ %i.dy, %XXH3_accumulate_sse2.exit47.i ] ; 2 uses
  %.sroa.23.0 = phi <2 x i64> [ %.sroa.23.0.copyload, %.preheader32 ], [ %i.do, %XXH3_accumulate_sse2.exit47.i ] ; 2 uses
  %.sroa.13.0 = phi <2 x i64> [ %.sroa.13.0.copyload, %.preheader32 ], [ %i.de, %XXH3_accumulate_sse2.exit47.i ] ; 2 uses
  %.sroa.0.0 = phi <2 x i64> [ %.sroa.0.0.copyload, %.preheader32 ], [ %i.cu, %XXH3_accumulate_sse2.exit47.i ] ; 2 uses
  %.038.i = phi i64 [ %i.o, %.preheader32 ], [ %i.eb, %XXH3_accumulate_sse2.exit47.i ]
  %.036.i = phi ptr [ %i.t, %.preheader32 ], [ %i.ea, %XXH3_accumulate_sse2.exit47.i ] ; 2 uses
  %.035.i = phi ptr [ %i.x, %.preheader32 ], [ %i.f, %XXH3_accumulate_sse2.exit47.i ]
  %.0.i22 = phi i64 [ %i.y, %.preheader32 ], [ %i.s, %XXH3_accumulate_sse2.exit47.i ] ; 4 uses
  %.not40 = icmp eq i64 %.0.i22, 0
  br i1 %.not40, label %XXH3_accumulate_sse2.exit47.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.sroa.33.1 = phi <2 x i64> [ %i.cj, %.lr.ph ], [ %.sroa.33.0, %bb.d ]
  %.sroa.23.1 = phi <2 x i64> [ %i.bw, %.lr.ph ], [ %.sroa.23.0, %bb.d ]
  %.sroa.13.1 = phi <2 x i64> [ %i.bj, %.lr.ph ], [ %.sroa.13.0, %bb.d ]
  %.sroa.0.1 = phi <2 x i64> [ %i.aw, %.lr.ph ], [ %.sroa.0.0, %bb.d ]
  %.0.i46.i35 = phi i64 [ %i.ck, %.lr.ph ], [ 0, %bb.d ] ; 3 uses
  %i.ah = shl i64 %.0.i46.i35, 6
  %i.ai = getelementptr inbounds nuw i8, ptr %.036.i, i64 %i.ah ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.aj, i32 0, i32 3, i32 1), !noalias !271
  %i.ak = shl i64 %.0.i46.i35, 3
  %i.al = getelementptr inbounds nuw i8, ptr %.035.i, i64 %i.ak ; 4 uses
  %i.am = load <2 x i64>, ptr %i.ai, align 1, !tbaa !18, !alias.scope !268, !noalias !272 ; 2 uses
  %i.an = load <2 x i64>, ptr %i.al, align 1, !tbaa !18, !alias.scope !269, !noalias !272
  %i.ao = xor <2 x i64> %i.an, %i.am              ; 2 uses
  %i.ap = bitcast <2 x i64> %i.ao to <4 x i32>
  %i.aq = and <2 x i64> %i.ao, splat (i64 4294967295)
  %i.ar = and <4 x i32> %i.ap, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner = shufflevector <4 x i32> %i.ar, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.as = bitcast <4 x i32> %.inner to <2 x i64>
  %i.at = mul nuw <2 x i64> %i.aq, %i.as
  %i.au = shufflevector <2 x i64> %i.am, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.av = add <2 x i64> %.sroa.0.1, %i.au
  %i.aw = add <2 x i64> %i.av, %i.at              ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ay = load <2 x i64>, ptr %i.ax, align 1, !tbaa !18, !alias.scope !268, !noalias !272 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ba = load <2 x i64>, ptr %i.az, align 1, !tbaa !18, !alias.scope !269, !noalias !272
  %i.bb = xor <2 x i64> %i.ba, %i.ay              ; 2 uses
  %i.bc = bitcast <2 x i64> %i.bb to <4 x i32>
  %i.bd = and <2 x i64> %i.bb, splat (i64 4294967295)
  %i.be = and <4 x i32> %i.bc, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner96 = shufflevector <4 x i32> %i.be, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.bf = bitcast <4 x i32> %.inner96 to <2 x i64>
  %i.bg = mul nuw <2 x i64> %i.bd, %i.bf
  %i.bh = shufflevector <2 x i64> %i.ay, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.bi = add <2 x i64> %.sroa.13.1, %i.bh
  %i.bj = add <2 x i64> %i.bi, %i.bg              ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.bl = load <2 x i64>, ptr %i.bk, align 1, !tbaa !18, !alias.scope !268, !noalias !272 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.bn = load <2 x i64>, ptr %i.bm, align 1, !tbaa !18, !alias.scope !269, !noalias !272
  %i.bo = xor <2 x i64> %i.bn, %i.bl              ; 2 uses
  %i.bp = bitcast <2 x i64> %i.bo to <4 x i32>
  %i.bq = and <2 x i64> %i.bo, splat (i64 4294967295)
  %i.br = and <4 x i32> %i.bp, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner97 = shufflevector <4 x i32> %i.br, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.bs = bitcast <4 x i32> %.inner97 to <2 x i64>
  %i.bt = mul nuw <2 x i64> %i.bq, %i.bs
  %i.bu = shufflevector <2 x i64> %i.bl, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.bv = add <2 x i64> %.sroa.23.1, %i.bu
  %i.bw = add <2 x i64> %i.bv, %i.bt              ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.by = load <2 x i64>, ptr %i.bx, align 1, !tbaa !18, !alias.scope !268, !noalias !272 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.ca = load <2 x i64>, ptr %i.bz, align 1, !tbaa !18, !alias.scope !269, !noalias !272
  %i.cb = xor <2 x i64> %i.ca, %i.by              ; 2 uses
  %i.cc = bitcast <2 x i64> %i.cb to <4 x i32>
  %i.cd = and <2 x i64> %i.cb, splat (i64 4294967295)
  %i.ce = and <4 x i32> %i.cc, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner98 = shufflevector <4 x i32> %i.ce, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.cf = bitcast <4 x i32> %.inner98 to <2 x i64>
  %i.cg = mul nuw <2 x i64> %i.cd, %i.cf
  %i.ch = shufflevector <2 x i64> %i.by, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ci = add <2 x i64> %.sroa.33.1, %i.ch
  %i.cj = add <2 x i64> %i.ci, %i.cg              ; 2 uses
  %i.ck = add nuw i64 %.0.i46.i35, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ck, %.0.i22
  br i1 %exitcond.not, label %XXH3_accumulate_sse2.exit47.i, label %.lr.ph, !llvm.loop !4

XXH3_accumulate_sse2.exit47.i:                    ; preds = %.lr.ph, %bb.d
  %.sroa.33.2 = phi <2 x i64> [ %.sroa.33.0, %bb.d ], [ %i.cj, %.lr.ph ] ; 2 uses
  %.sroa.23.2 = phi <2 x i64> [ %.sroa.23.0, %bb.d ], [ %i.bw, %.lr.ph ] ; 2 uses
  %.sroa.13.2 = phi <2 x i64> [ %.sroa.13.0, %bb.d ], [ %i.bj, %.lr.ph ] ; 2 uses
  %.sroa.0.2 = phi <2 x i64> [ %.sroa.0.0, %bb.d ], [ %i.aw, %.lr.ph ] ; 2 uses
  %i.cl = lshr <2 x i64> %.sroa.0.2, splat (i64 47)
  %i.cm = xor <2 x i64> %i.aa, %i.cl
  %i.cn = xor <2 x i64> %i.cm, %.sroa.0.2         ; 2 uses
  %i.co = bitcast <2 x i64> %i.cn to <4 x i32>
  %i.cp = shufflevector <4 x i32> %i.co, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.cq = bitcast <4 x i32> %i.cp to <2 x i64>
  %i.cr = and <2 x i64> %i.cn, splat (i64 4294967295)
  %i.cs = mul nuw <2 x i64> %i.cr, splat (i64 2654435761)
  %i.ct = mul <2 x i64> %i.cq, splat (i64 -7046029290881679360)
  %i.cu = add <2 x i64> %i.ct, %i.cs              ; 2 uses
  %i.cv = lshr <2 x i64> %.sroa.13.2, splat (i64 47)
  %i.cw = xor <2 x i64> %i.ac, %i.cv
  %i.cx = xor <2 x i64> %i.cw, %.sroa.13.2        ; 2 uses
  %i.cy = bitcast <2 x i64> %i.cx to <4 x i32>
  %i.cz = shufflevector <4 x i32> %i.cy, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.da = bitcast <4 x i32> %i.cz to <2 x i64>
  %i.db = and <2 x i64> %i.cx, splat (i64 4294967295)
  %i.dc = mul nuw <2 x i64> %i.db, splat (i64 2654435761)
  %i.dd = mul <2 x i64> %i.da, splat (i64 -7046029290881679360)
  %i.de = add <2 x i64> %i.dd, %i.dc              ; 2 uses
  %i.df = lshr <2 x i64> %.sroa.23.2, splat (i64 47)
  %i.dg = xor <2 x i64> %i.ae, %i.df
  %i.dh = xor <2 x i64> %i.dg, %.sroa.23.2        ; 2 uses
  %i.di = bitcast <2 x i64> %i.dh to <4 x i32>
  %i.dj = shufflevector <4 x i32> %i.di, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.dk = bitcast <4 x i32> %i.dj to <2 x i64>
  %i.dl = and <2 x i64> %i.dh, splat (i64 4294967295)
  %i.dm = mul nuw <2 x i64> %i.dl, splat (i64 2654435761)
  %i.dn = mul <2 x i64> %i.dk, splat (i64 -7046029290881679360)
  %i.do = add <2 x i64> %i.dn, %i.dm              ; 2 uses
  %i.dp = lshr <2 x i64> %.sroa.33.2, splat (i64 47)
  %i.dq = xor <2 x i64> %i.ag, %i.dp
  %i.dr = xor <2 x i64> %i.dq, %.sroa.33.2        ; 2 uses
  %i.ds = bitcast <2 x i64> %i.dr to <4 x i32>
  %i.dt = shufflevector <4 x i32> %i.ds, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.du = bitcast <4 x i32> %i.dt to <2 x i64>
  %i.dv = and <2 x i64> %i.dr, splat (i64 4294967295)
  %i.dw = mul nuw <2 x i64> %i.dv, splat (i64 2654435761)
  %i.dx = mul <2 x i64> %i.du, splat (i64 -7046029290881679360)
  %i.dy = add <2 x i64> %i.dx, %i.dw              ; 2 uses
  %i.dz = shl nuw nsw i64 %.0.i22, 6
  %i.ea = getelementptr inbounds nuw i8, ptr %.036.i, i64 %i.dz ; 2 uses
  %i.eb = sub nuw nsw i64 %.038.i, %.0.i22        ; 3 uses
  %.not44.i = icmp ult i64 %i.eb, %i.s
  br i1 %.not44.i, label %.loopexit, label %bb.d, !llvm.loop !6

.loopexit:                                        ; preds = %XXH3_accumulate_sse2.exit47.i, %bb.c
  %.sroa.33.3 = phi <2 x i64> [ %.sroa.33.0.copyload, %bb.c ], [ %i.dy, %XXH3_accumulate_sse2.exit47.i ] ; 2 uses
  %.sroa.23.3 = phi <2 x i64> [ %.sroa.23.0.copyload, %bb.c ], [ %i.do, %XXH3_accumulate_sse2.exit47.i ] ; 2 uses
  %.sroa.13.3 = phi <2 x i64> [ %.sroa.13.0.copyload, %bb.c ], [ %i.de, %XXH3_accumulate_sse2.exit47.i ] ; 2 uses
  %.sroa.0.3 = phi <2 x i64> [ %.sroa.0.0.copyload, %bb.c ], [ %i.cu, %XXH3_accumulate_sse2.exit47.i ] ; 2 uses
  %.139.i = phi i64 [ %i.o, %bb.c ], [ %i.eb, %XXH3_accumulate_sse2.exit47.i ] ; 2 uses
  %.137.i = phi ptr [ %i.t, %bb.c ], [ %i.ea, %XXH3_accumulate_sse2.exit47.i ]
  %.1.i = phi ptr [ %i.x, %bb.c ], [ %i.f, %XXH3_accumulate_sse2.exit47.i ]
  %.not45.i = icmp eq i64 %.139.i, 0
  br i1 %.not45.i, label %XXH3_consumeStripes.exit, label %.preheader

.preheader:                                       ; preds = %.loopexit, %.preheader
  %.sroa.33.4 = phi <2 x i64> [ %i.ge, %.preheader ], [ %.sroa.33.3, %.loopexit ]
  %.sroa.23.4 = phi <2 x i64> [ %i.fr, %.preheader ], [ %.sroa.23.3, %.loopexit ]
  %.sroa.13.4 = phi <2 x i64> [ %i.fe, %.preheader ], [ %.sroa.13.3, %.loopexit ]
  %.sroa.0.4 = phi <2 x i64> [ %i.er, %.preheader ], [ %.sroa.0.3, %.loopexit ]
  %.0.i.i38 = phi i64 [ %i.gf, %.preheader ], [ 0, %.loopexit ] ; 3 uses
  %i.ec = shl i64 %.0.i.i38, 6
  %i.ed = getelementptr inbounds nuw i8, ptr %.137.i, i64 %i.ec ; 5 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ee, i32 0, i32 3, i32 1), !noalias !271
  %i.ef = shl i64 %.0.i.i38, 3
  %i.eg = getelementptr inbounds nuw i8, ptr %.1.i, i64 %i.ef ; 4 uses
  %i.eh = load <2 x i64>, ptr %i.ed, align 1, !tbaa !18, !alias.scope !268, !noalias !273 ; 2 uses
  %i.ei = load <2 x i64>, ptr %i.eg, align 1, !tbaa !18, !alias.scope !269, !noalias !273
  %i.ej = xor <2 x i64> %i.ei, %i.eh              ; 2 uses
  %i.ek = bitcast <2 x i64> %i.ej to <4 x i32>
  %i.el = and <2 x i64> %i.ej, splat (i64 4294967295)
  %i.em = and <4 x i32> %i.ek, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner99 = shufflevector <4 x i32> %i.em, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.en = bitcast <4 x i32> %.inner99 to <2 x i64>
  %i.eo = mul nuw <2 x i64> %i.el, %i.en
  %i.ep = shufflevector <2 x i64> %i.eh, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.eq = add <2 x i64> %.sroa.0.4, %i.ep
  %i.er = add <2 x i64> %i.eq, %i.eo              ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.et = load <2 x i64>, ptr %i.es, align 1, !tbaa !18, !alias.scope !268, !noalias !273 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ev = load <2 x i64>, ptr %i.eu, align 1, !tbaa !18, !alias.scope !269, !noalias !273
  %i.ew = xor <2 x i64> %i.ev, %i.et              ; 2 uses
  %i.ex = bitcast <2 x i64> %i.ew to <4 x i32>
  %i.ey = and <2 x i64> %i.ew, splat (i64 4294967295)
  %i.ez = and <4 x i32> %i.ex, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner100 = shufflevector <4 x i32> %i.ez, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.fa = bitcast <4 x i32> %.inner100 to <2 x i64>
  %i.fb = mul nuw <2 x i64> %i.ey, %i.fa
  %i.fc = shufflevector <2 x i64> %i.et, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.fd = add <2 x i64> %.sroa.13.4, %i.fc
  %i.fe = add <2 x i64> %i.fd, %i.fb              ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  %i.fg = load <2 x i64>, ptr %i.ff, align 1, !tbaa !18, !alias.scope !268, !noalias !273 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  %i.fi = load <2 x i64>, ptr %i.fh, align 1, !tbaa !18, !alias.scope !269, !noalias !273
  %i.fj = xor <2 x i64> %i.fi, %i.fg              ; 2 uses
  %i.fk = bitcast <2 x i64> %i.fj to <4 x i32>
  %i.fl = and <2 x i64> %i.fj, splat (i64 4294967295)
  %i.fm = and <4 x i32> %i.fk, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner101 = shufflevector <4 x i32> %i.fm, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.fn = bitcast <4 x i32> %.inner101 to <2 x i64>
  %i.fo = mul nuw <2 x i64> %i.fl, %i.fn
  %i.fp = shufflevector <2 x i64> %i.fg, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.fq = add <2 x i64> %.sroa.23.4, %i.fp
  %i.fr = add <2 x i64> %i.fq, %i.fo              ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ed, i64 48
  %i.ft = load <2 x i64>, ptr %i.fs, align 1, !tbaa !18, !alias.scope !268, !noalias !273 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.eg, i64 48
  %i.fv = load <2 x i64>, ptr %i.fu, align 1, !tbaa !18, !alias.scope !269, !noalias !273
  %i.fw = xor <2 x i64> %i.fv, %i.ft              ; 2 uses
  %i.fx = bitcast <2 x i64> %i.fw to <4 x i32>
  %i.fy = and <2 x i64> %i.fw, splat (i64 4294967295)
  %i.fz = and <4 x i32> %i.fx, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner102 = shufflevector <4 x i32> %i.fz, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.ga = bitcast <4 x i32> %.inner102 to <2 x i64>
  %i.gb = mul nuw <2 x i64> %i.fy, %i.ga
  %i.gc = shufflevector <2 x i64> %i.ft, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.gd = add <2 x i64> %.sroa.33.4, %i.gc
  %i.ge = add <2 x i64> %i.gd, %i.gb              ; 2 uses
  %i.gf = add nuw i64 %.0.i.i38, 1                ; 2 uses
  %exitcond44.not = icmp eq i64 %i.gf, %.139.i
  br i1 %exitcond44.not, label %XXH3_consumeStripes.exit, label %.preheader, !llvm.loop !4

XXH3_consumeStripes.exit:                         ; preds = %.preheader, %.loopexit
  %.sroa.33.5 = phi <2 x i64> [ %.sroa.33.3, %.loopexit ], [ %i.ge, %.preheader ]
  %.sroa.23.5 = phi <2 x i64> [ %.sroa.23.3, %.loopexit ], [ %i.fr, %.preheader ]
  %.sroa.13.5 = phi <2 x i64> [ %.sroa.13.3, %.loopexit ], [ %i.fe, %.preheader ]
  %.sroa.0.5 = phi <2 x i64> [ %.sroa.0.3, %.loopexit ], [ %i.er, %.preheader ]
  %i.gg = zext i32 %i.k to i64
  %i.gh = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.gg
  %i.gi = getelementptr inbounds i8, ptr %i.gh, i64 -64
  br label %XXH3_digest_long.exit

bb.e:                                             ; preds = %bb.b
  %i.gj = sub nuw nsw i32 64, %i.k
  %i.gk = zext nneg i32 %i.gj to i64              ; 3 uses
  %i.gl = icmp ne i32 %i.k, 0
  tail call void @llvm.assume(i1 %i.gl)
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.gn = sub nsw i64 0, %i.gk
  %i.go = getelementptr inbounds i8, ptr %i.j, i64 %i.gn
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull readonly align 1 %i.go, i64 %i.gk, i1 false)
  %i.gp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gk
  %i.gq = zext nneg i32 %i.k to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gp, ptr nonnull readonly align 64 %i.gm, i64 %i.gq, i1 false)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 544
  %.pre = load i64, ptr %.phi.trans.insert, align 32, !tbaa !34
  br label %XXH3_digest_long.exit

XXH3_digest_long.exit:                            ; preds = %XXH3_consumeStripes.exit, %bb.e
  %i.gr = phi i64 [ %i.v, %XXH3_consumeStripes.exit ], [ %.pre, %bb.e ] ; 2 uses
  %.sroa.33.6 = phi <2 x i64> [ %.sroa.33.5, %XXH3_consumeStripes.exit ], [ %.sroa.33.0.copyload, %bb.e ]
  %.sroa.23.6 = phi <2 x i64> [ %.sroa.23.5, %XXH3_consumeStripes.exit ], [ %.sroa.23.0.copyload, %bb.e ]
  %.sroa.13.6 = phi <2 x i64> [ %.sroa.13.5, %XXH3_consumeStripes.exit ], [ %.sroa.13.0.copyload, %bb.e ]
  %.sroa.0.6 = phi <2 x i64> [ %.sroa.0.5, %XXH3_consumeStripes.exit ], [ %.sroa.0.0.copyload, %bb.e ]
  %.0.i = phi ptr [ %i.gi, %XXH3_consumeStripes.exit ], [ %i.a, %bb.e ] ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.gr ; 12 uses
  %i.gt = getelementptr inbounds i8, ptr %i.gs, i64 -7
  %i.gu = load <2 x i64>, ptr %.0.i, align 1, !tbaa !18, !noalias !274 ; 2 uses
  %i.gv = load <2 x i64>, ptr %i.gt, align 1, !tbaa !18, !noalias !274
  %i.gw = xor <2 x i64> %i.gv, %i.gu              ; 2 uses
  %i.gx = bitcast <2 x i64> %i.gw to <4 x i32>
  %i.gy = and <2 x i64> %i.gw, splat (i64 4294967295)
  %i.gz = and <4 x i32> %i.gx, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner103 = shufflevector <4 x i32> %i.gz, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.ha = bitcast <4 x i32> %.inner103 to <2 x i64>
  %i.hb = mul nuw <2 x i64> %i.gy, %i.ha
  %i.hc = shufflevector <2 x i64> %i.gu, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.hd = add <2 x i64> %.sroa.0.6, %i.hc
  %i.he = add <2 x i64> %i.hd, %i.hb              ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.hg = load <2 x i64>, ptr %i.hf, align 1, !tbaa !18, !noalias !274 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gs, i64 9
  %i.hi = load <2 x i64>, ptr %i.hh, align 1, !tbaa !18, !noalias !274
  %i.hj = xor <2 x i64> %i.hi, %i.hg              ; 2 uses
  %i.hk = bitcast <2 x i64> %i.hj to <4 x i32>
  %i.hl = and <2 x i64> %i.hj, splat (i64 4294967295)
  %i.hm = and <4 x i32> %i.hk, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner104 = shufflevector <4 x i32> %i.hm, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.hn = bitcast <4 x i32> %.inner104 to <2 x i64>
  %i.ho = mul nuw <2 x i64> %i.hl, %i.hn
  %i.hp = shufflevector <2 x i64> %i.hg, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.hq = add <2 x i64> %.sroa.13.6, %i.hp
  %i.hr = add <2 x i64> %i.hq, %i.ho              ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %i.ht = load <2 x i64>, ptr %i.hs, align 1, !tbaa !18, !noalias !274 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gs, i64 25
  %i.hv = load <2 x i64>, ptr %i.hu, align 1, !tbaa !18, !noalias !274
  %i.hw = xor <2 x i64> %i.hv, %i.ht              ; 2 uses
  %i.hx = bitcast <2 x i64> %i.hw to <4 x i32>
  %i.hy = and <2 x i64> %i.hw, splat (i64 4294967295)
  %i.hz = and <4 x i32> %i.hx, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner105 = shufflevector <4 x i32> %i.hz, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.ia = bitcast <4 x i32> %.inner105 to <2 x i64>
  %i.ib = mul nuw <2 x i64> %i.hy, %i.ia
  %i.ic = shufflevector <2 x i64> %i.ht, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.id = add <2 x i64> %.sroa.23.6, %i.ic
  %i.ie = add <2 x i64> %i.id, %i.ib              ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  %i.ig = load <2 x i64>, ptr %i.if, align 1, !tbaa !18, !noalias !274 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.gs, i64 41
  %i.ii = load <2 x i64>, ptr %i.ih, align 1, !tbaa !18, !noalias !274
  %i.ij = xor <2 x i64> %i.ii, %i.ig              ; 2 uses
  %i.ik = bitcast <2 x i64> %i.ij to <4 x i32>
  %i.il = and <2 x i64> %i.ij, splat (i64 4294967295)
  %i.im = and <4 x i32> %i.ik, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner106 = shufflevector <4 x i32> %i.im, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.in = bitcast <4 x i32> %.inner106 to <2 x i64>
  %i.io = mul nuw <2 x i64> %i.il, %i.in
  %i.ip = shufflevector <2 x i64> %i.ig, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.iq = add <2 x i64> %.sroa.33.6, %i.ip
  %i.ir = add <2 x i64> %i.iq, %i.io              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.is = add i64 %i.gr, -11
  %i.it = icmp ult i64 %i.is, -75
  tail call void @llvm.assume(i1 %i.it)
  %i.iu = getelementptr inbounds nuw i8, ptr %i.f, i64 11
  %i.iv = mul i64 %i.h, -7046029288634856825
  %.sroa.0.0.vec.extract = extractelement <2 x i64> %i.he, i64 0 ; 2 uses
  %.val9.i = load i64, ptr %i.iu, align 1, !tbaa !24, !alias.scope !275
  %i.iw = xor i64 %.val9.i, %.sroa.0.0.vec.extract
  %.sroa.0.8.vec.extract = extractelement <2 x i64> %i.he, i64 1 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.f, i64 19
  %.val.i = load i64, ptr %i.ix, align 1, !tbaa !24, !alias.scope !275
  %i.iy = xor i64 %.val.i, %.sroa.0.8.vec.extract
  %i.iz = zext i64 %i.iw to i128
  %i.ja = zext i64 %i.iy to i128
  %i.jb = mul nuw i128 %i.ja, %i.iz               ; 2 uses
  %i.jc = lshr i128 %i.jb, 64
  %i.jd = xor i128 %i.jc, %i.jb
  %i.je = trunc i128 %i.jd to i64
  %i.jf = add i64 %i.iv, %i.je
  %i.jg = getelementptr inbounds nuw i8, ptr %i.f, i64 27
  %.sroa.13.16.vec.extract = extractelement <2 x i64> %i.hr, i64 0 ; 2 uses
  %.val9.1.i = load i64, ptr %i.jg, align 1, !tbaa !24, !alias.scope !275
  %i.jh = xor i64 %.val9.1.i, %.sroa.13.16.vec.extract
  %.sroa.13.24.vec.extract = extractelement <2 x i64> %i.hr, i64 1 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.f, i64 35
  %.val.1.i = load i64, ptr %i.ji, align 1, !tbaa !24, !alias.scope !275
end_hunk_1
