Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_ashift?download=true
inline.NumInlined: 378
inline.NumDeleted: 101
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 77
begin_hunk_0_@do_fit:bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @_do_get_structure_auto(ptr noundef %0, i32 noundef %1) unnamed_addr #5 {
bb.a:
  %2 = alloca %struct.rect, align 8               ; 46 uses
  %i.a = alloca double, align 8                   ; 6 uses
  %3 = alloca %struct.rect, align 16              ; 50 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !125 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 148 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !178
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.gu

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.f, align 4, !tbaa !178
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 5 uses
  %i.i = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.h) #34 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 264
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !152
  %i.l = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.h) #34 ; 0 uses
  %i.m = icmp eq ptr %i.k, null
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.105, i32 noundef 5) #34
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.n) #34
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !126
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  %i.r = load ptr, ptr %i.q, align 16, !tbaa !143
  tail call void @dt_dev_pixelpipe_cache_flush(ptr noundef %i.r) #34
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !126
  tail call void @dt_dev_reprocess_preview(ptr noundef %i.s) #34
  br label %_remove_outliers.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.d, align 16, !tbaa !125 ; 11 uses
  %i.u = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.h) #34 ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 264 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !152
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 272
  %i.y = load <4 x i32>, ptr %i.x, align 8, !tbaa !17 ; 5 uses
  %i.z = extractelement <4 x i32> %i.y, i64 1     ; 16 uses
  %i.aa = extractelement <4 x i32> %i.y, i64 0    ; 16 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 288
  %i.ac = load float, ptr %i.ab, align 8, !tbaa !155 ; 2 uses
  %i.ad = sext i32 %i.aa to i64                   ; 4 uses
  %i.ae = sext i32 %i.z to i64                    ; 4 uses
  %i.af = shl nsw i64 %i.ad, 4
  %i.ag = mul i64 %i.af, %i.ae
  %i.ah = tail call ptr @dt_alloc_aligned(i64 noundef %i.ag) #34 ; 19 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ah, i64 64) ]
  %.not54.i = icmp eq ptr %i.ah, null
  br i1 %.not54.i, label %.thread.i, label %bb.f

.thread.i:                                        ; preds = %bb.e, %bb.d
  %i.ai = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.h) #34 ; 0 uses
  br label %bb.ge

bb.f:                                             ; preds = %bb.e
  %i.aj = load ptr, ptr %i.v, align 8, !tbaa !152
  %i.ak = shl nsw i64 %i.ad, 2
  %i.al = mul i64 %i.ak, %i.ae                    ; 6 uses
  tail call void @dt_iop_image_copy(ptr noundef nonnull %i.ah, ptr noundef %i.aj, i64 noundef %i.al) #34
  %i.am = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.h) #34 ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.t, i64 216 ; 2 uses
  store i32 0, ptr %i.an, align 8, !tbaa !180
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 220 ; 2 uses
  store i32 0, ptr %i.ao, align 4, !tbaa !230
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 224 ; 2 uses
  store i32 0, ptr %i.ap, align 8, !tbaa !232
  %i.aq = getelementptr inbounds nuw i8, ptr %i.t, i64 192 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !179
  tail call void @free(ptr noundef %i.ar) #34
  store ptr null, ptr %i.aq, align 8, !tbaa !179
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !126
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 112
  %i.av = tail call i32 @dt_image_is_raw(ptr noundef nonnull %i.au) #34
  %.not.i.i = icmp eq i32 %i.av, 0
  %.not.i.i.i = icmp eq i64 %i.al, 0              ; 3 uses
  %or.cond.i = or i1 %.not.i.i.i, %.not.i.i
  br i1 %or.cond.i, label %gamma_correct.exit.i.i, label %.preheader.i.i.i.preheader

.preheader.i.i.i.preheader:                       ; preds = %bb.f
  %i.aw = add i64 %i.al, -4                       ; 2 uses
  %i.ax = lshr exact i64 %i.aw, 2
  %i.ay = add nuw nsw i64 %i.ax, 1                ; 2 uses
  %xtraiter = and i64 %i.ay, 3                    ; 3 uses
  %i.az = icmp ult i64 %i.aw, 12
  br i1 %i.az, label %.preheader.i.i.i.epil.preheader, label %.preheader.i.i.i.preheader.new

.preheader.i.i.i.preheader.new:                   ; preds = %.preheader.i.i.i.preheader
  %unroll_iter = and i64 %i.ay, 9223372036854775804
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %.preheader.i.i.i.preheader.new
  %.01214.i.i.i = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %i.cn, %.preheader.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %niter.next.3, %.preheader.i.i.i ]
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.01214.i.i.i ; 4 uses
  %i.bb = load float, ptr %i.ba, align 64, !tbaa !15
  %i.bc = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bb, float 4.500000e-01)
  store float %i.bc, ptr %i.ba, align 64, !tbaa !15
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 4 ; 2 uses
  %i.be = load float, ptr %i.bd, align 4, !tbaa !15
  %i.bf = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.be, float 4.500000e-01)
  store float %i.bf, ptr %i.bd, align 4, !tbaa !15
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bh = load float, ptr %i.bg, align 8, !tbaa !15
  %i.bi = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bh, float 4.500000e-01)
  store float %i.bi, ptr %i.bg, align 8, !tbaa !15
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.01214.i.i.i ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %i.bl = load float, ptr %i.bk, align 16, !tbaa !15
  %i.bm = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bl, float 4.500000e-01)
  store float %i.bm, ptr %i.bk, align 16, !tbaa !15
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 20 ; 2 uses
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !15
  %i.bp = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bo, float 4.500000e-01)
  store float %i.bp, ptr %i.bn, align 4, !tbaa !15
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 24 ; 2 uses
  %i.br = load float, ptr %i.bq, align 8, !tbaa !15
  %i.bs = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.br, float 4.500000e-01)
  store float %i.bs, ptr %i.bq, align 8, !tbaa !15
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.01214.i.i.i ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32 ; 2 uses
  %i.bv = load float, ptr %i.bu, align 32, !tbaa !15
  %i.bw = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bv, float 4.500000e-01)
  store float %i.bw, ptr %i.bu, align 32, !tbaa !15
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 36 ; 2 uses
  %i.by = load float, ptr %i.bx, align 4, !tbaa !15
  %i.bz = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.by, float 4.500000e-01)
  store float %i.bz, ptr %i.bx, align 4, !tbaa !15
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bt, i64 40 ; 2 uses
  %i.cb = load float, ptr %i.ca, align 8, !tbaa !15
  %i.cc = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cb, float 4.500000e-01)
  store float %i.cc, ptr %i.ca, align 8, !tbaa !15
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.01214.i.i.i ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 48 ; 2 uses
  %i.cf = load float, ptr %i.ce, align 16, !tbaa !15
  %i.cg = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cf, float 4.500000e-01)
  store float %i.cg, ptr %i.ce, align 16, !tbaa !15
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 52 ; 2 uses
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !15
  %i.cj = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ci, float 4.500000e-01)
  store float %i.cj, ptr %i.ch, align 4, !tbaa !15
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 56 ; 2 uses
  %i.cl = load float, ptr %i.ck, align 8, !tbaa !15
  %i.cm = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cl, float 4.500000e-01)
  store float %i.cm, ptr %i.ck, align 8, !tbaa !15
  %i.cn = add nuw i64 %.01214.i.i.i, 16           ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %gamma_correct.exit.i.i.loopexit.unr-lcssa, label %.preheader.i.i.i

gamma_correct.exit.i.i.loopexit.unr-lcssa:        ; preds = %.preheader.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %gamma_correct.exit.i.i, label %.preheader.i.i.i.epil.preheader

.preheader.i.i.i.epil.preheader:                  ; preds = %gamma_correct.exit.i.i.loopexit.unr-lcssa, %.preheader.i.i.i.preheader
  %.01214.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.preheader ], [ %i.cn, %gamma_correct.exit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod236 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod236)
  br label %.preheader.i.i.i.epil

.preheader.i.i.i.epil:                            ; preds = %.preheader.i.i.i.epil, %.preheader.i.i.i.epil.preheader
  %.01214.i.i.i.epil = phi i64 [ %i.cx, %.preheader.i.i.i.epil ], [ %.01214.i.i.i.epil.init, %.preheader.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.i.i.epil ], [ 0, %.preheader.i.i.i.epil.preheader ]
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.01214.i.i.i.epil ; 4 uses
  %i.cp = load float, ptr %i.co, align 16, !tbaa !15
  %i.cq = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cp, float 4.500000e-01)
  store float %i.cq, ptr %i.co, align 16, !tbaa !15
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 4 ; 2 uses
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !15
  %i.ct = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cs, float 4.500000e-01)
  store float %i.ct, ptr %i.cr, align 4, !tbaa !15
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  %i.cv = load float, ptr %i.cu, align 8, !tbaa !15
  %i.cw = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cv, float 4.500000e-01)
  store float %i.cw, ptr %i.cu, align 8, !tbaa !15
  %i.cx = add nuw i64 %.01214.i.i.i.epil, 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %gamma_correct.exit.i.i, label %.preheader.i.i.i.epil, !llvm.loop !519

gamma_correct.exit.i.i:                           ; preds = %gamma_correct.exit.i.i.loopexit.unr-lcssa, %.preheader.i.i.i.epil, %bb.f
  %i.cy = and i32 %1, 2
  %.not185.i.i = icmp eq i32 %i.cy, 0
  br i1 %.not185.i.i, label %detail_enhance.exit.i.i, label %bb.g

bb.g:                                             ; preds = %gamma_correct.exit.i.i
  %4 = sitofp reassoc nsz arcp contract afn i32 %i.aa to float
  %i.cz = sitofp reassoc nsz arcp contract afn i32 %i.z to float
  %5 = tail call reassoc nnan nsz arcp contract afn float @llvm.minnum.f32(float %4, float %i.cz)
  %i.da = fmul reassoc nnan nsz arcp contract afn float %5, 2.000000e-02
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %dt_XYZ_to_Lab.exit.i.i.i, %bb.g
  %i.db = tail call ptr @dt_bilateral_init(i32 noundef %i.aa, i32 noundef %i.z, float noundef %i.da, float noundef 5.000000e+00) #34 ; 5 uses
  %.not.i191.i.i = icmp eq ptr %i.db, null
  br i1 %.not.i191.i.i, label %bb.t, label %bb.s

.lr.ph.i.i.i:                                     ; preds = %bb.g, %dt_XYZ_to_Lab.exit.i.i.i
  %.02943.i.i.i = phi i64 [ %i.ff, %dt_XYZ_to_Lab.exit.i.i.i ], [ 0, %bb.g ] ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.02943.i.i.i ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.df = load float, ptr %i.de, align 8, !tbaa !15 ; 4 uses
  %i.dg = fmul reassoc nsz arcp contract afn float %i.df, f0x3E1283AB
  %i.dh = fmul reassoc nsz arcp contract afn float %i.df, 6.061690e-02
  %i.di = fmul reassoc nsz arcp contract afn float %i.df, f0x3F36D410
  %i.dj = load float, ptr %i.dc, align 16, !tbaa !15
  %i.dk = load float, ptr %i.dd, align 4, !tbaa !15
  %i.dl = insertelement <4 x float> poison, float %i.dj, i64 0
  %i.dm = shufflevector <4 x float> %i.dl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dn = fmul reassoc arcp contract afn <4 x float> %i.dm, <float f0x3EDF452F, float f0x3E63D838, float 1.393220e-02, float 1.000000e+00>
  %i.do = insertelement <4 x float> poison, float %i.dk, i64 0
  %i.dp = shufflevector <4 x float> %i.do, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dq = fmul reassoc arcp contract afn <4 x float> %i.dp, <float f0x3EC5273A, float f0x3F37855B, float f0x3DC6DEB9, float 1.000000e+00>
  %i.dr = fadd reassoc nsz arcp contract afn <4 x float> %i.dq, %i.dn ; 4 uses
  %i.ds = extractelement <4 x float> %i.dr, i64 0
  %i.dt = fadd reassoc nsz arcp contract afn float %i.ds, %i.dg ; 2 uses
  %i.du = extractelement <4 x float> %i.dr, i64 1
  %i.dv = fadd reassoc nsz arcp contract afn float %i.du, %i.dh ; 3 uses
  %i.dw = extractelement <4 x float> %i.dr, i64 2
  %i.dx = fadd reassoc nsz arcp contract afn float %i.dw, %i.di ; 2 uses
  %i.dy = extractelement <4 x float> %i.dr, i64 3
  %i.dz = fadd reassoc nsz arcp contract afn float %i.dy, %i.df
  %i.ea = fmul reassoc nsz arcp contract afn float %i.dt, f0x3F84C0A6 ; 2 uses
  %i.eb = fcmp reassoc nsz arcp contract afn ogt float %i.ea, f0x3C111AA7
  br i1 %i.eb, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.ec = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.ea) #35
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.ed = fmul reassoc nsz arcp contract afn float %i.dt, f0x410137F7
  %i.ee = fadd reassoc nsz arcp contract afn float %i.ed, f0x3E0D3DCB
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ef = phi reassoc nsz arcp contract afn float [ %i.ec, %bb.h ], [ %i.ee, %bb.i ]
  %i.eg = fcmp reassoc nsz arcp contract afn ogt float %i.dv, f0x3C111AA7
  br i1 %i.eg, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.eh = fmul reassoc nsz arcp contract afn float %i.dv, f0x40F92F69
  %i.ei = fadd reassoc nsz arcp contract afn float %i.eh, f0x3E0D3DCB
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ej = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.dv) #35
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ek = phi reassoc nsz arcp contract afn float [ %i.ej, %bb.l ], [ %i.ei, %bb.k ] ; 3 uses
  %i.el = fmul reassoc nsz arcp contract afn float %i.dx, f0x3F9B2B9B ; 2 uses
  %i.em = fcmp reassoc nsz arcp contract afn ogt float %i.el, f0x3C111AA7
  br i1 %i.em, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.en = fmul reassoc nsz arcp contract afn float %i.dx, f0x41170A26
  %i.eo = fadd reassoc nsz arcp contract afn float %i.en, f0x3E0D3DCB
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ep = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.el) #35
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.eq = phi reassoc nsz arcp contract afn float [ %i.ep, %bb.o ], [ %i.eo, %bb.n ]
  %i.er = fmul reassoc nsz arcp contract afn float %i.dz, 0.000000e+00 ; 3 uses
  %i.es = fcmp reassoc nsz arcp contract afn ogt float %i.er, f0x3C111AA7
  br i1 %i.es, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.et = fadd reassoc nsz arcp contract afn float %i.er, f0x3E0D3DCB
  br label %dt_XYZ_to_Lab.exit.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.eu = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.er) #35
  br label %dt_XYZ_to_Lab.exit.i.i.i

dt_XYZ_to_Lab.exit.i.i.i:                         ; preds = %bb.r, %bb.q
  %i.ev = phi reassoc nsz arcp contract afn float [ %i.eu, %bb.r ], [ %i.et, %bb.q ]
  %i.ew = fmul reassoc nsz arcp contract afn float %i.ek, 1.160000e+02
  %i.ex = fadd reassoc nsz arcp contract afn float %i.ew, -1.600000e+01
  %i.ey = fsub reassoc nsz arcp contract afn float %i.ef, %i.ek
  %i.ez = fsub reassoc nsz arcp contract afn float %i.eq, %i.ek
  %i.fa = insertelement <4 x float> poison, float %i.ex, i64 0
  %i.fb = insertelement <4 x float> %i.fa, float %i.ey, i64 1
  %i.fc = insertelement <4 x float> %i.fb, float %i.ez, i64 2
  %i.fd = insertelement <4 x float> %i.fc, float %i.ev, i64 3
  %i.fe = fmul reassoc nsz arcp contract afn <4 x float> %i.fd, <float 1.000000e+00, float 5.000000e+02, float -2.000000e+02, float 0.000000e+00>
  store <4 x float> %i.fe, ptr %i.dc, align 16, !tbaa !15
  %i.ff = add nuw i64 %.02943.i.i.i, 4            ; 2 uses
  %i.fg = icmp ult i64 %i.ff, %i.al
  br i1 %i.fg, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

bb.s:                                             ; preds = %._crit_edge.i.i.i
  tail call void @dt_bilateral_splat(ptr noundef nonnull %i.db, ptr noundef nonnull %i.ah) #34
  tail call void @dt_bilateral_blur(ptr noundef nonnull %i.db) #34
  tail call void @dt_bilateral_slice_to_output(ptr noundef nonnull %i.db, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.ah, float noundef 1.000000e+01) #34
  tail call void @dt_bilateral_free(ptr noundef nonnull %i.db) #34
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.i.i.i
  br i1 %.not.i.i.i, label %detail_enhance.exit.i.i, label %.lr.ph46.i.i.i.preheader

.lr.ph46.i.i.i.preheader:                         ; preds = %bb.t
  %i.fh = add i64 %i.al, -4                       ; 2 uses
  %min.iters.check = icmp ult i64 %i.fh, 32
  br i1 %min.iters.check, label %.lr.ph46.i.i.i.preheader235, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph46.i.i.i.preheader
  %i.fi = lshr exact i64 %i.fh, 2
  %i.fj = add nuw nsw i64 %i.fi, 1                ; 2 uses
  %i.fk = and i64 %i.fj, 7                        ; 2 uses
  %i.fl = icmp eq i64 %i.fk, 0
  %i.fm = select i1 %i.fl, i64 8, i64 %i.fk
  %n.vec = sub nsw i64 %i.fj, %i.fm               ; 2 uses
  %i.fn = shl i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.idx = shl nuw i64 %index, 4
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx ; 2 uses
  %wide.vec = load <32 x float>, ptr %i.fo, align 64, !tbaa !15 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec152 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec153 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.fp = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec152, splat (float 2.000000e-03)
  %i.fq = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, splat (float 8.620690e-03)
  %i.fr = fadd reassoc nsz arcp contract afn <8 x float> %i.fq, splat (float f0x3E0D3DCB) ; 7 uses
  %i.fs = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec153, splat (float 5.000000e-03)
  %i.ft = fadd reassoc nsz arcp contract afn <8 x float> %i.fr, %i.fp ; 5 uses
  %i.fu = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.ft, splat (float f0x3E53DCB1)
  %i.fv = fmul reassoc nsz arcp contract afn <8 x float> %i.ft, %i.ft
  %i.fw = fmul reassoc nsz arcp contract afn <8 x float> %i.fv, %i.ft
  %i.fx = fmul reassoc nsz arcp contract afn <8 x float> %i.ft, splat (float f0x3E038026)
  %i.fy = fadd reassoc nsz arcp contract afn <8 x float> %i.fx, splat (float f0xBC911AA6)
  %i.fz = select reassoc nsz arcp contract afn <8 x i1> %i.fu, <8 x float> %i.fw, <8 x float> %i.fy ; 3 uses
  %i.ga = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.fr, splat (float f0x3E53DCB1)
  %i.gb = fmul reassoc nsz arcp contract afn <8 x float> %i.fr, %i.fr
  %i.gc = fmul reassoc nsz arcp contract afn <8 x float> %i.gb, %i.fr
  %i.gd = fmul reassoc nsz arcp contract afn <8 x float> %i.fr, splat (float f0x3E038026)
  %i.ge = fadd reassoc nsz arcp contract afn <8 x float> %i.gd, splat (float f0xBC911AA6)
  %i.gf = select reassoc nsz arcp contract afn <8 x i1> %i.ga, <8 x float> %i.gc, <8 x float> %i.ge ; 3 uses
  %i.gg = fsub reassoc nsz arcp contract afn <8 x float> %i.fr, %i.fs ; 5 uses
  %i.gh = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.gg, splat (float f0x3E53DCB1)
  %i.gi = fmul reassoc nsz arcp contract afn <8 x float> %i.gg, %i.gg
  %i.gj = fmul reassoc nsz arcp contract afn <8 x float> %i.gi, %i.gg
  %i.gk = fmul reassoc nsz arcp contract afn <8 x float> %i.gg, splat (float f0x3E038026)
  %i.gl = fadd reassoc nsz arcp contract afn <8 x float> %i.gk, splat (float f0xBC911AA6)
  %i.gm = select reassoc nsz arcp contract afn <8 x i1> %i.gh, <8 x float> %i.gj, <8 x float> %i.gl ; 3 uses
  %i.gn = fmul reassoc nsz arcp contract afn <8 x float> %i.fz, splat (float 9.642000e-01)
  %i.go = fmul reassoc nsz arcp contract afn <8 x float> %i.gm, splat (float f0x3F532CA5)
  %i.gp = fmul reassoc nsz arcp contract afn <8 x float> %i.fz, splat (float f0x3D8E11AE)
  %i.gq = fmul reassoc nsz arcp contract afn <8 x float> %i.gf, splat (float f0xBE6A7CB9)
  %i.gr = fadd reassoc nsz arcp contract afn <8 x float> %i.gp, %i.gq
  %i.gs = fmul reassoc nsz arcp contract afn <8 x float> %i.gm, splat (float f0x3F94602A)
  %i.gt = fadd reassoc nsz arcp contract afn <8 x float> %i.gr, %i.gs
  %i.gu = fadd reassoc nsz arcp contract afn <8 x float> %i.gn, %i.gf
  %i.gv = fadd reassoc nsz arcp contract afn <8 x float> %i.gu, %i.go
  %i.gw = fmul reassoc nsz arcp contract afn <8 x float> %i.gv, zeroinitializer
  %i.gx = shufflevector <8 x float> %i.fz, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gy = fmul reassoc nsz arcp contract afn <16 x float> %i.gx, <float f0x404162F2, float f0x404162F2, float f0x404162F2, float f0x404162F2, float f0x404162F2, float f0x404162F2, float f0x404162F2, float f0x404162F2, float f0xBF719831, float f0xBF719831, float f0xBF719831, float f0xBF719831, float f0xBF719831, float f0xBF719831, float f0xBF719831, float f0xBF719831>
  %i.gz = shufflevector <8 x float> %i.gf, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ha = fmul reassoc nsz arcp contract afn <16 x float> %i.gz, <float f0xBFCEF57D, float f0xBFCEF57D, float f0xBFCEF57D, float f0xBFCEF57D, float f0xBFCEF57D, float f0xBFCEF57D, float f0xBFCEF57D, float f0xBFCEF57D, float f0x3FF54420, float f0x3FF54420, float f0x3FF54420, float f0x3FF54420, float f0x3FF54420, float f0x3FF54420, float f0x3FF54420, float f0x3FF54420>
  %i.hb = fadd reassoc nsz arcp contract afn <16 x float> %i.gy, %i.ha
  %i.hc = shufflevector <8 x float> %i.gm, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.hd = fmul reassoc nsz arcp contract afn <16 x float> %i.hc, <float f0xBECF35E2, float f0xBECF35E2, float f0xBECF35E2, float f0xBECF35E2, float f0xBECF35E2, float f0xBECF35E2, float f0xBECF35E2, float f0xBECF35E2, float f0x3CE2116F, float f0x3CE2116F, float f0x3CE2116F, float f0x3CE2116F, float f0x3CE2116F, float f0x3CE2116F, float f0x3CE2116F, float f0x3CE2116F>
  %i.he = fadd reassoc nsz arcp contract afn <16 x float> %i.hb, %i.hd
  %i.hf = shufflevector <8 x float> %i.gt, <8 x float> %i.gw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.he, <16 x float> %i.hf, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.fo, align 64, !tbaa !15
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hg = icmp eq i64 %index.next, %n.vec
  br i1 %i.hg, label %.lr.ph46.i.i.i.preheader235, label %vector.body, !llvm.loop !520

.lr.ph46.i.i.i.preheader235:                      ; preds = %vector.body, %.lr.ph46.i.i.i.preheader
  %.044.i.i.i.ph = phi i64 [ 0, %.lr.ph46.i.i.i.preheader ], [ %i.fn, %vector.body ]
  br label %.lr.ph46.i.i.i

.lr.ph46.i.i.i:                                   ; preds = %.lr.ph46.i.i.i.preheader235, %.lr.ph46.i.i.i
  %.044.i.i.i = phi i64 [ %i.iz, %.lr.ph46.i.i.i ], [ %.044.i.i.i.ph, %.lr.ph46.i.i.i.preheader235 ] ; 2 uses
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.044.i.i.i ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !15
  %i.hk = load float, ptr %i.hh, align 16, !tbaa !15
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hm = load float, ptr %i.hl, align 8, !tbaa !15
  %i.hn = fmul reassoc nsz arcp contract afn float %i.hj, 2.000000e-03
end_hunk_0
begin_hunk_1_@_draw_retrieve_lines_from_params:bb.a
  %i.dc = getelementptr inbounds nuw i8, ptr %i.d, i64 236
  store float %i.db, ptr %i.dc, align 4, !tbaa !233
  %i.dd = getelementptr inbounds nuw i8, ptr %i.m, i64 108
  %i.de = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %i.df = load <2 x i32>, ptr %i.dd, align 4, !tbaa !17
  store <2 x i32> %i.df, ptr %i.de, align 8, !tbaa !17
  %i.dg = getelementptr inbounds nuw i8, ptr %i.d, i64 368
  store i32 3, ptr %i.dg, align 8, !tbaa !197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  br label %bb.o

.lr.ph120:                                        ; preds = %.lr.ph120.preheader, %.lr.ph120
  %indvars.iv125 = phi i64 [ 0, %.lr.ph120.preheader ], [ %indvars.iv.next126, %.lr.ph120 ] ; 3 uses
  %.095117 = phi i32 [ 0, %.lr.ph120.preheader ], [ %.1, %.lr.ph120 ]
  %.096116 = phi i32 [ 0, %.lr.ph120.preheader ], [ %.197, %.lr.ph120 ]
  %.idx = shl nuw nsw i64 %indvars.iv125, 4
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = getelementptr inbounds nuw [64 x i8], ptr %i.cu, i64 %indvars.iv125 ; 10 uses
  %i.dk = load <2 x float>, ptr %i.dh, align 16, !tbaa !15 ; 5 uses
  %i.dl = extractelement <2 x float> %i.dk, i64 0
  %i.dm = extractelement <2 x float> %i.dk, i64 1 ; 3 uses
  store <2 x float> %i.dk, ptr %i.dj, align 16, !tbaa !15
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store float 1.000000e+00, ptr %i.dn, align 8, !tbaa !15
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 12
  %i.dp = load <2 x float>, ptr %i.di, align 8, !tbaa !15 ; 5 uses
  %i.dq = extractelement <2 x float> %i.dp, i64 0
  %i.dr = extractelement <2 x float> %i.dp, i64 1 ; 3 uses
  %i.ds = fsub reassoc nsz arcp contract afn float %i.dm, %i.dr ; 3 uses
  %i.dt = fsub reassoc nsz arcp contract afn <2 x float> %i.dk, %i.dp
  %i.du = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.dt) ; 2 uses
  %shift = shufflevector <2 x float> %i.du, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dv = fcmp ule <2 x float> %i.du, %shift
  %i.dw = extractelement <2 x i1> %i.dv, i64 0    ; 3 uses
  %spec.select = select i1 %i.dw, i32 7, i32 5
  store <2 x float> %i.dp, ptr %i.do, align 4, !tbaa !15
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dj, i64 20
  store float 1.000000e+00, ptr %i.dx, align 4, !tbaa !15
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dj, i64 48
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <2 x float> %i.dp, %i.dk ; 3 uses
  %i.dz = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ea = fmul reassoc nsz arcp contract afn float %i.dr, %i.dl
  %i.eb = fmul reassoc nsz arcp contract afn float %i.dm, %i.dq
  %i.ec = fsub reassoc nsz arcp contract afn float %i.ea, %i.eb ; 3 uses
  %i.ed = fmul reassoc nsz arcp contract afn float %i.ds, %i.ds
  %foldExtExtBinop149 = fmul reassoc nsz arcp contract afn <2 x float> %foldExtExtBinop, %foldExtExtBinop
  %i.ee = extractelement <2 x float> %foldExtExtBinop149, i64 0 ; 2 uses
  %i.ef = fadd reassoc nsz arcp contract afn float %i.ed, %i.ee
  %i.eg = fmul reassoc nsz arcp contract afn float %i.ec, %i.ec
  %i.eh = fadd reassoc nsz arcp contract afn float %i.ef, %i.eg ; 2 uses
  %i.ei = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.eh)
  %i.ej = fcmp reassoc nsz arcp contract afn ogt float %i.eh, 0.000000e+00
  %i.ek = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ei
  %i.el = select reassoc nsz arcp contract afn i1 %i.ej, float %i.ek, float 1.000000e+00 ; 3 uses
  %i.em = fmul reassoc nsz arcp contract afn float %i.el, %i.ds ; 2 uses
  %i.en = fmul reassoc nsz arcp contract afn float %i.el, %i.dz ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dj, i64 52
  %i.ep = fmul reassoc nsz arcp contract afn float %i.el, %i.ec
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dj, i64 56
  %i.er = call reassoc nsz arcp contract afn float @hypotf(float noundef %i.em, float noundef %i.en) #35 ; 2 uses
  %i.es = fcmp reassoc nsz arcp contract afn ogt float %i.er, 0.000000e+00
  %i.et = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.er
  %i.eu = select reassoc nsz arcp contract afn i1 %i.es, float %i.et, float 1.000000e+00 ; 3 uses
  %i.ev = fmul reassoc nsz arcp contract afn float %i.eu, %i.em
  store float %i.ev, ptr %i.dy, align 16, !tbaa !15
  %i.ew = fmul reassoc nsz arcp contract afn float %i.eu, %i.en
  store float %i.ew, ptr %i.eo, align 4, !tbaa !15
  %i.ex = fmul reassoc nsz arcp contract afn float %i.ep, %i.eu
  store float %i.ex, ptr %i.eq, align 8, !tbaa !15
  %i.ey = fsub reassoc nsz arcp contract afn float %i.dr, %i.dm ; 2 uses
  %i.ez = fmul reassoc nsz arcp contract afn float %i.ey, %i.ey
  %i.fa = fadd reassoc nsz arcp contract afn float %i.ez, %i.ee
  %i.fb = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.fa)
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  store float %i.fb, ptr %i.fc, align 8, !tbaa !188
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dj, i64 28
  store <2 x float> splat (float 1.000000e+00), ptr %i.fd, align 4, !tbaa !15
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dj, i64 36
  store i32 %spec.select, ptr %i.fe, align 4, !tbaa !189
  %i.ff = zext i1 %i.dw to i32
  %.197 = add nuw nsw i32 %.096116, %i.ff         ; 2 uses
  %not. = xor i1 %i.dw, true
  %i.fg = zext i1 %not. to i32
  %.1 = add nuw nsw i32 %.095117, %i.fg           ; 2 uses
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %exitcond129.not = icmp eq i64 %indvars.iv.next126, %wide.trip.count128
  br i1 %exitcond129.not, label %._crit_edge121, label %.lr.ph120

.critedge114:                                     ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %.critedge114, %.critedge, %bb.f, %bb.e, %bb.d, %bb.c, %._crit_edge121, %bb.j, %bb.a
  %.4 = phi i32 [ 0, %bb.a ], [ 1, %bb.j ], [ 1, %._crit_edge121 ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %.critedge ], [ 0, %.critedge114 ], [ 0, %bb.k ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_do_get_structure_lines(ptr noundef %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !125 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.d = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.c) #34 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !152
  %i.g = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.c) #34 ; 0 uses
  %i.h = icmp eq ptr %i.f, null
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.105, i32 noundef 5) #34
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.i) #34
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !126
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !143
  tail call void @dt_dev_pixelpipe_cache_flush(ptr noundef %i.m) #34
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !126
  tail call void @dt_dev_reprocess_preview(ptr noundef %i.n) #34
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !245
  %.val = load ptr, ptr %i.a, align 16, !tbaa !125
  tail call fastcc void @_gui_update_structure_states(ptr %.val, ptr noundef %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !126  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  %i.t = load ptr, ptr %i.s, align 16, !tbaa !143
  %i.u = tail call ptr @dt_dev_distort_get_iop_pipe(ptr noundef %i.r, ptr noundef %i.t, ptr noundef nonnull %0) #34
  %i.v = load ptr, ptr %i.a, align 16, !tbaa !125 ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 148 ; 3 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !178
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %bb.d, label %_do_clean_structure.exit

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_draw_save_lines_to_params(ptr noundef nonnull %0)
  store i32 1, ptr %i.w, align 4, !tbaa !178
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 216
  store i32 0, ptr %i.y, align 8, !tbaa !180
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 220
  store i32 0, ptr %i.z, align 4, !tbaa !230
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 224
  store i32 0, ptr %i.aa, align 8, !tbaa !232
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 192 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !179 ; 2 uses
  %.not16.i = icmp eq ptr %i.ac, null
  br i1 %.not16.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.ac) #34
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr null, ptr %i.ab, align 8, !tbaa !179
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 228 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !183
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !183
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 368
  store i32 0, ptr %i.ag, align 8, !tbaa !197
  store i32 0, ptr %i.w, align 4, !tbaa !178
  br label %_do_clean_structure.exit

_do_clean_structure.exit:                         ; preds = %bb.c, %bb.f
  %i.ah = load ptr, ptr %i.o, align 8, !tbaa !245
  %i.ai = tail call i32 @gtk_toggle_button_get_active(ptr noundef %i.ah) #34
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_do_clean_structure.exit
  tail call void @dt_control_queue_redraw_center() #34
  br label %bb.i

bb.h:                                             ; preds = %_do_clean_structure.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  store i32 3, ptr %i.aj, align 8, !tbaa !197
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 108
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.am = load <2 x i32>, ptr %i.ak, align 4, !tbaa !17
  store <2 x i32> %i.am, ptr %i.al, align 8, !tbaa !17
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  store i32 0, ptr %i.an, align 8, !tbaa !307
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 212
  store i32 0, ptr %i.ao, align 4, !tbaa !308
  %i.ap = tail call fastcc i32 @_draw_retrieve_lines_from_params(ptr noundef nonnull %0, i32 noundef 3) ; 0 uses
  tail call void @dt_control_queue_redraw_center() #34
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.sincos.f32(float) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.sincos.f64(double) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.powi.f64.i32(double, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr>, <8 x i1>, <8 x i32>) #30

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8i32.v8p0(<8 x i32>, <8 x ptr>, <8 x i1>) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x i32> @llvm.masked.load.v4i32.p0(ptr captures(none), <4 x i1>, <4 x i32>) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.sqrt.v3f32(<3 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <5 x float> @llvm.masked.load.v5f32.p0(ptr captures(none), <5 x i1>, <5 x float>) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v4f64(double, <4 x double>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x ptr> @llvm.masked.load.v4p0.p0(ptr captures(none), <4 x i1>, <4 x ptr>) #32

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr>, <4 x i1>, <4 x double>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmul.v2f32(float, <2 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.sqrt.v4f64(<4 x double>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.exp.v4f64(<4 x double>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.ceil.v2f64(<2 x double>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fabs.v8f32(<8 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr>, <4 x i1>, <4 x float>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #12

attributes #0 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #23 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #25 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #26 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #28 = { nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #29 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #33 = { nounwind allocsize(0) }
attributes #34 = { nounwind }
attributes #35 = { nounwind willreturn memory(none) }
attributes #36 = { nounwind allocsize(0,1) }
attributes #37 = { nounwind willreturn memory(read) }
attributes #38 = { cold noreturn nounwind }
attributes #39 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 double", !11, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"float", !7, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!11, !11, i64 0}
!17 = !{!8, !8, i64 0}
!18 = !{!"p1 _ZTS15dt_iop_module_t", !11, i64 0}
!19 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !11, i64 0}
!20 = !{!"p1 _ZTS18dt_histogram_roi_t", !11, i64 0}
!21 = !{!"dt_dev_histogram_collection_params_t", !20, i64 0, !8, i64 8}
!22 = !{!"p1 int", !11, i64 0}
!23 = !{!"long", !7, i64 0}
!24 = !{!"dt_dev_histogram_stats_t", !8, i64 0, !23, i64 8, !8, i64 16, !8, i64 20}
!25 = !{!"dt_iop_roi_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !14, i64 16}
!26 = !{!"short", !7, i64 0}
!27 = !{!"", !26, i64 0, !26, i64 2}
!28 = !{!"", !8, i64 0, !7, i64 16}
!29 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 12, !27, i64 48, !28, i64 64, !7, i64 96, !8, i64 112}
!30 = !{!"p1 _ZTS11_GHashTable", !11, i64 0}
!31 = !{!"p1 float", !11, i64 0}
!32 = !{!"dt_dev_distorted_mask_cache_t", !31, i64 0, !25, i64 8, !23, i64 32, !23, i64 40}
!33 = !{!"dt_dev_pixelpipe_iop_t", !18, i64 0, !19, i64 8, !11, i64 16, !11, i64 24, !8, i64 32, !8, i64 36, !21, i64 40, !22, i64 56, !24, i64 64, !7, i64 88, !14, i64 104, !8, i64 108, !8, i64 112, !23, i64 120, !8, i64 128, !8, i64 132, !25, i64 136, !25, i64 156, !25, i64 176, !25, i64 196, !8, i64 216, !8, i64 220, !29, i64 224, !29, i64 352, !7, i64 480, !8, i64 516, !30, i64 520, !32, i64 528, !32, i64 576}
!34 = !{!33, !11, i64 16}
!35 = !{!"dt_iop_ashift_data_t", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !14, i64 24, !14, i64 28, !14, i64 32, !14, i64 36, !14, i64 40}
!36 = !{!35, !14, i64 0}
!37 = !{!35, !14, i64 4}
!38 = !{!35, !14, i64 8}
!39 = !{!35, !14, i64 12}
!40 = !{!35, !14, i64 24}
!41 = !{!35, !14, i64 28}
!42 = !{!35, !14, i64 32}
!43 = !{!35, !14, i64 36}
!44 = !{!35, !14, i64 40}
!45 = !{!35, !14, i64 16}
!46 = !{!35, !14, i64 20}
!47 = !{!33, !8, i64 144}
!48 = !{!33, !8, i64 148}
!49 = !{!"llvm.loop.isvectorized", i32 1}
end_hunk_1
