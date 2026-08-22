Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/rv34dsp?download=true
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define void @ff_rv34dsp_init(ptr nofree noundef writeonly captures(none) initializes((576, 608)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 576
  store ptr @rv34_inv_transform_noround_c, ptr %i.a, align 8, !tbaa !9
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 584
  store ptr @rv34_inv_transform_dc_noround_c, ptr %1, align 8, !tbaa !12
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 592
  store ptr @rv34_idct_add_c, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 600
  store ptr @rv34_idct_dc_add_c, ptr %3, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @rv34_inv_transform_noround_c(ptr nofree noundef captures(none) %0) #1 {
rv34_row_transform.exit.preheader:
  %i.a = load i16, ptr %0, align 2, !tbaa !15
  %i.b = sext i16 %i.a to i32                     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !tbaa !15
  %i.e = sext i16 %i.d to i32                     ; 2 uses
  %i.f = add nsw i32 %i.e, %i.b
  %i.g = mul nsw i32 %i.f, 13                     ; 2 uses
  %i.h = sub nsw i32 %i.b, %i.e
  %i.i = mul nsw i32 %i.h, 13                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load i16, ptr %i.j, align 2, !tbaa !15
  %i.l = sext i16 %i.k to i32                     ; 2 uses
  %i.m = mul nsw i32 %i.l, 7
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = load i16, ptr %i.n, align 2, !tbaa !15
  %i.p = sext i16 %i.o to i32                     ; 2 uses
  %.neg.i = mul nsw i32 %i.p, -17
  %i.q = add nsw i32 %.neg.i, %i.m                ; 2 uses
  %i.r = mul nsw i32 %i.l, 17
  %i.s = mul nsw i32 %i.p, 7
  %i.t = add nsw i32 %i.s, %i.r                   ; 2 uses
  %i.u = add nsw i32 %i.t, %i.g                   ; 2 uses
  %i.v = add nsw i32 %i.q, %i.i                   ; 2 uses
  %i.w = sub nsw i32 %i.i, %i.q                   ; 2 uses
  %i.x = sub nsw i32 %i.g, %i.t                   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.z = load i16, ptr %i.y, align 2, !tbaa !15
  %i.aa = sext i16 %i.z to i32                    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !15
  %i.ad = sext i16 %i.ac to i32                   ; 2 uses
  %i.ae = add nsw i32 %i.ad, %i.aa
  %i.af = mul nsw i32 %i.ae, 13                   ; 2 uses
  %i.ag = sub nsw i32 %i.aa, %i.ad
  %i.ah = mul nsw i32 %i.ag, 13                   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !15
  %i.ak = sext i16 %i.aj to i32                   ; 2 uses
  %i.al = mul nsw i32 %i.ak, 7
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.an = load i16, ptr %i.am, align 2, !tbaa !15
  %i.ao = sext i16 %i.an to i32                   ; 2 uses
  %.neg.i.1 = mul nsw i32 %i.ao, -17
  %i.ap = add nsw i32 %.neg.i.1, %i.al            ; 2 uses
  %i.aq = mul nsw i32 %i.ak, 17
  %i.ar = mul nsw i32 %i.ao, 7
  %i.as = add nsw i32 %i.ar, %i.aq                ; 2 uses
  %i.at = add nsw i32 %i.as, %i.af                ; 2 uses
  %i.au = add nsw i32 %i.ap, %i.ah                ; 2 uses
  %i.av = sub nsw i32 %i.ah, %i.ap                ; 2 uses
  %i.aw = sub nsw i32 %i.af, %i.as                ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !15
  %i.az = sext i16 %i.ay to i32                   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !15
  %i.bc = sext i16 %i.bb to i32                   ; 2 uses
  %i.bd = add nsw i32 %i.bc, %i.az
  %i.be = mul nsw i32 %i.bd, 13                   ; 2 uses
  %i.bf = sub nsw i32 %i.az, %i.bc
  %i.bg = mul nsw i32 %i.bf, 13                   ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !15
  %i.bj = sext i16 %i.bi to i32                   ; 2 uses
  %i.bk = mul nsw i32 %i.bj, 7
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !15
  %i.bn = sext i16 %i.bm to i32                   ; 2 uses
  %.neg.i.2 = mul nsw i32 %i.bn, -17
  %i.bo = add nsw i32 %.neg.i.2, %i.bk            ; 2 uses
  %i.bp = mul nsw i32 %i.bj, 17
  %i.bq = mul nsw i32 %i.bn, 7
  %i.br = add nsw i32 %i.bq, %i.bp                ; 2 uses
  %i.bs = add nsw i32 %i.br, %i.be                ; 2 uses
  %i.bt = add nsw i32 %i.bo, %i.bg                ; 2 uses
  %i.bu = sub nsw i32 %i.bg, %i.bo                ; 2 uses
  %i.bv = sub nsw i32 %i.be, %i.br                ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !15
  %i.by = sext i16 %i.bx to i32                   ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !15
  %i.cb = sext i16 %i.ca to i32                   ; 2 uses
  %i.cc = add nsw i32 %i.cb, %i.by
  %i.cd = mul nsw i32 %i.cc, 13                   ; 2 uses
  %i.ce = sub nsw i32 %i.by, %i.cb
  %i.cf = mul nsw i32 %i.ce, 13                   ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !15
  %i.ci = sext i16 %i.ch to i32                   ; 2 uses
  %i.cj = mul nsw i32 %i.ci, 7
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !15
  %i.cm = sext i16 %i.cl to i32                   ; 2 uses
  %.neg.i.3 = mul nsw i32 %i.cm, -17
  %i.cn = add nsw i32 %.neg.i.3, %i.cj            ; 2 uses
  %i.co = mul nsw i32 %i.ci, 17
  %i.cp = mul nsw i32 %i.cm, 7
  %i.cq = add nsw i32 %i.cp, %i.co                ; 2 uses
  %i.cr = add nsw i32 %i.cq, %i.cd                ; 2 uses
  %i.cs = add nsw i32 %i.cn, %i.cf                ; 2 uses
  %i.ct = sub nsw i32 %i.cf, %i.cn                ; 2 uses
  %i.cu = sub nsw i32 %i.cd, %i.cq                ; 2 uses
  %i.cv = add nsw i32 %i.bs, %i.u
  %i.cw = mul nsw i32 %i.cv, 39                   ; 2 uses
  %i.cx = sub nsw i32 %i.u, %i.bs
  %i.cy = mul nsw i32 %i.cx, 39                   ; 2 uses
  %i.cz = mul nsw i32 %i.at, 21
  %.neg = mul nsw i32 %i.cr, -51
  %i.da = add nsw i32 %.neg, %i.cz                ; 2 uses
  %i.db = mul nsw i32 %i.at, 51
  %i.dc = mul nsw i32 %i.cr, 21
  %i.dd = add nsw i32 %i.dc, %i.db                ; 2 uses
  %i.de = add nsw i32 %i.dd, %i.cw
  %i.df = lshr i32 %i.de, 11
  %i.dg = trunc i32 %i.df to i16
  store i16 %i.dg, ptr %0, align 2, !tbaa !15
  %i.dh = add nsw i32 %i.da, %i.cy
  %i.di = lshr i32 %i.dh, 11
  %i.dj = trunc i32 %i.di to i16
  store i16 %i.dj, ptr %i.y, align 2, !tbaa !15
  %i.dk = sub nsw i32 %i.cy, %i.da
  %i.dl = lshr i32 %i.dk, 11
  %i.dm = trunc i32 %i.dl to i16
  store i16 %i.dm, ptr %i.ax, align 2, !tbaa !15
  %i.dn = sub nsw i32 %i.cw, %i.dd
  %i.do = lshr i32 %i.dn, 11
  %i.dp = trunc i32 %i.do to i16
  store i16 %i.dp, ptr %i.bw, align 2, !tbaa !15
  %i.dq = add nsw i32 %i.bt, %i.v
  %i.dr = mul nsw i32 %i.dq, 39                   ; 2 uses
  %i.ds = sub nsw i32 %i.v, %i.bt
  %i.dt = mul nsw i32 %i.ds, 39                   ; 2 uses
  %i.du = mul nsw i32 %i.au, 21
  %.neg.1 = mul nsw i32 %i.cs, -51
  %i.dv = add nsw i32 %.neg.1, %i.du              ; 2 uses
  %i.dw = mul nsw i32 %i.au, 51
  %i.dx = mul nsw i32 %i.cs, 21
  %i.dy = add nsw i32 %i.dx, %i.dw                ; 2 uses
  %i.dz = add nsw i32 %i.dy, %i.dr
  %i.ea = lshr i32 %i.dz, 11
  %i.eb = trunc i32 %i.ea to i16
  store i16 %i.eb, ptr %i.j, align 2, !tbaa !15
  %i.ec = add nsw i32 %i.dv, %i.dt
  %i.ed = lshr i32 %i.ec, 11
  %i.ee = trunc i32 %i.ed to i16
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %i.ee, ptr %i.ef, align 2, !tbaa !15
  %i.eg = sub nsw i32 %i.dt, %i.dv
  %i.eh = lshr i32 %i.eg, 11
  %i.ei = trunc i32 %i.eh to i16
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i16 %i.ei, ptr %i.ej, align 2, !tbaa !15
  %i.ek = sub nsw i32 %i.dr, %i.dy
  %i.el = lshr i32 %i.ek, 11
  %i.em = trunc i32 %i.el to i16
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i16 %i.em, ptr %i.en, align 2, !tbaa !15
  %i.eo = add nsw i32 %i.bu, %i.w
  %i.ep = mul nsw i32 %i.eo, 39                   ; 2 uses
  %i.eq = sub nsw i32 %i.w, %i.bu
  %i.er = mul nsw i32 %i.eq, 39                   ; 2 uses
  %i.es = mul nsw i32 %i.av, 21
  %.neg.2 = mul nsw i32 %i.ct, -51
  %i.et = add nsw i32 %.neg.2, %i.es              ; 2 uses
  %i.eu = mul nsw i32 %i.av, 51
  %i.ev = mul nsw i32 %i.ct, 21
  %i.ew = add nsw i32 %i.ev, %i.eu                ; 2 uses
  %i.ex = add nsw i32 %i.ew, %i.ep
  %i.ey = lshr i32 %i.ex, 11
  %i.ez = trunc i32 %i.ey to i16
  store i16 %i.ez, ptr %i.c, align 2, !tbaa !15
  %i.fa = add nsw i32 %i.et, %i.er
  %i.fb = lshr i32 %i.fa, 11
  %i.fc = trunc i32 %i.fb to i16
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 %i.fc, ptr %i.fd, align 2, !tbaa !15
  %i.fe = sub nsw i32 %i.er, %i.et
  %i.ff = lshr i32 %i.fe, 11
  %i.fg = trunc i32 %i.ff to i16
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 %i.fg, ptr %i.fh, align 2, !tbaa !15
  %i.fi = sub nsw i32 %i.ep, %i.ew
  %i.fj = lshr i32 %i.fi, 11
  %i.fk = trunc i32 %i.fj to i16
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 %i.fk, ptr %i.fl, align 2, !tbaa !15
  %i.fm = add nsw i32 %i.bv, %i.x
  %i.fn = mul nsw i32 %i.fm, 39                   ; 2 uses
  %i.fo = sub nsw i32 %i.x, %i.bv
  %i.fp = mul nsw i32 %i.fo, 39                   ; 2 uses
  %i.fq = mul nsw i32 %i.aw, 21
  %.neg.3 = mul nsw i32 %i.cu, -51
  %i.fr = add nsw i32 %.neg.3, %i.fq              ; 2 uses
  %i.fs = mul nsw i32 %i.aw, 51
  %i.ft = mul nsw i32 %i.cu, 21
  %i.fu = add nsw i32 %i.ft, %i.fs                ; 2 uses
  %i.fv = add nsw i32 %i.fu, %i.fn
  %i.fw = lshr i32 %i.fv, 11
  %i.fx = trunc i32 %i.fw to i16
  store i16 %i.fx, ptr %i.n, align 2, !tbaa !15
  %i.fy = add nsw i32 %i.fr, %i.fp
  %i.fz = lshr i32 %i.fy, 11
  %i.ga = trunc i32 %i.fz to i16
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i16 %i.ga, ptr %i.gb, align 2, !tbaa !15
  %i.gc = sub nsw i32 %i.fp, %i.fr
  %i.gd = lshr i32 %i.gc, 11
  %i.ge = trunc i32 %i.gd to i16
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i16 %i.ge, ptr %i.gf, align 2, !tbaa !15
  %i.gg = sub nsw i32 %i.fn, %i.fu
  %i.gh = lshr i32 %i.gg, 11
  %i.gi = trunc i32 %i.gh to i16
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i16 %i.gi, ptr %i.gj, align 2, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @rv34_inv_transform_dc_noround_c(ptr nofree noundef captures(none) initializes((2, 32)) %0) #1 {
.preheader:
  %i.a = load i16, ptr %0, align 2, !tbaa !15
  %i.b = sext i16 %i.a to i32
  %i.c = mul nsw i32 %i.b, 507
  %i.d = lshr i32 %i.c, 11
  %i.e = trunc i32 %i.d to i16
  %i.f = insertelement <8 x i16> poison, i16 %i.e, i64 0
  %i.g = shufflevector <8 x i16> %i.f, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  store <8 x i16> %i.g, ptr %0, align 2, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <8 x i16> %i.g, ptr %i.h, align 2, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @rv34_idct_add_c(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef captures(none) %2) #1 {
rv34_row_transform.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 18
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 26
  %i.h = load i16, ptr %i.g, align 2, !tbaa !15
  %i.i = sext i16 %i.h to i32                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.n = load i16, ptr %i.m, align 2, !tbaa !15
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 22
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.r = load i16, ptr %i.q, align 2, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 30
  %i.t = load i16, ptr %i.s, align 2, !tbaa !15
  %i.u = sext i16 %i.t to i32                     ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %0, i64 %1 ; 3 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 %1 ; 3 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 %1 ; 2 uses
  %i.y = load i16, ptr %i.j, align 2, !tbaa !15
  %i.z = load i16, ptr %2, align 2, !tbaa !15
  %i.aa = load i16, ptr %i.d, align 2, !tbaa !15
  %i.ab = sext i16 %i.y to i32                    ; 2 uses
  %i.ac = sext i16 %i.z to i32                    ; 2 uses
  %i.ad = load i16, ptr %i.k, align 2, !tbaa !15
  %i.ae = load i16, ptr %i.a, align 2, !tbaa !15
  %i.af = load i16, ptr %i.e, align 2, !tbaa !15
  %i.ag = sext i16 %i.ad to i32                   ; 2 uses
  %i.ah = sext i16 %i.ae to i32                   ; 2 uses
  %i.ai = sub nsw i32 %i.ac, %i.ah
  %i.aj = add nsw i32 %i.ag, %i.ab
  %i.ak = add nsw i32 %i.ah, %i.ac
  %i.al = sub nsw i32 %i.ab, %i.ag
  %i.am = load i16, ptr %i.l, align 2, !tbaa !15
  %i.an = load i16, ptr %i.f, align 2, !tbaa !15
  %i.ao = load i16, ptr %i.b, align 2, !tbaa !15
  %i.ap = load i16, ptr %i.o, align 2, !tbaa !15
  %i.aq = load i16, ptr %i.c, align 2, !tbaa !15
  %i.ar = load i16, ptr %i.p, align 2, !tbaa !15
  %i.as = sext i16 %i.ao to i32                   ; 2 uses
  %i.at = sext i16 %i.am to i32                   ; 2 uses
  %i.au = sext i16 %i.ar to i32                   ; 2 uses
  %i.av = sext i16 %i.af to i32                   ; 2 uses
  %i.aw = mul nsw i32 %i.as, 17
  %i.ax = mul nsw i32 %i.at, 17
  %i.ay = mul nsw i32 %i.as, 7
  %i.az = mul nsw i32 %i.at, 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.ba = mul nsw i32 %i.al, 13                   ; 2 uses
  %i.bb = mul nsw i32 %i.ai, 13                   ; 2 uses
  %.neg.i.3 = mul nsw i32 %i.u, -17
  %.neg.i.1 = mul nsw i32 %i.i, -17
  %i.bc = mul nsw i32 %i.u, 7
  %i.bd = mul nsw i32 %i.i, 7
  %i.be = load <4 x i8>, ptr %0, align 1, !tbaa !17
  %i.bf = zext <4 x i8> %i.be to <4 x i32>
  %i.bg = sext i16 %i.ap to i32                   ; 2 uses
  %i.bh = sext i16 %i.aa to i32                   ; 2 uses
  %i.bi = mul nsw i32 %i.ak, 13                   ; 2 uses
  %i.bj = mul nsw i32 %i.aj, 13                   ; 2 uses
  %i.bk = sext i16 %i.n to i32                    ; 2 uses
  %i.bl = sext i16 %i.aq to i32                   ; 2 uses
  %i.bm = sext i16 %i.r to i32                    ; 2 uses
  %i.bn = sext i16 %i.an to i32                   ; 2 uses
  %i.bo = mul nsw i32 %i.bk, 7
  %i.bp = mul nsw i32 %i.bl, 7
  %i.bq = add nsw i32 %i.bo, %i.ax                ; 2 uses
  %i.br = add nsw i32 %i.bp, %i.aw                ; 2 uses
  %i.bs = mul nsw i32 %i.bm, 17
  %i.bt = mul nsw i32 %i.bn, 17
  %.neg.i = mul nsw i32 %i.bl, -17
  %.neg.i.2 = mul nsw i32 %i.bk, -17
  %i.bu = mul nsw i32 %i.bm, 7
  %i.bv = mul nsw i32 %i.bn, 7
  %i.bw = sub nsw i32 %i.bi, %i.br                ; 2 uses
  %i.bx = sub nsw i32 %i.bj, %i.bq                ; 2 uses
  %i.by = add nsw i32 %.neg.i, %i.ay              ; 2 uses
  %i.bz = add nsw i32 %.neg.i.2, %i.az            ; 2 uses
  %i.ca = sub nsw i32 %i.bg, %i.au
  %i.cb = sub nsw i32 %i.bh, %i.av
  %i.cc = sub nsw i32 %i.bb, %i.by                ; 2 uses
  %i.cd = sub nsw i32 %i.ba, %i.bz                ; 2 uses
  %i.ce = add nsw i32 %i.bc, %i.bs                ; 2 uses
  %i.cf = add nsw i32 %i.bd, %i.bt                ; 2 uses
  %i.cg = add nsw i32 %i.br, %i.bi                ; 2 uses
  %i.ch = add nsw i32 %i.bq, %i.bj                ; 2 uses
  %i.ci = add nsw i32 %i.au, %i.bg
  %i.cj = add nsw i32 %i.av, %i.bh
  %i.ck = mul nsw i32 %i.ci, 13                   ; 2 uses
  %i.cl = mul nsw i32 %i.cj, 13                   ; 2 uses
  %i.cm = add nsw i32 %.neg.i.3, %i.bu            ; 2 uses
  %i.cn = add nsw i32 %.neg.i.1, %i.bv            ; 2 uses
  %i.co = add nsw i32 %i.by, %i.bb                ; 2 uses
  %i.cp = add nsw i32 %i.bz, %i.ba                ; 2 uses
  %i.cq = mul nsw i32 %i.ca, 13                   ; 2 uses
  %i.cr = mul nsw i32 %i.cb, 13                   ; 2 uses
  %i.cs = add nsw i32 %i.ch, %i.cg
  %i.ct = sub nsw i32 %i.cg, %i.ch
  %i.cu = add nsw i32 %i.ce, %i.ck                ; 2 uses
  %i.cv = add nsw i32 %i.cf, %i.cl                ; 2 uses
  %i.cw = mul nsw i32 %i.cs, 13
  %i.cx = mul nsw i32 %i.ct, 13
  %.neg = mul nsw i32 %i.cu, -17
  %i.cy = mul nsw i32 %i.cv, 17
  %i.cz = mul nsw i32 %i.cv, 7
  %i.da = mul nsw i32 %i.cu, 7
  %i.db = add nsw i32 %i.cw, 512                  ; 2 uses
  %i.dc = add nsw i32 %i.cx, 512                  ; 2 uses
  %i.dd = add nsw i32 %.neg, %i.cz                ; 2 uses
  %i.de = add nsw i32 %i.da, %i.cy                ; 2 uses
  %i.df = sub nsw i32 %i.db, %i.de
  %i.dg = sub nsw i32 %i.dc, %i.dd
  %i.dh = add nsw i32 %i.dd, %i.dc
  %i.di = add nsw i32 %i.de, %i.db
  %i.dj = insertelement <4 x i32> poison, i32 %i.di, i64 0
  %i.dk = insertelement <4 x i32> %i.dj, i32 %i.dh, i64 1
  %i.dl = insertelement <4 x i32> %i.dk, i32 %i.dg, i64 2
  %i.dm = insertelement <4 x i32> %i.dl, i32 %i.df, i64 3
  %i.dn = ashr <4 x i32> %i.dm, splat (i32 10)
  %i.do = add nsw <4 x i32> %i.dn, %i.bf          ; 3 uses
  %i.dp = icmp ugt <4 x i32> %i.do, splat (i32 255)
  %i.dq = icmp sgt <4 x i32> %i.do, splat (i32 -1)
  %i.dr = sext <4 x i1> %i.dq to <4 x i8>
  %i.ds = trunc <4 x i32> %i.do to <4 x i8>
  %i.dt = select <4 x i1> %i.dp, <4 x i8> %i.dr, <4 x i8> %i.ds
  store <4 x i8> %i.dt, ptr %0, align 1, !tbaa !17
  %i.du = add nsw i32 %i.cp, %i.co
  %i.dv = sub nsw i32 %i.co, %i.cp
  %i.dw = add nsw i32 %i.cm, %i.cq                ; 2 uses
  %i.dx = add nsw i32 %i.cn, %i.cr                ; 2 uses
  %i.dy = mul nsw i32 %i.du, 13
  %i.dz = mul nsw i32 %i.dv, 13
  %.neg.1 = mul nsw i32 %i.dw, -17
  %i.ea = mul nsw i32 %i.dx, 17
  %i.eb = mul nsw i32 %i.dx, 7
  %i.ec = mul nsw i32 %i.dw, 7
  %i.ed = add nsw i32 %i.dy, 512                  ; 2 uses
  %i.ee = add nsw i32 %i.dz, 512                  ; 2 uses
  %i.ef = add nsw i32 %.neg.1, %i.eb              ; 2 uses
  %i.eg = add nsw i32 %i.ec, %i.ea                ; 2 uses
  %i.eh = load <4 x i8>, ptr %i.v, align 1, !tbaa !17
  %i.ei = zext <4 x i8> %i.eh to <4 x i32>
  %i.ej = sub nsw i32 %i.ed, %i.eg
  %i.ek = sub nsw i32 %i.ee, %i.ef
  %i.el = add nsw i32 %i.ef, %i.ee
  %i.em = add nsw i32 %i.eg, %i.ed
  %i.en = insertelement <4 x i32> poison, i32 %i.em, i64 0
  %i.eo = insertelement <4 x i32> %i.en, i32 %i.el, i64 1
  %i.ep = insertelement <4 x i32> %i.eo, i32 %i.ek, i64 2
  %i.eq = insertelement <4 x i32> %i.ep, i32 %i.ej, i64 3
  %i.er = ashr <4 x i32> %i.eq, splat (i32 10)
  %i.es = add nsw <4 x i32> %i.er, %i.ei          ; 3 uses
  %i.et = icmp ugt <4 x i32> %i.es, splat (i32 255)
  %i.eu = icmp sgt <4 x i32> %i.es, splat (i32 -1)
  %i.ev = sext <4 x i1> %i.eu to <4 x i8>
  %i.ew = trunc <4 x i32> %i.es to <4 x i8>
  %i.ex = select <4 x i1> %i.et, <4 x i8> %i.ev, <4 x i8> %i.ew
  store <4 x i8> %i.ex, ptr %i.v, align 1, !tbaa !17
  %i.ey = add nsw i32 %i.cd, %i.cc
  %i.ez = sub nsw i32 %i.cc, %i.cd
  %i.fa = sub nsw i32 %i.cq, %i.cm                ; 2 uses
  %i.fb = sub nsw i32 %i.cr, %i.cn                ; 2 uses
  %i.fc = mul nsw i32 %i.ey, 13
  %i.fd = mul nsw i32 %i.ez, 13
  %.neg.2 = mul nsw i32 %i.fa, -17
  %i.fe = mul nsw i32 %i.fb, 17
  %i.ff = mul nsw i32 %i.fb, 7
  %i.fg = mul nsw i32 %i.fa, 7
  %i.fh = add nsw i32 %i.fc, 512                  ; 2 uses
  %i.fi = add nsw i32 %i.fd, 512                  ; 2 uses
  %i.fj = add nsw i32 %.neg.2, %i.ff              ; 2 uses
  %i.fk = add nsw i32 %i.fg, %i.fe                ; 2 uses
  %i.fl = load <4 x i8>, ptr %i.w, align 1, !tbaa !17
  %i.fm = zext <4 x i8> %i.fl to <4 x i32>
  %i.fn = sub nsw i32 %i.fh, %i.fk
  %i.fo = sub nsw i32 %i.fi, %i.fj
  %i.fp = add nsw i32 %i.fj, %i.fi
  %i.fq = add nsw i32 %i.fk, %i.fh
  %i.fr = insertelement <4 x i32> poison, i32 %i.fq, i64 0
  %i.fs = insertelement <4 x i32> %i.fr, i32 %i.fp, i64 1
  %i.ft = insertelement <4 x i32> %i.fs, i32 %i.fo, i64 2
  %i.fu = insertelement <4 x i32> %i.ft, i32 %i.fn, i64 3
  %i.fv = ashr <4 x i32> %i.fu, splat (i32 10)
  %i.fw = add nsw <4 x i32> %i.fv, %i.fm          ; 3 uses
  %i.fx = icmp ugt <4 x i32> %i.fw, splat (i32 255)
  %i.fy = icmp sgt <4 x i32> %i.fw, splat (i32 -1)
  %i.fz = sext <4 x i1> %i.fy to <4 x i8>
  %i.ga = trunc <4 x i32> %i.fw to <4 x i8>
  %i.gb = select <4 x i1> %i.fx, <4 x i8> %i.fz, <4 x i8> %i.ga
  store <4 x i8> %i.gb, ptr %i.w, align 1, !tbaa !17
  %i.gc = add nsw i32 %i.bx, %i.bw
  %i.gd = sub nsw i32 %i.bw, %i.bx
  %i.ge = sub nsw i32 %i.ck, %i.ce                ; 2 uses
  %i.gf = sub nsw i32 %i.cl, %i.cf                ; 2 uses
  %i.gg = mul nsw i32 %i.gc, 13
  %i.gh = mul nsw i32 %i.gd, 13
  %.neg.3 = mul nsw i32 %i.ge, -17
  %i.gi = mul nsw i32 %i.gf, 17
  %i.gj = mul nsw i32 %i.gf, 7
  %i.gk = mul nsw i32 %i.ge, 7
  %i.gl = add nsw i32 %i.gg, 512                  ; 2 uses
  %i.gm = add nsw i32 %i.gh, 512                  ; 2 uses
  %i.gn = add nsw i32 %.neg.3, %i.gj              ; 2 uses
  %i.go = add nsw i32 %i.gk, %i.gi                ; 2 uses
  %i.gp = load <4 x i8>, ptr %i.x, align 1, !tbaa !17
  %i.gq = zext <4 x i8> %i.gp to <4 x i32>
  %i.gr = sub nsw i32 %i.gl, %i.go
  %i.gs = sub nsw i32 %i.gm, %i.gn
  %i.gt = add nsw i32 %i.gn, %i.gm
  %i.gu = add nsw i32 %i.go, %i.gl
  %i.gv = insertelement <4 x i32> poison, i32 %i.gu, i64 0
  %i.gw = insertelement <4 x i32> %i.gv, i32 %i.gt, i64 1
  %i.gx = insertelement <4 x i32> %i.gw, i32 %i.gs, i64 2
  %i.gy = insertelement <4 x i32> %i.gx, i32 %i.gr, i64 3
  %i.gz = ashr <4 x i32> %i.gy, splat (i32 10)
  %i.ha = add nsw <4 x i32> %i.gz, %i.gq          ; 3 uses
  %i.hb = icmp ugt <4 x i32> %i.ha, splat (i32 255)
  %i.hc = icmp sgt <4 x i32> %i.ha, splat (i32 -1)
  %i.hd = sext <4 x i1> %i.hc to <4 x i8>
  %i.he = trunc <4 x i32> %i.ha to <4 x i8>
  %i.hf = select <4 x i1> %i.hb, <4 x i8> %i.hd, <4 x i8> %i.he
  store <4 x i8> %i.hf, ptr %i.x, align 1, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @rv34_idct_dc_add_c(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2) #1 {
.preheader:
  %i.a = mul nsw i32 %2, 169
  %i.b = add nsw i32 %i.a, 512
  %i.c = ashr i32 %i.b, 10
  %i.d = load <4 x i8>, ptr %0, align 1, !tbaa !17
  %i.e = zext <4 x i8> %i.d to <4 x i32>
  %i.f = insertelement <4 x i32> poison, i32 %i.c, i64 0
  %i.g = shufflevector <4 x i32> %i.f, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.h = add nsw <4 x i32> %i.g, %i.e             ; 3 uses
  %i.i = icmp ugt <4 x i32> %i.h, splat (i32 255)
  %i.j = icmp sgt <4 x i32> %i.h, splat (i32 -1)
  %i.k = sext <4 x i1> %i.j to <4 x i8>
  %i.l = trunc <4 x i32> %i.h to <4 x i8>
  %i.m = select <4 x i1> %i.i, <4 x i8> %i.k, <4 x i8> %i.l
  store <4 x i8> %i.m, ptr %0, align 1, !tbaa !17
  %i.n = getelementptr inbounds i8, ptr %0, i64 %1 ; 3 uses
  %i.o = load <4 x i8>, ptr %i.n, align 1, !tbaa !17
  %i.p = zext <4 x i8> %i.o to <4 x i32>
  %i.q = add nsw <4 x i32> %i.g, %i.p             ; 3 uses
  %i.r = icmp ugt <4 x i32> %i.q, splat (i32 255)
  %i.s = icmp sgt <4 x i32> %i.q, splat (i32 -1)
  %i.t = sext <4 x i1> %i.s to <4 x i8>
  %i.u = trunc <4 x i32> %i.q to <4 x i8>
  %i.v = select <4 x i1> %i.r, <4 x i8> %i.t, <4 x i8> %i.u
  store <4 x i8> %i.v, ptr %i.n, align 1, !tbaa !17
  %i.w = getelementptr inbounds i8, ptr %i.n, i64 %1 ; 3 uses
  %i.x = load <4 x i8>, ptr %i.w, align 1, !tbaa !17
  %i.y = zext <4 x i8> %i.x to <4 x i32>
  %i.z = add nsw <4 x i32> %i.g, %i.y             ; 3 uses
  %i.aa = icmp ugt <4 x i32> %i.z, splat (i32 255)
  %i.ab = icmp sgt <4 x i32> %i.z, splat (i32 -1)
  %i.ac = sext <4 x i1> %i.ab to <4 x i8>
  %i.ad = trunc <4 x i32> %i.z to <4 x i8>
  %i.ae = select <4 x i1> %i.aa, <4 x i8> %i.ac, <4 x i8> %i.ad
  store <4 x i8> %i.ae, ptr %i.w, align 1, !tbaa !17
  %i.af = getelementptr inbounds i8, ptr %i.w, i64 %1 ; 2 uses
  %i.ag = load <4 x i8>, ptr %i.af, align 1, !tbaa !17
  %i.ah = zext <4 x i8> %i.ag to <4 x i32>
  %i.ai = add nsw <4 x i32> %i.g, %i.ah           ; 3 uses
  %i.aj = icmp ugt <4 x i32> %i.ai, splat (i32 255)
  %i.ak = icmp sgt <4 x i32> %i.ai, splat (i32 -1)
  %i.al = sext <4 x i1> %i.ak to <4 x i8>
  %i.am = trunc <4 x i32> %i.ai to <4 x i8>
  %i.an = select <4 x i1> %i.aj, <4 x i8> %i.al, <4 x i8> %i.am
  store <4 x i8> %i.an, ptr %i.af, align 1, !tbaa !17
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 576}
!10 = !{!"RV34DSPContext", !7, i64 0, !7, i64 256, !7, i64 512, !7, i64 528, !7, i64 544, !11, i64 576, !11, i64 584, !11, i64 592, !11, i64 600, !7, i64 608, !7, i64 624, !7, i64 640}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!10, !11, i64 584}
!13 = !{!10, !11, i64 592}
!14 = !{!10, !11, i64 600}
!15 = !{!16, !16, i64 0}
!16 = !{!"short", !7, i64 0}
!17 = !{!7, !7, i64 0}
end_hunk_0
