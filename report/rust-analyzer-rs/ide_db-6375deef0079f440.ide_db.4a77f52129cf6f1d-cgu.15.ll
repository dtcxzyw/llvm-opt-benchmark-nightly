Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_db-6375deef0079f440.ide_db.4a77f52129cf6f1d-cgu.15?download=true
inline.NumInlined: 1645
inline.NumDeleted: 763
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_RNvNtCs6oosyzwIepl_6ide_db8rust_doc13is_rust_fence:bb.a
  %i.z = zext nneg i8 %i.y to i32                 ; 2 uses
  %i.aa = or disjoint i32 %i.x, %i.z
  %i.ab = icmp samesign ugt i8 %i.q, -33
  br i1 %i.ab, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit14.i.i.i.i.i.i.i.i, label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj3_ENtB5_8Searcher4nextCs6oosyzwIepl_6ide_db.exit.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph
  %i.ac = zext nneg i8 %i.q to i32
  br label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj3_ENtB5_8Searcher4nextCs6oosyzwIepl_6ide_db.exit.i.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit14.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit12.i.i.i.i.i.i.i.i
  %i.ad = icmp ne ptr %i.v, %i.e
  call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 3 ; 3 uses
  %i.af = load i8, ptr %i.v, align 1, !noalias !1554, !noundef !8
  %i.ag = shl nuw nsw i32 %i.z, 6
  %i.ah = and i8 %i.af, 63
  %i.ai = zext nneg i8 %i.ah to i32
  %i.aj = or disjoint i32 %i.ag, %i.ai            ; 2 uses
  %i.ak = shl nuw nsw i32 %i.t, 12
  %i.al = or disjoint i32 %i.aj, %i.ak
  %i.am = icmp samesign ugt i8 %i.q, -17
  br i1 %i.am, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit16.i.i.i.i.i.i.i.i, label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj3_ENtB5_8Searcher4nextCs6oosyzwIepl_6ide_db.exit.i.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit16.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit14.i.i.i.i.i.i.i.i
  %i.an = icmp ne ptr %i.ae, %i.e
  call void @llvm.assume(i1 %i.an)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.ap = load i8, ptr %i.ae, align 1, !noalias !1554, !noundef !8
  %i.aq = shl nuw nsw i32 %i.t, 18
  %i.ar = and i32 %i.aq, 1835008
  %i.as = shl nuw nsw i32 %i.aj, 6
  %i.at = and i8 %i.ap, 63
  %i.au = zext nneg i8 %i.at to i32
  %i.av = or disjoint i32 %i.as, %i.au
  %i.aw = or disjoint i32 %i.av, %i.ar
  br label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj3_ENtB5_8Searcher4nextCs6oosyzwIepl_6ide_db.exit.i.i.i.i.i

_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj3_ENtB5_8Searcher4nextCs6oosyzwIepl_6ide_db.exit.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit16.i.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit14.i.i.i.i.i.i.i.i, %bb.e, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit12.i.i.i.i.i.i.i.i
  %.sroa.956.3 = phi ptr [ %i.p, %bb.e ], [ %i.ao, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit16.i.i.i.i.i.i.i.i ], [ %i.ae, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit14.i.i.i.i.i.i.i.i ], [ %i.v, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit12.i.i.i.i.i.i.i.i ] ; 11 uses
  %.sroa.4.0.i.ph.i.i.i.i.i.i.i = phi i32 [ %i.ac, %bb.e ], [ %i.aw, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit16.i.i.i.i.i.i.i.i ], [ %i.al, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit14.i.i.i.i.i.i.i.i ], [ %i.aa, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit12.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ax = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i, 1114112
  call void @llvm.assume(i1 %i.ax)
  %i.ay = ptrtoint ptr %.sroa.956.3 to i64
  %i.az = sub i64 %i.ay, %i.o
  %i.ba = add i64 %i.az, %i.n                     ; 15 uses
  switch i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i, label %bb.d [
    i32 44, label %select.unfold.i
    i32 32, label %select.unfold.i
    i32 9, label %select.unfold.i
  ]

select.unfold.i:                                  ; preds = %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj3_ENtB5_8Searcher4nextCs6oosyzwIepl_6ide_db.exit.i.i.i.i.i, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj3_ENtB5_8Searcher4nextCs6oosyzwIepl_6ide_db.exit.i.i.i.i.i, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj3_ENtB5_8Searcher4nextCs6oosyzwIepl_6ide_db.exit.i.i.i.i.i, %bb.d, %.preheader
  %.sroa.22.2 = phi i1 [ true, %.preheader ], [ true, %bb.d ], [ %.sroa.22.1, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj3_ENtB5_8Searcher4nextCs6oosyzwIepl_6ide_db.exit.i.i.i.i.i ], [ %.sroa.22.1, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj3_ENtB5_8Searcher4nextCs6oosyzwIepl_6ide_db.exit.i.i.i.i.i ], [ %.sroa.22.1, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj3_ENtB5_8Searcher4nextCs6oosyzwIepl_6ide_db.exit.i.i.i.i.i ] ; 4 uses
  %.sroa.15.3 = phi i64 [ %.sroa.15.1, %.preheader ], [ %i.ba, %bb.d ], [ %i.ba, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj3_ENtB5_8Searcher4nextCs6oosyzwIepl_6ide_db.exit.i.i.i.i.i ], [ %i.ba, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj3_ENtB5_8Searcher4nextCs6oosyzwIepl_6ide_db.exit.i.i.i.i.i ], [ %i.ba, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj3_ENtB5_8Searcher4nextCs6oosyzwIepl_6ide_db.exit.i.i.i.i.i ] ; 4 uses
  %.sroa.956.4 = phi ptr [ %.sroa.956.1, %.preheader ], [ %.sroa.956.3, %bb.d ], [ %.sroa.956.3, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj3_ENtB5_8Searcher4nextCs6oosyzwIepl_6ide_db.exit.i.i.i.i.i ], [ %.sroa.956.3, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj3_ENtB5_8Searcher4nextCs6oosyzwIepl_6ide_db.exit.i.i.i.i.i ], [ %.sroa.956.3, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj3_ENtB5_8Searcher4nextCs6oosyzwIepl_6ide_db.exit.i.i.i.i.i ] ; 4 uses
  %.sroa.0.274 = phi i64 [ %.sroa.0.1, %.preheader ], [ %.sroa.0.1, %bb.d ], [ %i.ba, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj3_ENtB5_8Searcher4nextCs6oosyzwIepl_6ide_db.exit.i.i.i.i.i ], [ %i.ba, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj3_ENtB5_8Searcher4nextCs6oosyzwIepl_6ide_db.exit.i.i.i.i.i ], [ %i.ba, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj3_ENtB5_8Searcher4nextCs6oosyzwIepl_6ide_db.exit.i.i.i.i.i ] ; 4 uses
  %i.bb = phi i64 [ %i.h, %.preheader ], [ %i.ba, %bb.d ], [ %i.ba, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj3_ENtB5_8Searcher4nextCs6oosyzwIepl_6ide_db.exit.i.i.i.i.i ], [ %i.ba, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj3_ENtB5_8Searcher4nextCs6oosyzwIepl_6ide_db.exit.i.i.i.i.i ], [ %i.ba, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj3_ENtB5_8Searcher4nextCs6oosyzwIepl_6ide_db.exit.i.i.i.i.i ]
  %i.bc = phi ptr [ %i.i, %.preheader ], [ %.sroa.956.3, %bb.d ], [ %.sroa.956.3, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj3_ENtB5_8Searcher4nextCs6oosyzwIepl_6ide_db.exit.i.i.i.i.i ], [ %.sroa.956.3, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj3_ENtB5_8Searcher4nextCs6oosyzwIepl_6ide_db.exit.i.i.i.i.i ], [ %.sroa.956.3, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj3_ENtB5_8Searcher4nextCs6oosyzwIepl_6ide_db.exit.i.i.i.i.i ]
  %.pre.i.i.i16.i = phi i64 [ %.pre.i.i.i17.i, %.preheader ], [ %.pre.i.i.i17.i, %bb.d ], [ %i.ba, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj3_ENtB5_8Searcher4nextCs6oosyzwIepl_6ide_db.exit.i.i.i.i.i ], [ %i.ba, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj3_ENtB5_8Searcher4nextCs6oosyzwIepl_6ide_db.exit.i.i.i.i.i ], [ %i.ba, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj3_ENtB5_8Searcher4nextCs6oosyzwIepl_6ide_db.exit.i.i.i.i.i ]
  %i.bd = phi i1 [ true, %.preheader ], [ true, %bb.d ], [ false, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj3_ENtB5_8Searcher4nextCs6oosyzwIepl_6ide_db.exit.i.i.i.i.i ], [ false, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj3_ENtB5_8Searcher4nextCs6oosyzwIepl_6ide_db.exit.i.i.i.i.i ], [ false, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj3_ENtB5_8Searcher4nextCs6oosyzwIepl_6ide_db.exit.i.i.i.i.i ]
  %.pn25.i = phi i64 [ %i.d, %.preheader ], [ %i.d, %bb.d ], [ %i.n, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj3_ENtB5_8Searcher4nextCs6oosyzwIepl_6ide_db.exit.i.i.i.i.i ], [ %i.n, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj3_ENtB5_8Searcher4nextCs6oosyzwIepl_6ide_db.exit.i.i.i.i.i ], [ %i.n, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj3_ENtB5_8Searcher4nextCs6oosyzwIepl_6ide_db.exit.i.i.i.i.i ]
  %.sroa.4.1.i.i.i = sub nuw i64 %.pn25.i, %.pre.i.i.i17.i
  %.sroa.0.1.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %.pre.i.i.i17.i
  %i.be = call { ptr, i64 } @_RINvMNtCshzWfHUSfYae_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i, i64 noundef %.sroa.4.1.i.i.i), !noalias !1555 ; 2 uses
  %i.bf = extractvalue { ptr, i64 } %i.be, 0      ; 18 uses
  %i.bg = extractvalue { ptr, i64 } %i.be, 1      ; 5 uses
  %.not.i.i.i = icmp eq i64 %i.bg, 0
  %.not.i12.i = icmp eq ptr %i.bf, null
  %.not.i.i = select i1 %.not.i.i.i, i1 true, i1 %.not.i12.i
  br i1 %.not.i.i, label %bb.c, label %bb.f

bb.f:                                             ; preds = %select.unfold.i
  switch i64 %i.bg, label %bb.p [
    i64 12, label %bb.h
    i64 6, label %bb.i
    i64 10, label %bb.k
    i64 4, label %bb.l
  ]

bb.g:                                             ; preds = %bb.c
  %i.bh = trunc nuw i8 %.sroa.01.0.ph to i1
  %i.bi = trunc nuw i8 %.sroa.0.0.ph154 to i1
  %not. = xor i1 %i.bh, true
  %i.bj = select i1 %not., i1 true, i1 %i.bi
  ret i1 %i.bj

bb.h:                                             ; preds = %bb.f
  %i.bk = load i64, ptr %i.bf, align 1
  %i.bl = xor i64 %i.bk, 8097301072024922227
  %i.bm = getelementptr i8, ptr %i.bf, i64 8
  %i.bn = load i32, ptr %i.bm, align 1
  %i.bo = zext i32 %i.bn to i64
  %i.bp = xor i64 %i.bo, 1667853921
  %i.bq = or i64 %i.bl, %i.bp
  %i.br = icmp ne i64 %i.bq, 0
  %i.bs = zext i1 %i.br to i32
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %.outer149.backedge, label %bb.m

bb.i:                                             ; preds = %bb.f
  %i.bu = load i32, ptr %i.bf, align 1
  %i.bv = xor i32 %i.bu, 1918857070
  %i.bw = getelementptr i8, ptr %i.bf, i64 4
  %i.bx = load i16, ptr %i.bw, align 1
  %i.by = zext i16 %i.bx to i32
  %i.bz = xor i32 %i.by, 28277
  %i.ca = or i32 %i.bv, %i.bz
  %i.cb = icmp ne i32 %i.ca, 0
  %i.cc = zext i1 %i.cb to i32
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %.outer149.backedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ce = load i32, ptr %i.bf, align 1
  %i.cf = xor i32 %i.ce, 1869506409
  %i.cg = getelementptr i8, ptr %i.bf, i64 4
  %i.ch = load i16, ptr %i.cg, align 1
  %i.ci = zext i16 %i.ch to i32
  %i.cj = xor i32 %i.ci, 25970
  %i.ck = or i32 %i.cf, %i.cj
  %i.cl = icmp ne i32 %i.ck, 0
  %i.cm = zext i1 %i.cl to i32
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %.outer149.backedge, label %bb.p

bb.k:                                             ; preds = %bb.f
  %i.co = load i64, ptr %i.bf, align 1
  %i.cp = xor i64 %i.co, 7018402035878620257
  %i.cq = getelementptr i8, ptr %i.bf, i64 8
  %i.cr = load i16, ptr %i.cq, align 1
  %i.cs = zext i16 %i.cr to i64
  %i.ct = xor i64 %i.cs, 27753
  %i.cu = or i64 %i.cp, %i.ct
  %i.cv = icmp ne i64 %i.cu, 0
  %i.cw = zext i1 %i.cv to i32
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %.outer149.backedge, label %bb.p

bb.l:                                             ; preds = %bb.f
  %i.cy = load i32, ptr %i.bf, align 1
  %i.cz = icmp ne i32 %i.cy, 1953723762
  %i.da = zext i1 %i.cz to i32
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %.outer149.backedge, label %bb.p

bb.m:                                             ; preds = %bb.h
  %i.dc = load i64, ptr %i.bf, align 1
  %i.dd = xor i64 %i.dc, 8241983552249619828
  %i.de = getelementptr i8, ptr %i.bf, i64 8
  %i.df = load i32, ptr %i.de, align 1
  %i.dg = zext i32 %i.df to i64
  %i.dh = xor i64 %i.dg, 1936942446
  %i.di = or i64 %i.dd, %i.dh
  %i.dj = icmp ne i64 %i.di, 0
  %i.dk = zext i1 %i.dj to i32
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.o, %bb.m
  %spec.select49 = select i1 %i.f, i8 %.sroa.0.0.ph154, i8 1
  br label %.outer149.backedge

.outer149.backedge:                               ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.n
  %.sroa.0.0.ph154.be = phi i8 [ 1, %bb.l ], [ %spec.select49, %bb.n ], [ %i.g, %bb.k ], [ %i.g, %bb.j ], [ %i.g, %bb.i ], [ %i.g, %bb.h ]
  br label %.outer149

bb.o:                                             ; preds = %bb.m
  %i.dm = load i64, ptr %i.bf, align 1
  %i.dn = xor i64 %i.dm, 6874019606364516195
  %i.do = getelementptr i8, ptr %i.bf, i64 8
  %i.dp = load i32, ptr %i.do, align 1
  %i.dq = zext i32 %i.dp to i64
  %i.dr = xor i64 %i.dq, 1818845542
  %i.ds = or i64 %i.dn, %i.dr
  %i.dt = icmp ne i64 %i.ds, 0
  %i.du = zext i1 %i.dt to i32
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %bb.n, label %bb.p

bb.p:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.f, %bb.o
  %i.dw = call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bf, i64 noundef %i.bg, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @91, i64 noundef 7)
  br i1 %i.dw, label %bb.b, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 69, ptr %i.a, align 4
  %i.dx = call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bf, i64 noundef %i.bg, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dy = icmp eq i64 %i.bg, 5
  %or.cond = and i1 %i.dy, %i.dx
  br i1 %or.cond, label %bb.r, label %.outer.backedge

bb.r:                                             ; preds = %bb.q
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bf, i64 1 ; 2 uses
  %i.ea = load i8, ptr %i.dz, align 1, !alias.scope !1556, !noundef !8 ; 2 uses
  %i.eb = icmp sgt i8 %i.ea, -65
  br i1 %i.eb, label %.preheader.i, label %bb.s

.preheader.i:                                     ; preds = %bb.r
  %cond.i = icmp eq i8 %i.ea, 43                  ; 2 uses
  %.sroa.15.0.i = select i1 %cond.i, i64 3, i64 4
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i55 = getelementptr inbounds nuw i8, ptr %i.dz, i64 %.sroa.0.0.idx.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.preheader.i
  %.sroa.0.271.i = phi ptr [ %3, %.lr.ph.i ], [ %.sroa.0.0.i55, %.preheader.i ] ; 2 uses
  %.sroa.15.270.i = phi i64 [ %2, %.lr.ph.i ], [ %.sroa.15.0.i, %.preheader.i ]
  %i.ec = load i8, ptr %.sroa.0.271.i, align 1, !alias.scope !1557, !noundef !8
  %i.ed = add i8 %i.ec, -58
  %i.ee = icmp ult i8 %i.ed, -10                  ; 2 uses
  %2 = add nsw i64 %.sroa.15.270.i, -1            ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.0.271.i, i64 1
  %.not56.i = icmp eq i64 %2, 0
  %or.cond143 = select i1 %i.ee, i1 true, i1 %.not56.i
  br i1 %or.cond143, label %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i

_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit: ; preds = %.lr.ph.i
  %i.ef = trunc nuw i8 %.sroa.01.0.ph to i1
  %or.cond50 = select i1 %i.ee, i1 true, i1 %i.ef ; 2 uses
  %spec.select51 = zext i1 %or.cond50 to i8
  %spec.select52 = select i1 %or.cond50, i8 %.sroa.0.0.ph154, i8 1
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit, %bb.q
  %.sroa.01.0.ph.be = phi i8 [ 1, %bb.q ], [ %spec.select51, %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit ]
  %.sroa.0.0.ph.be = phi i8 [ %.sroa.0.0.ph154, %bb.q ], [ %spec.select52, %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit ]
  br label %.outer

bb.s:                                             ; preds = %bb.r
  call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bf, i64 noundef 5, i64 noundef 1, i64 noundef 5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @92) #38
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCs6oosyzwIepl_6ide_db14syntax_helpers12suggest_name10trait_name(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, i32 %.0.val, i32 %.4.val, ptr noundef nonnull align 8 %1, i8 noundef range(i8 0, 4) %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !1561 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [8 x i8], align 8                 ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.i = tail call noundef nonnull ptr @_RNvMsD_Cs8Xq8PKFYOms_3hirNtB5_5Trait4name(i32 noundef %.0.val, i32 noundef %.4.val, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @26)
  store ptr %i.i, ptr %i.f, align 8
  store ptr %i.f, ptr %i.g, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i8 %2, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1562
  store i64 0, ptr %i.e, align 8, !noalias !1562
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1562
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1562
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1562
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 1610612768, ptr %i.k, align 8, !noalias !1562
  store ptr %i.e, ptr %i.d, align 8, !noalias !1562
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @118, ptr %i.l, align 8, !noalias !1562
  %i.m = invoke noundef zeroext i1 @_RNvXs6_NtCs33K2ylI4knu_10hir_expand4nameNtB5_7DisplayNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.c unwind label %bb.b, !noalias !1563

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #39
          to label %.body unwind label %bb.e, !noalias !1563

bb.c:                                             ; preds = %bb.a
  br i1 %i.m, label %bb.d, label %bb.f, !prof !12

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @119, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @121) #38
          to label %.noexc.i unwind label %bb.b, !noalias !1563

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #40, !noalias !1563
  unreachable

.body:                                            ; preds = %bb.b
  %.val2 = load ptr, ptr %i.f, align 8, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECs6oosyzwIepl_6ide_db(ptr nonnull %.val2) #39
          to label %common.resume unwind label %bb.n

bb.f:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !1564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1562
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1562
  %.val = load ptr, ptr %i.f, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.p = ptrtoint ptr %.val to i64
  %i.q = and i64 %i.p, 1
  %.not.i.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECs6oosyzwIepl_6ide_db.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr i8, ptr %.val, i64 -1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %i.s = invoke noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCs6oosyzwIepl_6ide_db(ptr noundef nonnull %i.r)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.g
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds i8, ptr %i.r, i64 %i.t ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.u, ptr %i.c, align 8
  %i.v = load atomic i64, ptr %i.u acquire, align 8
  %i.w = icmp eq i64 %i.v, 2
  br i1 %i.w, label %bb.h, label %.noexc3, !prof !12

bb.h:                                             ; preds = %.noexc
  invoke void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %.noexc3 unwind label %bb.i

.noexc3:                                          ; preds = %bb.h, %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.u, ptr %i.b, align 8
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.noexc4 unwind label %bb.i

.noexc4:                                          ; preds = %.noexc3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECs6oosyzwIepl_6ide_db.exit

bb.i:                                             ; preds = %.noexc3, %bb.h, %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #39
          to label %common.resume unwind label %bb.n

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECs6oosyzwIepl_6ide_db.exit: ; preds = %.noexc4, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !8, !noundef !8 ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !8
  switch i64 %i.ab, label %_RNCNvXsf_NtNtCshzWfHUSfYae_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Cs6oosyzwIepl_6ide_db.exit.backedge.i.i.5 [
    i64 4, label %.split.i.i
    i64 5, label %.split.i.i.3
    i64 2, label %.split.i.i.4
    i64 9, label %.split.i.i.5
  ]

.split.i.i:                                       ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECs6oosyzwIepl_6ide_db.exit
  %i.ac = load i32, ptr %i.z, align 1
  %i.ad = icmp ne i32 1684956499, %i.ac
  %i.ae = zext i1 %i.ad to i32
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.j, label %.split.i.i.1

.split.i.i.1:                                     ; preds = %.split.i.i
  %i.ag = load i32, ptr %i.z, align 1
  %i.ah = icmp ne i32 1668184403, %i.ag
  %i.ai = zext i1 %i.ah to i32
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.j, label %.split.i.i.2

.split.i.i.2:                                     ; preds = %.split.i.i.1
  %i.ak = load i32, ptr %i.z, align 1
  %i.al = icmp ne i32 2037411651, %i.ak
  %i.am = zext i1 %i.al to i32
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.j, label %_RNCNvXsf_NtNtCshzWfHUSfYae_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Cs6oosyzwIepl_6ide_db.exit.backedge.i.i.5

.split.i.i.3:                                     ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECs6oosyzwIepl_6ide_db.exit
  %i.ao = load i32, ptr %i.z, align 1
  %i.ap = xor i32 1852795971, %i.ao
  %i.aq = getelementptr i8, ptr %i.z, i64 4
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = zext i8 %i.ar to i32
  %i.at = xor i32 101, %i.as
  %i.au = or i32 %i.ap, %i.at
  %i.av = icmp ne i32 %i.au, 0
  %i.aw = zext i1 %i.av to i32
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.j, label %_RNCNvXsf_NtNtCshzWfHUSfYae_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Cs6oosyzwIepl_6ide_db.exit.backedge.i.i.5

.split.i.i.4:                                     ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECs6oosyzwIepl_6ide_db.exit
  %i.ay = load i16, ptr %i.z, align 1
  %i.az = icmp ne i16 28997, %i.ay
  %i.ba = zext i1 %i.az to i32
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.j, label %_RNCNvXsf_NtNtCshzWfHUSfYae_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Cs6oosyzwIepl_6ide_db.exit.backedge.i.i.5

.split.i.i.5:                                     ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECs6oosyzwIepl_6ide_db.exit
  %i.bc = load i64, ptr %i.z, align 1
  %i.bd = xor i64 5002480391654891856, %i.bc
  %i.be = getelementptr i8, ptr %i.z, i64 8
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = zext i8 %i.bf to i64
  %i.bh = xor i64 113, %i.bg
  %i.bi = or i64 %i.bd, %i.bh
  %i.bj = icmp ne i64 %i.bi, 0
  %i.bk = zext i1 %i.bj to i32
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.j, label %_RNCNvXsf_NtNtCshzWfHUSfYae_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Cs6oosyzwIepl_6ide_db.exit.backedge.i.i.5

_RNCNvXsf_NtNtCshzWfHUSfYae_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Cs6oosyzwIepl_6ide_db.exit.backedge.i.i.5: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECs6oosyzwIepl_6ide_db.exit, %.split.i.i.2, %.split.i.i.3, %.split.i.i.4, %.split.i.i.5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  br label %bb.m

bb.j:                                             ; preds = %.split.i.i.5, %.split.i.i.4, %.split.i.i.3, %.split.i.i.2, %.split.i.i.1, %.split.i.i
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6oosyzwIepl_6ide_db.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = landingpad { ptr, i32 }
end_hunk_0
