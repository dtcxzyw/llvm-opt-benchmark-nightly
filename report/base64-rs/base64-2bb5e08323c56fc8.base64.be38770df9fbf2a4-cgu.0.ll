Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/base64-rs/original/base64-2bb5e08323c56fc8.base64.be38770df9fbf2a4-cgu.0?download=true
inline.NumInlined: 222
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXs_NtNtCsgkxsgNF9KUO_6base646engine15general_purposeNtB4_14GeneralPurposeNtB6_6Engine15internal_decode:bb.a
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !alias.scope !153, !noalias !154, !noundef !5
  %i.w = icmp eq i8 %i.v, -1
  br i1 %i.w, label %bb.g, label %bb.c

bb.g:                                             ; preds = %bb.f, %bb.c
  %.sroa.102.0.ph.i = phi i64 [ %i.j, %bb.f ], [ undef, %bb.c ]
  %.sroa.8.0.ph.i = phi i8 [ %i.s, %bb.f ], [ undef, %bb.c ]
  %.sroa.0.0.ph.i = phi i8 [ 0, %bb.f ], [ -1, %bb.c ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.0.0.ph.i, ptr %i.x, align 8, !alias.scope !144, !noalias !155
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.8.0.ph.i, ptr %.sroa.418.0..sroa_idx.i, align 1, !alias.scope !144, !noalias !155
  %.sroa.519.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.102.0.ph.i, ptr %.sroa.519.0..sroa_idx.i, align 8, !alias.scope !144, !noalias !155
  store i64 2, ptr %0, align 8, !alias.scope !144, !noalias !155
  br label %_RINvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode13decode_helperNCNvXs_B4_NtB4_14GeneralPurposeNtB6_6Engine15internal_decode0EB8_.exit

_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode18complete_quads_len.exit.i: ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %i.y = and i64 %i.n, 9223372036854775776        ; 11 uses
  %.not.i21.i = icmp samesign ugt i64 %i.y, %3
  br i1 %.not.i21.i, label %bb.h, label %.preheader.i.i, !prof !8

.preheader.i.i:                                   ; preds = %_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode18complete_quads_len.exit.i
  %.not.i.i1028.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i1028.i.i, label %._crit_edge.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i.i
  %i.z = udiv i64 %5, 24                          ; 2 uses
  br label %.lr.ph.i.i

bb.h:                                             ; preds = %_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode18complete_quads_len.exit.i
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.y, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #18, !noalias !159
  unreachable

.lr.ph.i.i:                                       ; preds = %bb.bh, %.lr.ph.preheader.i.i
  %.sroa.0.01031.i.i = phi ptr [ %i.aa, %bb.bh ], [ %2, %.lr.ph.preheader.i.i ] ; 33 uses
  %.sroa.684.01030.i.i = phi i64 [ %i.ab, %bb.bh ], [ %i.y, %.lr.ph.preheader.i.i ]
  %.sroa.13.01029.i.i = phi i64 [ %i.ac, %bb.bh ], [ 0, %.lr.ph.preheader.i.i ] ; 14 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 32
  %i.ab = add i64 %.sroa.684.01030.i.i, -32       ; 2 uses
  %i.ac = add nuw nsw i64 %.sroa.13.01029.i.i, 1
  %i.ad = mul nuw nsw i64 %.sroa.13.01029.i.i, 24 ; 2 uses
  %exitcond.i.i = icmp eq i64 %.sroa.13.01029.i.i, %i.z
  br i1 %exitcond.i.i, label %bb.t, label %bb.u, !prof !7

._crit_edge.i.i:                                  ; preds = %bb.bh, %.preheader.i.i
  %i.ae = lshr exact i64 %i.y, 2
  %.not12.i.i = icmp samesign ugt i64 %i.n, %3
  br i1 %.not12.i.i, label %bb.i, label %bb.j, !prof !8

bb.i:                                             ; preds = %._crit_edge.i.i
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.y, i64 noundef %i.n, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #18, !noalias !159
  unreachable

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.af = and i64 %i.n, 28                        ; 2 uses
  %.not.i.i791039.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.i.i791039.i.i, label %_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode21decode_complete_quads.exit.i, label %.lr.ph1044.preheader.i.i

.lr.ph1044.preheader.i.i:                         ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %i.y
  br label %.lr.ph1044.i.i

.lr.ph1044.i.i:                                   ; preds = %bb.s, %.lr.ph1044.preheader.i.i
  %.sroa.0107.01042.i.i = phi ptr [ %i.ah, %bb.s ], [ %i.ag, %.lr.ph1044.preheader.i.i ] ; 5 uses
  %.sroa.6108.01041.i.i = phi i64 [ %i.ai, %bb.s ], [ %i.af, %.lr.ph1044.preheader.i.i ]
  %.sroa.13112.01040.i.i = phi i64 [ %i.aj, %bb.s ], [ 0, %.lr.ph1044.preheader.i.i ] ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0107.01042.i.i, i64 4
  %i.ai = add i64 %.sroa.6108.01041.i.i, -4       ; 2 uses
  %i.aj = add nuw nsw i64 %.sroa.13112.01040.i.i, 1
  %i.ak = add nuw nsw i64 %.sroa.13112.01040.i.i, %i.ae
  %i.al = mul nuw i64 %i.ak, 3                    ; 3 uses
  %i.am = add nuw i64 %i.al, 3                    ; 2 uses
  %.not14.i.i = icmp ugt i64 %i.am, %5
  br i1 %.not14.i.i, label %bb.r, label %bb.k, !prof !7

bb.k:                                             ; preds = %.lr.ph1044.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 %i.al
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  %i.ao = load i8, ptr %.sroa.0107.01042.i.i, align 1, !alias.scope !162, !noalias !163, !noundef !5 ; 2 uses
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !alias.scope !164, !noalias !165, !noundef !5 ; 2 uses
  %i.as = icmp eq i8 %i.ar, -1
  br i1 %i.as, label %.loopexit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0107.01042.i.i, i64 1
  %i.au = load i8, ptr %i.at, align 1, !alias.scope !162, !noalias !163, !noundef !5 ; 2 uses
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !alias.scope !164, !noalias !165, !noundef !5 ; 2 uses
  %i.ay = icmp eq i8 %i.ax, -1
  br i1 %i.ay, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = shl i64 %.sroa.13112.01040.i.i, 2
  %i.ba = add i64 %i.az, %i.y
  %i.bb = or disjoint i64 %i.ba, 1
  br label %bb.bi

bb.n:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0107.01042.i.i, i64 2
  %i.bd = load i8, ptr %i.bc, align 1, !alias.scope !162, !noalias !163, !noundef !5 ; 2 uses
  %i.be = zext i8 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !alias.scope !164, !noalias !165, !noundef !5 ; 2 uses
  %i.bh = icmp eq i8 %i.bg, -1
  br i1 %i.bh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bi = shl i64 %.sroa.13112.01040.i.i, 2
  %i.bj = add i64 %i.bi, %i.y
  %i.bk = or disjoint i64 %i.bj, 2
  br label %bb.bi

bb.p:                                             ; preds = %bb.n
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0107.01042.i.i, i64 3
  %i.bm = load i8, ptr %i.bl, align 1, !alias.scope !162, !noalias !163, !noundef !5 ; 2 uses
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !alias.scope !164, !noalias !165, !noundef !5 ; 2 uses
  %i.bq = icmp eq i8 %i.bp, -1
  br i1 %i.bq, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.br = shl i64 %.sroa.13112.01040.i.i, 2
  %i.bs = add i64 %i.br, %i.y
  %i.bt = or disjoint i64 %i.bs, 3
  br label %bb.bi

bb.r:                                             ; preds = %.lr.ph1044.i.i
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.al, i64 noundef %i.am, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #18, !noalias !159
  unreachable

.loopexit.i.i:                                    ; preds = %bb.k
  %i.bu = shl i64 %.sroa.13112.01040.i.i, 2
  %i.bv = add i64 %i.bu, %i.y
  br label %bb.bi

bb.s:                                             ; preds = %bb.p
  %i.bw = zext i8 %i.ar to i32
  %i.bx = shl i32 %i.bw, 26
  %i.by = zext i8 %i.ax to i32
  %i.bz = shl nuw nsw i32 %i.by, 20
  %i.ca = or i32 %i.bz, %i.bx
  %i.cb = zext i8 %i.bg to i32
  %i.cc = shl nuw nsw i32 %i.cb, 14
  %i.cd = or i32 %i.ca, %i.cc
  %i.ce = zext i8 %i.bp to i32
  %i.cf = shl nuw nsw i32 %i.ce, 8
  %i.cg = or i32 %i.cd, %i.cf
  %i.ch = tail call i32 @llvm.bswap.i32(i32 %i.cg)
  %.sroa.0240.0.extract.trunc.i.i = trunc nuw i32 %i.ch to i24
  store i24 %.sroa.0240.0.extract.trunc.i.i, ptr %i.an, align 1, !alias.scope !166, !noalias !167
  %.not.i.i79.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i79.i.i, label %_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode21decode_complete_quads.exit.i, label %.lr.ph1044.i.i

bb.t:                                             ; preds = %.lr.ph.i.i
  %i.ci = mul nuw nsw i64 %i.z, 24
  %i.cj = add nuw i64 %i.ci, 24
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.ad, i64 noundef %i.cj, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #18, !noalias !159
  unreachable

bb.u:                                             ; preds = %.lr.ph.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 %i.ad ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %i.cl = load i8, ptr %.sroa.0.01031.i.i, align 1, !alias.scope !170, !noalias !171, !noundef !5 ; 2 uses
  %i.cm = zext i8 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !alias.scope !172, !noalias !173, !noundef !5 ; 2 uses
  %i.cp = icmp eq i8 %i.co, -1
  br i1 %i.cp, label %.loopexit292.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 1
  %i.cr = load i8, ptr %i.cq, align 1, !alias.scope !170, !noalias !171, !noundef !5 ; 2 uses
  %i.cs = zext i8 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !alias.scope !172, !noalias !173, !noundef !5 ; 2 uses
  %i.cv = icmp eq i8 %i.cu, -1
  br i1 %i.cv, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 2
  %i.cx = load i8, ptr %i.cw, align 1, !alias.scope !170, !noalias !171, !noundef !5 ; 2 uses
  %i.cy = zext i8 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !alias.scope !172, !noalias !173, !noundef !5 ; 2 uses
  %i.db = icmp eq i8 %i.da, -1
  br i1 %i.db, label %bb.z, label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.dc = shl nuw i64 %.sroa.13.01029.i.i, 5
  %i.dd = or disjoint i64 %i.dc, 1
  br label %bb.bi

bb.y:                                             ; preds = %bb.w
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 3
  %i.df = load i8, ptr %i.de, align 1, !alias.scope !170, !noalias !171, !noundef !5 ; 2 uses
  %i.dg = zext i8 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !alias.scope !172, !noalias !173, !noundef !5 ; 2 uses
  %i.dj = icmp eq i8 %i.di, -1
  br i1 %i.dj, label %bb.ab, label %bb.aa

bb.z:                                             ; preds = %bb.w
  %i.dk = shl nuw i64 %.sroa.13.01029.i.i, 5
  %i.dl = or disjoint i64 %i.dk, 2
  br label %bb.bi

bb.aa:                                            ; preds = %bb.y
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 4
  %i.dn = load i8, ptr %i.dm, align 1, !alias.scope !170, !noalias !171, !noundef !5 ; 2 uses
  %i.do = zext i8 %i.dn to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !alias.scope !172, !noalias !173, !noundef !5 ; 2 uses
  %i.dr = icmp eq i8 %i.dq, -1
  br i1 %i.dr, label %bb.ad, label %bb.ac

bb.ab:                                            ; preds = %bb.y
  %i.ds = shl nuw i64 %.sroa.13.01029.i.i, 5
  %i.dt = or disjoint i64 %i.ds, 3
  br label %bb.bi

bb.ac:                                            ; preds = %bb.aa
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 5
  %i.dv = load i8, ptr %i.du, align 1, !alias.scope !170, !noalias !171, !noundef !5 ; 2 uses
  %i.dw = zext i8 %i.dv to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1, !alias.scope !172, !noalias !173, !noundef !5 ; 2 uses
  %i.dz = icmp eq i8 %i.dy, -1
  br i1 %i.dz, label %bb.af, label %bb.ae

bb.ad:                                            ; preds = %bb.aa
  %i.ea = shl nuw i64 %.sroa.13.01029.i.i, 5
  %i.eb = or disjoint i64 %i.ea, 4
  br label %bb.bi

bb.ae:                                            ; preds = %bb.ac
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 6
  %i.ed = load i8, ptr %i.ec, align 1, !alias.scope !170, !noalias !171, !noundef !5 ; 2 uses
  %i.ee = zext i8 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !alias.scope !172, !noalias !173, !noundef !5 ; 2 uses
  %i.eh = icmp eq i8 %i.eg, -1
  br i1 %i.eh, label %bb.ah, label %bb.ag

bb.af:                                            ; preds = %bb.ac
  %i.ei = shl nuw i64 %.sroa.13.01029.i.i, 5
  %i.ej = or disjoint i64 %i.ei, 5
  br label %bb.bi

bb.ag:                                            ; preds = %bb.ae
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 7
  %i.el = load i8, ptr %i.ek, align 1, !alias.scope !170, !noalias !171, !noundef !5 ; 2 uses
  %i.em = zext i8 %i.el to i64
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1, !alias.scope !172, !noalias !173, !noundef !5 ; 2 uses
  %i.ep = icmp eq i8 %i.eo, -1
  br i1 %i.ep, label %bb.ai, label %bb.aj

bb.ah:                                            ; preds = %bb.ae
  %i.eq = shl nuw i64 %.sroa.13.01029.i.i, 5
  %i.er = or disjoint i64 %i.eq, 6
  br label %bb.bi

bb.ai:                                            ; preds = %bb.ag
  %i.es = shl nuw i64 %.sroa.13.01029.i.i, 5
  %i.et = or disjoint i64 %i.es, 7
  br label %bb.bi

.loopexit292.i.i:                                 ; preds = %bb.u
  %i.eu = shl nuw i64 %.sroa.13.01029.i.i, 5
  br label %bb.bi

bb.aj:                                            ; preds = %bb.ag
  %i.ev = zext i8 %i.co to i64
  %i.ew = shl i64 %i.ev, 58
  %i.ex = zext i8 %i.cu to i64
  %i.ey = shl nuw nsw i64 %i.ex, 52
  %i.ez = or i64 %i.ey, %i.ew
  %i.fa = zext i8 %i.da to i64
  %i.fb = shl nuw nsw i64 %i.fa, 46
  %i.fc = or i64 %i.ez, %i.fb
  %i.fd = zext i8 %i.di to i64
  %i.fe = shl nuw nsw i64 %i.fd, 40
  %i.ff = or i64 %i.fc, %i.fe
  %i.fg = zext i8 %i.dq to i64
  %i.fh = shl nuw nsw i64 %i.fg, 34
  %i.fi = or i64 %i.ff, %i.fh
  %i.fj = zext i8 %i.dy to i64
  %i.fk = shl nuw nsw i64 %i.fj, 28
  %i.fl = or i64 %i.fi, %i.fk
  %i.fm = zext i8 %i.eg to i64
  %i.fn = shl nuw nsw i64 %i.fm, 22
  %i.fo = or i64 %i.fl, %i.fn
  %i.fp = zext i8 %i.eo to i64
  %i.fq = shl nuw nsw i64 %i.fp, 16
  %i.fr = or i64 %i.fo, %i.fq
  %i.fs = tail call i64 @llvm.bswap.i64(i64 %i.fr)
  %.sroa.0244.0.extract.trunc.i.i = trunc i64 %i.fs to i48
  store i48 %.sroa.0244.0.extract.trunc.i.i, ptr %i.ck, align 1, !alias.scope !174, !noalias !175
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ck, i64 6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %i.fv = load i8, ptr %i.ft, align 1, !alias.scope !178, !noalias !179, !noundef !5 ; 2 uses
  %i.fw = zext i8 %i.fv to i64
  %i.fx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fw
  %i.fy = load i8, ptr %i.fx, align 1, !alias.scope !180, !noalias !181, !noundef !5 ; 2 uses
  %i.fz = icmp eq i8 %i.fy, -1
  br i1 %i.fz, label %.loopexit293.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 9
  %i.gb = load i8, ptr %i.ga, align 1, !alias.scope !178, !noalias !179, !noundef !5 ; 2 uses
  %i.gc = zext i8 %i.gb to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !alias.scope !180, !noalias !181, !noundef !5 ; 2 uses
  %i.gf = icmp eq i8 %i.ge, -1
  br i1 %i.gf, label %.loopexit293.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 10
  %i.gh = load i8, ptr %i.gg, align 1, !alias.scope !178, !noalias !179, !noundef !5 ; 2 uses
  %i.gi = zext i8 %i.gh to i64
  %i.gj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gi
  %i.gk = load i8, ptr %i.gj, align 1, !alias.scope !180, !noalias !181, !noundef !5 ; 2 uses
  %i.gl = icmp eq i8 %i.gk, -1
  br i1 %i.gl, label %.loopexit293.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 11
  %i.gn = load i8, ptr %i.gm, align 1, !alias.scope !178, !noalias !179, !noundef !5 ; 2 uses
  %i.go = zext i8 %i.gn to i64
  %i.gp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.go
  %i.gq = load i8, ptr %i.gp, align 1, !alias.scope !180, !noalias !181, !noundef !5 ; 2 uses
  %i.gr = icmp eq i8 %i.gq, -1
  br i1 %i.gr, label %.loopexit293.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 12
  %i.gt = load i8, ptr %i.gs, align 1, !alias.scope !178, !noalias !179, !noundef !5 ; 2 uses
  %i.gu = zext i8 %i.gt to i64
  %i.gv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gu
  %i.gw = load i8, ptr %i.gv, align 1, !alias.scope !180, !noalias !181, !noundef !5 ; 2 uses
  %i.gx = icmp eq i8 %i.gw, -1
  br i1 %i.gx, label %.loopexit293.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 13
  %i.gz = load i8, ptr %i.gy, align 1, !alias.scope !178, !noalias !179, !noundef !5 ; 2 uses
  %i.ha = zext i8 %i.gz to i64
  %i.hb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ha
  %i.hc = load i8, ptr %i.hb, align 1, !alias.scope !180, !noalias !181, !noundef !5 ; 2 uses
  %i.hd = icmp eq i8 %i.hc, -1
  br i1 %i.hd, label %.loopexit293.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 14
  %i.hf = load i8, ptr %i.he, align 1, !alias.scope !178, !noalias !179, !noundef !5 ; 2 uses
  %i.hg = zext i8 %i.hf to i64
  %i.hh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.hg
  %i.hi = load i8, ptr %i.hh, align 1, !alias.scope !180, !noalias !181, !noundef !5 ; 2 uses
  %i.hj = icmp eq i8 %i.hi, -1
  br i1 %i.hj, label %.loopexit293.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 15
  %i.hl = load i8, ptr %i.hk, align 1, !alias.scope !178, !noalias !179, !noundef !5 ; 2 uses
  %i.hm = zext i8 %i.hl to i64
  %i.hn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.hm
  %i.ho = load i8, ptr %i.hn, align 1, !alias.scope !180, !noalias !181, !noundef !5 ; 2 uses
  %i.hp = icmp eq i8 %i.ho, -1
  br i1 %i.hp, label %.loopexit293.i.i, label %bb.ar

.loopexit293.i.i:                                 ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj
  %.sink2439.i.i = phi i64 [ 15, %bb.aq ], [ 14, %bb.ap ], [ 9, %bb.ak ], [ 10, %bb.al ], [ 11, %bb.am ], [ 12, %bb.an ], [ 13, %bb.ao ], [ 8, %bb.aj ]
  %.sroa.1491.0.ph.i.i = phi i8 [ %i.hl, %bb.aq ], [ %i.hf, %bb.ap ], [ %i.gb, %bb.ak ], [ %i.gh, %bb.al ], [ %i.gn, %bb.am ], [ %i.gt, %bb.an ], [ %i.gz, %bb.ao ], [ %i.fv, %bb.aj ]
  %i.hq = shl nuw i64 %.sroa.13.01029.i.i, 5
  %i.hr = or disjoint i64 %.sink2439.i.i, %i.hq
  br label %bb.bi

bb.ar:                                            ; preds = %bb.aq
  %i.hs = zext i8 %i.fy to i64
  %i.ht = shl i64 %i.hs, 58
  %i.hu = zext i8 %i.ge to i64
  %i.hv = shl nuw nsw i64 %i.hu, 52
  %i.hw = or i64 %i.hv, %i.ht
  %i.hx = zext i8 %i.gk to i64
  %i.hy = shl nuw nsw i64 %i.hx, 46
  %i.hz = or i64 %i.hw, %i.hy
  %i.ia = zext i8 %i.gq to i64
  %i.ib = shl nuw nsw i64 %i.ia, 40
  %i.ic = or i64 %i.hz, %i.ib
  %i.id = zext i8 %i.gw to i64
  %i.ie = shl nuw nsw i64 %i.id, 34
  %i.if = or i64 %i.ic, %i.ie
  %i.ig = zext i8 %i.hc to i64
  %i.ih = shl nuw nsw i64 %i.ig, 28
  %i.ii = or i64 %i.if, %i.ih
  %i.ij = zext i8 %i.hi to i64
  %i.ik = shl nuw nsw i64 %i.ij, 22
  %i.il = or i64 %i.ii, %i.ik
  %i.im = zext i8 %i.ho to i64
  %i.in = shl nuw nsw i64 %i.im, 16
  %i.io = or i64 %i.il, %i.in
  %i.ip = tail call i64 @llvm.bswap.i64(i64 %i.io)
  %.sroa.0243.0.extract.trunc.i.i = trunc i64 %i.ip to i48
  store i48 %.sroa.0243.0.extract.trunc.i.i, ptr %i.fu, align 1, !alias.scope !182, !noalias !183
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 16
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  %i.is = load i8, ptr %i.iq, align 1, !alias.scope !186, !noalias !187, !noundef !5 ; 2 uses
  %i.it = zext i8 %i.is to i64
  %i.iu = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.it
  %i.iv = load i8, ptr %i.iu, align 1, !alias.scope !188, !noalias !189, !noundef !5 ; 2 uses
  %i.iw = icmp eq i8 %i.iv, -1
  br i1 %i.iw, label %.loopexit294.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 17
  %i.iy = load i8, ptr %i.ix, align 1, !alias.scope !186, !noalias !187, !noundef !5 ; 2 uses
  %i.iz = zext i8 %i.iy to i64
  %i.ja = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.iz
  %i.jb = load i8, ptr %i.ja, align 1, !alias.scope !188, !noalias !189, !noundef !5 ; 2 uses
  %i.jc = icmp eq i8 %i.jb, -1
  br i1 %i.jc, label %.loopexit294.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 18
  %i.je = load i8, ptr %i.jd, align 1, !alias.scope !186, !noalias !187, !noundef !5 ; 2 uses
  %i.jf = zext i8 %i.je to i64
  %i.jg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.jf
  %i.jh = load i8, ptr %i.jg, align 1, !alias.scope !188, !noalias !189, !noundef !5 ; 2 uses
  %i.ji = icmp eq i8 %i.jh, -1
  br i1 %i.ji, label %.loopexit294.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 19
  %i.jk = load i8, ptr %i.jj, align 1, !alias.scope !186, !noalias !187, !noundef !5 ; 2 uses
  %i.jl = zext i8 %i.jk to i64
  %i.jm = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.jl
  %i.jn = load i8, ptr %i.jm, align 1, !alias.scope !188, !noalias !189, !noundef !5 ; 2 uses
  %i.jo = icmp eq i8 %i.jn, -1
  br i1 %i.jo, label %.loopexit294.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 20
  %i.jq = load i8, ptr %i.jp, align 1, !alias.scope !186, !noalias !187, !noundef !5 ; 2 uses
  %i.jr = zext i8 %i.jq to i64
  %i.js = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.jr
  %i.jt = load i8, ptr %i.js, align 1, !alias.scope !188, !noalias !189, !noundef !5 ; 2 uses
  %i.ju = icmp eq i8 %i.jt, -1
  br i1 %i.ju, label %.loopexit294.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 21
  %i.jw = load i8, ptr %i.jv, align 1, !alias.scope !186, !noalias !187, !noundef !5 ; 2 uses
  %i.jx = zext i8 %i.jw to i64
  %i.jy = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.jx
  %i.jz = load i8, ptr %i.jy, align 1, !alias.scope !188, !noalias !189, !noundef !5 ; 2 uses
  %i.ka = icmp eq i8 %i.jz, -1
  br i1 %i.ka, label %.loopexit294.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.kb = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 22
  %i.kc = load i8, ptr %i.kb, align 1, !alias.scope !186, !noalias !187, !noundef !5 ; 2 uses
  %i.kd = zext i8 %i.kc to i64
  %i.ke = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.kd
  %i.kf = load i8, ptr %i.ke, align 1, !alias.scope !188, !noalias !189, !noundef !5 ; 2 uses
  %i.kg = icmp eq i8 %i.kf, -1
  br i1 %i.kg, label %.loopexit294.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 23
  %i.ki = load i8, ptr %i.kh, align 1, !alias.scope !186, !noalias !187, !noundef !5 ; 2 uses
  %i.kj = zext i8 %i.ki to i64
  %i.kk = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.kj
  %i.kl = load i8, ptr %i.kk, align 1, !alias.scope !188, !noalias !189, !noundef !5 ; 2 uses
  %i.km = icmp eq i8 %i.kl, -1
  br i1 %i.km, label %.loopexit294.i.i, label %bb.az

.loopexit294.i.i:                                 ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar
  %.sink2440.i.i = phi i64 [ 23, %bb.ay ], [ 22, %bb.ax ], [ 17, %bb.as ], [ 18, %bb.at ], [ 19, %bb.au ], [ 20, %bb.av ], [ 21, %bb.aw ], [ 16, %bb.ar ]
  %.sroa.1495.0.ph.i.i = phi i8 [ %i.ki, %bb.ay ], [ %i.kc, %bb.ax ], [ %i.iy, %bb.as ], [ %i.je, %bb.at ], [ %i.jk, %bb.au ], [ %i.jq, %bb.av ], [ %i.jw, %bb.aw ], [ %i.is, %bb.ar ]
  %i.kn = shl nuw i64 %.sroa.13.01029.i.i, 5
  %i.ko = or disjoint i64 %.sink2440.i.i, %i.kn
  br label %bb.bi

bb.az:                                            ; preds = %bb.ay
  %i.kp = zext i8 %i.iv to i64
  %i.kq = shl i64 %i.kp, 58
  %i.kr = zext i8 %i.jb to i64
  %i.ks = shl nuw nsw i64 %i.kr, 52
  %i.kt = or i64 %i.ks, %i.kq
  %i.ku = zext i8 %i.jh to i64
  %i.kv = shl nuw nsw i64 %i.ku, 46
  %i.kw = or i64 %i.kt, %i.kv
  %i.kx = zext i8 %i.jn to i64
  %i.ky = shl nuw nsw i64 %i.kx, 40
  %i.kz = or i64 %i.kw, %i.ky
  %i.la = zext i8 %i.jt to i64
  %i.lb = shl nuw nsw i64 %i.la, 34
  %i.lc = or i64 %i.kz, %i.lb
  %i.ld = zext i8 %i.jz to i64
  %i.le = shl nuw nsw i64 %i.ld, 28
  %i.lf = or i64 %i.lc, %i.le
  %i.lg = zext i8 %i.kf to i64
  %i.lh = shl nuw nsw i64 %i.lg, 22
  %i.li = or i64 %i.lf, %i.lh
  %i.lj = zext i8 %i.kl to i64
  %i.lk = shl nuw nsw i64 %i.lj, 16
  %i.ll = or i64 %i.li, %i.lk
  %i.lm = tail call i64 @llvm.bswap.i64(i64 %i.ll)
  %.sroa.0242.0.extract.trunc.i.i = trunc i64 %i.lm to i48
  store i48 %.sroa.0242.0.extract.trunc.i.i, ptr %i.ir, align 1, !alias.scope !190, !noalias !191
  %i.ln = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 24
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ck, i64 18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  %i.lp = load i8, ptr %i.ln, align 1, !alias.scope !194, !noalias !195, !noundef !5 ; 2 uses
  %i.lq = zext i8 %i.lp to i64
  %i.lr = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.lq
  %i.ls = load i8, ptr %i.lr, align 1, !alias.scope !196, !noalias !197, !noundef !5 ; 2 uses
  %i.lt = icmp eq i8 %i.ls, -1
  br i1 %i.lt, label %.loopexit295.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.lu = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 25
  %i.lv = load i8, ptr %i.lu, align 1, !alias.scope !194, !noalias !195, !noundef !5 ; 2 uses
  %i.lw = zext i8 %i.lv to i64
  %i.lx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.lw
  %i.ly = load i8, ptr %i.lx, align 1, !alias.scope !196, !noalias !197, !noundef !5 ; 2 uses
  %i.lz = icmp eq i8 %i.ly, -1
  br i1 %i.lz, label %.loopexit295.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ma = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 26
  %i.mb = load i8, ptr %i.ma, align 1, !alias.scope !194, !noalias !195, !noundef !5 ; 2 uses
  %i.mc = zext i8 %i.mb to i64
  %i.md = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.mc
  %i.me = load i8, ptr %i.md, align 1, !alias.scope !196, !noalias !197, !noundef !5 ; 2 uses
  %i.mf = icmp eq i8 %i.me, -1
  br i1 %i.mf, label %.loopexit295.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.mg = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 27
  %i.mh = load i8, ptr %i.mg, align 1, !alias.scope !194, !noalias !195, !noundef !5 ; 2 uses
  %i.mi = zext i8 %i.mh to i64
  %i.mj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.mi
  %i.mk = load i8, ptr %i.mj, align 1, !alias.scope !196, !noalias !197, !noundef !5 ; 2 uses
  %i.ml = icmp eq i8 %i.mk, -1
  br i1 %i.ml, label %.loopexit295.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.mm = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 28
  %i.mn = load i8, ptr %i.mm, align 1, !alias.scope !194, !noalias !195, !noundef !5 ; 2 uses
  %i.mo = zext i8 %i.mn to i64
  %i.mp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.mo
  %i.mq = load i8, ptr %i.mp, align 1, !alias.scope !196, !noalias !197, !noundef !5 ; 2 uses
  %i.mr = icmp eq i8 %i.mq, -1
  br i1 %i.mr, label %.loopexit295.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ms = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 29
  %i.mt = load i8, ptr %i.ms, align 1, !alias.scope !194, !noalias !195, !noundef !5 ; 2 uses
  %i.mu = zext i8 %i.mt to i64
  %i.mv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.mu
  %i.mw = load i8, ptr %i.mv, align 1, !alias.scope !196, !noalias !197, !noundef !5 ; 2 uses
  %i.mx = icmp eq i8 %i.mw, -1
  br i1 %i.mx, label %.loopexit295.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.my = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 30
  %i.mz = load i8, ptr %i.my, align 1, !alias.scope !194, !noalias !195, !noundef !5 ; 2 uses
  %i.na = zext i8 %i.mz to i64
  %i.nb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.na
  %i.nc = load i8, ptr %i.nb, align 1, !alias.scope !196, !noalias !197, !noundef !5 ; 2 uses
  %i.nd = icmp eq i8 %i.nc, -1
  br i1 %i.nd, label %.loopexit295.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ne = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 31
  %i.nf = load i8, ptr %i.ne, align 1, !alias.scope !194, !noalias !195, !noundef !5 ; 2 uses
  %i.ng = zext i8 %i.nf to i64
  %i.nh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ng
  %i.ni = load i8, ptr %i.nh, align 1, !alias.scope !196, !noalias !197, !noundef !5 ; 2 uses
  %i.nj = icmp eq i8 %i.ni, -1
  br i1 %i.nj, label %.loopexit295.i.i, label %bb.bh

.loopexit295.i.i:                                 ; preds = %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az
  %.sink2441.i.i = phi i64 [ 31, %bb.bg ], [ 30, %bb.bf ], [ 25, %bb.ba ], [ 26, %bb.bb ], [ 27, %bb.bc ], [ 28, %bb.bd ], [ 29, %bb.be ], [ 24, %bb.az ]
  %.sroa.1499.0.ph.i.i = phi i8 [ %i.nf, %bb.bg ], [ %i.mz, %bb.bf ], [ %i.lv, %bb.ba ], [ %i.mb, %bb.bb ], [ %i.mh, %bb.bc ], [ %i.mn, %bb.bd ], [ %i.mt, %bb.be ], [ %i.lp, %bb.az ]
  %i.nk = shl nuw i64 %.sroa.13.01029.i.i, 5
  %i.nl = or disjoint i64 %.sink2441.i.i, %i.nk
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.nm = zext i8 %i.ls to i64
  %i.nn = shl i64 %i.nm, 58
  %i.no = zext i8 %i.ly to i64
  %i.np = shl nuw nsw i64 %i.no, 52
  %i.nq = or i64 %i.np, %i.nn
  %i.nr = zext i8 %i.me to i64
  %i.ns = shl nuw nsw i64 %i.nr, 46
  %i.nt = or i64 %i.nq, %i.ns
  %i.nu = zext i8 %i.mk to i64
  %i.nv = shl nuw nsw i64 %i.nu, 40
  %i.nw = or i64 %i.nt, %i.nv
  %i.nx = zext i8 %i.mq to i64
  %i.ny = shl nuw nsw i64 %i.nx, 34
  %i.nz = or i64 %i.nw, %i.ny
  %i.oa = zext i8 %i.mw to i64
  %i.ob = shl nuw nsw i64 %i.oa, 28
  %i.oc = or i64 %i.nz, %i.ob
  %i.od = zext i8 %i.nc to i64
  %i.oe = shl nuw nsw i64 %i.od, 22
  %i.of = or i64 %i.oc, %i.oe
  %i.og = zext i8 %i.ni to i64
  %i.oh = shl nuw nsw i64 %i.og, 16
  %i.oi = or i64 %i.of, %i.oh
  %i.oj = tail call i64 @llvm.bswap.i64(i64 %i.oi)
  %.sroa.0241.0.extract.trunc.i.i = trunc i64 %i.oj to i48
  store i48 %.sroa.0241.0.extract.trunc.i.i, ptr %i.lo, align 1, !alias.scope !198, !noalias !199
  %.not.i.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.bi:                                            ; preds = %.loopexit295.i.i, %.loopexit294.i.i, %.loopexit293.i.i, %.loopexit292.i.i, %bb.ai, %bb.ah, %bb.af, %bb.ad, %bb.ab, %bb.z, %bb.x, %.loopexit.i.i, %bb.q, %bb.o, %bb.m
  %.sroa.165.0.ph.i = phi i64 [ %i.eu, %.loopexit292.i.i ], [ %i.dl, %bb.z ], [ %i.dt, %bb.ab ], [ %i.eb, %bb.ad ], [ %i.ej, %bb.af ], [ %i.er, %bb.ah ], [ %i.et, %bb.ai ], [ %i.dd, %bb.x ], [ %i.bk, %bb.o ], [ %i.bt, %bb.q ], [ %i.bb, %bb.m ], [ %i.ko, %.loopexit294.i.i ], [ %i.hr, %.loopexit293.i.i ], [ %i.bv, %.loopexit.i.i ], [ %i.nl, %.loopexit295.i.i ]
  %.sroa.11.0.ph.i = phi i8 [ %i.cl, %.loopexit292.i.i ], [ %i.cx, %bb.z ], [ %i.df, %bb.ab ], [ %i.dn, %bb.ad ], [ %i.dv, %bb.af ], [ %i.ed, %bb.ah ], [ %i.el, %bb.ai ], [ %i.cr, %bb.x ], [ %i.bd, %bb.o ], [ %i.bm, %bb.q ], [ %i.au, %bb.m ], [ %.sroa.1495.0.ph.i.i, %.loopexit294.i.i ], [ %.sroa.1491.0.ph.i.i, %.loopexit293.i.i ], [ %i.ao, %.loopexit.i.i ], [ %.sroa.1499.0.ph.i.i, %.loopexit295.i.i ]
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.ok, align 8, !alias.scope !144, !noalias !155
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.11.0.ph.i, ptr %.sroa.419.0..sroa_idx.i, align 1, !alias.scope !144, !noalias !155
  %.sroa.621.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.165.0.ph.i, ptr %.sroa.621.0..sroa_idx.i, align 8, !alias.scope !144, !noalias !155
  store i64 2, ptr %0, align 8, !alias.scope !144, !noalias !155
  br label %_RINvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode13decode_helperNCNvXs_B4_NtB4_14GeneralPurposeNtB6_6Engine15internal_decode0EB8_.exit

_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode21decode_complete_quads.exit.i: ; preds = %bb.s, %bb.j
  tail call void @_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose13decode_suffix13decode_suffix(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, i64 noundef %i.n, ptr noalias nofree noundef nonnull %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(256) %i.a, i1 noundef zeroext %i.d, i8 noundef %i.f, i8 noundef range(i8 0, 3) %i.h)
  br label %_RINvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode13decode_helperNCNvXs_B4_NtB4_14GeneralPurposeNtB6_6Engine15internal_decode0EB8_.exit

_RINvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode13decode_helperNCNvXs_B4_NtB4_14GeneralPurposeNtB6_6Engine15internal_decode0EB8_.exit: ; preds = %bb.g, %bb.bi, %_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode21decode_complete_quads.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvXs_NtNtCsgkxsgNF9KUO_6base646engine15general_purposeNtB4_14GeneralPurposeNtB6_6Engine15internal_encode(ptr noalias nofree noundef readonly captures(none) dereferenceable(324) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef nonnull writeonly captures(none) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.b = tail call noundef i64 @_RNvNtNtCsgkxsgNF9KUO_6base646engine15general_purpose18encode_scalar_tail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull %3, i64 noundef %4, i64 noundef 0, i64 noundef 0)
  ret i64 %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNvNtCskKLDkoKarTP_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8>, <32 x i8>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8>, <32 x i8>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16>, <16 x i16>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x i8> @llvm.usub.sat.v32i8(<32 x i8>, <32 x i8>) #11

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #12

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #8

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #15

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #11

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCskKLDkoKarTP_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtNtCskKLDkoKarTP_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #2 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { noinline noreturn }
attributes #19 = { noreturn }
attributes #20 = { nounwind }
attributes #21 = { inlinehint }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{i64 0, i64 -9223372036854775808}
!5 = !{}
!6 = !{i64 0, i64 2}
!7 = !{!"branch_weights", i32 4001, i32 4000000}
end_hunk_0
