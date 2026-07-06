inline.NumInlined: 24
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@conv420to422:bb.a
  %i.gg = add nsw i32 %i.gf, %i.fr
  %i.gh = add nsw i32 %i.gg, %.neg211
  %i.gi = add nsw i32 %i.gh, %i.gc
  %i.gj = ashr i32 %i.gi, 8
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr inbounds i8, ptr %i.ew, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !13
  %i.gn = mul nsw i64 %i.ed, %i.w
  %i.go = getelementptr inbounds i8, ptr %.1202233, i64 %i.gn
  store i8 %i.gm, ptr %i.go, align 1, !tbaa !13
  %i.gp = load ptr, ptr @Clip, align 8, !tbaa !8
  %i.gq = load i8, ptr %i.fe, align 1, !tbaa !13
  %i.gr = zext i8 %i.gq to i32
  %i.gs = mul nuw nsw i32 %i.gr, 7
  %i.gt = load i8, ptr %i.fj, align 1, !tbaa !13
  %i.gu = zext i8 %i.gt to i32
  %.neg212 = mul nsw i32 %i.gu, -35
  %i.gv = load i8, ptr %i.fo, align 1, !tbaa !13
  %i.gw = zext i8 %i.gv to i32
  %i.gx = mul nuw nsw i32 %i.gw, 194
  %i.gy = load i8, ptr %i.fu, align 1, !tbaa !13
  %i.gz = zext i8 %i.gy to i32
  %i.ha = mul nuw nsw i32 %i.gz, 110
  %i.hb = load i8, ptr %i.fz, align 1, !tbaa !13
  %i.hc = zext i8 %i.hb to i32
  %.neg213 = mul nsw i32 %i.hc, -24
  %i.hd = mul nsw i32 %i.ev, %i.b
  %i.he = sext i32 %i.hd to i64
  %i.hf = getelementptr inbounds i8, ptr %.1234, i64 %i.he
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !13
  %i.hh = zext i8 %i.hg to i32
  %i.hi = shl nuw nsw i32 %i.hh, 2
  %i.hj = add nuw nsw i32 %i.gs, 128
  %i.hk = add nsw i32 %i.hj, %.neg212
  %i.hl = add nsw i32 %i.hk, %i.gx
  %i.hm = add nsw i32 %i.hl, %i.ha
  %i.hn = add nsw i32 %i.hm, %.neg213
  %i.ho = add nsw i32 %i.hn, %i.hi
  %i.hp = ashr i32 %i.ho, 8
  %i.hq = sext i32 %i.hp to i64
  %i.hr = getelementptr inbounds i8, ptr %i.gp, i64 %i.hq
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !13
  %i.ht = or disjoint i64 %i.ed, 2
  %i.hu = mul nsw i64 %i.ht, %i.w
  %i.hv = getelementptr inbounds i8, ptr %.1202233, i64 %i.hu
  store i8 %i.hs, ptr %i.hv, align 1, !tbaa !13
  %i.hw = icmp samesign ult i64 %indvars.iv242, 5
  %i.hx = trunc i64 %indvars.iv242 to i32
  %i.hy = add i32 %i.hx, -5
  %i.hz = select i1 %i.hw, i32 1, i32 %i.hy
  %i.ia = icmp samesign ult i64 %indvars.iv242, 3
  %i.ib = trunc i64 %indvars.iv242 to i32
  %i.ic = add i32 %i.ib, -3
  %i.id = select i1 %i.ia, i32 1, i32 %i.ic
  %i.ie = trunc i64 %indvars.iv242 to i32
  %i.if = add i32 %i.ie, -1
  %i.ig = select i1 %i.eh, i32 1, i32 %i.if
  %i.ih = icmp samesign ult i64 %indvars.iv242, %i.ab
  %i.ii = trunc i64 %indvars.iv242 to i32
  %i.ij = or disjoint i32 %i.ii, 1
  %i.ik = select i1 %i.ih, i32 %i.ij, i32 %i.q
  %i.il = icmp slt i64 %indvars.iv242, %i.ac
  %i.im = trunc i64 %indvars.iv242 to i32
  %i.in = add i32 %i.im, 3
  %i.io = select i1 %i.il, i32 %i.in, i32 %i.q
  %i.ip = icmp slt i64 %indvars.iv242, %i.ad
  %i.iq = trunc i64 %indvars.iv242 to i32
  %i.ir = add i32 %i.iq, 5
  %i.is = select i1 %i.ip, i32 %i.ir, i32 %i.q
  %i.it = icmp slt i64 %indvars.iv242, %i.ae
  %i.iu = trunc i64 %indvars.iv242 to i32
  %i.iv = add i32 %i.iu, 7
  %i.iw = select i1 %i.it, i32 %i.iv, i32 %i.q
  %i.ix = load ptr, ptr @Clip, align 8, !tbaa !8
  %i.iy = mul nsw i32 %i.is, %i.b
  %i.iz = sext i32 %i.iy to i64
  %i.ja = getelementptr inbounds i8, ptr %.1234, i64 %i.iz ; 2 uses
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !13
  %i.jc = zext i8 %i.jb to i32
  %i.jd = mul nuw nsw i32 %i.jc, 7
  %i.je = mul nsw i32 %i.io, %i.b
  %i.jf = sext i32 %i.je to i64
  %i.jg = getelementptr inbounds i8, ptr %.1234, i64 %i.jf ; 2 uses
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !13
  %i.ji = zext i8 %i.jh to i32
  %.neg214 = mul nsw i32 %i.ji, -35
  %i.jj = mul nsw i32 %i.ik, %i.b
  %i.jk = sext i32 %i.jj to i64
  %i.jl = getelementptr inbounds i8, ptr %.1234, i64 %i.jk ; 2 uses
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !13
  %i.jn = zext i8 %i.jm to i32
  %i.jo = mul nuw nsw i32 %i.jn, 194
  %i.jp = mul nsw i32 %i.ig, %i.b
  %i.jq = sext i32 %i.jp to i64
  %i.jr = getelementptr inbounds i8, ptr %.1234, i64 %i.jq ; 2 uses
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !13
  %i.jt = zext i8 %i.js to i32
  %i.ju = mul nuw nsw i32 %i.jt, 110
  %i.jv = mul nsw i32 %i.id, %i.b
  %i.jw = sext i32 %i.jv to i64
  %i.jx = getelementptr inbounds i8, ptr %.1234, i64 %i.jw ; 2 uses
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !13
  %i.jz = zext i8 %i.jy to i32
  %.neg215 = mul nsw i32 %i.jz, -24
  %i.ka = mul nsw i32 %i.hz, %i.b
  %i.kb = sext i32 %i.ka to i64
  %i.kc = getelementptr inbounds i8, ptr %.1234, i64 %i.kb
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !13
  %i.ke = zext i8 %i.kd to i32
  %i.kf = shl nuw nsw i32 %i.ke, 2
  %i.kg = add nuw nsw i32 %i.jd, 128
  %i.kh = add nsw i32 %i.kg, %.neg214
  %i.ki = add nsw i32 %i.kh, %i.jo
  %i.kj = add nsw i32 %i.ki, %i.ju
  %i.kk = add nsw i32 %i.kj, %.neg215
  %i.kl = add nsw i32 %i.kk, %i.kf
  %i.km = ashr i32 %i.kl, 8
  %i.kn = sext i32 %i.km to i64
  %i.ko = getelementptr inbounds i8, ptr %i.ix, i64 %i.kn
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !13
  %i.kq = or disjoint i64 %i.ed, 1
  %i.kr = mul nsw i64 %i.kq, %i.w
  %i.ks = getelementptr inbounds i8, ptr %.1202233, i64 %i.kr
  store i8 %i.kp, ptr %i.ks, align 1, !tbaa !13
  %i.kt = load ptr, ptr @Clip, align 8, !tbaa !8
  %i.ku = mul nsw i32 %i.iw, %i.b
  %i.kv = sext i32 %i.ku to i64
  %i.kw = getelementptr inbounds i8, ptr %.1234, i64 %i.kv
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !13
  %i.ky = zext i8 %i.kx to i32
  %i.kz = load i8, ptr %i.ja, align 1, !tbaa !13
  %i.la = zext i8 %i.kz to i32
  %.neg216 = mul nsw i32 %i.la, -7
  %i.lb = load i8, ptr %i.jg, align 1, !tbaa !13
  %i.lc = zext i8 %i.lb to i32
  %i.ld = mul nuw nsw i32 %i.lc, 30
  %i.le = load i8, ptr %i.jl, align 1, !tbaa !13
  %i.lf = zext i8 %i.le to i32
  %i.lg = mul nuw nsw i32 %i.lf, 248
  %i.lh = load i8, ptr %i.jr, align 1, !tbaa !13
  %i.li = zext i8 %i.lh to i32
  %.neg217 = mul nsw i32 %i.li, -21
  %i.lj = load i8, ptr %i.jx, align 1, !tbaa !13
  %i.lk = zext i8 %i.lj to i32
  %i.ll = mul nuw nsw i32 %i.lk, 5
  %i.lm = add nuw nsw i32 %i.ky, 128
  %i.ln = add nsw i32 %i.lm, %.neg216
  %i.lo = add nsw i32 %i.ln, %i.ld
  %i.lp = add nsw i32 %i.lo, %i.lg
  %i.lq = add nsw i32 %i.lp, %.neg217
  %i.lr = add nsw i32 %i.lq, %i.ll
  %i.ls = ashr i32 %i.lr, 8
  %i.lt = sext i32 %i.ls to i64
  %i.lu = getelementptr inbounds i8, ptr %i.kt, i64 %i.lt
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !13
  %i.lw = or disjoint i64 %i.ed, 3
  %i.lx = mul nsw i64 %i.lw, %i.w
  %i.ly = getelementptr inbounds i8, ptr %.1202233, i64 %i.lx
  store i8 %i.lv, ptr %i.ly, align 1, !tbaa !13
  %i.lz = icmp samesign ult i64 %indvars.iv.next243, %i.y
  br i1 %i.lz, label %bb.c, label %._crit_edge231, !llvm.loop !25

._crit_edge231:                                   ; preds = %bb.c
  %i.ma = getelementptr inbounds nuw i8, ptr %.1234, i64 1
  %i.mb = getelementptr inbounds nuw i8, ptr %.1202233, i64 1
  %i.mc = add nuw nsw i32 %.1204232, 1            ; 2 uses
  %exitcond245.not = icmp eq i32 %i.mc, %i.b
  br i1 %exitcond245.not, label %.loopexit, label %.preheader, !llvm.loop !26

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge231, %.preheader224, %.preheader223.lr.ph, %.preheader222, %.preheader.lr.ph
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @conv422to444(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) unnamed_addr #7 {
bb.a:
  %i.a = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !4
  %i.b = ashr i32 %i.a, 1                         ; 12 uses
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @base, i64 3144), align 8, !tbaa !27
  %.not = icmp eq i32 %i.c, 0
  %i.d = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !4
  %i.e = icmp sgt i32 %i.d, 0                     ; 2 uses
  br i1 %.not, label %.preheader109, label %.preheader111

.preheader111:                                    ; preds = %bb.a
  br i1 %i.e, label %.preheader110.lr.ph, label %.loopexit

.preheader110.lr.ph:                              ; preds = %.preheader111
  %i.f = icmp sgt i32 %i.b, 0
  %i.g = add nsw i32 %i.b, -1                     ; 4 uses
  %i.h = sext i32 %i.b to i64
  br i1 %i.f, label %.preheader110.preheader, label %.loopexit

.preheader110.preheader:                          ; preds = %.preheader110.lr.ph
  %i.i = add nsw i32 %i.b, -3
  %i.j = add nsw i32 %i.b, -2
  %i.k = zext nneg i32 %i.g to i64
  %i.l = sext i32 %i.j to i64
  %i.m = sext i32 %i.i to i64
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.preheader110

.preheader109:                                    ; preds = %bb.a
  br i1 %i.e, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader109
  %i.n = icmp sgt i32 %i.b, 0
  %i.o = add nsw i32 %i.b, -1                     ; 4 uses
  %i.p = sext i32 %i.b to i64
  br i1 %i.n, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.q = add nsw i32 %i.b, -3
  %i.r = add nsw i32 %i.b, -2
  %i.s = zext nneg i32 %i.o to i64
  %i.t = sext i32 %i.r to i64
  %i.u = sext i32 %i.q to i64
  %wide.trip.count127 = zext nneg i32 %i.b to i64
  br label %.preheader

.preheader110:                                    ; preds = %.preheader110.preheader, %._crit_edge
  %.0116 = phi ptr [ %i.bt, %._crit_edge ], [ %0, %.preheader110.preheader ] ; 7 uses
  %.097115 = phi i32 [ %i.bx, %._crit_edge ], [ 0, %.preheader110.preheader ]
  %.099114 = phi ptr [ %i.bw, %._crit_edge ], [ %1, %.preheader110.preheader ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader110, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader110 ], [ %indvars.iv.next, %bb.b ] ; 9 uses
  %i.v = shl nuw i64 %indvars.iv, 1
  %i.w = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.x = tail call i32 @llvm.usub.sat.i32(i32 %i.w, i32 2)
  %i.y = tail call i32 @llvm.usub.sat.i32(i32 %i.w, i32 1)
  %i.z = icmp samesign ult i64 %indvars.iv, %i.k
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %2 = trunc nuw nsw i64 %indvars.iv.next to i32
  %3 = select i1 %i.z, i32 %2, i32 %i.g
  %i.aa = icmp slt i64 %indvars.iv, %i.l
  %i.ab = trunc i64 %indvars.iv to i32
  %i.ac = add i32 %i.ab, 2
  %i.ad = select i1 %i.aa, i32 %i.ac, i32 %i.g
  %i.ae = icmp slt i64 %indvars.iv, %i.m
  %i.af = trunc i64 %indvars.iv to i32
  %i.ag = add i32 %i.af, 3
  %i.ah = select i1 %i.ae, i32 %i.ag, i32 %i.g
  %i.ai = getelementptr inbounds nuw i8, ptr %.0116, i64 %indvars.iv
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !13  ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %.099114, i64 %i.v ; 2 uses
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !13
  %i.al = load ptr, ptr @Clip, align 8, !tbaa !8
  %i.am = zext nneg i32 %i.x to i64
  %i.an = getelementptr inbounds nuw i8, ptr %.0116, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !13
  %i.ap = zext i8 %i.ao to i32
  %i.aq = sext i32 %i.ah to i64
  %i.ar = getelementptr inbounds i8, ptr %.0116, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !13
  %i.at = zext i8 %i.as to i32
  %i.au = add nuw nsw i32 %i.at, %i.ap
  %i.av = mul nuw nsw i32 %i.au, 21
  %i.aw = zext nneg i32 %i.y to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %.0116, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !13
  %i.az = zext i8 %i.ay to i32
  %i.ba = sext i32 %i.ad to i64
  %i.bb = getelementptr inbounds i8, ptr %.0116, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !13
  %i.bd = zext i8 %i.bc to i32
  %i.be = add nuw nsw i32 %i.bd, %i.az
  %.neg108 = mul nsw i32 %i.be, -52
  %i.bf = zext i8 %i.aj to i32
  %4 = sext i32 %3 to i64
  %i.bg = getelementptr inbounds i8, ptr %.0116, i64 %4
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !13
  %i.bi = zext i8 %i.bh to i32
  %i.bj = add nuw nsw i32 %i.bi, %i.bf
  %i.bk = mul nuw nsw i32 %i.bj, 159
  %i.bl = add nuw nsw i32 %i.av, 128
  %i.bm = add nsw i32 %i.bl, %.neg108
  %i.bn = add nsw i32 %i.bm, %i.bk
  %i.bo = ashr i32 %i.bn, 8
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds i8, ptr %i.al, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !13
  %i.bs = getelementptr i8, ptr %i.ak, i64 1
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !13
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !29

._crit_edge:                                      ; preds = %bb.b
  %i.bt = getelementptr inbounds nuw i8, ptr %.0116, i64 %i.h
  %i.bu = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !4
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds i8, ptr %.099114, i64 %i.bv
  %i.bx = add nuw nsw i32 %.097115, 1             ; 2 uses
  %i.by = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !4
  %i.bz = icmp slt i32 %i.bx, %i.by
  br i1 %i.bz, label %.preheader110, label %.loopexit, !llvm.loop !30

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge118
  %.1121 = phi ptr [ %i.fe, %._crit_edge118 ], [ %0, %.preheader.preheader ] ; 8 uses
  %.198120 = phi i32 [ %i.fi, %._crit_edge118 ], [ 0, %.preheader.preheader ]
  %.1100119 = phi ptr [ %i.fh, %._crit_edge118 ], [ %1, %.preheader.preheader ] ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.c
  %indvars.iv124 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next125, %bb.c ] ; 9 uses
  %i.ca = shl nuw i64 %indvars.iv124, 1
  %i.cb = trunc nuw nsw i64 %indvars.iv124 to i32 ; 3 uses
  %i.cc = tail call i32 @llvm.usub.sat.i32(i32 %i.cb, i32 3)
  %i.cd = tail call i32 @llvm.usub.sat.i32(i32 %i.cb, i32 2)
  %i.ce = tail call i32 @llvm.usub.sat.i32(i32 %i.cb, i32 1)
  %i.cf = icmp samesign ult i64 %indvars.iv124, %i.s
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 3 uses
  %5 = trunc nuw nsw i64 %indvars.iv.next125 to i32
  %6 = select i1 %i.cf, i32 %5, i32 %i.o
  %i.cg = icmp slt i64 %indvars.iv124, %i.t
  %i.ch = trunc i64 %indvars.iv124 to i32
  %i.ci = add i32 %i.ch, 2
  %i.cj = select i1 %i.cg, i32 %i.ci, i32 %i.o
  %i.ck = icmp slt i64 %indvars.iv124, %i.u
  %i.cl = trunc i64 %indvars.iv124 to i32
  %i.cm = add i32 %i.cl, 3
  %i.cn = select i1 %i.ck, i32 %i.cm, i32 %i.o
  %i.co = load ptr, ptr @Clip, align 8, !tbaa !8
  %i.cp = zext nneg i32 %i.cc to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %.1121, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !13
  %i.cs = zext i8 %i.cr to i32
  %i.ct = mul nuw nsw i32 %i.cs, 5
  %i.cu = zext nneg i32 %i.cd to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %.1121, i64 %i.cu ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !13
  %i.cx = zext i8 %i.cw to i32
  %.neg = mul nsw i32 %i.cx, -21
  %i.cy = zext nneg i32 %i.ce to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %.1121, i64 %i.cy ; 2 uses
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !13
  %i.db = zext i8 %i.da to i32
  %i.dc = mul nuw nsw i32 %i.db, 70
  %i.dd = getelementptr inbounds nuw i8, ptr %.1121, i64 %indvars.iv124 ; 2 uses
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !13
  %i.df = zext i8 %i.de to i32
  %i.dg = mul nuw nsw i32 %i.df, 228
  %7 = sext i32 %6 to i64
  %i.dh = getelementptr inbounds i8, ptr %.1121, i64 %7 ; 2 uses
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !13
  %i.dj = zext i8 %i.di to i32
  %.neg105 = mul nsw i32 %i.dj, -37
  %i.dk = sext i32 %i.cj to i64
  %i.dl = getelementptr inbounds i8, ptr %.1121, i64 %i.dk ; 2 uses
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !13
  %i.dn = zext i8 %i.dm to i32
  %i.do = mul nuw nsw i32 %i.dn, 11
  %i.dp = add nuw nsw i32 %i.ct, 128
  %i.dq = add nsw i32 %i.dp, %.neg
  %i.dr = add nsw i32 %i.dq, %i.dc
  %i.ds = add nsw i32 %i.dr, %i.dg
  %i.dt = add nsw i32 %i.ds, %.neg105
  %i.du = add nsw i32 %i.dt, %i.do
  %i.dv = ashr i32 %i.du, 8
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds i8, ptr %i.co, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !13
  %i.dz = getelementptr inbounds i8, ptr %.1100119, i64 %i.ca ; 2 uses
  store i8 %i.dy, ptr %i.dz, align 1, !tbaa !13
  %i.ea = load ptr, ptr @Clip, align 8, !tbaa !8
  %i.eb = sext i32 %i.cn to i64
  %i.ec = getelementptr inbounds i8, ptr %.1121, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !13
  %i.ee = zext i8 %i.ed to i32
  %i.ef = mul nuw nsw i32 %i.ee, 5
  %i.eg = load i8, ptr %i.dl, align 1, !tbaa !13
  %i.eh = zext i8 %i.eg to i32
  %.neg106 = mul nsw i32 %i.eh, -21
  %i.ei = load i8, ptr %i.dh, align 1, !tbaa !13
  %i.ej = zext i8 %i.ei to i32
  %i.ek = mul nuw nsw i32 %i.ej, 70
  %i.el = load i8, ptr %i.dd, align 1, !tbaa !13
  %i.em = zext i8 %i.el to i32
  %i.en = mul nuw nsw i32 %i.em, 228
  %i.eo = load i8, ptr %i.cz, align 1, !tbaa !13
  %i.ep = zext i8 %i.eo to i32
  %.neg107 = mul nsw i32 %i.ep, -37
  %i.eq = load i8, ptr %i.cv, align 1, !tbaa !13
  %i.er = zext i8 %i.eq to i32
  %i.es = mul nuw nsw i32 %i.er, 11
  %i.et = add nuw nsw i32 %i.ef, 128
  %i.eu = add nsw i32 %i.et, %.neg106
  %i.ev = add nsw i32 %i.eu, %i.ek
  %i.ew = add nsw i32 %i.ev, %i.en
  %i.ex = add nsw i32 %i.ew, %.neg107
  %i.ey = add nsw i32 %i.ex, %i.es
  %i.ez = ashr i32 %i.ey, 8
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds i8, ptr %i.ea, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !13
  %i.fd = getelementptr i8, ptr %i.dz, i64 1
  store i8 %i.fc, ptr %i.fd, align 1, !tbaa !13
  %exitcond128.not = icmp eq i64 %indvars.iv.next125, %wide.trip.count127
  br i1 %exitcond128.not, label %._crit_edge118, label %bb.c, !llvm.loop !31

._crit_edge118:                                   ; preds = %bb.c
  %i.fe = getelementptr inbounds nuw i8, ptr %.1121, i64 %i.p
  %i.ff = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !4
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds i8, ptr %.1100119, i64 %i.fg
  %i.fi = add nuw nsw i32 %.198120, 1             ; 2 uses
  %i.fj = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !4
  %i.fk = icmp slt i32 %i.fi, %i.fj
  br i1 %i.fk, label %.preheader, label %.loopexit, !llvm.loop !32

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge118, %.preheader111, %.preheader110.lr.ph, %.preheader109, %.preheader.lr.ph
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!13 = !{!6, !6, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15, !17}
!17 = !{!"llvm.loop.unswitch.partial.disable"}
!18 = distinct !{!18, !15}
!19 = distinct !{!19, !15}
!20 = distinct !{!20, !15, !17}
!21 = distinct !{!21, !15}
!22 = distinct !{!22, !15}
!23 = distinct !{!23, !15}
!24 = distinct !{!24, !15}
!25 = distinct !{!25, !15}
!26 = distinct !{!26, !15}
!27 = !{!28, !5, i64 3144}
!28 = !{!"layer_data", !5, i64 0, !6, i64 4, !9, i64 2056, !6, i64 2064, !5, i64 2080, !9, i64 2088, !5, i64 2096, !5, i64 2100, !6, i64 2104, !6, i64 2360, !6, i64 2616, !6, i64 2872, !5, i64 3128, !5, i64 3132, !5, i64 3136, !5, i64 3140, !5, i64 3144, !5, i64 3148, !5, i64 3152, !5, i64 3156, !5, i64 3160, !5, i64 3164, !5, i64 3168, !5, i64 3172, !6, i64 3176}
!29 = distinct !{!29, !15}
!30 = distinct !{!30, !15}
!31 = distinct !{!31, !15}
!32 = distinct !{!32, !15}
end_hunk_0
