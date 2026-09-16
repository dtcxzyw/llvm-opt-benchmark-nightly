Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/postprocessing_utils?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN6LibRaw19convert_to_rgb_loopEPA4_f:bb.a
  %i.cm = tail call i32 @llvm.smax.i32(i32 %i.cl, i32 0)
  %i.cn = tail call i32 @llvm.umin.i32(i32 %i.cm, i32 65535)
  %i.co = trunc nuw i32 %i.cn to i16              ; 2 uses
  store i16 %i.co, ptr %i.bs, align 2, !tbaa !9
  %i.cp = extractelement <2 x i16> %i.ck, i64 0
  %i.cq = lshr i16 %i.cp, 3
  %i.cr = zext nneg i16 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.cr ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !77
  %i.cu = add nsw i32 %i.ct, 1
  store i32 %i.cu, ptr %i.cs, align 4, !tbaa !77
  %i.cv = extractelement <2 x i16> %i.ck, i64 1
  %i.cw = lshr i16 %i.cv, 3
  %i.cx = zext nneg i16 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.cx ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !77
  %i.da = add nsw i32 %i.cz, 1
  store i32 %i.da, ptr %i.cy, align 4, !tbaa !77
  %i.db = lshr i16 %i.co, 3
  %i.dc = zext nneg i16 %i.db to i64
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.dc ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !77
  %i.df = add nsw i32 %i.de, 1
  store i32 %i.df, ptr %i.dd, align 4, !tbaa !77
  %i.dg = add nuw nsw i32 %.198130, 1             ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.3131, i64 8 ; 2 uses
  %i.di = load i16, ptr %i.av, align 2, !tbaa !75 ; 2 uses
  %i.dj = zext i16 %i.di to i32
  %i.dk = icmp samesign ult i32 %i.dg, %i.dj
  br i1 %i.dk, label %bb.e, label %._crit_edge133.loopexit, !llvm.loop !87

._crit_edge133.loopexit:                          ; preds = %bb.e
  %.pre155 = load i16, ptr %i.as, align 4, !tbaa !74
  br label %._crit_edge133

._crit_edge133:                                   ; preds = %._crit_edge133.loopexit, %.preheader
  %i.dl = phi i16 [ %i.bf, %.preheader ], [ %.pre155, %._crit_edge133.loopexit ] ; 2 uses
  %i.dm = phi i16 [ 0, %.preheader ], [ %i.di, %._crit_edge133.loopexit ]
  %.3.lcssa = phi ptr [ %.2136, %.preheader ], [ %i.dh, %._crit_edge133.loopexit ]
  %i.dn = add nuw nsw i32 %.1101135, 1            ; 2 uses
  %i.do = zext i16 %i.dl to i32
  %i.dp = icmp samesign ult i32 %i.dn, %i.do
  br i1 %i.dp, label %.preheader, label %.loopexit, !llvm.loop !88

bb.f:                                             ; preds = %bb.c
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.dr = load i16, ptr %i.dq, align 4, !tbaa !74 ; 2 uses
  %.not139 = icmp eq i16 %i.dr, 0
  br i1 %.not139, label %.loopexit, label %.preheader110.lr.ph

.preheader110.lr.ph:                              ; preds = %bb.f
  %i.ds = load ptr, ptr %i.e, align 8, !tbaa !76
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.dy = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 32768
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 65536
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 98304
  %.pre = load i16, ptr %i.dt, align 2, !tbaa !75
  br label %.preheader110

.preheader110:                                    ; preds = %.preheader110.lr.ph, %._crit_edge126
  %i.ec = phi i16 [ %i.dr, %.preheader110.lr.ph ], [ %i.gr, %._crit_edge126 ]
  %i.ed = phi i16 [ %.pre, %.preheader110.lr.ph ], [ %i.gs, %._crit_edge126 ]
  %.4129 = phi ptr [ %i.ds, %.preheader110.lr.ph ], [ %.5.lcssa, %._crit_edge126 ] ; 2 uses
  %.2102128 = phi i32 [ 0, %.preheader110.lr.ph ], [ %i.gt, %._crit_edge126 ]
  %.not140 = icmp eq i16 %i.ed, 0
  br i1 %.not140, label %._crit_edge126, label %.lr.ph125

.lr.ph125:                                        ; preds = %.preheader110
  %i.ee = load <8 x float>, ptr %1, align 4, !tbaa !78 ; 4 uses
  %i.ef = load float, ptr %i.du, align 4, !tbaa !78
  %i.eg = load float, ptr %i.dv, align 4, !tbaa !78
  %i.eh = load float, ptr %i.dw, align 4, !tbaa !78
  %i.ei = load float, ptr %i.dx, align 4, !tbaa !78
  %i.ej = shufflevector <8 x float> %i.ee, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.ek = shufflevector <8 x float> %i.ee, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %i.el = shufflevector <8 x float> %i.ee, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.em = shufflevector <8 x float> %i.ee, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph125, %bb.g
  %.5124 = phi ptr [ %.4129, %.lr.ph125 ], [ %i.gn, %bb.g ] ; 5 uses
  %.299123 = phi i32 [ 0, %.lr.ph125 ], [ %i.gm, %bb.g ]
  %i.en = getelementptr inbounds nuw i8, ptr %.5124, i64 4
  %i.eo = getelementptr inbounds nuw i8, ptr %.5124, i64 6
  %i.ep = load <4 x i16>, ptr %.5124, align 2, !tbaa !9
  %i.eq = load i16, ptr %i.eo, align 2, !tbaa !9
  %i.er = uitofp <4 x i16> %i.ep to <4 x float>   ; 8 uses
  %i.es = shufflevector <4 x float> %i.er, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.et = fmul <2 x float> %i.em, %i.es
  %i.eu = shufflevector <4 x float> %i.er, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ev = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.el, <2 x float> %i.eu, <2 x float> %i.et)
  %i.ew = shufflevector <4 x float> %i.er, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ex = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ek, <2 x float> %i.ew, <2 x float> %i.ev)
  %i.ey = shufflevector <4 x float> %i.er, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.ez = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ej, <2 x float> %i.ey, <2 x float> %i.ex)
  %i.fa = extractelement <4 x float> %i.er, i64 1
  %i.fb = fmul float %i.eg, %i.fa
  %i.fc = extractelement <4 x float> %i.er, i64 0
  %i.fd = tail call float @llvm.fmuladd.f32(float %i.ef, float %i.fc, float %i.fb)
  %i.fe = extractelement <4 x float> %i.er, i64 2
  %i.ff = tail call float @llvm.fmuladd.f32(float %i.eh, float %i.fe, float %i.fd)
  %i.fg = extractelement <4 x float> %i.er, i64 3
  %i.fh = tail call float @llvm.fmuladd.f32(float %i.ei, float %i.fg, float %i.ff)
  %i.fi = fptosi <2 x float> %i.ez to <2 x i32>
  %i.fj = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.fi, <2 x i32> zeroinitializer)
  %i.fk = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.fj, <2 x i32> splat (i32 65535))
  %i.fl = trunc nuw <2 x i32> %i.fk to <2 x i16>  ; 3 uses
  store <2 x i16> %i.fl, ptr %.5124, align 2, !tbaa !9
  %i.fm = fptosi float %i.fh to i32
  %i.fn = tail call i32 @llvm.smax.i32(i32 %i.fm, i32 0)
  %i.fo = tail call i32 @llvm.umin.i32(i32 %i.fn, i32 65535)
  %i.fp = trunc nuw i32 %i.fo to i16              ; 2 uses
  store i16 %i.fp, ptr %i.en, align 2, !tbaa !9
  %i.fq = extractelement <2 x i16> %i.fl, i64 0
  %i.fr = lshr i16 %i.fq, 3
  %i.fs = zext nneg i16 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.fs ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !77
  %i.fv = add nsw i32 %i.fu, 1
  store i32 %i.fv, ptr %i.ft, align 4, !tbaa !77
  %i.fw = extractelement <2 x i16> %i.fl, i64 1
  %i.fx = lshr i16 %i.fw, 3
  %i.fy = zext nneg i16 %i.fx to i64
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.fy ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !77
  %i.gb = add nsw i32 %i.ga, 1
  store i32 %i.gb, ptr %i.fz, align 4, !tbaa !77
  %i.gc = lshr i16 %i.fp, 3
  %i.gd = zext nneg i16 %i.gc to i64
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.gd ; 2 uses
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !77
  %i.gg = add nsw i32 %i.gf, 1
  store i32 %i.gg, ptr %i.ge, align 4, !tbaa !77
  %i.gh = lshr i16 %i.eq, 3
  %i.gi = zext nneg i16 %i.gh to i64
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.gi ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !77
  %i.gl = add nsw i32 %i.gk, 1
  store i32 %i.gl, ptr %i.gj, align 4, !tbaa !77
  %i.gm = add nuw nsw i32 %.299123, 1             ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.5124, i64 8 ; 2 uses
  %i.go = load i16, ptr %i.dt, align 2, !tbaa !75 ; 2 uses
  %i.gp = zext i16 %i.go to i32
  %i.gq = icmp samesign ult i32 %i.gm, %i.gp
  br i1 %i.gq, label %bb.g, label %._crit_edge126.loopexit, !llvm.loop !89

._crit_edge126.loopexit:                          ; preds = %bb.g
  %.pre153 = load i16, ptr %i.dq, align 4, !tbaa !74
  br label %._crit_edge126

._crit_edge126:                                   ; preds = %._crit_edge126.loopexit, %.preheader110
  %i.gr = phi i16 [ %i.ec, %.preheader110 ], [ %.pre153, %._crit_edge126.loopexit ] ; 2 uses
  %i.gs = phi i16 [ 0, %.preheader110 ], [ %i.go, %._crit_edge126.loopexit ]
  %.5.lcssa = phi ptr [ %.4129, %.preheader110 ], [ %i.gn, %._crit_edge126.loopexit ]
  %i.gt = add nuw nsw i32 %.2102128, 1            ; 2 uses
  %i.gu = zext i16 %i.gr to i32
  %i.gv = icmp samesign ult i32 %i.gt, %i.gu
  br i1 %i.gv, label %.preheader110, label %.loopexit, !llvm.loop !90

.loopexit:                                        ; preds = %._crit_edge118, %._crit_edge126, %._crit_edge133, %.preheader113.lr.ph.split, %bb.b, %.preheader113.lr.ph, %bb.f, %bb.d, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6LibRaw17scale_colors_loopEPf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768512) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.c = load i16, ptr %i.b, align 4, !tbaa !99
  %i.d = zext i16 %i.c to i32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 30 ; 5 uses
  %i.f = load i16, ptr %i.e, align 2, !tbaa !100
  %i.g = zext i16 %i.f to i32
  %i.h = mul nuw i32 %i.g, %i.d                   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136672 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136688
  %i.k = load i32, ptr %i.j, align 8, !tbaa !77   ; 5 uses
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136692
  %i.m = load i32, ptr %i.l, align 4, !tbaa !77   ; 9 uses
  %.not63 = icmp eq i32 %i.m, 0
  br i1 %.not63, label %bb.k, label %.preheader76

.preheader76:                                     ; preds = %bb.b
  %.not84 = icmp eq i32 %i.h, 0
  br i1 %.not84, label %.loopexit, label %.preheader75.lr.ph

.preheader75.lr.ph:                               ; preds = %.preheader76
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !76
  %smax = tail call i32 @llvm.smax.i32(i32 %i.h, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
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
  %i.z = load i16, ptr %i.y, align 2, !tbaa !9    ; 2 uses
  %.not69 = icmp eq i16 %i.z, 0
  br i1 %.not69, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader75
  %i.aa = zext i16 %i.z to i32
  %i.ab = load i16, ptr %i.e, align 2, !tbaa !100
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
  %i.an = load i32, ptr %i.am, align 4, !tbaa !77
  %i.ao = add i32 %i.an, %i.o
  %i.ap = sub i32 %i.aa, %i.ao
  %i.aq = sitofp i32 %i.ap to float
  %i.ar = load float, ptr %1, align 4, !tbaa !78
  %i.as = fmul float %i.ar, %i.aq
  %i.at = fptosi float %i.as to i32
  %i.au = tail call i32 @llvm.smax.i32(i32 %i.at, i32 0)
  %i.av = tail call i32 @llvm.umin.i32(i32 %i.au, i32 65535)
  %i.aw = trunc nuw i32 %i.av to i16
  store i16 %i.aw, ptr %i.y, align 2, !tbaa !9
  br label %bb.d

bb.d:                                             ; preds = %.preheader75, %bb.c
  %i.ax = getelementptr inbounds nuw i8, ptr %i.y, i64 2 ; 2 uses
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !9  ; 2 uses
  %.not69.1 = icmp eq i16 %i.ay, 0
  br i1 %.not69.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.az = zext i16 %i.ay to i32
  %i.ba = load i16, ptr %i.e, align 2, !tbaa !100
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
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !77
  %i.bn = add i32 %i.bm, %i.q
  %i.bo = sub i32 %i.az, %i.bn
  %i.bp = sitofp i32 %i.bo to float
  %i.bq = load float, ptr %i.r, align 4, !tbaa !78
  %i.br = fmul float %i.bq, %i.bp
  %i.bs = fptosi float %i.br to i32
  %i.bt = tail call i32 @llvm.smax.i32(i32 %i.bs, i32 0)
  %i.bu = tail call i32 @llvm.umin.i32(i32 %i.bt, i32 65535)
  %i.bv = trunc nuw i32 %i.bu to i16
  store i16 %i.bv, ptr %i.ax, align 2, !tbaa !9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !9  ; 2 uses
  %.not69.2 = icmp eq i16 %i.bx, 0
  br i1 %.not69.2, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.by = zext i16 %i.bx to i32
  %i.bz = load i16, ptr %i.e, align 2, !tbaa !100
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
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !77
  %i.cm = add i32 %i.cl, %i.t
  %i.cn = sub i32 %i.by, %i.cm
  %i.co = sitofp i32 %i.cn to float
  %i.cp = load float, ptr %i.u, align 4, !tbaa !78
  %i.cq = fmul float %i.cp, %i.co
  %i.cr = fptosi float %i.cq to i32
  %i.cs = tail call i32 @llvm.smax.i32(i32 %i.cr, i32 0)
  %i.ct = tail call i32 @llvm.umin.i32(i32 %i.cs, i32 65535)
  %i.cu = trunc nuw i32 %i.ct to i16
  store i16 %i.cu, ptr %i.bw, align 2, !tbaa !9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.cv = getelementptr inbounds nuw i8, ptr %i.y, i64 6 ; 2 uses
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !9  ; 2 uses
  %.not69.3 = icmp eq i16 %i.cw, 0
  br i1 %.not69.3, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cx = zext i16 %i.cw to i32
  %i.cy = load i16, ptr %i.e, align 2, !tbaa !100
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
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !77
  %i.dl = add i32 %i.dk, %i.w
  %i.dm = sub i32 %i.cx, %i.dl
  %i.dn = sitofp i32 %i.dm to float
  %i.do = load float, ptr %i.x, align 4, !tbaa !78
  %i.dp = fmul float %i.do, %i.dn
  %i.dq = fptosi float %i.dp to i32
  %i.dr = tail call i32 @llvm.smax.i32(i32 %i.dq, i32 0)
  %i.ds = tail call i32 @llvm.umin.i32(i32 %i.dr, i32 65535)
  %i.dt = trunc nuw i32 %i.ds to i16
  store i16 %i.dt, ptr %i.cv, align 2, !tbaa !9
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.preheader75, !llvm.loop !95

bb.k:                                             ; preds = %bb.b, %bb.a
  %i.du = load <4 x i32>, ptr %i.i, align 8
  %i.dv = load i32, ptr %i.i, align 8, !tbaa !77
  %.fr = freeze <4 x i32> %i.du
  %i.dw = icmp ne <4 x i32> %.fr, zeroinitializer
  %i.dx = bitcast <4 x i1> %i.dw to i4
  %i.dy = icmp eq i4 %i.dx, 0
  %.not86 = icmp eq i32 %i.h, 0                   ; 2 uses
  br i1 %i.dy, label %.preheader72, label %bb.l

.preheader72:                                     ; preds = %bb.k
  br i1 %.not86, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader72
  %i.dz = load ptr, ptr %i.a, align 8, !tbaa !76  ; 9 uses
  %smax108 = tail call i32 @llvm.smax.i32(i32 %i.h, i32 1)
  %wide.trip.count107 = zext nneg i32 %smax108 to i64 ; 3 uses
  %i.ea = load <4 x float>, ptr %1, align 4, !tbaa !78 ; 5 uses
  %min.iters.check = icmp slt i32 %i.h, 8
  br i1 %min.iters.check, label %.preheader.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.lr.ph
  %n.vec = and i64 %wide.trip.count107, 2147483640 ; 3 uses
  %broadcast.splat = shufflevector <4 x float> %i.ea, <4 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat129 = shufflevector <4 x float> %i.ea, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat131 = shufflevector <4 x float> %i.ea, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat133 = shufflevector <4 x float> %i.ea, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %index ; 5 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %index ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %index ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %index ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %index ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %index ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 40
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %index ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 48
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %index ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 56
  %i.eq = load i16, ptr %i.eb, align 2, !tbaa !9
  %i.er = load i16, ptr %i.ed, align 2, !tbaa !9
  %i.es = load i16, ptr %i.ef, align 2, !tbaa !9
  %i.et = load i16, ptr %i.eh, align 2, !tbaa !9
  %i.eu = load i16, ptr %i.ej, align 2, !tbaa !9
  %i.ev = load i16, ptr %i.el, align 2, !tbaa !9
  %i.ew = load i16, ptr %i.en, align 2, !tbaa !9
  %i.ex = load i16, ptr %i.ep, align 2, !tbaa !9
  %i.ey = insertelement <8 x i16> poison, i16 %i.eq, i64 0
  %i.ez = insertelement <8 x i16> %i.ey, i16 %i.er, i64 1
  %i.fa = insertelement <8 x i16> %i.ez, i16 %i.es, i64 2
  %i.fb = insertelement <8 x i16> %i.fa, i16 %i.et, i64 3
  %i.fc = insertelement <8 x i16> %i.fb, i16 %i.eu, i64 4
  %i.fd = insertelement <8 x i16> %i.fc, i16 %i.ev, i64 5
  %i.fe = insertelement <8 x i16> %i.fd, i16 %i.ew, i64 6
  %i.ff = insertelement <8 x i16> %i.fe, i16 %i.ex, i64 7
  %i.fg = uitofp <8 x i16> %i.ff to <8 x float>
  %i.fh = fmul <8 x float> %broadcast.splat, %i.fg
  %i.fi = getelementptr inbounds nuw i8, ptr %i.eb, i64 2
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ec, i64 10
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ee, i64 18
  %i.fl = getelementptr inbounds nuw i8, ptr %i.eg, i64 26
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ei, i64 34
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ek, i64 42
  %i.fo = getelementptr inbounds nuw i8, ptr %i.em, i64 50
  %i.fp = getelementptr inbounds nuw i8, ptr %i.eo, i64 58
  %i.fq = load i16, ptr %i.fi, align 2, !tbaa !9
  %i.fr = load i16, ptr %i.fj, align 2, !tbaa !9
  %i.fs = load i16, ptr %i.fk, align 2, !tbaa !9
  %i.ft = load i16, ptr %i.fl, align 2, !tbaa !9
  %i.fu = load i16, ptr %i.fm, align 2, !tbaa !9
  %i.fv = load i16, ptr %i.fn, align 2, !tbaa !9
  %i.fw = load i16, ptr %i.fo, align 2, !tbaa !9
  %i.fx = load i16, ptr %i.fp, align 2, !tbaa !9
  %i.fy = insertelement <8 x i16> poison, i16 %i.fq, i64 0
  %i.fz = insertelement <8 x i16> %i.fy, i16 %i.fr, i64 1
  %i.ga = insertelement <8 x i16> %i.fz, i16 %i.fs, i64 2
  %i.gb = insertelement <8 x i16> %i.ga, i16 %i.ft, i64 3
  %i.gc = insertelement <8 x i16> %i.gb, i16 %i.fu, i64 4
  %i.gd = insertelement <8 x i16> %i.gc, i16 %i.fv, i64 5
  %i.ge = insertelement <8 x i16> %i.gd, i16 %i.fw, i64 6
  %i.gf = insertelement <8 x i16> %i.ge, i16 %i.fx, i64 7
  %i.gg = uitofp <8 x i16> %i.gf to <8 x float>
  %i.gh = fmul <8 x float> %broadcast.splat129, %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ec, i64 12
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ee, i64 20
  %i.gl = getelementptr inbounds nuw i8, ptr %i.eg, i64 28
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ei, i64 36
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ek, i64 44
  %i.go = getelementptr inbounds nuw i8, ptr %i.em, i64 52
  %i.gp = getelementptr inbounds nuw i8, ptr %i.eo, i64 60
  %i.gq = load i16, ptr %i.gi, align 2, !tbaa !9
  %i.gr = load i16, ptr %i.gj, align 2, !tbaa !9
  %i.gs = load i16, ptr %i.gk, align 2, !tbaa !9
  %i.gt = load i16, ptr %i.gl, align 2, !tbaa !9
  %i.gu = load i16, ptr %i.gm, align 2, !tbaa !9
  %i.gv = load i16, ptr %i.gn, align 2, !tbaa !9
  %i.gw = load i16, ptr %i.go, align 2, !tbaa !9
  %i.gx = load i16, ptr %i.gp, align 2, !tbaa !9
  %i.gy = insertelement <8 x i16> poison, i16 %i.gq, i64 0
  %i.gz = insertelement <8 x i16> %i.gy, i16 %i.gr, i64 1
  %i.ha = insertelement <8 x i16> %i.gz, i16 %i.gs, i64 2
  %i.hb = insertelement <8 x i16> %i.ha, i16 %i.gt, i64 3
  %i.hc = insertelement <8 x i16> %i.hb, i16 %i.gu, i64 4
  %i.hd = insertelement <8 x i16> %i.hc, i16 %i.gv, i64 5
  %i.he = insertelement <8 x i16> %i.hd, i16 %i.gw, i64 6
  %i.hf = insertelement <8 x i16> %i.he, i16 %i.gx, i64 7
  %i.hg = uitofp <8 x i16> %i.hf to <8 x float>
  %i.hh = fmul <8 x float> %broadcast.splat131, %i.hg
  %i.hi = getelementptr inbounds nuw i8, ptr %i.eb, i64 6
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ec, i64 14
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ee, i64 22
  %i.hl = getelementptr inbounds nuw i8, ptr %i.eg, i64 30
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ei, i64 38
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ek, i64 46
  %i.ho = getelementptr inbounds nuw i8, ptr %i.em, i64 54
  %i.hp = getelementptr inbounds nuw i8, ptr %i.eo, i64 62
  %i.hq = load i16, ptr %i.hi, align 2, !tbaa !9
  %i.hr = load i16, ptr %i.hj, align 2, !tbaa !9
  %i.hs = load i16, ptr %i.hk, align 2, !tbaa !9
  %i.ht = load i16, ptr %i.hl, align 2, !tbaa !9
  %i.hu = load i16, ptr %i.hm, align 2, !tbaa !9
  %i.hv = load i16, ptr %i.hn, align 2, !tbaa !9
  %i.hw = load i16, ptr %i.ho, align 2, !tbaa !9
  %i.hx = load i16, ptr %i.hp, align 2, !tbaa !9
  %i.hy = insertelement <8 x i16> poison, i16 %i.hq, i64 0
  %i.hz = insertelement <8 x i16> %i.hy, i16 %i.hr, i64 1
  %i.ia = insertelement <8 x i16> %i.hz, i16 %i.hs, i64 2
  %i.ib = insertelement <8 x i16> %i.ia, i16 %i.ht, i64 3
  %i.ic = insertelement <8 x i16> %i.ib, i16 %i.hu, i64 4
  %i.id = insertelement <8 x i16> %i.ic, i16 %i.hv, i64 5
  %i.ie = insertelement <8 x i16> %i.id, i16 %i.hw, i64 6
  %i.if = insertelement <8 x i16> %i.ie, i16 %i.hx, i64 7
  %i.ig = uitofp <8 x i16> %i.if to <8 x float>
  %i.ih = fmul <8 x float> %broadcast.splat133, %i.ig
  %i.ii = shufflevector <8 x float> %i.fh, <8 x float> %i.gh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ij = shufflevector <8 x float> %i.hh, <8 x float> %i.ih, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ik = shufflevector <16 x float> %i.ii, <16 x float> %i.ij, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  %i.il = fptosi <32 x float> %i.ik to <32 x i32>
  %i.im = tail call <32 x i32> @llvm.smax.v32i32(<32 x i32> %i.il, <32 x i32> zeroinitializer)
  %i.in = tail call <32 x i32> @llvm.umin.v32i32(<32 x i32> %i.im, <32 x i32> splat (i32 65535))
  %interleaved.vec = trunc nuw <32 x i32> %i.in to <32 x i16>
  store <32 x i16> %interleaved.vec, ptr %i.eb, align 2, !tbaa !9
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.io = icmp eq i64 %index.next, %n.vec
  br i1 %i.io, label %middle.block, label %vector.body, !llvm.loop !96

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count107
  br i1 %cmp.n, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph, %middle.block
  %indvars.iv104.ph = phi i64 [ 0, %.preheader.lr.ph ], [ %n.vec, %middle.block ]
  br label %.preheader

bb.l:                                             ; preds = %bb.k
  br i1 %.not86, label %.loopexit, label %.preheader73.lr.ph

.preheader73.lr.ph:                               ; preds = %bb.l
  %i.ip = load ptr, ptr %i.a, align 8, !tbaa !76
  %smax98 = tail call i32 @llvm.smax.i32(i32 %i.h, i32 1)
  %wide.trip.count98 = zext nneg i32 %smax98 to i64
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 136676
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 136680
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 136684
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.iw = load i32, ptr %i.iq, align 4
  %i.ix = load i32, ptr %i.is, align 8
  %i.iy = load i32, ptr %i.iu, align 4
  br label %.preheader73

.preheader73:                                     ; preds = %.preheader73.lr.ph, %bb.t
  %indvars.iv95 = phi i64 [ 0, %.preheader73.lr.ph ], [ %indvars.iv.next96, %bb.t ] ; 2 uses
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %indvars.iv95 ; 5 uses
  %i.ja = load i16, ptr %i.iz, align 2, !tbaa !9  ; 2 uses
  %.not68 = icmp eq i16 %i.ja, 0
  br i1 %.not68, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.preheader73
  %i.jb = zext i16 %i.ja to i32
  %i.jc = sub i32 %i.jb, %i.dv
  %i.jd = sitofp i32 %i.jc to float
  %i.je = load float, ptr %1, align 4, !tbaa !78
  %i.jf = fmul float %i.je, %i.jd
  %i.jg = fptosi float %i.jf to i32
  %i.jh = tail call i32 @llvm.smax.i32(i32 %i.jg, i32 0)
  %i.ji = tail call i32 @llvm.umin.i32(i32 %i.jh, i32 65535)
  %i.jj = trunc nuw i32 %i.ji to i16
  store i16 %i.jj, ptr %i.iz, align 2, !tbaa !9
  br label %bb.n

bb.n:                                             ; preds = %.preheader73, %bb.m
  %i.jk = getelementptr inbounds nuw i8, ptr %i.iz, i64 2 ; 2 uses
  %i.jl = load i16, ptr %i.jk, align 2, !tbaa !9  ; 2 uses
  %.not68.1 = icmp eq i16 %i.jl, 0
  br i1 %.not68.1, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.jm = zext i16 %i.jl to i32
  %i.jn = sub i32 %i.jm, %i.iw
  %i.jo = sitofp i32 %i.jn to float
  %i.jp = load float, ptr %i.ir, align 4, !tbaa !78
  %i.jq = fmul float %i.jp, %i.jo
  %i.jr = fptosi float %i.jq to i32
  %i.js = tail call i32 @llvm.smax.i32(i32 %i.jr, i32 0)
  %i.jt = tail call i32 @llvm.umin.i32(i32 %i.js, i32 65535)
  %i.ju = trunc nuw i32 %i.jt to i16
  store i16 %i.ju, ptr %i.jk, align 2, !tbaa !9
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.jv = getelementptr inbounds nuw i8, ptr %i.iz, i64 4 ; 2 uses
  %i.jw = load i16, ptr %i.jv, align 2, !tbaa !9  ; 2 uses
  %.not68.2 = icmp eq i16 %i.jw, 0
  br i1 %.not68.2, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.jx = zext i16 %i.jw to i32
  %i.jy = sub i32 %i.jx, %i.ix
  %i.jz = sitofp i32 %i.jy to float
  %i.ka = load float, ptr %i.it, align 4, !tbaa !78
  %i.kb = fmul float %i.ka, %i.jz
  %i.kc = fptosi float %i.kb to i32
  %i.kd = tail call i32 @llvm.smax.i32(i32 %i.kc, i32 0)
  %i.ke = tail call i32 @llvm.umin.i32(i32 %i.kd, i32 65535)
  %i.kf = trunc nuw i32 %i.ke to i16
  store i16 %i.kf, ptr %i.jv, align 2, !tbaa !9
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.kg = getelementptr inbounds nuw i8, ptr %i.iz, i64 6 ; 2 uses
  %i.kh = load i16, ptr %i.kg, align 2, !tbaa !9  ; 2 uses
  %.not68.3 = icmp eq i16 %i.kh, 0
  br i1 %.not68.3, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ki = zext i16 %i.kh to i32
  %i.kj = sub i32 %i.ki, %i.iy
  %i.kk = sitofp i32 %i.kj to float
  %i.kl = load float, ptr %i.iv, align 4, !tbaa !78
  %i.km = fmul float %i.kl, %i.kk
  %i.kn = fptosi float %i.km to i32
  %i.ko = tail call i32 @llvm.smax.i32(i32 %i.kn, i32 0)
  %i.kp = tail call i32 @llvm.umin.i32(i32 %i.ko, i32 65535)
  %i.kq = trunc nuw i32 %i.kp to i16
  store i16 %i.kq, ptr %i.kg, align 2, !tbaa !9
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %exitcond99.not = icmp eq i64 %indvars.iv.next96, %wide.trip.count98
  br i1 %exitcond99.not, label %.loopexit, label %.preheader73, !llvm.loop !97

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv104 = phi i64 [ %indvars.iv.next105, %.preheader ], [ %indvars.iv104.ph, %.preheader.preheader ] ; 2 uses
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv104 ; 2 uses
  %i.ks = load <4 x i16>, ptr %i.kr, align 2, !tbaa !9
  %i.kt = uitofp <4 x i16> %i.ks to <4 x float>
  %i.ku = fmul <4 x float> %i.ea, %i.kt
  %i.kv = fptosi <4 x float> %i.ku to <4 x i32>
  %i.kw = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.kv, <4 x i32> zeroinitializer)
  %i.kx = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.kw, <4 x i32> splat (i32 65535))
  %i.ky = trunc nuw <4 x i32> %i.kx to <4 x i16>
  store <4 x i16> %i.ky, ptr %i.kr, align 2, !tbaa !9
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1 ; 2 uses
  %exitcond108.not = icmp eq i64 %indvars.iv.next105, %wide.trip.count107
  br i1 %exitcond108.not, label %.loopexit, label %.preheader, !llvm.loop !98

.loopexit:                                        ; preds = %bb.j, %bb.t, %.preheader, %middle.block, %.preheader76, %bb.l, %.preheader72
  ret void
}

declare float @exp2f(float) local_unnamed_addr

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.umin.v2i32(<2 x i32>, <2 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x i32> @llvm.umin.v32i32(<32 x i32>, <32 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x i32> @llvm.smax.v32i32(<32 x i32>, <32 x i32>) #3

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"short", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = !{!"any pointer", !4, i64 0}
!14 = !{!"p1 short", !13, i64 0}
!15 = !{!"double", !4, i64 0}
!16 = !{!"_ZTS20libraw_image_sizes_t", !8, i64 0, !8, i64 2, !8, i64 4, !8, i64 6, !8, i64 8, !8, i64 10, !8, i64 12, !8, i64 14, !5, i64 16, !15, i64 24, !5, i64 32, !4, i64 36, !8, i64 164, !4, i64 166}
!17 = !{!"p1 omnipotent char", !13, i64 0}
!18 = !{!"_ZTS16libraw_iparams_t", !4, i64 0, !4, i64 4, !4, i64 68, !4, i64 132, !4, i64 196, !4, i64 260, !5, i64 324, !5, i64 328, !5, i64 332, !5, i64 336, !5, i64 340, !5, i64 344, !4, i64 348, !4, i64 384, !4, i64 420, !5, i64 428, !17, i64 432}
!19 = !{!"float", !4, i64 0}
!20 = !{!"_ZTS18libraw_nikonlens_t", !19, i64 0, !4, i64 4, !4, i64 5, !4, i64 6, !4, i64 7}
!21 = !{!"_ZTS16libraw_dnglens_t", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12}
!22 = !{!"long long", !4, i64 0}
!23 = !{!"_ZTS24libraw_makernotes_lens_t", !22, i64 0, !4, i64 8, !8, i64 136, !8, i64 138, !22, i64 144, !8, i64 152, !8, i64 154, !4, i64 156, !8, i64 220, !4, i64 222, !4, i64 238, !19, i64 256, !19, i64 260, !19, i64 264, !19, i64 268, !19, i64 272, !19, i64 276, !19, i64 280, !19, i64 284, !19, i64 288, !19, i64 292, !19, i64 296, !19, i64 300, !19, i64 304, !19, i64 308, !19, i64 312, !22, i64 320, !4, i64 328, !22, i64 456, !4, i64 464, !22, i64 592, !4, i64 600, !8, i64 728, !19, i64 732}
!24 = !{!"_ZTS17libraw_lensinfo_t", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !19, i64 16, !4, i64 20, !4, i64 148, !4, i64 276, !4, i64 404, !8, i64 532, !20, i64 536, !21, i64 544, !23, i64 560}
!25 = !{!"_ZTS13libraw_area_t", !8, i64 0, !8, i64 2, !8, i64 4, !8, i64 6}
!26 = !{!"_ZTS25libraw_canon_makernotes_t", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !4, i64 16, !5, i64 32, !4, i64 36, !8, i64 52, !8, i64 54, !4, i64 56, !8, i64 58, !8, i64 60, !8, i64 62, !8, i64 64, !8, i64 66, !8, i64 68, !8, i64 70, !8, i64 72, !8, i64 74, !8, i64 76, !8, i64 78, !8, i64 80, !8, i64 82, !5, i64 84, !19, i64 88, !8, i64 92, !8, i64 94, !8, i64 96, !8, i64 98, !5, i64 100, !8, i64 104, !5, i64 108, !5, i64 112, !8, i64 116, !5, i64 120, !25, i64 124, !25, i64 132, !25, i64 140, !25, i64 148, !25, i64 156, !4, i64 164}
!27 = !{!"_ZTS30libraw_sensor_highspeed_crop_t", !8, i64 0, !8, i64 2, !8, i64 4, !8, i64 6}
!28 = !{!"_ZTS25libraw_nikon_makernotes_t", !15, i64 0, !8, i64 8, !8, i64 10, !4, i64 12, !4, i64 19, !4, i64 20, !4, i64 21, !4, i64 34, !4, i64 54, !4, i64 58, !4, i64 62, !4, i64 66, !4, i64 67, !4, i64 68, !4, i64 69, !4, i64 70, !4, i64 71, !4, i64 73, !4, i64 74, !4, i64 75, !4, i64 76, !4, i64 77, !4, i64 78, !4, i64 82, !4, i64 86, !8, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !4, i64 112, !4, i64 144, !4, i64 145, !4, i64 146, !5, i64 148, !5, i64 152, !5, i64 156, !4, i64 160, !4, i64 162, !8, i64 170, !27, i64 172, !8, i64 180, !8, i64 182, !8, i64 184, !5, i64 188, !4, i64 192, !4, i64 212, !5, i64 232, !4, i64 236, !5, i64 248, !17, i64 256, !8, i64 264, !8, i64 266, !4, i64 268, !8, i64 270, !15, i64 272, !15, i64 280, !15, i64 288}
!29 = !{!"_ZTS30libraw_hasselblad_makernotes_t", !5, i64 0, !15, i64 8, !4, i64 16, !4, i64 24, !4, i64 88, !5, i64 152, !5, i64 156, !5, i64 160, !5, i64 164, !4, i64 168, !4, i64 200, !5, i64 264, !4, i64 268, !4, i64 276, !4, i64 288}
!30 = !{!"_ZTS18libraw_fuji_info_t", !19, i64 0, !8, i64 4, !8, i64 6, !8, i64 8, !8, i64 10, !8, i64 12, !8, i64 14, !8, i64 16, !8, i64 18, !4, i64 20, !4, i64 53, !19, i64 88, !8, i64 92, !8, i64 94, !4, i64 96, !8, i64 100, !5, i64 104, !5, i64 108, !8, i64 112, !4, i64 114, !8, i64 120, !8, i64 122, !8, i64 124, !8, i64 126, !8, i64 128, !5, i64 132, !8, i64 136, !4, i64 138, !4, i64 151, !4, i64 156, !5, i64 164, !8, i64 168, !5, i64 172, !8, i64 176, !4, i64 178, !4, i64 196, !5, i64 324, !5, i64 328, !5, i64 332, !4, i64 336, !5, i64 344}
!31 = !{!"_ZTS27libraw_olympus_makernotes_t", !4, i64 0, !8, i64 6, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !4, i64 64, !4, i64 72, !8, i64 82, !4, i64 84, !8, i64 88, !8, i64 90, !4, i64 92, !4, i64 352, !8, i64 392, !4, i64 394, !4, i64 396, !4, i64 404, !8, i64 416, !8, i64 418, !8, i64 420, !8, i64 422, !15, i64 424, !4, i64 432, !4, i64 440, !4, i64 448, !5, i64 452, !8, i64 456, !8, i64 458}
!32 = !{!"_ZTS18libraw_sony_info_t", !8, i64 0, !4, i64 2, !4, i64 3, !5, i64 4, !4, i64 8, !5, i64 12, !4, i64 16, !4, i64 17, !8, i64 18, !4, i64 20, !4, i64 24, !4, i64 25, !8, i64 26, !4, i64 28, !4, i64 38, !4, i64 39, !4, i64 40, !8, i64 48, !4, i64 50, !4, i64 51, !4, i64 52, !8, i64 54, !5, i64 56, !8, i64 60, !4, i64 62, !8, i64 66, !8, i64 68, !8, i64 70, !8, i64 72, !8, i64 74, !8, i64 76, !8, i64 78, !5, i64 80, !19, i64 84, !8, i64 88, !5, i64 92, !5, i64 96, !8, i64 100, !4, i64 102, !5, i64 124, !8, i64 128, !5, i64 132, !4, i64 136, !4, i64 137, !8, i64 138, !8, i64 140, !8, i64 142, !8, i64 144, !8, i64 146, !8, i64 148, !8, i64 150, !8, i64 152, !8, i64 154, !5, i64 156, !8, i64 160, !4, i64 162, !19, i64 180}
!33 = !{!"_ZTS25libraw_kodak_makernotes_t", !8, i64 0, !8, i64 2, !8, i64 4, !8, i64 6, !8, i64 8, !8, i64 10, !4, i64 12, !4, i64 48, !4, i64 84, !4, i64 120, !4, i64 156, !4, i64 192, !8, i64 228, !8, i64 230, !8, i64 232, !8, i64 234, !19, i64 236, !19, i64 240}
!34 = !{!"_ZTS29libraw_panasonic_makernotes_t", !8, i64 0, !8, i64 2, !4, i64 4, !5, i64 36, !19, i64 40, !4, i64 44, !8, i64 56, !8, i64 58, !5, i64 60, !5, i64 64}
!35 = !{!"_ZTS26libraw_pentax_makernotes_t", !4, i64 0, !4, i64 4, !4, i64 8, !8, i64 12, !5, i64 16, !5, i64 20, !8, i64 24, !4, i64 26, !8, i64 30, !4, i64 32, !4, i64 33, !8, i64 34}
!36 = !{!"_ZTS22libraw_p1_makernotes_t", !4, i64 0, !4, i64 64, !4, i64 128, !4, i64 384}
!37 = !{!"_ZTS25libraw_ricoh_makernotes_t", !8, i64 0, !4, i64 4, !4, i64 12, !8, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !8, i64 40, !8, i64 42, !8, i64 44, !8, i64 46, !8, i64 48, !8, i64 50, !15, i64 56, !15, i64 64}
!38 = !{!"_ZTS27libraw_samsung_makernotes_t", !4, i64 0, !4, i64 16, !4, i64 32, !4, i64 40, !15, i64 88, !5, i64 96, !4, i64 100}
!39 = !{!"_ZTS24libraw_metadata_common_t", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !19, i64 16, !19, i64 20, !19, i64 24, !19, i64 28, !19, i64 32, !19, i64 36, !19, i64 40, !19, i64 44, !19, i64 48, !19, i64 52, !19, i64 56, !19, i64 60, !8, i64 64, !4, i64 66, !19, i64 196, !4, i64 200, !5, i64 296}
!40 = !{!"_ZTS19libraw_makernotes_t", !26, i64 0, !28, i64 168, !29, i64 464, !30, i64 848, !31, i64 1200, !32, i64 1664, !33, i64 1848, !34, i64 2092, !35, i64 2160, !36, i64 2196, !37, i64 2648, !38, i64 2720, !39, i64 2856}
!41 = !{!"_ZTS21libraw_shootinginfo_t", !8, i64 0, !8, i64 2, !8, i64 4, !8, i64 6, !8, i64 8, !8, i64 10, !8, i64 12, !4, i64 14, !4, i64 78}
!42 = !{!"_ZTS22libraw_output_params_t", !4, i64 0, !4, i64 16, !4, i64 32, !4, i64 64, !4, i64 112, !19, i64 128, !19, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !5, i64 148, !5, i64 152, !5, i64 156, !5, i64 160, !17, i64 168, !17, i64 176, !17, i64 184, !17, i64 192, !5, i64 200, !5, i64 204, !5, i64 208, !5, i64 212, !5, i64 216, !5, i64 220, !4, i64 224, !5, i64 240, !5, i64 244, !19, i64 248, !19, i64 252, !5, i64 256, !5, i64 260, !5, i64 264, !5, i64 268, !5, i64 272, !5, i64 276, !5, i64 280, !5, i64 284, !19, i64 288, !19, i64 292, !5, i64 296, !5, i64 300}
!43 = !{!"any p2 pointer", !13, i64 0}
end_hunk_0
