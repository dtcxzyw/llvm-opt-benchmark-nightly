Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.15?download=true
inline.NumInlined: 862
inline.NumDeleted: 412
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_RNvMs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoderNtB5_11HdrMetadata18update_header_info:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !825)
  %i.s = load i64, ptr %i.d, align 8, !range !20, !alias.scope !825, !noalias !823, !noundef !5
  %i.t = trunc nuw i64 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  br i1 %i.t, label %bb.k, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 26
  %i.w = load i8, ptr %i.v, align 2, !range !10, !alias.scope !826, !noalias !823, !noundef !5
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %_RINvMNtCsj6eKBz9Db1c_4core3stre4findReECsa5QsYiPB8Gl_5image.exit.thread.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %.promoted.i.i.i = load i64, ptr %i.u, align 8, !alias.scope !825, !noalias !823 ; 14 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !826, !noalias !823, !nonnull !5, !noundef !5 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !826, !noalias !823, !noundef !5 ; 15 uses
  %.promoted52.i.i.i = load i8, ptr %i.y, align 8, !alias.scope !826, !noalias !823
  %i.ad = trunc i8 %.promoted52.i.i.i to i1       ; 2 uses
  %i.ae = icmp eq i64 %.promoted.i.i.i, 0
  br i1 %i.ae, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %.not.i.i.i.peel.i.i = icmp ult i64 %.promoted.i.i.i, %i.ac
  br i1 %.not.i.i.i.peel.i.i, label %bb.c, label %.split.i.i.i.peel.i.i

.split.i.i.i.peel.i.i:                            ; preds = %bb.b
  %i.af = icmp eq i64 %.promoted.i.i.i, %i.ac
  br i1 %i.af, label %bb.d, label %.loopexit.i.i

bb.c:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.promoted.i.i.i
  %i.ah = load i8, ptr %i.ag, align 1, !alias.scope !827, !noalias !828, !noundef !5
  %i.ai = icmp sgt i8 %i.ah, -65
  br i1 %i.ai, label %bb.d, label %.loopexit.i.i

bb.d:                                             ; preds = %bb.c, %.split.i.i.i.peel.i.i, %.lr.ph.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.promoted.i.i.i ; 4 uses
  %i.ak = icmp samesign eq i64 %.promoted.i.i.i, %i.ac
  br i1 %i.ak, label %_RINvMNtCsj6eKBz9Db1c_4core3stre4findReECsa5QsYiPB8Gl_5image.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = load i8, ptr %i.aj, align 1, !noalias !829, !noundef !5 ; 5 uses
  %i.am = icmp sgt i8 %i.al, -1
  br i1 %i.am, label %bb.f, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit12.i.i.i.peel.i.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit12.i.i.i.peel.i.i: ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.ao = and i8 %i.al, 31
  %i.ap = zext nneg i8 %i.ao to i32               ; 3 uses
  %i.aq = add nuw nsw i64 %.promoted.i.i.i, 1
  %i.ar = icmp samesign ne i64 %i.aq, %i.ac
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = load i8, ptr %i.an, align 1, !noalias !829, !noundef !5
  %i.at = shl nuw nsw i32 %i.ap, 6
  %i.au = and i8 %i.as, 63
  %i.av = zext nneg i8 %i.au to i32               ; 2 uses
  %i.aw = or disjoint i32 %i.at, %i.av
  %i.ax = icmp samesign ugt i8 %i.al, -33
  br i1 %i.ax, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit14.i.i.i.peel.i.i, label %bb.g

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit14.i.i.i.peel.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit12.i.i.i.peel.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.az = add nuw nsw i64 %.promoted.i.i.i, 2
  %i.ba = icmp samesign ne i64 %i.az, %i.ac
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = load i8, ptr %i.ay, align 1, !noalias !829, !noundef !5
  %i.bc = shl nuw nsw i32 %i.av, 6
  %i.bd = and i8 %i.bb, 63
  %i.be = zext nneg i8 %i.bd to i32
  %i.bf = or disjoint i32 %i.bc, %i.be            ; 2 uses
  %i.bg = shl nuw nsw i32 %i.ap, 12
  %i.bh = or disjoint i32 %i.bf, %i.bg
  %i.bi = icmp samesign ugt i8 %i.al, -17
  br i1 %i.bi, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit16.i.i.i.peel.i.i, label %bb.g

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit16.i.i.i.peel.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit14.i.i.i.peel.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aj, i64 3
  %i.bk = add nuw nsw i64 %.promoted.i.i.i, 3
  %i.bl = icmp samesign ne i64 %i.bk, %i.ac
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = load i8, ptr %i.bj, align 1, !noalias !829, !noundef !5
  %i.bn = shl nuw nsw i32 %i.ap, 18
  %i.bo = and i32 %i.bn, 1835008
  %i.bp = shl nuw nsw i32 %i.bf, 6
  %i.bq = and i8 %i.bm, 63
  %i.br = zext nneg i8 %i.bq to i32
  %i.bs = or disjoint i32 %i.bp, %i.br
  %i.bt = or disjoint i32 %i.bs, %i.bo
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bu = zext nneg i8 %i.al to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit16.i.i.i.peel.i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit14.i.i.i.peel.i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit12.i.i.i.peel.i.i
  %.sroa.4.0.i.ph.i.i.peel.i.i = phi i32 [ %i.bh, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit14.i.i.i.peel.i.i ], [ %i.bt, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit16.i.i.i.peel.i.i ], [ %i.aw, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit12.i.i.i.peel.i.i ], [ %i.bu, %bb.f ] ; 4 uses
  %i.bv = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i, 1114112
  tail call void @llvm.assume(i1 %i.bv)
  br i1 %i.ad, label %_RINvMNtCsj6eKBz9Db1c_4core3stre4findReECsa5QsYiPB8Gl_5image.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bw = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i, 128
  br i1 %i.bw, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bx = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i, 2048
  br i1 %i.bx, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.by = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i, 65536
  %..i.i.peel.i.i = select i1 %i.by, i64 3, i64 4
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !825, !noalias !823, !noundef !5 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, -1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !825, !noalias !823, !nonnull !5, !noundef !5 ; 8 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !825, !noalias !823, !noundef !5 ; 10 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.ch = load ptr, ptr %i.cg, align 8, !alias.scope !825, !noalias !823, !nonnull !5, !noundef !5 ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.cj = load i64, ptr %i.ci, align 8, !alias.scope !825, !noalias !823, !noundef !5 ; 14 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  %i.cl = add nsw i64 %i.cj, -1                   ; 5 uses
  br i1 %i.cb, label %bb.y, label %bb.q

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.sroa.01.0.i.i.peel.i.i = phi i64 [ 2, %bb.i ], [ %..i.i.peel.i.i, %bb.j ], [ 1, %bb.h ]
  %i.cm = add i64 %.sroa.01.0.i.i.peel.i.i, %.promoted.i.i.i ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !830)
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i.i.i.i.i = icmp ult i64 %i.cm, %i.ac
  br i1 %.not.i.i.i.i.i, label %bb.n, label %.split.i.i.i.i.i

.split.i.i.i.i.i:                                 ; preds = %bb.m
  %i.co = icmp eq i64 %i.cm, %i.ac
  br i1 %i.co, label %bb.o, label %.loopexit.i.i

bb.n:                                             ; preds = %bb.m
  %i.cp = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.cm
  %i.cq = load i8, ptr %i.cp, align 1, !alias.scope !827, !noalias !831, !noundef !5
  %i.cr = icmp sgt i8 %i.cq, -65
  br i1 %i.cr, label %bb.o, label %.loopexit.i.i

bb.o:                                             ; preds = %bb.n, %.split.i.i.i.i.i, %bb.l
  %i.cs = icmp samesign eq i64 %i.cm, %i.ac
  br i1 %i.cs, label %_RINvMNtCsj6eKBz9Db1c_4core3stre4findReECsa5QsYiPB8Gl_5image.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ct = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.cm
  %i.cu = load i8, ptr %i.ct, align 1, !noalias !832, !noundef !5 ; 3 uses
  %i.cv = icmp sgt i8 %i.cu, -1
  br i1 %i.cv, label %_RINvMNtCsj6eKBz9Db1c_4core3stre4findReECsa5QsYiPB8Gl_5image.exit.i, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit12.i.i.i.i.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit12.i.i.i.i.i: ; preds = %bb.p
  %i.cw = add nuw nsw i64 %i.cm, 1
  %i.cx = icmp samesign ne i64 %i.cw, %i.ac
  tail call void @llvm.assume(i1 %i.cx)
  %i.cy = icmp samesign ugt i8 %i.cu, -33
  br i1 %i.cy, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit14.i.i.i.i.i, label %_RINvMNtCsj6eKBz9Db1c_4core3stre4findReECsa5QsYiPB8Gl_5image.exit.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit12.i.i.i.i.i
  %i.cz = add nuw nsw i64 %i.cm, 2
  %i.da = icmp samesign ne i64 %i.cz, %i.ac
  tail call void @llvm.assume(i1 %i.da)
  %i.db = icmp samesign ugt i8 %i.cu, -17
  br i1 %i.db, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit16.i.i.i.i.i, label %_RINvMNtCsj6eKBz9Db1c_4core3stre4findReECsa5QsYiPB8Gl_5image.exit.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit14.i.i.i.i.i
  %i.dc = add nuw nsw i64 %i.cm, 3
  %i.dd = icmp samesign ne i64 %i.dc, %i.ac
  tail call void @llvm.assume(i1 %i.dd)
  br label %_RINvMNtCsj6eKBz9Db1c_4core3stre4findReECsa5QsYiPB8Gl_5image.exit.i

.loopexit.i.i:                                    ; preds = %bb.n, %.split.i.i.i.i.i, %bb.c, %.split.i.i.i.peel.i.i
  %.lcssa61.i.i = phi i64 [ %.promoted.i.i.i, %.split.i.i.i.peel.i.i ], [ %.promoted.i.i.i, %bb.c ], [ %i.cm, %.split.i.i.i.i.i ], [ %i.cm, %bb.n ]
  tail call void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef %i.ac, i64 noundef %.lcssa61.i.i, i64 noundef %i.ac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @134) #28, !noalias !831
  unreachable

bb.q:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !833)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !834)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !835)
  %.promoted.i.i.i.i = load i64, ptr %i.ck, align 8, !alias.scope !836, !noalias !823 ; 2 uses
  %i.de = add i64 %.promoted.i.i.i.i, %i.cl       ; 2 uses
  %i.df = icmp ult i64 %i.de, %i.cf
  br i1 %i.df, label %.lr.ph.i1.i.i.i, label %_RINvMNtCsj6eKBz9Db1c_4core3stre4findReECsa5QsYiPB8Gl_5image.exit.thread.i

.lr.ph.i1.i.i.i:                                  ; preds = %bb.q
  %i.dg = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.dh = load i64, ptr %i.dg, align 8, !alias.scope !836, !noalias !823, !noundef !5
  %i.di = load i64, ptr %i.u, align 8, !alias.scope !836, !noalias !823
  %.fr60.i.i.i.i = freeze i64 %i.di               ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.dk = load i64, ptr %i.dj, align 8, !alias.scope !836, !noalias !823 ; 2 uses
  %i.dl = sub i64 %i.cj, %i.dk
  %invariant.op = sub i64 1, %.fr60.i.i.i.i
  br label %.lr.ph.split.i.i.i.i

.lr.ph.split.i.i.i.i:                             ; preds = %bb.t, %.lr.ph.i1.i.i.i
  %.sink70.i.i29.i.i = phi i64 [ %.sink70.i.i.i.i, %bb.t ], [ %i.ca, %.lr.ph.i1.i.i.i ] ; 3 uses
  %.sink71.i.i26.i.i = phi i64 [ %.sink71.i.i.i.i, %bb.t ], [ %.promoted.i.i.i.i, %.lr.ph.i1.i.i.i ] ; 7 uses
  %i.dm = phi i64 [ %i.dv, %bb.t ], [ %i.de, %.lr.ph.i1.i.i.i ]
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !alias.scope !834, !noalias !837, !noundef !5
  %i.dp = and i8 %i.do, 63
  %i.dq = zext nneg i8 %i.dp to i64
  %i.dr = shl nuw i64 1, %i.dq
  %i.ds = and i64 %i.dr, %i.dh
  %.not.i2.i.i.i = icmp eq i64 %i.ds, 0
  br i1 %.not.i2.i.i.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.split.i.i.i.i
  %i.dt = add i64 %.sink71.i.i26.i.i, %i.cj
  br label %bb.t

bb.s:                                             ; preds = %.lr.ph.split.i.i.i.i
  %..i.i3.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %.sink70.i.i29.i.i, i64 %.fr60.i.i.i.i) ; 2 uses
  %i.du = icmp ult i64 %..i.i3.i.i.i, %i.cj
  br i1 %i.du, label %.lr.ph, label %.preheader36.i.i.i.i.preheader

bb.t:                                             ; preds = %bb.x, %bb.w, %bb.r
  %.sink71.i.i.i.i = phi i64 [ %i.eq, %bb.x ], [ %i.ep, %bb.w ], [ %i.dt, %bb.r ] ; 2 uses
  %.sink70.i.i.i.i = phi i64 [ 0, %bb.x ], [ %i.dl, %bb.w ], [ 0, %bb.r ]
  %i.dv = add i64 %.sink71.i.i.i.i, %i.cl         ; 2 uses
  %i.dw = icmp ult i64 %i.dv, %i.cf
  br i1 %i.dw, label %.lr.ph.split.i.i.i.i, label %_RINvMNtCsj6eKBz9Db1c_4core3stre4findReECsa5QsYiPB8Gl_5image.exit.thread.i

bb.u:                                             ; preds = %.lr.ph
  %i.dx = add nuw nsw i64 %.sroa.04.0.i.i.i.i211, 1 ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %i.cj
  br i1 %i.dy, label %.lr.ph, label %.preheader36.i.i.i.i.preheader

.preheader36.i.i.i.i.preheader:                   ; preds = %bb.u, %bb.s
  %i.dz = icmp ult i64 %.sink70.i.i29.i.i, %.fr60.i.i.i.i
  br i1 %i.dz, label %.lr.ph213, label %_RINvMNtCsj6eKBz9Db1c_4core3stre4findReECsa5QsYiPB8Gl_5image.exit.i

.lr.ph:                                           ; preds = %bb.s, %bb.u
  %.sroa.04.0.i.i.i.i211 = phi i64 [ %i.dx, %bb.u ], [ %..i.i3.i.i.i, %bb.s ] ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.sroa.04.0.i.i.i.i211
  %i.eb = load i8, ptr %i.ea, align 1, !alias.scope !835, !noalias !837, !noundef !5
  %i.ec = add i64 %.sroa.04.0.i.i.i.i211, %.sink71.i.i26.i.i ; 2 uses
  %i.ed = icmp ult i64 %i.ec, %i.cf
  tail call void @llvm.assume(i1 %i.ed)
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ec
  %i.ef = load i8, ptr %i.ee, align 1, !alias.scope !834, !noalias !837, !noundef !5
  %.not21.i.i.i.i = icmp eq i8 %i.eb, %i.ef
  br i1 %.not21.i.i.i.i, label %bb.u, label %bb.x

.preheader36.i.i.i.i:                             ; preds = %bb.v
  %i.eg = icmp ult i64 %.sink70.i.i29.i.i, %i.eh
  br i1 %i.eg, label %.lr.ph213, label %_RINvMNtCsj6eKBz9Db1c_4core3stre4findReECsa5QsYiPB8Gl_5image.exit.i

.lr.ph213:                                        ; preds = %.preheader36.i.i.i.i.preheader, %.preheader36.i.i.i.i
  %.sroa.2.0.i.i.i.i212 = phi i64 [ %i.eh, %.preheader36.i.i.i.i ], [ %.fr60.i.i.i.i, %.preheader36.i.i.i.i.preheader ]
  %i.eh = add i64 %.sroa.2.0.i.i.i.i212, -1       ; 6 uses
  %i.ei = icmp ult i64 %i.eh, %i.cj
  br i1 %i.ei, label %bb.v, label %.split32.us.i.i.i.i

bb.v:                                             ; preds = %.lr.ph213
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.eh
  %i.ek = load i8, ptr %i.ej, align 1, !alias.scope !835, !noalias !837, !noundef !5
  %i.el = add i64 %i.eh, %.sink71.i.i26.i.i       ; 2 uses
  %i.em = icmp ult i64 %i.el, %i.cf
  tail call void @llvm.assume(i1 %i.em)
  %i.en = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.el
  %i.eo = load i8, ptr %i.en, align 1, !alias.scope !834, !noalias !837, !noundef !5
  %.not20.i.i.i.i = icmp eq i8 %i.ek, %i.eo
  br i1 %.not20.i.i.i.i, label %.preheader36.i.i.i.i, label %bb.w

.split32.us.i.i.i.i:                              ; preds = %.lr.ph213
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.eh, i64 noundef range(i64 0, -9223372036854775808) %i.cj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #28, !noalias !838
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.ep = add i64 %.sink71.i.i26.i.i, %i.dk
  br label %bb.t

bb.x:                                             ; preds = %.lr.ph
  %.reass.i.reass.i.reass.i.reass.reass = add i64 %.sink71.i.i26.i.i, %invariant.op
  %i.eq = add i64 %.reass.i.reass.i.reass.i.reass.reass, %.sroa.04.0.i.i.i.i211
  br label %bb.t

bb.y:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !839)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !840)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !841)
  %.promoted.i4.i.i.i = load i64, ptr %i.ck, align 8, !alias.scope !842, !noalias !823 ; 3 uses
  %i.er = add i64 %.promoted.i4.i.i.i, %i.cl      ; 3 uses
  %i.es = icmp ult i64 %i.er, %i.cf
  br i1 %i.es, label %.lr.ph.i7.i.i.i, label %_RINvMNtCsj6eKBz9Db1c_4core3stre4findReECsa5QsYiPB8Gl_5image.exit.thread.i

.lr.ph.i7.i.i.i:                                  ; preds = %bb.y
  %i.et = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.eu = load i64, ptr %i.et, align 8, !alias.scope !842, !noalias !823, !noundef !5 ; 2 uses
  %i.ev = load i64, ptr %i.u, align 8, !alias.scope !842, !noalias !823
  %.fr63.i.i.i = freeze i64 %i.ev                 ; 10 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ex = load i64, ptr %i.ew, align 8, !alias.scope !842, !noalias !823
  %umax.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %.fr63.i.i.i, i64 range(i64 0, -9223372036854775808) %i.cj) ; 2 uses
  %i.ey = add i64 %.fr63.i.i.i, -1                ; 2 uses
  %.first_iter.i8.i.i.i = icmp ult i64 %i.ey, %i.cj
  %i.ez = sub i64 1, %.fr63.i.i.i                 ; 2 uses
  br i1 %.first_iter.i8.i.i.i, label %.lr.ph.split.us.i.us.i.i.i.preheader, label %.lr.ph.split.us.i.i.i.i.preheader

.lr.ph.split.us.i.i.i.i.preheader:                ; preds = %.lr.ph.i7.i.i.i
  %exitcond.not.i.i.i.i215.not = icmp ult i64 %.fr63.i.i.i, %i.cj
  br label %.lr.ph.split.us.i.i.i.i

.lr.ph.split.us.i.us.i.i.i.preheader:             ; preds = %.lr.ph.i7.i.i.i
  %exitcond.not.i.us.i.i.i220.not = icmp ult i64 %.fr63.i.i.i, %i.cj
  %.not34.i.us.us.i.i.i223 = icmp eq i64 %.fr63.i.i.i, 0
  br label %.lr.ph.split.us.i.us.i.i.i

.lr.ph.split.us.i.us.i.i.i:                       ; preds = %.lr.ph.split.us.i.us.i.i.i.preheader, %bb.ab
  %.sink.i9.us.i34.i.i = phi i64 [ %.sink.i9.us.i.i.i, %bb.ab ], [ %.promoted.i4.i.i.i, %.lr.ph.split.us.i.us.i.i.i.preheader ] ; 7 uses
  %i.fa = phi i64 [ %i.fz, %bb.ab ], [ %i.er, %.lr.ph.split.us.i.us.i.i.i.preheader ]
  %i.fb = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !alias.scope !840, !noalias !837, !noundef !5
  %i.fd = and i8 %i.fc, 63
  %i.fe = zext nneg i8 %i.fd to i64
  %i.ff = shl nuw i64 1, %i.fe
  %i.fg = and i64 %i.ff, %i.eu
  %.not.us.i.us.i.i.i = icmp eq i64 %i.fg, 0
  br i1 %.not.us.i.us.i.i.i, label %bb.aa, label %.preheader35.i.us.i.i.i.preheader

.preheader35.i.us.i.i.i.preheader:                ; preds = %.lr.ph.split.us.i.us.i.i.i
  br i1 %exitcond.not.i.us.i.i.i220.not, label %.lr.ph222, label %.preheader.i10.us.us.i.i.i.preheader

.preheader35.i.us.i.i.i:                          ; preds = %.lr.ph222
  %i.fh = add i64 %.sroa.04.0.us.i.us.i.i.i221, 1 ; 2 uses
  %exitcond.not.i.us.i.i.i = icmp eq i64 %i.fh, %umax.i.i.i.i
  br i1 %exitcond.not.i.us.i.i.i, label %.preheader.i10.us.us.i.i.i.preheader, label %.lr.ph222

.preheader.i10.us.us.i.i.i.preheader:             ; preds = %.preheader35.i.us.i.i.i, %.preheader35.i.us.i.i.i.preheader
  br i1 %.not34.i.us.us.i.i.i223, label %_RINvMNtCsj6eKBz9Db1c_4core3stre4findReECsa5QsYiPB8Gl_5image.exit.i, label %.lr.ph225

.lr.ph222:                                        ; preds = %.preheader35.i.us.i.i.i.preheader, %.preheader35.i.us.i.i.i
  %.sroa.04.0.us.i.us.i.i.i221 = phi i64 [ %i.fh, %.preheader35.i.us.i.i.i ], [ %.fr63.i.i.i, %.preheader35.i.us.i.i.i.preheader ] ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.sroa.04.0.us.i.us.i.i.i221
  %i.fj = load i8, ptr %i.fi, align 1, !alias.scope !841, !noalias !837, !noundef !5
  %i.fk = add i64 %.sroa.04.0.us.i.us.i.i.i221, %.sink.i9.us.i34.i.i ; 2 uses
  %i.fl = icmp ult i64 %i.fk, %i.cf
  tail call void @llvm.assume(i1 %i.fl)
  %i.fm = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.fk
  %i.fn = load i8, ptr %i.fm, align 1, !alias.scope !840, !noalias !837, !noundef !5
  %.not21.us.i.us.i.i.i = icmp eq i8 %i.fj, %i.fn
  br i1 %.not21.us.i.us.i.i.i, label %.preheader35.i.us.i.i.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph222
  %i.fo = add i64 %.sink.i9.us.i34.i.i, %i.ez
  %i.fp = add i64 %i.fo, %.sroa.04.0.us.i.us.i.i.i221
  br label %bb.ab

.preheader.i10.us.us.i.i.i:                       ; preds = %.lr.ph225
  %.not34.i.us.us.i.i.i = icmp eq i64 %i.fq, 0
  br i1 %.not34.i.us.us.i.i.i, label %_RINvMNtCsj6eKBz9Db1c_4core3stre4findReECsa5QsYiPB8Gl_5image.exit.i, label %.lr.ph225

.lr.ph225:                                        ; preds = %.preheader.i10.us.us.i.i.i.preheader, %.preheader.i10.us.us.i.i.i
  %.sroa.2.0.us.i.us.us.i.i.i224 = phi i64 [ %i.fq, %.preheader.i10.us.us.i.i.i ], [ %.fr63.i.i.i, %.preheader.i10.us.us.i.i.i.preheader ]
  %i.fq = add i64 %.sroa.2.0.us.i.us.us.i.i.i224, -1 ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.fq
  %i.fs = load i8, ptr %i.fr, align 1, !alias.scope !841, !noalias !837, !noundef !5
  %i.ft = add i64 %i.fq, %.sink.i9.us.i34.i.i     ; 2 uses
  %i.fu = icmp ult i64 %i.ft, %i.cf
  tail call void @llvm.assume(i1 %i.fu)
  %i.fv = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ft
  %i.fw = load i8, ptr %i.fv, align 1, !alias.scope !840, !noalias !837, !noundef !5
  %.not20.us.i.us.us.i.i.i = icmp eq i8 %i.fs, %i.fw
  br i1 %.not20.us.i.us.us.i.i.i, label %.preheader.i10.us.us.i.i.i, label %.split.us.us.i.i.i

.split.us.us.i.i.i:                               ; preds = %.lr.ph225
  %i.fx = add i64 %.sink.i9.us.i34.i.i, %i.ex
  br label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.split.us.i.us.i.i.i
  %i.fy = add i64 %.sink.i9.us.i34.i.i, %i.cj
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.split.us.us.i.i.i, %bb.z
  %.sink.i9.us.i.i.i = phi i64 [ %i.fy, %bb.aa ], [ %i.fp, %bb.z ], [ %i.fx, %.split.us.us.i.i.i ] ; 2 uses
  %i.fz = add i64 %.sink.i9.us.i.i.i, %i.cl       ; 2 uses
  %i.ga = icmp ult i64 %i.fz, %i.cf
  br i1 %i.ga, label %.lr.ph.split.us.i.us.i.i.i, label %_RINvMNtCsj6eKBz9Db1c_4core3stre4findReECsa5QsYiPB8Gl_5image.exit.thread.i

.lr.ph.split.us.i.i.i.i:                          ; preds = %.lr.ph.split.us.i.i.i.i.preheader, %bb.ae
  %.sink.i9.i32.i.i = phi i64 [ %.sink.i9.i.i.i, %bb.ae ], [ %.promoted.i4.i.i.i, %.lr.ph.split.us.i.i.i.i.preheader ] ; 4 uses
  %i.gb = phi i64 [ %i.gs, %bb.ae ], [ %i.er, %.lr.ph.split.us.i.i.i.i.preheader ]
  %i.gc = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.gb
  %i.gd = load i8, ptr %i.gc, align 1, !alias.scope !840, !noalias !837, !noundef !5
  %i.ge = and i8 %i.gd, 63
  %i.gf = zext nneg i8 %i.ge to i64
  %i.gg = shl nuw i64 1, %i.gf
  %i.gh = and i64 %i.gg, %i.eu
  %.not.us.i.i.i.i = icmp eq i64 %i.gh, 0
  br i1 %.not.us.i.i.i.i, label %bb.ad, label %.preheader35.i.i.i.i.preheader

.preheader35.i.i.i.i.preheader:                   ; preds = %.lr.ph.split.us.i.i.i.i
  br i1 %exitcond.not.i.i.i.i215.not, label %.lr.ph217, label %.preheader.split.i13.i.i.i

.preheader35.i.i.i.i:                             ; preds = %.lr.ph217
  %i.gi = add i64 %.sroa.04.0.us.i.i.i.i216, 1    ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.gi, %umax.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.preheader.split.i13.i.i.i, label %.lr.ph217

.preheader.split.i13.i.i.i:                       ; preds = %.preheader35.i.i.i.i.preheader, %.preheader35.i.i.i.i
  %.not34.i.i.i.i = icmp eq i64 %.fr63.i.i.i, 0
  br i1 %.not34.i.i.i.i, label %_RINvMNtCsj6eKBz9Db1c_4core3stre4findReECsa5QsYiPB8Gl_5image.exit.i, label %.split32.us.i14.i.i.i

.lr.ph217:                                        ; preds = %.preheader35.i.i.i.i.preheader, %.preheader35.i.i.i.i
  %.sroa.04.0.us.i.i.i.i216 = phi i64 [ %i.gi, %.preheader35.i.i.i.i ], [ %.fr63.i.i.i, %.preheader35.i.i.i.i.preheader ] ; 4 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.sroa.04.0.us.i.i.i.i216
  %i.gk = load i8, ptr %i.gj, align 1, !alias.scope !841, !noalias !837, !noundef !5
  %i.gl = add i64 %.sroa.04.0.us.i.i.i.i216, %.sink.i9.i32.i.i ; 2 uses
  %i.gm = icmp ult i64 %i.gl, %i.cf
  tail call void @llvm.assume(i1 %i.gm)
  %i.gn = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.gl
  %i.go = load i8, ptr %i.gn, align 1, !alias.scope !840, !noalias !837, !noundef !5
  %.not21.us.i.i.i.i = icmp eq i8 %i.gk, %i.go
  br i1 %.not21.us.i.i.i.i, label %.preheader35.i.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph217
  %i.gp = add i64 %.sink.i9.i32.i.i, %i.ez
  %i.gq = add i64 %i.gp, %.sroa.04.0.us.i.i.i.i216
  br label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.split.us.i.i.i.i
  %i.gr = add i64 %.sink.i9.i32.i.i, %i.cj
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.sink.i9.i.i.i = phi i64 [ %i.gr, %bb.ad ], [ %i.gq, %bb.ac ] ; 2 uses
  %i.gs = add i64 %.sink.i9.i.i.i, %i.cl          ; 2 uses
  %i.gt = icmp ult i64 %i.gs, %i.cf
  br i1 %i.gt, label %.lr.ph.split.us.i.i.i.i, label %_RINvMNtCsj6eKBz9Db1c_4core3stre4findReECsa5QsYiPB8Gl_5image.exit.thread.i

.split32.us.i14.i.i.i:                            ; preds = %.preheader.split.i13.i.i.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ey, i64 noundef range(i64 0, -9223372036854775808) %i.cj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #28, !noalias !843
  unreachable

_RINvMNtCsj6eKBz9Db1c_4core3stre4findReECsa5QsYiPB8Gl_5image.exit.thread.i: ; preds = %bb.t, %bb.ae, %bb.ab, %bb.y, %bb.q, %.preheader.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !823
  br label %.thread

_RINvMNtCsj6eKBz9Db1c_4core3stre4findReECsa5QsYiPB8Gl_5image.exit.i: ; preds = %.preheader36.i.i.i.i.preheader, %.preheader36.i.i.i.i, %.preheader.i10.us.us.i.i.i.preheader, %.preheader.i10.us.us.i.i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit12.i.i.i.i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit14.i.i.i.i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit16.i.i.i.i.i, %bb.p, %.preheader.split.i13.i.i.i, %bb.o, %bb.g, %bb.d
  %.sroa.4.0.i.i = phi i64 [ %.promoted.i.i.i, %bb.d ], [ %i.cm, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit12.i.i.i.i.i ], [ %.sink71.i.i26.i.i, %.preheader36.i.i.i.i ], [ %.promoted.i.i.i, %bb.g ], [ %.sink.i9.i32.i.i, %.preheader.split.i13.i.i.i ], [ %i.ac, %bb.o ], [ %i.cm, %bb.p ], [ %i.cm, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit16.i.i.i.i.i ], [ %i.cm, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit14.i.i.i.i.i ], [ %.sink.i9.us.i34.i.i, %.preheader.i10.us.us.i.i.i.preheader ], [ %.sink.i9.us.i34.i.i, %.preheader.i10.us.us.i.i.i ], [ %.sink71.i.i26.i.i, %.preheader36.i.i.i.i.preheader ] ; 8 uses
  %storemerge.i.sink.i.i.i = phi i1 [ %i.ad, %bb.d ], [ true, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit12.i.i.i.i.i ], [ true, %.preheader36.i.i.i.i ], [ true, %bb.g ], [ true, %.preheader.split.i13.i.i.i ], [ true, %bb.o ], [ true, %bb.p ], [ true, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit16.i.i.i.i.i ], [ true, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit14.i.i.i.i.i ], [ true, %.preheader.i10.us.us.i.i.i.preheader ], [ true, %.preheader.i10.us.us.i.i.i ], [ true, %.preheader36.i.i.i.i.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !823
  %i.gu = icmp ne i64 %.sroa.4.0.i.i, 0
  %or.cond.not.i = and i1 %storemerge.i.sink.i.i.i, %i.gu
  %i.gv = add i64 %3, -1
  %.not.i = icmp ult i64 %.sroa.4.0.i.i, %i.gv
  %or.cond = and i1 %.not.i, %or.cond.not.i
  br i1 %or.cond, label %bb.af, label %.thread

bb.af:                                            ; preds = %_RINvMNtCsj6eKBz9Db1c_4core3stre4findReECsa5QsYiPB8Gl_5image.exit.i
  %.not.i.i = icmp ult i64 %.sroa.4.0.i.i, %3
  br i1 %.not.i.i, label %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.af
  %i.gw = icmp eq i64 %.sroa.4.0.i.i, %3
  br i1 %i.gw, label %bb.ag, label %bb.ai, !prof !19

_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i: ; preds = %bb.af
  %i.gx = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.4.0.i.i
  %i.gy = load i8, ptr %i.gx, align 1, !alias.scope !844, !noundef !5
  %i.gz = icmp sgt i8 %i.gy, -65
  br i1 %i.gz, label %bb.ag, label %bb.ai, !prof !19

bb.ag:                                            ; preds = %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i, %.split.i
  %i.ha = add nuw i64 %.sroa.4.0.i.i, 1           ; 7 uses
  %.not.i18.i = icmp ult i64 %i.ha, %3
  br i1 %.not.i18.i, label %bb.ah, label %.split.i.i

.split.i.i:                                       ; preds = %bb.ag
  %i.hb = icmp eq i64 %i.ha, %3
  br i1 %i.hb, label %bb.ak, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.hc = getelementptr inbounds nuw i8, ptr %2, i64 %i.ha
  %i.hd = load i8, ptr %i.hc, align 1, !alias.scope !845, !noundef !5
  %i.he = icmp sgt i8 %i.hd, -65
  br i1 %i.he, label %bb.ak, label %bb.aj

bb.ai:                                            ; preds = %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i, %.split.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i64 noundef 0, i64 noundef %.sroa.4.0.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #28, !noalias !824
  unreachable

bb.aj:                                            ; preds = %bb.ah, %.split.i.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i64 noundef %i.ha, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #28, !noalias !824
  unreachable

bb.ak:                                            ; preds = %.split.i.i, %bb.ah
  %i.hf = sub nuw i64 %3, %i.ha                   ; 10 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %2, i64 %i.ha ; 7 uses
  %i.hh = tail call { ptr, i64 } @_RINvMNtCsj6eKBz9Db1c_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %.sroa.4.0.i.i) ; 2 uses
  %i.hi = extractvalue { ptr, i64 } %i.hh, 0      ; 9 uses
  %i.hj = extractvalue { ptr, i64 } %i.hh, 1      ; 6 uses
  %.not89 = icmp eq ptr %i.hi, null
  br i1 %.not89, label %.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %i.hj, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.hk = load i64, ptr %i.g, align 8, !range !20, !noundef !5
  %i.hl = trunc nuw i64 %i.hk to i1
  %i.hm = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.hn = load i64, ptr %i.hm, align 8, !range !24, !noundef !5 ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br i1 %i.hl, label %bb.ax, label %bb.ay, !prof !21

.thread:                                          ; preds = %_RINvMNtCsj6eKBz9Db1c_4core3stre4findReECsa5QsYiPB8Gl_5image.exit.thread.i, %_RINvMNtCsj6eKBz9Db1c_4core3stre4findReECsa5QsYiPB8Gl_5image.exit.i, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 0, ptr %i.o, align 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.456.0..sroa_idx, align 8
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 0, ptr %.sroa.557.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.an unwind label %bb.am

bb.am:                                            ; preds = %bb.ao, %.thread
  %i.hp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o) #31
          to label %common.resume unwind label %bb.aw

bb.an:                                            ; preds = %.thread
  %i.hq = load i64, ptr %i.e, align 8, !range !20, !noundef !5
  %i.hr = trunc nuw i64 %i.hq to i1
  %i.hs = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ht = load i64, ptr %i.hs, align 8, !range !24, !noundef !5 ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.hr, label %bb.ao, label %bb.ap, !prof !21

bb.ao:                                            ; preds = %bb.an
  %i.hv = load i64, ptr %i.hu, align 8
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.ht, i64 %i.hv) #32
          to label %bb.av unwind label %bb.am

bb.ap:                                            ; preds = %bb.an
  %i.hw = load ptr, ptr %i.hu, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.hx = icmp ule i64 %3, %i.ht
  tail call void @llvm.assume(i1 %i.hx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.not90 = icmp eq i64 %3, 0
  br i1 %.not90, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %bb.au, %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  %i.hy = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i64 %i.ht, ptr %i.hy, align 8
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %i.hw, ptr %.sroa.471.0..sroa_idx, align 8
  %.sroa.572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store i64 %3, ptr %.sroa.572.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ia = load i64, ptr %i.hz, align 8, !alias.scope !846, !noundef !5 ; 3 uses
  %i.ib = load i64, ptr %1, align 8, !range !13, !alias.scope !846, !noundef !5
  %i.ic = icmp eq i64 %i.ia, %i.ib
  br i1 %i.ic, label %bb.ar, label %.thread124

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringBN_EE8grow_oneCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %.thread124 unwind label %bb.as, !noalias !847

bb.as:                                            ; preds = %bb.ar
  %i.id = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtCs4wP2HXfJTCR_5alloc6string6StringBC_EECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.p) #31
          to label %common.resume unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ie = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

common.resume:                                    ; preds = %bb.bh, %bb.am, %bb.bb, %bb.cr, %bb.as
  %common.resume.op = phi { ptr, i32 } [ %i.hp, %bb.am ], [ %i.id, %bb.as ], [ %i.in, %bb.bb ], [ %i.np, %bb.cr ], [ %i.jb, %bb.bh ]
  resume { ptr, i32 } %common.resume.op

.thread124:                                       ; preds = %bb.ar, %bb.aq
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ig = load ptr, ptr %i.if, align 8, !alias.scope !846, !nonnull !5, !noundef !5
  %i.ih = getelementptr inbounds nuw [48 x i8], ptr %i.ig, i64 %i.ia
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ih, ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 48, i1 false)
  %i.ii = add i64 %i.ia, 1
  store i64 %i.ii, ptr %i.hz, align 8, !alias.scope !846
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %.critedge

bb.au:                                            ; preds = %bb.ap
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hw, ptr nonnull align 1 %2, i64 %3, i1 false)
  br label %bb.aq

bb.av:                                            ; preds = %bb.bd, %bb.ao
  unreachable

bb.aw:                                            ; preds = %bb.cr, %bb.bb, %bb.am
  %i.ij = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.ax:                                            ; preds = %bb.al
  %i.ik = load i64, ptr %i.ho, align 8
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.hn, i64 %i.ik) #32
  unreachable

bb.ay:                                            ; preds = %bb.al
  %i.il = load ptr, ptr %i.ho, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.im = icmp ule i64 %i.hj, %i.hn
  tail call void @llvm.assume(i1 %i.im)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.not91 = icmp eq i64 %i.hj, 0
  br i1 %.not91, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ba, %bb.ay
  store i64 %i.hn, ptr %i.q, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.il, ptr %.sroa.459.0..sroa_idx, align 8
  %.sroa.660.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.hj, ptr %.sroa.660.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %i.hf, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bc unwind label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.il, ptr nonnull align 1 %i.hi, i64 %i.hj, i1 false)
  br label %bb.az

bb.bb:                                            ; preds = %bb.bd, %bb.az
  %i.in = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q) #31
          to label %common.resume unwind label %bb.aw

bb.bc:                                            ; preds = %bb.az
  %i.io = load i64, ptr %i.f, align 8, !range !20, !noundef !5
  %i.ip = trunc nuw i64 %i.io to i1
  %i.iq = getelementptr inbounds nuw i8, ptr %i.f, i64 8
end_hunk_0
