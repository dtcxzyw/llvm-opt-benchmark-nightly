Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tomlplusplus/original/toml?download=true
inline.NumInlined: 4199
inline.NumDeleted: 1284
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN4toml2v34impl18node_deep_equalityEPKNS0_4nodeES4_:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 232
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef ptr %i.v(ptr noundef nonnull readonly align 8 dereferenceable(40) %1) #52, !inline_history !443 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !67
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !68
  %i.ab = icmp eq i64 %.val23.i.i, %i.aa
  br i1 %i.ab, label %bb.h, label %"_ZNKR4toml2v34node5visitIZNS0_4impl18node_deep_equalityEPKS1_S5_E3$_0EEDcOT_.exit"

bb.h:                                             ; preds = %bb.g
  %i.ac = icmp eq i64 %.val23.i.i, 0
  br i1 %i.ac, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.h
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr readonly %.val22.i.i, ptr %i.y, i64 %.val23.i.i)
  %i.ad = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.ad, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %"_ZNKR4toml2v34node5visitIZNS0_4impl18node_deep_equalityEPKS1_S5_E3$_0EEDcOT_.exit"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.h
  br label %"_ZNKR4toml2v34node5visitIZNS0_4impl18node_deep_equalityEPKS1_S5_E3$_0EEDcOT_.exit"

bb.i:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val25.i.i = load i64, ptr %i.ae, align 8, !tbaa !184
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 240
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef ptr %i.ag(ptr noundef nonnull readonly align 8 dereferenceable(40) %1) #52, !inline_history !444
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !184
  %i.ak = icmp eq i64 %.val25.i.i, %i.aj
  br label %"_ZNKR4toml2v34node5visitIZNS0_4impl18node_deep_equalityEPKS1_S5_E3$_0EEDcOT_.exit"

bb.j:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val27.i.i = load i64, ptr %i.al, align 8      ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 248
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef ptr %i.an(ptr noundef nonnull readonly align 8 dereferenceable(40) %1) #52, !inline_history !445
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !187 ; 2 uses
  %i.ar = and i64 %.val27.i.i, 9218868437227405312
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ar, 9218868437227405312
  %i.as = and i64 %.val27.i.i, 4503599627370495
  %.not4.i.i.i.i.i.i = icmp ne i64 %i.as, 0
  %.0.i.i.i.i.i.i = and i1 %.not.i.i.i.i.i.i, %.not4.i.i.i.i.i.i ; 2 uses
  %or.cond.i.i.i.i.i = fcmp ord double %i.aq, 0.000000e+00
  %i.at = bitcast i64 %.val27.i.i to double
  br i1 %or.cond.i.i.i.i.i, label %_ZN4toml2v34impl10fpclassifyERKd.exit13.thr_comm.i.i.i.i.i, label %_ZN4toml2v34impl10fpclassifyERKd.exit13.i.i.i.i.i

_ZN4toml2v34impl10fpclassifyERKd.exit13.thr_comm.i.i.i.i.i: ; preds = %bb.j
  br i1 %.0.i.i.i.i.i.i, label %.thread.i.i.i.i.i, label %bb.k

_ZN4toml2v34impl10fpclassifyERKd.exit13.i.i.i.i.i: ; preds = %bb.j
  br i1 %.0.i.i.i.i.i.i, label %"_ZNKR4toml2v34node5visitIZNS0_4impl18node_deep_equalityEPKS1_S5_E3$_0EEDcOT_.exit", label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %_ZN4toml2v34impl10fpclassifyERKd.exit13.i.i.i.i.i, %_ZN4toml2v34impl10fpclassifyERKd.exit13.thr_comm.i.i.i.i.i
  br label %"_ZNKR4toml2v34node5visitIZNS0_4impl18node_deep_equalityEPKS1_S5_E3$_0EEDcOT_.exit"

bb.k:                                             ; preds = %_ZN4toml2v34impl10fpclassifyERKd.exit13.thr_comm.i.i.i.i.i
  %i.au = fcmp oeq double %i.aq, %i.at
  br label %"_ZNKR4toml2v34node5visitIZNS0_4impl18node_deep_equalityEPKS1_S5_E3$_0EEDcOT_.exit"

bb.l:                                             ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val29.i.i = load i8, ptr %i.av, align 8, !tbaa !189, !range !105, !noundef !106
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = tail call noundef ptr %i.ax(ptr noundef nonnull readonly align 8 dereferenceable(40) %1) #52, !inline_history !446
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !189, !range !105, !noundef !106
  %i.bb = icmp eq i8 %.val29.i.i, %i.ba
  br label %"_ZNKR4toml2v34node5visitIZNS0_4impl18node_deep_equalityEPKS1_S5_E3$_0EEDcOT_.exit"

bb.m:                                             ; preds = %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = tail call noundef ptr %i.bd(ptr noundef nonnull readonly align 8 dereferenceable(40) %1) #52, !inline_history !447 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bh = load i16, ptr %i.bg, align 8, !tbaa !93
  %i.bi = load i16, ptr %i.bf, align 2, !tbaa !93
  %i.bj = icmp eq i16 %i.bh, %i.bi
  br i1 %i.bj, label %bb.n, label %"_ZNKR4toml2v34node5visitIZNS0_4impl18node_deep_equalityEPKS1_S5_E3$_0EEDcOT_.exit"

bb.n:                                             ; preds = %bb.m
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 42
  %i.bl = load i8, ptr %i.bk, align 2, !tbaa !94
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 42
  %i.bn = load i8, ptr %i.bm, align 2, !tbaa !94
  %i.bo = icmp eq i8 %i.bl, %i.bn
  br i1 %i.bo, label %bb.o, label %"_ZNKR4toml2v34node5visitIZNS0_4impl18node_deep_equalityEPKS1_S5_E3$_0EEDcOT_.exit"

bb.o:                                             ; preds = %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 43
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !95
  %i.br = getelementptr inbounds nuw i8, ptr %i.be, i64 43
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !95
  %i.bt = icmp eq i8 %i.bq, %i.bs
  br label %"_ZNKR4toml2v34node5visitIZNS0_4impl18node_deep_equalityEPKS1_S5_E3$_0EEDcOT_.exit"

bb.p:                                             ; preds = %bb.d
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = tail call noundef ptr %i.bv(ptr noundef nonnull readonly align 8 dereferenceable(40) %1) #52, !inline_history !448 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !97
  %i.ca = load i8, ptr %i.bx, align 4, !tbaa !97
  %i.cb = icmp eq i8 %i.bz, %i.ca
  br i1 %i.cb, label %bb.q, label %"_ZNKR4toml2v34node5visitIZNS0_4impl18node_deep_equalityEPKS1_S5_E3$_0EEDcOT_.exit"

bb.q:                                             ; preds = %bb.p
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !98
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bw, i64 41
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !98
  %i.cg = icmp eq i8 %i.cd, %i.cf
  br i1 %i.cg, label %bb.r, label %"_ZNKR4toml2v34node5visitIZNS0_4impl18node_deep_equalityEPKS1_S5_E3$_0EEDcOT_.exit"

bb.r:                                             ; preds = %bb.q
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 42
  %i.ci = load i8, ptr %i.ch, align 2, !tbaa !99
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bw, i64 42
  %i.ck = load i8, ptr %i.cj, align 2, !tbaa !99
  %i.cl = icmp eq i8 %i.ci, %i.ck
  br i1 %i.cl, label %bb.s, label %"_ZNKR4toml2v34node5visitIZNS0_4impl18node_deep_equalityEPKS1_S5_E3$_0EEDcOT_.exit"

bb.s:                                             ; preds = %bb.r
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !100
  %i.co = getelementptr inbounds nuw i8, ptr %i.bw, i64 44
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !100
  %i.cq = icmp eq i32 %i.cn, %i.cp
  br label %"_ZNKR4toml2v34node5visitIZNS0_4impl18node_deep_equalityEPKS1_S5_E3$_0EEDcOT_.exit"

bb.t:                                             ; preds = %bb.d
  %i.cr = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = tail call noundef ptr %i.cs(ptr noundef nonnull readonly align 8 dereferenceable(40) %1) #52, !inline_history !449 ; 9 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cw = load i16, ptr %i.cv, align 8, !tbaa !93
  %i.cx = load i16, ptr %i.cu, align 2, !tbaa !93
  %i.cy = icmp eq i16 %i.cw, %i.cx
  br i1 %i.cy, label %bb.u, label %"_ZNKR4toml2v34node5visitIZNS0_4impl18node_deep_equalityEPKS1_S5_E3$_0EEDcOT_.exit"

bb.u:                                             ; preds = %bb.t
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 42
  %i.da = load i8, ptr %i.cz, align 2, !tbaa !94
  %i.db = getelementptr inbounds nuw i8, ptr %i.ct, i64 42
  %i.dc = load i8, ptr %i.db, align 2, !tbaa !94
  %i.dd = icmp eq i8 %i.da, %i.dc
  br i1 %i.dd, label %_ZN4toml2v3eqERKNS0_4dateES3_.exit.i.i.i.i.i.i, label %"_ZNKR4toml2v34node5visitIZNS0_4impl18node_deep_equalityEPKS1_S5_E3$_0EEDcOT_.exit"

_ZN4toml2v3eqERKNS0_4dateES3_.exit.i.i.i.i.i.i:   ; preds = %bb.u
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 43
  %i.df = load i8, ptr %i.de, align 1, !tbaa !95
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ct, i64 43
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !95
  %i.di = icmp eq i8 %i.df, %i.dh
  br i1 %i.di, label %bb.v, label %"_ZNKR4toml2v34node5visitIZNS0_4impl18node_deep_equalityEPKS1_S5_E3$_0EEDcOT_.exit"

bb.v:                                             ; preds = %_ZN4toml2v3eqERKNS0_4dateES3_.exit.i.i.i.i.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ct, i64 44
  %i.dl = load i8, ptr %i.dj, align 4, !tbaa !97
  %i.dm = load i8, ptr %i.dk, align 4, !tbaa !97
  %i.dn = icmp eq i8 %i.dl, %i.dm
  br i1 %i.dn, label %bb.w, label %"_ZNKR4toml2v34node5visitIZNS0_4impl18node_deep_equalityEPKS1_S5_E3$_0EEDcOT_.exit"

bb.w:                                             ; preds = %bb.v
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 45
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !98
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ct, i64 45
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !98
  %i.ds = icmp eq i8 %i.dp, %i.dr
  br i1 %i.ds, label %bb.x, label %"_ZNKR4toml2v34node5visitIZNS0_4impl18node_deep_equalityEPKS1_S5_E3$_0EEDcOT_.exit"

bb.x:                                             ; preds = %bb.w
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 46
  %i.du = load i8, ptr %i.dt, align 2, !tbaa !99
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ct, i64 46
  %i.dw = load i8, ptr %i.dv, align 2, !tbaa !99
  %i.dx = icmp eq i8 %i.du, %i.dw
  br i1 %i.dx, label %_ZN4toml2v3eqERKNS0_4timeES3_.exit.i.i.i.i.i.i, label %"_ZNKR4toml2v34node5visitIZNS0_4impl18node_deep_equalityEPKS1_S5_E3$_0EEDcOT_.exit"

_ZN4toml2v3eqERKNS0_4timeES3_.exit.i.i.i.i.i.i:   ; preds = %bb.x
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !100
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ct, i64 48
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !100
  %i.ec = icmp eq i32 %i.dz, %i.eb
  br i1 %i.ec, label %bb.y, label %"_ZNKR4toml2v34node5visitIZNS0_4impl18node_deep_equalityEPKS1_S5_E3$_0EEDcOT_.exit"

bb.y:                                             ; preds = %_ZN4toml2v3eqERKNS0_4timeES3_.exit.i.i.i.i.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ct, i64 52
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 54
  %i.eg = load i8, ptr %i.ef, align 2, !tbaa !104, !range !105, !noundef !106 ; 2 uses
  %2 = trunc nuw i8 %i.eg to i1
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ct, i64 54
  %i.ei = load i8, ptr %i.eh, align 2, !tbaa !104, !range !105, !noundef !106
  %i.ej = icmp eq i8 %i.eg, %i.ei                 ; 2 uses
  %brmerge.not.i.i.i.i.i.i.i = and i1 %i.ej, %2
  %.sroa.01.0.copyload.i.i.i.i.i.i.i = load i16, ptr %i.ed, align 4
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i16, ptr %i.ee, align 4
  %i.ek = icmp eq i16 %.sroa.01.0.copyload.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i.i
  %i.el = select i1 %brmerge.not.i.i.i.i.i.i.i, i1 %i.ek, i1 %i.ej
  br label %"_ZNKR4toml2v34node5visitIZNS0_4impl18node_deep_equalityEPKS1_S5_E3$_0EEDcOT_.exit"

bb.z:                                             ; preds = %bb.d
  unreachable

"_ZNKR4toml2v34node5visitIZNS0_4impl18node_deep_equalityEPKS1_S5_E3$_0EEDcOT_.exit": ; preds = %bb.y, %_ZN4toml2v3eqERKNS0_4timeES3_.exit.i.i.i.i.i.i, %bb.x, %bb.w, %bb.v, %_ZN4toml2v3eqERKNS0_4dateES3_.exit.i.i.i.i.i.i, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %.thread.i.i.i.i.i, %_ZN4toml2v34impl10fpclassifyERKd.exit13.i.i.i.i.i, %bb.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.g, %bb.f, %bb.e, %bb.b, %bb.c, %bb.a
  %.0 = phi i1 [ false, %bb.b ], [ true, %bb.a ], [ false, %bb.c ], [ %i.n, %bb.e ], [ %i.r, %bb.f ], [ %i.cq, %bb.s ], [ %i.ak, %bb.i ], [ false, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %i.bb, %bb.l ], [ false, %.thread.i.i.i.i.i ], [ %i.bt, %bb.o ], [ false, %bb.g ], [ true, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ], [ true, %_ZN4toml2v34impl10fpclassifyERKd.exit13.i.i.i.i.i ], [ %i.au, %bb.k ], [ false, %bb.n ], [ false, %bb.m ], [ false, %bb.r ], [ false, %bb.q ], [ false, %bb.p ], [ false, %_ZN4toml2v3eqERKNS0_4timeES3_.exit.i.i.i.i.i.i ], [ false, %_ZN4toml2v3eqERKNS0_4dateES3_.exit.i.i.i.i.i.i ], [ %i.el, %bb.y ], [ false, %bb.t ], [ false, %bb.u ], [ false, %bb.x ], [ false, %bb.w ], [ false, %bb.v ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE(i64 %0, ptr %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %bb.b, label %.preheader241

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 %3(ptr noundef %2, i64 0, ptr nonnull @.str.7)
  br label %.thread203

.preheader241:                                    ; preds = %bb.a, %.backedge
  %.097284 = phi i64 [ %.097.be, %.backedge ], [ 0, %bb.a ] ; 7 uses
  %.0106283 = phi i1 [ %.0106.be, %.backedge ], [ false, %bb.a ]
  %.0113282 = phi i8 [ %.0113.be, %.backedge ], [ 1, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.097284 ; 3 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !70
  switch i8 %i.d, label %bb.p [
    i8 91, label %.preheader
    i8 46, label %bb.m
    i8 93, label %.thread203
  ], !prof !162

.preheader:                                       ; preds = %.preheader241
  %.0120266 = add nuw i64 %.097284, 1             ; 4 uses
  %.not267 = icmp ult i64 %.0120266, %0
  br i1 %.not267, label %.lr.ph.preheader, label %.thread203, !prof !163

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %.0120266
  %i.f = load i8, ptr %i.e, align 1, !tbaa !70    ; 3 uses
  %i.g = add i8 %i.f, -48
  %i.h = icmp ult i8 %i.g, 10
  br i1 %i.h, label %.lr.ph._crit_edge, label %.lr.ph344, !prof !164

.lr.ph:                                           ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.0120
  %i.j = load i8, ptr %i.i, align 1, !tbaa !70    ; 3 uses
  %i.k = add i8 %i.j, -48
  %i.l = icmp ult i8 %i.k, 10
  br i1 %i.l, label %.lr.ph._crit_edge, label %.lr.ph344, !prof !165

.lr.ph344:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %i.m = phi i8 [ %i.j, %.lr.ph ], [ %i.f, %.lr.ph.preheader ]
  %.0120269343 = phi i64 [ %.0120, %.lr.ph ], [ %.0120266, %.lr.ph.preheader ] ; 2 uses
  switch i8 %i.m, label %.thread203 [
    i8 32, label %bb.c
    i8 9, label %bb.c
  ]

bb.c:                                             ; preds = %.lr.ph344, %.lr.ph344
  %.0120 = add nuw i64 %.0120269343, 1            ; 4 uses
  %exitcond.not = icmp eq i64 %.0120, %0
  br i1 %exitcond.not, label %.thread203, label %.lr.ph, !prof !166

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.0120269.lcssa = phi i64 [ %.0120266, %.lr.ph.preheader ], [ %.0120, %.lr.ph ] ; 3 uses
  %.0120.in268.lcssa = phi i64 [ %.097284, %.lr.ph.preheader ], [ %.0120269343, %.lr.ph ]
  %.lcssa = phi i8 [ %i.f, %.lr.ph.preheader ], [ %i.j, %.lr.ph ]
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %.0120269.lcssa ; 3 uses
  %i.o = add i64 %.0120.in268.lcssa, 2            ; 3 uses
  %.not135271 = icmp ult i64 %i.o, %0
  br i1 %.not135271, label %.lr.ph273, label %.thread186, !prof !163

.lr.ph273:                                        ; preds = %.lr.ph._crit_edge, %bb.e
  %.0131272 = phi i64 [ %i.s, %bb.e ], [ %i.o, %.lr.ph._crit_edge ] ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %.0131272
  %i.q = load i8, ptr %i.p, align 1, !tbaa !70    ; 2 uses
  %i.r = add i8 %i.q, -48
  %or.cond6 = icmp ult i8 %i.r, 10
  br i1 %or.cond6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph273
  switch i8 %i.q, label %.thread203 [
    i8 93, label %.thread186
    i8 91, label %.thread186
    i8 46, label %.thread186
    i8 32, label %.thread186
    i8 9, label %.thread186
  ]

bb.e:                                             ; preds = %.lr.ph273
  %i.s = add nuw i64 %.0131272, 1                 ; 2 uses
  %exitcond298.not = icmp eq i64 %i.s, %0
  br i1 %exitcond298.not, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, label %.lr.ph273, !prof !166

.thread186:                                       ; preds = %.lr.ph._crit_edge, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  %.0131248 = phi i64 [ %.0131272, %bb.d ], [ %.0131272, %bb.d ], [ %.0131272, %bb.d ], [ %.0131272, %bb.d ], [ %.0131272, %bb.d ], [ %i.o, %.lr.ph._crit_edge ] ; 8 uses
  %.not136274 = icmp ult i64 %.0131248, %0
  br i1 %.not136274, label %.lr.ph276, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, !prof !167

.lr.ph276:                                        ; preds = %.thread186, %bb.g
  %.198275 = phi i64 [ %i.w, %bb.g ], [ %.0131248, %.thread186 ] ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %.198275
  %i.u = load i8, ptr %i.t, align 1, !tbaa !70
  switch i8 %i.u, label %.thread203 [
    i8 93, label %bb.f
    i8 91, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
    i8 46, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
    i8 32, label %bb.g
    i8 9, label %bb.g
  ], !prof !168

bb.f:                                             ; preds = %.lr.ph276
  %i.v = add nuw i64 %.198275, 1
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.g:                                             ; preds = %.lr.ph276, %.lr.ph276
  %i.w = add i64 %.198275, 1                      ; 2 uses
  %exitcond299.not = icmp eq i64 %i.w, %0
  br i1 %exitcond299.not, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, label %.lr.ph276, !prof !166

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.e, %.lr.ph276, %.lr.ph276, %bb.g, %bb.f, %.thread186
  %.0131248312 = phi i64 [ %.0131248, %bb.f ], [ %.0131248, %.thread186 ], [ %.0131248, %.lr.ph276 ], [ %.0131248, %bb.g ], [ %.0131248, %.lr.ph276 ], [ %0, %bb.e ]
  %.3100 = phi i64 [ %i.v, %bb.f ], [ %.0131248, %.thread186 ], [ %.198275, %.lr.ph276 ], [ %.198275, %.lr.ph276 ], [ %0, %bb.g ], [ %0, %bb.e ]
  %i.x = sub i64 %.0131248312, %.0120269.lcssa
  %i.y = sub nuw i64 %0, %.0120269.lcssa
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.y, i64 %i.x) ; 3 uses
  %i.z = icmp eq i64 %.sroa.speculated.i, 1
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.aa = zext nneg i8 %.lcssa to i64
  %i.ab = add nsw i64 %i.aa, -48
  br label %_ZSt10from_charsImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit

bb.i:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.speculated.i ; 2 uses
  %.not36.i.i = icmp samesign eq i64 %.sroa.speculated.i, 0
  br i1 %.not36.i.i, label %.thread203, label %.lr.ph.i36.i

.lr.ph.i36.i:                                     ; preds = %bb.i, %.critedge.i37.i
  %.364.i = phi ptr [ %i.ar, %.critedge.i37.i ], [ %i.n, %bb.i ] ; 3 uses
  %.9.i = phi i64 [ %.10.i, %.critedge.i37.i ], [ 0, %bb.i ] ; 3 uses
  %.02237.i.i = phi i32 [ %i.af, %.critedge.i37.i ], [ 64, %bb.i ]
  %i.ad = load i8, ptr %.364.i, align 1, !tbaa !70
  %i.ae = add i8 %i.ad, -48                       ; 3 uses
  %.not30.i.i = icmp ult i8 %i.ae, 10
  br i1 %.not30.i.i, label %bb.j, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i

bb.j:                                             ; preds = %.lr.ph.i36.i
  %i.af = add i32 %.02237.i.i, -4                 ; 2 uses
  %i.ag = icmp sgt i32 %i.af, -1
  br i1 %i.ag, label %bb.k, label %bb.l, !prof !169

bb.k:                                             ; preds = %bb.j
  %i.ah = mul i64 %.9.i, 10
  %i.ai = zext nneg i8 %i.ae to i64
  %i.aj = add i64 %i.ah, %i.ai
  br label %.critedge.i37.i

bb.l:                                             ; preds = %bb.j
  %i.ak = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.9.i, i64 10) ; 2 uses
  %i.al = extractvalue { i64, i1 } %i.ak, 1
  br i1 %i.al, label %.thread203, label %.split.i.i, !prof !170

.split.i.i:                                       ; preds = %bb.l
  %i.am = extractvalue { i64, i1 } %i.ak, 0
  %i.an = zext nneg i8 %i.ae to i64
  %i.ao = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.am, i64 %i.an) ; 2 uses
  %i.ap = extractvalue { i64, i1 } %i.ao, 1
  %i.aq = extractvalue { i64, i1 } %i.ao, 0
  br i1 %i.ap, label %.thread203, label %.critedge.i37.i, !prof !156

.critedge.i37.i:                                  ; preds = %.split.i.i, %bb.k
  %.10.i = phi i64 [ %i.aj, %bb.k ], [ %i.aq, %.split.i.i ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.364.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ar, %i.ac
  br i1 %.not.i.i, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i, label %.lr.ph.i36.i, !llvm.loop !9

_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i: ; preds = %.critedge.i37.i, %.lr.ph.i36.i
  %.061.i = phi ptr [ %.364.i, %.lr.ph.i36.i ], [ %i.ac, %.critedge.i37.i ]
  %.0.i = phi i64 [ %.9.i, %.lr.ph.i36.i ], [ %.10.i, %.critedge.i37.i ]
  %.not234 = icmp eq ptr %.061.i, %i.n
  br i1 %.not234, label %.thread203, label %_ZSt10from_charsImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit, !prof !171

_ZSt10from_charsImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit: ; preds = %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i, %bb.h
  %.0 = phi i64 [ %i.ab, %bb.h ], [ %.0.i, %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i ]
  %i.as = tail call noundef zeroext i1 %4(ptr noundef %2, i64 noundef %.0)
  br i1 %i.as, label %.backedge, label %.thread203

bb.m:                                             ; preds = %.preheader241
  %i.at = trunc nuw i8 %.0113282 to i1
  br i1 %i.at, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.au = tail call noundef zeroext i1 %3(ptr noundef %2, i64 0, ptr nonnull @.str.7)
  br i1 %i.au, label %bb.o, label %.thread203

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.av = add nuw i64 %.097284, 1
end_hunk_0
begin_hunk_1_@_ZN4toml2v35array5equalERKS1_S3_:bb.a
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !75
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef zeroext i8 %i.ab(ptr noundef nonnull align 8 dereferenceable(40) %i.y) #52
  %.not27 = icmp eq i8 %i.w, %i.ac
  br i1 %.not27, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.lr.ph
  switch i8 %i.w, label %bb.q [
    i8 1, label %.split
    i8 2, label %"_ZN4toml2v34node8do_visitIZNS0_5array5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit"
    i8 3, label %bb.d
    i8 4, label %.split37
    i8 5, label %bb.f
    i8 6, label %.split35
    i8 7, label %bb.g
    i8 8, label %bb.i
    i8 9, label %bb.l
  ]

.split:                                           ; preds = %bb.c
  %i.ad = tail call noundef zeroext i1 @_ZN4toml2v35table5equalERKS1_S3_(ptr noundef nonnull align 8 dereferenceable(89) %i.s, ptr noundef nonnull align 8 dereferenceable(89) %i.y) #52, !inline_history !571
  br i1 %i.ad, label %"_ZN4toml2v34node8do_visitIZNS0_5array5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit.thread31", label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr i8, ptr %i.s, i64 40
  %.val20.i = load ptr, ptr %i.ae, align 8, !tbaa !67
  %i.af = getelementptr i8, ptr %i.s, i64 48
  %.val21.i = load i64, ptr %i.af, align 8, !tbaa !68 ; 3 uses
  %i.ag = getelementptr i8, ptr %i.y, i64 40
  %.val.val.i = load ptr, ptr %i.ag, align 8, !tbaa !67
  %i.ah = getelementptr i8, ptr %i.y, i64 48
  %.val.val22.i = load i64, ptr %i.ah, align 8, !tbaa !68
  %i.ai = icmp eq i64 %.val21.i, %.val.val22.i
  br i1 %i.ai, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.aj = icmp eq i64 %.val21.i, 0
  br i1 %i.aj, label %"_ZN4toml2v34node8do_visitIZNS0_5array5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit.thread31", label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.e
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr readonly %.val20.i, ptr readonly %.val.val.i, i64 %.val21.i), !inline_history !572
  %i.ak = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.ak, label %"_ZN4toml2v34node8do_visitIZNS0_5array5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit.thread31", label %.critedge

.split37:                                         ; preds = %bb.c
  %i.al = getelementptr i8, ptr %i.s, i64 40
  %.val24.i = load i64, ptr %i.al, align 8, !tbaa !184
  %i.am = getelementptr i8, ptr %i.y, i64 40
  %.val23.val.i = load i64, ptr %i.am, align 8, !tbaa !184
  %i.an = icmp eq i64 %.val24.i, %.val23.val.i
  br i1 %i.an, label %"_ZN4toml2v34node8do_visitIZNS0_5array5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit.thread31", label %.critedge

bb.f:                                             ; preds = %bb.c
  %i.ao = getelementptr i8, ptr %i.s, i64 40
  %.val26.i = load i64, ptr %i.ao, align 8        ; 3 uses
  %i.ap = getelementptr i8, ptr %i.y, i64 40
  %.val25.val.i = load double, ptr %i.ap, align 8, !tbaa !187 ; 2 uses
  %i.aq = and i64 %.val26.i, 9218868437227405312
  %.not.i.i.i.i.i = icmp ne i64 %i.aq, 9218868437227405312
  %i.ar = and i64 %.val26.i, 4503599627370495
  %.not4.i.i.i.i.i = icmp eq i64 %i.ar, 0
  %.0.i.i.i.i.i.not39 = or i1 %.not.i.i.i.i.i, %.not4.i.i.i.i.i ; 2 uses
  %or.cond.i.i.i.i = fcmp ord double %.val25.val.i, 0.000000e+00
  br i1 %or.cond.i.i.i.i, label %_ZN4toml2v34impl10fpclassifyERKd.exit13.thr_comm.i.i.i.i, label %_ZN4toml2v34impl10fpclassifyERKd.exit13.i.i.i.i

_ZN4toml2v34impl10fpclassifyERKd.exit13.thr_comm.i.i.i.i: ; preds = %bb.f
  %i.as = bitcast i64 %.val26.i to double
  %i.at = fcmp oeq double %.val25.val.i, %i.as
  %or.cond = select i1 %.0.i.i.i.i.i.not39, i1 %i.at, i1 false
  br i1 %or.cond, label %"_ZN4toml2v34node8do_visitIZNS0_5array5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit.thread31", label %.critedge

_ZN4toml2v34impl10fpclassifyERKd.exit13.i.i.i.i:  ; preds = %bb.f
  br i1 %.0.i.i.i.i.i.not39, label %.critedge, label %"_ZN4toml2v34node8do_visitIZNS0_5array5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit.thread31"

.split35:                                         ; preds = %bb.c
  %i.au = getelementptr i8, ptr %i.s, i64 40
  %.val28.i = load i8, ptr %i.au, align 8, !tbaa !189, !range !105, !noundef !106
  %i.av = getelementptr i8, ptr %i.y, i64 40
  %.val27.val.i = load i8, ptr %i.av, align 8, !tbaa !189, !range !105, !noundef !106
  %i.aw = icmp eq i8 %.val28.i, %.val27.val.i
  br i1 %i.aw, label %"_ZN4toml2v34node8do_visitIZNS0_5array5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit.thread31", label %.critedge

bb.g:                                             ; preds = %bb.c
  %i.ax = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.az = load i16, ptr %i.ay, align 8, !tbaa !93
  %i.ba = load i16, ptr %i.ax, align 8, !tbaa !93
  %i.bb = icmp eq i16 %i.az, %i.ba
  br i1 %i.bb, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %i.s, i64 42
  %i.bd = load i8, ptr %i.bc, align 2, !tbaa !94
  %i.be = getelementptr inbounds nuw i8, ptr %i.y, i64 42
  %i.bf = load i8, ptr %i.be, align 2, !tbaa !94
  %i.bg = icmp eq i8 %i.bd, %i.bf
  br i1 %i.bg, label %.split33, label %.critedge

.split33:                                         ; preds = %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %i.s, i64 43
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !95
  %i.bj = getelementptr inbounds nuw i8, ptr %i.y, i64 43
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !95
  %i.bl = icmp eq i8 %i.bi, %i.bk
  br i1 %i.bl, label %"_ZN4toml2v34node8do_visitIZNS0_5array5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit.thread31", label %.critedge

bb.i:                                             ; preds = %bb.c
  %i.bm = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.bn = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !97
  %i.bp = load i8, ptr %i.bm, align 8, !tbaa !97
  %i.bq = icmp eq i8 %i.bo, %i.bp
  br i1 %i.bq, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.s, i64 41
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !98
  %i.bt = getelementptr inbounds nuw i8, ptr %i.y, i64 41
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !98
  %i.bv = icmp eq i8 %i.bs, %i.bu
  br i1 %i.bv, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %i.s, i64 42
  %i.bx = load i8, ptr %i.bw, align 2, !tbaa !99
  %i.by = getelementptr inbounds nuw i8, ptr %i.y, i64 42
  %i.bz = load i8, ptr %i.by, align 2, !tbaa !99
  %i.ca = icmp eq i8 %i.bx, %i.bz
  br i1 %i.ca, label %.split38, label %.critedge

.split38:                                         ; preds = %bb.k
  %i.cb = getelementptr inbounds nuw i8, ptr %i.s, i64 44
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !100
  %i.cd = getelementptr inbounds nuw i8, ptr %i.y, i64 44
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !100
  %i.cf = icmp eq i32 %i.cc, %i.ce
  br i1 %i.cf, label %"_ZN4toml2v34node8do_visitIZNS0_5array5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit.thread31", label %.critedge

bb.l:                                             ; preds = %bb.c
  %i.cg = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.ch = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.ci = load i16, ptr %i.ch, align 8, !tbaa !93
  %i.cj = load i16, ptr %i.cg, align 8, !tbaa !93
  %i.ck = icmp eq i16 %i.ci, %i.cj
  br i1 %i.ck, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.cl = getelementptr inbounds nuw i8, ptr %i.s, i64 42
  %i.cm = load i8, ptr %i.cl, align 2, !tbaa !94
  %i.cn = getelementptr inbounds nuw i8, ptr %i.y, i64 42
  %i.co = load i8, ptr %i.cn, align 2, !tbaa !94
  %i.cp = icmp eq i8 %i.cm, %i.co
  br i1 %i.cp, label %_ZN4toml2v3eqERKNS0_4dateES3_.exit.i.i.i.i.i, label %.critedge

_ZN4toml2v3eqERKNS0_4dateES3_.exit.i.i.i.i.i:     ; preds = %bb.m
  %i.cq = getelementptr inbounds nuw i8, ptr %i.s, i64 43
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !95
  %i.cs = getelementptr inbounds nuw i8, ptr %i.y, i64 43
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !95
  %i.cu = icmp eq i8 %i.cr, %i.ct
  br i1 %i.cu, label %bb.n, label %.critedge

bb.n:                                             ; preds = %_ZN4toml2v3eqERKNS0_4dateES3_.exit.i.i.i.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.s, i64 44
  %i.cw = getelementptr inbounds nuw i8, ptr %i.y, i64 44
  %i.cx = load i8, ptr %i.cv, align 4, !tbaa !97
  %i.cy = load i8, ptr %i.cw, align 4, !tbaa !97
  %i.cz = icmp eq i8 %i.cx, %i.cy
  br i1 %i.cz, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.da = getelementptr inbounds nuw i8, ptr %i.s, i64 45
  %i.db = load i8, ptr %i.da, align 1, !tbaa !98
  %i.dc = getelementptr inbounds nuw i8, ptr %i.y, i64 45
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !98
  %i.de = icmp eq i8 %i.db, %i.dd
  br i1 %i.de, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.df = getelementptr inbounds nuw i8, ptr %i.s, i64 46
  %i.dg = load i8, ptr %i.df, align 2, !tbaa !99
  %i.dh = getelementptr inbounds nuw i8, ptr %i.y, i64 46
  %i.di = load i8, ptr %i.dh, align 2, !tbaa !99
  %i.dj = icmp eq i8 %i.dg, %i.di
  br i1 %i.dj, label %_ZN4toml2v3eqERKNS0_4timeES3_.exit.i.i.i.i.i, label %.critedge

_ZN4toml2v3eqERKNS0_4timeES3_.exit.i.i.i.i.i:     ; preds = %bb.p
  %i.dk = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !100
  %i.dm = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !100
  %i.do = icmp eq i32 %i.dl, %i.dn
  br i1 %i.do, label %.split36, label %.critedge

.split36:                                         ; preds = %_ZN4toml2v3eqERKNS0_4timeES3_.exit.i.i.i.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.s, i64 52
  %i.dq = getelementptr inbounds nuw i8, ptr %i.y, i64 52
  %i.dr = getelementptr inbounds nuw i8, ptr %i.s, i64 54
  %i.ds = load i8, ptr %i.dr, align 2, !tbaa !104, !range !105, !noundef !106 ; 2 uses
  %2 = trunc nuw i8 %i.ds to i1
  %i.dt = getelementptr inbounds nuw i8, ptr %i.y, i64 54
  %i.du = load i8, ptr %i.dt, align 2, !tbaa !104, !range !105, !noundef !106
  %i.dv = icmp eq i8 %i.ds, %i.du                 ; 2 uses
  %brmerge.not.i.i.i.i.i.i = and i1 %i.dv, %2
  %.sroa.01.0.copyload.i.i.i.i.i.i = load i16, ptr %i.dp, align 4
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i16, ptr %i.dq, align 4
  %i.dw = icmp eq i16 %.sroa.01.0.copyload.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i
  %i.dx = select i1 %brmerge.not.i.i.i.i.i.i, i1 %i.dw, i1 %i.dv
  br i1 %i.dx, label %"_ZN4toml2v34node8do_visitIZNS0_5array5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit.thread31", label %.critedge

bb.q:                                             ; preds = %bb.c
  unreachable

"_ZN4toml2v34node8do_visitIZNS0_5array5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit": ; preds = %bb.c
  %i.dy = tail call noundef zeroext i1 @_ZN4toml2v35array5equalERKS1_S3_(ptr noundef nonnull align 8 dereferenceable(64) %i.s, ptr noundef nonnull align 8 dereferenceable(64) %i.y) #50, !inline_history !573
  br i1 %i.dy, label %"_ZN4toml2v34node8do_visitIZNS0_5array5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit.thread31", label %.critedge

"_ZN4toml2v34node8do_visitIZNS0_5array5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit.thread31": ; preds = %_ZN4toml2v34impl10fpclassifyERKd.exit13.thr_comm.i.i.i.i, %bb.e, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %_ZN4toml2v34impl10fpclassifyERKd.exit13.i.i.i.i, %.split38, %.split37, %.split36, %.split35, %.split33, %.split, %"_ZN4toml2v34node8do_visitIZNS0_5array5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit"
  %i.dz = add nuw i64 %.02140, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.dz, %i.i
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !574

.critedge:                                        ; preds = %_ZN4toml2v34impl10fpclassifyERKd.exit13.thr_comm.i.i.i.i, %_ZN4toml2v34impl10fpclassifyERKd.exit13.i.i.i.i, %bb.n, %bb.o, %bb.p, %bb.m, %bb.l, %_ZN4toml2v3eqERKNS0_4dateES3_.exit.i.i.i.i.i, %_ZN4toml2v3eqERKNS0_4timeES3_.exit.i.i.i.i.i, %bb.i, %bb.j, %bb.k, %bb.g, %bb.h, %bb.d, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %.split38, %.split37, %.split36, %.split35, %.split33, %.split, %.lr.ph, %"_ZN4toml2v34node8do_visitIZNS0_5array5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit.thread31", %"_ZN4toml2v34node8do_visitIZNS0_5array5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit", %.preheader, %bb.b, %bb.a
  %.4 = phi i1 [ false, %bb.b ], [ true, %bb.a ], [ true, %.preheader ], [ true, %"_ZN4toml2v34node8do_visitIZNS0_5array5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit.thread31" ], [ false, %.lr.ph ], [ false, %.split ], [ false, %.split33 ], [ false, %.split35 ], [ false, %.split36 ], [ false, %.split37 ], [ false, %.split38 ], [ false, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ false, %bb.d ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.i ], [ false, %_ZN4toml2v3eqERKNS0_4timeES3_.exit.i.i.i.i.i ], [ false, %_ZN4toml2v3eqERKNS0_4dateES3_.exit.i.i.i.i.i ], [ false, %bb.l ], [ false, %bb.m ], [ false, %bb.p ], [ false, %bb.o ], [ false, %bb.n ], [ false, %_ZN4toml2v34impl10fpclassifyERKd.exit13.i.i.i.i ], [ false, %_ZN4toml2v34impl10fpclassifyERKd.exit13.thr_comm.i.i.i.i ], [ false, %"_ZN4toml2v34node8do_visitIZNS0_5array5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit" ]
  ret i1 %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4toml2v35tableC2Ev(ptr noundef nonnull align 8 dereferenceable(89) initializes((0, 40), (48, 52), (56, 64)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35tableE, i64 16), ptr %0, align 8, !tbaa !75
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store i32 0, ptr %i.b, align 8, !tbaa !199
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.c, align 8, !tbaa !200
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.b, ptr %i.d, align 8, !tbaa !198
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.b, ptr %i.e, align 8, !tbaa !201
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 0, ptr %i.f, align 8, !tbaa !158
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 0, ptr %i.g, align 8, !tbaa !145
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4toml2v35tableD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) initializes((0, 8)) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35tableE, i64 16), ptr %0, align 8, !tbaa !75
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !200
  invoke void @_ZNSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #53
  unreachable

_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEED2Ev.exit: ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v34nodeE, i64 16), ptr %0, align 8, !tbaa !75
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !151  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZN4toml2v34nodeD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEED2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.h, align 8, !tbaa !153
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !154
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !75
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #50, !inline_history !18
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !75
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #50, !inline_history !18
  br label %_ZN4toml2v34nodeD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 8, !tbaa !155
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.k, %bb.f ], [ %i.u, %bb.g ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.v, label %bb.h, label %_ZN4toml2v34nodeD2Ev.exit, !prof !156

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #50, !inline_history !195
  br label %_ZN4toml2v34nodeD2Ev.exit

_ZN4toml2v34nodeD2Ev.exit:                        ; preds = %_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEED2Ev.exit, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !200
  invoke void @_ZNSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #53
  unreachable

_ZNSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4toml2v35tableD0Ev(ptr noundef nonnull align 8 dereferenceable(89) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN4toml2v35tableD1Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %0) #50
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #51
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v35tableC2EPKNS0_4impl15table_init_pairES5_(ptr noundef nonnull align 8 dereferenceable(89) initializes((0, 40), (48, 52), (56, 64)) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35tableE, i64 16), ptr %0, align 8, !tbaa !75
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store i32 0, ptr %i.c, align 8, !tbaa !199
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.d, align 8, !tbaa !200
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.c, ptr %i.e, align 8, !tbaa !198
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.c, ptr %i.f, align 8, !tbaa !201
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 0, ptr %i.g, align 8, !tbaa !158
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 0, ptr %i.h, align 8, !tbaa !145
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.i = icmp ule ptr %1, %2
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp eq ptr %1, %2
  br i1 %i.j, label %.loopexit, label %.preheader, !prof !156

.preheader:                                       ; preds = %bb.a, %bb.c
  %.016 = phi ptr [ %i.n, %bb.c ], [ %1, %bb.a ]  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.016, i64 64 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !175
  %.not15 = icmp eq ptr %i.l, null
  br i1 %.not15, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.m = invoke { ptr, i8 } @_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEE16insert_or_assignIS7_EESA_ISt17_Rb_tree_iteratorISC_EbEOS2_OT_(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %.016, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b, %.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %.016, i64 72 ; 2 uses
  %.not = icmp eq ptr %i.n, %2
  br i1 %.not, label %.loopexit, label %.preheader, !llvm.loop !575

bb.d:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.b) #50
  tail call void @_ZN4toml2v34nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #50
  resume { ptr, i32 } %i.o

.loopexit:                                        ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEE16insert_or_assignIS7_EESA_ISt17_Rb_tree_iteratorISC_EbEOS2_OT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::tuple.110", align 8    ; 4 uses
  %4 = alloca %"class.std::tuple.113", align 8    ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !200  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN4toml2v35table5equalERKS1_S3_:bb.a
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !75
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef zeroext i8 %i.ae(ptr noundef nonnull align 8 dereferenceable(40) %i.ab) #52
  %.not20 = icmp eq i8 %i.z, %i.af
  br i1 %.not20, label %bb.e, label %.critedge

bb.e:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread30
  switch i8 %i.z, label %bb.s [
    i8 1, label %.split
    i8 2, label %"_ZN4toml2v34node8do_visitIZNS0_5table5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit"
    i8 3, label %bb.f
    i8 4, label %.split39
    i8 5, label %bb.h
    i8 6, label %.split37
    i8 7, label %bb.i
    i8 8, label %bb.k
    i8 9, label %bb.n
  ]

.split:                                           ; preds = %bb.e
  %i.ag = tail call noundef zeroext i1 @_ZN4toml2v35table5equalERKS1_S3_(ptr noundef nonnull align 8 dereferenceable(89) %i.v, ptr noundef nonnull align 8 dereferenceable(89) %i.ab) #52, !inline_history !608
  br i1 %i.ag, label %"_ZN4toml2v34node8do_visitIZNS0_5table5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit.thread33", label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr i8, ptr %i.v, i64 40
  %.val20.i = load ptr, ptr %i.ah, align 8, !tbaa !67
  %i.ai = getelementptr i8, ptr %i.v, i64 48
  %.val21.i = load i64, ptr %i.ai, align 8, !tbaa !68 ; 3 uses
  %i.aj = getelementptr i8, ptr %i.ab, i64 40
  %.val.val.i = load ptr, ptr %i.aj, align 8, !tbaa !67
  %i.ak = getelementptr i8, ptr %i.ab, i64 48
  %.val.val22.i = load i64, ptr %i.ak, align 8, !tbaa !68
  %i.al = icmp eq i64 %.val21.i, %.val.val22.i
  br i1 %i.al, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.am = icmp eq i64 %.val21.i, 0
  br i1 %i.am, label %"_ZN4toml2v34node8do_visitIZNS0_5table5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit.thread33", label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.g
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr readonly %.val20.i, ptr readonly %.val.val.i, i64 %.val21.i), !inline_history !609
  %i.an = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.an, label %"_ZN4toml2v34node8do_visitIZNS0_5table5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit.thread33", label %.critedge

.split39:                                         ; preds = %bb.e
  %i.ao = getelementptr i8, ptr %i.v, i64 40
  %.val24.i = load i64, ptr %i.ao, align 8, !tbaa !184
  %i.ap = getelementptr i8, ptr %i.ab, i64 40
  %.val23.val.i = load i64, ptr %i.ap, align 8, !tbaa !184
  %i.aq = icmp eq i64 %.val24.i, %.val23.val.i
  br i1 %i.aq, label %"_ZN4toml2v34node8do_visitIZNS0_5table5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit.thread33", label %.critedge

bb.h:                                             ; preds = %bb.e
  %i.ar = getelementptr i8, ptr %i.v, i64 40
  %.val26.i = load i64, ptr %i.ar, align 8        ; 3 uses
  %i.as = getelementptr i8, ptr %i.ab, i64 40
  %.val25.val.i = load double, ptr %i.as, align 8, !tbaa !187 ; 2 uses
  %i.at = and i64 %.val26.i, 9218868437227405312
  %.not.i.i.i.i.i = icmp ne i64 %i.at, 9218868437227405312
  %i.au = and i64 %.val26.i, 4503599627370495
  %.not4.i.i.i.i.i = icmp eq i64 %i.au, 0
  %.0.i.i.i.i.i.not43 = or i1 %.not.i.i.i.i.i, %.not4.i.i.i.i.i ; 2 uses
  %or.cond.i.i.i.i = fcmp ord double %.val25.val.i, 0.000000e+00
  br i1 %or.cond.i.i.i.i, label %_ZN4toml2v34impl10fpclassifyERKd.exit13.thr_comm.i.i.i.i, label %_ZN4toml2v34impl10fpclassifyERKd.exit13.i.i.i.i

_ZN4toml2v34impl10fpclassifyERKd.exit13.thr_comm.i.i.i.i: ; preds = %bb.h
  %i.av = bitcast i64 %.val26.i to double
  %i.aw = fcmp oeq double %.val25.val.i, %i.av
  %or.cond = select i1 %.0.i.i.i.i.i.not43, i1 %i.aw, i1 false
  br i1 %or.cond, label %"_ZN4toml2v34node8do_visitIZNS0_5table5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit.thread33", label %.critedge

_ZN4toml2v34impl10fpclassifyERKd.exit13.i.i.i.i:  ; preds = %bb.h
  br i1 %.0.i.i.i.i.i.not43, label %.critedge, label %"_ZN4toml2v34node8do_visitIZNS0_5table5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit.thread33"

.split37:                                         ; preds = %bb.e
  %i.ax = getelementptr i8, ptr %i.v, i64 40
  %.val28.i = load i8, ptr %i.ax, align 8, !tbaa !189, !range !105, !noundef !106
  %i.ay = getelementptr i8, ptr %i.ab, i64 40
  %.val27.val.i = load i8, ptr %i.ay, align 8, !tbaa !189, !range !105, !noundef !106
  %i.az = icmp eq i8 %.val28.i, %.val27.val.i
  br i1 %i.az, label %"_ZN4toml2v34node8do_visitIZNS0_5table5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit.thread33", label %.critedge

bb.i:                                             ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.bc = load i16, ptr %i.bb, align 8, !tbaa !93
  %i.bd = load i16, ptr %i.ba, align 8, !tbaa !93
  %i.be = icmp eq i16 %i.bc, %i.bd
  br i1 %i.be, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.v, i64 42
  %i.bg = load i8, ptr %i.bf, align 2, !tbaa !94
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ab, i64 42
  %i.bi = load i8, ptr %i.bh, align 2, !tbaa !94
  %i.bj = icmp eq i8 %i.bg, %i.bi
  br i1 %i.bj, label %.split35, label %.critedge

.split35:                                         ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %i.v, i64 43
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !95
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ab, i64 43
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !95
  %i.bo = icmp eq i8 %i.bl, %i.bn
  br i1 %i.bo, label %"_ZN4toml2v34node8do_visitIZNS0_5table5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit.thread33", label %.critedge

bb.k:                                             ; preds = %bb.e
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.bq = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.br = load i8, ptr %i.bq, align 8, !tbaa !97
  %i.bs = load i8, ptr %i.bp, align 8, !tbaa !97
  %i.bt = icmp eq i8 %i.br, %i.bs
  br i1 %i.bt, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.bu = getelementptr inbounds nuw i8, ptr %i.v, i64 41
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !98
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ab, i64 41
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !98
  %i.by = icmp eq i8 %i.bv, %i.bx
  br i1 %i.by, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %i.v, i64 42
  %i.ca = load i8, ptr %i.bz, align 2, !tbaa !99
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ab, i64 42
  %i.cc = load i8, ptr %i.cb, align 2, !tbaa !99
  %i.cd = icmp eq i8 %i.ca, %i.cc
  br i1 %i.cd, label %.split40, label %.critedge

.split40:                                         ; preds = %bb.m
  %i.ce = getelementptr inbounds nuw i8, ptr %i.v, i64 44
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !100
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ab, i64 44
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !100
  %i.ci = icmp eq i32 %i.cf, %i.ch
  br i1 %i.ci, label %"_ZN4toml2v34node8do_visitIZNS0_5table5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit.thread33", label %.critedge

bb.n:                                             ; preds = %bb.e
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ck = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.cl = load i16, ptr %i.ck, align 8, !tbaa !93
  %i.cm = load i16, ptr %i.cj, align 8, !tbaa !93
  %i.cn = icmp eq i16 %i.cl, %i.cm
  br i1 %i.cn, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.co = getelementptr inbounds nuw i8, ptr %i.v, i64 42
  %i.cp = load i8, ptr %i.co, align 2, !tbaa !94
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ab, i64 42
  %i.cr = load i8, ptr %i.cq, align 2, !tbaa !94
  %i.cs = icmp eq i8 %i.cp, %i.cr
  br i1 %i.cs, label %_ZN4toml2v3eqERKNS0_4dateES3_.exit.i.i.i.i.i, label %.critedge

_ZN4toml2v3eqERKNS0_4dateES3_.exit.i.i.i.i.i:     ; preds = %bb.o
  %i.ct = getelementptr inbounds nuw i8, ptr %i.v, i64 43
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !95
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ab, i64 43
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !95
  %i.cx = icmp eq i8 %i.cu, %i.cw
  br i1 %i.cx, label %bb.p, label %.critedge

bb.p:                                             ; preds = %_ZN4toml2v3eqERKNS0_4dateES3_.exit.i.i.i.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.v, i64 44
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ab, i64 44
  %i.da = load i8, ptr %i.cy, align 4, !tbaa !97
  %i.db = load i8, ptr %i.cz, align 4, !tbaa !97
  %i.dc = icmp eq i8 %i.da, %i.db
  br i1 %i.dc, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  %i.dd = getelementptr inbounds nuw i8, ptr %i.v, i64 45
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !98
  %i.df = getelementptr inbounds nuw i8, ptr %i.ab, i64 45
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !98
  %i.dh = icmp eq i8 %i.de, %i.dg
  br i1 %i.dh, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.di = getelementptr inbounds nuw i8, ptr %i.v, i64 46
  %i.dj = load i8, ptr %i.di, align 2, !tbaa !99
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ab, i64 46
  %i.dl = load i8, ptr %i.dk, align 2, !tbaa !99
  %i.dm = icmp eq i8 %i.dj, %i.dl
  br i1 %i.dm, label %_ZN4toml2v3eqERKNS0_4timeES3_.exit.i.i.i.i.i, label %.critedge

_ZN4toml2v3eqERKNS0_4timeES3_.exit.i.i.i.i.i:     ; preds = %bb.r
  %i.dn = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !100
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !100
  %i.dr = icmp eq i32 %i.do, %i.dq
  br i1 %i.dr, label %.split38, label %.critedge

.split38:                                         ; preds = %_ZN4toml2v3eqERKNS0_4timeES3_.exit.i.i.i.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.v, i64 52
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ab, i64 52
  %i.du = getelementptr inbounds nuw i8, ptr %i.v, i64 54
  %i.dv = load i8, ptr %i.du, align 2, !tbaa !104, !range !105, !noundef !106 ; 2 uses
  %2 = trunc nuw i8 %i.dv to i1
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ab, i64 54
  %i.dx = load i8, ptr %i.dw, align 2, !tbaa !104, !range !105, !noundef !106
  %i.dy = icmp eq i8 %i.dv, %i.dx                 ; 2 uses
  %brmerge.not.i.i.i.i.i.i = and i1 %i.dy, %2
  %.sroa.01.0.copyload.i.i.i.i.i.i = load i16, ptr %i.ds, align 4
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i16, ptr %i.dt, align 4
  %i.dz = icmp eq i16 %.sroa.01.0.copyload.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i
  %i.ea = select i1 %brmerge.not.i.i.i.i.i.i, i1 %i.dz, i1 %i.dy
  br i1 %i.ea, label %"_ZN4toml2v34node8do_visitIZNS0_5table5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit.thread33", label %.critedge

bb.s:                                             ; preds = %bb.e
  unreachable

"_ZN4toml2v34node8do_visitIZNS0_5table5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit": ; preds = %bb.e
  %i.eb = tail call noundef zeroext i1 @_ZN4toml2v35array5equalERKS1_S3_(ptr noundef nonnull align 8 dereferenceable(64) %i.v, ptr noundef nonnull align 8 dereferenceable(64) %i.ab) #50, !inline_history !610
  br i1 %i.eb, label %"_ZN4toml2v34node8do_visitIZNS0_5table5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit.thread33", label %.critedge

"_ZN4toml2v34node8do_visitIZNS0_5table5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit.thread33": ; preds = %_ZN4toml2v34impl10fpclassifyERKd.exit13.thr_comm.i.i.i.i, %bb.g, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %_ZN4toml2v34impl10fpclassifyERKd.exit13.i.i.i.i, %.split40, %.split39, %.split38, %.split37, %.split35, %.split, %"_ZN4toml2v34node8do_visitIZNS0_5table5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit"
  %i.ec = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.026.046) #52 ; 2 uses
  %i.ed = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.024.047) #52
  %.not41 = icmp eq ptr %i.ec, %i.h
  br i1 %.not41, label %.critedge, label %.lr.ph, !llvm.loop !611

.critedge:                                        ; preds = %_ZN4toml2v34impl10fpclassifyERKd.exit13.thr_comm.i.i.i.i, %_ZN4toml2v34impl10fpclassifyERKd.exit13.i.i.i.i, %bb.p, %bb.q, %bb.r, %bb.o, %bb.n, %_ZN4toml2v3eqERKNS0_4dateES3_.exit.i.i.i.i.i, %_ZN4toml2v3eqERKNS0_4timeES3_.exit.i.i.i.i.i, %bb.k, %bb.l, %bb.m, %bb.i, %bb.j, %bb.f, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %.lr.ph, %.split40, %.split39, %.split38, %.split37, %.split35, %.split, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread30, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %"_ZN4toml2v34node8do_visitIZNS0_5table5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit.thread33", %"_ZN4toml2v34node8do_visitIZNS0_5table5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit", %bb.c, %bb.b, %bb.a
  %.4 = phi i1 [ false, %bb.b ], [ true, %bb.a ], [ true, %bb.c ], [ false, %_ZN4toml2v34impl10fpclassifyERKd.exit13.thr_comm.i.i.i.i ], [ false, %_ZN4toml2v34impl10fpclassifyERKd.exit13.i.i.i.i ], [ false, %bb.p ], [ false, %bb.q ], [ false, %bb.r ], [ false, %bb.o ], [ false, %bb.n ], [ false, %_ZN4toml2v3eqERKNS0_4dateES3_.exit.i.i.i.i.i ], [ false, %_ZN4toml2v3eqERKNS0_4timeES3_.exit.i.i.i.i.i ], [ false, %bb.k ], [ false, %bb.l ], [ false, %bb.m ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.f ], [ false, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ false, %.lr.ph ], [ false, %.split40 ], [ false, %.split39 ], [ false, %.split38 ], [ false, %.split37 ], [ false, %.split35 ], [ false, %.split ], [ false, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread30 ], [ false, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ true, %"_ZN4toml2v34node8do_visitIZNS0_5table5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit.thread33" ], [ false, %"_ZN4toml2v34node8do_visitIZNS0_5table5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit" ]
  ret i1 %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN4toml2v34impl8is_asciiEPKcm(ptr nofree noundef nonnull readonly captures(address) %0, i64 noundef %1) local_unnamed_addr #21 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.c = and i64 %1, -16                          ; 2 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.e = bitcast <2 x i64> %i.i to <16 x i8>
  %i.f = icmp slt <16 x i8> %i.e, zeroinitializer
  %i.g = bitcast <16 x i1> %i.f to i16
  %.not32 = icmp eq i16 %i.g, 0
  br i1 %.not32, label %._crit_edge._crit_edge, label %.critedge

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.pre = ptrtoaddr ptr %i.j to i64
  br label %bb.b

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.02634 = phi <2 x i64> [ %i.i, %.lr.ph ], [ zeroinitializer, %.lr.ph.preheader ]
  %.02733 = phi ptr [ %i.j, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 2 uses
  %i.h = load <2 x i64>, ptr %.02733, align 1, !tbaa !70
  %i.i = or <2 x i64> %i.h, %.02634               ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02733, i64 16 ; 4 uses
  %i.k = icmp ult ptr %i.j, %i.d
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !29

bb.b:                                             ; preds = %._crit_edge._crit_edge, %bb.a
  %.22943.pre-phi = phi i64 [ %.pre, %._crit_edge._crit_edge ], [ %i.a, %bb.a ]
  %.229 = phi ptr [ %i.j, %._crit_edge._crit_edge ], [ %0, %bb.a ] ; 3 uses
  %i.l = icmp ult ptr %.229, %i.b
  br i1 %i.l, label %.lr.ph38.preheader, label %.critedge

.lr.ph38.preheader:                               ; preds = %bb.b
  %i.m = add i64 %1, %i.a
  %i.n = sub i64 %i.m, %.22943.pre-phi
  %scevgep = getelementptr i8, ptr %.229, i64 %i.n
  br label %.lr.ph38

.lr.ph38:                                         ; preds = %.lr.ph38, %.lr.ph38.preheader
  %.33036 = phi ptr [ %i.q, %.lr.ph38 ], [ %.229, %.lr.ph38.preheader ] ; 2 uses
  %i.o = load i8, ptr %.33036, align 1, !tbaa !70
  %i.p = icmp sgt i8 %i.o, -1                     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.33036, i64 1 ; 2 uses
  %exitcond.not = icmp ne ptr %i.q, %scevgep
  %or.cond.not = select i1 %i.p, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph38, label %.critedge, !llvm.loop !30

.critedge:                                        ; preds = %.lr.ph38, %bb.b, %._crit_edge
  %.3 = phi i1 [ false, %._crit_edge ], [ true, %bb.b ], [ %i.p, %.lr.ph38 ]
  ret i1 %.3
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v34impl7impl_ex6parser11parse_arrayEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(3496) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  %3 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  %5 = alloca %"struct.(anonymous namespace)::escaped_codepoint", align 8 ; 3 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  %.sroa.6.i = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %8 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %9 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  %10 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  %11 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  %12 = alloca %"struct.(anonymous namespace)::escaped_codepoint", align 8 ; 3 uses
  %13 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  %.sroa.6 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %14 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %15 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %16 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %17 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %18 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %19 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %20 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %21 = alloca %"class.std::unique_ptr", align 8  ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 3192 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 3472 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !213
  store i64 5, ptr %i.b, align 8, !tbaa !124
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 3480 ; 2 uses
  store ptr @.str.12, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !125
  %.sink180.sroa.gep = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sink180.sroa.gep310 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sink182.sroa.gep = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sink182.sroa.gep311 = getelementptr inbounds nuw i8, ptr %3, i64 8
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !240
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.g, !prof !156

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #50
  store i64 23, ptr %14, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr @.str.13, ptr %i.d, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %1, ptr noundef nonnull align 8 dereferenceable(16) %14) #54
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.g, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit35

bb.f:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #50
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit35

bb.g:                                             ; preds = %bb.b
  %i.g = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #55
          to label %bb.h unwind label %bb.e       ; 7 uses

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4toml2v35arrayC1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.g) #50
  store ptr %i.g, ptr %0, align 8, !tbaa !175
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 5 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.h
  %i.k = phi i1 [ false, %bb.h ], [ %.be, %.backedge.backedge ] ; 2 uses
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %.backedge
  %i.l = invoke noundef zeroext i1 @_ZN4toml2v34impl7impl_ex6parser26consume_leading_whitespaceEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %.critedge
  br i1 %i.l, label %.critedge.backedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !240  ; 4 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %.thread, label %bb.k, !prof !156

bb.k:                                             ; preds = %bb.j
  %i.n = load i32, ptr %i.m, align 4, !tbaa !242  ; 5 uses
  %i.o = add i32 %i.n, -11
  %i.p = icmp ult i32 %i.o, 2
  br i1 %i.p, label %bb.l, label %bb.m, !prof !243

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #50
  store i64 72, ptr %9, align 8
  br label %.invoke178

bb.m:                                             ; preds = %bb.k
  switch i32 %i.n, label %bb.as [
    i32 13, label %bb.n
    i32 10, label %bb.r
    i32 35, label %bb.s
    i32 44, label %bb.ai
    i32 93, label %bb.ar
  ]

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %.noexc21 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc21:                                         ; preds = %bb.n
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !240  ; 3 uses
  %.not4.i = icmp eq ptr %i.q, null
end_hunk_2
begin_hunk_3_@_ZN4toml2v34impl7impl_ex6parser11parse_arrayEv:bb.a
  %next.gep233 = getelementptr i8, ptr %i.cr, i64 %i.dt ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !635)
  call void @llvm.experimental.noalias.scope.decl(metadata !636)
  %i.du = getelementptr i8, ptr %next.gep233, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep233, align 8, !tbaa !175, !alias.scope !637
  %wide.load234 = load <2 x i64>, ptr %i.du, align 8, !tbaa !175, !alias.scope !637
  %i.dv = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !175, !alias.scope !638, !noalias !639
  store <2 x i64> %wide.load234, ptr %i.dv, align 8, !tbaa !175, !alias.scope !638, !noalias !639
  %i.dw = getelementptr i8, ptr %next.gep233, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep233, align 8, !tbaa !175, !alias.scope !637
  store <2 x ptr> splat (ptr null), ptr %i.dw, align 8, !tbaa !175, !alias.scope !637
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dx = icmp eq i64 %index.next, %n.vec
  br i1 %i.dx, label %middle.block, label %vector.body, !llvm.loop !627

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dm, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader260

.lr.ph.i.i.i.i.preheader260:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.dg, %vector.memcheck ], [ %i.dg, %.lr.ph.i.i.i.i.preheader ], [ %i.dr, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.cr, %vector.memcheck ], [ %i.cr, %.lr.ph.i.i.i.i.preheader ], [ %i.ds, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader260, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ea, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader260 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.dz, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader260 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !635)
  call void @llvm.experimental.noalias.scope.decl(metadata !636)
  %i.dy = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !175, !alias.scope !636
  store i64 %i.dy, ptr %.012.i.i.i.i, align 8, !tbaa !175, !alias.scope !635
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !175, !alias.scope !636
  %i.dz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i46 = icmp eq ptr %i.dz, %i.cs
  br i1 %.not.i.i.i.i46, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !628

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc48
  %.0.lcssa.i.i.i.i = phi ptr [ %i.dg, %.noexc48 ], [ %i.dr, %middle.block ], [ %i.ea, %.lr.ph.i.i.i.i ]
  %i.eb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.cr, null
  br i1 %.not.i23.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.ec = load ptr, ptr %i.i, align 8, !tbaa !194
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = sub i64 %i.ed, %i.cx
  call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef %i.ee) #51
  br label %bb.bh

bb.bh:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.bg
  store ptr %i.dg, ptr %i.h, align 8, !tbaa !174
  store ptr %i.eb, ptr %i.j, align 8, !tbaa !173
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.de
  store ptr %i.ef, ptr %i.i, align 8, !tbaa !194
  %.pr56 = load ptr, ptr %21, align 8, !tbaa !175 ; 3 uses
  %.not.i30 = icmp eq ptr %.pr56, null
  br i1 %.not.i30, label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit32, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i31

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i31: ; preds = %bb.bh
  %i.eg = load ptr, ptr %.pr56, align 8, !tbaa !75
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(40) %.pr56) #50, !inline_history !19
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit32

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit32: ; preds = %.thread57, %bb.bh, %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #50
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit32, %bb.ak
  %.be = phi i1 [ false, %bb.ak ], [ true, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit32 ]
  br label %.backedge, !llvm.loop !629

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i, %.loopexit.split-lp69.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bc
  %.pn = phi { ptr, i32 } [ %i.cm, %bb.bc ], [ %lpad.loopexit.split-lp272, %.loopexit.split-lp69.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp272, %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #50
  br label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i34

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i34: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ah, %bb.an, %bb.aq, %bb.ay, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit, %.loopexit.split-lp.i
  %.pn17 = phi { ptr, i32 } [ %i.an, %bb.ah ], [ %i.aq, %bb.an ], [ %.pn, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit ], [ %i.as, %bb.aq ], [ %i.bd, %bb.ay ], [ %.pn.i, %.loopexit.split-lp.i ], [ %lpad.loopexit.split-lp269, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.ej = load ptr, ptr %i.g, align 8, !tbaa !75
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = load ptr, ptr %i.ek, align 8
  call void %i.el(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #50, !inline_history !19
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit35

bb.bi:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false), !tbaa.struct !213
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit35: ; preds = %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i34, %bb.f, %bb.e
  %.pn19 = phi { ptr, i32 } [ %i.f, %bb.f ], [ %i.e, %bb.e ], [ %.pn17, %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i34 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false), !tbaa.struct !213
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  resume { ptr, i32 } %.pn19
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3192 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !240, !nonnull !106, !noundef !106
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3184
  %i.e = load i64, ptr %i.c, align 8, !tbaa !155
  store i64 %i.e, ptr %i.d, align 8, !tbaa !155
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3080 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !248  ; 3 uses
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i64 %i.g, -1                         ; 2 uses
  store i64 %i.h, ptr %i.f, align 8, !tbaa !248
  %.not9.i = icmp eq i64 %i.h, 0
  br i1 %.not9.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3072
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !249
  br label %_ZN12_GLOBAL__N_120utf8_buffered_reader9read_nextEv.exit

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3064
  %i.m = load i64, ptr %i.l, align 8, !tbaa !250
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3056
  %i.o = load i64, ptr %i.n, align 8, !tbaa !251
  %reass.sub = sub i64 %i.m, %i.g
  %i.p = add i64 %reass.sub, 1
  %i.q = add i64 %i.p, %i.o
  %i.r = urem i64 %i.q, 127
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %i.r
  br label %_ZN12_GLOBAL__N_120utf8_buffered_reader9read_nextEv.exit

bb.e:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 3056 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !251  ; 4 uses
  %.not6.i = icmp eq i64 %i.v, 0
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 3072 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not7.i = icmp eq ptr %i.x, null               ; 2 uses
  %i.y = select i1 %.not6.i, i1 %.not7.i, i1 false
  br i1 %i.y, label %bb.f, label %bb.g, !prof !156

bb.f:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %0, align 8, !tbaa !252, !nonnull !106, !align !253 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !75
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef ptr %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.z), !inline_history !32 ; 2 uses
  store ptr %i.ad, ptr %i.w, align 8, !tbaa !249
  br label %_ZN12_GLOBAL__N_120utf8_buffered_reader9read_nextEv.exit

bb.g:                                             ; preds = %bb.e
  br i1 %.not7.i, label %_ZN12_GLOBAL__N_120utf8_buffered_reader9read_nextEv.exit.thread, label %bb.h

_ZN12_GLOBAL__N_120utf8_buffered_reader9read_nextEv.exit.thread: ; preds = %bb.g
  store ptr null, ptr %i.a, align 8, !tbaa !240
  br label %_ZN4toml2v34impl13is_whitespaceEDi.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ae = icmp ult i64 %i.v, 127
  br i1 %i.ae, label %bb.i, label %bb.j, !prof !156

bb.i:                                             ; preds = %bb.h
  %i.af = add nuw nsw i64 %i.v, 1
  store i64 %i.af, ptr %i.u, align 8, !tbaa !251
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 3064 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !250 ; 2 uses
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !250
  %i.aj = add i64 %i.ah, 127
  %i.ak = urem i64 %i.aj, 127
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sink13.i = phi i64 [ %i.ak, %bb.j ], [ %i.v, %bb.i ]
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.sink13.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  %i.am = load ptr, ptr %0, align 8, !tbaa !252, !nonnull !106, !align !253 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !75
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call noundef ptr %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %i.am), !inline_history !32 ; 2 uses
  store ptr %i.aq, ptr %i.w, align 8, !tbaa !249
  br label %_ZN12_GLOBAL__N_120utf8_buffered_reader9read_nextEv.exit

_ZN12_GLOBAL__N_120utf8_buffered_reader9read_nextEv.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.k
  %.0.i = phi ptr [ %i.s, %bb.d ], [ %i.j, %bb.c ], [ %i.ad, %bb.f ], [ %i.aq, %bb.k ] ; 5 uses
  store ptr %.0.i, ptr %i.a, align 8, !tbaa !240
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 3464
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !254, !range !105, !noundef !106
  %1 = trunc nuw i8 %i.as to i1
  %.not = icmp ne ptr %.0.i, null
  %or.cond.not = and i1 %.not, %1
  br i1 %or.cond.not, label %bb.l, label %_ZN4toml2v34impl13is_whitespaceEDi.exit.thread

bb.l:                                             ; preds = %_ZN12_GLOBAL__N_120utf8_buffered_reader9read_nextEv.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 3465
  %i.au = load i8, ptr %i.at, align 1, !tbaa !255, !range !105, !noundef !106
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = load i32, ptr %.0.i, align 4, !tbaa !242 ; 6 uses
  switch i32 %i.aw, label %bb.n [
    i32 32, label %_ZN4toml2v34impl13is_whitespaceEDi.exit.thread
    i32 9, label %_ZN4toml2v34impl13is_whitespaceEDi.exit.thread
  ]

bb.n:                                             ; preds = %bb.m
  %i.ax = add i32 %i.aw, -65280
  %or.cond.i.i.i = icmp ult i32 %i.ax, -65120
  br i1 %or.cond.i.i.i, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = trunc nuw i32 %i.aw to i16              ; 4 uses
  %.lhs.trunc.i.i.i = add i16 %i.ay, -160
  %i.az = udiv i16 %.lhs.trunc.i.i.i, 1018        ; 2 uses
  %.zext.i.i.i = zext nneg i16 %i.az to i64
  %i.ba = shl nuw i64 1, %.zext.i.i.i
  %i.bb = and i64 %i.ba, 9223372036854773598
  %.not.i.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not.i.i.i, label %bb.p, label %_ZN4toml2v34impl13is_whitespaceEDi.exit

bb.p:                                             ; preds = %bb.o
  switch i16 %i.ay, label %bb.q [
    i16 -257, label %_ZN4toml2v34impl13is_whitespaceEDi.exit.thread
    i16 12288, label %_ZN4toml2v34impl13is_whitespaceEDi.exit.thread
    i16 160, label %_ZN4toml2v34impl13is_whitespaceEDi.exit.thread
  ]

bb.q:                                             ; preds = %bb.p
  switch i16 %i.az, label %_ZN4toml2v34impl13is_whitespaceEDi.exit [
    i16 5, label %_ZN4toml2v34impl24is_horizontal_whitespaceEDi.exit.i
    i16 7, label %.split.i
  ]

.split.i:                                         ; preds = %bb.q
  %i.bc = add nsw i32 %i.aw, -8192
  %or.cond7.i.i.i = icmp ult i32 %i.bc, 12
  br i1 %or.cond7.i.i.i, label %_ZN4toml2v34impl13is_whitespaceEDi.exit.thread, label %switch.early.test.i

switch.early.test.i:                              ; preds = %.split.i
  switch i16 %i.ay, label %_ZN4toml2v34impl13is_whitespaceEDi.exit [
    i16 8288, label %_ZN4toml2v34impl13is_whitespaceEDi.exit.thread
    i16 8287, label %_ZN4toml2v34impl13is_whitespaceEDi.exit.thread
    i16 8239, label %_ZN4toml2v34impl13is_whitespaceEDi.exit.thread
  ]

_ZN4toml2v34impl24is_horizontal_whitespaceEDi.exit.i: ; preds = %bb.q
  switch i16 %i.ay, label %_ZN4toml2v34impl13is_whitespaceEDi.exit [
    i16 6158, label %_ZN4toml2v34impl13is_whitespaceEDi.exit.thread
    i16 5760, label %_ZN4toml2v34impl13is_whitespaceEDi.exit.thread
  ]

bb.r:                                             ; preds = %bb.n
  %i.bd = add i32 %i.aw, -10
  %i.be = icmp ult i32 %i.bd, 4
  br i1 %i.be, label %_ZN4toml2v34impl13is_whitespaceEDi.exit.thread, label %_ZN4toml2v34impl13is_whitespaceEDi.exit

_ZN4toml2v34impl13is_whitespaceEDi.exit:          ; preds = %bb.o, %bb.q, %switch.early.test.i, %_ZN4toml2v34impl24is_horizontal_whitespaceEDi.exit.i, %bb.r
  switch i32 %i.aw, label %bb.s [
    i32 8233, label %_ZN4toml2v34impl13is_whitespaceEDi.exit.thread
    i32 8232, label %_ZN4toml2v34impl13is_whitespaceEDi.exit.thread
    i32 133, label %_ZN4toml2v34impl13is_whitespaceEDi.exit.thread
  ]

bb.s:                                             ; preds = %_ZN4toml2v34impl13is_whitespaceEDi.exit, %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !247 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 3440
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !68
  %i.bj = sub i64 4611686018427387903, %i.bi
  %i.bk = icmp ult i64 %i.bj, %i.bg
  br i1 %i.bk, label %bb.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.t:                                             ; preds = %bb.s
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.65) #54
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %bb.s
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 3432
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.bn = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, ptr noundef nonnull %i.bm, i64 noundef %i.bg) ; 0 uses
  br label %_ZN4toml2v34impl13is_whitespaceEDi.exit.thread

_ZN4toml2v34impl13is_whitespaceEDi.exit.thread:   ; preds = %_ZN4toml2v34impl13is_whitespaceEDi.exit, %_ZN4toml2v34impl13is_whitespaceEDi.exit, %_ZN4toml2v34impl13is_whitespaceEDi.exit, %.split.i, %bb.p, %bb.p, %bb.p, %bb.m, %bb.m, %bb.r, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %_ZN4toml2v34impl24is_horizontal_whitespaceEDi.exit.i, %_ZN4toml2v34impl24is_horizontal_whitespaceEDi.exit.i, %_ZN12_GLOBAL__N_120utf8_buffered_reader9read_nextEv.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit, %_ZN12_GLOBAL__N_120utf8_buffered_reader9read_nextEv.exit
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = tail call i64 @_ZNK4toml2v34impl7impl_ex6parser16current_positionEj(ptr noundef nonnull align 8 dereferenceable(3496) %0, i32 noundef 1) #50
  tail call void @_ZNK4toml2v34impl7impl_ex6parser12set_error_atIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvNS0_15source_positionEDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, i64 %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1) #54
  unreachable
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #23

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN4toml2v34impl7impl_ex6parser26consume_leading_whitespaceEv(ptr noundef nonnull align 8 dereferenceable(3496) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  %2 = alloca %"struct.(anonymous namespace)::escaped_codepoint", align 8 ; 3 uses
  %3 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3192 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !240  ; 8 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.critedge, label %.preheader.preheader, !prof !156

.preheader.preheader:                             ; preds = %bb.a
  %i.c = load i32, ptr %i.b, align 4, !tbaa !242  ; 4 uses
  switch i32 %i.c, label %bb.b [
    i32 32, label %bb.f
    i32 9, label %bb.f
  ], !prof !641

bb.b:                                             ; preds = %.preheader.preheader
  %i.d = add i32 %i.c, -65280
  %or.cond.i.i.peel = icmp ult i32 %i.d, -65120
  br i1 %or.cond.i.i.peel, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = trunc nuw i32 %i.c to i16                ; 5 uses
  %.lhs.trunc.i.i.peel = add i16 %i.e, -160
  %i.f = udiv i16 %.lhs.trunc.i.i.peel, 1018      ; 2 uses
  %.zext.i.i.peel = zext nneg i16 %i.f to i64
  %i.g = shl nuw i64 1, %.zext.i.i.peel
  %i.h = and i64 %i.g, 9223372036854773598
  %.not.i.i.peel = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.peel, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  switch i16 %i.e, label %bb.e [
    i16 160, label %.loopexit
    i16 12288, label %.loopexit
    i16 -257, label %.loopexit
  ], !prof !642

bb.e:                                             ; preds = %bb.d
  switch i16 %i.f, label %.critedge [
    i16 5, label %_ZN4toml2v34impl24is_horizontal_whitespaceEDi.exit
    i16 7, label %.split.peel
  ]

.split.peel:                                      ; preds = %bb.e
  %i.i = add nsw i32 %i.c, -8192
  %or.cond7.i.i.peel = icmp ult i32 %i.i, 12
  br i1 %or.cond7.i.i.peel, label %_ZN4toml2v34impl24is_horizontal_whitespaceEDi.exit.thread6.peel, label %switch.early.test

_ZN4toml2v34impl24is_horizontal_whitespaceEDi.exit.thread6.peel: ; preds = %.split.peel
  switch i16 %i.e, label %.loopexit [
    i16 32, label %bb.f
    i16 9, label %bb.f
  ], !prof !643

bb.f:                                             ; preds = %_ZN4toml2v34impl24is_horizontal_whitespaceEDi.exit.thread6.peel, %_ZN4toml2v34impl24is_horizontal_whitespaceEDi.exit.thread6.peel, %.preheader.preheader, %.preheader.preheader
  tail call void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %0)
  %.pr.peel = load ptr, ptr %i.a, align 8, !tbaa !240 ; 2 uses
  %.not4.peel = icmp eq ptr %.pr.peel, null
  br i1 %.not4.peel, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.f, %bb.k
  %i.j = phi ptr [ %.pr, %bb.k ], [ %.pr.peel, %bb.f ] ; 7 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !242  ; 4 uses
  switch i32 %i.k, label %bb.g [
    i32 32, label %bb.k
    i32 9, label %bb.k
  ], !prof !641

bb.g:                                             ; preds = %.preheader
  %i.l = add i32 %i.k, -65280
  %or.cond.i.i = icmp ult i32 %i.l, -65120
  br i1 %or.cond.i.i, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = trunc nuw i32 %i.k to i16                ; 5 uses
  %.lhs.trunc.i.i = add i16 %i.m, -160
  %i.n = udiv i16 %.lhs.trunc.i.i, 1018           ; 2 uses
  %.zext.i.i = zext nneg i16 %i.n to i64
  %i.o = shl nuw i64 1, %.zext.i.i
  %i.p = and i64 %i.o, 9223372036854773598
  %.not.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  switch i16 %i.m, label %bb.j [
    i16 160, label %.loopexit
    i16 12288, label %.loopexit
    i16 -257, label %.loopexit
  ], !prof !642

bb.j:                                             ; preds = %bb.i
end_hunk_3
begin_hunk_4_@_ZN4toml2v34impl7impl_ex6parser11parse_valueEv:bb.a
          to label %bb.bk unwind label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i99

bb.bk:                                            ; preds = %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EE5resetEPS2_.exit59
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %.thread159.a unwind label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i99

bb.bl:                                            ; preds = %bb.bi
  %i.gm = add i32 %i.fq, -48
  %i.gn = icmp ult i32 %i.gm, 10
  %i.go = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.gp = load i32, ptr %i.go, align 8
  %i.gq = icmp eq i32 %i.gp, 46
  %or.cond11 = select i1 %i.gn, i1 %i.gq, i1 false
  br i1 %or.cond11, label %bb.bm, label %bb.bq

bb.bm:                                            ; preds = %bb.bl
  %i.gr = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #55
          to label %bb.bn unwind label %.thread171 ; 7 uses

bb.bn:                                            ; preds = %bb.bm
  %i.gs = invoke noundef double @_ZN4toml2v34impl7impl_ex6parser11parse_floatEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %bb.bo unwind label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gt, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35valueIdEE, i64 16), ptr %i.gr, align 8, !tbaa !75
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 40
  store double %i.gs, ptr %i.gu, align 8, !tbaa !187
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 48
  store i16 0, ptr %i.gv, align 8, !tbaa !281
  store ptr %i.gr, ptr %0, align 8, !tbaa !175
  br label %.thread159.a

bb.bp:                                            ; preds = %bb.bn
  %i.gw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.gr, i64 noundef 56) #51
  br label %.thread166

bb.bq:                                            ; preds = %bb.bl
  switch i32 %i.fq, label %bb.bu [
    i32 110, label %_ZN12_GLOBAL__N_18is_matchIJDiDiDiDiEEEbDiDpT_.exit.thread
    i32 105, label %_ZN12_GLOBAL__N_18is_matchIJDiDiDiDiEEEbDiDpT_.exit.thread
    i32 78, label %_ZN12_GLOBAL__N_18is_matchIJDiDiDiDiEEEbDiDpT_.exit.thread
    i32 73, label %_ZN12_GLOBAL__N_18is_matchIJDiDiDiDiEEEbDiDpT_.exit.thread
  ]

_ZN12_GLOBAL__N_18is_matchIJDiDiDiDiEEEbDiDpT_.exit.thread: ; preds = %bb.bq, %bb.bq, %bb.bq, %bb.bq
  %i.gx = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #55
          to label %bb.br unwind label %.thread171 ; 7 uses

bb.br:                                            ; preds = %_ZN12_GLOBAL__N_18is_matchIJDiDiDiDiEEEbDiDpT_.exit.thread
  %i.gy = invoke noundef double @_ZN4toml2v34impl7impl_ex6parser16parse_inf_or_nanEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %bb.bs unwind label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gz, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35valueIdEE, i64 16), ptr %i.gx, align 8, !tbaa !75
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 40
  store double %i.gy, ptr %i.ha, align 8, !tbaa !187
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 48
  store i16 0, ptr %i.hb, align 8, !tbaa !281
  store ptr %i.gx, ptr %0, align 8, !tbaa !175
  br label %.thread159.a

bb.bt:                                            ; preds = %bb.br
  %i.hc = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.gx, i64 noundef 56) #51
  br label %.thread166

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EE5resetEPS2_.exit50: ; preds = %bb.ba
  %i.hd = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hd, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35valueIlEE, i64 16), ptr %i.fl, align 8, !tbaa !75
  %i.he = getelementptr inbounds nuw i8, ptr %i.fl, i64 40
  store i64 %.0, ptr %i.he, align 8, !tbaa !184
  %i.hf = getelementptr inbounds nuw i8, ptr %i.fl, i64 48
  store ptr %i.fl, ptr %0, align 8, !tbaa !175
  store i16 %.031, ptr %i.hf, align 8, !tbaa !280
  br label %.thread159.a

bb.bu:                                            ; preds = %bb.bq, %bb.bh
  %i.hg = load i32, ptr %i.a, align 4, !tbaa !260
  switch i32 %i.hg, label %bb.da [
    i32 24579, label %bb.bv
    i32 24585, label %bb.by
    i32 24577, label %bb.cb
    i32 8193, label %bb.cb
    i32 5121, label %bb.cb
    i32 4609, label %bb.cb
    i32 24641, label %bb.ci
    i32 24581, label %bb.cl
    i32 25605, label %bb.cl
    i32 25093, label %bb.cl
    i32 26625, label %bb.cl
    i32 26629, label %bb.cl
    i32 27653, label %bb.cl
    i32 27141, label %bb.cl
    i32 8197, label %bb.cl
    i32 9221, label %bb.cl
    i32 8709, label %bb.cl
    i32 10241, label %bb.cl
    i32 10245, label %bb.cl
    i32 11269, label %bb.cl
    i32 10757, label %bb.cl
    i32 4613, label %bb.cl
    i32 6657, label %bb.cl
    i32 6661, label %bb.cl
    i32 7685, label %bb.cl
    i32 5125, label %bb.cl
    i32 5637, label %bb.cl
    i32 7169, label %bb.cl
    i32 7173, label %bb.cl
    i32 24657, label %bb.co
    i32 25681, label %bb.co
    i32 25169, label %bb.co
    i32 5201, label %bb.co
    i32 4689, label %bb.co
    i32 5713, label %bb.co
    i32 26705, label %bb.co
    i32 27729, label %bb.co
    i32 27217, label %bb.co
    i32 7249, label %bb.co
    i32 6737, label %bb.co
    i32 7761, label %bb.co
    i32 24833, label %bb.cr
    i32 26881, label %bb.cr
    i32 8449, label %bb.cr
    i32 10497, label %bb.cr
    i32 25601, label %bb.cu
    i32 9217, label %bb.cu
    i32 25889, label %bb.cx
    i32 26401, label %bb.cx
    i32 9505, label %bb.cx
    i32 10017, label %bb.cx
    i32 27937, label %bb.cx
    i32 28449, label %bb.cx
    i32 11553, label %bb.cx
    i32 12065, label %bb.cx
    i32 26017, label %bb.cx
    i32 28065, label %bb.cx
    i32 9633, label %bb.cx
    i32 11681, label %bb.cx
  ]

bb.bv:                                            ; preds = %bb.bu
  %i.hh = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #55
          to label %bb.bw unwind label %.thread171 ; 7 uses

bb.bw:                                            ; preds = %bb.bv
  %i.hi = invoke noundef i64 @_ZN4toml2v34impl7impl_ex6parser13parse_integerILm2EEElv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EE5resetEPS2_.exit68 unwind label %bb.bx

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EE5resetEPS2_.exit68: ; preds = %bb.bw
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hj, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35valueIlEE, i64 16), ptr %i.hh, align 8, !tbaa !75
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 40
  store i64 %i.hi, ptr %i.hk, align 8, !tbaa !184
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hh, i64 48
  store ptr %i.hh, ptr %0, align 8, !tbaa !175
  store i16 1, ptr %i.hl, align 8, !tbaa !280
  br label %.thread159.a

bb.bx:                                            ; preds = %bb.bw
  %i.hm = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.hh, i64 noundef 56) #51
  br label %.thread166

bb.by:                                            ; preds = %bb.bu
  %i.hn = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #55
          to label %bb.bz unwind label %.thread171 ; 7 uses

bb.bz:                                            ; preds = %bb.by
  %i.ho = invoke noundef i64 @_ZN4toml2v34impl7impl_ex6parser13parse_integerILm8EEElv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EE5resetEPS2_.exit71 unwind label %bb.ca

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EE5resetEPS2_.exit71: ; preds = %bb.bz
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hp, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35valueIlEE, i64 16), ptr %i.hn, align 8, !tbaa !75
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 40
  store i64 %i.ho, ptr %i.hq, align 8, !tbaa !184
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hn, i64 48
  store ptr %i.hn, ptr %0, align 8, !tbaa !175
  store i16 2, ptr %i.hr, align 8, !tbaa !280
  br label %.thread159.a

bb.ca:                                            ; preds = %bb.bz
  %i.hs = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.hn, i64 noundef 56) #51
  br label %.thread166

bb.cb:                                            ; preds = %bb.bu, %bb.bu, %bb.bu, %bb.bu
  %i.ht = load i8, ptr %i.e, align 1, !tbaa !261, !range !105, !noundef !106
  %16 = trunc nuw i8 %i.ht to i1
  %17 = load i64, ptr %i.d, align 8
  %18 = icmp ult i64 %17, 127
  %.not40 = select i1 %16, i1 true, i1 %18
  br i1 %.not40, label %bb.cf, label %bb.cc, !prof !169

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #50
  store i64 56, ptr %13, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr @.str.80, ptr %i.hu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #50
  store i64 11, ptr %14, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr @.str.81, ptr %i.hv, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEmS8_EEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %1, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4toml2v34impl7impl_ex6parser11parse_valueEvE24max_numeric_value_length, ptr noundef nonnull align 8 dereferenceable(16) %14) #54
          to label %bb.cd unwind label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  unreachable

bb.ce:                                            ; preds = %bb.cc
  %i.hw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #50
  br label %.thread166

bb.cf:                                            ; preds = %bb.cb
  %i.hx = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #55
          to label %bb.cg unwind label %.thread171 ; 7 uses

bb.cg:                                            ; preds = %bb.cf
  %i.hy = invoke noundef i64 @_ZN4toml2v34impl7impl_ex6parser13parse_integerILm10EEElv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EE5resetEPS2_.exit74 unwind label %bb.ch

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EE5resetEPS2_.exit74: ; preds = %bb.cg
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hz, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35valueIlEE, i64 16), ptr %i.hx, align 8, !tbaa !75
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 40
  store i64 %i.hy, ptr %i.ia, align 8, !tbaa !184
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hx, i64 48
  store i16 0, ptr %i.ib, align 8, !tbaa !280
  store ptr %i.hx, ptr %0, align 8, !tbaa !175
  br label %.thread159.a

bb.ch:                                            ; preds = %bb.cg
  %i.ic = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.hx, i64 noundef 56) #51
  br label %.thread166

bb.ci:                                            ; preds = %bb.bu
  %i.id = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #55
          to label %bb.cj unwind label %.thread171 ; 7 uses

bb.cj:                                            ; preds = %bb.ci
  %i.ie = invoke noundef i64 @_ZN4toml2v34impl7impl_ex6parser13parse_integerILm16EEElv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EE5resetEPS2_.exit77 unwind label %bb.ck

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EE5resetEPS2_.exit77: ; preds = %bb.cj
  %i.if = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.if, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35valueIlEE, i64 16), ptr %i.id, align 8, !tbaa !75
  %i.ig = getelementptr inbounds nuw i8, ptr %i.id, i64 40
  store i64 %i.ie, ptr %i.ig, align 8, !tbaa !184
  %i.ih = getelementptr inbounds nuw i8, ptr %i.id, i64 48
  store ptr %i.id, ptr %0, align 8, !tbaa !175
  store i16 3, ptr %i.ih, align 8, !tbaa !280
  br label %.thread159.a

bb.ck:                                            ; preds = %bb.cj
  %i.ii = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.id, i64 noundef 56) #51
  br label %.thread166

bb.cl:                                            ; preds = %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu
  %i.ij = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #55
          to label %bb.cm unwind label %.thread171 ; 7 uses

bb.cm:                                            ; preds = %bb.cl
  %i.ik = invoke noundef double @_ZN4toml2v34impl7impl_ex6parser11parse_floatEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EE5resetEPS2_.exit80 unwind label %bb.cn

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EE5resetEPS2_.exit80: ; preds = %bb.cm
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.il, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35valueIdEE, i64 16), ptr %i.ij, align 8, !tbaa !75
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 40
  store double %i.ik, ptr %i.im, align 8, !tbaa !187
  %i.in = getelementptr inbounds nuw i8, ptr %i.ij, i64 48
  store i16 0, ptr %i.in, align 8, !tbaa !281
  store ptr %i.ij, ptr %0, align 8, !tbaa !175
  br label %.thread159.a

bb.cn:                                            ; preds = %bb.cm
  %i.io = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ij, i64 noundef 56) #51
  br label %.thread166

bb.co:                                            ; preds = %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu
  %i.ip = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #55
          to label %bb.cp unwind label %.thread171 ; 7 uses

bb.cp:                                            ; preds = %bb.co
  %i.iq = invoke noundef double @_ZN4toml2v34impl7impl_ex6parser15parse_hex_floatEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EE5resetEPS2_.exit83 unwind label %bb.cq

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EE5resetEPS2_.exit83: ; preds = %bb.cp
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ir, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35valueIdEE, i64 16), ptr %i.ip, align 8, !tbaa !75
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 40
  store double %i.iq, ptr %i.is, align 8, !tbaa !187
  %i.it = getelementptr inbounds nuw i8, ptr %i.ip, i64 48
  store i16 0, ptr %i.it, align 8, !tbaa !281
  store ptr %i.ip, ptr %0, align 8, !tbaa !175
  br label %.thread159.a

bb.cq:                                            ; preds = %bb.cp
  %i.iu = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ip, i64 noundef 56) #51
  br label %.thread166

bb.cr:                                            ; preds = %bb.bu, %bb.bu, %bb.bu, %bb.bu
  %i.iv = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #55
          to label %bb.cs unwind label %.thread171 ; 7 uses

bb.cs:                                            ; preds = %bb.cr
  %i.iw = invoke i64 @_ZN4toml2v34impl7impl_ex6parser10parse_timeEb(ptr noundef nonnull align 8 dereferenceable(3496) %1, i1 noundef zeroext false)
          to label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EE5resetEPS2_.exit86 unwind label %bb.ct

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EE5resetEPS2_.exit86: ; preds = %bb.cs
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ix, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35valueINS0_4timeEEE, i64 16), ptr %i.iv, align 8, !tbaa !75
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iv, i64 40
  store i64 %i.iw, ptr %i.iy, align 8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iv, i64 48
  store i16 0, ptr %i.iz, align 8, !tbaa !283
  store ptr %i.iv, ptr %0, align 8, !tbaa !175
  br label %.thread159.a

bb.ct:                                            ; preds = %bb.cs
  %i.ja = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.iv, i64 noundef 56) #51
  br label %.thread166

bb.cu:                                            ; preds = %bb.bu, %bb.bu
  %i.jb = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #55
          to label %bb.cv unwind label %.thread171 ; 7 uses

bb.cv:                                            ; preds = %bb.cu
  %i.jc = invoke i32 @_ZN4toml2v34impl7impl_ex6parser10parse_dateEb(ptr noundef nonnull align 8 dereferenceable(3496) %1, i1 noundef zeroext false)
          to label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EE5resetEPS2_.exit89 unwind label %bb.cw

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EE5resetEPS2_.exit89: ; preds = %bb.cv
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jd, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35valueINS0_4dateEEE, i64 16), ptr %i.jb, align 8, !tbaa !75
  %i.je = getelementptr inbounds nuw i8, ptr %i.jb, i64 40
  store i32 %i.jc, ptr %i.je, align 8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jb, i64 44
  store i16 0, ptr %i.jf, align 4, !tbaa !285
  store ptr %i.jb, ptr %0, align 8, !tbaa !175
  br label %.thread159.a

bb.cw:                                            ; preds = %bb.cv
  %i.jg = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.jb, i64 noundef 48) #51
  br label %.thread166

bb.cx:                                            ; preds = %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu
  %i.jh = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #55
          to label %bb.cy unwind label %.thread171 ; 8 uses

bb.cy:                                            ; preds = %bb.cx
  %i.ji = invoke { i64, i64 } @_ZN4toml2v34impl7impl_ex6parser15parse_date_timeEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EE5resetEPS2_.exit92 unwind label %bb.cz ; 2 uses

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EE5resetEPS2_.exit92: ; preds = %bb.cy
  %i.jj = extractvalue { i64, i64 } %i.ji, 0
  %i.jk = extractvalue { i64, i64 } %i.ji, 1
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jl, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35valueINS0_6stdopt9date_timeEEE, i64 16), ptr %i.jh, align 8, !tbaa !75
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jh, i64 40
  store i64 %i.jj, ptr %i.jm, align 8
  %.sroa.5103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jh, i64 48
  store i64 %i.jk, ptr %.sroa.5103.0..sroa_idx, align 8
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jh, i64 56
  store i16 0, ptr %i.jn, align 8, !tbaa !291
  store ptr %i.jh, ptr %0, align 8, !tbaa !175
  br label %.thread159.a

bb.cz:                                            ; preds = %bb.cy
  %i.jo = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.jh, i64 noundef 64) #51
end_hunk_4
begin_hunk_5_@_ZN4toml2v32ex10parse_fileESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %i.bg = load i64, ptr %i.c, align 8, !tbaa !70, !noalias !679
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #51
  br label %_ZN12_GLOBAL__N_113do_parse_fileESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZNSt6vectorIcSaIcEED2Ev.exit27.i:                ; preds = %bb.ad, %bb.ac, %.thread60.i, %bb.s, %bb.r, %bb.m, %bb.l
  %.pn15.pn.pn.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %bb.ad ], [ %i.ai, %bb.m ], [ %i.ah, %bb.l ], [ %i.ap, %bb.s ], [ %i.ao, %bb.r ], [ %lpad.thr_comm.split-lp.i, %bb.ac ], [ %lpad.thr_comm.i, %.thread60.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #50, !noalias !679
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %4) #50
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit27.i, %bb.k
  %.pn15.pn.pn.pn.i = phi { ptr, i32 } [ %.pn15.pn.pn.i, %_ZNSt6vectorIcSaIcEED2Ev.exit27.i ], [ %i.ag, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50, !noalias !679
  %i.bi = load ptr, ptr %3, align 8, !tbaa !67, !noalias !679 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.c
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i: ; preds = %bb.af
  %i.bk = load i64, ptr %i.c, align 8, !tbaa !70, !noalias !679
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50, !noalias !679
  resume { ptr, i32 } %.pn15.pn.pn.pn.i

bb.ag:                                            ; preds = %bb.q, %bb.j
  unreachable

_ZN12_GLOBAL__N_113do_parse_fileESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50, !noalias !679
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define void @_ZN4toml2v34impl9formatterC2EPKNS0_4nodeEPKNS0_5tableERKNS1_19formatter_constantsERKNS1_16formatter_configE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(69) initializes((0, 48)) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(96) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4) unnamed_addr #25 align 2 {
bb.a:
  %.not = icmp eq ptr %2, null
  %i.a = select i1 %.not, ptr %1, ptr %2          ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !122
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.b, align 8, !tbaa !123
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !687
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.a) ]
  %i.d = load i64, ptr %i.c, align 8, !tbaa !126
  %i.e = load i64, ptr %3, align 8, !tbaa !689
  %i.f = or i64 %i.e, %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !690
  %i.i = xor i64 %i.h, -1
  %i.j = and i64 %i.f, %i.i                       ; 2 uses
  store i64 %i.j, ptr %i.c, align 8, !tbaa !126
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  store i64 0, ptr %i.k, align 8, !tbaa !127
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !324  ; 7 uses
  %i.o = ptrtoaddr ptr %i.n to i64
  %i.p = load i64, ptr %i.l, align 8, !tbaa !325  ; 6 uses
  %i.q = getelementptr i8, ptr %i.n, i64 %i.p     ; 2 uses
  %.not1213 = icmp samesign eq i64 %i.p, 0
  br i1 %.not1213, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.p, 6
  br i1 %min.iters.check, label %.lr.ph.preheader17, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %bound0 = icmp ult ptr %i.k, %i.q
  %bound1 = icmp ult ptr %i.n, %i.r
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader17, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.p, -4                       ; 3 uses
  %i.s = getelementptr i8, ptr %i.n, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.y, %vector.body ]
  %vec.phi15 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.n, i64 %index ; 2 uses
  %i.t = getelementptr i8, ptr %next.gep, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep, align 1, !tbaa !70, !alias.scope !691
  %wide.load16 = load <2 x i8>, ptr %i.t, align 1, !tbaa !70, !alias.scope !691
  %i.u = icmp eq <2 x i8> %wide.load, splat (i8 9)
  %i.v = icmp eq <2 x i8> %wide.load16, splat (i8 9)
  %i.w = select <2 x i1> %i.u, <2 x i64> splat (i64 4), <2 x i64> splat (i64 1)
  %i.x = select <2 x i1> %i.v, <2 x i64> splat (i64 4), <2 x i64> splat (i64 1)
  %i.y = add <2 x i64> %i.w, %vec.phi             ; 2 uses
  %i.z = add <2 x i64> %i.x, %vec.phi15           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !682

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.z, %i.y
  %i.ab = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  store i64 %i.ab, ptr %i.k, align 8, !tbaa !127, !alias.scope !692, !noalias !691
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader17

.lr.ph.preheader17:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.014.ph = phi ptr [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph.preheader ], [ %i.s, %middle.block ] ; 3 uses
  %.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.ab, %middle.block ] ; 2 uses
  %i.ac = add i64 %i.p, %i.o                      ; 2 uses
  %.014.ph19 = ptrtoaddr ptr %.014.ph to i64      ; 2 uses
  %i.ad = sub i64 %i.ac, %.014.ph19
  %xtraiter = and i64 %i.ad, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader17, %.lr.ph.prol
  %.014.prol = phi ptr [ %i.aj, %.lr.ph.prol ], [ %.014.ph, %.lr.ph.preheader17 ] ; 2 uses
  %i.ae = phi i64 [ %i.ai, %.lr.ph.prol ], [ %.ph, %.lr.ph.preheader17 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader17 ]
  %i.af = load i8, ptr %.014.prol, align 1, !tbaa !70
  %i.ag = icmp eq i8 %i.af, 9
  %i.ah = select i1 %i.ag, i64 4, i64 1
  %i.ai = add i64 %i.ah, %i.ae                    ; 3 uses
  store i64 %i.ai, ptr %i.k, align 8, !tbaa !127
  %i.aj = getelementptr inbounds nuw i8, ptr %.014.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !684

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader17
  %.014.unr = phi ptr [ %.014.ph, %.lr.ph.preheader17 ], [ %i.aj, %.lr.ph.prol ]
  %.unr = phi i64 [ %.ph, %.lr.ph.preheader17 ], [ %i.ai, %.lr.ph.prol ]
  %i.ak = sub i64 %.014.ph19, %i.ac
  %i.al = icmp ugt i64 %i.ak, -4
  br i1 %i.al, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  %i.am = and i64 %i.j, 448
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.am, ptr %i.an, align 8, !tbaa !128
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.014 = phi ptr [ %i.bi, %.lr.ph ], [ %.014.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ao = phi i64 [ %i.bh, %.lr.ph ], [ %.unr, %.lr.ph.prol.loopexit ]
  %i.ap = load i8, ptr %.014, align 1, !tbaa !70
  %i.aq = icmp eq i8 %i.ap, 9
  %i.ar = select i1 %i.aq, i64 4, i64 1
  %i.as = add i64 %i.ar, %i.ao                    ; 2 uses
  store i64 %i.as, ptr %i.k, align 8, !tbaa !127
  %i.at = getelementptr inbounds nuw i8, ptr %.014, i64 1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !70
  %i.av = icmp eq i8 %i.au, 9
  %i.aw = select i1 %i.av, i64 4, i64 1
  %i.ax = add i64 %i.aw, %i.as                    ; 2 uses
  store i64 %i.ax, ptr %i.k, align 8, !tbaa !127
  %i.ay = getelementptr inbounds nuw i8, ptr %.014, i64 2
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !70
  %i.ba = icmp eq i8 %i.az, 9
  %i.bb = select i1 %i.ba, i64 4, i64 1
  %i.bc = add i64 %i.bb, %i.ax                    ; 2 uses
  store i64 %i.bc, ptr %i.k, align 8, !tbaa !127
  %i.bd = getelementptr inbounds nuw i8, ptr %.014, i64 3
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !70
  %i.bf = icmp eq i8 %i.be, 9
  %i.bg = select i1 %i.bf, i64 4, i64 1
  %i.bh = add i64 %i.bg, %i.bc                    ; 2 uses
  store i64 %i.bh, ptr %i.k, align 8, !tbaa !127
  %i.bi = getelementptr inbounds nuw i8, ptr %.014, i64 4 ; 2 uses
  %.not12.3 = icmp eq ptr %i.bi, %i.q
  br i1 %.not12.3, label %._crit_edge, label %.lr.ph, !llvm.loop !685
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4toml2v34impl9formatter6attachERSo(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(69) initializes((56, 69)) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.a, align 8, !tbaa !129
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 1, ptr %i.b, align 4, !tbaa !130
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %1, ptr %i.c, align 8, !tbaa !131
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4toml2v34impl9formatter6detachEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(69) initializes((56, 64)) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.a, align 8, !tbaa !131
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v34impl9formatter13print_newlineEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(69) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !130, !range !105, !noundef !106
  %2 = trunc nuw i8 %i.b to i1
  %.not = xor i1 %2, true
  %or.cond = or i1 %1, %.not
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !131
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i8 noundef signext 10) ; 0 uses
  store i8 1, ptr %i.a, align 4, !tbaa !130
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v34impl9formatter12print_indentEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(69) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !129
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 68
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.02 = phi i32 [ 0, %.lr.ph ], [ %i.i, %bb.b ]
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !131
  %.sroa.0.0.copyload = load i64, ptr %i.e, align 8, !tbaa !124
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !125
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %.sroa.2.0.copyload, i64 noundef %.sroa.0.0.copyload) ; 0 uses
  store i8 0, ptr %i.f, align 4, !tbaa !130
  %i.i = add nuw nsw i32 %.02, 1                  ; 2 uses
  %i.j = load i32, ptr %i.a, align 8, !tbaa !129
  %i.k = icmp slt i32 %i.i, %i.j
  br i1 %i.k, label %bb.b, label %._crit_edge, !llvm.loop !38
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v34impl9formatter17print_unformattedEc(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(69) initializes((68, 69)) %0, i8 noundef signext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !131
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i8 noundef signext %1) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 0, ptr %i.d, align 4, !tbaa !130
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v34impl9formatter17print_unformattedESt17basic_string_viewIcSt11char_traitsIcEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(69) initializes((68, 69)) %0, i64 %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !131
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %2, i64 noundef %1) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 0, ptr %i.d, align 4, !tbaa !130
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v34impl9formatter12print_stringESt17basic_string_viewIcSt11char_traitsIcEEbbb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(69) %0, i64 %1, ptr %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5) local_unnamed_addr #26 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 16 uses
  %i.b = alloca [32 x i8], align 16               ; 16 uses
  %i.c = alloca [8 x i8], align 1                 ; 9 uses
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !126
  %i.g = and i64 %i.f, 4
  %.not.i156.not = icmp eq i64 %i.g, 0
  %.sroa.3107.0 = select i1 %.not.i156.not, ptr @.str.23, ptr @.str.22
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !131
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull %.sroa.3107.0, i64 noundef 2) ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 0, ptr %i.k, align 4, !tbaa !130
  br label %bb.cq

bb.c:                                             ; preds = %bb.a
  %spec.select301 = select i1 %4, i32 0, i32 16   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !126  ; 4 uses
  %i.n = trunc i64 %i.m to i8
  %i.o = lshr i8 %i.n, 5                          ; 4 uses
  %i.p = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 %1 ; 5 uses
  %i.r = and i64 %1, -16                          ; 2 uses
  %.not.i161 = icmp eq i64 %i.r, 0
  br i1 %.not.i161, label %bb.d, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.r
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.t = bitcast <2 x i64> %i.x to <16 x i8>
  %i.u = icmp slt <16 x i8> %i.t, zeroinitializer
  %i.v = bitcast <16 x i1> %i.u to i16
  %.not32.i = icmp eq i16 %i.v, 0
  br i1 %.not32.i, label %._crit_edge._crit_edge.i, label %.lr.ph.preheader

._crit_edge._crit_edge.i:                         ; preds = %._crit_edge.i
  %.pre.i = ptrtoaddr ptr %i.y to i64
  br label %bb.d

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.02634.i = phi <2 x i64> [ %i.x, %.lr.ph.i ], [ zeroinitializer, %.lr.ph.preheader.i ]
  %.02733.i = phi ptr [ %i.y, %.lr.ph.i ], [ %2, %.lr.ph.preheader.i ] ; 2 uses
  %i.w = load <2 x i64>, ptr %.02733.i, align 1, !tbaa !70
  %i.x = or <2 x i64> %i.w, %.02634.i             ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.02733.i, i64 16 ; 4 uses
  %i.z = icmp ult ptr %i.y, %i.s
  br i1 %i.z, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !29

bb.d:                                             ; preds = %._crit_edge._crit_edge.i, %bb.c
  %.22943.pre-phi.i = phi i64 [ %.pre.i, %._crit_edge._crit_edge.i ], [ %i.p, %bb.c ]
  %.229.i = phi ptr [ %i.y, %._crit_edge._crit_edge.i ], [ %2, %bb.c ] ; 3 uses
  %i.aa = icmp ult ptr %.229.i, %i.q
  br i1 %i.aa, label %.lr.ph38.preheader.i, label %.lr.ph340.preheader

.lr.ph340.preheader:                              ; preds = %bb.e, %bb.d
  br label %.lr.ph340

.lr.ph38.preheader.i:                             ; preds = %bb.d
  %i.ab = add i64 %1, %i.p
  %i.ac = sub i64 %i.ab, %.22943.pre-phi.i
  %scevgep.i = getelementptr i8, ptr %.229.i, i64 %i.ac
  br label %.lr.ph38.i

bb.e:                                             ; preds = %.lr.ph38.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.33036.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.ad, %scevgep.i
  br i1 %exitcond.not.i, label %.lr.ph340.preheader, label %.lr.ph38.i, !llvm.loop !30

.lr.ph38.i:                                       ; preds = %bb.e, %.lr.ph38.preheader.i
  %.33036.i = phi ptr [ %i.ad, %bb.e ], [ %.229.i, %.lr.ph38.preheader.i ] ; 2 uses
  %i.ae = load i8, ptr %.33036.i, align 1, !tbaa !70
  %i.af = icmp sgt i8 %i.ae, -1
  br i1 %i.af, label %bb.e, label %.lr.ph.preheader

bb.f:                                             ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %.0339, i64 1 ; 2 uses
  %.not122 = icmp eq ptr %i.ag, %i.q
  br i1 %.not122, label %_ZNK4toml2v34impl12utf8_decoder16needs_more_inputEv.exit.thread, label %.lr.ph340

.lr.ph340:                                        ; preds = %.lr.ph340.preheader, %bb.f
  %.0339 = phi ptr [ %i.ag, %bb.f ], [ %2, %.lr.ph340.preheader ] ; 2 uses
  %.1277338 = phi i32 [ %.3279, %bb.f ], [ %spec.select301, %.lr.ph340.preheader ] ; 5 uses
  %i.ah = load i8, ptr %.0339, align 1, !tbaa !70 ; 4 uses
  %i.ai = sext i8 %i.ah to i32                    ; 2 uses
  switch i8 %i.ah, label %bb.j [
    i8 10, label %bb.g
    i8 9, label %bb.h
    i8 39, label %bb.i
  ]

bb.g:                                             ; preds = %.lr.ph340
  %i.aj = or i32 %.1277338, 1
  br label %bb.m

bb.h:                                             ; preds = %.lr.ph340
  %i.ak = or i32 %.1277338, 2
  br label %bb.m

bb.i:                                             ; preds = %.lr.ph340
  %i.al = or i32 %.1277338, 8
  br label %bb.m

bb.j:                                             ; preds = %.lr.ph340
  %i.am = add i8 %i.ah, -127
  %i.an = icmp ult i8 %i.am, -95
  br i1 %i.an, label %bb.k, label %bb.l, !prof !156

bb.k:                                             ; preds = %bb.j
  %i.ao = or i32 %.1277338, 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.2278 = phi i32 [ %i.ao, %bb.k ], [ %.1277338, %bb.j ] ; 2 uses
  %i.ap = add nsw i32 %i.ai, -123
  %or.cond.i = icmp ult i32 %i.ap, -78
  br i1 %or.cond.i, label %_ZN4toml2v34impl27is_ascii_bare_key_characterEDi.exit.thread, label %_ZN4toml2v34impl27is_ascii_bare_key_characterEDi.exit

_ZN4toml2v34impl27is_ascii_bare_key_characterEDi.exit: ; preds = %bb.l
  %i.aq = zext nneg i32 %i.ai to i64
  %i.ar = add nsw i64 %i.aq, -45
  %.not.i162 = icmp ugt i8 %i.ah, 108
  %i.as = shl nuw i64 1, %i.ar
  %i.at = and i64 %i.as, -3307330977390599
end_hunk_5
begin_hunk_6_@_ZN4toml2v314toml_formatter5printERKNS0_5arrayE:bb.a
  br label %_ZN4toml2v34impl9formatter12print_indentEv.exit

bb.m:                                             ; preds = %bb.k
  br i1 %i.ap, label %.critedge, label %_ZN4toml2v34impl9formatter12print_indentEv.exit

.critedge:                                        ; preds = %bb.l, %bb.m
  %i.ax = load ptr, ptr %i.ao, align 8, !tbaa !131
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, i8 noundef signext 10) ; 0 uses
  store i8 1, ptr %i.an, align 4, !tbaa !130
  %i.az = load i32, ptr %i.j, align 8, !tbaa !129
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph.i, label %_ZN4toml2v34impl9formatter12print_indentEv.exit

.lr.ph.i:                                         ; preds = %.critedge, %.lr.ph.i
  %.02.i = phi i32 [ %i.bd, %.lr.ph.i ], [ 0, %.critedge ]
  %i.bb = load ptr, ptr %i.ao, align 8, !tbaa !131
  %.sroa.0.0.copyload.i = load i64, ptr %i.as, align 8, !tbaa !124
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !125
  %i.bc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i) ; 0 uses
  store i8 0, ptr %i.an, align 4, !tbaa !130
  %i.bd = add nuw nsw i32 %.02.i, 1               ; 2 uses
  %i.be = load i32, ptr %i.j, align 8, !tbaa !129
  %i.bf = icmp slt i32 %i.bd, %i.be
  br i1 %i.bf, label %.lr.ph.i, label %_ZN4toml2v34impl9formatter12print_indentEv.exit, !llvm.loop !38

_ZN4toml2v34impl9formatter12print_indentEv.exit:  ; preds = %.lr.ph.i, %.critedge, %.thread35, %bb.m
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !174
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.036
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !175 ; 5 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !75
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = tail call noundef zeroext i8 %i.bl(ptr noundef nonnull align 8 dereferenceable(40) %i.bi) #52 ; 3 uses
  %i.bn = icmp ne i8 %i.bm, 0
  tail call void @llvm.assume(i1 %i.bn)
  switch i8 %i.bm, label %bb.p [
    i8 1, label %bb.n
    i8 2, label %bb.o
  ]

bb.n:                                             ; preds = %_ZN4toml2v34impl9formatter12print_indentEv.exit
  tail call void @_ZN4toml2v314toml_formatter12print_inlineERKNS0_5tableE(ptr noundef nonnull align 8 dereferenceable(97) %0, ptr noundef nonnull align 8 dereferenceable(89) %i.bi)
  br label %bb.q

bb.o:                                             ; preds = %_ZN4toml2v34impl9formatter12print_indentEv.exit
  tail call void @_ZN4toml2v314toml_formatter5printERKNS0_5arrayE(ptr noundef nonnull align 8 dereferenceable(97) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.bi)
  br label %bb.q

bb.p:                                             ; preds = %_ZN4toml2v34impl9formatter12print_indentEv.exit
  tail call void @_ZN4toml2v34impl9formatter11print_valueERKNS0_4nodeENS0_9node_typeE(ptr noundef nonnull align 8 dereferenceable(69) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.bi, i8 noundef zeroext %i.bm)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.bo = add nuw i64 %.036, 1                    ; 2 uses
  %i.bp = load ptr, ptr %i.c, align 8, !tbaa !173
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !174
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = ashr exact i64 %i.bt, 3
  %i.bv = icmp ult i64 %i.bo, %i.bu
  br i1 %i.bv, label %bb.k, label %._crit_edge, !llvm.loop !700

bb.r:                                             ; preds = %._crit_edge
  store i32 %i.k, ptr %i.j, align 8, !tbaa !129
  %i.bw = load ptr, ptr %i.ao, align 8, !tbaa !131
  %i.bx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, i8 noundef signext 10) ; 0 uses
  store i8 1, ptr %i.an, align 4, !tbaa !130
  %i.by = load i32, ptr %i.j, align 8, !tbaa !129
  %i.bz = icmp sgt i32 %i.by, 0
  br i1 %i.bz, label %.lr.ph.i29, label %_ZN4toml2v34impl9formatter12print_indentEv.exit34

.lr.ph.i29:                                       ; preds = %bb.r
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.2.0..sroa_idx.i30 = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph.i29
  %.02.i31 = phi i32 [ 0, %.lr.ph.i29 ], [ %i.cd, %bb.s ]
  %i.cb = load ptr, ptr %i.ao, align 8, !tbaa !131
  %.sroa.0.0.copyload.i32 = load i64, ptr %i.ca, align 8, !tbaa !124
  %.sroa.2.0.copyload.i33 = load ptr, ptr %.sroa.2.0..sroa_idx.i30, align 8, !tbaa !125
  %i.cc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, ptr noundef %.sroa.2.0.copyload.i33, i64 noundef %.sroa.0.0.copyload.i32) ; 0 uses
  store i8 0, ptr %i.an, align 4, !tbaa !130
  %i.cd = add nuw nsw i32 %.02.i31, 1             ; 2 uses
  %i.ce = load i32, ptr %i.j, align 8, !tbaa !129
  %i.cf = icmp slt i32 %i.cd, %i.ce
  br i1 %i.cf, label %bb.s, label %_ZN4toml2v34impl9formatter12print_indentEv.exit34, !llvm.loop !38

bb.t:                                             ; preds = %._crit_edge
  %i.cg = load ptr, ptr %i.ao, align 8, !tbaa !131
  %i.ch = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, i8 noundef signext 32) ; 0 uses
  store i8 0, ptr %i.an, align 4, !tbaa !130
  br label %_ZN4toml2v34impl9formatter12print_indentEv.exit34

_ZN4toml2v34impl9formatter12print_indentEv.exit34: ; preds = %bb.s, %bb.r, %bb.t
  %i.ci = load ptr, ptr %i.ao, align 8, !tbaa !131
  %i.cj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, ptr noundef nonnull @.str.48, i64 noundef 1) ; 0 uses
  store i8 0, ptr %i.an, align 4, !tbaa !130
  br label %bb.u

bb.u:                                             ; preds = %_ZN4toml2v34impl9formatter12print_indentEv.exit34, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v314toml_formatter5printERKNS0_5tableE(ptr noundef nonnull align 8 dereferenceable(97) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(89) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !198, !noalias !712 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 6 uses
  %.not175179 = icmp eq ptr %i.b, %i.c
  br i1 %.not175179, label %._crit_edge, label %_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit.lr.ph

_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit.lr.ph: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit

._crit_edge.loopexit:                             ; preds = %bb.m
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !198, !noalias !713
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.j = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.b, %bb.a ] ; 3 uses
  %.not176189 = icmp eq ptr %i.j, %i.c
  br i1 %.not176189, label %._crit_edge191, label %_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit82.lr.ph

_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit82.lr.ph: ; preds = %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.2.0..sroa_idx.i94 = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit82

_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit: ; preds = %_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit.lr.ph, %bb.m
  %.sroa.0162.0180 = phi ptr [ %i.b, %_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit.lr.ph ], [ %i.bn, %bb.m ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0162.0180, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0162.0180, i64 96
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !175  ; 7 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !75   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef zeroext i8 %i.y(ptr noundef nonnull align 8 dereferenceable(40) %i.v) #52 ; 4 uses
  switch i8 %i.z, label %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit.thread" [
    i8 1, label %bb.b
    i8 2, label %bb.c
  ]

bb.b:                                             ; preds = %_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !145, !range !105, !noundef !106
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit.thread", label %bb.m

bb.c:                                             ; preds = %_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 224
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef ptr %i.ae(ptr noundef nonnull readonly align 8 dereferenceable(40) %i.v) #52, !inline_history !705 ; 3 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit.thread", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !160 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !160 ; 2 uses
  %i.ak = icmp eq ptr %i.ah, %i.aj
  br i1 %i.ak, label %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit.thread", label %.lr.ph.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.012.017.i.i.i, i64 8 ; 2 uses
  %.not15.i.i.i = icmp eq ptr %i.al, %i.aj
  br i1 %.not15.i.i.i, label %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %bb.e
  %.sroa.012.017.i.i.i = phi ptr [ %i.al, %bb.e ], [ %i.ah, %bb.d ] ; 2 uses
  %i.am = load ptr, ptr %.sroa.012.017.i.i.i, align 8, !tbaa !175 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !75
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call noundef zeroext i8 %i.ap(ptr noundef nonnull align 8 dereferenceable(40) %i.am) #52, !inline_history !706
  %.not.i.i.i = icmp eq i8 %i.aq, 1
  br i1 %.not.i.i.i, label %bb.e, label %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit.thread"

"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit": ; preds = %bb.e
  %i.ar = load ptr, ptr %i.ah, align 8, !tbaa !175
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 88
  %i.at = load i8, ptr %i.as, align 8, !tbaa !145, !range !105, !noundef !106
  %2 = trunc nuw i8 %i.at to i1
  br i1 %2, label %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit.thread", label %bb.m

"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit.thread": ; preds = %.lr.ph.i.i.i, %bb.d, %bb.c, %bb.b, %_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit, %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit"
  store i8 1, ptr %i.d, align 8, !tbaa !331
  %i.au = load i8, ptr %i.e, align 4, !tbaa !130, !range !105, !noundef !106
  %3 = trunc nuw i8 %i.au to i1
  br i1 %3, label %_ZN4toml2v34impl9formatter13print_newlineEb.exit, label %bb.f

bb.f:                                             ; preds = %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit.thread"
  %i.av = load ptr, ptr %i.f, align 8, !tbaa !131
  %i.aw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.av, i8 noundef signext 10) ; 0 uses
  store i8 1, ptr %i.e, align 4, !tbaa !130
  br label %_ZN4toml2v34impl9formatter13print_newlineEb.exit

_ZN4toml2v34impl9formatter13print_newlineEb.exit: ; preds = %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit.thread", %bb.f
  %i.ax = load i32, ptr %i.g, align 8, !tbaa !129
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %.lr.ph.i, label %_ZN4toml2v34impl9formatter12print_indentEv.exit

.lr.ph.i:                                         ; preds = %_ZN4toml2v34impl9formatter13print_newlineEb.exit, %.lr.ph.i
  %.02.i = phi i32 [ %i.bb, %.lr.ph.i ], [ 0, %_ZN4toml2v34impl9formatter13print_newlineEb.exit ]
  %i.az = load ptr, ptr %i.f, align 8, !tbaa !131
  %.sroa.0.0.copyload.i = load i64, ptr %i.h, align 8, !tbaa !124
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !125
  %i.ba = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i) ; 0 uses
  store i8 0, ptr %i.e, align 4, !tbaa !130
  %i.bb = add nuw nsw i32 %.02.i, 1               ; 2 uses
  %i.bc = load i32, ptr %i.g, align 8, !tbaa !129
  %i.bd = icmp slt i32 %i.bb, %i.bc
  br i1 %i.bd, label %.lr.ph.i, label %_ZN4toml2v34impl9formatter12print_indentEv.exit, !llvm.loop !38

_ZN4toml2v34impl9formatter12print_indentEv.exit:  ; preds = %.lr.ph.i, %_ZN4toml2v34impl9formatter13print_newlineEb.exit
  %i.be = load ptr, ptr %i.t, align 8, !tbaa !67
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0162.0180, i64 40
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !68
  tail call void @_ZN4toml2v34impl9formatter12print_stringESt17basic_string_viewIcSt11char_traitsIcEEbbb(ptr noundef nonnull align 8 dereferenceable(97) %0, i64 %i.bg, ptr %i.be, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false)
  %i.bh = load i64, ptr %i.i, align 8, !tbaa !126
  %i.bi = and i64 %i.bh, 4096
  %.not.i.i.not = icmp eq i64 %i.bi, 0
  %i.bj = load ptr, ptr %i.f, align 8, !tbaa !131 ; 2 uses
  br i1 %.not.i.i.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN4toml2v34impl9formatter12print_indentEv.exit
  %i.bk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull @.str.43, i64 noundef 1) ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %_ZN4toml2v34impl9formatter12print_indentEv.exit
  %i.bl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull @.str.44, i64 noundef 3) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store i8 0, ptr %i.e, align 4, !tbaa !130
  %i.bm = icmp ne i8 %i.z, 0
  tail call void @llvm.assume(i1 %i.bm)
  switch i8 %i.z, label %bb.l [
    i8 1, label %bb.j
    i8 2, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN4toml2v314toml_formatter12print_inlineERKNS0_5tableE(ptr noundef nonnull align 8 dereferenceable(97) %0, ptr noundef nonnull align 8 dereferenceable(89) %i.v)
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  tail call void @_ZN4toml2v314toml_formatter5printERKNS0_5arrayE(ptr noundef nonnull align 8 dereferenceable(97) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.v)
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  tail call void @_ZN4toml2v34impl9formatter11print_valueERKNS0_4nodeENS0_9node_typeE(ptr noundef nonnull align 8 dereferenceable(69) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.v, i8 noundef zeroext %i.z)
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.b, %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit"
  %i.bn = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0162.0180) #52 ; 2 uses
  %.not175 = icmp eq ptr %i.bn, %i.c
  br i1 %.not175, label %._crit_edge.loopexit, label %_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit

._crit_edge191.loopexit:                          ; preds = %bb.ak
  %.pre199 = load ptr, ptr %i.a, align 8, !tbaa !198, !noalias !714
  br label %._crit_edge191

._crit_edge191:                                   ; preds = %._crit_edge191.loopexit, %._crit_edge
  %i.bo = phi ptr [ %.pre199, %._crit_edge191.loopexit ], [ %i.j, %._crit_edge ] ; 2 uses
  %.not177194 = icmp eq ptr %i.bo, %i.c
  br i1 %.not177194, label %._crit_edge196, label %_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit101.lr.ph

_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit101.lr.ph: ; preds = %._crit_edge191
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.2.0..sroa_idx.i120 = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit101

_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit82: ; preds = %_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit82.lr.ph, %bb.ak
  %.sroa.0152.0190 = phi ptr [ %i.j, %_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit82.lr.ph ], [ %i.gf, %bb.ak ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0152.0190, i64 32 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0152.0190, i64 96
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !175 ; 7 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !75
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = tail call noundef zeroext i8 %i.cd(ptr noundef nonnull align 8 dereferenceable(40) %i.ca) #52
  %.not = icmp eq i8 %i.ce, 1
  br i1 %.not, label %bb.n, label %bb.ak

bb.n:                                             ; preds = %_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit82
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 88
  %i.cg = load i8, ptr %i.cf, align 8, !tbaa !145, !range !105, !noundef !106
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.ak, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 64
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !198, !noalias !715 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ca, i64 48 ; 2 uses
  %.not178181 = icmp eq ptr %i.cj, %i.ck
  br i1 %.not178181, label %._crit_edge186, label %_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit84

._crit_edge186.loopexit:                          ; preds = %bb.ac
  %i.cl = icmp eq i64 %.175, 0
  %i.cm = icmp ne i64 %.173, 0
  %i.cn = icmp ne i64 %.171, 0
  %i.co = select i1 %i.cm, i1 true, i1 %i.cn
  %i.cp = select i1 %i.cl, i1 %i.co, i1 false
  br label %._crit_edge186

._crit_edge186:                                   ; preds = %._crit_edge186.loopexit, %bb.o
  %.074.lcssa = phi i1 [ false, %bb.o ], [ %i.cp, %._crit_edge186.loopexit ]
  %i.cq = load ptr, ptr %i.l, align 8, !tbaa !716 ; 4 uses
  %i.cr = load ptr, ptr %i.m, align 8, !tbaa !150
  %.not.i.i83 = icmp eq ptr %i.cq, %i.cr
  br i1 %.not.i.i83, label %bb.q, label %bb.p

bb.p:                                             ; preds = %._crit_edge186
  store ptr %i.by, ptr %i.cq, align 8, !tbaa !203
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store ptr %i.cs, ptr %i.l, align 8, !tbaa !716
  br label %_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE9push_backEOS4_.exit

bb.q:                                             ; preds = %._crit_edge186
  %i.ct = load ptr, ptr %i.k, align 8, !tbaa !149 ; 4 uses
  %i.cu = ptrtoint ptr %i.cq to i64
  %i.cv = ptrtoint ptr %i.ct to i64               ; 2 uses
  %i.cw = sub i64 %i.cu, %i.cv                    ; 5 uses
  %i.cx = icmp eq i64 %i.cw, 9223372036854775800
  br i1 %i.cx, label %bb.r, label %_ZNKSt6vectorIPKN4toml2v33keyESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #54
  unreachable

_ZNKSt6vectorIPKN4toml2v33keyESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.q
  %i.cy = ashr exact i64 %i.cw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cy, i64 1)
  %i.cz = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cy ; 2 uses
  %i.da = icmp ult i64 %i.cz, %i.cy
  %i.db = tail call i64 @llvm.umin.i64(i64 %i.cz, i64 1152921504606846975)
  %i.dc = select i1 %i.da, i64 1152921504606846975, i64 %i.db ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.dc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.dd = shl nuw nsw i64 %i.dc, 3
  %i.de = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dd) #55 ; 4 uses
  %i.df = getelementptr inbounds i8, ptr %i.de, i64 %i.cw ; 2 uses
  store ptr %i.by, ptr %i.df, align 8, !tbaa !203
  %i.dg = icmp sgt i64 %i.cw, 0
  br i1 %i.dg, label %bb.s, label %_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.s:                                             ; preds = %_ZNKSt6vectorIPKN4toml2v33keyESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.de, ptr align 8 %i.ct, i64 %i.cw, i1 false)
  br label %_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i: ; preds = %bb.s, %_ZNKSt6vectorIPKN4toml2v33keyESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  %i.di = load ptr, ptr %i.m, align 8, !tbaa !150
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = sub i64 %i.dj, %i.cv
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.dk) #51
  br label %_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.t, %_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  store ptr %i.de, ptr %i.k, align 8, !tbaa !149
  store ptr %i.dh, ptr %i.l, align 8, !tbaa !716
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dc
  store ptr %i.dl, ptr %i.m, align 8, !tbaa !150
  br label %_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE9push_backEOS4_.exit: ; preds = %bb.p, %_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i
  br i1 %.074.lcssa, label %.critedge, label %bb.ad

_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit84: ; preds = %bb.o, %bb.ac
  %.070185 = phi i64 [ %.171, %bb.ac ], [ 0, %bb.o ] ; 5 uses
  %.072184 = phi i64 [ %.173, %bb.ac ], [ 0, %bb.o ] ; 5 uses
  %.074183 = phi i64 [ %.175, %bb.ac ], [ 0, %bb.o ] ; 5 uses
  %.sroa.0144.0182 = phi ptr [ %i.es, %bb.ac ], [ %i.cj, %bb.o ] ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0144.0182, i64 96
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !175 ; 4 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !75 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 40
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = tail call noundef zeroext i8 %i.dq(ptr noundef nonnull align 8 dereferenceable(40) %i.dn) #52 ; 2 uses
  %i.ds = icmp ne i8 %i.dr, 0
  tail call void @llvm.assume(i1 %i.ds)
  switch i8 %i.dr, label %bb.ab [
    i8 1, label %bb.u
    i8 2, label %bb.x
  ]

bb.u:                                             ; preds = %_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit84
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dn, i64 88
  %i.du = load i8, ptr %i.dt, align 8, !tbaa !145, !range !105, !noundef !106
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dw = add i64 %.074183, 1
  br label %bb.ac

bb.w:                                             ; preds = %bb.u
  %i.dx = add i64 %.072184, 1
  br label %bb.ac

bb.x:                                             ; preds = %_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit84
  %i.dy = getelementptr inbounds nuw i8, ptr %i.do, i64 224
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = tail call noundef ptr %i.dz(ptr noundef nonnull readonly align 8 dereferenceable(40) %i.dn) #52, !inline_history !705 ; 3 uses
  %.not.i85 = icmp eq ptr %i.ea, null
  br i1 %.not.i85, label %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit92.thread", label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 40
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !160 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !160 ; 2 uses
  %i.ef = icmp eq ptr %i.ec, %i.ee
  br i1 %i.ef, label %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit92.thread", label %.lr.ph.i.i.i86

bb.z:                                             ; preds = %.lr.ph.i.i.i86
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.012.017.i.i.i87, i64 8 ; 2 uses
  %.not15.i.i.i90 = icmp eq ptr %i.eg, %i.ee
  br i1 %.not15.i.i.i90, label %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit92", label %.lr.ph.i.i.i86

.lr.ph.i.i.i86:                                   ; preds = %bb.y, %bb.z
  %.sroa.012.017.i.i.i87 = phi ptr [ %i.eg, %bb.z ], [ %i.ec, %bb.y ] ; 2 uses
  %i.eh = load ptr, ptr %.sroa.012.017.i.i.i87, align 8, !tbaa !175 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !75
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 40
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = tail call noundef zeroext i8 %i.ek(ptr noundef nonnull align 8 dereferenceable(40) %i.eh) #52, !inline_history !706
  %.not.i.i.i88 = icmp eq i8 %i.el, 1
  br i1 %.not.i.i.i88, label %bb.z, label %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit92.thread"

"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit92": ; preds = %bb.z
  %i.em = load ptr, ptr %i.ec, align 8, !tbaa !175
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 88
  %i.eo = load i8, ptr %i.en, align 8, !tbaa !145, !range !105, !noundef !106
  %4 = trunc nuw i8 %i.eo to i1
  br i1 %4, label %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit92.thread", label %bb.aa

bb.aa:                                            ; preds = %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit92"
  %i.ep = add i64 %.070185, 1
  br label %bb.ac

"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit92.thread": ; preds = %.lr.ph.i.i.i86, %bb.y, %bb.x, %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit92"
  %i.eq = add i64 %.074183, 1
  br label %bb.ac

bb.ab:                                            ; preds = %_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit84
  %i.er = add i64 %.074183, 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit92.thread", %bb.v, %bb.w, %bb.ab
  %.175 = phi i64 [ %i.er, %bb.ab ], [ %i.dw, %bb.v ], [ %.074183, %bb.w ], [ %.074183, %bb.aa ], [ %i.eq, %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit92.thread" ] ; 2 uses
  %.173 = phi i64 [ %.072184, %bb.ab ], [ %.072184, %bb.v ], [ %i.dx, %bb.w ], [ %.072184, %bb.aa ], [ %.072184, %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit92.thread" ] ; 2 uses
  %.171 = phi i64 [ %.070185, %bb.ab ], [ %.070185, %bb.v ], [ %.070185, %bb.w ], [ %i.ep, %bb.aa ], [ %.070185, %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit92.thread" ] ; 2 uses
  %i.es = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0144.0182) #52 ; 2 uses
  %.not178 = icmp eq ptr %i.es, %i.ck
  br i1 %.not178, label %._crit_edge186.loopexit, label %_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit84

bb.ad:                                            ; preds = %_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE9push_backEOS4_.exit
  %i.et = load i8, ptr %i.n, align 8, !tbaa !331, !range !105, !noundef !106
  %i.eu = trunc nuw i8 %i.et to i1
  br i1 %i.eu, label %bb.ae, label %_ZN4toml2v314toml_formatter29print_pending_table_separatorEv.exit

bb.ae:                                            ; preds = %bb.ad
  %i.ev = load ptr, ptr %i.p, align 8, !tbaa !131
  %i.ew = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ev, i8 noundef signext 10) ; 0 uses
  store i8 1, ptr %i.o, align 4, !tbaa !130
  %i.ex = load ptr, ptr %i.p, align 8, !tbaa !131
  %i.ey = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ex, i8 noundef signext 10) ; 0 uses
  store i8 1, ptr %i.o, align 4, !tbaa !130
  store i8 0, ptr %i.n, align 8, !tbaa !331
  br label %_ZN4toml2v314toml_formatter29print_pending_table_separatorEv.exit

_ZN4toml2v314toml_formatter29print_pending_table_separatorEv.exit: ; preds = %bb.ad, %bb.ae
  %i.ez = load i64, ptr %i.q, align 8, !tbaa !126
  %i.fa = and i64 %i.ez, 512
  %.not.i.i79.not = icmp eq i64 %i.fa, 0
  %.pre198 = load i32, ptr %i.r, align 8, !tbaa !129 ; 2 uses
  br i1 %.not.i.i79.not, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZN4toml2v314toml_formatter29print_pending_table_separatorEv.exit
  %i.fb = add nsw i32 %.pre198, 1                 ; 2 uses
  store i32 %i.fb, ptr %i.r, align 8, !tbaa !129
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %_ZN4toml2v314toml_formatter29print_pending_table_separatorEv.exit
  %i.fc = phi i32 [ %i.fb, %bb.af ], [ %.pre198, %_ZN4toml2v314toml_formatter29print_pending_table_separatorEv.exit ]
  %i.fd = icmp sgt i32 %i.fc, 0
  br i1 %i.fd, label %.lr.ph.i93, label %_ZN4toml2v34impl9formatter12print_indentEv.exit98

.lr.ph.i93:                                       ; preds = %bb.ag, %.lr.ph.i93
  %.02.i95 = phi i32 [ %i.fg, %.lr.ph.i93 ], [ 0, %bb.ag ]
  %i.fe = load ptr, ptr %i.p, align 8, !tbaa !131
  %.sroa.0.0.copyload.i96 = load i64, ptr %i.s, align 8, !tbaa !124
  %.sroa.2.0.copyload.i97 = load ptr, ptr %.sroa.2.0..sroa_idx.i94, align 8, !tbaa !125
  %i.ff = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.fe, ptr noundef %.sroa.2.0.copyload.i97, i64 noundef %.sroa.0.0.copyload.i96) ; 0 uses
  store i8 0, ptr %i.o, align 4, !tbaa !130
  %i.fg = add nuw nsw i32 %.02.i95, 1             ; 2 uses
  %i.fh = load i32, ptr %i.r, align 8, !tbaa !129
  %i.fi = icmp slt i32 %i.fg, %i.fh
  br i1 %i.fi, label %.lr.ph.i93, label %_ZN4toml2v34impl9formatter12print_indentEv.exit98, !llvm.loop !38

_ZN4toml2v34impl9formatter12print_indentEv.exit98: ; preds = %.lr.ph.i93, %bb.ag
  %i.fj = load ptr, ptr %i.p, align 8, !tbaa !131
  %i.fk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.fj, ptr noundef nonnull @.str.47, i64 noundef 1) ; 0 uses
  store i8 0, ptr %i.o, align 4, !tbaa !130
  %i.fl = load ptr, ptr %i.k, align 8, !tbaa !717 ; 2 uses
  %i.fm = load ptr, ptr %i.l, align 8, !tbaa !717 ; 2 uses
  %.not45.i = icmp eq ptr %i.fl, %i.fm
  br i1 %.not45.i, label %.loopexit, label %.lr.ph.i99

.lr.ph.i99:                                       ; preds = %_ZN4toml2v34impl9formatter12print_indentEv.exit98, %bb.ai
  %.07.i = phi i64 [ %i.fo, %bb.ai ], [ 0, %_ZN4toml2v34impl9formatter12print_indentEv.exit98 ] ; 2 uses
  %.sroa.01.06.i = phi ptr [ %i.fu, %bb.ai ], [ %i.fl, %_ZN4toml2v34impl9formatter12print_indentEv.exit98 ] ; 2 uses
  %i.fn = load ptr, ptr %.sroa.01.06.i, align 8, !tbaa !203 ; 2 uses
  %i.fo = add i64 %.07.i, 1
  %.not.i100 = icmp eq i64 %.07.i, 0
  br i1 %.not.i100, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i99
  %i.fp = load ptr, ptr %i.p, align 8, !tbaa !131
  %i.fq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.fp, i8 noundef signext 46) ; 0 uses
  store i8 0, ptr %i.o, align 4, !tbaa !130
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.lr.ph.i99
  %i.fr = load ptr, ptr %i.fn, align 8, !tbaa !67
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !68
  tail call void @_ZN4toml2v34impl9formatter12print_stringESt17basic_string_viewIcSt11char_traitsIcEEbbb(ptr noundef nonnull align 8 dereferenceable(97) %0, i64 %i.ft, ptr %i.fr, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false)
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i, i64 8 ; 2 uses
  %.not4.i = icmp eq ptr %i.fu, %i.fm
  br i1 %.not4.i, label %.loopexit, label %.lr.ph.i99

.loopexit:                                        ; preds = %bb.ai, %_ZN4toml2v34impl9formatter12print_indentEv.exit98
  %i.fv = load ptr, ptr %i.p, align 8, !tbaa !131
  %i.fw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.fv, ptr noundef nonnull @.str.48, i64 noundef 1) ; 0 uses
  store i8 0, ptr %i.o, align 4, !tbaa !130
  store i8 1, ptr %i.n, align 8, !tbaa !331
  tail call void @_ZN4toml2v314toml_formatter5printERKNS0_5tableE(ptr noundef nonnull align 8 dereferenceable(97) %0, ptr noundef nonnull align 8 dereferenceable(89) %i.ca)
  %i.fx = load ptr, ptr %i.l, align 8, !tbaa !716
  %i.fy = getelementptr inbounds i8, ptr %i.fx, i64 -8
  store ptr %i.fy, ptr %i.l, align 8, !tbaa !716
  %i.fz = load i64, ptr %i.q, align 8, !tbaa !126
  %i.ga = and i64 %i.fz, 512
  %.not.i.i78.not = icmp eq i64 %i.ga, 0
  br i1 %.not.i.i78.not, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.loopexit
  %i.gb = load i32, ptr %i.r, align 8, !tbaa !129
  %i.gc = add nsw i32 %i.gb, -1
  store i32 %i.gc, ptr %i.r, align 8, !tbaa !129
  br label %bb.ak

.critedge:                                        ; preds = %_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE9push_backEOS4_.exit
  tail call void @_ZN4toml2v314toml_formatter5printERKNS0_5tableE(ptr noundef nonnull align 8 dereferenceable(97) %0, ptr noundef nonnull align 8 dereferenceable(89) %i.ca)
  %i.gd = load ptr, ptr %i.l, align 8, !tbaa !716
  %i.ge = getelementptr inbounds i8, ptr %i.gd, i64 -8
  store ptr %i.ge, ptr %i.l, align 8, !tbaa !716
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit, %bb.aj, %.critedge, %_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit82, %bb.n
  %i.gf = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0152.0190) #52 ; 2 uses
  %.not176 = icmp eq ptr %i.gf, %i.c
  br i1 %.not176, label %._crit_edge191.loopexit, label %_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit82

._crit_edge196:                                   ; preds = %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit109.thread", %._crit_edge191
  ret void

_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit101: ; preds = %_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit101.lr.ph, %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit109.thread"
  %.sroa.0134.0195 = phi ptr [ %i.bo, %_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit101.lr.ph ], [ %i.jy, %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit109.thread" ] ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.0134.0195, i64 32 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.0134.0195, i64 96
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !175 ; 4 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !75
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 224
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = tail call noundef ptr %i.gl(ptr noundef nonnull readonly align 8 dereferenceable(40) %i.gi) #52, !inline_history !705 ; 3 uses
  %.not.i102 = icmp eq ptr %i.gm, null
  br i1 %.not.i102, label %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit109.thread", label %bb.al

bb.al:                                            ; preds = %_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit101
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 40
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !160 ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 48
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !160 ; 2 uses
  %i.gr = icmp eq ptr %i.go, %i.gq
  br i1 %i.gr, label %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit109.thread", label %.lr.ph.i.i.i103

bb.am:                                            ; preds = %.lr.ph.i.i.i103
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.012.017.i.i.i104, i64 8 ; 2 uses
  %.not15.i.i.i107 = icmp eq ptr %i.gs, %i.gq
  br i1 %.not15.i.i.i107, label %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit109", label %.lr.ph.i.i.i103

.lr.ph.i.i.i103:                                  ; preds = %bb.al, %bb.am
  %.sroa.012.017.i.i.i104 = phi ptr [ %i.gs, %bb.am ], [ %i.go, %bb.al ] ; 2 uses
  %i.gt = load ptr, ptr %.sroa.012.017.i.i.i104, align 8, !tbaa !175 ; 2 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !75
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 40
  %i.gw = load ptr, ptr %i.gv, align 8
  %i.gx = tail call noundef zeroext i8 %i.gw(ptr noundef nonnull align 8 dereferenceable(40) %i.gt) #52, !inline_history !706
  %.not.i.i.i105 = icmp eq i8 %i.gx, 1
  br i1 %.not.i.i.i105, label %bb.am, label %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit109.thread"

"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit109": ; preds = %bb.am
  %i.gy = load ptr, ptr %i.go, align 8, !tbaa !175
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 88
  %i.ha = load i8, ptr %i.gz, align 8, !tbaa !145, !range !105, !noundef !106
  %5 = trunc nuw i8 %i.ha to i1
  br i1 %5, label %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit109.thread", label %bb.an

bb.an:                                            ; preds = %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit109"
  %i.hb = load i64, ptr %i.bp, align 8, !tbaa !126
  %i.hc = and i64 %i.hb, 512
  %.not.i.i77.not = icmp eq i64 %i.hc, 0
  br i1 %.not.i.i77.not, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hd = load i32, ptr %i.bq, align 8, !tbaa !129
  %i.he = add nsw i32 %i.hd, 1
  store i32 %i.he, ptr %i.bq, align 8, !tbaa !129
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.hf = load ptr, ptr %i.bs, align 8, !tbaa !716 ; 4 uses
  %i.hg = load ptr, ptr %i.bt, align 8, !tbaa !150
  %.not.i.i110 = icmp eq ptr %i.hf, %i.hg
  br i1 %.not.i.i110, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store ptr %i.gg, ptr %i.hf, align 8, !tbaa !203
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 8 ; 2 uses
  store ptr %i.hh, ptr %i.bs, align 8, !tbaa !716
  br label %_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE9push_backEOS4_.exit117

bb.ar:                                            ; preds = %bb.ap
  %i.hi = load ptr, ptr %i.br, align 8, !tbaa !149 ; 4 uses
  %i.hj = ptrtoint ptr %i.hf to i64
  %i.hk = ptrtoint ptr %i.hi to i64               ; 2 uses
  %i.hl = sub i64 %i.hj, %i.hk                    ; 5 uses
  %i.hm = icmp eq i64 %i.hl, 9223372036854775800
  br i1 %i.hm, label %bb.as, label %_ZNKSt6vectorIPKN4toml2v33keyESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i111

bb.as:                                            ; preds = %bb.ar
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #54
  unreachable

_ZNKSt6vectorIPKN4toml2v33keyESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i111: ; preds = %bb.ar
  %i.hn = ashr exact i64 %i.hl, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i112 = tail call i64 @llvm.umax.i64(i64 %i.hn, i64 1)
  %i.ho = add nsw i64 %.sroa.speculated.i.i.i.i112, %i.hn ; 2 uses
  %i.hp = icmp ult i64 %i.ho, %i.hn
  %i.hq = tail call i64 @llvm.umin.i64(i64 %i.ho, i64 1152921504606846975)
  %i.hr = select i1 %i.hp, i64 1152921504606846975, i64 %i.hq ; 3 uses
  %.not.i.i.i.i113 = icmp ne i64 %i.hr, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i113)
  %i.hs = shl nuw nsw i64 %i.hr, 3
  %i.ht = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hs) #55 ; 4 uses
  %i.hu = getelementptr inbounds i8, ptr %i.ht, i64 %i.hl ; 2 uses
  store ptr %i.gg, ptr %i.hu, align 8, !tbaa !203
  %i.hv = icmp sgt i64 %i.hl, 0
  br i1 %i.hv, label %bb.at, label %_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i114

bb.at:                                            ; preds = %_ZNKSt6vectorIPKN4toml2v33keyESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i111
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ht, ptr align 8 %i.hi, i64 %i.hl, i1 false)
  br label %_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i114

_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i114: ; preds = %bb.at, %_ZNKSt6vectorIPKN4toml2v33keyESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i111
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hu, i64 8 ; 2 uses
  %.not.i17.i.i.i115 = icmp eq ptr %i.hi, null
  br i1 %.not.i17.i.i.i115, label %_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i116, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i114
  %i.hx = load ptr, ptr %i.bt, align 8, !tbaa !150
  %i.hy = ptrtoint ptr %i.hx to i64
  %i.hz = sub i64 %i.hy, %i.hk
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hi, i64 noundef %i.hz) #51
  br label %_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i116

_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i116: ; preds = %bb.au, %_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i114
  store ptr %i.ht, ptr %i.br, align 8, !tbaa !149
  store ptr %i.hw, ptr %i.bs, align 8, !tbaa !716
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %i.hr
  store ptr %i.ia, ptr %i.bt, align 8, !tbaa !150
  br label %_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE9push_backEOS4_.exit117

_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE9push_backEOS4_.exit117: ; preds = %bb.aq, %_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i116
  %i.ib = phi ptr [ %i.hh, %bb.aq ], [ %i.hw, %_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i116 ]
  %i.ic = getelementptr inbounds nuw i8, ptr %i.gi, i64 40 ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.gi, i64 48 ; 2 uses
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !173
  %i.if = load ptr, ptr %i.ic, align 8, !tbaa !174
  %.not197 = icmp eq ptr %i.ie, %i.if
  br i1 %.not197, label %._crit_edge193, label %.lr.ph

._crit_edge193.loopexit:                          ; preds = %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_1clEv.exit131"
  %.pre200 = load ptr, ptr %i.bs, align 8, !tbaa !716
  br label %._crit_edge193

._crit_edge193:                                   ; preds = %._crit_edge193.loopexit, %_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE9push_backEOS4_.exit117
  %i.ig = phi ptr [ %.pre200, %._crit_edge193.loopexit ], [ %i.ib, %_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE9push_backEOS4_.exit117 ]
  %i.ih = getelementptr inbounds i8, ptr %i.ig, i64 -8
  store ptr %i.ih, ptr %i.bs, align 8, !tbaa !716
  %i.ii = load i64, ptr %i.bp, align 8, !tbaa !126
  %i.ij = and i64 %i.ii, 512
  %.not.i.i76.not = icmp eq i64 %i.ij, 0
  br i1 %.not.i.i76.not, label %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit109.thread", label %bb.ay

.lr.ph:                                           ; preds = %_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE9push_backEOS4_.exit117, %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_1clEv.exit131"
  %.068192 = phi i64 [ %i.jo, %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_1clEv.exit131" ], [ 0, %_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE9push_backEOS4_.exit117 ] ; 2 uses
  %i.ik = load i8, ptr %i.bu, align 8, !tbaa !331, !range !105, !noundef !106
  %i.il = trunc nuw i8 %i.ik to i1
  br i1 %i.il, label %bb.av, label %_ZN4toml2v314toml_formatter29print_pending_table_separatorEv.exit118

bb.av:                                            ; preds = %.lr.ph
  %i.im = load ptr, ptr %i.bw, align 8, !tbaa !131
  %i.in = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.im, i8 noundef signext 10) ; 0 uses
  store i8 1, ptr %i.bv, align 4, !tbaa !130
  %i.io = load ptr, ptr %i.bw, align 8, !tbaa !131
  %i.ip = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.io, i8 noundef signext 10) ; 0 uses
  store i8 1, ptr %i.bv, align 4, !tbaa !130
  store i8 0, ptr %i.bu, align 8, !tbaa !331
  br label %_ZN4toml2v314toml_formatter29print_pending_table_separatorEv.exit118

_ZN4toml2v314toml_formatter29print_pending_table_separatorEv.exit118: ; preds = %.lr.ph, %bb.av
  %i.iq = load i32, ptr %i.bq, align 8, !tbaa !129
  %i.ir = icmp sgt i32 %i.iq, 0
  br i1 %i.ir, label %.lr.ph.i119, label %_ZN4toml2v34impl9formatter12print_indentEv.exit124

.lr.ph.i119:                                      ; preds = %_ZN4toml2v314toml_formatter29print_pending_table_separatorEv.exit118, %.lr.ph.i119
  %.02.i121 = phi i32 [ %i.iu, %.lr.ph.i119 ], [ 0, %_ZN4toml2v314toml_formatter29print_pending_table_separatorEv.exit118 ]
  %i.is = load ptr, ptr %i.bw, align 8, !tbaa !131
  %.sroa.0.0.copyload.i122 = load i64, ptr %i.bx, align 8, !tbaa !124
  %.sroa.2.0.copyload.i123 = load ptr, ptr %.sroa.2.0..sroa_idx.i120, align 8, !tbaa !125
  %i.it = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.is, ptr noundef %.sroa.2.0.copyload.i123, i64 noundef %.sroa.0.0.copyload.i122) ; 0 uses
  store i8 0, ptr %i.bv, align 4, !tbaa !130
  %i.iu = add nuw nsw i32 %.02.i121, 1            ; 2 uses
  %i.iv = load i32, ptr %i.bq, align 8, !tbaa !129
  %i.iw = icmp slt i32 %i.iu, %i.iv
  br i1 %i.iw, label %.lr.ph.i119, label %_ZN4toml2v34impl9formatter12print_indentEv.exit124, !llvm.loop !38

_ZN4toml2v34impl9formatter12print_indentEv.exit124: ; preds = %.lr.ph.i119, %_ZN4toml2v314toml_formatter29print_pending_table_separatorEv.exit118
  %i.ix = load ptr, ptr %i.bw, align 8, !tbaa !131
  %i.iy = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.ix, ptr noundef nonnull @.str.49, i64 noundef 2) ; 0 uses
  store i8 0, ptr %i.bv, align 4, !tbaa !130
  %i.iz = load ptr, ptr %i.br, align 8, !tbaa !717 ; 2 uses
  %i.ja = load ptr, ptr %i.bs, align 8, !tbaa !717 ; 2 uses
  %.not45.i125 = icmp eq ptr %i.iz, %i.ja
  br i1 %.not45.i125, label %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_1clEv.exit131", label %.lr.ph.i126

.lr.ph.i126:                                      ; preds = %_ZN4toml2v34impl9formatter12print_indentEv.exit124, %bb.ax
  %.07.i127 = phi i64 [ %i.jc, %bb.ax ], [ 0, %_ZN4toml2v34impl9formatter12print_indentEv.exit124 ] ; 2 uses
  %.sroa.01.06.i128 = phi ptr [ %i.ji, %bb.ax ], [ %i.iz, %_ZN4toml2v34impl9formatter12print_indentEv.exit124 ] ; 2 uses
  %i.jb = load ptr, ptr %.sroa.01.06.i128, align 8, !tbaa !203 ; 2 uses
  %i.jc = add i64 %.07.i127, 1
  %.not.i129 = icmp eq i64 %.07.i127, 0
  br i1 %.not.i129, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.i126
  %i.jd = load ptr, ptr %i.bw, align 8, !tbaa !131
  %i.je = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.jd, i8 noundef signext 46) ; 0 uses
  store i8 0, ptr %i.bv, align 4, !tbaa !130
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %.lr.ph.i126
  %i.jf = load ptr, ptr %i.jb, align 8, !tbaa !67
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !68
  tail call void @_ZN4toml2v34impl9formatter12print_stringESt17basic_string_viewIcSt11char_traitsIcEEbbb(ptr noundef nonnull align 8 dereferenceable(97) %0, i64 %i.jh, ptr %i.jf, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false)
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i128, i64 8 ; 2 uses
  %.not4.i130 = icmp eq ptr %i.ji, %i.ja
  br i1 %.not4.i130, label %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_1clEv.exit131", label %.lr.ph.i126

"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_1clEv.exit131": ; preds = %bb.ax, %_ZN4toml2v34impl9formatter12print_indentEv.exit124
  %i.jj = load ptr, ptr %i.bw, align 8, !tbaa !131
  %i.jk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.jj, ptr noundef nonnull @.str.50, i64 noundef 2) ; 0 uses
  store i8 0, ptr %i.bv, align 4, !tbaa !130
  store i8 1, ptr %i.bu, align 8, !tbaa !331
  %i.jl = load ptr, ptr %i.ic, align 8, !tbaa !174
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %.068192
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !175
  tail call void @_ZN4toml2v314toml_formatter5printERKNS0_5tableE(ptr noundef nonnull align 8 dereferenceable(97) %0, ptr noundef nonnull align 8 dereferenceable(89) %i.jn)
  %i.jo = add nuw i64 %.068192, 1                 ; 2 uses
  %i.jp = load ptr, ptr %i.id, align 8, !tbaa !173
  %i.jq = load ptr, ptr %i.ic, align 8, !tbaa !174
  %i.jr = ptrtoint ptr %i.jp to i64
  %i.js = ptrtoint ptr %i.jq to i64
  %i.jt = sub i64 %i.jr, %i.js
  %i.ju = ashr exact i64 %i.jt, 3
  %i.jv = icmp ult i64 %i.jo, %i.ju
  br i1 %i.jv, label %.lr.ph, label %._crit_edge193.loopexit, !llvm.loop !711

bb.ay:                                            ; preds = %._crit_edge193
  %i.jw = load i32, ptr %i.bq, align 8, !tbaa !129
  %i.jx = add nsw i32 %i.jw, -1
  store i32 %i.jx, ptr %i.bq, align 8, !tbaa !129
  br label %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit109.thread"

"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit109.thread": ; preds = %.lr.ph.i.i.i103, %bb.al, %_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit101, %._crit_edge193, %bb.ay, %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit109"
  %i.jy = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0134.0195) #52 ; 2 uses
  %.not177 = icmp eq ptr %i.jy, %i.c
  br i1 %.not177, label %._crit_edge196, label %_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit101
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v314toml_formatter5printEv(ptr noundef nonnull align 8 dereferenceable(97) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !122    ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
end_hunk_6
begin_hunk_7_@_ZN4toml2v314json_formatter5printEv:bb.a
bb.d:                                             ; preds = %bb.a
  tail call void @_ZN4toml2v34impl9formatter11print_valueERKNS0_4nodeENS0_9node_typeE(ptr noundef nonnull align 8 dereferenceable(69) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i8 noundef zeroext %i.e)
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v314yaml_formatter17print_yaml_stringERKNS0_5valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(69) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(74) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !68   ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !67   ; 4 uses
  br i1 %i.d, label %bb.b, label %.lr.ph.preheader

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4toml2v34impl9formatter12print_stringESt17basic_string_viewIcSt11char_traitsIcEEbbb(ptr noundef nonnull align 8 dereferenceable(69) %0, i64 0, ptr %i.e, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true)
  br label %bb.g

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.c
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  br i1 %i.h, label %bb.c, label %.critedge59

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.03245 = phi ptr [ %i.i, %.lr.ph ], [ %i.e, %.lr.ph.preheader ] ; 2 uses
  %i.g = load i8, ptr %.03245, align 1, !tbaa !70
  %i.h = icmp eq i8 %i.g, 10                      ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.03245, i64 1 ; 2 uses
  %i.j = icmp uge ptr %i.i, %i.f
  %.not35 = select i1 %i.j, i1 true, i1 %i.h
  br i1 %.not35, label %._crit_edge, label %.lr.ph, !llvm.loop !722

bb.c:                                             ; preds = %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !131
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.53, i64 noundef 2) ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 4 uses
  store i8 0, ptr %i.n, align 4, !tbaa !130
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !129  ; 2 uses
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 8, !tbaa !129
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !67   ; 3 uses
  %i.s = load i64, ptr %i.b, align 8, !tbaa !68   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s ; 2 uses
  %.not54 = icmp eq i64 %i.s, -1
  br i1 %.not54, label %._crit_edge58, label %.lr.ph57

.lr.ph57:                                         ; preds = %bb.c
  %i.u = ptrtoaddr ptr %i.r to i64
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 -1
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = add i64 %i.s, %i.u                       ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph57, %bb.f
  %.03355 = phi ptr [ %i.v, %.lr.ph57 ], [ %.1.ptr42, %bb.f ] ; 4 uses
  %.ptr37 = getelementptr inbounds nuw i8, ptr %.03355, i64 1 ; 3 uses
  %.not3847 = icmp eq ptr %.ptr37, %i.t
  br i1 %.not3847, label %._crit_edge58.loopexit, label %.lr.ph51.preheader

.lr.ph51.preheader:                               ; preds = %bb.d
  %.0335564 = ptrtoaddr ptr %.03355 to i64        ; 2 uses
  %i.y = sub i64 %i.x, %.0335564                  ; 3 uses
  %scevgep = getelementptr i8, ptr %.03355, i64 %i.x
  %i.z = sub i64 0, %.0335564
  %scevgep65 = getelementptr i8, ptr %scevgep, i64 %i.z ; 2 uses
  br label %.lr.ph51

.lr.ph51:                                         ; preds = %.lr.ph51.preheader, %bb.e
  %.1.ptr49 = phi ptr [ %.1.ptr, %bb.e ], [ %.ptr37, %.lr.ph51.preheader ] ; 2 uses
  %.1.idx48 = phi i64 [ %.1.add, %bb.e ], [ 1, %.lr.ph51.preheader ] ; 2 uses
  %i.aa = load i8, ptr %.1.ptr49, align 1, !tbaa !70
  %.not36 = icmp eq i8 %i.aa, 10
  br i1 %.not36, label %_ZN4toml2v34impl9formatter13print_newlineEb.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph51
  %.1.add = add nuw i64 %.1.idx48, 1              ; 3 uses
  %.1.ptr = getelementptr inbounds nuw i8, ptr %.03355, i64 %.1.add
  %exitcond = icmp eq i64 %.1.add, %i.y
  br i1 %exitcond, label %.critedge, label %.lr.ph51, !llvm.loop !723

.critedge:                                        ; preds = %bb.e
  %.not39 = icmp eq i64 %i.y, 1
  br i1 %.not39, label %bb.f, label %_ZN4toml2v34impl9formatter13print_newlineEb.exit, !prof !245

_ZN4toml2v34impl9formatter13print_newlineEb.exit: ; preds = %.lr.ph51, %.critedge
  %.1.idx44 = phi i64 [ %i.y, %.critedge ], [ %.1.idx48, %.lr.ph51 ]
  %.1.ptr41 = phi ptr [ %scevgep65, %.critedge ], [ %.1.ptr49, %.lr.ph51 ]
  %i.ab = load ptr, ptr %i.k, align 8, !tbaa !131
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, i8 noundef signext 10) ; 0 uses
  store i8 1, ptr %i.n, align 4, !tbaa !130
  %i.ad = load i32, ptr %i.o, align 8, !tbaa !129
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph.i, label %_ZN4toml2v34impl9formatter12print_indentEv.exit

.lr.ph.i:                                         ; preds = %_ZN4toml2v34impl9formatter13print_newlineEb.exit, %.lr.ph.i
  %.02.i = phi i32 [ %i.ah, %.lr.ph.i ], [ 0, %_ZN4toml2v34impl9formatter13print_newlineEb.exit ]
  %i.af = load ptr, ptr %i.k, align 8, !tbaa !131
  %.sroa.0.0.copyload.i = load i64, ptr %i.w, align 8, !tbaa !124
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !125
  %i.ag = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i) ; 0 uses
  store i8 0, ptr %i.n, align 4, !tbaa !130
  %i.ah = add nuw nsw i32 %.02.i, 1               ; 2 uses
  %i.ai = load i32, ptr %i.o, align 8, !tbaa !129
  %i.aj = icmp slt i32 %i.ah, %i.ai
  br i1 %i.aj, label %.lr.ph.i, label %_ZN4toml2v34impl9formatter12print_indentEv.exit, !llvm.loop !38

_ZN4toml2v34impl9formatter12print_indentEv.exit:  ; preds = %.lr.ph.i, %_ZN4toml2v34impl9formatter13print_newlineEb.exit
  %gepdiff = add nsw i64 %.1.idx44, -1
  %i.ak = load ptr, ptr %i.k, align 8, !tbaa !131
  %i.al = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull %.ptr37, i64 noundef %gepdiff) ; 0 uses
  store i8 0, ptr %i.n, align 4, !tbaa !130
  br label %bb.f

bb.f:                                             ; preds = %_ZN4toml2v34impl9formatter12print_indentEv.exit, %.critedge
  %.1.ptr42 = phi ptr [ %.1.ptr41, %_ZN4toml2v34impl9formatter12print_indentEv.exit ], [ %scevgep65, %.critedge ] ; 2 uses
  %.not = icmp eq ptr %.1.ptr42, %i.t
  br i1 %.not, label %._crit_edge58.loopexit, label %bb.d, !llvm.loop !724

._crit_edge58.loopexit:                           ; preds = %bb.d, %bb.f
  %.pre = load i32, ptr %i.o, align 8, !tbaa !129
  %i.am = add nsw i32 %.pre, -1
  br label %._crit_edge58

._crit_edge58:                                    ; preds = %._crit_edge58.loopexit, %bb.c
  %i.an = phi i32 [ %i.am, %._crit_edge58.loopexit ], [ %i.p, %bb.c ]
  store i32 %i.an, ptr %i.o, align 8, !tbaa !129
  br label %bb.g

.critedge59:                                      ; preds = %._crit_edge
  tail call void @_ZN4toml2v34impl9formatter12print_stringESt17basic_string_viewIcSt11char_traitsIcEEbbb(ptr noundef nonnull align 8 dereferenceable(69) %0, i64 %i.c, ptr %i.e, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true)
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge58, %.critedge59, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v314yaml_formatter5printERKNS0_5tableEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(69) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(89) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.b = load i64, ptr %i.a, align 8, !tbaa !158
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !131
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.40, i64 noundef 2) ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 0, ptr %i.g, align 4, !tbaa !130
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !129  ; 2 uses
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 8, !tbaa !129
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !198, !noalias !727 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.not24 = icmp eq ptr %i.l, %i.m
  br i1 %.not24, label %._crit_edge, label %_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit.lr.ph

_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit.lr.ph: ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit

._crit_edge.loopexit:                             ; preds = %bb.m
  %.pre = load i32, ptr %i.h, align 8, !tbaa !129
  %i.r = add nsw i32 %.pre, -1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %i.s = phi i32 [ %i.r, %._crit_edge.loopexit ], [ %i.i, %bb.c ]
  store i32 %i.s, ptr %i.h, align 8, !tbaa !129
  br label %bb.n

_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit: ; preds = %_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit.lr.ph, %bb.m
  %.026 = phi i1 [ %2, %_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit.lr.ph ], [ false, %bb.m ]
  %.sroa.021.025 = phi ptr [ %i.l, %_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit.lr.ph ], [ %i.at, %bb.m ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.021.025, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.021.025, i64 96
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !175  ; 6 uses
  br i1 %.026, label %_ZN4toml2v34impl9formatter12print_indentEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit
  %i.w = load i8, ptr %i.n, align 4, !tbaa !130, !range !105, !noundef !106
  %3 = trunc nuw i8 %i.w to i1
  br i1 %3, label %_ZN4toml2v34impl9formatter13print_newlineEb.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !131
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.x, i8 noundef signext 10) ; 0 uses
  store i8 1, ptr %i.n, align 4, !tbaa !130
  br label %_ZN4toml2v34impl9formatter13print_newlineEb.exit

_ZN4toml2v34impl9formatter13print_newlineEb.exit: ; preds = %bb.d, %bb.e
  %i.z = load i32, ptr %i.h, align 8, !tbaa !129
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph.i, label %_ZN4toml2v34impl9formatter12print_indentEv.exit

.lr.ph.i:                                         ; preds = %_ZN4toml2v34impl9formatter13print_newlineEb.exit, %.lr.ph.i
  %.02.i = phi i32 [ %i.ad, %.lr.ph.i ], [ 0, %_ZN4toml2v34impl9formatter13print_newlineEb.exit ]
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !131
  %.sroa.0.0.copyload.i = load i64, ptr %i.p, align 8, !tbaa !124
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !125
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i) ; 0 uses
  store i8 0, ptr %i.n, align 4, !tbaa !130
  %i.ad = add nuw nsw i32 %.02.i, 1               ; 2 uses
  %i.ae = load i32, ptr %i.h, align 8, !tbaa !129
  %i.af = icmp slt i32 %i.ad, %i.ae
  br i1 %i.af, label %.lr.ph.i, label %_ZN4toml2v34impl9formatter12print_indentEv.exit, !llvm.loop !38

_ZN4toml2v34impl9formatter12print_indentEv.exit:  ; preds = %.lr.ph.i, %_ZN4toml2v34impl9formatter13print_newlineEb.exit, %_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit
  %i.ag = load ptr, ptr %i.t, align 8, !tbaa !67
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.021.025, i64 40
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !68
  tail call void @_ZN4toml2v34impl9formatter12print_stringESt17basic_string_viewIcSt11char_traitsIcEEbbb(ptr noundef nonnull align 8 dereferenceable(69) %0, i64 %i.ai, ptr %i.ag, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true)
  %i.aj = load i64, ptr %i.q, align 8, !tbaa !126
  %i.ak = and i64 %i.aj, 4096
  %.not.i.i.not = icmp eq i64 %i.ak, 0
  %i.al = load ptr, ptr %i.o, align 8, !tbaa !131 ; 2 uses
  br i1 %.not.i.i.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN4toml2v34impl9formatter12print_indentEv.exit
  %i.am = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull @.str.51, i64 noundef 1) ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %_ZN4toml2v34impl9formatter12print_indentEv.exit
  %i.an = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull @.str.54, i64 noundef 2) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store i8 0, ptr %i.n, align 4, !tbaa !130
  %i.ao = load ptr, ptr %i.v, align 8, !tbaa !75
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call noundef zeroext i8 %i.aq(ptr noundef nonnull align 8 dereferenceable(40) %i.v) #52 ; 3 uses
  %i.as = icmp ne i8 %i.ar, 0
  tail call void @llvm.assume(i1 %i.as)
  switch i8 %i.ar, label %bb.l [
    i8 1, label %bb.i
    i8 2, label %bb.j
    i8 3, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4toml2v314yaml_formatter5printERKNS0_5tableEb(ptr noundef nonnull align 8 dereferenceable(69) %0, ptr noundef nonnull align 8 dereferenceable(89) %i.v, i1 noundef zeroext false)
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  tail call void @_ZN4toml2v314yaml_formatter5printERKNS0_5arrayEb(ptr noundef nonnull align 8 dereferenceable(69) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.v, i1 noundef zeroext false)
  br label %bb.m

bb.k:                                             ; preds = %bb.h
  tail call void @_ZN4toml2v314yaml_formatter17print_yaml_stringERKNS0_5valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE(ptr noundef nonnull align 8 dereferenceable(69) %0, ptr noundef nonnull align 8 dereferenceable(74) %i.v)
  br label %bb.m

bb.l:                                             ; preds = %bb.h
  tail call void @_ZN4toml2v34impl9formatter11print_valueERKNS0_4nodeENS0_9node_typeE(ptr noundef nonnull align 8 dereferenceable(69) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.v, i8 noundef zeroext %i.ar)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %i.at = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.021.025) #52 ; 2 uses
  %.not = icmp eq ptr %i.at, %i.m
  br i1 %.not, label %._crit_edge.loopexit, label %_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit

bb.n:                                             ; preds = %._crit_edge, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v314yaml_formatter5printERKNS0_5arrayEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(69) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !160  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !160  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !131
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.46, i64 noundef 2) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 0, ptr %i.i, align 4, !tbaa !130
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !129
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !129
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.e

bb.d:                                             ; preds = %bb.l
  %i.p = load i32, ptr %i.j, align 8, !tbaa !129
  %i.q = add nsw i32 %i.p, -1
  store i32 %i.q, ptr %i.j, align 8, !tbaa !129
  br label %bb.m

bb.e:                                             ; preds = %bb.c, %bb.l
  %.019 = phi i1 [ %2, %bb.c ], [ false, %bb.l ]
  %.sroa.015.018 = phi ptr [ %i.b, %bb.c ], [ %i.aj, %bb.l ] ; 2 uses
  %i.r = load ptr, ptr %.sroa.015.018, align 8, !tbaa !175 ; 6 uses
  br i1 %.019, label %_ZN4toml2v34impl9formatter12print_indentEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i8, ptr %i.m, align 4, !tbaa !130, !range !105, !noundef !106
  %3 = trunc nuw i8 %i.s to i1
  br i1 %3, label %_ZN4toml2v34impl9formatter13print_newlineEb.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !131
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.t, i8 noundef signext 10) ; 0 uses
  store i8 1, ptr %i.m, align 4, !tbaa !130
  br label %_ZN4toml2v34impl9formatter13print_newlineEb.exit

_ZN4toml2v34impl9formatter13print_newlineEb.exit: ; preds = %bb.f, %bb.g
  %i.v = load i32, ptr %i.j, align 8, !tbaa !129
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph.i, label %_ZN4toml2v34impl9formatter12print_indentEv.exit

.lr.ph.i:                                         ; preds = %_ZN4toml2v34impl9formatter13print_newlineEb.exit, %.lr.ph.i
  %.02.i = phi i32 [ %i.z, %.lr.ph.i ], [ 0, %_ZN4toml2v34impl9formatter13print_newlineEb.exit ]
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !131
  %.sroa.0.0.copyload.i = load i64, ptr %i.o, align 8, !tbaa !124
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !125
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i) ; 0 uses
  store i8 0, ptr %i.m, align 4, !tbaa !130
  %i.z = add nuw nsw i32 %.02.i, 1                ; 2 uses
  %i.aa = load i32, ptr %i.j, align 8, !tbaa !129
  %i.ab = icmp slt i32 %i.z, %i.aa
  br i1 %i.ab, label %.lr.ph.i, label %_ZN4toml2v34impl9formatter12print_indentEv.exit, !llvm.loop !38

_ZN4toml2v34impl9formatter12print_indentEv.exit:  ; preds = %.lr.ph.i, %_ZN4toml2v34impl9formatter13print_newlineEb.exit, %bb.e
  %i.ac = load ptr, ptr %i.n, align 8, !tbaa !131
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.55, i64 noundef 2) ; 0 uses
  store i8 0, ptr %i.m, align 4, !tbaa !130
  %i.ae = load ptr, ptr %i.r, align 8, !tbaa !75
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef zeroext i8 %i.ag(ptr noundef nonnull align 8 dereferenceable(40) %i.r) #52 ; 3 uses
  %i.ai = icmp ne i8 %i.ah, 0
  tail call void @llvm.assume(i1 %i.ai)
  switch i8 %i.ah, label %bb.k [
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.j
  ]

bb.h:                                             ; preds = %_ZN4toml2v34impl9formatter12print_indentEv.exit
  tail call void @_ZN4toml2v314yaml_formatter5printERKNS0_5tableEb(ptr noundef nonnull align 8 dereferenceable(69) %0, ptr noundef nonnull align 8 dereferenceable(89) %i.r, i1 noundef zeroext true)
  br label %bb.l

bb.i:                                             ; preds = %_ZN4toml2v34impl9formatter12print_indentEv.exit
  tail call void @_ZN4toml2v314yaml_formatter5printERKNS0_5arrayEb(ptr noundef nonnull align 8 dereferenceable(69) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.r, i1 noundef zeroext true)
  br label %bb.l

bb.j:                                             ; preds = %_ZN4toml2v34impl9formatter12print_indentEv.exit
  tail call void @_ZN4toml2v314yaml_formatter17print_yaml_stringERKNS0_5valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE(ptr noundef nonnull align 8 dereferenceable(69) %0, ptr noundef nonnull align 8 dereferenceable(74) %i.r)
  br label %bb.l

bb.k:                                             ; preds = %_ZN4toml2v34impl9formatter12print_indentEv.exit
  tail call void @_ZN4toml2v34impl9formatter11print_valueERKNS0_4nodeENS0_9node_typeE(ptr noundef nonnull align 8 dereferenceable(69) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.r, i8 noundef zeroext %i.ah)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.015.018, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.aj, %i.d
  br i1 %.not, label %bb.d, label %bb.e

bb.m:                                             ; preds = %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v314yaml_formatter5printEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(69) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !122    ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i8 %i.d(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #52 ; 2 uses
  switch i8 %i.e, label %bb.e [
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !129
  %i.h = add nsw i32 %i.g, -1
  store i32 %i.h, ptr %i.f, align 8, !tbaa !129
  tail call void @_ZN4toml2v314yaml_formatter5printERKNS0_5tableEb(ptr noundef nonnull align 8 dereferenceable(69) %0, ptr noundef nonnull align 8 dereferenceable(89) %i.a, i1 noundef zeroext false)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4toml2v314yaml_formatter5printERKNS0_5arrayEb(ptr noundef nonnull align 8 dereferenceable(69) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i1 noundef zeroext false)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN4toml2v314yaml_formatter17print_yaml_stringERKNS0_5valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE(ptr noundef nonnull align 8 dereferenceable(69) %0, ptr noundef nonnull align 8 dereferenceable(74) %i.a)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void @_ZN4toml2v34impl9formatter11print_valueERKNS0_4nodeENS0_9node_typeE(ptr noundef nonnull align 8 dereferenceable(69) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i8 noundef zeroext %i.e)
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef zeroext i8 @_ZNK4toml2v35array4typeEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret i8 2
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef zeroext i1 @_ZNK4toml2v35array8is_tableEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef zeroext i1 @_ZNK4toml2v35array8is_arrayEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define linkonce_odr noundef zeroext i1 @_ZNK4toml2v35array18is_array_of_tablesEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !160  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !160  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_ZNK4toml2v35array14is_homogeneousENS0_9node_typeE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.012.017.i = phi ptr [ %i.k, %.lr.ph.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %.sroa.012.017.i, align 8, !tbaa !175 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !75
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef zeroext i8 %i.i(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #52, !inline_history !728
  %.not.i = icmp eq i8 %i.j, 1                    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.012.017.i, i64 8 ; 2 uses
  %.not15.i = icmp ne ptr %i.k, %i.d
  %or.cond.not = select i1 %.not.i, i1 %.not15.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %_ZNK4toml2v35array14is_homogeneousENS0_9node_typeE.exit

_ZNK4toml2v35array14is_homogeneousENS0_9node_typeE.exit: ; preds = %.lr.ph.i, %bb.a
  %.3.i = phi i1 [ false, %bb.a ], [ %.not.i, %.lr.ph.i ]
  ret i1 %.3.i
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef zeroext i1 @_ZNK4toml2v35array8is_valueEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef zeroext i1 @_ZNK4toml2v35array9is_stringEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef zeroext i1 @_ZNK4toml2v35array10is_integerEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef zeroext i1 @_ZNK4toml2v35array17is_floating_pointEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef zeroext i1 @_ZNK4toml2v35array9is_numberEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef zeroext i1 @_ZNK4toml2v35array10is_booleanEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef zeroext i1 @_ZNK4toml2v35array7is_dateEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef zeroext i1 @_ZNK4toml2v35array7is_timeEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef zeroext i1 @_ZNK4toml2v35array12is_date_timeEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #28 comdat align 2 {
bb.a:
end_hunk_7
