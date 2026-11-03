Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_db-6375deef0079f440.ide_db.4a77f52129cf6f1d-cgu.08?download=true
inline.NumInlined: 1535
inline.NumDeleted: 684
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMNtCs6oosyzwIepl_6ide_db12symbol_indexNtB2_5Query3new:bb.a
.preheader.i.i.i:                                 ; preds = %.noexc2
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %i.s = load i8, ptr %i.r, align 2, !range !7, !alias.scope !2082, !noalias !2080, !noundef !6
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %.loopexit51.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !2082, !noalias !2080, !nonnull !6, !noundef !6 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !2082, !noalias !2080, !noundef !6 ; 5 uses
  %.promoted.i.i.i = load i8, ptr %i.u, align 1, !alias.scope !2082, !noalias !2080
  %.promoted60.i.i.i = load i64, ptr %i.v, align 8, !alias.scope !2082, !noalias !2080 ; 13 uses
  %i.aa = trunc nuw i8 %.promoted.i.i.i to i1     ; 2 uses
  %i.ab = icmp eq i64 %.promoted60.i.i.i, 0
  br i1 %i.ab, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.i
  %.not.i.i.i.peel.i.i = icmp ult i64 %.promoted60.i.i.i, %i.z
  br i1 %.not.i.i.i.peel.i.i, label %bb.b, label %.split.i.i.i.peel.i.i

.split.i.i.i.peel.i.i:                            ; preds = %.lr.ph.i.i
  %i.ac = icmp eq i64 %.promoted60.i.i.i, %i.z
  br i1 %i.ac, label %bb.c, label %.loopexit.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 %.promoted60.i.i.i
  %i.ae = load i8, ptr %i.ad, align 1, !alias.scope !2083, !noalias !2084, !noundef !6
  %i.af = icmp sgt i8 %i.ae, -65
  br i1 %i.af, label %bb.c, label %.loopexit.i.i

bb.c:                                             ; preds = %bb.b, %.split.i.i.i.peel.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 %.promoted60.i.i.i ; 4 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -1
  %i.ai = load i8, ptr %i.ah, align 1, !noalias !2085, !noundef !6 ; 3 uses
  %i.aj = icmp sgt i8 %i.ai, -1
  br i1 %i.aj, label %bb.f, label %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6oosyzwIepl_6ide_db.exit17.i.i.i.peel.i.i

_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6oosyzwIepl_6ide_db.exit17.i.i.i.peel.i.i: ; preds = %bb.c
  %i.ak = icmp ne i64 %.promoted60.i.i.i, 1
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = getelementptr inbounds i8, ptr %i.ag, i64 -2
  %i.am = load i8, ptr %i.al, align 1, !noalias !2085, !noundef !6 ; 3 uses
  %i.an = and i8 %i.am, 31
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = icmp slt i8 %i.am, -64
  br i1 %i.ap, label %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6oosyzwIepl_6ide_db.exit19.i.i.i.peel.i.i, label %bb.e

_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6oosyzwIepl_6ide_db.exit19.i.i.i.peel.i.i: ; preds = %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6oosyzwIepl_6ide_db.exit17.i.i.i.peel.i.i
  %i.aq = icmp ne i64 %.promoted60.i.i.i, 2
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = getelementptr inbounds i8, ptr %i.ag, i64 -3
  %i.as = load i8, ptr %i.ar, align 1, !noalias !2085, !noundef !6 ; 3 uses
  %i.at = and i8 %i.as, 15
  %i.au = zext nneg i8 %i.at to i32
  %i.av = icmp slt i8 %i.as, -64
  br i1 %i.av, label %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6oosyzwIepl_6ide_db.exit21.i.i.i.peel.i.i, label %bb.d

_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6oosyzwIepl_6ide_db.exit21.i.i.i.peel.i.i: ; preds = %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6oosyzwIepl_6ide_db.exit19.i.i.i.peel.i.i
  %i.aw = icmp ne i64 %.promoted60.i.i.i, 3
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = getelementptr inbounds i8, ptr %i.ag, i64 -4
  %i.ay = load i8, ptr %i.ax, align 1, !noalias !2085, !noundef !6
  %i.az = and i8 %i.ay, 7
  %i.ba = zext nneg i8 %i.az to i32
  %i.bb = shl nuw nsw i32 %i.ba, 6
  %i.bc = and i8 %i.as, 63
  %i.bd = zext nneg i8 %i.bc to i32
  %i.be = or disjoint i32 %i.bb, %i.bd
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6oosyzwIepl_6ide_db.exit21.i.i.i.peel.i.i, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6oosyzwIepl_6ide_db.exit19.i.i.i.peel.i.i
  %.sroa.010.1.i.i.i.peel.i.i = phi i32 [ %i.be, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6oosyzwIepl_6ide_db.exit21.i.i.i.peel.i.i ], [ %i.au, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6oosyzwIepl_6ide_db.exit19.i.i.i.peel.i.i ]
  %i.bf = shl nuw nsw i32 %.sroa.010.1.i.i.i.peel.i.i, 6
  %i.bg = and i8 %i.am, 63
  %i.bh = zext nneg i8 %i.bg to i32
  %i.bi = or disjoint i32 %i.bf, %i.bh
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6oosyzwIepl_6ide_db.exit17.i.i.i.peel.i.i
  %.sroa.010.0.i.i.i.peel.i.i = phi i32 [ %i.bi, %bb.d ], [ %i.ao, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6oosyzwIepl_6ide_db.exit17.i.i.i.peel.i.i ]
  %i.bj = shl nuw nsw i32 %.sroa.010.0.i.i.i.peel.i.i, 6
  %i.bk = and i8 %i.ai, 63
  %i.bl = zext nneg i8 %i.bk to i32
  %i.bm = or disjoint i32 %i.bj, %i.bl
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.bn = zext nneg i8 %i.ai to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.4.1.i.ph.i.i.peel.i.i = phi i32 [ %i.bn, %bb.f ], [ %i.bm, %bb.e ] ; 4 uses
  %i.bo = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.peel.i.i, 1114112
  tail call void @llvm.assume(i1 %i.bo)
  br i1 %i.aa, label %.loopexit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bp = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.peel.i.i, 128
  br i1 %i.bp, label %_RNvXsw_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.i.peel.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bq = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.peel.i.i, 2048
  br i1 %i.bq, label %_RNvXsw_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.i.peel.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.br = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.peel.i.i, 65536
  %..i.i.peel.i.i = select i1 %i.br, i64 -3, i64 -4
  br label %_RNvXsw_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.i.peel.i.i

_RNvXsw_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.i.peel.i.i: ; preds = %bb.j, %bb.i, %bb.h
  %.sroa.01.0.neg.i.i.peel.i.i = phi i64 [ -2, %bb.i ], [ %..i.i.peel.i.i, %bb.j ], [ -1, %bb.h ]
  %i.bs = add i64 %.sroa.01.0.neg.i.i.peel.i.i, %.promoted60.i.i.i ; 18 uses
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %.loopexit.i, label %.peel.next.i.i

bb.k:                                             ; preds = %.noexc2
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !2081, !noalias !2080, !noundef !6
  %i.bw = icmp eq i64 %i.bv, -1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.by = load ptr, ptr %i.bx, align 8, !alias.scope !2081, !noalias !2080, !nonnull !6, !noundef !6 ; 10 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !2081, !noalias !2080, !noundef !6 ; 11 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.cc = load ptr, ptr %i.cb, align 8, !alias.scope !2081, !noalias !2080, !nonnull !6, !noundef !6 ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.ce = load i64, ptr %i.cd, align 8, !alias.scope !2081, !noalias !2080, !noundef !6 ; 14 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  br i1 %i.bw, label %bb.w, label %bb.n

.peel.next.i.i:                                   ; preds = %_RNvXsw_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.i.peel.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2086)
  %.not.i.i.i.i.i = icmp ult i64 %i.bs, %i.z
  br i1 %.not.i.i.i.i.i, label %bb.l, label %.split.i.i.i.i.i

.split.i.i.i.i.i:                                 ; preds = %.peel.next.i.i
  %i.cg = icmp eq i64 %i.bs, %i.z
  br i1 %i.cg, label %bb.m, label %.loopexit.i.i

bb.l:                                             ; preds = %.peel.next.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bs
  %i.ci = load i8, ptr %i.ch, align 1, !alias.scope !2083, !noalias !2087, !noundef !6
  %i.cj = icmp sgt i8 %i.ci, -65
  br i1 %i.cj, label %bb.m, label %.loopexit.i.i

bb.m:                                             ; preds = %bb.l, %.split.i.i.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bs ; 3 uses
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 -1
  %i.cm = load i8, ptr %i.cl, align 1, !noalias !2088, !noundef !6
  %i.cn = icmp sgt i8 %i.cm, -1
  br i1 %i.cn, label %.loopexit.i, label %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6oosyzwIepl_6ide_db.exit17.i.i.i.i.i

_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6oosyzwIepl_6ide_db.exit17.i.i.i.i.i: ; preds = %bb.m
  %i.co = icmp ne i64 %i.bs, 1
  tail call void @llvm.assume(i1 %i.co)
  %i.cp = getelementptr inbounds i8, ptr %i.ck, i64 -2
  %i.cq = load i8, ptr %i.cp, align 1, !noalias !2088, !noundef !6
  %i.cr = icmp slt i8 %i.cq, -64
  br i1 %i.cr, label %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6oosyzwIepl_6ide_db.exit19.i.i.i.i.i, label %.loopexit.i

_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6oosyzwIepl_6ide_db.exit19.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6oosyzwIepl_6ide_db.exit17.i.i.i.i.i
  %i.cs = icmp ne i64 %i.bs, 2
  tail call void @llvm.assume(i1 %i.cs)
  %i.ct = getelementptr inbounds i8, ptr %i.ck, i64 -3
  %i.cu = load i8, ptr %i.ct, align 1, !noalias !2088, !noundef !6
  %i.cv = icmp slt i8 %i.cu, -64
  br i1 %i.cv, label %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6oosyzwIepl_6ide_db.exit21.i.i.i.i.i, label %.loopexit.i

_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6oosyzwIepl_6ide_db.exit21.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6oosyzwIepl_6ide_db.exit19.i.i.i.i.i
  %i.cw = icmp ne i64 %i.bs, 3
  tail call void @llvm.assume(i1 %i.cw)
  br label %.loopexit.i

.loopexit.i.i:                                    ; preds = %bb.l, %.split.i.i.i.i.i, %bb.b, %.split.i.i.i.peel.i.i
  %.lcssa87.i.i = phi i64 [ %.promoted60.i.i.i, %.split.i.i.i.peel.i.i ], [ %.promoted60.i.i.i, %bb.b ], [ %i.bs, %.split.i.i.i.i.i ], [ %i.bs, %bb.l ]
  invoke void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.x, i64 noundef %i.z, i64 noundef 0, i64 noundef %.lcssa87.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @199) #45
          to label %.noexc3 unwind label %bb.ap

.noexc3:                                          ; preds = %.loopexit.i.i
  unreachable

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.i
  br i1 %i.aa, label %.loopexit.i, label %.loopexit51.i

bb.n:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2089)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2090)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2091)
  %.promoted.i.i.i.i = load i64, ptr %i.cf, align 8, !alias.scope !2092, !noalias !2080 ; 2 uses
  %i.cx = sub i64 %.promoted.i.i.i.i, %i.ce       ; 2 uses
  %i.cy = icmp ult i64 %i.cx, %i.ca
  br i1 %i.cy, label %.lr.ph.i1.i.i.i, label %.loopexit51.i

.lr.ph.i1.i.i.i:                                  ; preds = %bb.n
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.da = load i64, ptr %i.cz, align 8, !alias.scope !2092, !noalias !2080, !noundef !6
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !2092, !noalias !2080
  %.fr80.i.i.i.i = freeze i64 %i.dc               ; 6 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.df = load i64, ptr %i.de, align 8, !alias.scope !2092, !noalias !2080 ; 2 uses
  %umax71.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %.fr80.i.i.i.i, i64 range(i64 0, -9223372036854775808) %i.ce) ; 2 uses
  %.promoted36.i.i.i.i = load i64, ptr %i.dd, align 8, !alias.scope !2092, !noalias !2080
  br label %.lr.ph.split.i.i.i.i

.lr.ph.split.i.i.i.i:                             ; preds = %bb.p, %.lr.ph.i1.i.i.i
  %.sink99.i.i42.i.i = phi i64 [ %.sink99.i.i.i.i, %bb.p ], [ %.promoted.i.i.i.i, %.lr.ph.i1.i.i.i ] ; 4 uses
  %i.dg = phi i64 [ %.sink98.i.i.i.i, %bb.p ], [ %.promoted36.i.i.i.i, %.lr.ph.i1.i.i.i ] ; 3 uses
  %i.dh = phi i64 [ %i.do, %bb.p ], [ %i.cx, %.lr.ph.i1.i.i.i ] ; 6 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !alias.scope !2090, !noalias !2093, !noundef !6
  %i.dk = and i8 %i.dj, 63
  %i.dl = zext nneg i8 %i.dk to i64
  %i.dm = shl nuw i64 1, %i.dl
  %i.dn = and i64 %i.dm, %i.da
  %.not.i.i.i.i = icmp eq i64 %i.dn, 0
  br i1 %.not.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.split.i.i.i.i
  %..i.i2.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.dg, i64 %.fr80.i.i.i.i) ; 2 uses
  %.not19.i.i.i.i116 = icmp eq i64 %..i.i2.i.i.i, 0
  br i1 %.not19.i.i.i.i116, label %.preheader46.i.i.i.i, label %.lr.ph

bb.p:                                             ; preds = %bb.v, %bb.t, %.lr.ph.split.i.i.i.i
  %.sink99.i.i.i.i = phi i64 [ %i.eg, %bb.v ], [ %i.dz, %bb.t ], [ %i.dh, %.lr.ph.split.i.i.i.i ] ; 2 uses
  %.sink98.i.i.i.i = phi i64 [ %i.ce, %bb.v ], [ %i.df, %bb.t ], [ %i.ce, %.lr.ph.split.i.i.i.i ]
  %i.do = sub i64 %.sink99.i.i.i.i, %i.ce         ; 2 uses
  %i.dp = icmp ult i64 %i.do, %i.ca
  br i1 %i.dp, label %.lr.ph.split.i.i.i.i, label %.loopexit51.i

bb.q:                                             ; preds = %bb.u
  %.not19.i.i.i.i = icmp eq i64 %i.dq, 0
  br i1 %.not19.i.i.i.i, label %.preheader46.i.i.i.i, label %.lr.ph

.preheader46.i.i.i.i:                             ; preds = %bb.q, %bb.o
  %umax.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.dg, i64 %.fr80.i.i.i.i)
  %exitcond.not.i.i.i.i118.not = icmp ult i64 %.fr80.i.i.i.i, %i.dg
  br i1 %exitcond.not.i.i.i.i118.not, label %.lr.ph120, label %.loopexit.i

.lr.ph:                                           ; preds = %bb.o, %bb.q
  %.sroa.2.0.i.i.i.i117 = phi i64 [ %i.dq, %bb.q ], [ %..i.i2.i.i.i, %bb.o ]
  %i.dq = add i64 %.sroa.2.0.i.i.i.i117, -1       ; 7 uses
  %i.dr = icmp ult i64 %i.dq, %i.ce
  br i1 %i.dr, label %bb.u, label %.preheader45.i.preheader.i.i.i.invoke

bb.r:                                             ; preds = %bb.s
  %i.ds = add nuw i64 %.sroa.09.0.i.i.i.i119, 1   ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ds, %umax.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.i, label %.lr.ph120

.lr.ph120:                                        ; preds = %.preheader46.i.i.i.i, %bb.r
  %.sroa.09.0.i.i.i.i119 = phi i64 [ %i.ds, %bb.r ], [ %.fr80.i.i.i.i, %.preheader46.i.i.i.i ] ; 4 uses
  %exitcond70.not.i.i.i.i = icmp eq i64 %.sroa.09.0.i.i.i.i119, %umax71.i.i.i.i
  br i1 %exitcond70.not.i.i.i.i, label %.preheader45.i.preheader.i.i.i.invoke, label %bb.s

bb.s:                                             ; preds = %.lr.ph120
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.sroa.09.0.i.i.i.i119
  %i.du = load i8, ptr %i.dt, align 1, !alias.scope !2091, !noalias !2093, !noundef !6
  %i.dv = add i64 %.sroa.09.0.i.i.i.i119, %i.dh   ; 2 uses
  %i.dw = icmp ult i64 %i.dv, %i.ca
  tail call void @llvm.assume(i1 %i.dw)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.dv
  %i.dy = load i8, ptr %i.dx, align 1, !alias.scope !2090, !noalias !2093, !noundef !6
  %.not20.i.i.i.i = icmp eq i8 %i.du, %i.dy
  br i1 %.not20.i.i.i.i, label %bb.r, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dz = sub i64 %.sink99.i.i42.i.i, %i.df
  br label %bb.p

bb.u:                                             ; preds = %.lr.ph
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.dq
  %i.eb = load i8, ptr %i.ea, align 1, !alias.scope !2091, !noalias !2093, !noundef !6
  %i.ec = add nuw i64 %i.dq, %i.dh                ; 2 uses
  %i.ed = icmp ult i64 %i.ec, %i.ca
  tail call void @llvm.assume(i1 %i.ed)
  %i.ee = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.ec
  %i.ef = load i8, ptr %i.ee, align 1, !alias.scope !2090, !noalias !2093, !noundef !6
  %.not21.i.i.i.i = icmp eq i8 %i.eb, %i.ef
  br i1 %.not21.i.i.i.i, label %bb.q, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.neg.i.i.i.i = sub i64 %.sink99.i.i42.i.i, %.fr80.i.i.i.i
  %i.eg = add i64 %.neg.i.i.i.i, %i.dq
  br label %bb.p

bb.w:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2094)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2095)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2096)
  %.promoted.i3.i.i.i = load i64, ptr %i.cf, align 8, !alias.scope !2097, !noalias !2080 ; 3 uses
  %i.eh = sub i64 %.promoted.i3.i.i.i, %i.ce      ; 5 uses
  %i.ei = icmp ult i64 %i.eh, %i.ca
  br i1 %i.ei, label %.lr.ph.i6.i.i.i, label %.loopexit51.i

.lr.ph.i6.i.i.i:                                  ; preds = %bb.w
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ek = load i64, ptr %i.ej, align 8, !alias.scope !2097, !noalias !2080, !noundef !6 ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.em = load i64, ptr %i.el, align 8, !alias.scope !2097, !noalias !2080
  %.fr74.i.i.i = freeze i64 %i.em                 ; 8 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.eo = load i64, ptr %i.en, align 8, !alias.scope !2097, !noalias !2080 ; 2 uses
  %umax71.i7.i.i.i = tail call i64 @llvm.umax.i64(i64 %.fr74.i.i.i, i64 range(i64 0, -9223372036854775808) %i.ce) ; 3 uses
  %i.ep = add i64 %.fr74.i.i.i, -1                ; 3 uses
  %.first_iter.i.i.i.i = icmp ult i64 %i.ep, %i.ce
  br i1 %.first_iter.i.i.i.i, label %.lr.ph.split.us.i.us.i.i.i.preheader, label %.lr.ph.i6.split.i.i.i

.lr.ph.split.us.i.us.i.i.i.preheader:             ; preds = %.lr.ph.i6.i.i.i
  %.not19.us.i.us.us.i.i.i131 = icmp eq i64 %.fr74.i.i.i, 0
  %exitcond72.not.i.us.i.i.i134.not = icmp ult i64 %.fr74.i.i.i, %i.ce
  br label %.lr.ph.split.us.i.us.i.i.i

.lr.ph.split.us.i.us.i.i.i:                       ; preds = %.lr.ph.split.us.i.us.i.i.i.preheader, %bb.y
  %.sink.i9.us.i56.i.i = phi i64 [ %.sink.i9.us.i.i.i, %bb.y ], [ %.promoted.i3.i.i.i, %.lr.ph.split.us.i.us.i.i.i.preheader ] ; 4 uses
  %i.eq = phi i64 [ %i.fn, %bb.y ], [ %i.eh, %.lr.ph.split.us.i.us.i.i.i.preheader ] ; 6 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !alias.scope !2095, !noalias !2093, !noundef !6
  %i.et = and i8 %i.es, 63
  %i.eu = zext nneg i8 %i.et to i64
  %i.ev = shl nuw i64 1, %i.eu
  %i.ew = and i64 %i.ev, %i.ek
  %.not.us.i.us.i.i.i = icmp eq i64 %i.ew, 0
  br i1 %.not.us.i.us.i.i.i, label %bb.y, label %.preheader45.i.us.us.i.i.i.preheader

.preheader45.i.us.us.i.i.i.preheader:             ; preds = %.lr.ph.split.us.i.us.i.i.i
  br i1 %.not19.us.i.us.us.i.i.i131, label %.preheader.i.us.i.i.i.preheader, label %.lr.ph133

.preheader45.i.us.us.i.i.i:                       ; preds = %.lr.ph133
  %.not19.us.i.us.us.i.i.i = icmp eq i64 %i.ex, 0
  br i1 %.not19.us.i.us.us.i.i.i, label %.preheader.i.us.i.i.i.preheader, label %.lr.ph133

.preheader.i.us.i.i.i.preheader:                  ; preds = %.preheader45.i.us.us.i.i.i, %.preheader45.i.us.us.i.i.i.preheader
  br i1 %exitcond72.not.i.us.i.i.i134.not, label %.lr.ph136, label %.loopexit.i

.lr.ph133:                                        ; preds = %.preheader45.i.us.us.i.i.i.preheader, %.preheader45.i.us.us.i.i.i
  %.sroa.2.0.us.i.us.us.i.i.i132 = phi i64 [ %i.ex, %.preheader45.i.us.us.i.i.i ], [ %.fr74.i.i.i, %.preheader45.i.us.us.i.i.i.preheader ]
  %i.ex = add i64 %.sroa.2.0.us.i.us.us.i.i.i132, -1 ; 5 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !alias.scope !2096, !noalias !2093, !noundef !6
  %i.fa = add i64 %i.ex, %i.eq                    ; 2 uses
  %i.fb = icmp ult i64 %i.fa, %i.ca
  tail call void @llvm.assume(i1 %i.fb)
  %i.fc = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.fa
  %i.fd = load i8, ptr %i.fc, align 1, !alias.scope !2095, !noalias !2093, !noundef !6
  %.not21.us.i.us.us.i.i.i = icmp eq i8 %i.ez, %i.fd
  br i1 %.not21.us.i.us.us.i.i.i, label %.preheader45.i.us.us.i.i.i, label %.split.us.us.i.i.i

.split.us.us.i.i.i:                               ; preds = %.lr.ph133
  %.neg.us.i.us.i.i.i = sub i64 %.sink.i9.us.i56.i.i, %.fr74.i.i.i
  %i.fe = add i64 %.neg.us.i.us.i.i.i, %i.ex
  br label %bb.y

.preheader.i.us.i.i.i:                            ; preds = %.lr.ph136
  %i.ff = add i64 %.sroa.09.0.us.i.us.i.i.i135, 1 ; 2 uses
  %exitcond72.not.i.us.i.i.i = icmp eq i64 %i.ff, %umax71.i7.i.i.i
  br i1 %exitcond72.not.i.us.i.i.i, label %.loopexit.i, label %.lr.ph136

.lr.ph136:                                        ; preds = %.preheader.i.us.i.i.i.preheader, %.preheader.i.us.i.i.i
  %.sroa.09.0.us.i.us.i.i.i135 = phi i64 [ %i.ff, %.preheader.i.us.i.i.i ], [ %.fr74.i.i.i, %.preheader.i.us.i.i.i.preheader ] ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.sroa.09.0.us.i.us.i.i.i135
  %i.fh = load i8, ptr %i.fg, align 1, !alias.scope !2096, !noalias !2093, !noundef !6
  %i.fi = add i64 %.sroa.09.0.us.i.us.i.i.i135, %i.eq ; 2 uses
  %i.fj = icmp ult i64 %i.fi, %i.ca
  tail call void @llvm.assume(i1 %i.fj)
  %i.fk = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.fi
  %i.fl = load i8, ptr %i.fk, align 1, !alias.scope !2095, !noalias !2093, !noundef !6
  %.not20.us.i.us.i.i.i = icmp eq i8 %i.fh, %i.fl
  br i1 %.not20.us.i.us.i.i.i, label %.preheader.i.us.i.i.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph136
  %i.fm = sub i64 %.sink.i9.us.i56.i.i, %i.eo
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.split.us.us.i.i.i, %.lr.ph.split.us.i.us.i.i.i
  %.sink.i9.us.i.i.i = phi i64 [ %i.fe, %.split.us.us.i.i.i ], [ %i.fm, %bb.x ], [ %i.eq, %.lr.ph.split.us.i.us.i.i.i ] ; 2 uses
  %i.fn = sub i64 %.sink.i9.us.i.i.i, %i.ce       ; 2 uses
  %i.fo = icmp ult i64 %i.fn, %i.ca
  br i1 %i.fo, label %.lr.ph.split.us.i.us.i.i.i, label %.loopexit51.i

.lr.ph.i6.split.i.i.i:                            ; preds = %.lr.ph.i6.i.i.i
  %.not19.us.i.i.i.i = icmp eq i64 %.fr74.i.i.i, 0
  br i1 %.not19.us.i.i.i.i, label %.lr.ph.split.us.i.us62.i.i.i.preheader, label %.lr.ph.split.us.i.i.preheader.i.i

.lr.ph.split.us.i.us62.i.i.i.preheader:           ; preds = %.lr.ph.i6.split.i.i.i
  %exitcond72.not.i.us67.i.i.i124 = icmp eq i64 %umax71.i7.i.i.i, 0
  br label %.lr.ph.split.us.i.us62.i.i.i

.lr.ph.split.us.i.i.preheader.i.i:                ; preds = %.lr.ph.i6.split.i.i.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.eh
  %i.fq = load i8, ptr %i.fp, align 1, !alias.scope !2095, !noalias !2093, !noundef !6
  %i.fr = and i8 %i.fq, 63
  %i.fs = zext nneg i8 %i.fr to i64
  %i.ft = shl nuw i64 1, %i.fs
  %i.fu = and i64 %i.ft, %i.ek
  %.not.us.i.i52.i.i = icmp eq i64 %i.fu, 0
  br i1 %.not.us.i.i52.i.i, label %.lr.ph53.i.i, label %.preheader45.i.preheader.i.i.i.invoke

.lr.ph.split.us.i.us62.i.i.i:                     ; preds = %.lr.ph.split.us.i.us62.i.i.i.preheader, %bb.aa
  %i.fv = phi i64 [ %i.gl, %bb.aa ], [ %i.eh, %.lr.ph.split.us.i.us62.i.i.i.preheader ] ; 5 uses
  %i.fw = phi i64 [ %.sink.i9.us69.i.i.i, %bb.aa ], [ %.promoted.i3.i.i.i, %.lr.ph.split.us.i.us62.i.i.i.preheader ] ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.fv
  %i.fy = load i8, ptr %i.fx, align 1, !alias.scope !2095, !noalias !2093, !noundef !6
  %i.fz = and i8 %i.fy, 63
  %i.ga = zext nneg i8 %i.fz to i64
  %i.gb = shl nuw i64 1, %i.ga
  %i.gc = and i64 %i.gb, %i.ek
  %.not.us.i.us63.i.i.i = icmp eq i64 %i.gc, 0
  br i1 %.not.us.i.us63.i.i.i, label %bb.aa, label %.preheader.i.us65.i.i.i.preheader

.preheader.i.us65.i.i.i.preheader:                ; preds = %.lr.ph.split.us.i.us62.i.i.i
  br i1 %exitcond72.not.i.us67.i.i.i124, label %.loopexit.i, label %.lr.ph126

.preheader.i.us65.i.i.i:                          ; preds = %.lr.ph126
  %i.gd = add nuw i64 %.sroa.09.0.us.i.us66.i.i.i125, 1 ; 2 uses
  %exitcond72.not.i.us67.i.i.i = icmp eq i64 %i.gd, %umax71.i7.i.i.i
  br i1 %exitcond72.not.i.us67.i.i.i, label %.loopexit.i, label %.lr.ph126

.lr.ph126:                                        ; preds = %.preheader.i.us65.i.i.i.preheader, %.preheader.i.us65.i.i.i
  %.sroa.09.0.us.i.us66.i.i.i125 = phi i64 [ %i.gd, %.preheader.i.us65.i.i.i ], [ 0, %.preheader.i.us65.i.i.i.preheader ] ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.sroa.09.0.us.i.us66.i.i.i125
  %i.gf = load i8, ptr %i.ge, align 1, !alias.scope !2096, !noalias !2093, !noundef !6
  %i.gg = add nuw i64 %.sroa.09.0.us.i.us66.i.i.i125, %i.fv ; 2 uses
  %i.gh = icmp ult i64 %i.gg, %i.ca
  tail call void @llvm.assume(i1 %i.gh)
  %i.gi = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.gg
  %i.gj = load i8, ptr %i.gi, align 1, !alias.scope !2095, !noalias !2093, !noundef !6
  %.not20.us.i.us68.i.i.i = icmp eq i8 %i.gf, %i.gj
  br i1 %.not20.us.i.us68.i.i.i, label %.preheader.i.us65.i.i.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph126
  %i.gk = sub i64 %i.fw, %i.eo
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph.split.us.i.us62.i.i.i
  %.sink.i9.us69.i.i.i = phi i64 [ %i.fv, %.lr.ph.split.us.i.us62.i.i.i ], [ %i.gk, %bb.z ] ; 2 uses
  %i.gl = sub i64 %.sink.i9.us69.i.i.i, %i.ce     ; 2 uses
  %i.gm = icmp ult i64 %i.gl, %i.ca
  br i1 %i.gm, label %.lr.ph.split.us.i.us62.i.i.i, label %.loopexit51.i

.lr.ph.split.us.i.i.i.i:                          ; preds = %.lr.ph53.i.i
  %i.gn = getelementptr inbounds nuw i8, ptr %i.by, i64 %3
  %i.go = load i8, ptr %i.gn, align 1, !alias.scope !2095, !noalias !2093, !noundef !6
  %i.gp = and i8 %i.go, 63
  %i.gq = zext nneg i8 %i.gp to i64
  %i.gr = shl nuw i64 1, %i.gq
  %i.gs = and i64 %i.gr, %i.ek
  %.not.us.i.i.i.i = icmp eq i64 %i.gs, 0
  br i1 %.not.us.i.i.i.i, label %.lr.ph53.i.i, label %.preheader45.i.preheader.i.i.i.invoke

.lr.ph53.i.i:                                     ; preds = %.lr.ph.split.us.i.i.preheader.i.i, %.lr.ph.split.us.i.i.i.i
  %2 = phi i64 [ %3, %.lr.ph.split.us.i.i.i.i ], [ %i.eh, %.lr.ph.split.us.i.i.preheader.i.i ]
  %3 = sub i64 %2, %i.ce                          ; 3 uses
  %4 = icmp ult i64 %3, %i.ca
  br i1 %4, label %.lr.ph.split.us.i.i.i.i, label %.loopexit51.i

.preheader45.i.preheader.i.i.i.invoke:            ; preds = %.lr.ph, %.lr.ph120, %.lr.ph.split.us.i.i.i.i, %.lr.ph.split.us.i.i.preheader.i.i
  %i.gt = phi i64 [ %i.ep, %.lr.ph.split.us.i.i.i.i ], [ %umax71.i.i.i.i, %.lr.ph120 ], [ %i.ep, %.lr.ph.split.us.i.i.preheader.i.i ], [ %i.dq, %.lr.ph ]
  %i.gu = phi ptr [ @28, %.lr.ph.split.us.i.i.i.i ], [ @27, %.lr.ph120 ], [ @28, %.lr.ph.split.us.i.i.preheader.i.i ], [ @28, %.lr.ph ]
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.gt, i64 noundef range(i64 0, -9223372036854775808) %i.ce, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gu) #45
          to label %.preheader45.i.preheader.i.i.i.cont unwind label %bb.ap

.preheader45.i.preheader.i.i.i.cont:              ; preds = %.preheader45.i.preheader.i.i.i.invoke
  unreachable

.loopexit.i:                                      ; preds = %.preheader46.i.i.i.i, %bb.r, %.preheader.i.us65.i.i.i.preheader, %.preheader.i.us65.i.i.i, %.preheader.i.us.i.i.i.preheader, %.preheader.i.us.i.i.i, %bb.m, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6oosyzwIepl_6ide_db.exit17.i.i.i.i.i, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6oosyzwIepl_6ide_db.exit19.i.i.i.i.i, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6oosyzwIepl_6ide_db.exit21.i.i.i.i.i, %._crit_edge.i.i, %_RNvXsw_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.i.peel.i.i, %bb.g
  %.sroa.9.0.ph.i.i = phi i64 [ 0, %._crit_edge.i.i ], [ 0, %_RNvXsw_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.i.peel.i.i ], [ %.sink.i9.us.i56.i.i, %.preheader.i.us.i.i.i.preheader ], [ %.sink99.i.i42.i.i, %bb.r ], [ %.promoted60.i.i.i, %bb.g ], [ %i.bs, %bb.m ], [ %i.bs, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6oosyzwIepl_6ide_db.exit21.i.i.i.i.i ], [ %i.bs, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6oosyzwIepl_6ide_db.exit19.i.i.i.i.i ], [ %i.bs, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6oosyzwIepl_6ide_db.exit17.i.i.i.i.i ], [ %i.fw, %.preheader.i.us65.i.i.i.preheader ], [ %.sink.i9.us.i56.i.i, %.preheader.i.us.i.i.i ], [ %i.fw, %.preheader.i.us65.i.i.i ], [ %.sink99.i.i42.i.i, %.preheader46.i.i.i.i ] ; 3 uses
  %.sroa.5.0.ph.i.i = phi i64 [ 0, %._crit_edge.i.i ], [ 0, %_RNvXsw_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.i.peel.i.i ], [ %i.eq, %.preheader.i.us.i.i.i.preheader ], [ %i.dh, %bb.r ], [ %.promoted60.i.i.i, %bb.g ], [ %i.bs, %bb.m ], [ %i.bs, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6oosyzwIepl_6ide_db.exit21.i.i.i.i.i ], [ %i.bs, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6oosyzwIepl_6ide_db.exit19.i.i.i.i.i ], [ %i.bs, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6oosyzwIepl_6ide_db.exit17.i.i.i.i.i ], [ %i.fv, %.preheader.i.us65.i.i.i.preheader ], [ %i.eq, %.preheader.i.us.i.i.i ], [ %i.fv, %.preheader.i.us65.i.i.i ], [ %i.dh, %.preheader46.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2080
  %i.gv = sub nuw i64 %.sroa.7.0.i, %.sroa.9.0.ph.i.i ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.sroa.9.0.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2098
  invoke void @_RNvMsu_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.5.0.ph.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 2)
          to label %.noexc7 unwind label %bb.ap

.noexc7:                                          ; preds = %.loopexit.i
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  store i64 0, ptr %.sroa.426.0..sroa_idx.i, align 8, !noalias !2098
  %.sroa.527.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  store i64 %.sroa.5.0.ph.i.i, ptr %.sroa.527.0..sroa_idx.i, align 8, !noalias !2098
  %.sroa.628.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  store i8 1, ptr %.sroa.628.0..sroa_idx.i, align 8, !noalias !2098
  %.sroa.729.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 121
  store i8 0, ptr %.sroa.729.0..sroa_idx.i, align 1, !noalias !2098
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2098
  invoke void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB1W_6filter6FilterINtNtNtB20_3str4iter5SplitReENCNvMNtCs6oosyzwIepl_6ide_db12symbol_indexNtB3A_5Query16parse_path_query0ENvYeNtNtB6_6borrow7ToOwned8to_ownedEE9from_iterB3C_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(128) %i.e)
          to label %.noexc8 unwind label %bb.ap

.noexc8:                                          ; preds = %.noexc7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2098
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2098
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.gv, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ac unwind label %bb.ab, !noalias !2099

.loopexit51.i:                                    ; preds = %bb.p, %.lr.ph53.i.i, %bb.aa, %bb.y, %bb.w, %bb.n, %._crit_edge.i.i, %.preheader.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2080
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2098
  store i64 0, ptr %i.f, align 8, !noalias !2098
  %i.gx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.gx, align 8, !noalias !2098
  %i.gy = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 0, ptr %i.gy, align 8, !noalias !2098
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2098
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %.sroa.7.0.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ak unwind label %bb.aj, !noalias !2099

bb.ab:                                            ; preds = %bb.ad, %.noexc8
  %i.gz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #41
          to label %.body unwind label %bb.ai, !noalias !2099

bb.ac:                                            ; preds = %.noexc8
  %i.ha = load i64, ptr %i.b, align 8, !range !31, !noalias !2098, !noundef !6
  %i.hb = trunc nuw i64 %i.ha to i1
  %i.hc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.hd = load i64, ptr %i.hc, align 8, !range !39, !noalias !2098, !noundef !6 ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.hb, label %bb.ad, label %bb.ae, !prof !13

bb.ad:                                            ; preds = %bb.ac
  %i.hf = load i64, ptr %i.he, align 8, !noalias !2098
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.hd, i64 %i.hf) #42
          to label %bb.ah unwind label %bb.ab, !noalias !2099

bb.ae:                                            ; preds = %bb.ac
  %i.hg = load ptr, ptr %i.he, align 8, !noalias !2098, !nonnull !6, !noundef !6 ; 2 uses
  %i.hh = icmp ule i64 %i.gv, %i.hd
  call void @llvm.assume(i1 %i.hh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2098
  %.not42.i = icmp eq i64 %.sroa.7.0.i, %.sroa.9.0.ph.i.i
  br i1 %.not42.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ag, %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !2100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2098
  br label %_RNvMNtCs6oosyzwIepl_6ide_db12symbol_indexNtB2_5Query16parse_path_query.exit

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hg, ptr nonnull readonly align 1 %i.gw, i64 %i.gv, i1 false), !noalias !2099
  br label %bb.af

bb.ah:                                            ; preds = %bb.al, %bb.ad
  unreachable

bb.ai:                                            ; preds = %bb.aj, %bb.ab
  %i.hi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #43, !noalias !2099
  unreachable

bb.aj:                                            ; preds = %bb.al, %.loopexit51.i
  %i.hj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #41
          to label %.body unwind label %bb.ai, !noalias !2099

bb.ak:                                            ; preds = %.loopexit51.i
  %i.hk = load i64, ptr %i.c, align 8, !range !31, !noalias !2098, !noundef !6
  %i.hl = trunc nuw i64 %i.hk to i1
  %i.hm = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.hn = load i64, ptr %i.hm, align 8, !range !39, !noalias !2098, !noundef !6 ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.hl, label %bb.al, label %bb.am, !prof !13

bb.al:                                            ; preds = %bb.ak
  %i.hp = load i64, ptr %i.ho, align 8, !noalias !2098
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.hn, i64 %i.hp) #42
          to label %bb.ah unwind label %bb.aj, !noalias !2099

bb.am:                                            ; preds = %bb.ak
  %i.hq = load ptr, ptr %i.ho, align 8, !noalias !2098, !nonnull !6, !noundef !6 ; 2 uses
  %i.hr = icmp ule i64 %.sroa.7.0.i, %i.hn
  tail call void @llvm.assume(i1 %i.hr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2098
  %.not41.i = icmp eq i64 %.sroa.7.0.i, 0
  br i1 %.not41.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.ao, %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !2100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2098
  br label %_RNvMNtCs6oosyzwIepl_6ide_db12symbol_indexNtB2_5Query16parse_path_query.exit

bb.ao:                                            ; preds = %bb.am
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hq, ptr nonnull readonly align 1 %.sroa.0.0.i, i64 %.sroa.7.0.i, i1 false), !noalias !2099
  br label %bb.an

.body:                                            ; preds = %bb.ap, %bb.aj, %bb.ab, %bb.av
  %.pn = phi { ptr, i32 } [ %i.ht, %bb.av ], [ %i.hs, %bb.ap ], [ %i.gz, %bb.ab ], [ %i.hj, %bb.aj ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #41
          to label %common.resume unwind label %bb.au

bb.ap:                                            ; preds = %.preheader45.i.preheader.i.i.i.invoke, %.noexc7, %.loopexit.i, %.loopexit.i.i, %.noexc, %bb.a
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RNvMNtCs6oosyzwIepl_6ide_db12symbol_indexNtB2_5Query16parse_path_query.exit: ; preds = %bb.an, %bb.af
  %.sroa.10.0 = phi i64 [ %.sroa.7.0.i, %bb.an ], [ %i.gv, %bb.af ] ; 2 uses
  %.sroa.8.0 = phi ptr [ %i.hq, %bb.an ], [ %i.hg, %bb.af ] ; 2 uses
  %.sroa.5.0 = phi i64 [ %i.hn, %bb.an ], [ %i.hd, %bb.af ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %.sroa.5.0, ptr %i.h, align 8
  %.sroa.8.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.sroa.8.0, ptr %.sroa.8.24..sroa_idx, align 8
  %.sroa.10.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sroa.10.0, ptr %.sroa.10.24..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvMs3_NtCsbSS6DM8SDEO_5alloc3stre12to_lowercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.8.0, i64 noundef %.sroa.10.0)
          to label %bb.ar unwind label %bb.aq

bb.aq:                                            ; preds = %_RNvMNtCs6oosyzwIepl_6ide_db12symbol_indexNtB2_5Query16parse_path_query.exit
  %i.ht = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #41
          to label %bb.av unwind label %bb.au

bb.ar:                                            ; preds = %_RNvMNtCs6oosyzwIepl_6ide_db12symbol_indexNtB2_5Query16parse_path_query.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hu, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hv, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %.sroa.037.0.i, ptr %i.hw, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 77
  store i8 1, ptr %i.hx, align 1
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 78
  store i8 0, ptr %i.hy, align 2
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i32 0, ptr %i.hz, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6oosyzwIepl_6ide_db.exit unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ia = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ib = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #43
  unreachable

common.resume:                                    ; preds = %.body, %bb.as
  %common.resume.op = phi { ptr, i32 } [ %i.ia, %bb.as ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6oosyzwIepl_6ide_db.exit: ; preds = %bb.ar
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret void

bb.au:                                            ; preds = %bb.av, %bb.aq, %.body
  %i.ic = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #43
  unreachable
end_hunk_0
