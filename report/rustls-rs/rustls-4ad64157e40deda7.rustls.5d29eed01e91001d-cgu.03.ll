Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/rustls-4ad64157e40deda7.rustls.5d29eed01e91001d-cgu.03?download=true
inline.NumInlined: 756
inline.NumDeleted: 183
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort12sort8_stableTmmENvYB19_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls:.lr.ph.i
  %.sroa.0.0.i.i22.i20 = select i1 %i.cf, i1 %i.ch, i1 %i.cg ; 3 uses
  %i.ci = select i1 %.sroa.0.0.i.i21.i15, ptr %i.bv, ptr %i.bq, !unpredictable !4
  %i.cj = select i1 %.sroa.0.0.i.i22.i20, ptr %i.bt, ptr %i.bx, !unpredictable !4
  %i.ck = select i1 %.sroa.0.0.i.i22.i20, ptr %i.bv, ptr %i.bt, !unpredictable !4
  %i.cl = select i1 %.sroa.0.0.i.i21.i15, ptr %i.bq, ptr %i.ck, !unpredictable !4 ; 4 uses
  %i.cm = select i1 %.sroa.0.0.i.i21.i15, ptr %i.bt, ptr %i.bv, !unpredictable !4
  %i.cn = select i1 %.sroa.0.0.i.i22.i20, ptr %i.bx, ptr %i.cm, !unpredictable !4 ; 4 uses
  %.val.i21 = load i32, ptr %i.cn, align 4, !noundef !4 ; 2 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 4
  %.val1.i22 = load i32, ptr %i.co, align 4
  %.val2.i23 = load i32, ptr %i.cl, align 4, !noundef !4 ; 2 uses
  %i.cp = getelementptr i8, ptr %i.cl, i64 4
  %.val3.i24 = load i32, ptr %i.cp, align 4
  %i.cq = icmp eq i32 %.val.i21, %.val2.i23
  %i.cr = icmp ult i32 %.val.i21, %.val2.i23
  %i.cs = icmp ult i32 %.val1.i22, %.val3.i24
  %.sroa.0.0.i.i23.i25 = select i1 %i.cq, i1 %i.cs, i1 %i.cr ; 2 uses
  %i.ct = select i1 %.sroa.0.0.i.i23.i25, ptr %i.cn, ptr %i.cl, !unpredictable !4
  %i.cu = select i1 %.sroa.0.0.i.i23.i25, ptr %i.cl, ptr %i.cn, !unpredictable !4
  %i.cv = load i64, ptr %i.ci, align 4            ; 3 uses
  store i64 %i.cv, ptr %i.bb, align 4
  %i.cw = getelementptr i8, ptr %2, i64 40
  %i.cx = load i64, ptr %i.ct, align 4
  store i64 %i.cx, ptr %i.cw, align 4
  %i.cy = getelementptr i8, ptr %2, i64 48
  %i.cz = load i64, ptr %i.cu, align 4
  store i64 %i.cz, ptr %i.cy, align 4
  %i.da = getelementptr i8, ptr %2, i64 56        ; 3 uses
  %i.db = load i64, ptr %i.cj, align 4            ; 3 uses
  store i64 %i.db, ptr %i.da, align 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dd = trunc i64 %i.cv to i32                  ; 2 uses
  %i.de = lshr i64 %i.cv, 32
  %i.df = trunc nuw i64 %i.de to i32
  %i.dg = trunc i64 %i.at to i32                  ; 2 uses
  %i.dh = getelementptr i8, ptr %2, i64 4
  %.sroa.06.0.val23.i = load i32, ptr %i.dh, align 4, !alias.scope !210
  %i.di = icmp eq i32 %i.dd, %i.dg
  %i.dj = icmp ult i32 %i.dd, %i.dg
  %i.dk = icmp ugt i32 %.sroa.06.0.val23.i, %i.df
  %.sroa.0.0.i.i.i26 = select i1 %i.di, i1 %i.dk, i1 %i.dj ; 3 uses
  %..i21.i = select i1 %.sroa.0.0.i.i.i26, ptr %i.bb, ptr %2
  %i.dl = xor i1 %.sroa.0.0.i.i.i26, true
  %i.dm = load i64, ptr %..i21.i, align 4, !alias.scope !210, !noalias !213
  store i64 %i.dm, ptr %1, align 4, !noalias !217
  %i.dn = zext i1 %.sroa.0.0.i.i.i26 to i64
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.dn ; 4 uses
  %i.dp = zext i1 %i.dl to i64
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.dp ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ds = trunc i64 %i.db to i32                  ; 2 uses
  %i.dt = lshr i64 %i.db, 32
  %i.du = trunc nuw i64 %i.dt to i32
  %.sroa.015.0.val.i = load i32, ptr %i.ay, align 4, !alias.scope !210, !noundef !4 ; 2 uses
  %i.dv = getelementptr i8, ptr %2, i64 28
  %.sroa.015.0.val25.i = load i32, ptr %i.dv, align 4, !alias.scope !210
  %i.dw = icmp eq i32 %.sroa.015.0.val.i, %i.ds
  %i.dx = icmp ugt i32 %.sroa.015.0.val.i, %i.ds
  %i.dy = icmp ugt i32 %.sroa.015.0.val25.i, %i.du
  %.sroa.0.0.i.i26.i = select i1 %i.dw, i1 %i.dy, i1 %i.dx ; 3 uses
  %..i.i = select i1 %.sroa.0.0.i.i26.i, ptr %i.ay, ptr %i.da
  %i.dz = xor i1 %.sroa.0.0.i.i26.i, true
  %i.ea = load i64, ptr %..i.i, align 4, !alias.scope !210, !noalias !218
  store i64 %i.ea, ptr %i.dc, align 4, !noalias !222
  %.neg.i.i = sext i1 %i.dz to i64
  %i.eb = getelementptr [8 x i8], ptr %i.da, i64 %.neg.i.i ; 4 uses
  %.neg13.i.i = sext i1 %.sroa.0.0.i.i26.i to i64
  %i.ec = getelementptr [8 x i8], ptr %i.ay, i64 %.neg13.i.i ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.011.0.val.i.1 = load i32, ptr %i.do, align 4, !alias.scope !210, !noundef !4 ; 2 uses
  %i.ee = getelementptr i8, ptr %i.do, i64 4
  %.sroa.011.0.val22.i.1 = load i32, ptr %i.ee, align 4, !alias.scope !210
  %.sroa.06.0.val.i.1 = load i32, ptr %i.dq, align 4, !alias.scope !210, !noundef !4 ; 2 uses
  %i.ef = getelementptr i8, ptr %i.dq, i64 4
  %.sroa.06.0.val23.i.1 = load i32, ptr %i.ef, align 4, !alias.scope !210
  %i.eg = icmp eq i32 %.sroa.011.0.val.i.1, %.sroa.06.0.val.i.1
  %i.eh = icmp ult i32 %.sroa.011.0.val.i.1, %.sroa.06.0.val.i.1
  %i.ei = icmp ult i32 %.sroa.011.0.val22.i.1, %.sroa.06.0.val23.i.1
  %.sroa.0.0.i.i.i26.1 = select i1 %i.eg, i1 %i.ei, i1 %i.eh ; 3 uses
  %..i21.i.1 = select i1 %.sroa.0.0.i.i.i26.1, ptr %i.do, ptr %i.dq
  %i.ej = xor i1 %.sroa.0.0.i.i.i26.1, true
  %i.ek = load i64, ptr %..i21.i.1, align 4, !alias.scope !210, !noalias !213
  store i64 %i.ek, ptr %i.dr, align 4, !noalias !217
  %i.el = zext i1 %.sroa.0.0.i.i.i26.1 to i64
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.el ; 4 uses
  %i.en = zext i1 %i.ej to i64
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.en ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.017.0.val.i.1 = load i32, ptr %i.eb, align 4, !alias.scope !210, !noundef !4 ; 2 uses
  %i.eq = getelementptr i8, ptr %i.eb, i64 4
  %.sroa.017.0.val24.i.1 = load i32, ptr %i.eq, align 4, !alias.scope !210
  %.sroa.015.0.val.i.1 = load i32, ptr %i.ec, align 4, !alias.scope !210, !noundef !4 ; 2 uses
  %i.er = getelementptr i8, ptr %i.ec, i64 4
  %.sroa.015.0.val25.i.1 = load i32, ptr %i.er, align 4, !alias.scope !210
  %i.es = icmp eq i32 %.sroa.017.0.val.i.1, %.sroa.015.0.val.i.1
  %i.et = icmp ult i32 %.sroa.017.0.val.i.1, %.sroa.015.0.val.i.1
  %i.eu = icmp ult i32 %.sroa.017.0.val24.i.1, %.sroa.015.0.val25.i.1
  %.sroa.0.0.i.i26.i.1 = select i1 %i.es, i1 %i.eu, i1 %i.et ; 3 uses
  %..i.i.1 = select i1 %.sroa.0.0.i.i26.i.1, ptr %i.ec, ptr %i.eb
  %i.ev = xor i1 %.sroa.0.0.i.i26.i.1, true
  %i.ew = load i64, ptr %..i.i.1, align 4, !alias.scope !210, !noalias !218
  store i64 %i.ew, ptr %i.ed, align 4, !noalias !222
  %.neg.i.i.1 = sext i1 %i.ev to i64
  %i.ex = getelementptr [8 x i8], ptr %i.eb, i64 %.neg.i.i.1 ; 4 uses
  %.neg13.i.i.1 = sext i1 %.sroa.0.0.i.i26.i.1 to i64
  %i.ey = getelementptr [8 x i8], ptr %i.ec, i64 %.neg13.i.i.1 ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.011.0.val.i.2 = load i32, ptr %i.em, align 4, !alias.scope !210, !noundef !4 ; 2 uses
  %i.fa = getelementptr i8, ptr %i.em, i64 4
  %.sroa.011.0.val22.i.2 = load i32, ptr %i.fa, align 4, !alias.scope !210
  %.sroa.06.0.val.i.2 = load i32, ptr %i.eo, align 4, !alias.scope !210, !noundef !4 ; 2 uses
  %i.fb = getelementptr i8, ptr %i.eo, i64 4
  %.sroa.06.0.val23.i.2 = load i32, ptr %i.fb, align 4, !alias.scope !210
  %i.fc = icmp eq i32 %.sroa.011.0.val.i.2, %.sroa.06.0.val.i.2
  %i.fd = icmp ult i32 %.sroa.011.0.val.i.2, %.sroa.06.0.val.i.2
  %i.fe = icmp ult i32 %.sroa.011.0.val22.i.2, %.sroa.06.0.val23.i.2
  %.sroa.0.0.i.i.i26.2 = select i1 %i.fc, i1 %i.fe, i1 %i.fd ; 3 uses
  %..i21.i.2 = select i1 %.sroa.0.0.i.i.i26.2, ptr %i.em, ptr %i.eo
  %i.ff = xor i1 %.sroa.0.0.i.i.i26.2, true
  %i.fg = load i64, ptr %..i21.i.2, align 4, !alias.scope !210, !noalias !213
  store i64 %i.fg, ptr %i.ep, align 4, !noalias !217
  %i.fh = zext i1 %.sroa.0.0.i.i.i26.2 to i64
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.fh ; 4 uses
  %i.fj = zext i1 %i.ff to i64
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.fj ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.017.0.val.i.2 = load i32, ptr %i.ex, align 4, !alias.scope !210, !noundef !4 ; 2 uses
  %i.fm = getelementptr i8, ptr %i.ex, i64 4
  %.sroa.017.0.val24.i.2 = load i32, ptr %i.fm, align 4, !alias.scope !210
  %.sroa.015.0.val.i.2 = load i32, ptr %i.ey, align 4, !alias.scope !210, !noundef !4 ; 2 uses
  %i.fn = getelementptr i8, ptr %i.ey, i64 4
  %.sroa.015.0.val25.i.2 = load i32, ptr %i.fn, align 4, !alias.scope !210
  %i.fo = icmp eq i32 %.sroa.017.0.val.i.2, %.sroa.015.0.val.i.2
  %i.fp = icmp ult i32 %.sroa.017.0.val.i.2, %.sroa.015.0.val.i.2
  %i.fq = icmp ult i32 %.sroa.017.0.val24.i.2, %.sroa.015.0.val25.i.2
  %.sroa.0.0.i.i26.i.2 = select i1 %i.fo, i1 %i.fq, i1 %i.fp ; 3 uses
  %..i.i.2 = select i1 %.sroa.0.0.i.i26.i.2, ptr %i.ey, ptr %i.ex
  %i.fr = xor i1 %.sroa.0.0.i.i26.i.2, true
  %i.fs = load i64, ptr %..i.i.2, align 4, !alias.scope !210, !noalias !218
  store i64 %i.fs, ptr %i.ez, align 4, !noalias !222
  %.neg.i.i.2 = sext i1 %i.fr to i64
  %i.ft = getelementptr [8 x i8], ptr %i.ex, i64 %.neg.i.i.2 ; 4 uses
  %.neg13.i.i.2 = sext i1 %.sroa.0.0.i.i26.i.2 to i64
  %i.fu = getelementptr [8 x i8], ptr %i.ey, i64 %.neg13.i.i.2 ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.011.0.val.i.3 = load i32, ptr %i.fi, align 4, !alias.scope !210, !noundef !4 ; 2 uses
  %i.fw = getelementptr i8, ptr %i.fi, i64 4
  %.sroa.011.0.val22.i.3 = load i32, ptr %i.fw, align 4, !alias.scope !210
  %.sroa.06.0.val.i.3 = load i32, ptr %i.fk, align 4, !alias.scope !210, !noundef !4 ; 2 uses
  %i.fx = getelementptr i8, ptr %i.fk, i64 4
  %.sroa.06.0.val23.i.3 = load i32, ptr %i.fx, align 4, !alias.scope !210
  %i.fy = icmp eq i32 %.sroa.011.0.val.i.3, %.sroa.06.0.val.i.3
  %i.fz = icmp ult i32 %.sroa.011.0.val.i.3, %.sroa.06.0.val.i.3
  %i.ga = icmp ult i32 %.sroa.011.0.val22.i.3, %.sroa.06.0.val23.i.3
  %.sroa.0.0.i.i.i26.3 = select i1 %i.fy, i1 %i.ga, i1 %i.fz ; 3 uses
  %..i21.i.3 = select i1 %.sroa.0.0.i.i.i26.3, ptr %i.fi, ptr %i.fk
  %i.gb = xor i1 %.sroa.0.0.i.i.i26.3, true
  %i.gc = load i64, ptr %..i21.i.3, align 4, !alias.scope !210, !noalias !213
  store i64 %i.gc, ptr %i.fl, align 4, !noalias !217
  %i.gd = zext i1 %.sroa.0.0.i.i.i26.3 to i64
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.gd
  %i.gf = zext i1 %i.gb to i64
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.gf
  %.sroa.017.0.val.i.3 = load i32, ptr %i.ft, align 4, !alias.scope !210, !noundef !4 ; 2 uses
  %i.gh = getelementptr i8, ptr %i.ft, i64 4
  %.sroa.017.0.val24.i.3 = load i32, ptr %i.gh, align 4, !alias.scope !210
  %.sroa.015.0.val.i.3 = load i32, ptr %i.fu, align 4, !alias.scope !210, !noundef !4 ; 2 uses
  %i.gi = getelementptr i8, ptr %i.fu, i64 4
  %.sroa.015.0.val25.i.3 = load i32, ptr %i.gi, align 4, !alias.scope !210
  %i.gj = icmp eq i32 %.sroa.017.0.val.i.3, %.sroa.015.0.val.i.3
  %i.gk = icmp ult i32 %.sroa.017.0.val.i.3, %.sroa.015.0.val.i.3
  %i.gl = icmp ult i32 %.sroa.017.0.val24.i.3, %.sroa.015.0.val25.i.3
  %.sroa.0.0.i.i26.i.3 = select i1 %i.gj, i1 %i.gl, i1 %i.gk ; 3 uses
  %..i.i.3 = select i1 %.sroa.0.0.i.i26.i.3, ptr %i.fu, ptr %i.ft
  %i.gm = xor i1 %.sroa.0.0.i.i26.i.3, true
  %i.gn = load i64, ptr %..i.i.3, align 4, !alias.scope !210, !noalias !218
  store i64 %i.gn, ptr %i.fv, align 4, !noalias !222
  %.neg.i.i.3 = sext i1 %i.gm to i64
  %i.go = getelementptr [8 x i8], ptr %i.ft, i64 %.neg.i.i.3
  %.neg13.i.i.3 = sext i1 %.sroa.0.0.i.i26.i.3 to i64
  %i.gp = getelementptr [8 x i8], ptr %i.fu, i64 %.neg13.i.i.3
  %i.gq = getelementptr i8, ptr %i.gp, i64 8
  %i.gr = getelementptr i8, ptr %i.go, i64 8
  %i.gs = icmp ne ptr %i.gg, %i.gq
  %i.gt = icmp ne ptr %i.ge, %i.gr
  %or.cond.i = select i1 %i.gs, i1 true, i1 %i.gt, !prof !209
  br i1 %or.cond.i, label %bb.a, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort19bidirectional_mergeTmmENvYB1g_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit, !prof !209

bb.a:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #23, !noalias !210
  unreachable

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort19bidirectional_mergeTmmENvYB1g_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit: ; preds = %.lr.ph.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort18small_sort_generalTmjENvYB1f_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [768 x i8], align 8               ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226)
  %i.b = icmp samesign ult i64 %1, 2
  br i1 %i.b, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTmjENvYB1s_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ugt i64 %1, 32
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %1, 1                           ; 9 uses
  %i.e = icmp samesign ugt i64 %1, 15
  br i1 %i.e, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = icmp samesign ugt i64 %1, 7
  br i1 %i.f, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %1 ; 2 uses
  call fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort12sort8_stableTmjENvYB19_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.a, ptr noundef %i.g)
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.d
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  call fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort12sort8_stableTmjENvYB19_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls(ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j)
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val16.i.i = load i32, ptr %i.k, align 8, !alias.scope !223, !noalias !226, !noundef !4 ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 24
  %.val17.i.i = load i64, ptr %i.l, align 8, !alias.scope !223, !noalias !226
  %.val18.i.i = load i32, ptr %0, align 8, !alias.scope !223, !noalias !226, !noundef !4 ; 2 uses
  %i.m = getelementptr i8, ptr %0, i64 8
  %.val19.i.i = load i64, ptr %i.m, align 8, !alias.scope !223, !noalias !226
  %i.n = icmp eq i32 %.val16.i.i, %.val18.i.i
  %i.o = icmp ult i32 %.val16.i.i, %.val18.i.i
  %i.p = icmp ult i64 %.val17.i.i, %.val19.i.i
  %.sroa.0.0.i.i.i.i = select i1 %i.n, i1 %i.p, i1 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val12.i.i = load i32, ptr %i.q, align 8, !alias.scope !223, !noalias !226, !noundef !4 ; 2 uses
  %i.s = getelementptr i8, ptr %0, i64 56
  %.val13.i.i = load i64, ptr %i.s, align 8, !alias.scope !223, !noalias !226
  %.val14.i.i = load i32, ptr %i.r, align 8, !alias.scope !223, !noalias !226, !noundef !4 ; 2 uses
  %i.t = getelementptr i8, ptr %0, i64 40
  %.val15.i.i = load i64, ptr %i.t, align 8, !alias.scope !223, !noalias !226
  %i.u = icmp eq i32 %.val12.i.i, %.val14.i.i
  %i.v = icmp ult i32 %.val12.i.i, %.val14.i.i
  %i.w = icmp ult i64 %.val13.i.i, %.val15.i.i
  %.sroa.0.0.i.i20.i.i = select i1 %i.u, i1 %i.w, i1 %i.v ; 2 uses
  %i.x = zext i1 %.sroa.0.0.i.i.i.i to i64
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.x ; 4 uses
  %i.z = xor i1 %.sroa.0.0.i.i.i.i, true
  %i.aa = zext i1 %i.z to i64
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.aa ; 5 uses
  %i.ac = select i1 %.sroa.0.0.i.i20.i.i, i64 3, i64 2
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ac ; 5 uses
  %i.ae = select i1 %.sroa.0.0.i.i20.i.i, i64 2, i64 3
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ae ; 4 uses
  %.val8.i.i = load i32, ptr %i.ad, align 8, !alias.scope !223, !noalias !226, !noundef !4 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.ad, i64 8
  %.val9.i.i = load i64, ptr %i.ag, align 8, !alias.scope !223, !noalias !226
  %.val10.i.i = load i32, ptr %i.y, align 8, !alias.scope !223, !noalias !226, !noundef !4 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.y, i64 8
  %.val11.i.i = load i64, ptr %i.ah, align 8, !alias.scope !223, !noalias !226
  %i.ai = icmp eq i32 %.val8.i.i, %.val10.i.i
  %i.aj = icmp ult i32 %.val8.i.i, %.val10.i.i
  %i.ak = icmp ult i64 %.val9.i.i, %.val11.i.i
  %.sroa.0.0.i.i21.i.i = select i1 %i.ai, i1 %i.ak, i1 %i.aj ; 3 uses
  %.val4.i.i = load i32, ptr %i.af, align 8, !alias.scope !223, !noalias !226, !noundef !4 ; 2 uses
  %i.al = getelementptr i8, ptr %i.af, i64 8
  %.val5.i.i = load i64, ptr %i.al, align 8, !alias.scope !223, !noalias !226
  %.val6.i.i = load i32, ptr %i.ab, align 8, !alias.scope !223, !noalias !226, !noundef !4 ; 2 uses
  %i.am = getelementptr i8, ptr %i.ab, i64 8
  %.val7.i.i = load i64, ptr %i.am, align 8, !alias.scope !223, !noalias !226
  %i.an = icmp eq i32 %.val4.i.i, %.val6.i.i
  %i.ao = icmp ult i32 %.val4.i.i, %.val6.i.i
  %i.ap = icmp ult i64 %.val5.i.i, %.val7.i.i
  %.sroa.0.0.i.i22.i.i = select i1 %i.an, i1 %i.ap, i1 %i.ao ; 3 uses
  %i.aq = select i1 %.sroa.0.0.i.i21.i.i, ptr %i.ad, ptr %i.y, !unpredictable !4
  %i.ar = select i1 %.sroa.0.0.i.i22.i.i, ptr %i.ab, ptr %i.af, !unpredictable !4
  %i.as = select i1 %.sroa.0.0.i.i22.i.i, ptr %i.ad, ptr %i.ab, !unpredictable !4
  %i.at = select i1 %.sroa.0.0.i.i21.i.i, ptr %i.y, ptr %i.as, !unpredictable !4 ; 4 uses
  %i.au = select i1 %.sroa.0.0.i.i21.i.i, ptr %i.ab, ptr %i.ad, !unpredictable !4
  %i.av = select i1 %.sroa.0.0.i.i22.i.i, ptr %i.af, ptr %i.au, !unpredictable !4 ; 4 uses
  %.val.i.i = load i32, ptr %i.av, align 8, !alias.scope !223, !noalias !226, !noundef !4 ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 8
  %.val1.i.i = load i64, ptr %i.aw, align 8, !alias.scope !223, !noalias !226
  %.val2.i.i = load i32, ptr %i.at, align 8, !alias.scope !223, !noalias !226, !noundef !4 ; 2 uses
  %i.ax = getelementptr i8, ptr %i.at, i64 8
  %.val3.i.i = load i64, ptr %i.ax, align 8, !alias.scope !223, !noalias !226
  %i.ay = icmp eq i32 %.val.i.i, %.val2.i.i
  %i.az = icmp ult i32 %.val.i.i, %.val2.i.i
  %i.ba = icmp ult i64 %.val1.i.i, %.val3.i.i
  %.sroa.0.0.i.i23.i.i = select i1 %i.ay, i1 %i.ba, i1 %i.az ; 2 uses
  %i.bb = select i1 %.sroa.0.0.i.i23.i.i, ptr %i.av, ptr %i.at, !unpredictable !4
  %i.bc = select i1 %.sroa.0.0.i.i23.i.i, ptr %i.at, ptr %i.av, !unpredictable !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i64 16, i1 false), !alias.scope !228
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i64 16, i1 false), !alias.scope !228
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i64 16, i1 false), !alias.scope !228
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 16, i1 false), !alias.scope !228
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.d ; 12 uses
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.d ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %.val16.i30.i = load i32, ptr %i.bi, align 8, !alias.scope !223, !noalias !226, !noundef !4 ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bg, i64 24
  %.val17.i31.i = load i64, ptr %i.bj, align 8, !alias.scope !223, !noalias !226
  %.val18.i32.i = load i32, ptr %i.bg, align 8, !alias.scope !223, !noalias !226, !noundef !4 ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bg, i64 8
  %.val19.i33.i = load i64, ptr %i.bk, align 8, !alias.scope !223, !noalias !226
  %i.bl = icmp eq i32 %.val16.i30.i, %.val18.i32.i
  %i.bm = icmp ult i32 %.val16.i30.i, %.val18.i32.i
  %i.bn = icmp ult i64 %.val17.i31.i, %.val19.i33.i
  %.sroa.0.0.i.i.i34.i = select i1 %i.bl, i1 %i.bn, i1 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %.val12.i35.i = load i32, ptr %i.bo, align 8, !alias.scope !223, !noalias !226, !noundef !4 ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bg, i64 56
  %.val13.i36.i = load i64, ptr %i.bq, align 8, !alias.scope !223, !noalias !226
  %.val14.i37.i = load i32, ptr %i.bp, align 8, !alias.scope !223, !noalias !226, !noundef !4 ; 2 uses
  %i.br = getelementptr i8, ptr %i.bg, i64 40
  %.val15.i38.i = load i64, ptr %i.br, align 8, !alias.scope !223, !noalias !226
  %i.bs = icmp eq i32 %.val12.i35.i, %.val14.i37.i
  %i.bt = icmp ult i32 %.val12.i35.i, %.val14.i37.i
  %i.bu = icmp ult i64 %.val13.i36.i, %.val15.i38.i
  %.sroa.0.0.i.i20.i39.i = select i1 %i.bs, i1 %i.bu, i1 %i.bt ; 2 uses
  %i.bv = zext i1 %.sroa.0.0.i.i.i34.i to i64
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %i.bv ; 4 uses
  %i.bx = xor i1 %.sroa.0.0.i.i.i34.i, true
  %i.by = zext i1 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %i.by ; 5 uses
  %i.ca = select i1 %.sroa.0.0.i.i20.i39.i, i64 3, i64 2
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %i.ca ; 5 uses
  %i.cc = select i1 %.sroa.0.0.i.i20.i39.i, i64 2, i64 3
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %i.cc ; 4 uses
  %.val8.i40.i = load i32, ptr %i.cb, align 8, !alias.scope !223, !noalias !226, !noundef !4 ; 2 uses
  %i.ce = getelementptr i8, ptr %i.cb, i64 8
  %.val9.i41.i = load i64, ptr %i.ce, align 8, !alias.scope !223, !noalias !226
  %.val10.i42.i = load i32, ptr %i.bw, align 8, !alias.scope !223, !noalias !226, !noundef !4 ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bw, i64 8
  %.val11.i43.i = load i64, ptr %i.cf, align 8, !alias.scope !223, !noalias !226
  %i.cg = icmp eq i32 %.val8.i40.i, %.val10.i42.i
  %i.ch = icmp ult i32 %.val8.i40.i, %.val10.i42.i
  %i.ci = icmp ult i64 %.val9.i41.i, %.val11.i43.i
  %.sroa.0.0.i.i21.i44.i = select i1 %i.cg, i1 %i.ci, i1 %i.ch ; 3 uses
  %.val4.i45.i = load i32, ptr %i.cd, align 8, !alias.scope !223, !noalias !226, !noundef !4 ; 2 uses
  %i.cj = getelementptr i8, ptr %i.cd, i64 8
  %.val5.i46.i = load i64, ptr %i.cj, align 8, !alias.scope !223, !noalias !226
  %.val6.i47.i = load i32, ptr %i.bz, align 8, !alias.scope !223, !noalias !226, !noundef !4 ; 2 uses
  %i.ck = getelementptr i8, ptr %i.bz, i64 8
  %.val7.i48.i = load i64, ptr %i.ck, align 8, !alias.scope !223, !noalias !226
  %i.cl = icmp eq i32 %.val4.i45.i, %.val6.i47.i
  %i.cm = icmp ult i32 %.val4.i45.i, %.val6.i47.i
  %i.cn = icmp ult i64 %.val5.i46.i, %.val7.i48.i
  %.sroa.0.0.i.i22.i49.i = select i1 %i.cl, i1 %i.cn, i1 %i.cm ; 3 uses
  %i.co = select i1 %.sroa.0.0.i.i21.i44.i, ptr %i.cb, ptr %i.bw, !unpredictable !4
  %i.cp = select i1 %.sroa.0.0.i.i22.i49.i, ptr %i.bz, ptr %i.cd, !unpredictable !4
  %i.cq = select i1 %.sroa.0.0.i.i22.i49.i, ptr %i.cb, ptr %i.bz, !unpredictable !4
  %i.cr = select i1 %.sroa.0.0.i.i21.i44.i, ptr %i.bw, ptr %i.cq, !unpredictable !4 ; 4 uses
  %i.cs = select i1 %.sroa.0.0.i.i21.i44.i, ptr %i.bz, ptr %i.cb, !unpredictable !4
  %i.ct = select i1 %.sroa.0.0.i.i22.i49.i, ptr %i.cd, ptr %i.cs, !unpredictable !4 ; 4 uses
  %.val.i50.i = load i32, ptr %i.ct, align 8, !alias.scope !223, !noalias !226, !noundef !4 ; 2 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 8
  %.val1.i51.i = load i64, ptr %i.cu, align 8, !alias.scope !223, !noalias !226
  %.val2.i52.i = load i32, ptr %i.cr, align 8, !alias.scope !223, !noalias !226, !noundef !4 ; 2 uses
  %i.cv = getelementptr i8, ptr %i.cr, i64 8
  %.val3.i53.i = load i64, ptr %i.cv, align 8, !alias.scope !223, !noalias !226
  %i.cw = icmp eq i32 %.val.i50.i, %.val2.i52.i
  %i.cx = icmp ult i32 %.val.i50.i, %.val2.i52.i
  %i.cy = icmp ult i64 %.val1.i51.i, %.val3.i53.i
  %.sroa.0.0.i.i23.i54.i = select i1 %i.cw, i1 %i.cy, i1 %i.cx ; 2 uses
  %i.cz = select i1 %.sroa.0.0.i.i23.i54.i, ptr %i.ct, ptr %i.cr, !unpredictable !4
  %i.da = select i1 %.sroa.0.0.i.i23.i54.i, ptr %i.cr, ptr %i.ct, !unpredictable !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %i.co, i64 16, i1 false), !alias.scope !228
  %i.db = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.db, ptr noundef nonnull align 8 dereferenceable(16) %i.cz, i64 16, i1 false), !alias.scope !228
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, ptr noundef nonnull align 8 dereferenceable(16) %i.da, i64 16, i1 false), !alias.scope !228
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dd, ptr noundef nonnull align 8 dereferenceable(16) %i.cp, i64 16, i1 false), !alias.scope !228
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !alias.scope !228
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.d
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.df, ptr noundef nonnull align 8 dereferenceable(16) %i.de, i64 16, i1 false), !alias.scope !228
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i = phi i64 [ 8, %bb.f ], [ 4, %bb.g ], [ 1, %bb.h ] ; 3 uses
  %i.dg = icmp samesign ult i64 %.sroa.0.0.i, %i.d
  br i1 %i.dg, label %.lr.ph.1.i, label %.split11.us.i

.lr.ph.1.i:                                       ; preds = %bb.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmjENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.1.i
  %.sroa.05.04.1.i = phi i64 [ %i.dw, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmjENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.1.i ], [ %.sroa.0.0.i, %bb.i ] ; 4 uses
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.05.04.1.i
  %.idx14 = shl nuw nsw i64 %.sroa.05.04.1.i, 4
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx14 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.di, ptr noundef nonnull align 8 dereferenceable(16) %i.dh, i64 16, i1 false), !alias.scope !228
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 -16 ; 3 uses
  %.val11.i55.1.i = load i32, ptr %i.di, align 8, !alias.scope !226, !noalias !223, !noundef !4 ; 5 uses
  %i.dk = getelementptr i8, ptr %i.di, i64 8
  %.val12.i56.1.i = load i64, ptr %i.dk, align 8, !alias.scope !226, !noalias !223 ; 3 uses
  %.val13.i57.1.i = load i32, ptr %i.dj, align 8, !alias.scope !226, !noalias !223, !noundef !4 ; 2 uses
  %i.dl = getelementptr i8, ptr %i.di, i64 -8
  %.val14.i58.1.i = load i64, ptr %i.dl, align 8, !alias.scope !226, !noalias !223
  %i.dm = icmp eq i32 %.val11.i55.1.i, %.val13.i57.1.i
  %i.dn = icmp ult i32 %.val11.i55.1.i, %.val13.i57.1.i
  %i.do = icmp ult i64 %.val12.i56.1.i, %.val14.i58.1.i
  %.sroa.0.0.i.i.i59.1.i = select i1 %i.dm, i1 %i.do, i1 %i.dn
  br i1 %.sroa.0.0.i.i.i59.1.i, label %.preheader.1.i.preheader, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmjENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.1.i

.preheader.1.i.preheader:                         ; preds = %.lr.ph.1.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.di, ptr noundef nonnull align 8 dereferenceable(16) %i.dj, i64 16, i1 false), !alias.scope !226, !noalias !223
  %i.dp = icmp eq i64 %.sroa.05.04.1.i, 1
  br i1 %i.dp, label %._crit_edge11, label %.lr.ph10

.preheader.1.i:                                   ; preds = %.lr.ph10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i60.1.i9, ptr noundef nonnull align 8 dereferenceable(16) %i.dr, i64 16, i1 false), !alias.scope !226, !noalias !223
  %i.dq = icmp eq ptr %i.dr, %i.a
  br i1 %i.dq, label %._crit_edge11, label %.lr.ph10

.lr.ph10:                                         ; preds = %.preheader.1.i.preheader, %.preheader.1.i
  %.sroa.0.0.i60.1.i9 = phi ptr [ %i.dr, %.preheader.1.i ], [ %i.dj, %.preheader.1.i.preheader ] ; 4 uses
  %i.dr = getelementptr inbounds i8, ptr %.sroa.0.0.i60.1.i9, i64 -16 ; 4 uses
  %.val9.i61.1.i = load i32, ptr %i.dr, align 4, !alias.scope !226, !noalias !223, !noundef !4 ; 2 uses
  %i.ds = getelementptr i8, ptr %.sroa.0.0.i60.1.i9, i64 -8
  %.val10.i62.1.i = load i64, ptr %i.ds, align 8, !alias.scope !226, !noalias !223
  %i.dt = icmp eq i32 %.val11.i55.1.i, %.val9.i61.1.i
  %i.du = icmp ult i32 %.val11.i55.1.i, %.val9.i61.1.i
  %i.dv = icmp ult i64 %.val12.i56.1.i, %.val10.i62.1.i
  %.sroa.0.0.i.i15.i.1.i = select i1 %i.dt, i1 %i.dv, i1 %i.du
  br i1 %.sroa.0.0.i.i15.i.1.i, label %.preheader.1.i, label %._crit_edge11

._crit_edge11:                                    ; preds = %.preheader.1.i, %.lr.ph10, %.preheader.1.i.preheader
  %.sroa.0.0.i60.lcssa.1.i = phi ptr [ %i.a, %.preheader.1.i.preheader ], [ %i.a, %.preheader.1.i ], [ %.sroa.0.0.i60.1.i9, %.lr.ph10 ] ; 2 uses
  store i32 %.val11.i55.1.i, ptr %.sroa.0.0.i60.lcssa.1.i, align 8, !alias.scope !226, !noalias !229
  %.sroa.46.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i60.lcssa.1.i, i64 8
  store i64 %.val12.i56.1.i, ptr %.sroa.46.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 8, !alias.scope !226, !noalias !229
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmjENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.1.i

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmjENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.1.i: ; preds = %._crit_edge11, %.lr.ph.1.i
  %i.dw = add nuw nsw i64 %.sroa.05.04.1.i, 1     ; 2 uses
  %exitcond.1.not.i.a = icmp eq i64 %i.dw, %i.d
  br i1 %exitcond.1.not.i.a, label %.lr.ph.i, label %.lr.ph.1.i

.lr.ph.i:                                         ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmjENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.1.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmjENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.i
  %.sroa.05.04.i = phi i64 [ %i.em, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmjENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.i ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmjENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.1.i ] ; 4 uses
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.05.04.i
  %.idx = shl nuw nsw i64 %.sroa.05.04.i, 4
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dy, ptr noundef nonnull align 8 dereferenceable(16) %i.dx, i64 16, i1 false), !alias.scope !228
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -16 ; 3 uses
  %.val11.i55.i = load i32, ptr %i.dy, align 8, !alias.scope !226, !noalias !223, !noundef !4 ; 5 uses
  %i.ea = getelementptr i8, ptr %i.dy, i64 8
  %.val12.i56.i = load i64, ptr %i.ea, align 8, !alias.scope !226, !noalias !223 ; 3 uses
  %.val13.i57.i = load i32, ptr %i.dz, align 8, !alias.scope !226, !noalias !223, !noundef !4 ; 2 uses
  %i.eb = getelementptr i8, ptr %i.dy, i64 -8
  %.val14.i58.i = load i64, ptr %i.eb, align 8, !alias.scope !226, !noalias !223
  %i.ec = icmp eq i32 %.val11.i55.i, %.val13.i57.i
  %i.ed = icmp ult i32 %.val11.i55.i, %.val13.i57.i
  %i.ee = icmp ult i64 %.val12.i56.i, %.val14.i58.i
  %.sroa.0.0.i.i.i59.i = select i1 %i.ec, i1 %i.ee, i1 %i.ed
  br i1 %.sroa.0.0.i.i.i59.i, label %.preheader.i.preheader, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmjENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.i

.preheader.i.preheader:                           ; preds = %.lr.ph.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dy, ptr noundef nonnull align 8 dereferenceable(16) %i.dz, i64 16, i1 false), !alias.scope !226, !noalias !223
  %i.ef = icmp eq i64 %.sroa.05.04.i, 1
  br i1 %i.ef, label %._crit_edge, label %.lr.ph

.preheader.i:                                     ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i60.i7, ptr noundef nonnull align 8 dereferenceable(16) %i.eh, i64 16, i1 false), !alias.scope !226, !noalias !223
  %i.eg = icmp eq ptr %i.eh, %i.a
  br i1 %i.eg, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.0.0.i60.i7 = phi ptr [ %i.eh, %.preheader.i ], [ %i.dz, %.preheader.i.preheader ] ; 4 uses
  %i.eh = getelementptr inbounds i8, ptr %.sroa.0.0.i60.i7, i64 -16 ; 4 uses
  %.val9.i61.i = load i32, ptr %i.eh, align 4, !alias.scope !226, !noalias !223, !noundef !4 ; 2 uses
  %i.ei = getelementptr i8, ptr %.sroa.0.0.i60.i7, i64 -8
  %.val10.i62.i = load i64, ptr %i.ei, align 8, !alias.scope !226, !noalias !223
  %i.ej = icmp eq i32 %.val11.i55.i, %.val9.i61.i
  %i.ek = icmp ult i32 %.val11.i55.i, %.val9.i61.i
  %i.el = icmp ult i64 %.val12.i56.i, %.val10.i62.i
  %.sroa.0.0.i.i15.i.i = select i1 %i.ej, i1 %i.el, i1 %i.ek
  br i1 %.sroa.0.0.i.i15.i.i, label %.preheader.i, label %._crit_edge

._crit_edge:                                      ; preds = %.preheader.i, %.lr.ph, %.preheader.i.preheader
  %.sroa.0.0.i60.lcssa.i = phi ptr [ %i.a, %.preheader.i.preheader ], [ %i.a, %.preheader.i ], [ %.sroa.0.0.i60.i7, %.lr.ph ] ; 2 uses
  store i32 %.val11.i55.i, ptr %.sroa.0.0.i60.lcssa.i, align 8, !alias.scope !226, !noalias !229
  %.sroa.46.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i60.lcssa.i, i64 8
  store i64 %.val12.i56.i, ptr %.sroa.46.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !226, !noalias !229
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmjENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.i

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmjENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.i: ; preds = %._crit_edge, %.lr.ph.i
  %i.em = add nuw nsw i64 %.sroa.05.04.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.em, %i.d
  br i1 %exitcond.not.i, label %.split11.us.i, label %.lr.ph.i

.split11.us.i:                                    ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmjENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.i, %bb.i
  invoke fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort19bidirectional_mergeTmjENvYB1g_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.a, i64 noundef range(i64 0, 576460752303423488) %1, ptr noundef nonnull align 8 %0)
          to label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTmjENvYB1s_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit unwind label %3

3:                                                ; preds = %.split11.us.i
  %4 = landingpad { ptr, i32 }
          cleanup
  %5 = shl nuw nsw i64 %1, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.a, i64 %5, i1 false), !alias.scope !228, !noalias !234
  resume { ptr, i32 } %4

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTmjENvYB1s_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit: ; preds = %bb.a, %.split11.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort18small_sort_generalTmmENvYB1f_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [384 x i8], align 8               ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242)
  %i.b = icmp samesign ult i64 %1, 2
  br i1 %i.b, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTmmENvYB1s_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ugt i64 %1, 32
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %1, 1                           ; 11 uses
  %i.e = icmp samesign ugt i64 %1, 15
  br i1 %i.e, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = icmp samesign ugt i64 %1, 7
  br i1 %i.f, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %1 ; 2 uses
  call fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort12sort8_stableTmmENvYB19_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls(ptr noundef nonnull align 4 %0, ptr noundef nonnull align 4 %i.a, ptr noundef %i.g)
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  call fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort12sort8_stableTmmENvYB19_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls(ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j)
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val16.i.i = load i32, ptr %i.k, align 4, !alias.scope !239, !noalias !242, !noundef !4 ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 12
  %.val17.i.i = load i32, ptr %i.l, align 4, !alias.scope !239, !noalias !242
  %.val18.i.i = load i32, ptr %0, align 4, !alias.scope !239, !noalias !242, !noundef !4 ; 2 uses
  %i.m = getelementptr i8, ptr %0, i64 4
  %.val19.i.i = load i32, ptr %i.m, align 4, !alias.scope !239, !noalias !242
  %i.n = icmp eq i32 %.val16.i.i, %.val18.i.i
  %i.o = icmp ult i32 %.val16.i.i, %.val18.i.i
  %i.p = icmp ult i32 %.val17.i.i, %.val19.i.i
  %.sroa.0.0.i.i.i.i = select i1 %i.n, i1 %i.p, i1 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val12.i.i = load i32, ptr %i.q, align 4, !alias.scope !239, !noalias !242, !noundef !4 ; 2 uses
  %i.s = getelementptr i8, ptr %0, i64 28
  %.val13.i.i = load i32, ptr %i.s, align 4, !alias.scope !239, !noalias !242
  %.val14.i.i = load i32, ptr %i.r, align 4, !alias.scope !239, !noalias !242, !noundef !4 ; 2 uses
  %i.t = getelementptr i8, ptr %0, i64 20
  %.val15.i.i = load i32, ptr %i.t, align 4, !alias.scope !239, !noalias !242
  %i.u = icmp eq i32 %.val12.i.i, %.val14.i.i
  %i.v = icmp ult i32 %.val12.i.i, %.val14.i.i
  %i.w = icmp ult i32 %.val13.i.i, %.val15.i.i
  %.sroa.0.0.i.i20.i.i = select i1 %i.u, i1 %i.w, i1 %i.v ; 2 uses
  %i.x = zext i1 %.sroa.0.0.i.i.i.i to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.x ; 4 uses
  %i.z = xor i1 %.sroa.0.0.i.i.i.i, true
  %i.aa = zext i1 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aa ; 5 uses
  %i.ac = select i1 %.sroa.0.0.i.i20.i.i, i64 3, i64 2
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ac ; 5 uses
  %i.ae = select i1 %.sroa.0.0.i.i20.i.i, i64 2, i64 3
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ae ; 4 uses
  %.val8.i.i = load i32, ptr %i.ad, align 4, !alias.scope !239, !noalias !242, !noundef !4 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.ad, i64 4
  %.val9.i.i = load i32, ptr %i.ag, align 4, !alias.scope !239, !noalias !242
  %.val10.i.i = load i32, ptr %i.y, align 4, !alias.scope !239, !noalias !242, !noundef !4 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.y, i64 4
  %.val11.i.i = load i32, ptr %i.ah, align 4, !alias.scope !239, !noalias !242
  %i.ai = icmp eq i32 %.val8.i.i, %.val10.i.i
  %i.aj = icmp ult i32 %.val8.i.i, %.val10.i.i
  %i.ak = icmp ult i32 %.val9.i.i, %.val11.i.i
  %.sroa.0.0.i.i21.i.i = select i1 %i.ai, i1 %i.ak, i1 %i.aj ; 3 uses
  %.val4.i.i = load i32, ptr %i.af, align 4, !alias.scope !239, !noalias !242, !noundef !4 ; 2 uses
  %i.al = getelementptr i8, ptr %i.af, i64 4
  %.val5.i.i = load i32, ptr %i.al, align 4, !alias.scope !239, !noalias !242
  %.val6.i.i = load i32, ptr %i.ab, align 4, !alias.scope !239, !noalias !242, !noundef !4 ; 2 uses
  %i.am = getelementptr i8, ptr %i.ab, i64 4
  %.val7.i.i = load i32, ptr %i.am, align 4, !alias.scope !239, !noalias !242
  %i.an = icmp eq i32 %.val4.i.i, %.val6.i.i
  %i.ao = icmp ult i32 %.val4.i.i, %.val6.i.i
  %i.ap = icmp ult i32 %.val5.i.i, %.val7.i.i
  %.sroa.0.0.i.i22.i.i = select i1 %i.an, i1 %i.ap, i1 %i.ao ; 3 uses
  %i.aq = select i1 %.sroa.0.0.i.i21.i.i, ptr %i.ad, ptr %i.y, !unpredictable !4
  %i.ar = select i1 %.sroa.0.0.i.i22.i.i, ptr %i.ab, ptr %i.af, !unpredictable !4
  %i.as = select i1 %.sroa.0.0.i.i22.i.i, ptr %i.ad, ptr %i.ab, !unpredictable !4
  %i.at = select i1 %.sroa.0.0.i.i21.i.i, ptr %i.y, ptr %i.as, !unpredictable !4 ; 4 uses
  %i.au = select i1 %.sroa.0.0.i.i21.i.i, ptr %i.ab, ptr %i.ad, !unpredictable !4
  %i.av = select i1 %.sroa.0.0.i.i22.i.i, ptr %i.af, ptr %i.au, !unpredictable !4 ; 4 uses
  %.val.i.i = load i32, ptr %i.av, align 4, !alias.scope !239, !noalias !242, !noundef !4 ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 4
  %.val1.i.i = load i32, ptr %i.aw, align 4, !alias.scope !239, !noalias !242
  %.val2.i.i = load i32, ptr %i.at, align 4, !alias.scope !239, !noalias !242, !noundef !4 ; 2 uses
  %i.ax = getelementptr i8, ptr %i.at, i64 4
  %.val3.i.i = load i32, ptr %i.ax, align 4, !alias.scope !239, !noalias !242
  %i.ay = icmp eq i32 %.val.i.i, %.val2.i.i
  %i.az = icmp ult i32 %.val.i.i, %.val2.i.i
  %i.ba = icmp ult i32 %.val1.i.i, %.val3.i.i
  %.sroa.0.0.i.i23.i.i = select i1 %i.ay, i1 %i.ba, i1 %i.az ; 2 uses
  %i.bb = select i1 %.sroa.0.0.i.i23.i.i, ptr %i.av, ptr %i.at, !unpredictable !4
  %i.bc = select i1 %.sroa.0.0.i.i23.i.i, ptr %i.at, ptr %i.av, !unpredictable !4
  %i.bd = load i64, ptr %i.aq, align 4, !alias.scope !239, !noalias !242
  store i64 %i.bd, ptr %i.a, align 8, !alias.scope !242, !noalias !239
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bf = load i64, ptr %i.bb, align 4, !alias.scope !239, !noalias !242
  store i64 %i.bf, ptr %i.be, align 8, !alias.scope !242, !noalias !239
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bh = load i64, ptr %i.bc, align 4, !alias.scope !239, !noalias !242
  store i64 %i.bh, ptr %i.bg, align 8, !alias.scope !242, !noalias !239
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bj = load i64, ptr %i.ar, align 4, !alias.scope !239, !noalias !242
  store i64 %i.bj, ptr %i.bi, align 8, !alias.scope !242, !noalias !239
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d ; 12 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.d ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.val16.i30.i = load i32, ptr %i.bm, align 4, !alias.scope !239, !noalias !242, !noundef !4 ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bk, i64 12
  %.val17.i31.i = load i32, ptr %i.bn, align 4, !alias.scope !239, !noalias !242
  %.val18.i32.i = load i32, ptr %i.bk, align 4, !alias.scope !239, !noalias !242, !noundef !4 ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bk, i64 4
  %.val19.i33.i = load i32, ptr %i.bo, align 4, !alias.scope !239, !noalias !242
  %i.bp = icmp eq i32 %.val16.i30.i, %.val18.i32.i
  %i.bq = icmp ult i32 %.val16.i30.i, %.val18.i32.i
  %i.br = icmp ult i32 %.val17.i31.i, %.val19.i33.i
  %.sroa.0.0.i.i.i34.i = select i1 %i.bp, i1 %i.br, i1 %i.bq ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %.val12.i35.i = load i32, ptr %i.bs, align 4, !alias.scope !239, !noalias !242, !noundef !4 ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bk, i64 28
  %.val13.i36.i = load i32, ptr %i.bu, align 4, !alias.scope !239, !noalias !242
  %.val14.i37.i = load i32, ptr %i.bt, align 4, !alias.scope !239, !noalias !242, !noundef !4 ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bk, i64 20
  %.val15.i38.i = load i32, ptr %i.bv, align 4, !alias.scope !239, !noalias !242
  %i.bw = icmp eq i32 %.val12.i35.i, %.val14.i37.i
  %i.bx = icmp ult i32 %.val12.i35.i, %.val14.i37.i
  %i.by = icmp ult i32 %.val13.i36.i, %.val15.i38.i
  %.sroa.0.0.i.i20.i39.i = select i1 %i.bw, i1 %i.by, i1 %i.bx ; 2 uses
  %i.bz = zext i1 %.sroa.0.0.i.i.i34.i to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bz ; 4 uses
  %i.cb = xor i1 %.sroa.0.0.i.i.i34.i, true
  %i.cc = zext i1 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.cc ; 5 uses
  %i.ce = select i1 %.sroa.0.0.i.i20.i39.i, i64 3, i64 2
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.ce ; 5 uses
  %i.cg = select i1 %.sroa.0.0.i.i20.i39.i, i64 2, i64 3
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.cg ; 4 uses
  %.val8.i40.i = load i32, ptr %i.cf, align 4, !alias.scope !239, !noalias !242, !noundef !4 ; 2 uses
  %i.ci = getelementptr i8, ptr %i.cf, i64 4
  %.val9.i41.i = load i32, ptr %i.ci, align 4, !alias.scope !239, !noalias !242
  %.val10.i42.i = load i32, ptr %i.ca, align 4, !alias.scope !239, !noalias !242, !noundef !4 ; 2 uses
  %i.cj = getelementptr i8, ptr %i.ca, i64 4
  %.val11.i43.i = load i32, ptr %i.cj, align 4, !alias.scope !239, !noalias !242
  %i.ck = icmp eq i32 %.val8.i40.i, %.val10.i42.i
  %i.cl = icmp ult i32 %.val8.i40.i, %.val10.i42.i
  %i.cm = icmp ult i32 %.val9.i41.i, %.val11.i43.i
  %.sroa.0.0.i.i21.i44.i = select i1 %i.ck, i1 %i.cm, i1 %i.cl ; 3 uses
  %.val4.i45.i = load i32, ptr %i.ch, align 4, !alias.scope !239, !noalias !242, !noundef !4 ; 2 uses
  %i.cn = getelementptr i8, ptr %i.ch, i64 4
  %.val5.i46.i = load i32, ptr %i.cn, align 4, !alias.scope !239, !noalias !242
  %.val6.i47.i = load i32, ptr %i.cd, align 4, !alias.scope !239, !noalias !242, !noundef !4 ; 2 uses
  %i.co = getelementptr i8, ptr %i.cd, i64 4
  %.val7.i48.i = load i32, ptr %i.co, align 4, !alias.scope !239, !noalias !242
  %i.cp = icmp eq i32 %.val4.i45.i, %.val6.i47.i
  %i.cq = icmp ult i32 %.val4.i45.i, %.val6.i47.i
  %i.cr = icmp ult i32 %.val5.i46.i, %.val7.i48.i
  %.sroa.0.0.i.i22.i49.i = select i1 %i.cp, i1 %i.cr, i1 %i.cq ; 3 uses
  %i.cs = select i1 %.sroa.0.0.i.i21.i44.i, ptr %i.cf, ptr %i.ca, !unpredictable !4
  %i.ct = select i1 %.sroa.0.0.i.i22.i49.i, ptr %i.cd, ptr %i.ch, !unpredictable !4
  %i.cu = select i1 %.sroa.0.0.i.i22.i49.i, ptr %i.cf, ptr %i.cd, !unpredictable !4
  %i.cv = select i1 %.sroa.0.0.i.i21.i44.i, ptr %i.ca, ptr %i.cu, !unpredictable !4 ; 4 uses
  %i.cw = select i1 %.sroa.0.0.i.i21.i44.i, ptr %i.cd, ptr %i.cf, !unpredictable !4
  %i.cx = select i1 %.sroa.0.0.i.i22.i49.i, ptr %i.ch, ptr %i.cw, !unpredictable !4 ; 4 uses
  %.val.i50.i = load i32, ptr %i.cx, align 4, !alias.scope !239, !noalias !242, !noundef !4 ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cx, i64 4
  %.val1.i51.i = load i32, ptr %i.cy, align 4, !alias.scope !239, !noalias !242
  %.val2.i52.i = load i32, ptr %i.cv, align 4, !alias.scope !239, !noalias !242, !noundef !4 ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cv, i64 4
  %.val3.i53.i = load i32, ptr %i.cz, align 4, !alias.scope !239, !noalias !242
  %i.da = icmp eq i32 %.val.i50.i, %.val2.i52.i
  %i.db = icmp ult i32 %.val.i50.i, %.val2.i52.i
  %i.dc = icmp ult i32 %.val1.i51.i, %.val3.i53.i
  %.sroa.0.0.i.i23.i54.i = select i1 %i.da, i1 %i.dc, i1 %i.db ; 2 uses
  %i.dd = select i1 %.sroa.0.0.i.i23.i54.i, ptr %i.cx, ptr %i.cv, !unpredictable !4
  %i.de = select i1 %.sroa.0.0.i.i23.i54.i, ptr %i.cv, ptr %i.cx, !unpredictable !4
  %i.df = load i64, ptr %i.cs, align 4, !alias.scope !239, !noalias !242
  store i64 %i.df, ptr %i.bl, align 8, !alias.scope !242, !noalias !239
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.dh = load i64, ptr %i.dd, align 4, !alias.scope !239, !noalias !242
  store i64 %i.dh, ptr %i.dg, align 8, !alias.scope !242, !noalias !239
  %i.di = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.dj = load i64, ptr %i.de, align 4, !alias.scope !239, !noalias !242
  store i64 %i.dj, ptr %i.di, align 8, !alias.scope !242, !noalias !239
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.dl = load i64, ptr %i.ct, align 4, !alias.scope !239, !noalias !242
  store i64 %i.dl, ptr %i.dk, align 8, !alias.scope !242, !noalias !239
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.dm = load i64, ptr %0, align 4, !alias.scope !239, !noalias !242
  store i64 %i.dm, ptr %i.a, align 8, !alias.scope !242, !noalias !239
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.d
  %i.dp = load i64, ptr %i.dn, align 4, !alias.scope !239, !noalias !242
  store i64 %i.dp, ptr %i.do, align 8, !alias.scope !242, !noalias !239
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i = phi i64 [ 8, %bb.f ], [ 4, %bb.g ], [ 1, %bb.h ] ; 3 uses
  %i.dq = icmp samesign ult i64 %.sroa.0.0.i, %i.d
  br i1 %i.dq, label %.lr.ph.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmmENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmmENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.1.i
  %.sroa.05.08.1.i = phi i64 [ %i.el, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmmENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.1.i ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmmENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.i ] ; 4 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.05.08.1.i
  %.idx34 = shl nuw nsw i64 %.sroa.05.08.1.i, 3
  %i.ds = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx34 ; 4 uses
  %i.dt = load i64, ptr %i.dr, align 4, !alias.scope !239, !noalias !242 ; 4 uses
  store i64 %i.dt, ptr %i.ds, align 8, !alias.scope !242, !noalias !239
  %i.du = getelementptr inbounds i8, ptr %i.ds, i64 -8 ; 3 uses
  %i.dv = trunc i64 %i.dt to i32                  ; 4 uses
  %i.dw = lshr i64 %i.dt, 32
  %i.dx = trunc nuw i64 %i.dw to i32              ; 2 uses
  %.val13.i58.1.i = load i32, ptr %i.du, align 8, !alias.scope !242, !noalias !239, !noundef !4 ; 2 uses
  %i.dy = getelementptr i8, ptr %i.ds, i64 -4
  %.val14.i59.1.i = load i32, ptr %i.dy, align 4, !alias.scope !242, !noalias !239
  %i.dz = icmp eq i32 %.val13.i58.1.i, %i.dv
  %i.ea = icmp ugt i32 %.val13.i58.1.i, %i.dv
  %i.eb = icmp ugt i32 %.val14.i59.1.i, %i.dx
  %.sroa.0.0.i.i.i60.1.i = select i1 %i.dz, i1 %i.eb, i1 %i.ea
  br i1 %.sroa.0.0.i.i.i60.1.i, label %.preheader.1.i.preheader, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmmENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.1.i

.preheader.1.i.preheader:                         ; preds = %.lr.ph.1.i
  %i.ec = load i64, ptr %i.du, align 8, !alias.scope !242, !noalias !239
  store i64 %i.ec, ptr %i.ds, align 8, !alias.scope !242, !noalias !239
  %i.ed = icmp eq i64 %.sroa.05.08.1.i, 1
  br i1 %i.ed, label %._crit_edge31, label %.lr.ph30

.preheader.1.i:                                   ; preds = %.lr.ph30
  %i.ee = load i64, ptr %i.eg, align 4, !alias.scope !242, !noalias !239
  store i64 %i.ee, ptr %.sroa.0.0.i61.1.i29, align 4, !alias.scope !242, !noalias !239
  %i.ef = icmp eq ptr %i.eg, %i.a
  br i1 %i.ef, label %._crit_edge31, label %.lr.ph30

.lr.ph30:                                         ; preds = %.preheader.1.i.preheader, %.preheader.1.i
  %.sroa.0.0.i61.1.i29 = phi ptr [ %i.eg, %.preheader.1.i ], [ %i.du, %.preheader.1.i.preheader ] ; 4 uses
  %i.eg = getelementptr inbounds i8, ptr %.sroa.0.0.i61.1.i29, i64 -8 ; 4 uses
  %.val9.i62.1.i = load i32, ptr %i.eg, align 4, !alias.scope !242, !noalias !239, !noundef !4 ; 2 uses
  %i.eh = getelementptr i8, ptr %.sroa.0.0.i61.1.i29, i64 -4
  %.val10.i63.1.i = load i32, ptr %i.eh, align 4, !alias.scope !242, !noalias !239
  %i.ei = icmp eq i32 %.val9.i62.1.i, %i.dv
  %i.ej = icmp ugt i32 %.val9.i62.1.i, %i.dv
  %i.ek = icmp ugt i32 %.val10.i63.1.i, %i.dx
  %.sroa.0.0.i.i15.i.1.i = select i1 %i.ei, i1 %i.ek, i1 %i.ej
  br i1 %.sroa.0.0.i.i15.i.1.i, label %.preheader.1.i, label %._crit_edge31

._crit_edge31:                                    ; preds = %.preheader.1.i, %.lr.ph30, %.preheader.1.i.preheader
  %.sroa.0.0.i61.lcssa.1.i = phi ptr [ %i.a, %.preheader.1.i.preheader ], [ %i.a, %.preheader.1.i ], [ %.sroa.0.0.i61.1.i29, %.lr.ph30 ]
  store i64 %i.dt, ptr %.sroa.0.0.i61.lcssa.1.i, align 4, !alias.scope !242, !noalias !244
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmmENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.1.i

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmmENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.1.i: ; preds = %._crit_edge31, %.lr.ph.1.i
  %i.el = add nuw i64 %.sroa.05.08.1.i, 1         ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %i.el, %i.d
  br i1 %exitcond.1.not.i, label %.loopexit.1.i, label %.lr.ph.1.i

.loopexit.1.i:                                    ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmmENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.1.i, %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !249)
  %i.em = add nsw i64 %1, -1                      ; 2 uses
  %3 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.em
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.em
  %i.eo = getelementptr [8 x i8], ptr %i.a, i64 %i.d ; 2 uses
  %i.ep = getelementptr i8, ptr %i.eo, i64 -8
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.eq = getelementptr i8, ptr %i.fk, i64 8      ; 2 uses
  %i.er = getelementptr i8, ptr %i.fj, i64 8
  %i.es = and i64 %1, 1
  %i.et = icmp eq i64 %i.es, 0
  br i1 %i.et, label %bb.k, label %bb.j

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.loopexit.1.i
  %.sroa.0.010.i.i = phi ptr [ %i.fb, %.lr.ph.i.i ], [ %0, %.loopexit.1.i ] ; 2 uses
  %.sroa.04.09.i.i = phi i64 [ %i.eu, %.lr.ph.i.i ], [ 0, %.loopexit.1.i ]
  %.sroa.06.08.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i ], [ %i.a, %.loopexit.1.i ] ; 4 uses
  %.sroa.011.07.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i ], [ %i.eo, %.loopexit.1.i ] ; 4 uses
  %.sroa.015.06.i.i = phi ptr [ %i.fk, %.lr.ph.i.i ], [ %i.ep, %.loopexit.1.i ] ; 4 uses
  %.sroa.017.05.i.i = phi ptr [ %i.fj, %.lr.ph.i.i ], [ %i.en, %.loopexit.1.i ] ; 4 uses
  %.sroa.019.04.i.i = phi ptr [ %i.fl, %.lr.ph.i.i ], [ %3, %.loopexit.1.i ] ; 2 uses
  %i.eu = add nuw nsw i64 %.sroa.04.09.i.i, 1     ; 2 uses
  %.sroa.011.0.val.i.i = load i32, ptr %.sroa.011.07.i.i, align 4, !alias.scope !252, !noalias !239, !noundef !4 ; 2 uses
  %i.ev = getelementptr i8, ptr %.sroa.011.07.i.i, i64 4
  %.sroa.011.0.val22.i.i = load i32, ptr %i.ev, align 4, !alias.scope !252, !noalias !239
  %.sroa.06.0.val.i.i = load i32, ptr %.sroa.06.08.i.i, align 4, !alias.scope !252, !noalias !239, !noundef !4 ; 2 uses
  %i.ew = getelementptr i8, ptr %.sroa.06.08.i.i, i64 4
  %.sroa.06.0.val23.i.i = load i32, ptr %i.ew, align 4, !alias.scope !252, !noalias !239
  %i.ex = icmp eq i32 %.sroa.011.0.val.i.i, %.sroa.06.0.val.i.i
  %i.ey = icmp ult i32 %.sroa.011.0.val.i.i, %.sroa.06.0.val.i.i
  %i.ez = icmp ult i32 %.sroa.011.0.val22.i.i, %.sroa.06.0.val23.i.i
  %.sroa.0.0.i.i.i55.i = select i1 %i.ex, i1 %i.ez, i1 %i.ey ; 3 uses
  %..i21.i.i = select i1 %.sroa.0.0.i.i.i55.i, ptr %.sroa.011.07.i.i, ptr %.sroa.06.08.i.i
  %i.fa = load i64, ptr %..i21.i.i, align 4, !alias.scope !252, !noalias !253
  store i64 %i.fa, ptr %.sroa.0.010.i.i, align 4, !alias.scope !239, !noalias !257
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.sroa.0.0.i.i.i55.i, i64 8, i64 0
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.011.07.i.i, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 4 uses
  %.sroa.sel4.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.sroa.0.0.i.i.i55.i, i64 0, i64 8
  %.sroa.sel4.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i, i64 %.sroa.sel4.idx.sroa.sel.idx.sroa.sel.idx ; 5 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 8 ; 2 uses
  %.sroa.017.0.val.i.i = load i32, ptr %.sroa.017.05.i.i, align 4, !alias.scope !252, !noalias !239, !noundef !4 ; 2 uses
  %i.fc = getelementptr i8, ptr %.sroa.017.05.i.i, i64 4
  %.sroa.017.0.val24.i.i = load i32, ptr %i.fc, align 4, !alias.scope !252, !noalias !239
  %.sroa.015.0.val.i.i = load i32, ptr %.sroa.015.06.i.i, align 4, !alias.scope !252, !noalias !239, !noundef !4 ; 2 uses
  %i.fd = getelementptr i8, ptr %.sroa.015.06.i.i, i64 4
  %.sroa.015.0.val25.i.i = load i32, ptr %i.fd, align 4, !alias.scope !252, !noalias !239
  %i.fe = icmp eq i32 %.sroa.017.0.val.i.i, %.sroa.015.0.val.i.i
  %i.ff = icmp ult i32 %.sroa.017.0.val.i.i, %.sroa.015.0.val.i.i
  %i.fg = icmp ult i32 %.sroa.017.0.val24.i.i, %.sroa.015.0.val25.i.i
  %.sroa.0.0.i.i26.i.i = select i1 %i.fe, i1 %i.fg, i1 %i.ff ; 3 uses
  %..i.i.i = select i1 %.sroa.0.0.i.i26.i.i, ptr %.sroa.015.06.i.i, ptr %.sroa.017.05.i.i
  %i.fh = xor i1 %.sroa.0.0.i.i26.i.i, true
  %i.fi = load i64, ptr %..i.i.i, align 4, !alias.scope !252, !noalias !258
  store i64 %i.fi, ptr %.sroa.019.04.i.i, align 4, !alias.scope !239, !noalias !262
  %.neg.i.i.i = sext i1 %i.fh to i64
  %i.fj = getelementptr [8 x i8], ptr %.sroa.017.05.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg13.i.i.i = sext i1 %.sroa.0.0.i.i26.i.i to i64
  %i.fk = getelementptr [8 x i8], ptr %.sroa.015.06.i.i, i64 %.neg13.i.i.i ; 2 uses
  %i.fl = getelementptr inbounds i8, ptr %.sroa.019.04.i.i, i64 -8
  %exitcond.not.i.i = icmp eq i64 %i.eu, %i.d
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.j:                                             ; preds = %._crit_edge.i.i
  %.not = icmp ult ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %i.eq ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %.not, ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel
  %i.fm = load i64, ptr %.sroa.06.0..sroa.011.0.i.i, align 4, !alias.scope !252, !noalias !239
  store i64 %i.fm, ptr %i.fb, align 4, !alias.scope !239, !noalias !252
  %.sroa.sel16.idx.sroa.sel.idx = select i1 %.not, i64 8, i64 0
  %.sroa.sel16.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel16.idx.sroa.sel.idx
  %.sroa.sel.idx.sroa.sel.idx = select i1 %.not, i64 0, i64 8
  %.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel.idx.sroa.sel.idx
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i ], [ %.sroa.sel.idx.sroa.sel, %bb.j ]
  %.sroa.06.1.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i ], [ %.sroa.sel16.idx.sroa.sel, %bb.j ]
  %i.fn = icmp ne ptr %.sroa.06.1.i.i, %i.eq
  %i.fo = icmp ne ptr %.sroa.011.1.i.i, %i.er
  %or.cond.i.i = select i1 %i.fn, i1 true, i1 %i.fo, !prof !209
  br i1 %or.cond.i.i, label %bb.l, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTmmENvYB1s_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit, !prof !209

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #23
          to label %.noexc.i unwind label %bb.m

.noexc.i:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.fp = landingpad { ptr, i32 }
          cleanup
  %i.fq = shl nuw nsw i64 %1, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %0, ptr nonnull align 8 %i.a, i64 %i.fq, i1 false), !alias.scope !263, !noalias !264
  resume { ptr, i32 } %i.fp

.lr.ph.i:                                         ; preds = %bb.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmmENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.i
  %.sroa.05.08.i = phi i64 [ %i.gl, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmmENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.i ], [ %.sroa.0.0.i, %bb.i ] ; 4 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.05.08.i
  %.idx = shl nuw nsw i64 %.sroa.05.08.i, 3
  %i.fs = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx ; 4 uses
  %i.ft = load i64, ptr %i.fr, align 4, !alias.scope !239, !noalias !242 ; 4 uses
  store i64 %i.ft, ptr %i.fs, align 8, !alias.scope !242, !noalias !239
  %i.fu = getelementptr inbounds i8, ptr %i.fs, i64 -8 ; 3 uses
  %i.fv = trunc i64 %i.ft to i32                  ; 4 uses
  %i.fw = lshr i64 %i.ft, 32
  %i.fx = trunc nuw i64 %i.fw to i32              ; 2 uses
  %.val13.i58.i = load i32, ptr %i.fu, align 8, !alias.scope !242, !noalias !239, !noundef !4 ; 2 uses
  %i.fy = getelementptr i8, ptr %i.fs, i64 -4
  %.val14.i59.i = load i32, ptr %i.fy, align 4, !alias.scope !242, !noalias !239
  %i.fz = icmp eq i32 %.val13.i58.i, %i.fv
  %i.ga = icmp ugt i32 %.val13.i58.i, %i.fv
  %i.gb = icmp ugt i32 %.val14.i59.i, %i.fx
  %.sroa.0.0.i.i.i60.i = select i1 %i.fz, i1 %i.gb, i1 %i.ga
  br i1 %.sroa.0.0.i.i.i60.i, label %.preheader.i.preheader, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmmENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.i

.preheader.i.preheader:                           ; preds = %.lr.ph.i
  %i.gc = load i64, ptr %i.fu, align 8, !alias.scope !242, !noalias !239
  store i64 %i.gc, ptr %i.fs, align 8, !alias.scope !242, !noalias !239
  %i.gd = icmp eq i64 %.sroa.05.08.i, 1
  br i1 %i.gd, label %._crit_edge, label %.lr.ph

.preheader.i:                                     ; preds = %.lr.ph
  %i.ge = load i64, ptr %i.gg, align 4, !alias.scope !242, !noalias !239
  store i64 %i.ge, ptr %.sroa.0.0.i61.i27, align 4, !alias.scope !242, !noalias !239
  %i.gf = icmp eq ptr %i.gg, %i.a
  br i1 %i.gf, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.0.0.i61.i27 = phi ptr [ %i.gg, %.preheader.i ], [ %i.fu, %.preheader.i.preheader ] ; 4 uses
  %i.gg = getelementptr inbounds i8, ptr %.sroa.0.0.i61.i27, i64 -8 ; 4 uses
  %.val9.i62.i = load i32, ptr %i.gg, align 4, !alias.scope !242, !noalias !239, !noundef !4 ; 2 uses
  %i.gh = getelementptr i8, ptr %.sroa.0.0.i61.i27, i64 -4
  %.val10.i63.i = load i32, ptr %i.gh, align 4, !alias.scope !242, !noalias !239
  %i.gi = icmp eq i32 %.val9.i62.i, %i.fv
  %i.gj = icmp ugt i32 %.val9.i62.i, %i.fv
  %i.gk = icmp ugt i32 %.val10.i63.i, %i.fx
  %.sroa.0.0.i.i15.i.i = select i1 %i.gi, i1 %i.gk, i1 %i.gj
  br i1 %.sroa.0.0.i.i15.i.i, label %.preheader.i, label %._crit_edge

._crit_edge:                                      ; preds = %.preheader.i, %.lr.ph, %.preheader.i.preheader
  %.sroa.0.0.i61.lcssa.i = phi ptr [ %i.a, %.preheader.i.preheader ], [ %i.a, %.preheader.i ], [ %.sroa.0.0.i61.i27, %.lr.ph ]
  store i64 %i.ft, ptr %.sroa.0.0.i61.lcssa.i, align 4, !alias.scope !242, !noalias !244
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmmENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.i

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmmENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.i: ; preds = %._crit_edge, %.lr.ph.i
  %i.gl = add nuw i64 %.sroa.05.08.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.gl, %i.d
  br i1 %exitcond.not.i, label %.lr.ph.1.i, label %.lr.ph.i

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTmmENvYB1s_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit: ; preds = %bb.a, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort18small_sort_networkTmjENvYB1f_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [512 x i8], align 8               ; 4 uses
  %i.b = icmp samesign ult i64 %1, 2
  br i1 %i.b, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ugt i64 %1, 32
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = lshr i64 %1, 1                           ; 3 uses
  %i.e = icmp samesign ult i64 %1, 18             ; 2 uses
  %. = select i1 %i.e, i64 %1, i64 %i.d
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.d
  %i.g = sub nuw nsw i64 %1, %i.d
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.l, %bb.c
  %.sroa.8.0 = phi i64 [ %., %bb.c ], [ %i.g, %bb.l ] ; 5 uses
  %.sroa.02.0 = phi ptr [ %0, %bb.c ], [ %i.f, %bb.l ] ; 81 uses
  %i.h = icmp ugt i64 %.sroa.8.0, 12
  br i1 %i.h, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = icmp samesign ugt i64 %.sroa.8.0, 8
  br i1 %i.i, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 192 ; 10 uses
  %.val.i.i = load i32, ptr %i.j, align 4, !alias.scope !269, !noundef !4 ; 3 uses
  %i.k = getelementptr i8, ptr %.sroa.02.0, i64 200 ; 4 uses
  %.val2.i.i = load i64, ptr %i.k, align 8, !alias.scope !269
  %.val3.i.i = load i32, ptr %.sroa.02.0, align 8, !alias.scope !269, !noundef !4 ; 3 uses
  %i.l = getelementptr i8, ptr %.sroa.02.0, i64 8 ; 4 uses
  %.val4.i.i = load i64, ptr %i.l, align 8, !alias.scope !269
  %i.m = icmp eq i32 %.val.i.i, %.val3.i.i
  %i.n = icmp ult i32 %.val.i.i, %.val3.i.i
  %i.o = icmp ult i64 %.val2.i.i, %.val4.i.i
  %.sroa.0.0.i.i.i.i = select i1 %i.m, i1 %i.o, i1 %i.n ; 3 uses
  %i.p = select i1 %.sroa.0.0.i.i.i.i, ptr %i.j, ptr %.sroa.02.0, !unpredictable !4
  %i.q = select i1 %.sroa.0.0.i.i.i.i, ptr %.sroa.02.0, ptr %i.j, !unpredictable !4
  %i.r = select i1 %.sroa.0.0.i.i.i.i, i32 %.val3.i.i, i32 %.val.i.i ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !269, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.02.0, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false), !alias.scope !269
  store i32 %i.r, ptr %i.j, align 8, !alias.scope !269
  store i64 %i.t, ptr %i.k, align 8, !alias.scope !269
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 16 ; 23 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 160 ; 24 uses
  %.val.i1.i = load i32, ptr %i.v, align 8, !alias.scope !269, !noundef !4 ; 3 uses
  %i.w = getelementptr i8, ptr %.sroa.02.0, i64 168 ; 8 uses
  %.val2.i2.i = load i64, ptr %i.w, align 8, !alias.scope !269
  %.val3.i3.i = load i32, ptr %i.u, align 8, !alias.scope !269, !noundef !4 ; 3 uses
  %i.x = getelementptr i8, ptr %.sroa.02.0, i64 24 ; 6 uses
  %.val4.i4.i = load i64, ptr %i.x, align 8, !alias.scope !269
  %i.y = icmp eq i32 %.val.i1.i, %.val3.i3.i
  %i.z = icmp ult i32 %.val.i1.i, %.val3.i3.i
  %i.aa = icmp ult i64 %.val2.i2.i, %.val4.i4.i
  %.sroa.0.0.i.i.i5.i = select i1 %i.y, i1 %i.aa, i1 %i.z ; 3 uses
  %i.ab = select i1 %.sroa.0.0.i.i.i5.i, ptr %i.v, ptr %i.u, !unpredictable !4
  %i.ac = select i1 %.sroa.0.0.i.i.i5.i, ptr %i.u, ptr %i.v, !unpredictable !4
  %i.ad = select i1 %.sroa.0.0.i.i.i5.i, i32 %.val3.i3.i, i32 %.val.i1.i ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !269, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false), !alias.scope !269
  store i32 %i.ad, ptr %i.v, align 8, !alias.scope !269
  store i64 %i.af, ptr %i.w, align 8, !alias.scope !269
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 32 ; 26 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 144 ; 28 uses
  %.val.i6.i = load i32, ptr %i.ah, align 8, !alias.scope !269, !noundef !4 ; 3 uses
  %i.ai = getelementptr i8, ptr %.sroa.02.0, i64 152 ; 9 uses
  %.val2.i7.i = load i64, ptr %i.ai, align 8, !alias.scope !269
  %.val3.i8.i = load i32, ptr %i.ag, align 8, !alias.scope !269, !noundef !4 ; 3 uses
  %i.aj = getelementptr i8, ptr %.sroa.02.0, i64 40 ; 7 uses
  %.val4.i9.i = load i64, ptr %i.aj, align 8, !alias.scope !269
  %i.ak = icmp eq i32 %.val.i6.i, %.val3.i8.i
  %i.al = icmp ult i32 %.val.i6.i, %.val3.i8.i
  %i.am = icmp ult i64 %.val2.i7.i, %.val4.i9.i
  %.sroa.0.0.i.i.i10.i = select i1 %i.ak, i1 %i.am, i1 %i.al ; 3 uses
  %i.an = select i1 %.sroa.0.0.i.i.i10.i, ptr %i.ah, ptr %i.ag, !unpredictable !4
  %i.ao = select i1 %.sroa.0.0.i.i.i10.i, ptr %i.ag, ptr %i.ah, !unpredictable !4
  %i.ap = select i1 %.sroa.0.0.i.i.i10.i, i32 %.val3.i8.i, i32 %.val.i6.i ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !269, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false), !alias.scope !269
  store i32 %i.ap, ptr %i.ah, align 8, !alias.scope !269
  store i64 %i.ar, ptr %i.ai, align 8, !alias.scope !269
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 48 ; 29 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 112 ; 25 uses
  %.val.i11.i = load i32, ptr %i.at, align 8, !alias.scope !269, !noundef !4 ; 3 uses
  %i.au = getelementptr i8, ptr %.sroa.02.0, i64 120 ; 8 uses
  %.val2.i12.i = load i64, ptr %i.au, align 8, !alias.scope !269
  %.val3.i13.i = load i32, ptr %i.as, align 8, !alias.scope !269, !noundef !4 ; 3 uses
  %i.av = getelementptr i8, ptr %.sroa.02.0, i64 56 ; 8 uses
  %.val4.i14.i = load i64, ptr %i.av, align 8, !alias.scope !269
  %i.aw = icmp eq i32 %.val.i11.i, %.val3.i13.i
  %i.ax = icmp ult i32 %.val.i11.i, %.val3.i13.i
  %i.ay = icmp ult i64 %.val2.i12.i, %.val4.i14.i
  %.sroa.0.0.i.i.i15.i = select i1 %i.aw, i1 %i.ay, i1 %i.ax ; 3 uses
  %i.az = select i1 %.sroa.0.0.i.i.i15.i, ptr %i.at, ptr %i.as, !unpredictable !4
  %i.ba = select i1 %.sroa.0.0.i.i.i15.i, ptr %i.as, ptr %i.at, !unpredictable !4
  %i.bb = select i1 %.sroa.0.0.i.i.i15.i, i32 %.val3.i13.i, i32 %.val.i11.i ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !269, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.az, i64 16, i1 false), !alias.scope !269
  store i32 %i.bb, ptr %i.at, align 8, !alias.scope !269
  store i64 %i.bd, ptr %i.au, align 8, !alias.scope !269
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 80 ; 29 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 176 ; 20 uses
  %.val.i16.i = load i32, ptr %i.bf, align 8, !alias.scope !269, !noundef !4 ; 3 uses
  %i.bg = getelementptr i8, ptr %.sroa.02.0, i64 184 ; 7 uses
  %.val2.i17.i = load i64, ptr %i.bg, align 8, !alias.scope !269
  %.val3.i18.i = load i32, ptr %i.be, align 8, !alias.scope !269, !noundef !4 ; 3 uses
  %i.bh = getelementptr i8, ptr %.sroa.02.0, i64 88 ; 8 uses
  %.val4.i19.i = load i64, ptr %i.bh, align 8, !alias.scope !269
  %i.bi = icmp eq i32 %.val.i16.i, %.val3.i18.i
  %i.bj = icmp ult i32 %.val.i16.i, %.val3.i18.i
  %i.bk = icmp ult i64 %.val2.i17.i, %.val4.i19.i
  %.sroa.0.0.i.i.i20.i = select i1 %i.bi, i1 %i.bk, i1 %i.bj ; 3 uses
  %i.bl = select i1 %.sroa.0.0.i.i.i20.i, ptr %i.bf, ptr %i.be, !unpredictable !4
  %i.bm = select i1 %.sroa.0.0.i.i.i20.i, ptr %i.be, ptr %i.bf, !unpredictable !4
  %i.bn = select i1 %.sroa.0.0.i.i.i20.i, i32 %.val3.i18.i, i32 %.val.i16.i ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !269, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i64 16, i1 false), !alias.scope !269
  store i32 %i.bn, ptr %i.bf, align 8, !alias.scope !269
  store i64 %i.bp, ptr %i.bg, align 8, !alias.scope !269
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 96 ; 36 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 128 ; 27 uses
  %.val.i21.i = load i32, ptr %i.br, align 8, !alias.scope !269, !noundef !4 ; 3 uses
  %i.bs = getelementptr i8, ptr %.sroa.02.0, i64 136 ; 8 uses
  %.val2.i22.i = load i64, ptr %i.bs, align 8, !alias.scope !269
  %.val3.i23.i = load i32, ptr %i.bq, align 8, !alias.scope !269, !noundef !4 ; 3 uses
  %i.bt = getelementptr i8, ptr %.sroa.02.0, i64 104 ; 11 uses
  %.val4.i24.i = load i64, ptr %i.bt, align 8, !alias.scope !269
  %i.bu = icmp eq i32 %.val.i21.i, %.val3.i23.i
  %i.bv = icmp ult i32 %.val.i21.i, %.val3.i23.i
  %i.bw = icmp ult i64 %.val2.i22.i, %.val4.i24.i
  %.sroa.0.0.i.i.i25.i = select i1 %i.bu, i1 %i.bw, i1 %i.bv ; 3 uses
  %i.bx = select i1 %.sroa.0.0.i.i.i25.i, ptr %i.br, ptr %i.bq, !unpredictable !4
  %i.by = select i1 %.sroa.0.0.i.i.i25.i, ptr %i.bq, ptr %i.br, !unpredictable !4
  %i.bz = select i1 %.sroa.0.0.i.i.i25.i, i32 %.val3.i23.i, i32 %.val.i21.i ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !269, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i64 16, i1 false), !alias.scope !269
  store i32 %i.bz, ptr %i.br, align 8, !alias.scope !269
  store i64 %i.cb, ptr %i.bs, align 8, !alias.scope !269
  %.val.i26.i = load i32, ptr %i.bq, align 8, !alias.scope !269, !noundef !4 ; 3 uses
  %.val2.i27.i = load i64, ptr %i.bt, align 8, !alias.scope !269
  %.val3.i28.i = load i32, ptr %i.u, align 8, !alias.scope !269, !noundef !4 ; 3 uses
  %.val4.i29.i = load i64, ptr %i.x, align 8, !alias.scope !269
  %i.cc = icmp eq i32 %.val.i26.i, %.val3.i28.i
  %i.cd = icmp ult i32 %.val.i26.i, %.val3.i28.i
  %i.ce = icmp ult i64 %.val2.i27.i, %.val4.i29.i
  %.sroa.0.0.i.i.i30.i = select i1 %i.cc, i1 %i.ce, i1 %i.cd ; 3 uses
  %i.cf = select i1 %.sroa.0.0.i.i.i30.i, ptr %i.bq, ptr %i.u, !unpredictable !4
  %i.cg = select i1 %.sroa.0.0.i.i.i30.i, ptr %i.u, ptr %i.bq, !unpredictable !4
  %i.ch = select i1 %.sroa.0.0.i.i.i30.i, i32 %.val3.i28.i, i32 %.val.i26.i ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !alias.scope !269, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.cf, i64 16, i1 false), !alias.scope !269
  store i32 %i.ch, ptr %i.bq, align 8, !alias.scope !269
  store i64 %i.cj, ptr %i.bt, align 8, !alias.scope !269
  %.val.i31.i = load i32, ptr %i.as, align 8, !alias.scope !269, !noundef !4 ; 3 uses
  %.val2.i32.i = load i64, ptr %i.av, align 8, !alias.scope !269
  %.val3.i33.i = load i32, ptr %i.ag, align 8, !alias.scope !269, !noundef !4 ; 3 uses
  %.val4.i34.i = load i64, ptr %i.aj, align 8, !alias.scope !269
  %i.ck = icmp eq i32 %.val.i31.i, %.val3.i33.i
  %i.cl = icmp ult i32 %.val.i31.i, %.val3.i33.i
  %i.cm = icmp ult i64 %.val2.i32.i, %.val4.i34.i
  %.sroa.0.0.i.i.i35.i = select i1 %i.ck, i1 %i.cm, i1 %i.cl ; 3 uses
  %i.cn = select i1 %.sroa.0.0.i.i.i35.i, ptr %i.as, ptr %i.ag, !unpredictable !4
  %i.co = select i1 %.sroa.0.0.i.i.i35.i, ptr %i.ag, ptr %i.as, !unpredictable !4
  %i.cp = select i1 %.sroa.0.0.i.i.i35.i, i32 %.val3.i33.i, i32 %.val.i31.i ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cr = load i64, ptr %i.cq, align 8, !alias.scope !269, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i64 16, i1 false), !alias.scope !269
  store i32 %i.cp, ptr %i.as, align 8, !alias.scope !269
  store i64 %i.cr, ptr %i.av, align 8, !alias.scope !269
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 64 ; 29 uses
  %.val3.i38.i = load i32, ptr %i.cs, align 8, !alias.scope !269, !noundef !4 ; 3 uses
  %i.ct = getelementptr i8, ptr %.sroa.02.0, i64 72 ; 9 uses
  %.val4.i39.i = load i64, ptr %i.ct, align 8, !alias.scope !269
  %i.cu = icmp eq i32 %i.bn, %.val3.i38.i
  %i.cv = icmp ult i32 %i.bn, %.val3.i38.i
  %i.cw = icmp ult i64 %i.bp, %.val4.i39.i
  %.sroa.0.0.i.i.i40.i = select i1 %i.cu, i1 %i.cw, i1 %i.cv ; 3 uses
end_hunk_0
