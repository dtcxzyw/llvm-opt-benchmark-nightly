Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_proxy-72c884e3cf9f01a0.pingora_proxy.2baed5738fdb112f-cgu.00?download=true
inline.NumInlined: 281
inline.NumDeleted: 149
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalReE4nextCs3Kwrwkha1e5_13pingora_proxy:bb.a
  %i.ai = icmp samesign ne i64 %i.ah, %.val1
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = load i8, ptr %i.ag, align 1, !noalias !438, !noundef !5
  %i.ak = shl nuw nsw i32 %i.ad, 6
  %i.al = and i8 %i.aj, 63
  %i.am = zext nneg i8 %i.al to i32
  %i.an = or disjoint i32 %i.ak, %i.am            ; 2 uses
  %i.ao = shl nuw nsw i32 %i.x, 12
  %i.ap = or disjoint i32 %i.an, %i.ao
  %i.aq = icmp samesign ugt i8 %i.t, -17
  br i1 %i.aq, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3Kwrwkha1e5_13pingora_proxy.exit16.i.i.us.i.peel, label %bb.h

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3Kwrwkha1e5_13pingora_proxy.exit16.i.i.us.i.peel: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3Kwrwkha1e5_13pingora_proxy.exit14.i.i.us.i.peel
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 3
  %i.as = add nuw nsw i64 %.promoted157.i, 3
  %i.at = icmp samesign ne i64 %i.as, %.val1
  tail call void @llvm.assume(i1 %i.at)
  %i.au = load i8, ptr %i.ar, align 1, !noalias !438, !noundef !5
  %i.av = shl nuw nsw i32 %i.x, 18
  %i.aw = and i32 %i.av, 1835008
  %i.ax = shl nuw nsw i32 %i.an, 6
  %i.ay = and i8 %i.au, 63
  %i.az = zext nneg i8 %i.ay to i32
  %i.ba = or disjoint i32 %i.ax, %i.az
  %i.bb = or disjoint i32 %i.ba, %i.aw
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bc = zext nneg i8 %i.t to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3Kwrwkha1e5_13pingora_proxy.exit16.i.i.us.i.peel, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3Kwrwkha1e5_13pingora_proxy.exit14.i.i.us.i.peel, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3Kwrwkha1e5_13pingora_proxy.exit12.i.i.us.i.peel
  %.sroa.4.0.i.ph.i.us.i.peel = phi i32 [ %i.ap, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3Kwrwkha1e5_13pingora_proxy.exit14.i.i.us.i.peel ], [ %i.bb, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3Kwrwkha1e5_13pingora_proxy.exit16.i.i.us.i.peel ], [ %i.ae, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3Kwrwkha1e5_13pingora_proxy.exit12.i.i.us.i.peel ], [ %i.bc, %bb.g ] ; 4 uses
  %i.bd = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.bd)
  br i1 %i.l, label %.loopexit42.split.us.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel, 128
  br i1 %i.be, label %.lr.ph.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel, 2048
  br i1 %i.bf, label %.lr.ph.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel, 65536
  %..i.us.i.peel = select i1 %i.bg, i64 3, i64 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %bb.j, %bb.k
  %.sroa.01.0.i.us.i.peel = phi i64 [ 2, %bb.j ], [ %..i.us.i.peel, %bb.k ], [ 1, %bb.i ]
  %i.bh = add i64 %.sroa.01.0.i.us.i.peel, %.promoted157.i ; 16 uses
  store i64 %i.bh, ptr %i.g, align 8, !alias.scope !439
  tail call void @llvm.experimental.noalias.scope.decl(metadata !440)
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %.not.i.i.us.i = icmp ult i64 %i.bh, %.val1
  br i1 %.not.i.i.us.i, label %bb.m, label %.split.i.i.us.i

.split.i.i.us.i:                                  ; preds = %bb.l
  %i.bj = icmp eq i64 %i.bh, %.val1
  br i1 %i.bj, label %bb.n, label %.split.us161.i

bb.m:                                             ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bh
  %i.bl = load i8, ptr %i.bk, align 1, !alias.scope !436, !noalias !441, !noundef !5
  %i.bm = icmp sgt i8 %i.bl, -65
  br i1 %i.bm, label %bb.n, label %.split.us161.i

bb.n:                                             ; preds = %bb.m, %.split.i.i.us.i, %.lr.ph.i
  %i.bn = icmp samesign eq i64 %i.bh, %.val1
  br i1 %i.bn, label %.split166.us.i.thread, label %bb.o

.split166.us.i.thread:                            ; preds = %bb.n
  store i8 0, ptr %i.k, align 8, !alias.scope !442
  br label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

bb.o:                                             ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bh
  %i.bp = load i8, ptr %i.bo, align 1, !noalias !443, !noundef !5 ; 3 uses
  %i.bq = icmp sgt i8 %i.bp, -1
  br i1 %i.bq, label %.loopexit42.split.us.i, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3Kwrwkha1e5_13pingora_proxy.exit12.i.i.us.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3Kwrwkha1e5_13pingora_proxy.exit12.i.i.us.i: ; preds = %bb.o
  %i.br = add nuw nsw i64 %i.bh, 1
  %i.bs = icmp samesign ne i64 %i.br, %.val1
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = icmp samesign ugt i8 %i.bp, -33
  br i1 %i.bt, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3Kwrwkha1e5_13pingora_proxy.exit14.i.i.us.i, label %.loopexit42.split.us.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3Kwrwkha1e5_13pingora_proxy.exit14.i.i.us.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3Kwrwkha1e5_13pingora_proxy.exit12.i.i.us.i
  %i.bu = add nuw nsw i64 %i.bh, 2
  %i.bv = icmp samesign ne i64 %i.bu, %.val1
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = icmp samesign ugt i8 %i.bp, -17
  br i1 %i.bw, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3Kwrwkha1e5_13pingora_proxy.exit16.i.i.us.i, label %.loopexit42.split.us.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3Kwrwkha1e5_13pingora_proxy.exit16.i.i.us.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3Kwrwkha1e5_13pingora_proxy.exit14.i.i.us.i
  %i.bx = add nuw nsw i64 %i.bh, 3
  %i.by = icmp samesign ne i64 %i.bx, %.val1
  tail call void @llvm.assume(i1 %i.by)
  br label %.loopexit42.split.us.i

.split.us161.i:                                   ; preds = %bb.m, %.split.i.i.us.i, %bb.d, %.split.i.i.us.i.peel
  %.lcssa31 = phi i64 [ %.promoted157.i, %.split.i.i.us.i.peel ], [ %.promoted157.i, %bb.d ], [ %i.bh, %.split.i.i.us.i ], [ %i.bh, %bb.m ]
  %.lcssa28 = phi i8 [ %.promoted206.i, %.split.i.i.us.i.peel ], [ %.promoted206.i, %bb.d ], [ 1, %.split.i.i.us.i ], [ 1, %bb.m ]
  %i.bz = xor i8 %.lcssa28, 1
  store i8 %i.bz, ptr %i.k, align 8, !alias.scope !442
  tail call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, i64 noundef %.lcssa31, i64 noundef %.val1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #24, !noalias !441
  unreachable

.split166.us.i:                                   ; preds = %bb.e
  %i.ca = xor i8 %.promoted206.i, 1
  store i8 %i.ca, ptr %i.k, align 8, !alias.scope !442
  br i1 %i.l, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.p

.loopexit42.split.us.i:                           ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3Kwrwkha1e5_13pingora_proxy.exit16.i.i.us.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3Kwrwkha1e5_13pingora_proxy.exit14.i.i.us.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3Kwrwkha1e5_13pingora_proxy.exit12.i.i.us.i, %bb.o, %bb.h
  %.lcssa33 = phi i64 [ %.promoted157.i, %bb.h ], [ %i.bh, %bb.o ], [ %i.bh, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3Kwrwkha1e5_13pingora_proxy.exit12.i.i.us.i ], [ %i.bh, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3Kwrwkha1e5_13pingora_proxy.exit14.i.i.us.i ], [ %i.bh, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3Kwrwkha1e5_13pingora_proxy.exit16.i.i.us.i ] ; 2 uses
  store i8 0, ptr %i.k, align 8, !alias.scope !442
  br label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.p:                                             ; preds = %.split166.us.i
  store i8 1, ptr %i.h, align 2, !alias.scope !442
  br label %bb.ah

bb.q:                                             ; preds = %bb.b
  %i.cb = load i64, ptr %i.g, align 8, !alias.scope !434, !noundef !5 ; 4 uses
  %.not.i = icmp ult i64 %i.cb, %.val1
  br i1 %.not.i, label %bb.s, label %bb.ah

bb.r:                                             ; preds = %bb.b
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !434, !noundef !5 ; 2 uses
  %i.ce = icmp eq i64 %i.cd, -1
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cg = load ptr, ptr %i.cf, align 8, !alias.scope !434, !nonnull !5, !noundef !5 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ci = load i64, ptr %i.ch, align 8, !alias.scope !434, !noundef !5 ; 14 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.ck = add nsw i64 %i.ci, -1                   ; 4 uses
  br i1 %i.ce, label %bb.ad, label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cm = load i8, ptr %i.cl, align 8, !alias.scope !434, !noundef !5 ; 2 uses
  %i.cn = sub nuw i64 %.val1, %i.cb               ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.val, i64 %i.cb ; 2 uses
  %i.cp = icmp samesign ult i64 %i.cn, 16
  br i1 %i.cp, label %.lr.ph.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cq = tail call { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef %i.cm, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.co, i64 noundef range(i64 0, -9223372036854775808) %i.cn), !noalias !444 ; 2 uses
  %i.cr = extractvalue { i64, i64 } %i.cq, 0
  %i.cs = extractvalue { i64, i64 } %i.cq, 1
  %i.ct = trunc nuw i64 %i.cr to i1
  br i1 %i.ct, label %.loopexit43.i, label %.loopexit44.i

.lr.ph.i.i:                                       ; preds = %bb.s, %bb.u
  %.sroa.04.011.i.i = phi i64 [ %i.cx, %bb.u ], [ 0, %bb.s ] ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 %.sroa.04.011.i.i
  %i.cv = load i8, ptr %i.cu, align 1, !alias.scope !445, !noalias !444, !noundef !5
  %i.cw = icmp eq i8 %i.cv, %i.cm
  br i1 %i.cw, label %.loopexit43.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i
  %i.cx = add nuw nsw i64 %.sroa.04.011.i.i, 1    ; 2 uses
  %exitcond.not.i7.i = icmp eq i64 %i.cx, %i.cn
  br i1 %exitcond.not.i7.i, label %.loopexit44.i, label %.lr.ph.i.i

.loopexit43.i:                                    ; preds = %.lr.ph.i.i, %bb.t
  %.sroa.5.0.i.i = phi i64 [ %i.cs, %bb.t ], [ %.sroa.04.011.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.cy = icmp ult i64 %.sroa.5.0.i.i, %i.cn
  tail call void @llvm.assume(i1 %i.cy)
  %i.cz = add i64 %.sroa.5.0.i.i, %i.cb           ; 2 uses
  %i.da = add i64 %i.cz, 1                        ; 2 uses
  store i64 %i.da, ptr %i.g, align 8, !alias.scope !434
  br label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.loopexit44.i:                                    ; preds = %bb.u, %bb.t
  store i64 %.val1, ptr %i.g, align 8, !alias.scope !434
  br label %bb.ah

bb.v:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !446)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !447)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !448)
  %.promoted.i.i = load i64, ptr %i.cj, align 8, !alias.scope !449 ; 2 uses
  %i.db = add i64 %.promoted.i.i, %i.ck           ; 2 uses
  %i.dc = icmp ult i64 %i.db, %.val1
  br i1 %i.dc, label %.lr.ph.i8.i, label %._crit_edge.i.i

.lr.ph.i8.i:                                      ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.de = load i64, ptr %i.dd, align 8, !alias.scope !449, !noundef !5
  %i.df = load i64, ptr %i.g, align 8, !alias.scope !449
  %.fr60.i.i = freeze i64 %i.df                   ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dh = load i64, ptr %i.dg, align 8, !alias.scope !449 ; 2 uses
  %i.di = sub i64 %i.ci, %i.dh
  %invariant.op = sub i64 1, %.fr60.i.i
  br label %.lr.ph.split.i.i

._crit_edge.i.i:                                  ; preds = %bb.y, %bb.v
  store i64 %.val1, ptr %i.cj, align 8, !alias.scope !449
  br label %bb.ah

.lr.ph.split.i.i:                                 ; preds = %bb.y, %.lr.ph.i8.i
  %i.dj = phi i64 [ %.sink70.i.i, %bb.y ], [ %i.cd, %.lr.ph.i8.i ] ; 3 uses
  %i.dk = phi i64 [ %i.du, %bb.y ], [ %i.db, %.lr.ph.i8.i ]
  %i.dl = phi i64 [ %.sink71.i.i, %bb.y ], [ %.promoted.i.i, %.lr.ph.i8.i ] ; 7 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.val, i64 %i.dk
  %i.dn = load i8, ptr %i.dm, align 1, !alias.scope !447, !noalias !444, !noundef !5
  %i.do = and i8 %i.dn, 63
  %i.dp = zext nneg i8 %i.do to i64
  %i.dq = shl nuw i64 1, %i.dp
  %i.dr = and i64 %i.dq, %i.de
  %.not.i9.i = icmp eq i64 %i.dr, 0
  br i1 %.not.i9.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph.split.i.i
  %i.ds = add i64 %i.dl, %i.ci
  br label %bb.y

bb.x:                                             ; preds = %.lr.ph.split.i.i
  %..i.i10.i = tail call noundef i64 @llvm.umax.i64(i64 %i.dj, i64 %.fr60.i.i) ; 2 uses
  %i.dt = icmp ult i64 %..i.i10.i, %i.ci
  br i1 %i.dt, label %.lr.ph, label %.preheader36.i.i.preheader

bb.y:                                             ; preds = %bb.ac, %bb.ab, %bb.w
  %.sink71.i.i = phi i64 [ %i.eq, %bb.ac ], [ %i.ep, %bb.ab ], [ %i.ds, %bb.w ] ; 3 uses
  %.sink70.i.i = phi i64 [ 0, %bb.ac ], [ %i.di, %bb.ab ], [ 0, %bb.w ] ; 2 uses
  store i64 %.sink71.i.i, ptr %i.cj, align 8, !alias.scope !449
  store i64 %.sink70.i.i, ptr %i.cc, align 8, !alias.scope !449
  %i.du = add i64 %.sink71.i.i, %i.ck             ; 2 uses
  %i.dv = icmp ult i64 %i.du, %.val1
  br i1 %i.dv, label %.lr.ph.split.i.i, label %._crit_edge.i.i

bb.z:                                             ; preds = %.lr.ph
  %i.dw = add nuw nsw i64 %.sroa.04.0.i.i90, 1    ; 2 uses
  %i.dx = icmp ult i64 %i.dw, %i.ci
  br i1 %i.dx, label %.lr.ph, label %.preheader36.i.i.preheader

.preheader36.i.i.preheader:                       ; preds = %bb.z, %bb.x
  %i.dy = icmp ult i64 %i.dj, %.fr60.i.i
  br i1 %i.dy, label %.lr.ph92, label %.split.us.i11.i

.lr.ph:                                           ; preds = %bb.x, %bb.z
  %.sroa.04.0.i.i90 = phi i64 [ %i.dw, %bb.z ], [ %..i.i10.i, %bb.x ] ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.sroa.04.0.i.i90
  %i.ea = load i8, ptr %i.dz, align 1, !alias.scope !448, !noalias !444, !noundef !5
  %i.eb = add i64 %.sroa.04.0.i.i90, %i.dl        ; 2 uses
  %i.ec = icmp ult i64 %i.eb, %.val1
  tail call void @llvm.assume(i1 %i.ec)
  %i.ed = getelementptr inbounds nuw i8, ptr %.val, i64 %i.eb
  %i.ee = load i8, ptr %i.ed, align 1, !alias.scope !447, !noalias !444, !noundef !5
  %.not21.i.i = icmp eq i8 %i.ea, %i.ee
  br i1 %.not21.i.i, label %bb.z, label %bb.ac

.preheader36.i.i:                                 ; preds = %bb.aa
  %i.ef = icmp ult i64 %i.dj, %i.eh
  br i1 %i.ef, label %.lr.ph92, label %.split.us.i11.i

.split.us.i11.i:                                  ; preds = %.preheader36.i.i.preheader, %.preheader36.i.i
  %i.eg = add i64 %i.dl, %i.ci                    ; 2 uses
  store i64 %i.eg, ptr %i.cj, align 8, !alias.scope !449
  store i64 0, ptr %i.cc, align 8, !alias.scope !449
  br label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph92:                                         ; preds = %.preheader36.i.i.preheader, %.preheader36.i.i
  %.sroa.2.0.i.i91 = phi i64 [ %i.eh, %.preheader36.i.i ], [ %.fr60.i.i, %.preheader36.i.i.preheader ]
  %i.eh = add i64 %.sroa.2.0.i.i91, -1            ; 6 uses
  %i.ei = icmp ult i64 %i.eh, %i.ci
  br i1 %i.ei, label %bb.aa, label %.split32.us.i.i

bb.aa:                                            ; preds = %.lr.ph92
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.eh
  %i.ek = load i8, ptr %i.ej, align 1, !alias.scope !448, !noalias !444, !noundef !5
  %i.el = add i64 %i.eh, %i.dl                    ; 2 uses
  %i.em = icmp ult i64 %i.el, %.val1
  tail call void @llvm.assume(i1 %i.em)
  %i.en = getelementptr inbounds nuw i8, ptr %.val, i64 %i.el
  %i.eo = load i8, ptr %i.en, align 1, !alias.scope !447, !noalias !444, !noundef !5
  %.not20.i.i = icmp eq i8 %i.ek, %i.eo
  br i1 %.not20.i.i, label %.preheader36.i.i, label %bb.ab

.split32.us.i.i:                                  ; preds = %.lr.ph92
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.eh, i64 noundef range(i64 0, -9223372036854775808) %i.ci, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #24, !noalias !450
  unreachable

bb.ab:                                            ; preds = %bb.aa
  %i.ep = add i64 %i.dl, %i.dh
  br label %bb.y

bb.ac:                                            ; preds = %.lr.ph
  %.reass.i.reass.reass = add i64 %i.dl, %invariant.op
  %i.eq = add i64 %.reass.i.reass.reass, %.sroa.04.0.i.i90
  br label %bb.y

bb.ad:                                            ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !451)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !452)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !453)
  %.promoted.i12.i = load i64, ptr %i.cj, align 8, !alias.scope !454 ; 2 uses
  %i.er = add i64 %.promoted.i12.i, %i.ck         ; 2 uses
  %i.es = icmp ult i64 %i.er, %.val1
  br i1 %i.es, label %.lr.ph.i15.i, label %._crit_edge.i13.i

.lr.ph.i15.i:                                     ; preds = %bb.ad
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.eu = load i64, ptr %i.et, align 8, !alias.scope !454, !noundef !5
  %i.ev = load i64, ptr %i.g, align 8, !alias.scope !454
  %.fr215.i = freeze i64 %i.ev                    ; 7 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ex = load i64, ptr %i.ew, align 8, !alias.scope !454
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %.fr215.i, i64 range(i64 0, -9223372036854775808) %i.ci)
  %i.ey = add i64 %.fr215.i, -1                   ; 2 uses
  %.first_iter.i16.i = icmp ult i64 %i.ey, %i.ci
  %exitcond.not.i17.i94.not = icmp ult i64 %.fr215.i, %i.ci
  %invariant.op134 = sub i64 1, %.fr215.i
  %.not34.i.us.i97 = icmp eq i64 %.fr215.i, 0     ; 2 uses
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %bb.ag, %.lr.ph.i15.i
  %i.ez = phi i64 [ %i.fy, %bb.ag ], [ %i.er, %.lr.ph.i15.i ]
  %i.fa = phi i64 [ %.sink.i18.i, %bb.ag ], [ %.promoted.i12.i, %.lr.ph.i15.i ] ; 7 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ez
  %i.fc = load i8, ptr %i.fb, align 1, !alias.scope !452, !noalias !444, !noundef !5
  %i.fd = and i8 %i.fc, 63
  %i.fe = zext nneg i8 %i.fd to i64
  %i.ff = shl nuw i64 1, %i.fe
  %i.fg = and i64 %i.ff, %i.eu
  %.not.us.i.i = icmp eq i64 %i.fg, 0
  br i1 %.not.us.i.i, label %bb.af, label %.preheader35.i.i.preheader

.preheader35.i.i.preheader:                       ; preds = %.lr.ph.split.us.i.i
  br i1 %exitcond.not.i17.i94.not, label %.lr.ph96, label %.preheader.i19.preheader.i

.preheader35.i.i:                                 ; preds = %.lr.ph96
  %i.fh = add i64 %.sroa.04.0.us.i.i95, 1         ; 2 uses
  %exitcond.not.i17.i = icmp eq i64 %i.fh, %umax.i.i
  br i1 %exitcond.not.i17.i, label %.preheader.i19.preheader.i, label %.lr.ph96

.preheader.i19.preheader.i:                       ; preds = %.preheader35.i.i, %.preheader35.i.i.preheader
  br i1 %.first_iter.i16.i, label %.preheader.i19.us.i.preheader, label %.preheader.split.i21.i

.preheader.i19.us.i.preheader:                    ; preds = %.preheader.i19.preheader.i
  br i1 %.not34.i.us.i97, label %.split.us.i21.i, label %.lr.ph99

.preheader.i19.us.i:                              ; preds = %.lr.ph99
  %.not34.i.us.i = icmp eq i64 %i.fi, 0
  br i1 %.not34.i.us.i, label %.split.us.i21.i, label %.lr.ph99

.lr.ph99:                                         ; preds = %.preheader.i19.us.i.preheader, %.preheader.i19.us.i
  %.sroa.2.0.us.i.us.i98 = phi i64 [ %i.fi, %.preheader.i19.us.i ], [ %.fr215.i, %.preheader.i19.us.i.preheader ]
  %i.fi = add i64 %.sroa.2.0.us.i.us.i98, -1      ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.fi
  %i.fk = load i8, ptr %i.fj, align 1, !alias.scope !453, !noalias !444, !noundef !5
  %i.fl = add i64 %i.fi, %i.fa                    ; 2 uses
  %i.fm = icmp ult i64 %i.fl, %.val1
  tail call void @llvm.assume(i1 %i.fm)
  %i.fn = getelementptr inbounds nuw i8, ptr %.val, i64 %i.fl
  %i.fo = load i8, ptr %i.fn, align 1, !alias.scope !452, !noalias !444, !noundef !5
  %.not20.us.i.us.i = icmp eq i8 %i.fk, %i.fo
  br i1 %.not20.us.i.us.i, label %.preheader.i19.us.i, label %.split.us.i

.split.us.i:                                      ; preds = %.lr.ph99
  %i.fp = add i64 %i.fa, %i.ex
  br label %bb.ag

.preheader.split.i21.i:                           ; preds = %.preheader.i19.preheader.i
  br i1 %.not34.i.us.i97, label %.split.us.i21.i, label %.split32.us.i22.i

.lr.ph96:                                         ; preds = %.preheader35.i.i.preheader, %.preheader35.i.i
  %.sroa.04.0.us.i.i95 = phi i64 [ %i.fh, %.preheader35.i.i ], [ %.fr215.i, %.preheader35.i.i.preheader ] ; 4 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.sroa.04.0.us.i.i95
  %i.fr = load i8, ptr %i.fq, align 1, !alias.scope !453, !noalias !444, !noundef !5
  %i.fs = add i64 %.sroa.04.0.us.i.i95, %i.fa     ; 2 uses
  %i.ft = icmp ult i64 %i.fs, %.val1
  tail call void @llvm.assume(i1 %i.ft)
  %i.fu = getelementptr inbounds nuw i8, ptr %.val, i64 %i.fs
  %i.fv = load i8, ptr %i.fu, align 1, !alias.scope !452, !noalias !444, !noundef !5
  %.not21.us.i.i = icmp eq i8 %i.fr, %i.fv
  br i1 %.not21.us.i.i, label %.preheader35.i.i, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph96
  %.reass282.i.reass.reass = add i64 %i.fa, %invariant.op134
  %i.fw = add i64 %.reass282.i.reass.reass, %.sroa.04.0.us.i.i95
  br label %bb.ag

bb.af:                                            ; preds = %.lr.ph.split.us.i.i
  %i.fx = add i64 %i.fa, %i.ci
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %.split.us.i
  %.sink.i18.i = phi i64 [ %i.fx, %bb.af ], [ %i.fw, %bb.ae ], [ %i.fp, %.split.us.i ] ; 3 uses
  store i64 %.sink.i18.i, ptr %i.cj, align 8, !alias.scope !454
  %i.fy = add i64 %.sink.i18.i, %i.ck             ; 2 uses
  %i.fz = icmp ult i64 %i.fy, %.val1
  br i1 %i.fz, label %.lr.ph.split.us.i.i, label %._crit_edge.i13.i

._crit_edge.i13.i:                                ; preds = %bb.ag, %bb.ad
  store i64 %.val1, ptr %i.cj, align 8, !alias.scope !454
  br label %bb.ah

.split.us.i21.i:                                  ; preds = %.preheader.i19.us.i.preheader, %.preheader.i19.us.i, %.preheader.split.i21.i
  %i.ga = add i64 %i.fa, %i.ci                    ; 2 uses
  store i64 %i.ga, ptr %i.cj, align 8, !alias.scope !454
  br label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.split32.us.i22.i:                                ; preds = %.preheader.split.i21.i
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ey, i64 noundef range(i64 0, -9223372036854775808) %i.ci, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #24, !noalias !455
  unreachable

_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit: ; preds = %.split166.us.i.thread, %.split.us.i21.i, %.split.us.i11.i, %.loopexit43.i, %.loopexit42.split.us.i, %.split166.us.i
  %.sroa.9.0 = phi i64 [ %.val1, %.split166.us.i ], [ %i.eg, %.split.us.i11.i ], [ %.lcssa33, %.loopexit42.split.us.i ], [ %i.da, %.loopexit43.i ], [ %i.ga, %.split.us.i21.i ], [ %.val1, %.split166.us.i.thread ]
  %.sroa.4.03 = phi i64 [ %.val1, %.split166.us.i ], [ %i.dl, %.split.us.i11.i ], [ %.lcssa33, %.loopexit42.split.us.i ], [ %i.cz, %.loopexit43.i ], [ %i.fa, %.split.us.i21.i ], [ %.val1, %.split166.us.i.thread ]
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.gc = load i64, ptr %i.gb, align 8, !noundef !5 ; 2 uses
  %i.gd = sub nuw i64 %.sroa.4.03, %i.gc
  %i.ge = getelementptr inbounds nuw i8, ptr %.val, i64 %i.gc
  store i64 %.sroa.9.0, ptr %i.gb, align 8
  br label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalReE7get_endCs3Kwrwkha1e5_13pingora_proxy.exit

bb.ah:                                            ; preds = %bb.p, %.preheader.i, %._crit_edge.i13.i, %._crit_edge.i.i, %.loopexit44.i, %bb.q
  store i8 1, ptr %i.a, align 1, !alias.scope !456
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.gg = load i8, ptr %i.gf, align 8, !range !11, !alias.scope !456, !noundef !5
  %i.gh = trunc nuw i8 %i.gg to i1
  br i1 %i.gh, label %._crit_edge.i, label %bb.ai

._crit_edge.i:                                    ; preds = %bb.ah
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !456
  %.phi.trans.insert2.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre3.i = load i64, ptr %.phi.trans.insert2.i, align 8, !alias.scope !456
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.gj = load i64, ptr %i.gi, align 8, !alias.scope !456, !noundef !5 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.gl = load i64, ptr %i.gk, align 8, !alias.scope !456, !noundef !5 ; 2 uses
  %.not.i2 = icmp eq i64 %i.gj, %i.gl
  br i1 %.not.i2, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalReE7get_endCs3Kwrwkha1e5_13pingora_proxy.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %._crit_edge.i
  %i.gm = phi i64 [ %.pre3.i, %._crit_edge.i ], [ %i.gj, %bb.ai ]
  %i.gn = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.gl, %bb.ai ] ; 2 uses
  %i.go = sub nuw i64 %i.gm, %i.gn
  %i.gp = getelementptr inbounds nuw i8, ptr %.val, i64 %i.gn
  br label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalReE7get_endCs3Kwrwkha1e5_13pingora_proxy.exit

_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalReE7get_endCs3Kwrwkha1e5_13pingora_proxy.exit: ; preds = %bb.aj, %bb.ai, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, %bb.a
  %.sroa.4.1 = phi i64 [ undef, %bb.a ], [ %i.gd, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit ], [ %i.go, %bb.aj ], [ undef, %bb.ai ]
  %.sroa.0.1 = phi ptr [ null, %bb.a ], [ %i.ge, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit ], [ %i.gp, %bb.aj ], [ null, %bb.ai ]
  %i.gq = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1, 0
  %i.gr = insertvalue { ptr, i64 } %i.gq, i64 %.sroa.4.1, 1
  ret { ptr, i64 } %i.gr
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvNtCs1eA6bChxBZF_5bytes5bytes11static_drop(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvNtCs1eA6bChxBZF_5bytes5bytes12static_clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.c, align 8
  store ptr @12, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvNtCs1eA6bChxBZF_5bytes5bytes16static_is_unique(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs3Kwrwkha1e5_13pingora_proxy11proxy_cache12range_filter19range_header_filter(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, ptr noalias nofree noundef align 8 dereferenceable(232) %2, i64 noundef range(i64 0, 2) %3, i64 %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [40 x i8], align 8                ; 17 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [40 x i8], align 8                ; 17 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [40 x i8], align 8                ; 17 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [40 x i8], align 8                ; 17 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [40 x i8], align 8                ; 17 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [40 x i8], align 8                ; 17 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [40 x i8], align 8                ; 17 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [32 x i8], align 8                ; 10 uses
  %i.q = alloca [40 x i8], align 8                ; 11 uses
  %i.r = alloca [48 x i8], align 8                ; 10 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [72 x i8], align 8                ; 9 uses
  %i.x = alloca [72 x i8], align 8                ; 17 uses
  %i.y = alloca [24 x i8], align 8                ; 12 uses
  %i.z = alloca [136 x i8], align 8               ; 12 uses
  %i.aa = alloca [24 x i8], align 8               ; 7 uses
  %i.ab = alloca [32 x i8], align 8               ; 4 uses
  %i.ac = alloca [32 x i8], align 8               ; 4 uses
  %i.ad = alloca [32 x i8], align 8               ; 4 uses
  %i.ae = alloca [32 x i8], align 8               ; 4 uses
  %i.af = alloca [24 x i8], align 8               ; 7 uses
  %i.ag = alloca [8 x i8], align 8                ; 4 uses
  %i.ah = alloca [8 x i8], align 8                ; 4 uses
  %i.ai = alloca [8 x i8], align 8                ; 4 uses
  %i.aj = alloca [8 x i8], align 8                ; 4 uses
  %i.ak = alloca [8 x i8], align 8                ; 4 uses
  %i.al = alloca [8 x i8], align 8                ; 4 uses
  %i.am = alloca [8 x i8], align 8                ; 4 uses
  %i.an = alloca [8 x i8], align 8                ; 4 uses
  %i.ao = alloca [8 x i8], align 8                ; 4 uses
  %i.ap = alloca [8 x i8], align 8                ; 4 uses
  %i.aq = alloca [32 x i8], align 8               ; 4 uses
  %i.ar = alloca [32 x i8], align 8               ; 4 uses
  %i.as = alloca [32 x i8], align 8               ; 4 uses
  %i.at = alloca [24 x i8], align 8               ; 6 uses
  %i.au = alloca [16 x i8], align 8               ; 5 uses
  %i.av = alloca [24 x i8], align 8               ; 2 uses
  %i.aw = alloca [40 x i8], align 8               ; 8 uses
  %i.ax = alloca [16 x i8], align 8               ; 5 uses
  %i.ay = alloca [24 x i8], align 8               ; 2 uses
  %i.az = alloca [32 x i8], align 8               ; 4 uses
  %i.ba = alloca [48 x i8], align 8               ; 9 uses
  %i.bb = alloca [8 x i8], align 8                ; 4 uses
  %i.bc = alloca [24 x i8], align 8               ; 2 uses
  %i.bd = alloca [80 x i8], align 8               ; 28 uses
  %i.be = alloca [8 x i8], align 8                ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.bg = load i16, ptr %i.bf, align 8, !range !759, !noundef !5
  %.not = icmp eq i16 %i.bg, 200
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr noundef nonnull align 8 dereferenceable(32) @37, i64 32, i1 false)
  %i.bh = call noundef align 8 ptr @_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap3getNtNtB8_4name10HeaderNameECs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.as) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  %.not50 = icmp eq ptr %i.bh, null
  br i1 %.not50, label %bb.k, label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.if

bb.d:                                             ; preds = %bb.b
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !noundef !5
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !760
  call void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.af, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bj, i64 noundef range(i64 0, -9223372036854775808) %i.bl)
  %i.bm = load i64, ptr %i.af, align 8, !range !9, !noalias !760, !noundef !5
  %i.bn = trunc nuw i64 %i.bm to i1
  br i1 %i.bn, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !760
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.bo = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !760, !nonnull !5, !noundef !5 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !noalias !760, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !760
  switch i64 %i.br, label %thread-pre-split.i.i [
    i64 0, label %.loopexit
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.bs = load i8, ptr %i.bp, align 1, !alias.scope !761, !noundef !5 ; 2 uses
  switch i8 %i.bs, label %bb.h [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i.i:                             ; preds = %bb.f
  %.pr.i.i = load i8, ptr %i.bp, align 1, !alias.scope !761
  br label %bb.h

bb.h:                                             ; preds = %thread-pre-split.i.i, %bb.g
  %i.bt = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.bs, %bb.g ]
  %cond.i.i = icmp eq i8 %i.bt, 43                ; 2 uses
  %i.bu = sext i1 %cond.i.i to i64
  %.sroa.15.0.i.i = add nsw i64 %i.br, %i.bu      ; 4 uses
  %.sroa.0.0.idx.i.i = zext i1 %cond.i.i to i64
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.sroa.0.0.idx.i.i ; 2 uses
  %i.bv = icmp samesign ult i64 %.sroa.15.0.i.i, 17
  br i1 %i.bv, label %.preheader.i.i, label %.preheader56.i.i.preheader

.preheader.i.i:                                   ; preds = %bb.h
  %.not5366.i.i = icmp eq i64 %.sroa.15.0.i.i, 0
  br i1 %.not5366.i.i, label %.loopexit353, label %.lr.ph.i.i

end_hunk_0
