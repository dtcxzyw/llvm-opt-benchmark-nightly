Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vp9dsp_10bpp?download=true
inline.NumInlined: 17
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 180
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 192
begin_hunk_0_@iwht_iwht_4x4_add_c:bb.a
  %i.dw = load i16, ptr %i.dn, align 2, !tbaa !28
  %i.dx = zext i16 %i.dw to i32
  %i.dy = add nsw i32 %i.du, %i.dx
  %i.dz = tail call i32 @llvm.smax.i32(i32 %i.dy, i32 0)
  %i.ea = tail call i32 @llvm.umin.i32(i32 %i.dz, i32 1023)
  %i.eb = trunc nuw nsw i32 %i.ea to i16
  store i16 %i.eb, ptr %i.dn, align 2, !tbaa !28
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %i.dn, i64 %i.ca ; 2 uses
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !28
  %i.ee = zext i16 %i.ed to i32
  %i.ef = add nsw i32 %i.ds, %i.ee
  %i.eg = tail call i32 @llvm.smax.i32(i32 %i.ef, i32 0)
  %i.eh = tail call i32 @llvm.umin.i32(i32 %i.eg, i32 1023)
  %i.ei = trunc nuw nsw i32 %i.eh to i16
  store i16 %i.ei, ptr %i.ec, align 2, !tbaa !28
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %i.dn, i64 %i.cx ; 2 uses
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !28
  %i.el = zext i16 %i.ek to i32
  %i.em = add nsw i32 %i.dt, %i.el
  %i.en = tail call i32 @llvm.smax.i32(i32 %i.em, i32 0)
  %i.eo = tail call i32 @llvm.umin.i32(i32 %i.en, i32 1023)
  %i.ep = trunc nuw nsw i32 %i.eo to i16
  store i16 %i.ep, ptr %i.ej, align 2, !tbaa !28
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %i.dn, i64 %i.df ; 2 uses
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !28
  %i.es = zext i16 %i.er to i32
  %i.et = add nsw i32 %i.dv, %i.es
  %i.eu = tail call i32 @llvm.smax.i32(i32 %i.et, i32 0)
  %i.ev = tail call i32 @llvm.umin.i32(i32 %i.eu, i32 1023)
  %i.ew = trunc nuw nsw i32 %i.ev to i16
  store i16 %i.ew, ptr %i.eq, align 2, !tbaa !28
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.ey = add nsw i32 %i.ak, %i.q                 ; 2 uses
  %i.ez = sub nsw i32 %i.be, %i.bx                ; 2 uses
  %i.fa = sub nsw i32 %i.ey, %i.ez
  %i.fb = ashr i32 %i.fa, 1                       ; 2 uses
  %i.fc = sub nsw i32 %i.fb, %i.bx                ; 2 uses
  %i.fd = sub nsw i32 %i.fb, %i.ak                ; 2 uses
  %i.fe = sub nsw i32 %i.ey, %i.fc
  %i.ff = add nsw i32 %i.fd, %i.ez
  %i.fg = load i16, ptr %i.ex, align 2, !tbaa !28
  %i.fh = zext i16 %i.fg to i32
  %i.fi = add nsw i32 %i.fe, %i.fh
  %i.fj = tail call i32 @llvm.smax.i32(i32 %i.fi, i32 0)
  %i.fk = tail call i32 @llvm.umin.i32(i32 %i.fj, i32 1023)
  %i.fl = trunc nuw nsw i32 %i.fk to i16
  store i16 %i.fl, ptr %i.ex, align 2, !tbaa !28
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %i.ex, i64 %i.ca ; 2 uses
  %i.fn = load i16, ptr %i.fm, align 2, !tbaa !28
  %i.fo = zext i16 %i.fn to i32
  %i.fp = add nsw i32 %i.fc, %i.fo
  %i.fq = tail call i32 @llvm.smax.i32(i32 %i.fp, i32 0)
  %i.fr = tail call i32 @llvm.umin.i32(i32 %i.fq, i32 1023)
  %i.fs = trunc nuw nsw i32 %i.fr to i16
  store i16 %i.fs, ptr %i.fm, align 2, !tbaa !28
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %i.ex, i64 %i.cx ; 2 uses
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !28
  %i.fv = zext i16 %i.fu to i32
  %i.fw = add nsw i32 %i.fd, %i.fv
  %i.fx = tail call i32 @llvm.smax.i32(i32 %i.fw, i32 0)
  %i.fy = tail call i32 @llvm.umin.i32(i32 %i.fx, i32 1023)
  %i.fz = trunc nuw nsw i32 %i.fy to i16
  store i16 %i.fz, ptr %i.ft, align 2, !tbaa !28
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %i.ex, i64 %i.df ; 2 uses
  %i.gb = load i16, ptr %i.ga, align 2, !tbaa !28
  %i.gc = zext i16 %i.gb to i32
  %i.gd = add nsw i32 %i.ff, %i.gc
  %i.ge = tail call i32 @llvm.smax.i32(i32 %i.gd, i32 0)
  %i.gf = tail call i32 @llvm.umin.i32(i32 %i.ge, i32 1023)
  %i.gg = trunc nuw nsw i32 %i.gf to i16
  store i16 %i.gg, ptr %i.ga, align 2, !tbaa !28
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 5 uses
  %i.gi = add nsw i32 %i.am, %i.s                 ; 2 uses
  %i.gj = sub nsw i32 %i.bf, %i.bz                ; 2 uses
  %i.gk = sub nsw i32 %i.gi, %i.gj
  %i.gl = ashr i32 %i.gk, 1                       ; 2 uses
  %i.gm = sub nsw i32 %i.gl, %i.bz                ; 2 uses
  %i.gn = sub nsw i32 %i.gl, %i.am                ; 2 uses
  %i.go = sub nsw i32 %i.gi, %i.gm
  %i.gp = add nsw i32 %i.gn, %i.gj
  %i.gq = load i16, ptr %i.gh, align 2, !tbaa !28
  %i.gr = zext i16 %i.gq to i32
  %i.gs = add nsw i32 %i.go, %i.gr
  %i.gt = tail call i32 @llvm.smax.i32(i32 %i.gs, i32 0)
  %i.gu = tail call i32 @llvm.umin.i32(i32 %i.gt, i32 1023)
  %i.gv = trunc nuw nsw i32 %i.gu to i16
  store i16 %i.gv, ptr %i.gh, align 2, !tbaa !28
  %i.gw = getelementptr inbounds nuw [2 x i8], ptr %i.gh, i64 %i.ca ; 2 uses
  %i.gx = load i16, ptr %i.gw, align 2, !tbaa !28
  %i.gy = zext i16 %i.gx to i32
  %i.gz = add nsw i32 %i.gm, %i.gy
  %i.ha = tail call i32 @llvm.smax.i32(i32 %i.gz, i32 0)
  %i.hb = tail call i32 @llvm.umin.i32(i32 %i.ha, i32 1023)
  %i.hc = trunc nuw nsw i32 %i.hb to i16
  store i16 %i.hc, ptr %i.gw, align 2, !tbaa !28
  %i.hd = getelementptr inbounds nuw [2 x i8], ptr %i.gh, i64 %i.cx ; 2 uses
  %i.he = load i16, ptr %i.hd, align 2, !tbaa !28
  %i.hf = zext i16 %i.he to i32
  %i.hg = add nsw i32 %i.gn, %i.hf
  %i.hh = tail call i32 @llvm.smax.i32(i32 %i.hg, i32 0)
  %i.hi = tail call i32 @llvm.umin.i32(i32 %i.hh, i32 1023)
  %i.hj = trunc nuw nsw i32 %i.hi to i16
  store i16 %i.hj, ptr %i.hd, align 2, !tbaa !28
  %i.hk = getelementptr inbounds nuw [2 x i8], ptr %i.gh, i64 %i.df ; 2 uses
  %i.hl = load i16, ptr %i.hk, align 2, !tbaa !28
  %i.hm = zext i16 %i.hl to i32
  %i.hn = add nsw i32 %i.gp, %i.hm
  %i.ho = tail call i32 @llvm.smax.i32(i32 %i.hn, i32 0)
  %i.hp = tail call i32 @llvm.umin.i32(i32 %i.ho, i32 1023)
  %i.hq = trunc nuw nsw i32 %i.hp to i16
  store i16 %i.hq, ptr %i.hk, align 2, !tbaa !28
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @loop_filter_h_4_8_c(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #3 {
bb.a:
  %i.a = lshr i64 %1, 1
  %i.b = shl i32 %2, 2
  %i.c = shl i32 %3, 2                            ; 6 uses
  %i.d = shl i32 %4, 2                            ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.critedge.i
  %.0.i13 = phi ptr [ %0, %bb.a ], [ %i.cs, %.critedge.i ] ; 11 uses
  %.0551.i12 = phi i32 [ 0, %bb.a ], [ %i.cr, %.critedge.i ]
  %i.e = getelementptr inbounds i8, ptr %.0.i13, i64 -8
  %i.f = load i16, ptr %i.e, align 2, !tbaa !28
  %i.g = zext i16 %i.f to i32
  %i.h = getelementptr inbounds i8, ptr %.0.i13, i64 -6
  %i.i = load i16, ptr %i.h, align 2, !tbaa !28
  %i.j = zext i16 %i.i to i32                     ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %.0.i13, i64 -4 ; 2 uses
  %i.l = load i16, ptr %i.k, align 2, !tbaa !28
  %i.m = zext i16 %i.l to i32                     ; 4 uses
  %i.n = getelementptr inbounds i8, ptr %.0.i13, i64 -2 ; 3 uses
  %i.o = load i16, ptr %i.n, align 2, !tbaa !28
  %i.p = zext i16 %i.o to i32                     ; 6 uses
  %i.q = load i16, ptr %.0.i13, align 2, !tbaa !28
  %i.r = zext i16 %i.q to i32                     ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i13, i64 2 ; 2 uses
  %i.t = load i16, ptr %i.s, align 2, !tbaa !28
  %i.u = zext i16 %i.t to i32                     ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i13, i64 4
  %i.w = load i16, ptr %i.v, align 2, !tbaa !28
  %i.x = zext i16 %i.w to i32                     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i13, i64 6
  %i.z = load i16, ptr %i.y, align 2, !tbaa !28
  %i.aa = zext i16 %i.z to i32
  %i.ab = sub nsw i32 %i.g, %i.j
  %i.ac = tail call i32 @llvm.abs.i32(i32 %i.ab, i1 true)
  %.not.i = icmp sgt i32 %i.ac, %i.c
  br i1 %.not.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = sub nsw i32 %i.j, %i.m
  %i.ae = tail call i32 @llvm.abs.i32(i32 %i.ad, i1 true)
  %.not615.i = icmp samesign ugt i32 %i.ae, %i.c
  br i1 %.not615.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = sub nsw i32 %i.m, %i.p
  %i.ag = tail call i32 @llvm.abs.i32(i32 %i.af, i1 true) ; 2 uses
  %.not616.i = icmp samesign ugt i32 %i.ag, %i.c
  br i1 %.not616.i, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = sub nsw i32 %i.u, %i.r
  %i.ai = tail call i32 @llvm.abs.i32(i32 %i.ah, i1 true) ; 2 uses
  %.not617.i = icmp samesign ugt i32 %i.ai, %i.c
  br i1 %.not617.i, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = sub nsw i32 %i.x, %i.u
  %i.ak = tail call i32 @llvm.abs.i32(i32 %i.aj, i1 true)
  %.not618.i = icmp samesign ugt i32 %i.ak, %i.c
  br i1 %.not618.i, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = sub nsw i32 %i.aa, %i.x
  %i.am = tail call i32 @llvm.abs.i32(i32 %i.al, i1 true)
  %.not619.i = icmp samesign ugt i32 %i.am, %i.c
  br i1 %.not619.i, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = sub nsw i32 %i.p, %i.r
  %i.ao = tail call i32 @llvm.abs.i32(i32 %i.an, i1 true)
  %i.ap = shl nuw nsw i32 %i.ao, 1
  %i.aq = sub nsw i32 %i.m, %i.u                  ; 2 uses
  %i.ar = tail call i32 @llvm.abs.i32(i32 %i.aq, i1 true)
  %i.as = lshr i32 %i.ar, 1
  %i.at = add nuw nsw i32 %i.as, %i.ap
  %.not = icmp sgt i32 %i.at, %i.b
  br i1 %.not, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = icmp sgt i32 %i.ag, %i.d
  %5 = icmp samesign ugt i32 %i.ai, %i.d
  %or.cond = select i1 %i.au, i1 true, i1 %5
  br i1 %or.cond, label %.critedge649.i, label %bb.j

.critedge649.i:                                   ; preds = %bb.i
  %i.av = tail call i32 @llvm.smax.i32(i32 %i.aq, i32 -512)
  %.0.i9 = tail call i32 @llvm.smin.i32(i32 %i.av, i32 511)
  %i.aw = sub nsw i32 %i.r, %i.p
  %i.ax = mul nsw i32 %i.aw, 3
  %i.ay = add nsw i32 %.0.i9, %i.ax
  %i.az = tail call i32 @llvm.smax.i32(i32 %i.ay, i32 -512) ; 2 uses
  %i.ba = tail call i32 @llvm.smin.i32(i32 %i.az, i32 507)
  %i.bb = add nsw i32 %i.ba, 4
  %i.bc = ashr i32 %i.bb, 3
  %i.bd = tail call i32 @llvm.smin.i32(i32 %i.az, i32 508)
  %i.be = add nsw i32 %i.bd, 3
  %i.bf = ashr i32 %i.be, 3
  %i.bg = add nsw i32 %i.bf, %i.p
  %i.bh = tail call i32 @llvm.smax.i32(i32 %i.bg, i32 0)
  %i.bi = tail call i32 @llvm.umin.i32(i32 %i.bh, i32 1023)
  %i.bj = trunc nuw nsw i32 %i.bi to i16
  store i16 %i.bj, ptr %i.n, align 2, !tbaa !28
  %i.bk = sub nsw i32 %i.r, %i.bc
  %i.bl = tail call i32 @llvm.smax.i32(i32 %i.bk, i32 0)
  %i.bm = tail call i32 @llvm.umin.i32(i32 %i.bl, i32 1023)
  %i.bn = trunc nuw nsw i32 %i.bm to i16
  store i16 %i.bn, ptr %.0.i13, align 2, !tbaa !28
  br label %.critedge.i

bb.j:                                             ; preds = %bb.i
  %i.bo = sub nsw i32 %i.r, %i.p                  ; 2 uses
  %i.bp = mul nsw i32 %i.bo, 3                    ; 2 uses
  %i.bq = add nsw i32 %i.bp, 512
  %.not.i10 = icmp ult i32 %i.bq, 1024
  %i.br = icmp sgt i32 %i.bo, -1
  %i.bs = select i1 %i.br, i32 511, i32 -512
  %.0.i11 = select i1 %.not.i10, i32 %i.bp, i32 %i.bs ; 2 uses
  %i.bt = tail call i32 @llvm.smin.i32(i32 %.0.i11, i32 507)
  %i.bu = add nsw i32 %i.bt, 4
  %i.bv = ashr i32 %i.bu, 3                       ; 2 uses
  %i.bw = tail call i32 @llvm.smin.i32(i32 %.0.i11, i32 508)
  %i.bx = add nsw i32 %i.bw, 3
  %i.by = ashr i32 %i.bx, 3
  %i.bz = add nsw i32 %i.by, %i.p
  %i.ca = tail call i32 @llvm.smax.i32(i32 %i.bz, i32 0)
  %i.cb = tail call i32 @llvm.umin.i32(i32 %i.ca, i32 1023)
  %i.cc = trunc nuw nsw i32 %i.cb to i16
  store i16 %i.cc, ptr %i.n, align 2, !tbaa !28
  %i.cd = sub nsw i32 %i.r, %i.bv
  %i.ce = tail call i32 @llvm.smax.i32(i32 %i.cd, i32 0)
  %i.cf = tail call i32 @llvm.umin.i32(i32 %i.ce, i32 1023)
  %i.cg = trunc nuw nsw i32 %i.cf to i16
  store i16 %i.cg, ptr %.0.i13, align 2, !tbaa !28
  %i.ch = add nsw i32 %i.bv, 1
  %i.ci = ashr i32 %i.ch, 1                       ; 2 uses
  %i.cj = add nsw i32 %i.ci, %i.m
  %i.ck = tail call i32 @llvm.smax.i32(i32 %i.cj, i32 0)
  %i.cl = tail call i32 @llvm.umin.i32(i32 %i.ck, i32 1023)
  %i.cm = trunc nuw nsw i32 %i.cl to i16
  store i16 %i.cm, ptr %i.k, align 2, !tbaa !28
  %i.cn = sub nsw i32 %i.u, %i.ci
  %i.co = tail call i32 @llvm.smax.i32(i32 %i.cn, i32 0)
  %i.cp = tail call i32 @llvm.umin.i32(i32 %i.co, i32 1023)
  %i.cq = trunc nuw nsw i32 %i.cp to i16
  store i16 %i.cq, ptr %i.s, align 2, !tbaa !28
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.j, %.critedge649.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.cr = add nuw nsw i32 %.0551.i12, 1           ; 2 uses
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %.0.i13, i64 %i.a
  %exitcond.not = icmp eq i32 %i.cr, 8
  br i1 %exitcond.not, label %loop_filter.exit, label %bb.b, !llvm.loop !14

loop_filter.exit:                                 ; preds = %.critedge.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @loop_filter_v_4_8_c(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #3 {
bb.a:
  %i.a = lshr i64 %1, 1                           ; 7 uses
  %i.b = shl i32 %2, 2
  %i.c = shl i32 %3, 2                            ; 6 uses
  %i.d = shl i32 %4, 2                            ; 2 uses
  %.idx.i = mul nsw i64 %i.a, -8
  %.idx611.i = mul nsw i64 %i.a, -6
  %.idx612.i = mul nsw i64 %i.a, -4
  %i.e = sub nsw i64 0, %i.a
  %.idx613.i = shl nuw nsw i64 %i.a, 2
  %.idx614.i = mul nuw nsw i64 %i.a, 6
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.critedge.i
  %.0.i13 = phi ptr [ %0, %bb.a ], [ %i.ct, %.critedge.i ] ; 11 uses
  %.0551.i12 = phi i32 [ 0, %bb.a ], [ %i.cs, %.critedge.i ]
  %i.f = getelementptr inbounds i8, ptr %.0.i13, i64 %.idx.i
  %i.g = load i16, ptr %i.f, align 2, !tbaa !28
  %i.h = zext i16 %i.g to i32
  %i.i = getelementptr inbounds i8, ptr %.0.i13, i64 %.idx611.i
  %i.j = load i16, ptr %i.i, align 2, !tbaa !28
  %i.k = zext i16 %i.j to i32                     ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %.0.i13, i64 %.idx612.i ; 2 uses
  %i.m = load i16, ptr %i.l, align 2, !tbaa !28
  %i.n = zext i16 %i.m to i32                     ; 4 uses
  %i.o = getelementptr inbounds [2 x i8], ptr %.0.i13, i64 %i.e ; 3 uses
  %i.p = load i16, ptr %i.o, align 2, !tbaa !28
  %i.q = zext i16 %i.p to i32                     ; 6 uses
  %i.r = load i16, ptr %.0.i13, align 2, !tbaa !28
  %i.s = zext i16 %i.r to i32                     ; 6 uses
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %.0.i13, i64 %i.a ; 2 uses
  %i.u = load i16, ptr %i.t, align 2, !tbaa !28
  %i.v = zext i16 %i.u to i32                     ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i13, i64 %.idx613.i
  %i.x = load i16, ptr %i.w, align 2, !tbaa !28
  %i.y = zext i16 %i.x to i32                     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i13, i64 %.idx614.i
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !28
  %i.ab = zext i16 %i.aa to i32
  %i.ac = sub nsw i32 %i.h, %i.k
  %i.ad = tail call i32 @llvm.abs.i32(i32 %i.ac, i1 true)
  %.not.i = icmp sgt i32 %i.ad, %i.c
  br i1 %.not.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = sub nsw i32 %i.k, %i.n
  %i.af = tail call i32 @llvm.abs.i32(i32 %i.ae, i1 true)
  %.not615.i = icmp samesign ugt i32 %i.af, %i.c
  br i1 %.not615.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = sub nsw i32 %i.n, %i.q
  %i.ah = tail call i32 @llvm.abs.i32(i32 %i.ag, i1 true) ; 2 uses
  %.not616.i = icmp samesign ugt i32 %i.ah, %i.c
  br i1 %.not616.i, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = sub nsw i32 %i.v, %i.s
  %i.aj = tail call i32 @llvm.abs.i32(i32 %i.ai, i1 true) ; 2 uses
  %.not617.i = icmp samesign ugt i32 %i.aj, %i.c
  br i1 %.not617.i, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = sub nsw i32 %i.y, %i.v
  %i.al = tail call i32 @llvm.abs.i32(i32 %i.ak, i1 true)
  %.not618.i = icmp samesign ugt i32 %i.al, %i.c
  br i1 %.not618.i, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = sub nsw i32 %i.ab, %i.y
  %i.an = tail call i32 @llvm.abs.i32(i32 %i.am, i1 true)
  %.not619.i = icmp samesign ugt i32 %i.an, %i.c
  br i1 %.not619.i, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = sub nsw i32 %i.q, %i.s
  %i.ap = tail call i32 @llvm.abs.i32(i32 %i.ao, i1 true)
  %i.aq = shl nuw nsw i32 %i.ap, 1
  %i.ar = sub nsw i32 %i.n, %i.v                  ; 2 uses
  %i.as = tail call i32 @llvm.abs.i32(i32 %i.ar, i1 true)
  %i.at = lshr i32 %i.as, 1
  %i.au = add nuw nsw i32 %i.at, %i.aq
  %.not = icmp sgt i32 %i.au, %i.b
  br i1 %.not, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = icmp sgt i32 %i.ah, %i.d
  %5 = icmp samesign ugt i32 %i.aj, %i.d
  %or.cond = select i1 %i.av, i1 true, i1 %5
  br i1 %or.cond, label %.critedge649.i, label %bb.j

.critedge649.i:                                   ; preds = %bb.i
  %i.aw = tail call i32 @llvm.smax.i32(i32 %i.ar, i32 -512)
  %.0.i9 = tail call i32 @llvm.smin.i32(i32 %i.aw, i32 511)
  %i.ax = sub nsw i32 %i.s, %i.q
  %i.ay = mul nsw i32 %i.ax, 3
  %i.az = add nsw i32 %.0.i9, %i.ay
  %i.ba = tail call i32 @llvm.smax.i32(i32 %i.az, i32 -512) ; 2 uses
  %i.bb = tail call i32 @llvm.smin.i32(i32 %i.ba, i32 507)
  %i.bc = add nsw i32 %i.bb, 4
  %i.bd = ashr i32 %i.bc, 3
  %i.be = tail call i32 @llvm.smin.i32(i32 %i.ba, i32 508)
  %i.bf = add nsw i32 %i.be, 3
  %i.bg = ashr i32 %i.bf, 3
  %i.bh = add nsw i32 %i.bg, %i.q
  %i.bi = tail call i32 @llvm.smax.i32(i32 %i.bh, i32 0)
  %i.bj = tail call i32 @llvm.umin.i32(i32 %i.bi, i32 1023)
  %i.bk = trunc nuw nsw i32 %i.bj to i16
  store i16 %i.bk, ptr %i.o, align 2, !tbaa !28
  %i.bl = sub nsw i32 %i.s, %i.bd
  %i.bm = tail call i32 @llvm.smax.i32(i32 %i.bl, i32 0)
  %i.bn = tail call i32 @llvm.umin.i32(i32 %i.bm, i32 1023)
  %i.bo = trunc nuw nsw i32 %i.bn to i16
  store i16 %i.bo, ptr %.0.i13, align 2, !tbaa !28
  br label %.critedge.i

bb.j:                                             ; preds = %bb.i
  %i.bp = sub nsw i32 %i.s, %i.q                  ; 2 uses
  %i.bq = mul nsw i32 %i.bp, 3                    ; 2 uses
  %i.br = add nsw i32 %i.bq, 512
  %.not.i10 = icmp ult i32 %i.br, 1024
  %i.bs = icmp sgt i32 %i.bp, -1
  %i.bt = select i1 %i.bs, i32 511, i32 -512
  %.0.i11 = select i1 %.not.i10, i32 %i.bq, i32 %i.bt ; 2 uses
  %i.bu = tail call i32 @llvm.smin.i32(i32 %.0.i11, i32 507)
  %i.bv = add nsw i32 %i.bu, 4
  %i.bw = ashr i32 %i.bv, 3                       ; 2 uses
  %i.bx = tail call i32 @llvm.smin.i32(i32 %.0.i11, i32 508)
  %i.by = add nsw i32 %i.bx, 3
  %i.bz = ashr i32 %i.by, 3
  %i.ca = add nsw i32 %i.bz, %i.q
  %i.cb = tail call i32 @llvm.smax.i32(i32 %i.ca, i32 0)
  %i.cc = tail call i32 @llvm.umin.i32(i32 %i.cb, i32 1023)
  %i.cd = trunc nuw nsw i32 %i.cc to i16
  store i16 %i.cd, ptr %i.o, align 2, !tbaa !28
  %i.ce = sub nsw i32 %i.s, %i.bw
  %i.cf = tail call i32 @llvm.smax.i32(i32 %i.ce, i32 0)
  %i.cg = tail call i32 @llvm.umin.i32(i32 %i.cf, i32 1023)
  %i.ch = trunc nuw nsw i32 %i.cg to i16
  store i16 %i.ch, ptr %.0.i13, align 2, !tbaa !28
  %i.ci = add nsw i32 %i.bw, 1
  %i.cj = ashr i32 %i.ci, 1                       ; 2 uses
  %i.ck = add nsw i32 %i.cj, %i.n
  %i.cl = tail call i32 @llvm.smax.i32(i32 %i.ck, i32 0)
  %i.cm = tail call i32 @llvm.umin.i32(i32 %i.cl, i32 1023)
  %i.cn = trunc nuw nsw i32 %i.cm to i16
  store i16 %i.cn, ptr %i.l, align 2, !tbaa !28
  %i.co = sub nsw i32 %i.v, %i.cj
  %i.cp = tail call i32 @llvm.smax.i32(i32 %i.co, i32 0)
  %i.cq = tail call i32 @llvm.umin.i32(i32 %i.cp, i32 1023)
  %i.cr = trunc nuw nsw i32 %i.cq to i16
  store i16 %i.cr, ptr %i.t, align 2, !tbaa !28
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.j, %.critedge649.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.cs = add nuw nsw i32 %.0551.i12, 1           ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i13, i64 2
  %exitcond.not = icmp eq i32 %i.cs, 8
  br i1 %exitcond.not, label %loop_filter.exit, label %bb.b, !llvm.loop !14

loop_filter.exit:                                 ; preds = %.critedge.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @loop_filter_h_8_8_c(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #3 {
bb.a:
  %i.a = lshr i64 %1, 1
  %i.b = shl i32 %2, 2
  %i.c = shl i32 %3, 2                            ; 6 uses
  %i.d = shl i32 %4, 2                            ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.critedge.i
  %.0.i17 = phi ptr [ %0, %bb.a ], [ %i.fd, %.critedge.i ] ; 12 uses
  %.0551.i16 = phi i32 [ 0, %bb.a ], [ %i.fc, %.critedge.i ]
  %i.e = getelementptr inbounds i8, ptr %.0.i17, i64 -8
  %i.f = load i16, ptr %i.e, align 2, !tbaa !28
  %i.g = zext i16 %i.f to i32                     ; 5 uses
  %i.h = getelementptr inbounds i8, ptr %.0.i17, i64 -6 ; 2 uses
  %i.i = load i16, ptr %i.h, align 2, !tbaa !28
  %i.j = zext i16 %i.i to i32                     ; 6 uses
  %i.k = getelementptr inbounds i8, ptr %.0.i17, i64 -4 ; 3 uses
  %i.l = load i16, ptr %i.k, align 2, !tbaa !28
  %i.m = zext i16 %i.l to i32                     ; 9 uses
  %i.n = getelementptr inbounds i8, ptr %.0.i17, i64 -2 ; 4 uses
  %i.o = load i16, ptr %i.n, align 2, !tbaa !28
  %i.p = zext i16 %i.o to i32                     ; 11 uses
  %i.q = load i16, ptr %.0.i17, align 2, !tbaa !28
  %i.r = zext i16 %i.q to i32                     ; 14 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i17, i64 2 ; 3 uses
  %i.t = load i16, ptr %i.s, align 2, !tbaa !28
  %i.u = zext i16 %i.t to i32                     ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i17, i64 4 ; 2 uses
  %i.w = load i16, ptr %i.v, align 2, !tbaa !28
  %i.x = zext i16 %i.w to i32                     ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i17, i64 6
  %i.z = load i16, ptr %i.y, align 2, !tbaa !28
  %i.aa = zext i16 %i.z to i32                    ; 6 uses
  %i.ab = sub nsw i32 %i.g, %i.j
  %i.ac = tail call i32 @llvm.abs.i32(i32 %i.ab, i1 true)
  %.not.i = icmp sgt i32 %i.ac, %i.c
  br i1 %.not.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = sub nsw i32 %i.j, %i.m
  %i.ae = tail call i32 @llvm.abs.i32(i32 %i.ad, i1 true)
  %.not615.i = icmp samesign ugt i32 %i.ae, %i.c
  br i1 %.not615.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = sub nsw i32 %i.m, %i.p
  %i.ag = tail call i32 @llvm.abs.i32(i32 %i.af, i1 true) ; 3 uses
  %.not616.i = icmp samesign ugt i32 %i.ag, %i.c
  br i1 %.not616.i, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = sub nsw i32 %i.u, %i.r
  %i.ai = tail call i32 @llvm.abs.i32(i32 %i.ah, i1 true) ; 3 uses
  %.not617.i = icmp samesign ugt i32 %i.ai, %i.c
  br i1 %.not617.i, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = sub nsw i32 %i.x, %i.u
  %i.ak = tail call i32 @llvm.abs.i32(i32 %i.aj, i1 true)
  %.not618.i = icmp samesign ugt i32 %i.ak, %i.c
  br i1 %.not618.i, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = sub nsw i32 %i.aa, %i.x
  %i.am = tail call i32 @llvm.abs.i32(i32 %i.al, i1 true)
  %.not619.i = icmp samesign ugt i32 %i.am, %i.c
  br i1 %.not619.i, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = sub nsw i32 %i.p, %i.r
  %i.ao = tail call i32 @llvm.abs.i32(i32 %i.an, i1 true)
  %i.ap = shl nuw nsw i32 %i.ao, 1
  %i.aq = sub nsw i32 %i.m, %i.u                  ; 2 uses
  %i.ar = tail call i32 @llvm.abs.i32(i32 %i.aq, i1 true)
  %i.as = lshr i32 %i.ar, 1
  %i.at = add nuw nsw i32 %i.as, %i.ap
  %.not = icmp sgt i32 %i.at, %i.b
  br i1 %.not, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = add nuw nsw i32 %i.g, 4
  %i.av = sub nsw i32 %i.au, %i.p
  %i.aw = icmp ult i32 %i.av, 9
  br i1 %i.aw, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.ax = add nuw nsw i32 %i.j, 4
  %i.ay = sub nsw i32 %i.ax, %i.p
  %i.az = icmp ult i32 %i.ay, 9
  %i.ba = icmp samesign ult i32 %i.ag, 5
  %or.cond = select i1 %i.az, i1 %i.ba, i1 false
  %i.bb = icmp samesign ult i32 %i.ai, 5
  %or.cond13 = select i1 %or.cond, i1 %i.bb, i1 false
  br i1 %or.cond13, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %reass.sub = sub nsw i32 %i.x, %i.r
  %i.bc = add nsw i32 %reass.sub, 4
  %i.bd = icmp ult i32 %i.bc, 9
  br i1 %i.bd, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.be = add nuw nsw i32 %i.aa, 4
  %i.bf = sub nsw i32 %i.be, %i.r
  %i.bg = icmp ult i32 %i.bf, 9
  br i1 %i.bg, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.bh = mul nuw nsw i32 %i.g, 3
  %i.bi = shl nuw nsw i32 %i.j, 1
  %i.bj = add nuw nsw i32 %i.bh, 4
  %i.bk = add nuw nsw i32 %i.bj, %i.bi
  %i.bl = add nuw nsw i32 %i.bk, %i.m
  %i.bm = add nuw nsw i32 %i.bl, %i.p
  %i.bn = add nuw nsw i32 %i.bm, %i.r
  %i.bo = lshr i32 %i.bn, 3
  %i.bp = trunc nuw i32 %i.bo to i16
  store i16 %i.bp, ptr %i.h, align 2, !tbaa !28
  %i.bq = add nuw nsw i32 %i.m, %i.g
  %i.br = shl nuw nsw i32 %i.bq, 1
  %i.bs = add nuw nsw i32 %i.p, 4                 ; 3 uses
  %i.bt = add nuw nsw i32 %i.bs, %i.j             ; 2 uses
  %i.bu = add nuw nsw i32 %i.bt, %i.br
  %i.bv = add nuw nsw i32 %i.bu, %i.r
  %i.bw = add nuw nsw i32 %i.bv, %i.u
  %i.bx = lshr i32 %i.bw, 3
  %i.by = trunc nuw i32 %i.bx to i16
  store i16 %i.by, ptr %i.k, align 2, !tbaa !28
  %i.bz = shl nuw nsw i32 %i.p, 1
  %i.ca = add nuw nsw i32 %i.m, 4
  %i.cb = add nuw nsw i32 %i.ca, %i.g
  %i.cc = add nuw nsw i32 %i.cb, %i.j
  %i.cd = add nuw nsw i32 %i.cc, %i.bz
  %i.ce = add nuw nsw i32 %i.cd, %i.r
  %i.cf = add nuw nsw i32 %i.ce, %i.u
  %i.cg = add nuw nsw i32 %i.cf, %i.x
  %i.ch = lshr i32 %i.cg, 3
  %i.ci = trunc nuw i32 %i.ch to i16
  store i16 %i.ci, ptr %i.n, align 2, !tbaa !28
  %i.cj = shl nuw nsw i32 %i.r, 1
  %i.ck = add nuw nsw i32 %i.bt, %i.m
  %i.cl = add nuw nsw i32 %i.ck, %i.cj
  %i.cm = add nuw nsw i32 %i.cl, %i.u
  %i.cn = add nuw nsw i32 %i.cm, %i.x
  %i.co = add nuw nsw i32 %i.cn, %i.aa
  %i.cp = lshr i32 %i.co, 3
  %i.cq = trunc nuw i32 %i.cp to i16
  store i16 %i.cq, ptr %.0.i17, align 2, !tbaa !28
  %reass.add = add nuw nsw i32 %i.aa, %i.u
  %reass.mul = shl nuw nsw i32 %reass.add, 1
  %i.cr = add nuw nsw i32 %i.bs, %i.m
  %i.cs = add nuw nsw i32 %i.cr, %i.r
  %i.ct = add nuw nsw i32 %i.cs, %i.x
  %i.cu = add nuw nsw i32 %i.ct, %reass.mul
  %i.cv = lshr i32 %i.cu, 3
  %i.cw = trunc nuw i32 %i.cv to i16
  store i16 %i.cw, ptr %i.s, align 2, !tbaa !28
  %i.cx = add nuw nsw i32 %i.aa, %i.x
  %i.cy = shl nuw nsw i32 %i.cx, 1
  %i.cz = add nuw nsw i32 %i.bs, %i.r
  %i.da = add nuw nsw i32 %i.cz, %i.u
  %i.db = add nuw nsw i32 %i.da, %i.aa
  %i.dc = add nuw nsw i32 %i.db, %i.cy
  %i.dd = lshr i32 %i.dc, 3
  %i.de = trunc nuw i32 %i.dd to i16
  store i16 %i.de, ptr %i.v, align 2, !tbaa !28
  br label %.critedge.i

.thread:                                          ; preds = %bb.i, %bb.j, %bb.k, %bb.l
  %i.df = icmp sgt i32 %i.ag, %i.d
  %5 = icmp samesign ugt i32 %i.ai, %i.d
  %or.cond14 = select i1 %i.df, i1 true, i1 %5
  br i1 %or.cond14, label %.critedge649.i, label %bb.n

.critedge649.i:                                   ; preds = %.thread
  %i.dg = tail call i32 @llvm.smax.i32(i32 %i.aq, i32 -512)
  %.0.i9 = tail call i32 @llvm.smin.i32(i32 %i.dg, i32 511)
  %i.dh = sub nsw i32 %i.r, %i.p
  %i.di = mul nsw i32 %i.dh, 3
  %i.dj = add nsw i32 %.0.i9, %i.di
  %i.dk = tail call i32 @llvm.smax.i32(i32 %i.dj, i32 -512) ; 2 uses
  %i.dl = tail call i32 @llvm.smin.i32(i32 %i.dk, i32 507)
  %i.dm = add nsw i32 %i.dl, 4
  %i.dn = ashr i32 %i.dm, 3
  %i.do = tail call i32 @llvm.smin.i32(i32 %i.dk, i32 508)
  %i.dp = add nsw i32 %i.do, 3
  %i.dq = ashr i32 %i.dp, 3
  %i.dr = add nsw i32 %i.dq, %i.p
  %i.ds = tail call i32 @llvm.smax.i32(i32 %i.dr, i32 0)
  %i.dt = tail call i32 @llvm.umin.i32(i32 %i.ds, i32 1023)
  %i.du = trunc nuw nsw i32 %i.dt to i16
  store i16 %i.du, ptr %i.n, align 2, !tbaa !28
  %i.dv = sub nsw i32 %i.r, %i.dn
  %i.dw = tail call i32 @llvm.smax.i32(i32 %i.dv, i32 0)
  %i.dx = tail call i32 @llvm.umin.i32(i32 %i.dw, i32 1023)
  %i.dy = trunc nuw nsw i32 %i.dx to i16
  store i16 %i.dy, ptr %.0.i17, align 2, !tbaa !28
  br label %.critedge.i

bb.n:                                             ; preds = %.thread
  %i.dz = sub nsw i32 %i.r, %i.p                  ; 2 uses
  %i.ea = mul nsw i32 %i.dz, 3                    ; 2 uses
  %i.eb = add nsw i32 %i.ea, 512
  %.not.i10 = icmp ult i32 %i.eb, 1024
  %i.ec = icmp sgt i32 %i.dz, -1
  %i.ed = select i1 %i.ec, i32 511, i32 -512
  %.0.i11 = select i1 %.not.i10, i32 %i.ea, i32 %i.ed ; 2 uses
  %i.ee = tail call i32 @llvm.smin.i32(i32 %.0.i11, i32 507)
  %i.ef = add nsw i32 %i.ee, 4
  %i.eg = ashr i32 %i.ef, 3                       ; 2 uses
  %i.eh = tail call i32 @llvm.smin.i32(i32 %.0.i11, i32 508)
  %i.ei = add nsw i32 %i.eh, 3
  %i.ej = ashr i32 %i.ei, 3
  %i.ek = add nsw i32 %i.ej, %i.p
  %i.el = tail call i32 @llvm.smax.i32(i32 %i.ek, i32 0)
  %i.em = tail call i32 @llvm.umin.i32(i32 %i.el, i32 1023)
  %i.en = trunc nuw nsw i32 %i.em to i16
  store i16 %i.en, ptr %i.n, align 2, !tbaa !28
  %i.eo = sub nsw i32 %i.r, %i.eg
  %i.ep = tail call i32 @llvm.smax.i32(i32 %i.eo, i32 0)
  %i.eq = tail call i32 @llvm.umin.i32(i32 %i.ep, i32 1023)
  %i.er = trunc nuw nsw i32 %i.eq to i16
  store i16 %i.er, ptr %.0.i17, align 2, !tbaa !28
  %i.es = add nsw i32 %i.eg, 1
  %i.et = ashr i32 %i.es, 1                       ; 2 uses
  %i.eu = add nsw i32 %i.et, %i.m
  %i.ev = tail call i32 @llvm.smax.i32(i32 %i.eu, i32 0)
  %i.ew = tail call i32 @llvm.umin.i32(i32 %i.ev, i32 1023)
  %i.ex = trunc nuw nsw i32 %i.ew to i16
  store i16 %i.ex, ptr %i.k, align 2, !tbaa !28
  %i.ey = sub nsw i32 %i.u, %i.et
  %i.ez = tail call i32 @llvm.smax.i32(i32 %i.ey, i32 0)
  %i.fa = tail call i32 @llvm.umin.i32(i32 %i.ez, i32 1023)
  %i.fb = trunc nuw nsw i32 %i.fa to i16
  store i16 %i.fb, ptr %i.s, align 2, !tbaa !28
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.n, %.critedge649.i, %bb.m, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.fc = add nuw nsw i32 %.0551.i16, 1           ; 2 uses
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %.0.i17, i64 %i.a
  %exitcond.not = icmp eq i32 %i.fc, 8
  br i1 %exitcond.not, label %loop_filter.exit, label %bb.b, !llvm.loop !14

loop_filter.exit:                                 ; preds = %.critedge.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @loop_filter_v_8_8_c(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #3 {
bb.a:
  %i.a = lshr i64 %1, 1                           ; 7 uses
  %i.b = shl i32 %2, 2
  %i.c = shl i32 %3, 2                            ; 6 uses
  %i.d = shl i32 %4, 2                            ; 2 uses
  %.idx.i = mul nsw i64 %i.a, -8
  %.idx611.i = mul nsw i64 %i.a, -6
  %.idx612.i = mul nsw i64 %i.a, -4
  %i.e = sub nsw i64 0, %i.a
  %.idx613.i = shl nuw nsw i64 %i.a, 2
  %.idx614.i = mul nuw nsw i64 %i.a, 6
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.critedge.i
  %.0.i17 = phi ptr [ %0, %bb.a ], [ %i.fe, %.critedge.i ] ; 12 uses
  %.0551.i16 = phi i32 [ 0, %bb.a ], [ %i.fd, %.critedge.i ]
  %i.f = getelementptr inbounds i8, ptr %.0.i17, i64 %.idx.i
  %i.g = load i16, ptr %i.f, align 2, !tbaa !28
  %i.h = zext i16 %i.g to i32                     ; 5 uses
  %i.i = getelementptr inbounds i8, ptr %.0.i17, i64 %.idx611.i ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !tbaa !28
  %i.k = zext i16 %i.j to i32                     ; 6 uses
  %i.l = getelementptr inbounds i8, ptr %.0.i17, i64 %.idx612.i ; 3 uses
  %i.m = load i16, ptr %i.l, align 2, !tbaa !28
  %i.n = zext i16 %i.m to i32                     ; 9 uses
  %i.o = getelementptr inbounds [2 x i8], ptr %.0.i17, i64 %i.e ; 4 uses
  %i.p = load i16, ptr %i.o, align 2, !tbaa !28
  %i.q = zext i16 %i.p to i32                     ; 11 uses
  %i.r = load i16, ptr %.0.i17, align 2, !tbaa !28
  %i.s = zext i16 %i.r to i32                     ; 14 uses
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %.0.i17, i64 %i.a ; 3 uses
  %i.u = load i16, ptr %i.t, align 2, !tbaa !28
  %i.v = zext i16 %i.u to i32                     ; 9 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i17, i64 %.idx613.i ; 2 uses
  %i.x = load i16, ptr %i.w, align 2, !tbaa !28
  %i.y = zext i16 %i.x to i32                     ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i17, i64 %.idx614.i
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !28
  %i.ab = zext i16 %i.aa to i32                   ; 6 uses
  %i.ac = sub nsw i32 %i.h, %i.k
  %i.ad = tail call i32 @llvm.abs.i32(i32 %i.ac, i1 true)
  %.not.i = icmp sgt i32 %i.ad, %i.c
  br i1 %.not.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = sub nsw i32 %i.k, %i.n
  %i.af = tail call i32 @llvm.abs.i32(i32 %i.ae, i1 true)
  %.not615.i = icmp samesign ugt i32 %i.af, %i.c
  br i1 %.not615.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = sub nsw i32 %i.n, %i.q
  %i.ah = tail call i32 @llvm.abs.i32(i32 %i.ag, i1 true) ; 3 uses
  %.not616.i = icmp samesign ugt i32 %i.ah, %i.c
  br i1 %.not616.i, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = sub nsw i32 %i.v, %i.s
  %i.aj = tail call i32 @llvm.abs.i32(i32 %i.ai, i1 true) ; 3 uses
  %.not617.i = icmp samesign ugt i32 %i.aj, %i.c
  br i1 %.not617.i, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = sub nsw i32 %i.y, %i.v
  %i.al = tail call i32 @llvm.abs.i32(i32 %i.ak, i1 true)
  %.not618.i = icmp samesign ugt i32 %i.al, %i.c
  br i1 %.not618.i, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = sub nsw i32 %i.ab, %i.y
  %i.an = tail call i32 @llvm.abs.i32(i32 %i.am, i1 true)
  %.not619.i = icmp samesign ugt i32 %i.an, %i.c
  br i1 %.not619.i, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = sub nsw i32 %i.q, %i.s
  %i.ap = tail call i32 @llvm.abs.i32(i32 %i.ao, i1 true)
  %i.aq = shl nuw nsw i32 %i.ap, 1
  %i.ar = sub nsw i32 %i.n, %i.v                  ; 2 uses
  %i.as = tail call i32 @llvm.abs.i32(i32 %i.ar, i1 true)
  %i.at = lshr i32 %i.as, 1
  %i.au = add nuw nsw i32 %i.at, %i.aq
  %.not = icmp sgt i32 %i.au, %i.b
  br i1 %.not, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = add nuw nsw i32 %i.h, 4
  %i.aw = sub nsw i32 %i.av, %i.q
  %i.ax = icmp ult i32 %i.aw, 9
  br i1 %i.ax, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.ay = add nuw nsw i32 %i.k, 4
  %i.az = sub nsw i32 %i.ay, %i.q
  %i.ba = icmp ult i32 %i.az, 9
  %i.bb = icmp samesign ult i32 %i.ah, 5
  %or.cond = select i1 %i.ba, i1 %i.bb, i1 false
  %i.bc = icmp samesign ult i32 %i.aj, 5
  %or.cond13 = select i1 %or.cond, i1 %i.bc, i1 false
  br i1 %or.cond13, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %reass.sub = sub nsw i32 %i.y, %i.s
  %i.bd = add nsw i32 %reass.sub, 4
  %i.be = icmp ult i32 %i.bd, 9
  br i1 %i.be, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.bf = add nuw nsw i32 %i.ab, 4
  %i.bg = sub nsw i32 %i.bf, %i.s
  %i.bh = icmp ult i32 %i.bg, 9
  br i1 %i.bh, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.bi = mul nuw nsw i32 %i.h, 3
  %i.bj = shl nuw nsw i32 %i.k, 1
  %i.bk = add nuw nsw i32 %i.bi, 4
  %i.bl = add nuw nsw i32 %i.bk, %i.bj
  %i.bm = add nuw nsw i32 %i.bl, %i.n
  %i.bn = add nuw nsw i32 %i.bm, %i.q
  %i.bo = add nuw nsw i32 %i.bn, %i.s
  %i.bp = lshr i32 %i.bo, 3
  %i.bq = trunc nuw i32 %i.bp to i16
  store i16 %i.bq, ptr %i.i, align 2, !tbaa !28
  %i.br = add nuw nsw i32 %i.n, %i.h
  %i.bs = shl nuw nsw i32 %i.br, 1
  %i.bt = add nuw nsw i32 %i.q, 4                 ; 3 uses
  %i.bu = add nuw nsw i32 %i.bt, %i.k             ; 2 uses
  %i.bv = add nuw nsw i32 %i.bu, %i.bs
  %i.bw = add nuw nsw i32 %i.bv, %i.s
  %i.bx = add nuw nsw i32 %i.bw, %i.v
  %i.by = lshr i32 %i.bx, 3
  %i.bz = trunc nuw i32 %i.by to i16
  store i16 %i.bz, ptr %i.l, align 2, !tbaa !28
  %i.ca = shl nuw nsw i32 %i.q, 1
  %i.cb = add nuw nsw i32 %i.n, 4
  %i.cc = add nuw nsw i32 %i.cb, %i.h
  %i.cd = add nuw nsw i32 %i.cc, %i.k
  %i.ce = add nuw nsw i32 %i.cd, %i.ca
  %i.cf = add nuw nsw i32 %i.ce, %i.s
  %i.cg = add nuw nsw i32 %i.cf, %i.v
  %i.ch = add nuw nsw i32 %i.cg, %i.y
  %i.ci = lshr i32 %i.ch, 3
  %i.cj = trunc nuw i32 %i.ci to i16
  store i16 %i.cj, ptr %i.o, align 2, !tbaa !28
  %i.ck = shl nuw nsw i32 %i.s, 1
  %i.cl = add nuw nsw i32 %i.bu, %i.n
  %i.cm = add nuw nsw i32 %i.cl, %i.ck
  %i.cn = add nuw nsw i32 %i.cm, %i.v
  %i.co = add nuw nsw i32 %i.cn, %i.y
  %i.cp = add nuw nsw i32 %i.co, %i.ab
  %i.cq = lshr i32 %i.cp, 3
  %i.cr = trunc nuw i32 %i.cq to i16
  store i16 %i.cr, ptr %.0.i17, align 2, !tbaa !28
  %reass.add = add nuw nsw i32 %i.ab, %i.v
  %reass.mul = shl nuw nsw i32 %reass.add, 1
  %i.cs = add nuw nsw i32 %i.bt, %i.n
  %i.ct = add nuw nsw i32 %i.cs, %i.s
  %i.cu = add nuw nsw i32 %i.ct, %i.y
  %i.cv = add nuw nsw i32 %i.cu, %reass.mul
  %i.cw = lshr i32 %i.cv, 3
  %i.cx = trunc nuw i32 %i.cw to i16
  store i16 %i.cx, ptr %i.t, align 2, !tbaa !28
  %i.cy = add nuw nsw i32 %i.ab, %i.y
  %i.cz = shl nuw nsw i32 %i.cy, 1
  %i.da = add nuw nsw i32 %i.bt, %i.s
  %i.db = add nuw nsw i32 %i.da, %i.v
  %i.dc = add nuw nsw i32 %i.db, %i.ab
  %i.dd = add nuw nsw i32 %i.dc, %i.cz
  %i.de = lshr i32 %i.dd, 3
  %i.df = trunc nuw i32 %i.de to i16
  store i16 %i.df, ptr %i.w, align 2, !tbaa !28
  br label %.critedge.i

.thread:                                          ; preds = %bb.i, %bb.j, %bb.k, %bb.l
  %i.dg = icmp sgt i32 %i.ah, %i.d
  %5 = icmp samesign ugt i32 %i.aj, %i.d
  %or.cond14 = select i1 %i.dg, i1 true, i1 %5
  br i1 %or.cond14, label %.critedge649.i, label %bb.n

.critedge649.i:                                   ; preds = %.thread
  %i.dh = tail call i32 @llvm.smax.i32(i32 %i.ar, i32 -512)
  %.0.i9 = tail call i32 @llvm.smin.i32(i32 %i.dh, i32 511)
  %i.di = sub nsw i32 %i.s, %i.q
  %i.dj = mul nsw i32 %i.di, 3
  %i.dk = add nsw i32 %.0.i9, %i.dj
  %i.dl = tail call i32 @llvm.smax.i32(i32 %i.dk, i32 -512) ; 2 uses
  %i.dm = tail call i32 @llvm.smin.i32(i32 %i.dl, i32 507)
  %i.dn = add nsw i32 %i.dm, 4
  %i.do = ashr i32 %i.dn, 3
  %i.dp = tail call i32 @llvm.smin.i32(i32 %i.dl, i32 508)
  %i.dq = add nsw i32 %i.dp, 3
  %i.dr = ashr i32 %i.dq, 3
  %i.ds = add nsw i32 %i.dr, %i.q
  %i.dt = tail call i32 @llvm.smax.i32(i32 %i.ds, i32 0)
  %i.du = tail call i32 @llvm.umin.i32(i32 %i.dt, i32 1023)
  %i.dv = trunc nuw nsw i32 %i.du to i16
  store i16 %i.dv, ptr %i.o, align 2, !tbaa !28
  %i.dw = sub nsw i32 %i.s, %i.do
  %i.dx = tail call i32 @llvm.smax.i32(i32 %i.dw, i32 0)
  %i.dy = tail call i32 @llvm.umin.i32(i32 %i.dx, i32 1023)
  %i.dz = trunc nuw nsw i32 %i.dy to i16
  store i16 %i.dz, ptr %.0.i17, align 2, !tbaa !28
  br label %.critedge.i

bb.n:                                             ; preds = %.thread
  %i.ea = sub nsw i32 %i.s, %i.q                  ; 2 uses
  %i.eb = mul nsw i32 %i.ea, 3                    ; 2 uses
  %i.ec = add nsw i32 %i.eb, 512
  %.not.i10 = icmp ult i32 %i.ec, 1024
  %i.ed = icmp sgt i32 %i.ea, -1
  %i.ee = select i1 %i.ed, i32 511, i32 -512
  %.0.i11 = select i1 %.not.i10, i32 %i.eb, i32 %i.ee ; 2 uses
  %i.ef = tail call i32 @llvm.smin.i32(i32 %.0.i11, i32 507)
  %i.eg = add nsw i32 %i.ef, 4
  %i.eh = ashr i32 %i.eg, 3                       ; 2 uses
  %i.ei = tail call i32 @llvm.smin.i32(i32 %.0.i11, i32 508)
  %i.ej = add nsw i32 %i.ei, 3
  %i.ek = ashr i32 %i.ej, 3
  %i.el = add nsw i32 %i.ek, %i.q
  %i.em = tail call i32 @llvm.smax.i32(i32 %i.el, i32 0)
  %i.en = tail call i32 @llvm.umin.i32(i32 %i.em, i32 1023)
  %i.eo = trunc nuw nsw i32 %i.en to i16
  store i16 %i.eo, ptr %i.o, align 2, !tbaa !28
  %i.ep = sub nsw i32 %i.s, %i.eh
  %i.eq = tail call i32 @llvm.smax.i32(i32 %i.ep, i32 0)
  %i.er = tail call i32 @llvm.umin.i32(i32 %i.eq, i32 1023)
  %i.es = trunc nuw nsw i32 %i.er to i16
  store i16 %i.es, ptr %.0.i17, align 2, !tbaa !28
  %i.et = add nsw i32 %i.eh, 1
  %i.eu = ashr i32 %i.et, 1                       ; 2 uses
  %i.ev = add nsw i32 %i.eu, %i.n
  %i.ew = tail call i32 @llvm.smax.i32(i32 %i.ev, i32 0)
  %i.ex = tail call i32 @llvm.umin.i32(i32 %i.ew, i32 1023)
  %i.ey = trunc nuw nsw i32 %i.ex to i16
  store i16 %i.ey, ptr %i.l, align 2, !tbaa !28
  %i.ez = sub nsw i32 %i.v, %i.eu
  %i.fa = tail call i32 @llvm.smax.i32(i32 %i.ez, i32 0)
  %i.fb = tail call i32 @llvm.umin.i32(i32 %i.fa, i32 1023)
  %i.fc = trunc nuw nsw i32 %i.fb to i16
  store i16 %i.fc, ptr %i.t, align 2, !tbaa !28
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.n, %.critedge649.i, %bb.m, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.fd = add nuw nsw i32 %.0551.i16, 1           ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.0.i17, i64 2
  %exitcond.not = icmp eq i32 %i.fd, 8
  br i1 %exitcond.not, label %loop_filter.exit, label %bb.b, !llvm.loop !14

loop_filter.exit:                                 ; preds = %.critedge.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @loop_filter_h_16_8_c(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #3 {
bb.a:
  %i.a = lshr i64 %1, 1
  %i.b = shl i32 %2, 2
  %i.c = shl i32 %3, 2                            ; 6 uses
  %i.d = shl i32 %4, 2                            ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.critedge.i
  %.0.i24 = phi ptr [ %0, %bb.a ], [ %i.nv, %.critedge.i ] ; 21 uses
  %.0551.i23 = phi i32 [ 0, %bb.a ], [ %i.nu, %.critedge.i ]
  %i.e = getelementptr inbounds i8, ptr %.0.i24, i64 -8 ; 2 uses
  %i.f = load i16, ptr %i.e, align 2, !tbaa !28
  %i.g = zext i16 %i.f to i32                     ; 8 uses
  %i.h = getelementptr inbounds i8, ptr %.0.i24, i64 -6 ; 3 uses
  %i.i = load i16, ptr %i.h, align 2, !tbaa !28
  %i.j = zext i16 %i.i to i32                     ; 11 uses
  %i.k = getelementptr inbounds i8, ptr %.0.i24, i64 -4 ; 4 uses
  %i.l = load i16, ptr %i.k, align 2, !tbaa !28
  %i.m = zext i16 %i.l to i32                     ; 16 uses
  %i.n = getelementptr inbounds i8, ptr %.0.i24, i64 -2 ; 5 uses
  %i.o = load i16, ptr %i.n, align 2, !tbaa !28
  %i.p = zext i16 %i.o to i32                     ; 24 uses
  %i.q = load i16, ptr %.0.i24, align 2, !tbaa !28
  %i.r = zext i16 %i.q to i32                     ; 28 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i24, i64 2 ; 4 uses
  %i.t = load i16, ptr %i.s, align 2, !tbaa !28
  %i.u = zext i16 %i.t to i32                     ; 19 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i24, i64 4 ; 3 uses
  %i.w = load i16, ptr %i.v, align 2, !tbaa !28
  %i.x = zext i16 %i.w to i32                     ; 18 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i24, i64 6 ; 2 uses
  %i.z = load i16, ptr %i.y, align 2, !tbaa !28
  %i.aa = zext i16 %i.z to i32                    ; 17 uses
  %i.ab = sub nsw i32 %i.g, %i.j
  %i.ac = tail call i32 @llvm.abs.i32(i32 %i.ab, i1 true)
  %.not.i = icmp sgt i32 %i.ac, %i.c
  br i1 %.not.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = sub nsw i32 %i.j, %i.m
  %i.ae = tail call i32 @llvm.abs.i32(i32 %i.ad, i1 true)
  %.not615.i = icmp samesign ugt i32 %i.ae, %i.c
  br i1 %.not615.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = sub nsw i32 %i.m, %i.p
  %i.ag = tail call i32 @llvm.abs.i32(i32 %i.af, i1 true) ; 3 uses
  %.not616.i = icmp samesign ugt i32 %i.ag, %i.c
  br i1 %.not616.i, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = sub nsw i32 %i.u, %i.r
  %i.ai = tail call i32 @llvm.abs.i32(i32 %i.ah, i1 true) ; 3 uses
  %.not617.i = icmp samesign ugt i32 %i.ai, %i.c
  br i1 %.not617.i, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = sub nsw i32 %i.x, %i.u
  %i.ak = tail call i32 @llvm.abs.i32(i32 %i.aj, i1 true)
  %.not618.i = icmp samesign ugt i32 %i.ak, %i.c
  br i1 %.not618.i, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = sub nsw i32 %i.aa, %i.x
  %i.am = tail call i32 @llvm.abs.i32(i32 %i.al, i1 true)
  %.not619.i = icmp samesign ugt i32 %i.am, %i.c
  br i1 %.not619.i, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = sub nsw i32 %i.p, %i.r
  %i.ao = tail call i32 @llvm.abs.i32(i32 %i.an, i1 true)
  %i.ap = shl nuw nsw i32 %i.ao, 1
  %i.aq = sub nsw i32 %i.m, %i.u                  ; 2 uses
  %i.ar = tail call i32 @llvm.abs.i32(i32 %i.aq, i1 true)
  %i.as = lshr i32 %i.ar, 1
  %i.at = add nuw nsw i32 %i.as, %i.ap
  %.not = icmp sgt i32 %i.at, %i.b
  br i1 %.not, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds i8, ptr %.0.i24, i64 -16
  %i.av = load i16, ptr %i.au, align 2, !tbaa !28
  %i.aw = zext i16 %i.av to i32                   ; 8 uses
  %i.ax = getelementptr inbounds i8, ptr %.0.i24, i64 -14 ; 2 uses
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !28
  %i.az = zext i16 %i.ay to i32                   ; 9 uses
  %i.ba = getelementptr inbounds i8, ptr %.0.i24, i64 -12 ; 2 uses
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !28
  %i.bc = zext i16 %i.bb to i32                   ; 10 uses
  %i.bd = getelementptr inbounds i8, ptr %.0.i24, i64 -10 ; 2 uses
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !28
  %i.bf = zext i16 %i.be to i32                   ; 11 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i24, i64 8 ; 2 uses
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !28
  %i.bi = zext i16 %i.bh to i32                   ; 11 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i24, i64 10 ; 2 uses
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !28
  %i.bl = zext i16 %i.bk to i32                   ; 10 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.i24, i64 12 ; 2 uses
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !28
  %i.bo = zext i16 %i.bn to i32                   ; 9 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.i24, i64 14
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !28
  %i.br = zext i16 %i.bq to i32                   ; 7 uses
  %reass.sub = sub nsw i32 %i.aw, %i.p
  %i.bs = add nsw i32 %reass.sub, 4
  %i.bt = icmp ult i32 %i.bs, 9
  br i1 %i.bt, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %reass.sub25 = sub nsw i32 %i.az, %i.p
  %i.bu = add nsw i32 %reass.sub25, 4
  %i.bv = icmp ult i32 %i.bu, 9
  br i1 %i.bv, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %reass.sub26 = sub nsw i32 %i.bc, %i.p
  %i.bw = add nsw i32 %reass.sub26, 4
  %i.bx = icmp ult i32 %i.bw, 9
  br i1 %i.bx, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %reass.sub27 = sub nsw i32 %i.bf, %i.p
  %i.by = add nsw i32 %reass.sub27, 4
  %i.bz = icmp ult i32 %i.by, 9
  br i1 %i.bz, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %reass.sub28 = sub nsw i32 %i.bi, %i.r
  %i.ca = add nsw i32 %reass.sub28, 4
  %i.cb = icmp ult i32 %i.ca, 9
  br i1 %i.cb, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %reass.sub29 = sub nsw i32 %i.bl, %i.r
  %i.cc = add nsw i32 %reass.sub29, 4
  %i.cd = icmp ult i32 %i.cc, 9
  br i1 %i.cd, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %reass.sub30 = sub nsw i32 %i.bo, %i.r
  %i.ce = add nsw i32 %reass.sub30, 4
  %i.cf = icmp ult i32 %i.ce, 9
  br i1 %i.cf, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %reass.sub31 = sub nsw i32 %i.br, %i.r
  %i.cg = add nsw i32 %reass.sub31, 4
  %i.ch = icmp ult i32 %i.cg, 9
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %or.cond.i = phi i1 [ %i.ch, %bb.p ], [ false, %bb.o ], [ false, %bb.n ], [ false, %bb.m ], [ false, %bb.l ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.i ]
  %i.ci = add nuw nsw i32 %i.g, 4
  %i.cj = sub nsw i32 %i.ci, %i.p
  %i.ck = icmp ult i32 %i.cj, 9
  br i1 %i.ck, label %bb.r, label %.thread16

bb.r:                                             ; preds = %bb.q
  %i.cl = add nuw nsw i32 %i.j, 4
  %i.cm = sub nsw i32 %i.cl, %i.p
  %i.cn = icmp ult i32 %i.cm, 9
  %i.co = icmp samesign ult i32 %i.ag, 5
  %or.cond = select i1 %i.cn, i1 %i.co, i1 false
  %i.cp = icmp samesign ult i32 %i.ai, 5
  %or.cond18 = select i1 %or.cond, i1 %i.cp, i1 false
  br i1 %or.cond18, label %bb.s, label %.thread16

bb.s:                                             ; preds = %bb.r
  %i.cq = add nuw nsw i32 %i.x, 4
  %i.cr = sub nsw i32 %i.cq, %i.r
  %i.cs = icmp ult i32 %i.cr, 9
  br i1 %i.cs, label %bb.t, label %.thread16

bb.t:                                             ; preds = %bb.s
  %i.ct = add nuw nsw i32 %i.aa, 4
  %i.cu = sub nsw i32 %i.ct, %i.r
  %i.cv = icmp ult i32 %i.cu, 9                   ; 2 uses
  %or.cond3.i = select i1 %or.cond.i, i1 %i.cv, i1 false
  br i1 %or.cond3.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cw = mul nuw nsw i32 %i.aw, 3
  %i.cx = shl nuw nsw i32 %i.aw, 2
  %i.cy = mul nuw nsw i32 %i.aw, 5
  %i.cz = mul nuw nsw i32 %i.aw, 6
  %i.da = mul nuw nsw i32 %i.aw, 7
  %i.db = shl nuw nsw i32 %i.az, 1
  %i.dc = add nuw nsw i32 %i.r, %i.p
  %i.dd = add nuw nsw i32 %i.dc, 8
  %i.de = add nuw nsw i32 %i.dd, %i.g
  %i.df = add nuw nsw i32 %i.de, %i.j
  %i.dg = add nuw nsw i32 %i.df, %i.m
  %i.dh = add nuw nsw i32 %i.dg, %i.da
  %i.di = add nuw nsw i32 %i.dh, %i.db
  %i.dj = add nuw nsw i32 %i.di, %i.bc
  %i.dk = add nuw nsw i32 %i.dj, %i.bf
  %i.dl = lshr i32 %i.dk, 4
  %i.dm = trunc nuw i32 %i.dl to i16
  store i16 %i.dm, ptr %i.ax, align 2, !tbaa !28
  %i.dn = shl nuw nsw i32 %i.bc, 1
  %i.do = add nuw nsw i32 %i.g, 8                 ; 2 uses
  %i.dp = add nuw nsw i32 %i.do, %i.j             ; 2 uses
  %i.dq = add nuw nsw i32 %i.dp, %i.m             ; 2 uses
  %i.dr = add nuw nsw i32 %i.dq, %i.p             ; 2 uses
  %i.ds = add nuw nsw i32 %i.dr, %i.r             ; 2 uses
  %i.dt = add nuw nsw i32 %i.ds, %i.u             ; 3 uses
  %i.du = add nuw nsw i32 %i.dt, %i.az
  %i.dv = add nuw nsw i32 %i.du, %i.cz
  %i.dw = add nuw nsw i32 %i.dv, %i.dn
  %i.dx = add nuw nsw i32 %i.dw, %i.bf
  %i.dy = lshr i32 %i.dx, 4
  %i.dz = trunc nuw i32 %i.dy to i16
  store i16 %i.dz, ptr %i.ba, align 2, !tbaa !28
  %i.ea = shl nuw nsw i32 %i.bf, 1
  %i.eb = add nuw nsw i32 %i.dt, %i.x             ; 2 uses
  %i.ec = add nuw nsw i32 %i.eb, %i.az
  %i.ed = add nuw nsw i32 %i.ec, %i.cy
  %i.ee = add nuw nsw i32 %i.ed, %i.bc
  %i.ef = add nuw nsw i32 %i.ee, %i.ea
  %i.eg = lshr i32 %i.ef, 4
  %i.eh = trunc nuw i32 %i.eg to i16
  store i16 %i.eh, ptr %i.bd, align 2, !tbaa !28
  %i.ei = shl nuw nsw i32 %i.g, 1
  %i.ej = add nuw nsw i32 %i.ei, 8
  %i.ek = add nuw nsw i32 %i.ej, %i.j
  %i.el = add nuw nsw i32 %i.ek, %i.m
  %i.em = add nuw nsw i32 %i.el, %i.p
  %i.en = add nuw nsw i32 %i.em, %i.r
  %i.eo = add nuw nsw i32 %i.en, %i.u
  %i.ep = add nuw nsw i32 %i.eo, %i.x
  %i.eq = add nuw nsw i32 %i.ep, %i.aa
  %i.er = add nuw nsw i32 %i.eq, %i.az
  %i.es = add nuw nsw i32 %i.er, %i.cx
  %i.et = add nuw nsw i32 %i.es, %i.bc
  %i.eu = add nuw nsw i32 %i.et, %i.bf
  %i.ev = lshr i32 %i.eu, 4
  %i.ew = trunc nuw i32 %i.ev to i16
  store i16 %i.ew, ptr %i.e, align 2, !tbaa !28
  %i.ex = shl nuw nsw i32 %i.j, 1
  %i.ey = add nuw nsw i32 %i.do, %i.ex
  %i.ez = add nuw nsw i32 %i.ey, %i.m
  %i.fa = add nuw nsw i32 %i.ez, %i.p
  %i.fb = add nuw nsw i32 %i.fa, %i.r
  %i.fc = add nuw nsw i32 %i.fb, %i.u
  %i.fd = add nuw nsw i32 %i.fc, %i.x
  %i.fe = add nuw nsw i32 %i.fd, %i.aa
  %i.ff = add nuw nsw i32 %i.fe, %i.az
  %i.fg = add nuw nsw i32 %i.ff, %i.cw
  %i.fh = add nuw nsw i32 %i.fg, %i.bc
  %i.fi = add nuw nsw i32 %i.fh, %i.bf
  %i.fj = add nuw nsw i32 %i.fi, %i.bi
  %i.fk = lshr i32 %i.fj, 4
  %i.fl = trunc nuw i32 %i.fk to i16
  store i16 %i.fl, ptr %i.h, align 2, !tbaa !28
  %reass.add21 = add nuw nsw i32 %i.aw, %i.m
  %reass.mul22 = shl nuw nsw i32 %reass.add21, 1
  %i.fm = add nuw nsw i32 %i.dp, %i.p
  %i.fn = add nuw nsw i32 %i.fm, %i.r
  %i.fo = add nuw nsw i32 %i.fn, %i.u
  %i.fp = add nuw nsw i32 %i.fo, %i.x
  %i.fq = add nuw nsw i32 %i.fp, %i.aa
  %i.fr = add nuw nsw i32 %i.fq, %i.az
  %i.fs = add nuw nsw i32 %i.fr, %i.bc
  %i.ft = add nuw nsw i32 %i.fs, %reass.mul22
  %i.fu = add nuw nsw i32 %i.ft, %i.bf
  %i.fv = add nuw nsw i32 %i.fu, %i.bi
  %i.fw = add nuw nsw i32 %i.fv, %i.bl
  %i.fx = lshr i32 %i.fw, 4
  %i.fy = trunc nuw i32 %i.fx to i16
  store i16 %i.fy, ptr %i.k, align 2, !tbaa !28
  %i.fz = shl nuw nsw i32 %i.p, 1
  %i.ga = add nuw nsw i32 %i.dq, %i.fz
  %i.gb = add nuw nsw i32 %i.ga, %i.r
  %i.gc = add nuw nsw i32 %i.gb, %i.u
  %i.gd = add nuw nsw i32 %i.gc, %i.x
  %i.ge = add nuw nsw i32 %i.gd, %i.aa
  %i.gf = add nuw nsw i32 %i.ge, %i.aw
  %i.gg = add nuw nsw i32 %i.gf, %i.az
  %i.gh = add nuw nsw i32 %i.gg, %i.bc
  %i.gi = add nuw nsw i32 %i.gh, %i.bf
  %i.gj = add nuw nsw i32 %i.gi, %i.bi
  %i.gk = add nuw nsw i32 %i.gj, %i.bl
  %i.gl = add nuw nsw i32 %i.gk, %i.bo
  %i.gm = lshr i32 %i.gl, 4
  %i.gn = trunc nuw i32 %i.gm to i16
  store i16 %i.gn, ptr %i.n, align 2, !tbaa !28
  %i.go = shl nuw nsw i32 %i.r, 1
  %i.gp = add nuw nsw i32 %i.dr, %i.go
  %i.gq = add nuw nsw i32 %i.gp, %i.u
  %i.gr = add nuw nsw i32 %i.gq, %i.x
  %i.gs = add nuw nsw i32 %i.gr, %i.aa
  %i.gt = add nuw nsw i32 %i.gs, %i.az
  %i.gu = add nuw nsw i32 %i.gt, %i.bc
  %i.gv = add nuw nsw i32 %i.gu, %i.bf
  %i.gw = add nuw nsw i32 %i.gv, %i.bi
  %i.gx = add nuw nsw i32 %i.gw, %i.bl
  %i.gy = add nuw nsw i32 %i.gx, %i.bo
  %i.gz = add nuw nsw i32 %i.gy, %i.br
  %i.ha = lshr i32 %i.gz, 4
  %i.hb = trunc nuw i32 %i.ha to i16
  store i16 %i.hb, ptr %.0.i24, align 2, !tbaa !28
  %i.hc = shl nuw nsw i32 %i.u, 1
  %reass.add632.i = shl nuw nsw i32 %i.br, 1      ; 4 uses
  %i.hd = add nuw nsw i32 %i.ds, %i.hc
  %i.he = add nuw nsw i32 %i.hd, %i.x
  %i.hf = add nuw nsw i32 %i.he, %i.aa
  %i.hg = add nuw nsw i32 %i.hf, %i.bc
  %i.hh = add nuw nsw i32 %i.hg, %i.bf
  %i.hi = add nuw nsw i32 %i.hh, %i.bi
  %i.hj = add nuw nsw i32 %i.hi, %i.bl
  %i.hk = add nuw nsw i32 %i.hj, %i.bo
  %i.hl = add nuw nsw i32 %i.hk, %reass.add632.i
  %i.hm = lshr i32 %i.hl, 4
  %i.hn = trunc nuw i32 %i.hm to i16
  store i16 %i.hn, ptr %i.s, align 2, !tbaa !28
  %i.ho = shl nuw nsw i32 %i.x, 1
  %i.hp = add nuw nsw i32 %i.dt, %i.ho
  %i.hq = add nuw nsw i32 %i.hp, %i.aa
  %i.hr = add nuw nsw i32 %i.hq, %i.bf
  %i.hs = add nuw nsw i32 %i.hr, %i.bi
  %i.ht = add nuw nsw i32 %i.hs, %i.bl
  %i.hu = add nuw nsw i32 %i.ht, %i.bo
  %i.hv = add nuw nsw i32 %i.hu, %i.br
  %i.hw = add nuw nsw i32 %i.hv, %reass.add632.i
  %i.hx = lshr i32 %i.hw, 4
  %i.hy = trunc nuw i32 %i.hx to i16
  store i16 %i.hy, ptr %i.v, align 2, !tbaa !28
  %i.hz = shl nuw nsw i32 %i.aa, 1
  %i.ia = shl nuw nsw i32 %i.br, 2                ; 4 uses
  %i.ib = add nuw nsw i32 %i.eb, %i.hz
  %i.ic = add nuw nsw i32 %i.ib, %i.bi
  %i.id = add nuw nsw i32 %i.ic, %i.bl
  %i.ie = add nuw nsw i32 %i.id, %i.bo
  %i.if = add nuw nsw i32 %i.ie, %i.ia
  %i.ig = lshr i32 %i.if, 4
  %i.ih = trunc nuw i32 %i.ig to i16
  store i16 %i.ih, ptr %i.y, align 2, !tbaa !28
  %i.ii = shl nuw nsw i32 %i.bi, 1
  %i.ij = add nuw nsw i32 %i.j, 8
  %i.ik = add nuw nsw i32 %i.ij, %i.m
  %i.il = add nuw nsw i32 %i.ik, %i.p
  %i.im = add nuw nsw i32 %i.il, %i.r
  %i.in = add nuw nsw i32 %i.im, %i.u
  %i.io = add nuw nsw i32 %i.in, %i.x
  %i.ip = add nuw nsw i32 %i.io, %i.aa
  %i.iq = add nuw nsw i32 %i.ip, %i.ii
  %i.ir = add nuw nsw i32 %i.iq, %i.bl
  %i.is = add nuw nsw i32 %i.ir, %i.bo
  %i.it = add nuw nsw i32 %i.is, %i.br
  %i.iu = add nuw nsw i32 %i.it, %i.ia
  %i.iv = lshr i32 %i.iu, 4
  %i.iw = trunc nuw i32 %i.iv to i16
  store i16 %i.iw, ptr %i.bg, align 2, !tbaa !28
  %i.ix = shl nuw nsw i32 %i.bl, 1
  %i.iy = add nuw nsw i32 %i.m, 8
  %i.iz = add nuw nsw i32 %i.iy, %i.p
  %i.ja = add nuw nsw i32 %i.iz, %i.r
  %i.jb = add nuw nsw i32 %i.ja, %i.u
  %i.jc = add nuw nsw i32 %i.jb, %i.x
  %i.jd = add nuw nsw i32 %i.jc, %i.aa
  %i.je = add nuw nsw i32 %i.jd, %i.bi
  %i.jf = add nuw nsw i32 %i.je, %i.ix
  %i.jg = add nuw nsw i32 %i.jf, %i.bo
  %i.jh = add nuw nsw i32 %i.jg, %i.ia
  %i.ji = add nuw nsw i32 %i.jh, %reass.add632.i
  %i.jj = lshr i32 %i.ji, 4
  %i.jk = trunc nuw i32 %i.jj to i16
  store i16 %i.jk, ptr %i.bj, align 2, !tbaa !28
  %i.jl = shl nuw nsw i32 %i.bo, 1
  %i.jm = add nuw nsw i32 %i.p, 8
  %i.jn = add nuw nsw i32 %i.jm, %i.r
  %i.jo = add nuw nsw i32 %i.jn, %i.u
  %i.jp = add nuw nsw i32 %i.jo, %i.x
  %i.jq = add nuw nsw i32 %i.jp, %i.aa
  %i.jr = add nuw nsw i32 %i.jq, %i.bi
  %i.js = add nuw nsw i32 %i.jr, %i.bl
  %i.jt = add nuw nsw i32 %i.js, %i.jl
  %i.ju = add nuw nsw i32 %i.jt, %i.br
  %i.jv = add nuw nsw i32 %i.ju, %i.ia
  %i.jw = add nuw nsw i32 %i.jv, %reass.add632.i
  %i.jx = lshr i32 %i.jw, 4
  %i.jy = trunc nuw i32 %i.jx to i16
  store i16 %i.jy, ptr %i.bm, align 2, !tbaa !28
  br label %.critedge.i

bb.v:                                             ; preds = %bb.t
  br i1 %i.cv, label %bb.w, label %.thread16

bb.w:                                             ; preds = %bb.v
  %i.jz = mul nuw nsw i32 %i.g, 3
  %i.ka = shl nuw nsw i32 %i.j, 1
  %i.kb = add nuw nsw i32 %i.jz, 4
  %i.kc = add nuw nsw i32 %i.kb, %i.ka
  %i.kd = add nuw nsw i32 %i.kc, %i.m
  %i.ke = add nuw nsw i32 %i.kd, %i.p
  %i.kf = add nuw nsw i32 %i.ke, %i.r
  %i.kg = lshr i32 %i.kf, 3
  %i.kh = trunc nuw i32 %i.kg to i16
  store i16 %i.kh, ptr %i.h, align 2, !tbaa !28
  %i.ki = add nuw nsw i32 %i.m, %i.g
  %i.kj = shl nuw nsw i32 %i.ki, 1
  %i.kk = add nuw nsw i32 %i.p, 4                 ; 3 uses
  %i.kl = add nuw nsw i32 %i.kk, %i.j             ; 2 uses
  %i.km = add nuw nsw i32 %i.kl, %i.kj
  %i.kn = add nuw nsw i32 %i.km, %i.r
  %i.ko = add nuw nsw i32 %i.kn, %i.u
  %i.kp = lshr i32 %i.ko, 3
  %i.kq = trunc nuw i32 %i.kp to i16
  store i16 %i.kq, ptr %i.k, align 2, !tbaa !28
  %i.kr = shl nuw nsw i32 %i.p, 1
  %i.ks = add nuw nsw i32 %i.m, 4
  %i.kt = add nuw nsw i32 %i.ks, %i.g
  %i.ku = add nuw nsw i32 %i.kt, %i.j
  %i.kv = add nuw nsw i32 %i.ku, %i.kr
  %i.kw = add nuw nsw i32 %i.kv, %i.r
  %i.kx = add nuw nsw i32 %i.kw, %i.u
  %i.ky = add nuw nsw i32 %i.kx, %i.x
  %i.kz = lshr i32 %i.ky, 3
  %i.la = trunc nuw i32 %i.kz to i16
  store i16 %i.la, ptr %i.n, align 2, !tbaa !28
  %i.lb = shl nuw nsw i32 %i.r, 1
  %i.lc = add nuw nsw i32 %i.kl, %i.m
  %i.ld = add nuw nsw i32 %i.lc, %i.lb
  %i.le = add nuw nsw i32 %i.ld, %i.u
  %i.lf = add nuw nsw i32 %i.le, %i.x
  %i.lg = add nuw nsw i32 %i.lf, %i.aa
  %i.lh = lshr i32 %i.lg, 3
  %i.li = trunc nuw i32 %i.lh to i16
  store i16 %i.li, ptr %.0.i24, align 2, !tbaa !28
  %reass.add = add nuw nsw i32 %i.aa, %i.u
  %reass.mul = shl nuw nsw i32 %reass.add, 1
  %i.lj = add nuw nsw i32 %i.kk, %i.m
  %i.lk = add nuw nsw i32 %i.lj, %i.r
  %i.ll = add nuw nsw i32 %i.lk, %i.x
  %i.lm = add nuw nsw i32 %i.ll, %reass.mul
  %i.ln = lshr i32 %i.lm, 3
  %i.lo = trunc nuw i32 %i.ln to i16
  store i16 %i.lo, ptr %i.s, align 2, !tbaa !28
  %i.lp = add nuw nsw i32 %i.aa, %i.x
  %i.lq = shl nuw nsw i32 %i.lp, 1
  %i.lr = add nuw nsw i32 %i.kk, %i.r
  %i.ls = add nuw nsw i32 %i.lr, %i.u
  %i.lt = add nuw nsw i32 %i.ls, %i.aa
  %i.lu = add nuw nsw i32 %i.lt, %i.lq
  %i.lv = lshr i32 %i.lu, 3
  %i.lw = trunc nuw i32 %i.lv to i16
  store i16 %i.lw, ptr %i.v, align 2, !tbaa !28
  br label %.critedge.i

.thread16:                                        ; preds = %bb.s, %bb.r, %bb.q, %bb.v
  %i.lx = icmp sgt i32 %i.ag, %i.d
  %5 = icmp samesign ugt i32 %i.ai, %i.d
  %or.cond19 = select i1 %i.lx, i1 true, i1 %5
  br i1 %or.cond19, label %.critedge649.i, label %bb.x

.critedge649.i:                                   ; preds = %.thread16
  %i.ly = tail call i32 @llvm.smax.i32(i32 %i.aq, i32 -512)
  %.0.i9 = tail call i32 @llvm.smin.i32(i32 %i.ly, i32 511)
  %i.lz = sub nsw i32 %i.r, %i.p
  %i.ma = mul nsw i32 %i.lz, 3
  %i.mb = add nsw i32 %.0.i9, %i.ma
  %i.mc = tail call i32 @llvm.smax.i32(i32 %i.mb, i32 -512) ; 2 uses
  %i.md = tail call i32 @llvm.smin.i32(i32 %i.mc, i32 507)
  %i.me = add nsw i32 %i.md, 4
  %i.mf = ashr i32 %i.me, 3
  %i.mg = tail call i32 @llvm.smin.i32(i32 %i.mc, i32 508)
  %i.mh = add nsw i32 %i.mg, 3
  %i.mi = ashr i32 %i.mh, 3
  %i.mj = add nsw i32 %i.mi, %i.p
  %i.mk = tail call i32 @llvm.smax.i32(i32 %i.mj, i32 0)
  %i.ml = tail call i32 @llvm.umin.i32(i32 %i.mk, i32 1023)
  %i.mm = trunc nuw nsw i32 %i.ml to i16
  store i16 %i.mm, ptr %i.n, align 2, !tbaa !28
  %i.mn = sub nsw i32 %i.r, %i.mf
  %i.mo = tail call i32 @llvm.smax.i32(i32 %i.mn, i32 0)
  %i.mp = tail call i32 @llvm.umin.i32(i32 %i.mo, i32 1023)
  %i.mq = trunc nuw nsw i32 %i.mp to i16
  store i16 %i.mq, ptr %.0.i24, align 2, !tbaa !28
  br label %.critedge.i

bb.x:                                             ; preds = %.thread16
  %i.mr = sub nsw i32 %i.r, %i.p                  ; 2 uses
  %i.ms = mul nsw i32 %i.mr, 3                    ; 2 uses
  %i.mt = add nsw i32 %i.ms, 512
  %.not.i10 = icmp ult i32 %i.mt, 1024
  %i.mu = icmp sgt i32 %i.mr, -1
  %i.mv = select i1 %i.mu, i32 511, i32 -512
  %.0.i11 = select i1 %.not.i10, i32 %i.ms, i32 %i.mv ; 2 uses
  %i.mw = tail call i32 @llvm.smin.i32(i32 %.0.i11, i32 507)
  %i.mx = add nsw i32 %i.mw, 4
  %i.my = ashr i32 %i.mx, 3                       ; 2 uses
  %i.mz = tail call i32 @llvm.smin.i32(i32 %.0.i11, i32 508)
  %i.na = add nsw i32 %i.mz, 3
  %i.nb = ashr i32 %i.na, 3
  %i.nc = add nsw i32 %i.nb, %i.p
  %i.nd = tail call i32 @llvm.smax.i32(i32 %i.nc, i32 0)
  %i.ne = tail call i32 @llvm.umin.i32(i32 %i.nd, i32 1023)
  %i.nf = trunc nuw nsw i32 %i.ne to i16
  store i16 %i.nf, ptr %i.n, align 2, !tbaa !28
  %i.ng = sub nsw i32 %i.r, %i.my
  %i.nh = tail call i32 @llvm.smax.i32(i32 %i.ng, i32 0)
  %i.ni = tail call i32 @llvm.umin.i32(i32 %i.nh, i32 1023)
  %i.nj = trunc nuw nsw i32 %i.ni to i16
  store i16 %i.nj, ptr %.0.i24, align 2, !tbaa !28
  %i.nk = add nsw i32 %i.my, 1
  %i.nl = ashr i32 %i.nk, 1                       ; 2 uses
  %i.nm = add nsw i32 %i.nl, %i.m
  %i.nn = tail call i32 @llvm.smax.i32(i32 %i.nm, i32 0)
  %i.no = tail call i32 @llvm.umin.i32(i32 %i.nn, i32 1023)
  %i.np = trunc nuw nsw i32 %i.no to i16
  store i16 %i.np, ptr %i.k, align 2, !tbaa !28
  %i.nq = sub nsw i32 %i.u, %i.nl
  %i.nr = tail call i32 @llvm.smax.i32(i32 %i.nq, i32 0)
  %i.ns = tail call i32 @llvm.umin.i32(i32 %i.nr, i32 1023)
  %i.nt = trunc nuw nsw i32 %i.ns to i16
  store i16 %i.nt, ptr %i.s, align 2, !tbaa !28
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.x, %.critedge649.i, %bb.w, %bb.u, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.nu = add nuw nsw i32 %.0551.i23, 1           ; 2 uses
  %i.nv = getelementptr inbounds nuw [2 x i8], ptr %.0.i24, i64 %i.a
  %exitcond.not = icmp eq i32 %i.nu, 8
  br i1 %exitcond.not, label %loop_filter.exit, label %bb.b, !llvm.loop !14

loop_filter.exit:                                 ; preds = %.critedge.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @loop_filter_v_16_8_c(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #3 {
bb.a:
  %i.a = lshr i64 %1, 1                           ; 15 uses
  %i.b = shl i32 %2, 2
  %i.c = shl i32 %3, 2                            ; 6 uses
  %i.d = shl i32 %4, 2                            ; 2 uses
  %.idx.i = mul nsw i64 %i.a, -8
  %.idx611.i = mul nsw i64 %i.a, -6
  %.idx612.i = mul nsw i64 %i.a, -4
  %i.e = sub nsw i64 0, %i.a
  %.idx613.i = shl nuw nsw i64 %i.a, 2
  %.idx614.i = mul nuw nsw i64 %i.a, 6
  %.idx620.i = mul nsw i64 %i.a, -16
  %.idx621.i = mul nsw i64 %i.a, -14
  %.idx622.i = mul nsw i64 %i.a, -12
  %.idx623.i = mul nsw i64 %i.a, -10
  %.idx624.i = shl nuw nsw i64 %i.a, 3
  %.idx625.i = mul nuw nsw i64 %i.a, 10
  %.idx626.i = mul nuw nsw i64 %i.a, 12
  %.idx627.i = mul nuw nsw i64 %i.a, 14
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.critedge.i
  %.0.i24 = phi ptr [ %0, %bb.a ], [ %i.nw, %.critedge.i ] ; 21 uses
  %.0551.i23 = phi i32 [ 0, %bb.a ], [ %i.nv, %.critedge.i ]
  %i.f = getelementptr inbounds i8, ptr %.0.i24, i64 %.idx.i ; 2 uses
  %i.g = load i16, ptr %i.f, align 2, !tbaa !28
  %i.h = zext i16 %i.g to i32                     ; 8 uses
  %i.i = getelementptr inbounds i8, ptr %.0.i24, i64 %.idx611.i ; 3 uses
  %i.j = load i16, ptr %i.i, align 2, !tbaa !28
  %i.k = zext i16 %i.j to i32                     ; 11 uses
  %i.l = getelementptr inbounds i8, ptr %.0.i24, i64 %.idx612.i ; 4 uses
  %i.m = load i16, ptr %i.l, align 2, !tbaa !28
  %i.n = zext i16 %i.m to i32                     ; 16 uses
  %i.o = getelementptr inbounds [2 x i8], ptr %.0.i24, i64 %i.e ; 5 uses
  %i.p = load i16, ptr %i.o, align 2, !tbaa !28
  %i.q = zext i16 %i.p to i32                     ; 24 uses
  %i.r = load i16, ptr %.0.i24, align 2, !tbaa !28
  %i.s = zext i16 %i.r to i32                     ; 28 uses
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %.0.i24, i64 %i.a ; 4 uses
  %i.u = load i16, ptr %i.t, align 2, !tbaa !28
  %i.v = zext i16 %i.u to i32                     ; 19 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i24, i64 %.idx613.i ; 3 uses
  %i.x = load i16, ptr %i.w, align 2, !tbaa !28
  %i.y = zext i16 %i.x to i32                     ; 18 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i24, i64 %.idx614.i ; 2 uses
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !28
  %i.ab = zext i16 %i.aa to i32                   ; 17 uses
  %i.ac = sub nsw i32 %i.h, %i.k
  %i.ad = tail call i32 @llvm.abs.i32(i32 %i.ac, i1 true)
  %.not.i = icmp sgt i32 %i.ad, %i.c
  br i1 %.not.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = sub nsw i32 %i.k, %i.n
  %i.af = tail call i32 @llvm.abs.i32(i32 %i.ae, i1 true)
  %.not615.i = icmp samesign ugt i32 %i.af, %i.c
  br i1 %.not615.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = sub nsw i32 %i.n, %i.q
  %i.ah = tail call i32 @llvm.abs.i32(i32 %i.ag, i1 true) ; 3 uses
  %.not616.i = icmp samesign ugt i32 %i.ah, %i.c
  br i1 %.not616.i, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = sub nsw i32 %i.v, %i.s
  %i.aj = tail call i32 @llvm.abs.i32(i32 %i.ai, i1 true) ; 3 uses
  %.not617.i = icmp samesign ugt i32 %i.aj, %i.c
  br i1 %.not617.i, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = sub nsw i32 %i.y, %i.v
  %i.al = tail call i32 @llvm.abs.i32(i32 %i.ak, i1 true)
  %.not618.i = icmp samesign ugt i32 %i.al, %i.c
  br i1 %.not618.i, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = sub nsw i32 %i.ab, %i.y
  %i.an = tail call i32 @llvm.abs.i32(i32 %i.am, i1 true)
  %.not619.i = icmp samesign ugt i32 %i.an, %i.c
  br i1 %.not619.i, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = sub nsw i32 %i.q, %i.s
  %i.ap = tail call i32 @llvm.abs.i32(i32 %i.ao, i1 true)
  %i.aq = shl nuw nsw i32 %i.ap, 1
  %i.ar = sub nsw i32 %i.n, %i.v                  ; 2 uses
  %i.as = tail call i32 @llvm.abs.i32(i32 %i.ar, i1 true)
  %i.at = lshr i32 %i.as, 1
  %i.au = add nuw nsw i32 %i.at, %i.aq
  %.not = icmp sgt i32 %i.au, %i.b
  br i1 %.not, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds i8, ptr %.0.i24, i64 %.idx620.i
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !28
  %i.ax = zext i16 %i.aw to i32                   ; 8 uses
  %i.ay = getelementptr inbounds i8, ptr %.0.i24, i64 %.idx621.i ; 2 uses
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !28
  %i.ba = zext i16 %i.az to i32                   ; 9 uses
  %i.bb = getelementptr inbounds i8, ptr %.0.i24, i64 %.idx622.i ; 2 uses
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !28
  %i.bd = zext i16 %i.bc to i32                   ; 10 uses
  %i.be = getelementptr inbounds i8, ptr %.0.i24, i64 %.idx623.i ; 2 uses
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !28
  %i.bg = zext i16 %i.bf to i32                   ; 11 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i24, i64 %.idx624.i ; 2 uses
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !28
  %i.bj = zext i16 %i.bi to i32                   ; 11 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i24, i64 %.idx625.i ; 2 uses
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !28
  %i.bm = zext i16 %i.bl to i32                   ; 10 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i24, i64 %.idx626.i ; 2 uses
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !28
  %i.bp = zext i16 %i.bo to i32                   ; 9 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i24, i64 %.idx627.i
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !28
  %i.bs = zext i16 %i.br to i32                   ; 7 uses
  %reass.sub = sub nsw i32 %i.ax, %i.q
  %i.bt = add nsw i32 %reass.sub, 4
  %i.bu = icmp ult i32 %i.bt, 9
  br i1 %i.bu, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %reass.sub25 = sub nsw i32 %i.ba, %i.q
  %i.bv = add nsw i32 %reass.sub25, 4
  %i.bw = icmp ult i32 %i.bv, 9
  br i1 %i.bw, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %reass.sub26 = sub nsw i32 %i.bd, %i.q
  %i.bx = add nsw i32 %reass.sub26, 4
  %i.by = icmp ult i32 %i.bx, 9
  br i1 %i.by, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %reass.sub27 = sub nsw i32 %i.bg, %i.q
  %i.bz = add nsw i32 %reass.sub27, 4
  %i.ca = icmp ult i32 %i.bz, 9
  br i1 %i.ca, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %reass.sub28 = sub nsw i32 %i.bj, %i.s
  %i.cb = add nsw i32 %reass.sub28, 4
  %i.cc = icmp ult i32 %i.cb, 9
  br i1 %i.cc, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %reass.sub29 = sub nsw i32 %i.bm, %i.s
  %i.cd = add nsw i32 %reass.sub29, 4
  %i.ce = icmp ult i32 %i.cd, 9
  br i1 %i.ce, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %reass.sub30 = sub nsw i32 %i.bp, %i.s
  %i.cf = add nsw i32 %reass.sub30, 4
  %i.cg = icmp ult i32 %i.cf, 9
  br i1 %i.cg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %reass.sub31 = sub nsw i32 %i.bs, %i.s
  %i.ch = add nsw i32 %reass.sub31, 4
  %i.ci = icmp ult i32 %i.ch, 9
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %or.cond.i = phi i1 [ %i.ci, %bb.p ], [ false, %bb.o ], [ false, %bb.n ], [ false, %bb.m ], [ false, %bb.l ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.i ]
  %i.cj = add nuw nsw i32 %i.h, 4
  %i.ck = sub nsw i32 %i.cj, %i.q
  %i.cl = icmp ult i32 %i.ck, 9
  br i1 %i.cl, label %bb.r, label %.thread16

bb.r:                                             ; preds = %bb.q
  %i.cm = add nuw nsw i32 %i.k, 4
  %i.cn = sub nsw i32 %i.cm, %i.q
  %i.co = icmp ult i32 %i.cn, 9
  %i.cp = icmp samesign ult i32 %i.ah, 5
  %or.cond = select i1 %i.co, i1 %i.cp, i1 false
  %i.cq = icmp samesign ult i32 %i.aj, 5
  %or.cond18 = select i1 %or.cond, i1 %i.cq, i1 false
  br i1 %or.cond18, label %bb.s, label %.thread16

bb.s:                                             ; preds = %bb.r
  %i.cr = add nuw nsw i32 %i.y, 4
  %i.cs = sub nsw i32 %i.cr, %i.s
  %i.ct = icmp ult i32 %i.cs, 9
  br i1 %i.ct, label %bb.t, label %.thread16

bb.t:                                             ; preds = %bb.s
  %i.cu = add nuw nsw i32 %i.ab, 4
  %i.cv = sub nsw i32 %i.cu, %i.s
  %i.cw = icmp ult i32 %i.cv, 9                   ; 2 uses
  %or.cond3.i = select i1 %or.cond.i, i1 %i.cw, i1 false
  br i1 %or.cond3.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cx = mul nuw nsw i32 %i.ax, 3
  %i.cy = shl nuw nsw i32 %i.ax, 2
  %i.cz = mul nuw nsw i32 %i.ax, 5
  %i.da = mul nuw nsw i32 %i.ax, 6
  %i.db = mul nuw nsw i32 %i.ax, 7
  %i.dc = shl nuw nsw i32 %i.ba, 1
  %i.dd = add nuw nsw i32 %i.s, %i.q
  %i.de = add nuw nsw i32 %i.dd, 8
  %i.df = add nuw nsw i32 %i.de, %i.h
  %i.dg = add nuw nsw i32 %i.df, %i.k
  %i.dh = add nuw nsw i32 %i.dg, %i.n
  %i.di = add nuw nsw i32 %i.dh, %i.db
  %i.dj = add nuw nsw i32 %i.di, %i.dc
  %i.dk = add nuw nsw i32 %i.dj, %i.bd
  %i.dl = add nuw nsw i32 %i.dk, %i.bg
  %i.dm = lshr i32 %i.dl, 4
  %i.dn = trunc nuw i32 %i.dm to i16
  store i16 %i.dn, ptr %i.ay, align 2, !tbaa !28
  %i.do = shl nuw nsw i32 %i.bd, 1
  %i.dp = add nuw nsw i32 %i.h, 8                 ; 2 uses
  %i.dq = add nuw nsw i32 %i.dp, %i.k             ; 2 uses
  %i.dr = add nuw nsw i32 %i.dq, %i.n             ; 2 uses
  %i.ds = add nuw nsw i32 %i.dr, %i.q             ; 2 uses
  %i.dt = add nuw nsw i32 %i.ds, %i.s             ; 2 uses
  %i.du = add nuw nsw i32 %i.dt, %i.v             ; 3 uses
  %i.dv = add nuw nsw i32 %i.du, %i.ba
  %i.dw = add nuw nsw i32 %i.dv, %i.da
  %i.dx = add nuw nsw i32 %i.dw, %i.do
  %i.dy = add nuw nsw i32 %i.dx, %i.bg
  %i.dz = lshr i32 %i.dy, 4
  %i.ea = trunc nuw i32 %i.dz to i16
  store i16 %i.ea, ptr %i.bb, align 2, !tbaa !28
  %i.eb = shl nuw nsw i32 %i.bg, 1
  %i.ec = add nuw nsw i32 %i.du, %i.y             ; 2 uses
  %i.ed = add nuw nsw i32 %i.ec, %i.ba
  %i.ee = add nuw nsw i32 %i.ed, %i.cz
  %i.ef = add nuw nsw i32 %i.ee, %i.bd
  %i.eg = add nuw nsw i32 %i.ef, %i.eb
  %i.eh = lshr i32 %i.eg, 4
  %i.ei = trunc nuw i32 %i.eh to i16
  store i16 %i.ei, ptr %i.be, align 2, !tbaa !28
  %i.ej = shl nuw nsw i32 %i.h, 1
  %i.ek = add nuw nsw i32 %i.ej, 8
  %i.el = add nuw nsw i32 %i.ek, %i.k
  %i.em = add nuw nsw i32 %i.el, %i.n
  %i.en = add nuw nsw i32 %i.em, %i.q
  %i.eo = add nuw nsw i32 %i.en, %i.s
  %i.ep = add nuw nsw i32 %i.eo, %i.v
  %i.eq = add nuw nsw i32 %i.ep, %i.y
  %i.er = add nuw nsw i32 %i.eq, %i.ab
  %i.es = add nuw nsw i32 %i.er, %i.ba
  %i.et = add nuw nsw i32 %i.es, %i.cy
  %i.eu = add nuw nsw i32 %i.et, %i.bd
  %i.ev = add nuw nsw i32 %i.eu, %i.bg
  %i.ew = lshr i32 %i.ev, 4
  %i.ex = trunc nuw i32 %i.ew to i16
  store i16 %i.ex, ptr %i.f, align 2, !tbaa !28
  %i.ey = shl nuw nsw i32 %i.k, 1
  %i.ez = add nuw nsw i32 %i.dp, %i.ey
  %i.fa = add nuw nsw i32 %i.ez, %i.n
  %i.fb = add nuw nsw i32 %i.fa, %i.q
  %i.fc = add nuw nsw i32 %i.fb, %i.s
  %i.fd = add nuw nsw i32 %i.fc, %i.v
  %i.fe = add nuw nsw i32 %i.fd, %i.y
  %i.ff = add nuw nsw i32 %i.fe, %i.ab
  %i.fg = add nuw nsw i32 %i.ff, %i.ba
  %i.fh = add nuw nsw i32 %i.fg, %i.cx
  %i.fi = add nuw nsw i32 %i.fh, %i.bd
  %i.fj = add nuw nsw i32 %i.fi, %i.bg
  %i.fk = add nuw nsw i32 %i.fj, %i.bj
  %i.fl = lshr i32 %i.fk, 4
  %i.fm = trunc nuw i32 %i.fl to i16
  store i16 %i.fm, ptr %i.i, align 2, !tbaa !28
  %reass.add21 = add nuw nsw i32 %i.ax, %i.n
  %reass.mul22 = shl nuw nsw i32 %reass.add21, 1
  %i.fn = add nuw nsw i32 %i.dq, %i.q
  %i.fo = add nuw nsw i32 %i.fn, %i.s
  %i.fp = add nuw nsw i32 %i.fo, %i.v
  %i.fq = add nuw nsw i32 %i.fp, %i.y
  %i.fr = add nuw nsw i32 %i.fq, %i.ab
  %i.fs = add nuw nsw i32 %i.fr, %i.ba
  %i.ft = add nuw nsw i32 %i.fs, %i.bd
  %i.fu = add nuw nsw i32 %i.ft, %reass.mul22
  %i.fv = add nuw nsw i32 %i.fu, %i.bg
  %i.fw = add nuw nsw i32 %i.fv, %i.bj
  %i.fx = add nuw nsw i32 %i.fw, %i.bm
  %i.fy = lshr i32 %i.fx, 4
  %i.fz = trunc nuw i32 %i.fy to i16
  store i16 %i.fz, ptr %i.l, align 2, !tbaa !28
  %i.ga = shl nuw nsw i32 %i.q, 1
  %i.gb = add nuw nsw i32 %i.dr, %i.ga
  %i.gc = add nuw nsw i32 %i.gb, %i.s
  %i.gd = add nuw nsw i32 %i.gc, %i.v
  %i.ge = add nuw nsw i32 %i.gd, %i.y
  %i.gf = add nuw nsw i32 %i.ge, %i.ab
  %i.gg = add nuw nsw i32 %i.gf, %i.ax
  %i.gh = add nuw nsw i32 %i.gg, %i.ba
  %i.gi = add nuw nsw i32 %i.gh, %i.bd
  %i.gj = add nuw nsw i32 %i.gi, %i.bg
  %i.gk = add nuw nsw i32 %i.gj, %i.bj
  %i.gl = add nuw nsw i32 %i.gk, %i.bm
  %i.gm = add nuw nsw i32 %i.gl, %i.bp
  %i.gn = lshr i32 %i.gm, 4
  %i.go = trunc nuw i32 %i.gn to i16
  store i16 %i.go, ptr %i.o, align 2, !tbaa !28
  %i.gp = shl nuw nsw i32 %i.s, 1
  %i.gq = add nuw nsw i32 %i.ds, %i.gp
  %i.gr = add nuw nsw i32 %i.gq, %i.v
  %i.gs = add nuw nsw i32 %i.gr, %i.y
  %i.gt = add nuw nsw i32 %i.gs, %i.ab
  %i.gu = add nuw nsw i32 %i.gt, %i.ba
  %i.gv = add nuw nsw i32 %i.gu, %i.bd
  %i.gw = add nuw nsw i32 %i.gv, %i.bg
  %i.gx = add nuw nsw i32 %i.gw, %i.bj
  %i.gy = add nuw nsw i32 %i.gx, %i.bm
  %i.gz = add nuw nsw i32 %i.gy, %i.bp
  %i.ha = add nuw nsw i32 %i.gz, %i.bs
  %i.hb = lshr i32 %i.ha, 4
  %i.hc = trunc nuw i32 %i.hb to i16
  store i16 %i.hc, ptr %.0.i24, align 2, !tbaa !28
  %i.hd = shl nuw nsw i32 %i.v, 1
  %reass.add632.i = shl nuw nsw i32 %i.bs, 1      ; 4 uses
  %i.he = add nuw nsw i32 %i.dt, %i.hd
  %i.hf = add nuw nsw i32 %i.he, %i.y
  %i.hg = add nuw nsw i32 %i.hf, %i.ab
  %i.hh = add nuw nsw i32 %i.hg, %i.bd
  %i.hi = add nuw nsw i32 %i.hh, %i.bg
  %i.hj = add nuw nsw i32 %i.hi, %i.bj
  %i.hk = add nuw nsw i32 %i.hj, %i.bm
  %i.hl = add nuw nsw i32 %i.hk, %i.bp
  %i.hm = add nuw nsw i32 %i.hl, %reass.add632.i
  %i.hn = lshr i32 %i.hm, 4
  %i.ho = trunc nuw i32 %i.hn to i16
  store i16 %i.ho, ptr %i.t, align 2, !tbaa !28
  %i.hp = shl nuw nsw i32 %i.y, 1
  %i.hq = add nuw nsw i32 %i.du, %i.hp
  %i.hr = add nuw nsw i32 %i.hq, %i.ab
  %i.hs = add nuw nsw i32 %i.hr, %i.bg
  %i.ht = add nuw nsw i32 %i.hs, %i.bj
  %i.hu = add nuw nsw i32 %i.ht, %i.bm
  %i.hv = add nuw nsw i32 %i.hu, %i.bp
  %i.hw = add nuw nsw i32 %i.hv, %i.bs
  %i.hx = add nuw nsw i32 %i.hw, %reass.add632.i
  %i.hy = lshr i32 %i.hx, 4
  %i.hz = trunc nuw i32 %i.hy to i16
  store i16 %i.hz, ptr %i.w, align 2, !tbaa !28
  %i.ia = shl nuw nsw i32 %i.ab, 1
  %i.ib = shl nuw nsw i32 %i.bs, 2                ; 4 uses
  %i.ic = add nuw nsw i32 %i.ec, %i.ia
  %i.id = add nuw nsw i32 %i.ic, %i.bj
  %i.ie = add nuw nsw i32 %i.id, %i.bm
  %i.if = add nuw nsw i32 %i.ie, %i.bp
  %i.ig = add nuw nsw i32 %i.if, %i.ib
  %i.ih = lshr i32 %i.ig, 4
  %i.ii = trunc nuw i32 %i.ih to i16
  store i16 %i.ii, ptr %i.z, align 2, !tbaa !28
  %i.ij = shl nuw nsw i32 %i.bj, 1
  %i.ik = add nuw nsw i32 %i.k, 8
  %i.il = add nuw nsw i32 %i.ik, %i.n
  %i.im = add nuw nsw i32 %i.il, %i.q
  %i.in = add nuw nsw i32 %i.im, %i.s
  %i.io = add nuw nsw i32 %i.in, %i.v
  %i.ip = add nuw nsw i32 %i.io, %i.y
  %i.iq = add nuw nsw i32 %i.ip, %i.ab
  %i.ir = add nuw nsw i32 %i.iq, %i.ij
  %i.is = add nuw nsw i32 %i.ir, %i.bm
  %i.it = add nuw nsw i32 %i.is, %i.bp
  %i.iu = add nuw nsw i32 %i.it, %i.bs
  %i.iv = add nuw nsw i32 %i.iu, %i.ib
  %i.iw = lshr i32 %i.iv, 4
  %i.ix = trunc nuw i32 %i.iw to i16
  store i16 %i.ix, ptr %i.bh, align 2, !tbaa !28
  %i.iy = shl nuw nsw i32 %i.bm, 1
  %i.iz = add nuw nsw i32 %i.n, 8
  %i.ja = add nuw nsw i32 %i.iz, %i.q
  %i.jb = add nuw nsw i32 %i.ja, %i.s
  %i.jc = add nuw nsw i32 %i.jb, %i.v
  %i.jd = add nuw nsw i32 %i.jc, %i.y
  %i.je = add nuw nsw i32 %i.jd, %i.ab
  %i.jf = add nuw nsw i32 %i.je, %i.bj
  %i.jg = add nuw nsw i32 %i.jf, %i.iy
  %i.jh = add nuw nsw i32 %i.jg, %i.bp
  %i.ji = add nuw nsw i32 %i.jh, %i.ib
  %i.jj = add nuw nsw i32 %i.ji, %reass.add632.i
  %i.jk = lshr i32 %i.jj, 4
  %i.jl = trunc nuw i32 %i.jk to i16
  store i16 %i.jl, ptr %i.bk, align 2, !tbaa !28
  %i.jm = shl nuw nsw i32 %i.bp, 1
  %i.jn = add nuw nsw i32 %i.q, 8
  %i.jo = add nuw nsw i32 %i.jn, %i.s
  %i.jp = add nuw nsw i32 %i.jo, %i.v
  %i.jq = add nuw nsw i32 %i.jp, %i.y
  %i.jr = add nuw nsw i32 %i.jq, %i.ab
  %i.js = add nuw nsw i32 %i.jr, %i.bj
  %i.jt = add nuw nsw i32 %i.js, %i.bm
  %i.ju = add nuw nsw i32 %i.jt, %i.jm
  %i.jv = add nuw nsw i32 %i.ju, %i.bs
  %i.jw = add nuw nsw i32 %i.jv, %i.ib
  %i.jx = add nuw nsw i32 %i.jw, %reass.add632.i
  %i.jy = lshr i32 %i.jx, 4
  %i.jz = trunc nuw i32 %i.jy to i16
  store i16 %i.jz, ptr %i.bn, align 2, !tbaa !28
  br label %.critedge.i

bb.v:                                             ; preds = %bb.t
  br i1 %i.cw, label %bb.w, label %.thread16

bb.w:                                             ; preds = %bb.v
  %i.ka = mul nuw nsw i32 %i.h, 3
  %i.kb = shl nuw nsw i32 %i.k, 1
  %i.kc = add nuw nsw i32 %i.ka, 4
  %i.kd = add nuw nsw i32 %i.kc, %i.kb
  %i.ke = add nuw nsw i32 %i.kd, %i.n
  %i.kf = add nuw nsw i32 %i.ke, %i.q
  %i.kg = add nuw nsw i32 %i.kf, %i.s
  %i.kh = lshr i32 %i.kg, 3
  %i.ki = trunc nuw i32 %i.kh to i16
  store i16 %i.ki, ptr %i.i, align 2, !tbaa !28
  %i.kj = add nuw nsw i32 %i.n, %i.h
  %i.kk = shl nuw nsw i32 %i.kj, 1
  %i.kl = add nuw nsw i32 %i.q, 4                 ; 3 uses
  %i.km = add nuw nsw i32 %i.kl, %i.k             ; 2 uses
  %i.kn = add nuw nsw i32 %i.km, %i.kk
  %i.ko = add nuw nsw i32 %i.kn, %i.s
  %i.kp = add nuw nsw i32 %i.ko, %i.v
  %i.kq = lshr i32 %i.kp, 3
  %i.kr = trunc nuw i32 %i.kq to i16
  store i16 %i.kr, ptr %i.l, align 2, !tbaa !28
  %i.ks = shl nuw nsw i32 %i.q, 1
  %i.kt = add nuw nsw i32 %i.n, 4
  %i.ku = add nuw nsw i32 %i.kt, %i.h
  %i.kv = add nuw nsw i32 %i.ku, %i.k
  %i.kw = add nuw nsw i32 %i.kv, %i.ks
  %i.kx = add nuw nsw i32 %i.kw, %i.s
  %i.ky = add nuw nsw i32 %i.kx, %i.v
  %i.kz = add nuw nsw i32 %i.ky, %i.y
  %i.la = lshr i32 %i.kz, 3
  %i.lb = trunc nuw i32 %i.la to i16
  store i16 %i.lb, ptr %i.o, align 2, !tbaa !28
  %i.lc = shl nuw nsw i32 %i.s, 1
  %i.ld = add nuw nsw i32 %i.km, %i.n
  %i.le = add nuw nsw i32 %i.ld, %i.lc
  %i.lf = add nuw nsw i32 %i.le, %i.v
  %i.lg = add nuw nsw i32 %i.lf, %i.y
  %i.lh = add nuw nsw i32 %i.lg, %i.ab
  %i.li = lshr i32 %i.lh, 3
  %i.lj = trunc nuw i32 %i.li to i16
  store i16 %i.lj, ptr %.0.i24, align 2, !tbaa !28
  %reass.add = add nuw nsw i32 %i.ab, %i.v
  %reass.mul = shl nuw nsw i32 %reass.add, 1
  %i.lk = add nuw nsw i32 %i.kl, %i.n
  %i.ll = add nuw nsw i32 %i.lk, %i.s
  %i.lm = add nuw nsw i32 %i.ll, %i.y
  %i.ln = add nuw nsw i32 %i.lm, %reass.mul
  %i.lo = lshr i32 %i.ln, 3
  %i.lp = trunc nuw i32 %i.lo to i16
  store i16 %i.lp, ptr %i.t, align 2, !tbaa !28
  %i.lq = add nuw nsw i32 %i.ab, %i.y
  %i.lr = shl nuw nsw i32 %i.lq, 1
  %i.ls = add nuw nsw i32 %i.kl, %i.s
  %i.lt = add nuw nsw i32 %i.ls, %i.v
  %i.lu = add nuw nsw i32 %i.lt, %i.ab
  %i.lv = add nuw nsw i32 %i.lu, %i.lr
  %i.lw = lshr i32 %i.lv, 3
  %i.lx = trunc nuw i32 %i.lw to i16
  store i16 %i.lx, ptr %i.w, align 2, !tbaa !28
  br label %.critedge.i

.thread16:                                        ; preds = %bb.s, %bb.r, %bb.q, %bb.v
  %i.ly = icmp sgt i32 %i.ah, %i.d
  %5 = icmp samesign ugt i32 %i.aj, %i.d
  %or.cond19 = select i1 %i.ly, i1 true, i1 %5
  br i1 %or.cond19, label %.critedge649.i, label %bb.x

.critedge649.i:                                   ; preds = %.thread16
  %i.lz = tail call i32 @llvm.smax.i32(i32 %i.ar, i32 -512)
  %.0.i9 = tail call i32 @llvm.smin.i32(i32 %i.lz, i32 511)
  %i.ma = sub nsw i32 %i.s, %i.q
  %i.mb = mul nsw i32 %i.ma, 3
  %i.mc = add nsw i32 %.0.i9, %i.mb
  %i.md = tail call i32 @llvm.smax.i32(i32 %i.mc, i32 -512) ; 2 uses
  %i.me = tail call i32 @llvm.smin.i32(i32 %i.md, i32 507)
  %i.mf = add nsw i32 %i.me, 4
  %i.mg = ashr i32 %i.mf, 3
  %i.mh = tail call i32 @llvm.smin.i32(i32 %i.md, i32 508)
  %i.mi = add nsw i32 %i.mh, 3
  %i.mj = ashr i32 %i.mi, 3
  %i.mk = add nsw i32 %i.mj, %i.q
  %i.ml = tail call i32 @llvm.smax.i32(i32 %i.mk, i32 0)
  %i.mm = tail call i32 @llvm.umin.i32(i32 %i.ml, i32 1023)
  %i.mn = trunc nuw nsw i32 %i.mm to i16
  store i16 %i.mn, ptr %i.o, align 2, !tbaa !28
  %i.mo = sub nsw i32 %i.s, %i.mg
  %i.mp = tail call i32 @llvm.smax.i32(i32 %i.mo, i32 0)
  %i.mq = tail call i32 @llvm.umin.i32(i32 %i.mp, i32 1023)
  %i.mr = trunc nuw nsw i32 %i.mq to i16
  store i16 %i.mr, ptr %.0.i24, align 2, !tbaa !28
  br label %.critedge.i

bb.x:                                             ; preds = %.thread16
  %i.ms = sub nsw i32 %i.s, %i.q                  ; 2 uses
  %i.mt = mul nsw i32 %i.ms, 3                    ; 2 uses
  %i.mu = add nsw i32 %i.mt, 512
  %.not.i10 = icmp ult i32 %i.mu, 1024
  %i.mv = icmp sgt i32 %i.ms, -1
  %i.mw = select i1 %i.mv, i32 511, i32 -512
  %.0.i11 = select i1 %.not.i10, i32 %i.mt, i32 %i.mw ; 2 uses
  %i.mx = tail call i32 @llvm.smin.i32(i32 %.0.i11, i32 507)
  %i.my = add nsw i32 %i.mx, 4
  %i.mz = ashr i32 %i.my, 3                       ; 2 uses
  %i.na = tail call i32 @llvm.smin.i32(i32 %.0.i11, i32 508)
  %i.nb = add nsw i32 %i.na, 3
  %i.nc = ashr i32 %i.nb, 3
  %i.nd = add nsw i32 %i.nc, %i.q
  %i.ne = tail call i32 @llvm.smax.i32(i32 %i.nd, i32 0)
  %i.nf = tail call i32 @llvm.umin.i32(i32 %i.ne, i32 1023)
  %i.ng = trunc nuw nsw i32 %i.nf to i16
  store i16 %i.ng, ptr %i.o, align 2, !tbaa !28
  %i.nh = sub nsw i32 %i.s, %i.mz
  %i.ni = tail call i32 @llvm.smax.i32(i32 %i.nh, i32 0)
  %i.nj = tail call i32 @llvm.umin.i32(i32 %i.ni, i32 1023)
  %i.nk = trunc nuw nsw i32 %i.nj to i16
  store i16 %i.nk, ptr %.0.i24, align 2, !tbaa !28
  %i.nl = add nsw i32 %i.mz, 1
  %i.nm = ashr i32 %i.nl, 1                       ; 2 uses
  %i.nn = add nsw i32 %i.nm, %i.n
  %i.no = tail call i32 @llvm.smax.i32(i32 %i.nn, i32 0)
  %i.np = tail call i32 @llvm.umin.i32(i32 %i.no, i32 1023)
  %i.nq = trunc nuw nsw i32 %i.np to i16
  store i16 %i.nq, ptr %i.l, align 2, !tbaa !28
  %i.nr = sub nsw i32 %i.v, %i.nm
  %i.ns = tail call i32 @llvm.smax.i32(i32 %i.nr, i32 0)
  %i.nt = tail call i32 @llvm.umin.i32(i32 %i.ns, i32 1023)
  %i.nu = trunc nuw nsw i32 %i.nt to i16
  store i16 %i.nu, ptr %i.t, align 2, !tbaa !28
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.x, %.critedge649.i, %bb.w, %bb.u, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.nv = add nuw nsw i32 %.0551.i23, 1           ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %.0.i24, i64 2
  %exitcond.not = icmp eq i32 %i.nv, 8
  br i1 %exitcond.not, label %loop_filter.exit, label %bb.b, !llvm.loop !14

loop_filter.exit:                                 ; preds = %.critedge.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @loop_filter_h_16_16_c(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #3 {
bb.a:
  tail call void @loop_filter_h_16_8_c(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  %i.a = shl nsw i64 %1, 3
  %i.b = getelementptr inbounds i8, ptr %0, i64 %i.a
  tail call void @loop_filter_h_16_8_c(ptr noundef %i.b, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @loop_filter_v_16_16_c(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #3 {
bb.a:
  tail call void @loop_filter_v_16_8_c(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @loop_filter_v_16_8_c(ptr noundef nonnull %i.a, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @loop_filter_h_44_16_c(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #3 {
bb.a:
  %i.a = and i32 %2, 255
  %i.b = and i32 %3, 255
  %i.c = and i32 %4, 255
  tail call void @loop_filter_h_4_8_c(ptr noundef %0, i64 noundef %1, i32 noundef %i.a, i32 noundef %i.b, i32 noundef %i.c)
  %i.d = shl nsw i64 %1, 3
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  %i.f = ashr i32 %2, 8
  %i.g = ashr i32 %3, 8
  %i.h = ashr i32 %4, 8
  tail call void @loop_filter_h_4_8_c(ptr noundef %i.e, i64 noundef %1, i32 noundef %i.f, i32 noundef %i.g, i32 noundef %i.h)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @loop_filter_v_44_16_c(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #3 {
bb.a:
  %i.a = and i32 %2, 255
  %i.b = and i32 %3, 255
  %i.c = and i32 %4, 255
  tail call void @loop_filter_v_4_8_c(ptr noundef %0, i64 noundef %1, i32 noundef %i.a, i32 noundef %i.b, i32 noundef %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = ashr i32 %2, 8
  %i.f = ashr i32 %3, 8
  %i.g = ashr i32 %4, 8
  tail call void @loop_filter_v_4_8_c(ptr noundef nonnull %i.d, i64 noundef %1, i32 noundef %i.e, i32 noundef %i.f, i32 noundef %i.g)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @loop_filter_h_48_16_c(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #3 {
bb.a:
  %i.a = and i32 %2, 255
  %i.b = and i32 %3, 255
  %i.c = and i32 %4, 255
  tail call void @loop_filter_h_4_8_c(ptr noundef %0, i64 noundef %1, i32 noundef %i.a, i32 noundef %i.b, i32 noundef %i.c)
  %i.d = shl nsw i64 %1, 3
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  %i.f = ashr i32 %2, 8
  %i.g = ashr i32 %3, 8
  %i.h = ashr i32 %4, 8
  tail call void @loop_filter_h_8_8_c(ptr noundef %i.e, i64 noundef %1, i32 noundef %i.f, i32 noundef %i.g, i32 noundef %i.h)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @loop_filter_v_48_16_c(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #3 {
bb.a:
  %i.a = and i32 %2, 255
  %i.b = and i32 %3, 255
  %i.c = and i32 %4, 255
  tail call void @loop_filter_v_4_8_c(ptr noundef %0, i64 noundef %1, i32 noundef %i.a, i32 noundef %i.b, i32 noundef %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = ashr i32 %2, 8
  %i.f = ashr i32 %3, 8
  %i.g = ashr i32 %4, 8
  tail call void @loop_filter_v_8_8_c(ptr noundef nonnull %i.d, i64 noundef %1, i32 noundef %i.e, i32 noundef %i.f, i32 noundef %i.g)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @loop_filter_h_84_16_c(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #3 {
bb.a:
  %i.a = and i32 %2, 255
  %i.b = and i32 %3, 255
  %i.c = and i32 %4, 255
  tail call void @loop_filter_h_8_8_c(ptr noundef %0, i64 noundef %1, i32 noundef %i.a, i32 noundef %i.b, i32 noundef %i.c)
  %i.d = shl nsw i64 %1, 3
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  %i.f = ashr i32 %2, 8
  %i.g = ashr i32 %3, 8
  %i.h = ashr i32 %4, 8
  tail call void @loop_filter_h_4_8_c(ptr noundef %i.e, i64 noundef %1, i32 noundef %i.f, i32 noundef %i.g, i32 noundef %i.h)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @loop_filter_v_84_16_c(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #3 {
bb.a:
  %i.a = and i32 %2, 255
  %i.b = and i32 %3, 255
  %i.c = and i32 %4, 255
  tail call void @loop_filter_v_8_8_c(ptr noundef %0, i64 noundef %1, i32 noundef %i.a, i32 noundef %i.b, i32 noundef %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = ashr i32 %2, 8
  %i.f = ashr i32 %3, 8
  %i.g = ashr i32 %4, 8
  tail call void @loop_filter_v_4_8_c(ptr noundef nonnull %i.d, i64 noundef %1, i32 noundef %i.e, i32 noundef %i.f, i32 noundef %i.g)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @loop_filter_h_88_16_c(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #3 {
bb.a:
  %i.a = and i32 %2, 255
  %i.b = and i32 %3, 255
  %i.c = and i32 %4, 255
  tail call void @loop_filter_h_8_8_c(ptr noundef %0, i64 noundef %1, i32 noundef %i.a, i32 noundef %i.b, i32 noundef %i.c)
  %i.d = shl nsw i64 %1, 3
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  %i.f = ashr i32 %2, 8
  %i.g = ashr i32 %3, 8
  %i.h = ashr i32 %4, 8
  tail call void @loop_filter_h_8_8_c(ptr noundef %i.e, i64 noundef %1, i32 noundef %i.f, i32 noundef %i.g, i32 noundef %i.h)
end_hunk_0
