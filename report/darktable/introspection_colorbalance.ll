Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_colorbalance?download=true
inline.NumInlined: 167
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumUnrolled: 41
begin_hunk_0_@apply_autoluma:bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !109
  %i.bl = load float, ptr %i.ax, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.bk, float noundef %i.bl) #23
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !90
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 104
  %i.bo = atomicrmw sub ptr %i.bn, i32 1 seq_cst, align 4 ; 0 uses
  %i.bp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !96
  tail call void @dt_dev_add_history_item(ptr noundef %i.bp, ptr noundef nonnull %0, i32 noundef 1) #23
  ret void

bb.i:                                             ; preds = %bb.g, %bb.i
  %i.bq = phi float [ %.pre, %bb.g ], [ %i.cb, %bb.i ]
  %.071 = phi i32 [ 0, %bb.g ], [ %i.co, %bb.i ]
  %i.br = load float, ptr %i.aw, align 8, !tbaa !12
  %i.bs = fdiv reassoc nsz arcp contract afn float %i.bq, %i.br ; 3 uses
  %i.bt = fcmp reassoc nsz arcp contract afn ogt float %i.bs, 2.000000e+00
  %i.bu = fcmp reassoc nsz arcp contract afn olt float %i.bs, 0.000000e+00
  %spec.select = select reassoc nsz arcp contract afn i1 %i.bu, float 0.000000e+00, float %i.bs
  %i.bv = select reassoc nsz arcp contract afn i1 %i.bt, float 2.000000e+00, float %spec.select ; 3 uses
  store float %i.bv, ptr %i.ax, align 4, !tbaa !12
  %i.bw = load float, ptr %i.av, align 8, !tbaa !12
  %i.bx = fmul reassoc nsz arcp contract afn float %i.bv, %i.bw
  %i.by = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.bx ; 3 uses
  %i.bz = fcmp reassoc nsz arcp contract afn ogt float %i.by, 2.000000e+00
  %i.ca = fcmp reassoc nsz arcp contract afn olt float %i.by, 0.000000e+00
  %spec.select61 = select reassoc nsz arcp contract afn i1 %i.ca, float 0.000000e+00, float %i.by
  %i.cb = select reassoc nsz arcp contract afn i1 %i.bz, float 2.000000e+00, float %spec.select61 ; 3 uses
  store float %i.cb, ptr %i.au, align 4, !tbaa !12
  %i.cc = load float, ptr %i.ay, align 4, !tbaa !12
  %i.cd = fmul reassoc nsz arcp contract afn float %i.bv, %i.cc
  %i.ce = fadd reassoc nsz arcp contract afn float %i.cd, %i.cb
  %i.cf = fadd reassoc nsz arcp contract afn float %i.ce, -1.000000e+00 ; 2 uses
  %i.cg = fcmp reassoc nsz arcp contract afn ogt float %i.cf, f0x358637BD
  %i.ch = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.cf)
  %i.ci = fdiv reassoc nsz arcp contract afn float f0xBFD88AB6, %i.ch
  %i.cj = select i1 %i.cg, float %i.ci, float f0x3DFAC7F8 ; 2 uses
  %i.ck = fsub reassoc nsz arcp contract afn float 2.000000e+00, %i.cj ; 2 uses
  %i.cl = fcmp reassoc nsz arcp contract afn ogt float %i.ck, 2.000000e+00
  %i.cm = fcmp reassoc nsz arcp contract afn ogt float %i.cj, 2.000000e+00
  %spec.select70 = select reassoc nsz arcp contract afn i1 %i.cm, float 0.000000e+00, float %i.ck
  %i.cn = select reassoc nsz arcp contract afn i1 %i.cl, float 2.000000e+00, float %spec.select70
  store float %i.cn, ptr %i.az, align 4, !tbaa !12
  %i.co = add nuw nsw i32 %.071, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.co, 100
  br i1 %exitcond.not, label %bb.h, label %bb.i
}

; Function Attrs: nounwind uwtable
define internal fastcc void @apply_autocolor(ptr noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91   ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !47  ; 35 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 300 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 308 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !15
  %i.h = icmp eq i32 %i.g, 0                      ; 2 uses
  br i1 %i.h, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.pre = load i32, ptr %i.e, align 4, !tbaa !15
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 304
  %i.j = load i32, ptr %i.i, align 4, !tbaa !15
  %i.k = icmp eq i32 %i.j, 0
  %.pre274 = load i32, ptr %i.e, align 4, !tbaa !15 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = icmp eq i32 %.pre274, 0
  br i1 %i.l, label %bb.d, label %.preheader197

bb.d:                                             ; preds = %._crit_edge, %bb.c, %bb.b
  %i.m = phi i32 [ %.pre, %._crit_edge ], [ 0, %bb.c ], [ %.pre274, %bb.b ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.p = load float, ptr %i.o, align 4, !tbaa !12
  %i.q = load float, ptr %i.n, align 16, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.s = load float, ptr %i.r, align 8, !tbaa !12
  %i.t = fmul reassoc nsz arcp contract afn float %i.p, 2.000000e-03
  %i.u = fmul reassoc nsz arcp contract afn float %i.q, 8.620690e-03
  %i.v = fadd reassoc nsz arcp contract afn float %i.u, f0x3E0D3DCB ; 7 uses
  %i.w = fmul reassoc nsz arcp contract afn float %i.s, 5.000000e-03
  %i.x = fadd reassoc nsz arcp contract afn float %i.v, %i.t ; 5 uses
  %i.y = fcmp reassoc nsz arcp contract afn ogt float %i.x, f0x3E53DCB1
  %i.z = fmul reassoc nsz arcp contract afn float %i.x, %i.x
  %i.aa = fmul reassoc nsz arcp contract afn float %i.z, %i.x
  %i.ab = fmul reassoc nsz arcp contract afn float %i.x, f0x3E038026
  %i.ac = fadd reassoc nsz arcp contract afn float %i.ab, f0xBC911AA6
  %i.ad = select reassoc nsz arcp contract afn i1 %i.y, float %i.aa, float %i.ac ; 3 uses
  %i.ae = fcmp reassoc nsz arcp contract afn ogt float %i.v, f0x3E53DCB1
  %i.af = fmul reassoc nsz arcp contract afn float %i.v, %i.v
  %i.ag = fmul reassoc nsz arcp contract afn float %i.af, %i.v
  %i.ah = fmul reassoc nsz arcp contract afn float %i.v, f0x3E038026
  %i.ai = fadd reassoc nsz arcp contract afn float %i.ah, f0xBC911AA6
  %i.aj = select reassoc nsz arcp contract afn i1 %i.ae, float %i.ag, float %i.ai ; 3 uses
  %i.ak = fsub reassoc nsz arcp contract afn float %i.v, %i.w ; 5 uses
  %i.al = fcmp reassoc nsz arcp contract afn ogt float %i.ak, f0x3E53DCB1
  %i.am = fmul reassoc nsz arcp contract afn float %i.ak, %i.ak
  %i.an = fmul reassoc nsz arcp contract afn float %i.am, %i.ak
  %i.ao = fmul reassoc nsz arcp contract afn float %i.ak, f0x3E038026
  %i.ap = fadd reassoc nsz arcp contract afn float %i.ao, f0xBC911AA6
  %i.aq = select reassoc nsz arcp contract afn i1 %i.al, float %i.an, float %i.ap ; 3 uses
  %i.ar = fmul reassoc nsz arcp contract afn float %i.ad, 9.642000e-01
  %i.as = fmul reassoc nsz arcp contract afn float %i.ad, f0x3FA61CF4
  %i.at = fmul reassoc nsz arcp contract afn float %i.aj, f0xBE82DEFC
  %i.au = fadd reassoc nsz arcp contract afn float %i.as, %i.at
  %i.av = fmul reassoc nsz arcp contract afn float %i.aq, f0xBD2CB230
  %i.aw = fadd reassoc nsz arcp contract afn float %i.au, %i.av ; 3 uses
  %i.ax = fmul reassoc nsz arcp contract afn float %i.ad, f0xBF066D1A
  %i.ay = fmul reassoc nsz arcp contract afn float %i.aj, f0x3FC10BA0
  %i.az = fadd reassoc nsz arcp contract afn float %i.ax, %i.ay
  %i.ba = fmul reassoc nsz arcp contract afn float %i.aq, f0x3C8AC481
  %i.bb = fadd reassoc nsz arcp contract afn float %i.az, %i.ba ; 3 uses
  %i.bc = fadd reassoc nsz arcp contract afn float %i.ar, %i.aj
  %i.bd = fmul reassoc nsz arcp contract afn float %i.bc, 0.000000e+00
  %i.be = fmul reassoc nsz arcp contract afn float %i.aq, f0x3F7FE762
  %i.bf = fadd reassoc nsz arcp contract afn float %i.bd, %i.be ; 3 uses
  %i.bg = icmp eq i32 %i.m, 0
  br i1 %i.bg, label %.preheader200, label %bb.e

.preheader200:                                    ; preds = %bb.d
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 264
  store float %i.aw, ptr %i.bh, align 4, !tbaa !12
  %.sroa.7264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 268
  store float %i.bb, ptr %.sroa.7264.0..sroa_idx, align 4, !tbaa !12
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 272
  store float %i.bf, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !12
  store i32 2, ptr %i.e, align 4, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %.preheader200, %bb.d
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 304 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !15
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %.preheader199, label %bb.f

.preheader199:                                    ; preds = %bb.e
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 276
  store float %i.aw, ptr %i.bl, align 4, !tbaa !12
  %.sroa.7264.0..sroa_idx265 = getelementptr inbounds nuw i8, ptr %i.d, i64 280
  store float %i.bb, ptr %.sroa.7264.0..sroa_idx265, align 4, !tbaa !12
  %.sroa.8.0..sroa_idx269 = getelementptr inbounds nuw i8, ptr %i.d, i64 284
  store float %i.bf, ptr %.sroa.8.0..sroa_idx269, align 4, !tbaa !12
  store i32 2, ptr %i.bi, align 4, !tbaa !15
  br label %bb.f

bb.f:                                             ; preds = %.preheader199, %bb.e
  br i1 %i.h, label %.preheader198, label %.preheader197

.preheader198:                                    ; preds = %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  store float %i.aw, ptr %i.bm, align 4, !tbaa !12
  %.sroa.7264.0..sroa_idx267 = getelementptr inbounds nuw i8, ptr %i.d, i64 292
  store float %i.bb, ptr %.sroa.7264.0..sroa_idx267, align 4, !tbaa !12
  %.sroa.8.0..sroa_idx271 = getelementptr inbounds nuw i8, ptr %i.d, i64 296
  store float %i.bf, ptr %.sroa.8.0..sroa_idx271, align 4, !tbaa !12
  store i32 2, ptr %i.f, align 4, !tbaa !15
  br label %.preheader197

.preheader197:                                    ; preds = %bb.f, %.preheader198, %bb.c
  tail call void @dt_iop_color_picker_reset(ptr noundef nonnull %0, i32 noundef 1) #23
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 264
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 2 uses
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !12 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.br = load float, ptr %i.bq, align 4, !tbaa !12
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !12
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 276
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 292
  %i.bx = getelementptr inbounds nuw i8, ptr %i.d, i64 272
  %i.by = load float, ptr %i.bx, align 4, !tbaa !12
  %i.bz = fmul reassoc nsz arcp contract afn float %i.bp, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.d, i64 284
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !12
  %i.cc = fmul reassoc nsz arcp contract afn float %i.cb, %i.bp
  %i.cd = getelementptr inbounds nuw i8, ptr %i.d, i64 296
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !12
  %i.cf = fmul reassoc nsz arcp contract afn float %i.ce, %i.bp
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !12
  %i.cj = fadd reassoc nsz arcp contract afn float %i.ci, -1.000000e+00
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !12
  %i.cn = load float, ptr %i.bv, align 4, !tbaa !12
  %i.co = load <2 x float>, ptr %i.bn, align 4, !tbaa !12
  %i.cp = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.cq = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.cr = fmul reassoc nsz arcp contract afn <2 x float> %i.cq, %i.co
  %i.cs = load <2 x float>, ptr %i.bu, align 4, !tbaa !12
  %i.ct = fmul reassoc nsz arcp contract afn <2 x float> %i.cs, %i.cq
  %1 = insertelement <2 x float> <float poison, float 2.000000e+00>, float %i.br, i64 0
  %2 = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.bt, i64 1
  %3 = fsub reassoc nsz arcp contract afn <2 x float> %1, %2 ; 5 uses
  %i.cu = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.cv = fadd reassoc nsz arcp contract afn <2 x float> %i.cu, %i.cr ; 2 uses
  %i.cw = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.cv, zeroinitializer
  %i.cx = select <2 x i1> %i.cw, <2 x float> %i.cv, <2 x float> zeroinitializer
  %4 = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %5 = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.cy = tail call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.cx, <2 x float> %5) ; 3 uses
  %i.cz = fadd reassoc nsz arcp contract afn <2 x float> %i.ct, %i.cu ; 2 uses
  %i.da = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.cz, zeroinitializer
  %i.db = select <2 x i1> %i.da, <2 x float> %i.cz, <2 x float> zeroinitializer
  %i.dc = tail call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.db, <2 x float> %4) ; 3 uses
  %i.dd = load float, ptr %i.bw, align 4, !tbaa !12
  %i.de = insertelement <2 x float> poison, float %i.cn, i64 0
  %i.df = insertelement <2 x float> %i.de, float %i.dd, i64 1
  %i.dg = fmul reassoc nsz arcp contract afn <2 x float> %i.df, %i.cq
  %i.dh = fadd reassoc nsz arcp contract afn <2 x float> %i.dg, %i.cu ; 2 uses
  %i.di = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.dh, zeroinitializer
  %i.dj = select <2 x i1> %i.di, <2 x float> %i.dh, <2 x float> zeroinitializer
  %i.dk = tail call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.dj, <2 x float> %5) ; 4 uses
  %6 = extractelement <2 x float> %3, i64 0       ; 3 uses
  %i.dl = fadd reassoc nsz arcp contract afn float %6, %i.bz ; 2 uses
  %i.dm = fcmp reassoc nsz arcp contract afn ogt float %i.dl, 0.000000e+00
  %i.dn = select reassoc nsz arcp contract afn i1 %i.dm, float %i.dl, float 0.000000e+00
  %7 = extractelement <2 x float> %3, i64 1       ; 3 uses
  %i.do = tail call reassoc nsz arcp contract afn noundef float @llvm.pow.f32(float %i.dn, float %7) ; 2 uses
  %i.dp = fadd reassoc nsz arcp contract afn float %i.cc, %6 ; 2 uses
  %i.dq = fcmp reassoc nsz arcp contract afn ogt float %i.dp, 0.000000e+00
  %i.dr = select reassoc nsz arcp contract afn i1 %i.dq, float %i.dp, float 0.000000e+00
  %i.ds = tail call reassoc nsz arcp contract afn noundef float @llvm.pow.f32(float %i.dr, float %7) ; 2 uses
  %i.dt = fadd reassoc nsz arcp contract afn float %i.cf, %6 ; 2 uses
  %i.du = fcmp reassoc nsz arcp contract afn ogt float %i.dt, 0.000000e+00
  %i.dv = select reassoc nsz arcp contract afn i1 %i.du, float %i.dt, float 0.000000e+00
  %i.dw = tail call reassoc nsz arcp contract afn noundef float @llvm.pow.f32(float %i.dv, float %7) ; 3 uses
  %i.dx = extractelement <2 x float> %i.cy, i64 0
  %i.dy = fmul reassoc nsz arcp contract afn float %i.dx, f0x3E937A01
  %i.dz = extractelement <2 x float> %i.cy, i64 1
  %i.ea = fmul reassoc nsz arcp contract afn float %i.dz, f0x3F363D62
  %i.eb = fadd reassoc nsz arcp contract afn float %i.ea, %i.dy
  %i.ec = fmul reassoc nsz arcp contract afn float %i.do, f0x38B3B9D6
  %i.ed = fadd reassoc nsz arcp contract afn float %i.eb, %i.ec ; 2 uses
  %i.ee = extractelement <2 x float> %i.dc, i64 0
  %i.ef = fmul reassoc nsz arcp contract afn float %i.ee, f0x3E937A01
  %i.eg = extractelement <2 x float> %i.dc, i64 1
  %i.eh = fmul reassoc nsz arcp contract afn float %i.eg, f0x3F363D62
  %i.ei = fadd reassoc nsz arcp contract afn float %i.eh, %i.ef
  %i.ej = fmul reassoc nsz arcp contract afn float %i.ds, f0x38B3B9D6
  %i.ek = fadd reassoc nsz arcp contract afn float %i.ei, %i.ej ; 2 uses
  %i.el = extractelement <2 x float> %i.dk, i64 0
  %i.em = fmul reassoc nsz arcp contract afn float %i.el, f0x3E937A01
  %i.en = extractelement <2 x float> %i.dk, i64 1
  %i.eo = fmul reassoc nsz arcp contract afn float %i.en, f0x3F363D62
  %i.ep = fadd reassoc nsz arcp contract afn float %i.eo, %i.em
  %i.eq = fmul reassoc nsz arcp contract afn float %i.dw, f0x38B3B9D6
  %i.er = fadd reassoc nsz arcp contract afn float %i.ep, %i.eq ; 3 uses
  %i.es = load <2 x float>, ptr %i.cg, align 4, !tbaa !12
  %i.et = fadd reassoc nsz arcp contract afn <2 x float> %i.es, splat (float -1.000000e+00)
  %i.eu = load <2 x float>, ptr %i.ck, align 4, !tbaa !12
  %i.ev = fcmp reassoc nsz arcp contract afn ogt float %i.ek, f0x358637BD
  %i.ew = select reassoc nsz arcp contract afn i1 %i.ev, float %i.ek, float f0x358637BD
  %i.ex = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.ew) ; 2 uses
  %i.ey = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.dk, splat (float f0x358637BD)
  %i.ez = select <2 x i1> %i.ey, <2 x float> %i.dk, <2 x float> splat (float f0x358637BD)
  %i.fa = fcmp reassoc nsz arcp contract afn ogt float %i.dw, f0x358637BD
  %spec.select.2 = select reassoc nsz arcp contract afn i1 %i.fa, float %i.dw, float f0x358637BD
  %i.fb = insertelement <2 x float> poison, float %i.ed, i64 0
  %i.fc = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fd = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.fe = shufflevector <2 x float> %i.fd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ff = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %spec.select.2
  %i.fg = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.ez
  br label %.preheader196

.preheader196:                                    ; preds = %.preheader197, %.preheader196
  %.sroa.12238.0 = phi nsz float [ %i.cj, %.preheader197 ], [ %i.fx, %.preheader196 ]
  %.sroa.12228.0 = phi nsz float [ %i.cm, %.preheader197 ], [ %i.hr, %.preheader196 ]
  %.0154208 = phi i32 [ 0, %.preheader197 ], [ %i.hs, %.preheader196 ]
  %i.fh = phi <2 x float> [ %i.eu, %.preheader197 ], [ %i.hh, %.preheader196 ]
  %i.fi = phi <2 x float> [ %i.et, %.preheader197 ], [ %i.gr, %.preheader196 ]
  %i.fj = fsub reassoc nsz arcp contract afn <2 x float> splat (float 2.000000e+00), %i.fh
  %i.fk = fsub reassoc nsz arcp contract afn float 2.000000e+00, %.sroa.12228.0
  %i.fl = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.fk ; 2 uses
  %i.fm = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.er, float %i.fl)
  %i.fn = fsub reassoc nsz arcp contract afn float %i.fm, %.sroa.12238.0
  %i.fo = fmul reassoc nsz arcp contract afn float %i.fn, %i.ff ; 3 uses
  %i.fp = fcmp reassoc nsz arcp contract afn ogt float %i.fo, 1.250000e+00
  %i.fq = fcmp reassoc nsz arcp contract afn olt float %i.fo, 7.500000e-01
  %spec.select193.2 = select reassoc nsz arcp contract afn i1 %i.fq, float 7.500000e-01, float %i.fo
  %i.fr = select reassoc nsz arcp contract afn i1 %i.fp, float 1.250000e+00, float %spec.select193.2 ; 3 uses
  %i.fs = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ed, float %i.fl)
  %i.ft = fmul reassoc nsz arcp contract afn float %i.fr, %i.do
  %i.fu = fsub reassoc nsz arcp contract afn float %i.fs, %i.ft ; 3 uses
  %i.fv = fcmp reassoc nsz arcp contract afn ogt float %i.fu, 2.500000e-02
  %i.fw = fcmp reassoc nsz arcp contract afn olt float %i.fu, -2.500000e-02
  %spec.select180.2 = select reassoc nsz arcp contract afn i1 %i.fw, float -2.500000e-02, float %i.fu
  %i.fx = select reassoc nsz arcp contract afn i1 %i.fv, float 2.500000e-02, float %spec.select180.2 ; 3 uses
  %i.fy = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.fj ; 3 uses
  %i.fz = extractelement <2 x float> %i.fy, i64 1
  %i.ga = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.er, float %i.fz)
  %i.gb = extractelement <2 x float> %i.fy, i64 0
  %i.gc = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.er, float %i.gb)
  %i.gd = insertelement <2 x float> poison, float %i.gc, i64 0
  %i.ge = insertelement <2 x float> %i.gd, float %i.ga, i64 1
  %i.gf = fsub reassoc nsz arcp contract afn <2 x float> %i.ge, %i.fi
  %i.gg = fmul reassoc nsz arcp contract afn <2 x float> %i.gf, %i.fg ; 3 uses
  %i.gh = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.gg, splat (float 1.250000e+00)
  %i.gi = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.gg, splat (float 7.500000e-01)
  %i.gj = select <2 x i1> %i.gi, <2 x float> splat (float 7.500000e-01), <2 x float> %i.gg
  %i.gk = select <2 x i1> %i.gh, <2 x float> splat (float 1.250000e+00), <2 x float> %i.gj ; 3 uses
  %i.gl = tail call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.fc, <2 x float> %i.fy)
  %i.gm = fmul reassoc nsz arcp contract afn <2 x float> %i.gk, %i.cy
  %i.gn = fsub reassoc nsz arcp contract afn <2 x float> %i.gl, %i.gm ; 3 uses
  %i.go = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.gn, splat (float 2.500000e-02)
  %i.gp = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.gn, splat (float -2.500000e-02)
  %i.gq = select <2 x i1> %i.gp, <2 x float> splat (float -2.500000e-02), <2 x float> %i.gn
  %i.gr = select <2 x i1> %i.go, <2 x float> splat (float 2.500000e-02), <2 x float> %i.gq ; 3 uses
  %i.gs = fmul reassoc nsz arcp contract afn <2 x float> %i.dc, %i.gk
  %i.gt = fadd reassoc nsz arcp contract afn <2 x float> %i.gs, %i.gr ; 3 uses
  %i.gu = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.gt, splat (float f0x358637BD)
  %i.gv = extractelement <2 x float> %i.gt, i64 1
  %i.gw = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.gv)
  %i.gx = extractelement <2 x float> %i.gt, i64 0
  %i.gy = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.gx)
  %i.gz = insertelement <2 x float> poison, float %i.gy, i64 0
  %i.ha = insertelement <2 x float> %i.gz, float %i.gw, i64 1
  %i.hb = select <2 x i1> %i.gu, <2 x float> %i.ha, <2 x float> splat (float f0xC15D0C55)
  %i.hc = fdiv reassoc nsz arcp contract afn <2 x float> %i.fe, %i.hb ; 3 uses
  %i.hd = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.hc, splat (float 1.250000e+00)
  %i.he = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.hc, splat (float 7.500000e-01)
  %i.hf = select <2 x i1> %i.he, <2 x float> splat (float 7.500000e-01), <2 x float> %i.hc
  %i.hg = fsub reassoc nsz arcp contract afn <2 x float> splat (float 2.000000e+00), %i.hf
  %i.hh = select <2 x i1> %i.hd, <2 x float> splat (float 7.500000e-01), <2 x float> %i.hg ; 2 uses
  %i.hi = fmul reassoc nsz arcp contract afn float %i.ds, %i.fr
  %i.hj = fadd reassoc nsz arcp contract afn float %i.hi, %i.fx ; 2 uses
  %i.hk = fcmp reassoc nsz arcp contract afn ogt float %i.hj, f0x358637BD
  %i.hl = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.hj)
  %i.hm = select i1 %i.hk, float %i.hl, float f0xC15D0C55
  %i.hn = fdiv reassoc nsz arcp contract afn float %i.ex, %i.hm ; 3 uses
  %i.ho = fcmp reassoc nsz arcp contract afn ogt float %i.hn, 1.250000e+00
  %i.hp = fcmp reassoc nsz arcp contract afn olt float %i.hn, 7.500000e-01
  %spec.select194.2 = select reassoc nsz arcp contract afn i1 %i.hp, float 7.500000e-01, float %i.hn
  %i.hq = fsub reassoc nsz arcp contract afn float 2.000000e+00, %spec.select194.2
  %i.hr = select i1 %i.ho, float 7.500000e-01, float %i.hq ; 2 uses
  %i.hs = add nuw nsw i32 %.0154208, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.hs, 1000
  br i1 %exitcond.not, label %bb.g, label %.preheader196

bb.g:                                             ; preds = %.preheader196
  %i.ht = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.hu = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.hv = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.hx = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.hy = fadd reassoc nsz arcp contract afn <2 x float> %i.gr, splat (float 1.000000e+00)
  store <2 x float> %i.hy, ptr %i.cg, align 4, !tbaa !12
  %i.hz = fadd reassoc nsz arcp contract afn float %i.fx, 1.000000e+00
  store float %i.hz, ptr %i.ch, align 4, !tbaa !12
  store <2 x float> %i.hh, ptr %i.ck, align 4, !tbaa !12
  store float %i.hr, ptr %i.cl, align 4, !tbaa !12
  store <2 x float> %i.gk, ptr %i.hx, align 4, !tbaa !12
  store float %i.fr, ptr %i.hv, align 4, !tbaa !12
  %i.ia = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !90
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 104
  %i.ic = atomicrmw add ptr %i.ib, i32 1 seq_cst, align 4 ; 0 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !92
  %i.if = load float, ptr %i.cg, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.ie, float noundef %i.if) #23
  %i.ig = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !93
  %i.ii = load float, ptr %i.hu, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.ih, float noundef %i.ii) #23
  %i.ij = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !94
  %i.il = load float, ptr %i.ch, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.ik, float noundef %i.il) #23
  %i.im = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !98
  %i.io = load float, ptr %i.ck, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.in, float noundef %i.io) #23
  %i.ip = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !99
  %i.ir = load float, ptr %i.ht, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.iq, float noundef %i.ir) #23
  %i.is = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !100
  %i.iu = load float, ptr %i.cl, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.it, float noundef %i.iu) #23
  %i.iv = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !103
  %i.ix = load float, ptr %i.hx, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.iw, float noundef %i.ix) #23
  %i.iy = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !104
  %i.ja = load float, ptr %i.hw, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.iz, float noundef %i.ja) #23
  %i.jb = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !105
  %i.jd = load float, ptr %i.hv, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.jc, float noundef %i.jd) #23
  %i.je = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !49
  %i.jg = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !95
  tail call fastcc void @set_HSL_sliders(ptr noundef %i.jf, ptr noundef %i.jh, ptr noundef nonnull %i.bq)
  %i.ji = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !97
  %i.jk = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !101
  tail call fastcc void @set_HSL_sliders(ptr noundef %i.jj, ptr noundef %i.jl, ptr noundef nonnull %i.bs)
  %i.jm = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !102
  %i.jo = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !106
  tail call fastcc void @set_HSL_sliders(ptr noundef %i.jn, ptr noundef %i.jp, ptr noundef nonnull %i.bo)
  %i.jq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !90
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 104
  %i.js = atomicrmw sub ptr %i.jr, i32 1 seq_cst, align 4 ; 0 uses
  %i.jt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !96
  tail call void @dt_dev_add_history_item(ptr noundef %i.jt, ptr noundef nonnull %0, i32 noundef 1) #23
  ret void
}

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @init_global(ptr nofree noundef writeonly captures(none) initializes((520, 528)) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(12) ptr @malloc(i64 noundef 12) #25 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr %i.a, ptr %i.b, align 8, !tbaa !117
  store i32 -999, ptr %i.a, align 4, !tbaa !146
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 -999, ptr %i.c, align 4, !tbaa !147
end_hunk_0
