Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/postprocessing_utils?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN6LibRaw19convert_to_rgb_loopEPA4_f:bb.a
  %i.dg = fmul reassoc nsz arcp contract afn <2 x float> %i.ct, %i.df
  %i.dh = fadd reassoc nsz arcp contract afn <2 x float> %i.dd, %i.dg
  %i.di = extractelement <2 x float> %i.cz, i64 0
  %i.dj = fmul reassoc nsz arcp contract afn float %i.cm, %i.di
  %i.dk = extractelement <2 x float> %i.cz, i64 1
  %i.dl = fmul reassoc nsz arcp contract afn float %i.cn, %i.dk
  %i.dm = fadd reassoc nsz arcp contract afn float %i.dl, %i.dj
  %i.dn = fadd reassoc nsz arcp contract afn float %i.dm, %i.cx
  %i.do = fptosi <2 x float> %i.dh to <2 x i32>
  %i.dp = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.do, <2 x i32> zeroinitializer)
  %i.dq = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.dp, <2 x i32> splat (i32 65535))
  %i.dr = trunc nuw <2 x i32> %i.dq to <2 x i16>  ; 3 uses
  store <2 x i16> %i.dr, ptr %.3131, align 2, !tbaa !12
  %i.ds = fptosi float %i.dn to i32
  %i.dt = tail call i32 @llvm.smax.i32(i32 %i.ds, i32 0)
  %i.du = tail call i32 @llvm.umin.i32(i32 %i.dt, i32 65535)
  %i.dv = trunc nuw i32 %i.du to i16              ; 2 uses
  store i16 %i.dv, ptr %i.cu, align 2, !tbaa !12
  %i.dw = extractelement <2 x i16> %i.dr, i64 0
  %i.dx = lshr i16 %i.dw, 3
  %i.dy = zext nneg i16 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.dy ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !80
  %i.eb = add nsw i32 %i.ea, 1
  store i32 %i.eb, ptr %i.dz, align 4, !tbaa !80
  %i.ec = extractelement <2 x i16> %i.dr, i64 1
  %i.ed = lshr i16 %i.ec, 3
  %i.ee = zext nneg i16 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.ee ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !80
  %i.eh = add nsw i32 %i.eg, 1
  store i32 %i.eh, ptr %i.ef, align 4, !tbaa !80
  %i.ei = lshr i16 %i.dv, 3
  %i.ej = zext nneg i16 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.ej ; 2 uses
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !80
  %i.em = add nsw i32 %i.el, 1
  store i32 %i.em, ptr %i.ek, align 4, !tbaa !80
  %i.en = add nuw nsw i32 %.198130, 1             ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.3131, i64 8 ; 2 uses
  %i.ep = load i16, ptr %i.bz, align 2, !tbaa !78 ; 2 uses
  %i.eq = zext i16 %i.ep to i32
  %i.er = icmp samesign ult i32 %i.en, %i.eq
  br i1 %i.er, label %bb.e, label %._crit_edge133.loopexit, !llvm.loop !90

._crit_edge133.loopexit:                          ; preds = %bb.e
  %.pre155 = load i16, ptr %i.bw, align 4, !tbaa !77
  br label %._crit_edge133

._crit_edge133:                                   ; preds = %._crit_edge133.loopexit, %.preheader
  %i.es = phi i16 [ %i.ch, %.preheader ], [ %.pre155, %._crit_edge133.loopexit ] ; 2 uses
  %i.et = phi i16 [ 0, %.preheader ], [ %i.ep, %._crit_edge133.loopexit ]
  %.3.lcssa = phi ptr [ %.2136, %.preheader ], [ %i.eo, %._crit_edge133.loopexit ]
  %i.eu = add nuw nsw i32 %.1101135, 1            ; 2 uses
  %i.ev = zext i16 %i.es to i32
  %i.ew = icmp samesign ult i32 %i.eu, %i.ev
  br i1 %i.ew, label %.preheader, label %.loopexit, !llvm.loop !91

bb.f:                                             ; preds = %bb.c
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ey = load i16, ptr %i.ex, align 4, !tbaa !77 ; 2 uses
  %.not139 = icmp eq i16 %i.ey, 0
  br i1 %.not139, label %.loopexit, label %.preheader110.lr.ph

.preheader110.lr.ph:                              ; preds = %bb.f
  %i.ez = load ptr, ptr %i.e, align 8, !tbaa !79
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.fe = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 32768
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 65536
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 98304
  %.pre = load i16, ptr %i.fa, align 2, !tbaa !78
  br label %.preheader110

.preheader110:                                    ; preds = %.preheader110.lr.ph, %._crit_edge126
  %i.fi = phi i16 [ %i.ey, %.preheader110.lr.ph ], [ %i.ic, %._crit_edge126 ]
  %i.fj = phi i16 [ %.pre, %.preheader110.lr.ph ], [ %i.id, %._crit_edge126 ]
  %.4129 = phi ptr [ %i.ez, %.preheader110.lr.ph ], [ %.5.lcssa, %._crit_edge126 ] ; 2 uses
  %.2102128 = phi i32 [ 0, %.preheader110.lr.ph ], [ %i.ie, %._crit_edge126 ]
  %.not140 = icmp eq i16 %i.fj, 0
  br i1 %.not140, label %._crit_edge126, label %.lr.ph125

.lr.ph125:                                        ; preds = %.preheader110
  %i.fk = load <8 x float>, ptr %1, align 4, !tbaa !81 ; 4 uses
  %i.fl = load float, ptr %i.fb, align 4, !tbaa !81
  %i.fm = load float, ptr %i.fc, align 4, !tbaa !81
  %i.fn = load <2 x float>, ptr %i.fd, align 4, !tbaa !81
  %i.fo = shufflevector <8 x float> %i.fk, <8 x float> poison, <2 x i32> <i32 0, i32 5>
  %i.fp = shufflevector <8 x float> %i.fk, <8 x float> poison, <2 x i32> <i32 1, i32 4>
  %i.fq = shufflevector <8 x float> %i.fk, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %i.fr = shufflevector <8 x float> %i.fk, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph125, %bb.g
  %.5124 = phi ptr [ %.4129, %.lr.ph125 ], [ %i.hy, %bb.g ] ; 5 uses
  %.299123 = phi i32 [ 0, %.lr.ph125 ], [ %i.hx, %bb.g ]
  %i.fs = getelementptr inbounds nuw i8, ptr %.5124, i64 4 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.5124, i64 6
  %i.fu = load <2 x i16>, ptr %.5124, align 2, !tbaa !12
  %i.fv = uitofp <2 x i16> %i.fu to <2 x float>   ; 4 uses
  %i.fw = load i16, ptr %i.ft, align 2, !tbaa !12
  %i.fx = load <2 x i16>, ptr %i.fs, align 2, !tbaa !12
  %i.fy = uitofp <2 x i16> %i.fx to <2 x float>   ; 3 uses
  %i.fz = shufflevector <2 x float> %i.fv, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ga = fmul reassoc nsz arcp contract afn <2 x float> %i.fp, %i.fz
  %i.gb = fmul reassoc nsz arcp contract afn <2 x float> %i.fo, %i.fv
  %i.gc = fadd reassoc nsz arcp contract afn <2 x float> %i.gb, %i.ga
  %i.gd = shufflevector <2 x float> %i.fy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ge = fmul reassoc nsz arcp contract afn <2 x float> %i.fq, %i.gd
  %i.gf = fadd reassoc nsz arcp contract afn <2 x float> %i.gc, %i.ge
  %i.gg = shufflevector <2 x float> %i.fy, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gh = fmul reassoc nsz arcp contract afn <2 x float> %i.fr, %i.gg
  %i.gi = fadd reassoc nsz arcp contract afn <2 x float> %i.gf, %i.gh
  %i.gj = extractelement <2 x float> %i.fv, i64 0
  %i.gk = fmul reassoc nsz arcp contract afn float %i.fl, %i.gj
  %i.gl = extractelement <2 x float> %i.fv, i64 1
  %i.gm = fmul reassoc nsz arcp contract afn float %i.fm, %i.gl
  %i.gn = fadd reassoc nsz arcp contract afn float %i.gm, %i.gk
  %i.go = fmul reassoc nsz arcp contract afn <2 x float> %i.fn, %i.fy ; 2 uses
  %i.gp = extractelement <2 x float> %i.go, i64 0
  %i.gq = fadd reassoc nsz arcp contract afn float %i.gn, %i.gp
  %i.gr = extractelement <2 x float> %i.go, i64 1
  %i.gs = fadd reassoc nsz arcp contract afn float %i.gq, %i.gr
  %i.gt = fptosi <2 x float> %i.gi to <2 x i32>
  %i.gu = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.gt, <2 x i32> zeroinitializer)
  %i.gv = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.gu, <2 x i32> splat (i32 65535))
  %i.gw = trunc nuw <2 x i32> %i.gv to <2 x i16>  ; 3 uses
  store <2 x i16> %i.gw, ptr %.5124, align 2, !tbaa !12
  %i.gx = fptosi float %i.gs to i32
  %i.gy = tail call i32 @llvm.smax.i32(i32 %i.gx, i32 0)
  %i.gz = tail call i32 @llvm.umin.i32(i32 %i.gy, i32 65535)
  %i.ha = trunc nuw i32 %i.gz to i16              ; 2 uses
  store i16 %i.ha, ptr %i.fs, align 2, !tbaa !12
  %i.hb = extractelement <2 x i16> %i.gw, i64 0
  %i.hc = lshr i16 %i.hb, 3
  %i.hd = zext nneg i16 %i.hc to i64
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.hd ; 2 uses
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !80
  %i.hg = add nsw i32 %i.hf, 1
  store i32 %i.hg, ptr %i.he, align 4, !tbaa !80
  %i.hh = extractelement <2 x i16> %i.gw, i64 1
  %i.hi = lshr i16 %i.hh, 3
  %i.hj = zext nneg i16 %i.hi to i64
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.hj ; 2 uses
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !80
  %i.hm = add nsw i32 %i.hl, 1
  store i32 %i.hm, ptr %i.hk, align 4, !tbaa !80
  %i.hn = lshr i16 %i.ha, 3
  %i.ho = zext nneg i16 %i.hn to i64
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.ho ; 2 uses
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !80
  %i.hr = add nsw i32 %i.hq, 1
  store i32 %i.hr, ptr %i.hp, align 4, !tbaa !80
  %i.hs = lshr i16 %i.fw, 3
  %i.ht = zext nneg i16 %i.hs to i64
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.ht ; 2 uses
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !80
  %i.hw = add nsw i32 %i.hv, 1
  store i32 %i.hw, ptr %i.hu, align 4, !tbaa !80
  %i.hx = add nuw nsw i32 %.299123, 1             ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.5124, i64 8 ; 2 uses
  %i.hz = load i16, ptr %i.fa, align 2, !tbaa !78 ; 2 uses
  %i.ia = zext i16 %i.hz to i32
  %i.ib = icmp samesign ult i32 %i.hx, %i.ia
  br i1 %i.ib, label %bb.g, label %._crit_edge126.loopexit, !llvm.loop !92

._crit_edge126.loopexit:                          ; preds = %bb.g
  %.pre153 = load i16, ptr %i.ex, align 4, !tbaa !77
  br label %._crit_edge126

._crit_edge126:                                   ; preds = %._crit_edge126.loopexit, %.preheader110
  %i.ic = phi i16 [ %i.fi, %.preheader110 ], [ %.pre153, %._crit_edge126.loopexit ] ; 2 uses
  %i.id = phi i16 [ 0, %.preheader110 ], [ %i.hz, %._crit_edge126.loopexit ]
  %.5.lcssa = phi ptr [ %.4129, %.preheader110 ], [ %i.hy, %._crit_edge126.loopexit ]
  %i.ie = add nuw nsw i32 %.2102128, 1            ; 2 uses
  %i.if = zext i16 %i.ic to i32
  %i.ig = icmp samesign ult i32 %i.ie, %i.if
  br i1 %i.ig, label %.preheader110, label %.loopexit, !llvm.loop !93

.loopexit:                                        ; preds = %._crit_edge118, %._crit_edge126, %._crit_edge133, %.preheader113.lr.ph.split, %bb.b, %.preheader113.lr.ph, %bb.f, %bb.d, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6LibRaw17scale_colors_loopEPf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768512) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.c = load i16, ptr %i.b, align 4, !tbaa !102
  %i.d = zext i16 %i.c to i32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 30 ; 5 uses
  %i.f = load i16, ptr %i.e, align 2, !tbaa !103
  %i.g = zext i16 %i.f to i32
  %i.h = mul nuw i32 %i.g, %i.d                   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136672 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136688
  %i.k = load i32, ptr %i.j, align 8, !tbaa !80   ; 5 uses
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136692
  %i.m = load i32, ptr %i.l, align 4, !tbaa !80   ; 9 uses
  %.not63 = icmp eq i32 %i.m, 0
  br i1 %.not63, label %bb.k, label %.preheader76

.preheader76:                                     ; preds = %bb.b
  %.not84 = icmp eq i32 %i.h, 0
  br i1 %.not84, label %.loopexit, label %.preheader75.lr.ph

.preheader75.lr.ph:                               ; preds = %.preheader76
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !79
  %wide.trip.count = zext i32 %i.h to i64
  %i.o = load i32, ptr %i.i, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136676
  %i.q = load i32, ptr %i.p, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136680
  %i.t = load i32, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 136684
  %i.w = load i32, ptr %i.v, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 12
  br label %.preheader75

.preheader75:                                     ; preds = %.preheader75.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.preheader75.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 6 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv ; 5 uses
  %i.z = load i16, ptr %i.y, align 2, !tbaa !12   ; 2 uses
  %.not69 = icmp eq i16 %i.z, 0
  br i1 %.not69, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader75
  %i.aa = zext i16 %i.z to i32
  %i.ab = load i16, ptr %i.e, align 2, !tbaa !103
  %i.ac = zext i16 %i.ab to i32                   ; 2 uses
  %i.ad = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ae = udiv i32 %i.ad, %i.ac
  %i.af = urem i32 %i.ae, %i.k
  %i.ag = mul i32 %i.af, %i.m
  %i.ah = add i32 %i.ag, 6
  %i.ai = urem i32 %i.ad, %i.ac
  %i.aj = urem i32 %i.ai, %i.m
  %i.ak = add i32 %i.ah, %i.aj
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !80
  %i.ao = add i32 %i.an, %i.o
  %i.ap = sub i32 %i.aa, %i.ao
  %i.aq = sitofp reassoc nsz arcp contract afn i32 %i.ap to float
  %i.ar = load float, ptr %1, align 4, !tbaa !81
  %i.as = fmul reassoc nsz arcp contract afn float %i.ar, %i.aq
  %i.at = fptosi float %i.as to i32
  %i.au = tail call i32 @llvm.smax.i32(i32 %i.at, i32 0)
  %i.av = tail call i32 @llvm.umin.i32(i32 %i.au, i32 65535)
  %i.aw = trunc nuw i32 %i.av to i16
  store i16 %i.aw, ptr %i.y, align 2, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %.preheader75, %bb.c
  %i.ax = getelementptr inbounds nuw i8, ptr %i.y, i64 2 ; 2 uses
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !12 ; 2 uses
  %.not69.1 = icmp eq i16 %i.ay, 0
  br i1 %.not69.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.az = zext i16 %i.ay to i32
  %i.ba = load i16, ptr %i.e, align 2, !tbaa !103
  %i.bb = zext i16 %i.ba to i32                   ; 2 uses
  %i.bc = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.bd = udiv i32 %i.bc, %i.bb
  %i.be = urem i32 %i.bd, %i.k
  %i.bf = mul i32 %i.be, %i.m
  %i.bg = add i32 %i.bf, 6
  %i.bh = urem i32 %i.bc, %i.bb
  %i.bi = urem i32 %i.bh, %i.m
  %i.bj = add i32 %i.bg, %i.bi
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !80
  %i.bn = add i32 %i.bm, %i.q
  %i.bo = sub i32 %i.az, %i.bn
  %i.bp = sitofp reassoc nsz arcp contract afn i32 %i.bo to float
  %i.bq = load float, ptr %i.r, align 4, !tbaa !81
  %i.br = fmul reassoc nsz arcp contract afn float %i.bq, %i.bp
  %i.bs = fptosi float %i.br to i32
  %i.bt = tail call i32 @llvm.smax.i32(i32 %i.bs, i32 0)
  %i.bu = tail call i32 @llvm.umin.i32(i32 %i.bt, i32 65535)
  %i.bv = trunc nuw i32 %i.bu to i16
  store i16 %i.bv, ptr %i.ax, align 2, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !12 ; 2 uses
  %.not69.2 = icmp eq i16 %i.bx, 0
  br i1 %.not69.2, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.by = zext i16 %i.bx to i32
  %i.bz = load i16, ptr %i.e, align 2, !tbaa !103
  %i.ca = zext i16 %i.bz to i32                   ; 2 uses
  %i.cb = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.cc = udiv i32 %i.cb, %i.ca
  %i.cd = urem i32 %i.cc, %i.k
  %i.ce = mul i32 %i.cd, %i.m
  %i.cf = add i32 %i.ce, 6
  %i.cg = urem i32 %i.cb, %i.ca
  %i.ch = urem i32 %i.cg, %i.m
  %i.ci = add i32 %i.cf, %i.ch
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !80
  %i.cm = add i32 %i.cl, %i.t
  %i.cn = sub i32 %i.by, %i.cm
  %i.co = sitofp reassoc nsz arcp contract afn i32 %i.cn to float
  %i.cp = load float, ptr %i.u, align 4, !tbaa !81
  %i.cq = fmul reassoc nsz arcp contract afn float %i.cp, %i.co
  %i.cr = fptosi float %i.cq to i32
  %i.cs = tail call i32 @llvm.smax.i32(i32 %i.cr, i32 0)
  %i.ct = tail call i32 @llvm.umin.i32(i32 %i.cs, i32 65535)
  %i.cu = trunc nuw i32 %i.ct to i16
  store i16 %i.cu, ptr %i.bw, align 2, !tbaa !12
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.cv = getelementptr inbounds nuw i8, ptr %i.y, i64 6 ; 2 uses
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !12 ; 2 uses
  %.not69.3 = icmp eq i16 %i.cw, 0
  br i1 %.not69.3, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cx = zext i16 %i.cw to i32
  %i.cy = load i16, ptr %i.e, align 2, !tbaa !103
  %i.cz = zext i16 %i.cy to i32                   ; 2 uses
  %i.da = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.db = udiv i32 %i.da, %i.cz
  %i.dc = urem i32 %i.db, %i.k
  %i.dd = mul i32 %i.dc, %i.m
  %i.de = add i32 %i.dd, 6
  %i.df = urem i32 %i.da, %i.cz
  %i.dg = urem i32 %i.df, %i.m
  %i.dh = add i32 %i.de, %i.dg
  %i.di = zext i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !80
  %i.dl = add i32 %i.dk, %i.w
  %i.dm = sub i32 %i.cx, %i.dl
  %i.dn = sitofp reassoc nsz arcp contract afn i32 %i.dm to float
  %i.do = load float, ptr %i.x, align 4, !tbaa !81
  %i.dp = fmul reassoc nsz arcp contract afn float %i.do, %i.dn
  %i.dq = fptosi float %i.dp to i32
  %i.dr = tail call i32 @llvm.smax.i32(i32 %i.dq, i32 0)
  %i.ds = tail call i32 @llvm.umin.i32(i32 %i.dr, i32 65535)
  %i.dt = trunc nuw i32 %i.ds to i16
  store i16 %i.dt, ptr %i.cv, align 2, !tbaa !12
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.preheader75, !llvm.loop !98

bb.k:                                             ; preds = %bb.b, %bb.a
  %2 = load <4 x i32>, ptr %i.i, align 8
  %i.du = load i32, ptr %i.i, align 8, !tbaa !80
  %.fr = freeze <4 x i32> %2
  %3 = icmp ne <4 x i32> %.fr, zeroinitializer
  %4 = bitcast <4 x i1> %3 to i4
  %i.dv = icmp eq i4 %4, 0
  %.not86 = icmp eq i32 %i.h, 0                   ; 2 uses
  br i1 %i.dv, label %.preheader72, label %5

.preheader72:                                     ; preds = %bb.k
  br i1 %.not86, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader72
  %i.dw = load ptr, ptr %i.a, align 8, !tbaa !79  ; 2 uses
  %wide.trip.count107 = zext i32 %i.h to i64      ; 3 uses
  %i.dx = load <4 x float>, ptr %1, align 4, !tbaa !81 ; 5 uses
  %min.iters.check = icmp ult i32 %i.h, 8
  br i1 %min.iters.check, label %.preheader.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.lr.ph
  %n.vec = and i64 %wide.trip.count107, 4294967288 ; 3 uses
  %broadcast.splat = shufflevector <4 x float> %i.dx, <4 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat129 = shufflevector <4 x float> %i.dx, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat131 = shufflevector <4 x float> %i.dx, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat133 = shufflevector <4 x float> %i.dx, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %index ; 2 uses
  %wide.vec = load <32 x i16>, ptr %i.dy, align 2, !tbaa !12 ; 4 uses
  %strided.vec = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec134 = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec135 = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec136 = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.dz = uitofp <8 x i16> %strided.vec to <8 x float>
  %i.ea = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat, %i.dz
  %i.eb = uitofp <8 x i16> %strided.vec134 to <8 x float>
  %i.ec = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat129, %i.eb
  %i.ed = uitofp <8 x i16> %strided.vec135 to <8 x float>
  %i.ee = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat131, %i.ed
  %i.ef = uitofp <8 x i16> %strided.vec136 to <8 x float>
  %i.eg = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat133, %i.ef
  %i.eh = shufflevector <8 x float> %i.ea, <8 x float> %i.ec, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ei = fptosi <16 x float> %i.eh to <16 x i32>
  %i.ej = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.ei, <16 x i32> zeroinitializer)
  %i.ek = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.ej, <16 x i32> splat (i32 65535))
  %i.el = trunc nuw <16 x i32> %i.ek to <16 x i16>
  %i.em = shufflevector <8 x float> %i.ee, <8 x float> %i.eg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.en = fptosi <16 x float> %i.em to <16 x i32>
  %i.eo = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.en, <16 x i32> zeroinitializer)
  %i.ep = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.eo, <16 x i32> splat (i32 65535))
  %i.eq = trunc nuw <16 x i32> %i.ep to <16 x i16>
  %interleaved.vec = shufflevector <16 x i16> %i.el, <16 x i16> %i.eq, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x i16> %interleaved.vec, ptr %i.dy, align 2, !tbaa !12
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.er = icmp eq i64 %index.next, %n.vec
  br i1 %i.er, label %middle.block, label %vector.body, !llvm.loop !99

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count107
  br i1 %cmp.n, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph, %middle.block
  %indvars.iv104.ph = phi i64 [ 0, %.preheader.lr.ph ], [ %n.vec, %middle.block ]
  br label %.preheader

5:                                                ; preds = %bb.k
  br i1 %.not86, label %.loopexit, label %.preheader73.lr.ph

.preheader73.lr.ph:                               ; preds = %5
  %6 = load ptr, ptr %i.a, align 8, !tbaa !79
  %wide.trip.count98 = zext i32 %i.h to i64
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 136676
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 136680
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 136684
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %13 = load i32, ptr %7, align 4
  %14 = load i32, ptr %9, align 8
  %15 = load i32, ptr %11, align 4
  br label %.preheader73

.preheader73:                                     ; preds = %.preheader73.lr.ph, %bb.s
  %indvars.iv95 = phi i64 [ 0, %.preheader73.lr.ph ], [ %indvars.iv.next96, %bb.s ] ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv95 ; 5 uses
  %i.et = load i16, ptr %i.es, align 2, !tbaa !12 ; 2 uses
  %.not68 = icmp eq i16 %i.et, 0
  br i1 %.not68, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.preheader73
  %i.eu = zext i16 %i.et to i32
  %i.ev = sub i32 %i.eu, %i.du
  %i.ew = sitofp reassoc nsz arcp contract afn i32 %i.ev to float
  %i.ex = load float, ptr %1, align 4, !tbaa !81
  %i.ey = fmul reassoc nsz arcp contract afn float %i.ex, %i.ew
  %i.ez = fptosi float %i.ey to i32
  %i.fa = tail call i32 @llvm.smax.i32(i32 %i.ez, i32 0)
  %i.fb = tail call i32 @llvm.umin.i32(i32 %i.fa, i32 65535)
  %i.fc = trunc nuw i32 %i.fb to i16
  store i16 %i.fc, ptr %i.es, align 2, !tbaa !12
  br label %bb.m

bb.m:                                             ; preds = %.preheader73, %bb.l
  %i.fd = getelementptr inbounds nuw i8, ptr %i.es, i64 2 ; 2 uses
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !12 ; 2 uses
  %.not68.1 = icmp eq i16 %i.fe, 0
  br i1 %.not68.1, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ff = zext i16 %i.fe to i32
  %i.fg = sub i32 %i.ff, %13
  %i.fh = sitofp reassoc nsz arcp contract afn i32 %i.fg to float
  %i.fi = load float, ptr %8, align 4, !tbaa !81
  %i.fj = fmul reassoc nsz arcp contract afn float %i.fi, %i.fh
  %i.fk = fptosi float %i.fj to i32
  %i.fl = tail call i32 @llvm.smax.i32(i32 %i.fk, i32 0)
  %i.fm = tail call i32 @llvm.umin.i32(i32 %i.fl, i32 65535)
  %i.fn = trunc nuw i32 %i.fm to i16
  store i16 %i.fn, ptr %i.fd, align 2, !tbaa !12
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.fo = getelementptr inbounds nuw i8, ptr %i.es, i64 4 ; 2 uses
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !12 ; 2 uses
  %.not68.2 = icmp eq i16 %i.fp, 0
  br i1 %.not68.2, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fq = zext i16 %i.fp to i32
  %i.fr = sub i32 %i.fq, %14
  %i.fs = sitofp reassoc nsz arcp contract afn i32 %i.fr to float
  %i.ft = load float, ptr %10, align 4, !tbaa !81
  %i.fu = fmul reassoc nsz arcp contract afn float %i.ft, %i.fs
  %i.fv = fptosi float %i.fu to i32
  %i.fw = tail call i32 @llvm.smax.i32(i32 %i.fv, i32 0)
  %i.fx = tail call i32 @llvm.umin.i32(i32 %i.fw, i32 65535)
  %i.fy = trunc nuw i32 %i.fx to i16
  store i16 %i.fy, ptr %i.fo, align 2, !tbaa !12
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.fz = getelementptr inbounds nuw i8, ptr %i.es, i64 6 ; 2 uses
  %i.ga = load i16, ptr %i.fz, align 2, !tbaa !12 ; 2 uses
  %.not68.3 = icmp eq i16 %i.ga, 0
  br i1 %.not68.3, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gb = zext i16 %i.ga to i32
  %i.gc = sub i32 %i.gb, %15
  %i.gd = sitofp reassoc nsz arcp contract afn i32 %i.gc to float
  %i.ge = load float, ptr %12, align 4, !tbaa !81
  %i.gf = fmul reassoc nsz arcp contract afn float %i.ge, %i.gd
  %i.gg = fptosi float %i.gf to i32
  %i.gh = tail call i32 @llvm.smax.i32(i32 %i.gg, i32 0)
  %i.gi = tail call i32 @llvm.umin.i32(i32 %i.gh, i32 65535)
  %i.gj = trunc nuw i32 %i.gi to i16
  store i16 %i.gj, ptr %i.fz, align 2, !tbaa !12
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %exitcond99.not = icmp eq i64 %indvars.iv.next96, %wide.trip.count98
  br i1 %exitcond99.not, label %.loopexit, label %.preheader73, !llvm.loop !100

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv104 = phi i64 [ %indvars.iv.next105, %.preheader ], [ %indvars.iv104.ph, %.preheader.preheader ] ; 2 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv104 ; 2 uses
  %i.gl = load <4 x i16>, ptr %i.gk, align 2, !tbaa !12
  %i.gm = uitofp <4 x i16> %i.gl to <4 x float>
  %i.gn = fmul reassoc nsz arcp contract afn <4 x float> %i.dx, %i.gm
  %i.go = fptosi <4 x float> %i.gn to <4 x i32>
  %i.gp = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.go, <4 x i32> zeroinitializer)
  %i.gq = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.gp, <4 x i32> splat (i32 65535))
  %i.gr = trunc nuw <4 x i32> %i.gq to <4 x i16>
  store <4 x i16> %i.gr, ptr %i.gk, align 2, !tbaa !12
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1 ; 2 uses
  %exitcond108.not = icmp eq i64 %indvars.iv.next105, %wide.trip.count107
  br i1 %exitcond108.not, label %.loopexit, label %.preheader, !llvm.loop !101

.loopexit:                                        ; preds = %bb.j, %bb.s, %.preheader, %middle.block, %.preheader76, %5, %.preheader72
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp2.f32(float) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.pow.v16f32(<16 x float>, <16 x float>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <5 x float> @llvm.masked.load.v5f32.p0(ptr captures(none), <5 x i1>, <5 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.umin.v2i32(<2 x i32>, <2 x i32>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.umin.v16i32(<16 x i32>, <16 x i32>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.smax.v16i32(<16 x i32>, <16 x i32>) #2

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"short", !7, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = !{!"any pointer", !7, i64 0}
!17 = !{!"p1 short", !16, i64 0}
!18 = !{!"double", !7, i64 0}
!19 = !{!"_ZTS20libraw_image_sizes_t", !11, i64 0, !11, i64 2, !11, i64 4, !11, i64 6, !11, i64 8, !11, i64 10, !11, i64 12, !11, i64 14, !8, i64 16, !18, i64 24, !8, i64 32, !7, i64 36, !11, i64 164, !7, i64 166}
!20 = !{!"p1 omnipotent char", !16, i64 0}
!21 = !{!"_ZTS16libraw_iparams_t", !7, i64 0, !7, i64 4, !7, i64 68, !7, i64 132, !7, i64 196, !7, i64 260, !8, i64 324, !8, i64 328, !8, i64 332, !8, i64 336, !8, i64 340, !8, i64 344, !7, i64 348, !7, i64 384, !7, i64 420, !8, i64 428, !20, i64 432}
!22 = !{!"float", !7, i64 0}
!23 = !{!"_ZTS18libraw_nikonlens_t", !22, i64 0, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7}
!24 = !{!"_ZTS16libraw_dnglens_t", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12}
!25 = !{!"long long", !7, i64 0}
!26 = !{!"_ZTS24libraw_makernotes_lens_t", !25, i64 0, !7, i64 8, !11, i64 136, !11, i64 138, !25, i64 144, !11, i64 152, !11, i64 154, !7, i64 156, !11, i64 220, !7, i64 222, !7, i64 238, !22, i64 256, !22, i64 260, !22, i64 264, !22, i64 268, !22, i64 272, !22, i64 276, !22, i64 280, !22, i64 284, !22, i64 288, !22, i64 292, !22, i64 296, !22, i64 300, !22, i64 304, !22, i64 308, !22, i64 312, !25, i64 320, !7, i64 328, !25, i64 456, !7, i64 464, !25, i64 592, !7, i64 600, !11, i64 728, !22, i64 732}
!27 = !{!"_ZTS17libraw_lensinfo_t", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !22, i64 16, !7, i64 20, !7, i64 148, !7, i64 276, !7, i64 404, !11, i64 532, !23, i64 536, !24, i64 544, !26, i64 560}
!28 = !{!"_ZTS13libraw_area_t", !11, i64 0, !11, i64 2, !11, i64 4, !11, i64 6}
!29 = !{!"_ZTS25libraw_canon_makernotes_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !7, i64 16, !8, i64 32, !7, i64 36, !11, i64 52, !11, i64 54, !7, i64 56, !11, i64 58, !11, i64 60, !11, i64 62, !11, i64 64, !11, i64 66, !11, i64 68, !11, i64 70, !11, i64 72, !11, i64 74, !11, i64 76, !11, i64 78, !11, i64 80, !11, i64 82, !8, i64 84, !22, i64 88, !11, i64 92, !11, i64 94, !11, i64 96, !11, i64 98, !8, i64 100, !11, i64 104, !8, i64 108, !8, i64 112, !11, i64 116, !8, i64 120, !28, i64 124, !28, i64 132, !28, i64 140, !28, i64 148, !28, i64 156, !7, i64 164}
!30 = !{!"_ZTS30libraw_sensor_highspeed_crop_t", !11, i64 0, !11, i64 2, !11, i64 4, !11, i64 6}
!31 = !{!"_ZTS25libraw_nikon_makernotes_t", !18, i64 0, !11, i64 8, !11, i64 10, !7, i64 12, !7, i64 19, !7, i64 20, !7, i64 21, !7, i64 34, !7, i64 54, !7, i64 58, !7, i64 62, !7, i64 66, !7, i64 67, !7, i64 68, !7, i64 69, !7, i64 70, !7, i64 71, !7, i64 73, !7, i64 74, !7, i64 75, !7, i64 76, !7, i64 77, !7, i64 78, !7, i64 82, !7, i64 86, !11, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !7, i64 112, !7, i64 144, !7, i64 145, !7, i64 146, !8, i64 148, !8, i64 152, !8, i64 156, !7, i64 160, !7, i64 162, !11, i64 170, !30, i64 172, !11, i64 180, !11, i64 182, !11, i64 184, !8, i64 188, !7, i64 192, !7, i64 212, !8, i64 232, !7, i64 236, !8, i64 248, !20, i64 256, !11, i64 264, !11, i64 266, !7, i64 268, !11, i64 270, !18, i64 272, !18, i64 280, !18, i64 288}
!32 = !{!"_ZTS30libraw_hasselblad_makernotes_t", !8, i64 0, !18, i64 8, !7, i64 16, !7, i64 24, !7, i64 88, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !7, i64 168, !7, i64 200, !8, i64 264, !7, i64 268, !7, i64 276, !7, i64 288}
!33 = !{!"_ZTS18libraw_fuji_info_t", !22, i64 0, !11, i64 4, !11, i64 6, !11, i64 8, !11, i64 10, !11, i64 12, !11, i64 14, !11, i64 16, !11, i64 18, !7, i64 20, !7, i64 53, !22, i64 88, !11, i64 92, !11, i64 94, !7, i64 96, !11, i64 100, !8, i64 104, !8, i64 108, !11, i64 112, !7, i64 114, !11, i64 120, !11, i64 122, !11, i64 124, !11, i64 126, !11, i64 128, !8, i64 132, !11, i64 136, !7, i64 138, !7, i64 151, !7, i64 156, !8, i64 164, !11, i64 168, !8, i64 172, !11, i64 176, !7, i64 178, !7, i64 196, !8, i64 324, !8, i64 328, !8, i64 332, !7, i64 336, !8, i64 344}
!34 = !{!"_ZTS27libraw_olympus_makernotes_t", !7, i64 0, !11, i64 6, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !7, i64 64, !7, i64 72, !11, i64 82, !7, i64 84, !11, i64 88, !11, i64 90, !7, i64 92, !7, i64 352, !11, i64 392, !7, i64 394, !7, i64 396, !7, i64 404, !11, i64 416, !11, i64 418, !11, i64 420, !11, i64 422, !18, i64 424, !7, i64 432, !7, i64 440, !7, i64 448, !8, i64 452, !11, i64 456, !11, i64 458}
!35 = !{!"_ZTS18libraw_sony_info_t", !11, i64 0, !7, i64 2, !7, i64 3, !8, i64 4, !7, i64 8, !8, i64 12, !7, i64 16, !7, i64 17, !11, i64 18, !7, i64 20, !7, i64 24, !7, i64 25, !11, i64 26, !7, i64 28, !7, i64 38, !7, i64 39, !7, i64 40, !11, i64 48, !7, i64 50, !7, i64 51, !7, i64 52, !11, i64 54, !8, i64 56, !11, i64 60, !7, i64 62, !11, i64 66, !11, i64 68, !11, i64 70, !11, i64 72, !11, i64 74, !11, i64 76, !11, i64 78, !8, i64 80, !22, i64 84, !11, i64 88, !8, i64 92, !8, i64 96, !11, i64 100, !7, i64 102, !8, i64 124, !11, i64 128, !8, i64 132, !7, i64 136, !7, i64 137, !11, i64 138, !11, i64 140, !11, i64 142, !11, i64 144, !11, i64 146, !11, i64 148, !11, i64 150, !11, i64 152, !11, i64 154, !8, i64 156, !11, i64 160, !7, i64 162, !22, i64 180}
!36 = !{!"_ZTS25libraw_kodak_makernotes_t", !11, i64 0, !11, i64 2, !11, i64 4, !11, i64 6, !11, i64 8, !11, i64 10, !7, i64 12, !7, i64 48, !7, i64 84, !7, i64 120, !7, i64 156, !7, i64 192, !11, i64 228, !11, i64 230, !11, i64 232, !11, i64 234, !22, i64 236, !22, i64 240}
!37 = !{!"_ZTS29libraw_panasonic_makernotes_t", !11, i64 0, !11, i64 2, !7, i64 4, !8, i64 36, !22, i64 40, !7, i64 44, !11, i64 56, !11, i64 58, !8, i64 60, !8, i64 64}
!38 = !{!"_ZTS26libraw_pentax_makernotes_t", !7, i64 0, !7, i64 4, !7, i64 8, !11, i64 12, !8, i64 16, !8, i64 20, !11, i64 24, !7, i64 26, !11, i64 30, !7, i64 32, !7, i64 33, !11, i64 34}
!39 = !{!"_ZTS22libraw_p1_makernotes_t", !7, i64 0, !7, i64 64, !7, i64 128, !7, i64 384}
!40 = !{!"_ZTS25libraw_ricoh_makernotes_t", !11, i64 0, !7, i64 4, !7, i64 12, !11, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !11, i64 40, !11, i64 42, !11, i64 44, !11, i64 46, !11, i64 48, !11, i64 50, !18, i64 56, !18, i64 64}
!41 = !{!"_ZTS27libraw_samsung_makernotes_t", !7, i64 0, !7, i64 16, !7, i64 32, !7, i64 40, !18, i64 88, !8, i64 96, !7, i64 100}
!42 = !{!"_ZTS24libraw_metadata_common_t", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !22, i64 16, !22, i64 20, !22, i64 24, !22, i64 28, !22, i64 32, !22, i64 36, !22, i64 40, !22, i64 44, !22, i64 48, !22, i64 52, !22, i64 56, !22, i64 60, !11, i64 64, !7, i64 66, !22, i64 196, !7, i64 200, !8, i64 296}
!43 = !{!"_ZTS19libraw_makernotes_t", !29, i64 0, !31, i64 168, !32, i64 464, !33, i64 848, !34, i64 1200, !35, i64 1664, !36, i64 1848, !37, i64 2092, !38, i64 2160, !39, i64 2196, !40, i64 2648, !41, i64 2720, !42, i64 2856}
!44 = !{!"_ZTS21libraw_shootinginfo_t", !11, i64 0, !11, i64 2, !11, i64 4, !11, i64 6, !11, i64 8, !11, i64 10, !11, i64 12, !7, i64 14, !7, i64 78}
!45 = !{!"_ZTS22libraw_output_params_t", !7, i64 0, !7, i64 16, !7, i64 32, !7, i64 64, !7, i64 112, !22, i64 128, !22, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !8, i64 160, !20, i64 168, !20, i64 176, !20, i64 184, !20, i64 192, !8, i64 200, !8, i64 204, !8, i64 208, !8, i64 212, !8, i64 216, !8, i64 220, !7, i64 224, !8, i64 240, !8, i64 244, !22, i64 248, !22, i64 252, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !22, i64 288, !22, i64 292, !8, i64 296, !8, i64 300}
!46 = !{!"any p2 pointer", !16, i64 0}
!47 = !{!"p2 omnipotent char", !46, i64 0}
!48 = !{!"_ZTS26libraw_raw_unpack_params_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !22, i64 28, !7, i64 32, !47, i64 40}
!49 = !{!"_ZTS5ph1_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !22, i64 32}
!50 = !{!"_ZTS19libraw_dng_levels_t", !8, i64 0, !7, i64 4, !8, i64 16420, !7, i64 16424, !22, i64 32840, !7, i64 32844, !7, i64 32860, !7, i64 32868, !8, i64 32884, !7, i64 32888, !7, i64 32904, !22, i64 32920, !22, i64 32924, !7, i64 32928}
!51 = !{!"_ZTS18libraw_colordata_t", !7, i64 0, !7, i64 131072, !8, i64 147488, !8, i64 147492, !8, i64 147496, !7, i64 147500, !22, i64 147516, !22, i64 147520, !7, i64 147524, !7, i64 147652, !7, i64 147668, !7, i64 147684, !7, i64 147732, !7, i64 147780, !7, i64 147828, !49, i64 147876, !22, i64 147912, !22, i64 147916, !7, i64 147920, !7, i64 147984, !7, i64 148048, !7, i64 148112, !7, i64 148176, !7, i64 148193, !16, i64 148264, !8, i64 148272, !7, i64 148276, !7, i64 148308, !50, i64 148648, !7, i64 181624, !7, i64 185720, !8, i64 187000, !7, i64 187004, !8, i64 187076, !8, i64 187080}
!52 = !{!"long", !7, i64 0}
!53 = !{!"_ZTS17libraw_gps_info_t", !7, i64 0, !7, i64 12, !7, i64 24, !22, i64 36, !7, i64 40, !7, i64 41, !7, i64 42, !7, i64 43, !7, i64 44}
!54 = !{!"_ZTS17libraw_imgother_t", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !52, i64 16, !8, i64 24, !7, i64 28, !53, i64 156, !7, i64 204, !7, i64 716, !7, i64 780}
!55 = !{!"_ZTS24LibRaw_thumbnail_formats", !7, i64 0}
!56 = !{!"_ZTS18libraw_thumbnail_t", !55, i64 0, !11, i64 4, !11, i64 6, !8, i64 8, !8, i64 12, !20, i64 16}
!57 = !{!"_ZTS23libraw_thumbnail_list_t", !8, i64 0, !7, i64 8}
!58 = !{!"p1 float", !16, i64 0}
!59 = !{!"_ZTS31libraw_internal_output_params_t", !8, i64 0, !8, i64 4, !8, i64 8, !11, i64 12, !11, i64 14}
!60 = !{!"_ZTS16libraw_rawdata_t", !16, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !58, i64 32, !58, i64 40, !58, i64 48, !17, i64 56, !17, i64 64, !21, i64 72, !19, i64 512, !59, i64 696, !51, i64 712}
!61 = !{!"_ZTS13libraw_data_t", !17, i64 0, !19, i64 8, !21, i64 192, !27, i64 632, !43, i64 1928, !44, i64 5088, !45, i64 5232, !48, i64 5536, !8, i64 5584, !8, i64 5588, !51, i64 5592, !54, i64 192680, !56, i64 193480, !57, i64 193504, !60, i64 193768, !16, i64 381568}
!62 = !{!"p1 _ZTS10LibRaw_TLS", !16, i64 0}
!63 = !{!"p1 _ZTS26LibRaw_abstract_datastream", !16, i64 0}
!64 = !{!"p1 _ZTS8_IO_FILE", !16, i64 0}
!65 = !{!"_ZTS15internal_data_t", !63, i64 0, !64, i64 8, !8, i64 16, !20, i64 24, !25, i64 32, !25, i64 40, !7, i64 48}
!66 = !{!"p1 int", !16, i64 0}
!67 = !{!"_ZTS13output_data_t", !66, i64 0, !66, i64 8}
!68 = !{!"_ZTS15identify_data_t", !8, i64 0, !25, i64 8, !25, i64 16, !8, i64 24, !8, i64 28, !8, i64 32}
!69 = !{!"_ZTS33LibRaw_internal_thumbnail_formats", !7, i64 0}
!70 = !{!"_ZTS12pana8_tags_t", !7, i64 0, !7, i64 24, !11, i64 36, !7, i64 38, !7, i64 46, !7, i64 80, !7, i64 114, !11, i64 148, !11, i64 150, !7, i64 152, !7, i64 192, !7, i64 204, !7, i64 224, !7, i64 234}
!71 = !{!"_ZTS15unpacker_data_t", !11, i64 0, !7, i64 2, !7, i64 10, !8, i64 16, !25, i64 24, !25, i64 32, !25, i64 40, !25, i64 48, !25, i64 56, !25, i64 64, !25, i64 72, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !69, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !25, i64 144, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !8, i64 180, !8, i64 184, !70, i64 192, !7, i64 440, !8, i64 2488, !8, i64 2492, !11, i64 2496, !11, i64 2498, !8, i64 2500, !8, i64 2504, !8, i64 2508, !8, i64 2512, !8, i64 2516, !8, i64 2520, !8, i64 2524, !7, i64 2528, !11, i64 2608}
!72 = !{!"_ZTS22libraw_internal_data_t", !65, i64 0, !59, i64 64, !67, i64 80, !68, i64 96, !71, i64 136}
!73 = !{!"p1 _ZTS6decode", !16, i64 0}
!74 = !{!"_ZTS13libraw_memmgr", !46, i64 0, !8, i64 8}
!75 = !{!"_ZTS18libraw_callbacks_t", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !16, i64 80, !16, i64 88, !16, i64 96, !16, i64 104, !16, i64 112, !16, i64 120, !16, i64 128, !16, i64 136, !16, i64 144}
!76 = !{!"_ZTS6LibRaw", !61, i64 8, !62, i64 381584, !72, i64 381592, !7, i64 384344, !73, i64 433496, !73, i64 433504, !7, i64 433512, !74, i64 768232, !75, i64 768248, !7, i64 768400, !7, i64 768416, !7, i64 768432, !16, i64 768448, !16, i64 768456, !16, i64 768464, !52, i64 768472, !16, i64 768480, !16, i64 768488, !16, i64 768496, !16, i64 768504}
!77 = !{!76, !11, i64 20}
!78 = !{!76, !11, i64 22}
!79 = !{!76, !17, i64 8}
!80 = !{!8, !8, i64 0}
!81 = !{!22, !22, i64 0}
!82 = distinct !{!82, !13, !14, !15}
!83 = distinct !{!83, !13, !14, !15}
!84 = distinct !{!84, !13}
!85 = !{!76, !8, i64 153092}
!86 = !{!76, !8, i64 153096}
!87 = distinct !{!87, !13}
!88 = distinct !{!88, !13, !97}
!89 = distinct !{!89, !13, !97}
!90 = distinct !{!90, !13}
!91 = distinct !{!91, !13}
!92 = distinct !{!92, !13}
!93 = distinct !{!93, !13}
!94 = !{!76, !66, i64 381672}
!95 = !{!76, !8, i64 381660}
!96 = !{!76, !8, i64 540}
!97 = !{!"llvm.loop.unswitch.partial.disable"}
!98 = distinct !{!98, !13}
!99 = distinct !{!99, !13, !14, !15}
!100 = distinct !{!100, !13}
!101 = distinct !{!101, !13, !15, !14}
!102 = !{!76, !11, i64 28}
!103 = !{!76, !11, i64 30}
end_hunk_0
