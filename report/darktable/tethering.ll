Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/tethering?download=true
inline.NumInlined: 21
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_capture_view_get_selected_imgid:bb.a
  %i.c = load i32, ptr %i.b, align 8, !tbaa !71
  ret i32 %i.c
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  tail call void @free(ptr noundef %i.b) #17
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define void @expose(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %6 = alloca %struct.dt_imageio_module_format_t, align 8 ; 7 uses
  %7 = alloca %struct._tethering_format_t, align 8 ; 9 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca ptr, align 8                      ; 8 uses
  tail call void @cairo_set_source_rgb(ptr noundef %1, double noundef 2.000000e-01, double noundef 2.000000e-01, double noundef 2.000000e-01) #17
  %i.d = sitofp reassoc nsz arcp contract afn i32 %2 to double ; 4 uses
  %i.e = sitofp reassoc nsz arcp contract afn i32 %3 to double ; 4 uses
  tail call void @cairo_rectangle(ptr noundef %1, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.d, double noundef %i.e) #17
  tail call void @cairo_fill(ptr noundef %1) #17
  tail call void @cairo_save(ptr noundef %1) #17
  %i.f = getelementptr i8, ptr %0, i64 304
  %.val = load ptr, ptr %i.f, align 8, !tbaa !18  ; 8 uses
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 152), align 8, !tbaa !72
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !78   ; 9 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_expose_tethered_mode.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 4 ; 2 uses
  store i32 0, ptr %i.j, align 4, !tbaa !79
  %i.k = tail call ptr (...) @dt_view_active_images_get() #17 ; 2 uses
  %.not132.i = icmp eq ptr %i.k, null
  br i1 %.not132.i, label %thread-pre-split.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !81
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = trunc i64 %i.m to i32                    ; 2 uses
  store i32 %i.n, ptr %.val, align 8, !tbaa !71
  br label %bb.d

thread-pre-split.i:                               ; preds = %bb.b
  %.pr.i = load i32, ptr %.val, align 8, !tbaa !71
  br label %bb.d

bb.d:                                             ; preds = %thread-pre-split.i, %bb.c
  %i.o = phi i32 [ %.pr.i, %thread-pre-split.i ], [ %i.n, %bb.c ] ; 3 uses
  store i32 %i.o, ptr %i.j, align 4, !tbaa !79
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 32980
  %i.q = load i32, ptr %i.p, align 4, !tbaa !87
  %i.r = icmp eq i32 %i.q, 1
  br i1 %i.r, label %bb.e, label %bb.v

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 33032 ; 2 uses
  %i.t = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.s) #17 ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 32984
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !139  ; 8 uses
  %.not137.i = icmp eq ptr %i.v, null
  br i1 %.not137.i, label %bb.u, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 32992
  %i.x = load i32, ptr %i.w, align 8, !tbaa !140  ; 9 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 32996
  %i.z = load i32, ptr %i.y, align 4, !tbaa !141  ; 8 uses
  %i.aa = shl i32 %i.x, 2                         ; 2 uses
  %i.ab = mul i32 %i.aa, %i.z
  %i.ac = sext i32 %i.ab to i64
  %i.ad = tail call ptr @dt_alloc_aligned(i64 noundef range(i64 -2147483648, 2147483648) %i.ac) #17 ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ad, i64 64) ]
  %.not138.i = icmp eq ptr %i.ad, null
  br i1 %.not138.i, label %bb.p, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = tail call i32 @cairo_format_stride_for_width(i32 noundef 1, i32 noundef %i.x) #17 ; 2 uses
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 216), align 8, !tbaa !142
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = tail call i32 @pthread_rwlock_rdlock(ptr noundef nonnull %i.ag) #17 ; 0 uses
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 216), align 8, !tbaa !142
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2192
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !144
  tail call void @cmsDoTransformLineStride(ptr noundef %i.ak, ptr noundef nonnull %i.v, ptr noundef nonnull %i.ad, i32 noundef %i.x, i32 noundef %i.z, i32 noundef %i.aa, i32 noundef %i.ae, i32 noundef 0, i32 noundef 0) #17
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 216), align 8, !tbaa !142
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = tail call i32 @pthread_rwlock_unlock(ptr noundef nonnull %i.am) #17 ; 0 uses
  %i.ao = tail call ptr @cairo_image_surface_create_for_data(ptr noundef nonnull %i.ad, i32 noundef 1, i32 noundef %i.x, i32 noundef %i.z, i32 noundef %i.ae) #17 ; 4 uses
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !88
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1440
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !145 ; 2 uses
  tail call void @cairo_surface_set_device_scale(ptr noundef %i.ao, double noundef %i.ar, double noundef %i.ar) #17
  %i.as = tail call i32 @cairo_surface_status(ptr noundef %i.ao) #17
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !88
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1432
  %i.aw = load double, ptr %i.av, align 8, !tbaa !146 ; 3 uses
  %i.ax = fmul reassoc nsz arcp contract afn double %i.aw, 4.000000e+01
  %i.ay = fsub reassoc nsz arcp contract afn double %i.d, %i.ax
  %i.az = fptrunc reassoc nsz arcp contract afn double %i.ay to float
  %i.ba = fmul reassoc nsz arcp contract afn double %i.aw, 5.800000e+01
  %i.bb = fsub reassoc nsz arcp contract afn double %i.e, %i.ba
  %i.bc = fptrunc reassoc nsz arcp contract afn double %i.bb to float
  %i.bd = getelementptr inbounds nuw i8, ptr %i.i, i64 33000 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !94
  %i.bf = and i32 %i.be, 1
  %i.bg = icmp eq i32 %i.bf, 0                    ; 2 uses
  %..i = select i1 %i.bg, i32 %i.x, i32 %i.z
  %.38.i = select i1 %i.bg, i32 %i.z, i32 %i.x
  %i.bh = sitofp reassoc nsz arcp contract afn i32 %..i to float
  %i.bi = fdiv reassoc nsz arcp contract afn float %i.az, %i.bh
  %i.bj = sitofp reassoc nsz arcp contract afn i32 %.38.i to float
  %i.bk = fdiv reassoc nsz arcp contract afn float %i.bc, %i.bj
  %i.bl = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.bi, float %i.bk)
  %i.bm = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.bl, float 1.000000e+01)
  %i.bn = fmul reassoc nnan nsz arcp contract afn double %i.d, 5.000000e-01
  %i.bo = fmul reassoc nsz arcp contract afn double %i.aw, 1.800000e+01
  %i.bp = fadd reassoc nsz arcp contract afn double %i.bo, %i.e
  %i.bq = fmul reassoc nsz arcp contract afn double %i.bp, 5.000000e-01
  tail call void @cairo_translate(ptr noundef %1, double noundef %i.bn, double noundef %i.bq) #17
  %i.br = getelementptr inbounds nuw i8, ptr %i.i, i64 33020
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !147
  %i.bt = icmp eq i32 %i.bs, 1
  br i1 %i.bt, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @cairo_scale(ptr noundef %1, double noundef -1.000000e+00, double noundef 1.000000e+00) #17
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bu = load i32, ptr %i.bd, align 8, !tbaa !94 ; 2 uses
  %.not139.i = icmp eq i32 %i.bu, 0
  br i1 %.not139.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = sitofp reassoc nsz arcp contract afn i32 %i.bu to double
  %i.bw = fmul reassoc nnan nsz arcp contract afn double %i.bv, f0xBFF921FB54442D18
  tail call void @cairo_rotate(ptr noundef %1, double noundef %i.bw) #17
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bx = getelementptr inbounds nuw i8, ptr %i.i, i64 33004
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !95
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ca = fpext reassoc nsz arcp contract afn float %i.bm to double ; 2 uses
  tail call void @cairo_scale(ptr noundef %1, double noundef %i.ca, double noundef %i.ca) #17
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cb = sitofp reassoc nsz arcp contract afn i32 %i.x to double
  %i.cc = fmul reassoc nnan nsz arcp contract afn double %i.cb, -5.000000e-01
  %i.cd = sitofp reassoc nsz arcp contract afn i32 %i.z to double
  %i.ce = fmul reassoc nnan nsz arcp contract afn double %i.cd, -5.000000e-01
  tail call void @cairo_translate(ptr noundef %1, double noundef %i.cc, double noundef %i.ce) #17
  %i.cf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !88
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 1440
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !145 ; 2 uses
  tail call void @cairo_scale(ptr noundef %1, double noundef %i.ch, double noundef %i.ch) #17
  tail call void @cairo_set_source_surface(ptr noundef %1, ptr noundef %i.ao, double noundef 0.000000e+00, double noundef 0.000000e+00) #17
  tail call void @cairo_paint(ptr noundef %1) #17
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.g
  tail call void @cairo_surface_destroy(ptr noundef %i.ao) #17
  tail call void @free(ptr noundef nonnull %i.ad) #17
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.f
  %i.ci = sext i32 %i.x to i64
  %i.cj = shl nsw i64 %i.ci, 2
  %i.ck = sext i32 %i.z to i64
  %i.cl = mul i64 %i.cj, %i.ck                    ; 5 uses
  %i.cm = shl i64 %i.cl, 2
  %i.cn = tail call ptr @dt_alloc_aligned(i64 noundef %i.cm) #17 ; 12 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cn, i64 64) ]
  %.not140.i = icmp eq ptr %i.cn, null
  br i1 %.not140.i, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.co = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !148 ; 3 uses
  %.not23.i = icmp eq i64 %i.cl, 0
  br i1 %.not23.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.q
  %i.cp = add i64 %i.cl, -1                       ; 3 uses
  %i.cq = lshr i64 %i.cp, 2
  %i.cr = add nuw nsw i64 %i.cq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cl, 33
  br i1 %min.iters.check, label %.lr.ph.i.preheader44, label %vector.memcheck

.lr.ph.i.preheader44:                             ; preds = %vector.body, %vector.memcheck, %.lr.ph.i.preheader
  %.012122.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.preheader ], [ %i.cw, %vector.body ]
  br label %.lr.ph.i

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.cs = shl i64 %i.cp, 2
  %scevgep = getelementptr i8, ptr %i.cn, i64 %i.cs
  %scevgep39 = getelementptr i8, ptr %i.v, i64 %i.cp
  %bound0 = icmp ult ptr %i.cn, %scevgep39
  %bound1 = icmp ult ptr %i.v, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader44, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ct = and i64 %i.cr, 7                        ; 2 uses
  %i.cu = icmp eq i64 %i.ct, 0
  %i.cv = select i1 %i.cu, i64 8, i64 %i.ct
  %n.vec = sub nsw i64 %i.cr, %i.cv               ; 2 uses
  %i.cw = shl i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 4, i64 8, i64 12, i64 16, i64 20, i64 24, i64 28>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 6 uses
  %i.cx = shl nuw i64 %index, 2
  %i.cy = or disjoint <8 x i64> %vec.ind, splat (i64 1) ; 3 uses
  %i.cz = lshr <8 x i64> %vec.ind, splat (i64 33)
  %i.da = xor <8 x i64> %i.cz, %i.cy
  %i.db = mul <8 x i64> %i.da, splat (i64 7109453100751455733) ; 2 uses
  %i.dc = lshr <8 x i64> %i.db, splat (i64 28)
  %i.dd = xor <8 x i64> %i.dc, %i.db
  %i.de = mul <8 x i64> %i.dd, splat (i64 -3808689974395783757)
  %i.df = lshr <8 x i64> %i.de, splat (i64 32)
  %i.dg = trunc nuw <8 x i64> %i.df to <8 x i32>  ; 2 uses
  %i.dh = or disjoint <8 x i64> %vec.ind, splat (i64 3)
  %i.di = mul <8 x i64> %i.cy, %i.dh              ; 2 uses
  %i.dj = lshr <8 x i64> %i.di, splat (i64 33)
  %i.dk = xor <8 x i64> %i.dj, %i.di
  %i.dl = mul <8 x i64> %i.dk, splat (i64 7109453100751455733) ; 2 uses
  %i.dm = lshr <8 x i64> %i.dl, splat (i64 28)
  %i.dn = xor <8 x i64> %i.dm, %i.dl
  %i.do = mul <8 x i64> %i.dn, splat (i64 -3808689974395783757)
  %i.dp = lshr <8 x i64> %i.do, splat (i64 32)
  %i.dq = trunc nuw <8 x i64> %i.dp to <8 x i32>  ; 3 uses
  %i.dr = shl <8 x i32> %i.dq, splat (i32 9)
  %i.ds = xor <8 x i32> %i.dg, splat (i32 635086878) ; 2 uses
  %i.dt = xor <8 x i32> %i.dq, splat (i32 -1171427716) ; 3 uses
  %i.du = xor <8 x i32> %i.ds, %i.dq              ; 3 uses
  %i.dv = xor <8 x i32> %i.dt, %i.dg              ; 2 uses
  %i.dw = xor <8 x i32> %i.dr, %i.ds
  %i.dx = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.dt, <8 x i32> %i.dt, <8 x i32> splat (i32 11))
  %i.dy = shl <8 x i32> %i.du, splat (i32 9)
  %i.dz = xor <8 x i32> %i.dw, %i.dv              ; 2 uses
  %i.ea = xor <8 x i32> %i.dx, %i.du              ; 3 uses
  %i.eb = xor <8 x i32> %i.dz, %i.du              ; 3 uses
  %i.ec = xor <8 x i32> %i.ea, %i.dv              ; 2 uses
  %i.ed = xor <8 x i32> %i.dz, %i.dy
  %i.ee = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ea, <8 x i32> %i.ea, <8 x i32> splat (i32 11))
  %i.ef = shl <8 x i32> %i.eb, splat (i32 9)
  %i.eg = xor <8 x i32> %i.ed, %i.ec              ; 2 uses
  %i.eh = xor <8 x i32> %i.eb, %i.ee              ; 3 uses
  %i.ei = xor <8 x i32> %i.eg, %i.eb              ; 3 uses
  %i.ej = xor <8 x i32> %i.eh, %i.ec              ; 2 uses
  %i.ek = xor <8 x i32> %i.eg, %i.ef
  %i.el = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.eh, <8 x i32> %i.eh, <8 x i32> splat (i32 11))
  %i.em = shl <8 x i32> %i.ei, splat (i32 9)
  %i.en = xor <8 x i32> %i.ek, %i.ej              ; 2 uses
  %i.eo = xor <8 x i32> %i.ei, %i.el              ; 3 uses
  %i.ep = xor <8 x i32> %i.en, %i.ei              ; 2 uses
  %i.eq = xor <8 x i32> %i.eo, %i.ej              ; 3 uses
  %i.er = xor <8 x i32> %i.en, %i.em
  %i.es = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.eo, <8 x i32> %i.eo, <8 x i32> splat (i32 11)) ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.cx
  %wide.vec = load <32 x i8>, ptr %i.et, align 1, !tbaa !149, !alias.scope !150 ; 3 uses
  %strided.vec = shufflevector <32 x i8> %wide.vec, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec40 = shufflevector <32 x i8> %wide.vec, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec41 = shufflevector <32 x i8> %wide.vec, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.eu = uitofp <8 x i8> %strided.vec to <8 x float>
  %i.ev = add <8 x i32> %i.eq, %i.es
  %i.ew = xor <8 x i32> %i.er, %i.eq
  %i.ex = xor <8 x i32> %i.ep, %i.es              ; 3 uses
  %i.ey = xor <8 x i32> %i.ew, %i.ep
  %i.ez = xor <8 x i32> %i.ex, %i.eq              ; 2 uses
  %i.fa = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ex, <8 x i32> %i.ex, <8 x i32> splat (i32 11)) ; 2 uses
  %i.fb = lshr <8 x i32> %i.ev, splat (i32 8)
  %i.fc = uitofp nneg <8 x i32> %i.fb to <8 x float>
  %i.fd = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.fc, splat (float f0x33800000)
  %i.fe = fadd reassoc nnan nsz arcp contract afn <8 x float> %i.eu, splat (float -5.000000e-01)
  %i.ff = fadd reassoc nnan nsz arcp contract afn <8 x float> %i.fe, %i.fd
  %i.fg = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ff, splat (float f0x3B808081)
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %i.cn, <8 x i64> %vec.ind
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.fg, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !151, !alias.scope !152, !noalias !150
  %i.fh = uitofp <8 x i8> %strided.vec40 to <8 x float>
  %i.fi = add <8 x i32> %i.ez, %i.fa
  %i.fj = xor <8 x i32> %i.ey, %i.fa              ; 3 uses
  %i.fk = xor <8 x i32> %i.fj, %i.ez
  %i.fl = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.fj, <8 x i32> %i.fj, <8 x i32> splat (i32 11))
  %i.fm = lshr <8 x i32> %i.fi, splat (i32 8)
  %i.fn = uitofp nneg <8 x i32> %i.fm to <8 x float>
  %i.fo = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.fn, splat (float f0x33800000)
  %i.fp = fadd reassoc nnan nsz arcp contract afn <8 x float> %i.fh, splat (float -5.000000e-01)
  %i.fq = fadd reassoc nnan nsz arcp contract afn <8 x float> %i.fp, %i.fo
  %i.fr = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.fq, splat (float f0x3B808081)
  %wide.gep42 = getelementptr inbounds nuw [4 x i8], ptr %i.cn, <8 x i64> %i.cy
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.fr, <8 x ptr> align 4 %wide.gep42, <8 x i1> splat (i1 true)), !tbaa !151, !alias.scope !152, !noalias !150
  %i.fs = or disjoint <8 x i64> %vec.ind, splat (i64 2)
  %i.ft = uitofp <8 x i8> %strided.vec41 to <8 x float>
  %i.fu = add <8 x i32> %i.fk, %i.fl
  %i.fv = lshr <8 x i32> %i.fu, splat (i32 8)
  %i.fw = uitofp nneg <8 x i32> %i.fv to <8 x float>
  %i.fx = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.fw, splat (float f0x33800000)
  %i.fy = fadd reassoc nnan nsz arcp contract afn <8 x float> %i.ft, splat (float -5.000000e-01)
  %i.fz = fadd reassoc nnan nsz arcp contract afn <8 x float> %i.fy, %i.fx
  %i.ga = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.fz, splat (float f0x3B808081)
  %wide.gep43 = getelementptr inbounds nuw [4 x i8], ptr %i.cn, <8 x i64> %i.fs
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ga, <8 x ptr> align 4 %wide.gep43, <8 x i1> splat (i1 true)), !tbaa !151, !alias.scope !152, !noalias !150
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 32)
  %i.gb = icmp eq i64 %index.next, %n.vec
  br i1 %i.gb, label %.lr.ph.i.preheader44, label %vector.body, !llvm.loop !136

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.q
  %i.gc = tail call ptr @dt_ioppr_add_profile_info_to_list(ptr noundef %i.co, i32 noundef 1, ptr noundef nonnull @.str.19, i32 noundef 1) #17 ; 3 uses
  %i.gd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 216), align 8, !tbaa !142
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 120
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !155
  switch i32 %i.gf, label %bb.s [
    i32 18, label %bb.r
    i32 16, label %bb.t
  ]

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader44, %.lr.ph.i
  %.012122.i = phi i64 [ %i.jr, %.lr.ph.i ], [ %.012122.i.ph, %.lr.ph.i.preheader44 ] ; 7 uses
  %i.gg = or disjoint i64 %.012122.i, 1           ; 4 uses
  %i.gh = lshr i64 %.012122.i, 33
  %i.gi = xor i64 %i.gh, %i.gg
  %i.gj = mul i64 %i.gi, 7109453100751455733      ; 2 uses
  %i.gk = lshr i64 %i.gj, 28
  %i.gl = xor i64 %i.gk, %i.gj
  %i.gm = mul i64 %i.gl, -3808689974395783757
  %i.gn = lshr i64 %i.gm, 32
  %i.go = trunc nuw i64 %i.gn to i32              ; 2 uses
  %i.gp = or disjoint i64 %.012122.i, 3
  %i.gq = mul i64 %i.gg, %i.gp                    ; 2 uses
  %i.gr = lshr i64 %i.gq, 33
  %i.gs = xor i64 %i.gr, %i.gq
  %i.gt = mul i64 %i.gs, 7109453100751455733      ; 2 uses
  %i.gu = lshr i64 %i.gt, 28
  %i.gv = xor i64 %i.gu, %i.gt
  %i.gw = mul i64 %i.gv, -3808689974395783757
  %i.gx = lshr i64 %i.gw, 32
  %i.gy = trunc nuw i64 %i.gx to i32              ; 3 uses
  %i.gz = shl i32 %i.gy, 9
  %i.ha = xor i32 %i.go, 635086878                ; 2 uses
  %i.hb = xor i32 %i.gy, -1171427716              ; 3 uses
  %i.hc = xor i32 %i.ha, %i.gy                    ; 3 uses
  %i.hd = xor i32 %i.hb, %i.go                    ; 2 uses
  %i.he = xor i32 %i.gz, %i.ha
  %i.hf = tail call noundef i32 @llvm.fshl.i32(i32 %i.hb, i32 %i.hb, i32 11)
  %i.hg = shl i32 %i.hc, 9
  %i.hh = xor i32 %i.he, %i.hd                    ; 2 uses
  %i.hi = xor i32 %i.hf, %i.hc                    ; 3 uses
  %i.hj = xor i32 %i.hh, %i.hc                    ; 3 uses
  %i.hk = xor i32 %i.hi, %i.hd                    ; 2 uses
  %i.hl = xor i32 %i.hh, %i.hg
  %i.hm = tail call noundef i32 @llvm.fshl.i32(i32 %i.hi, i32 %i.hi, i32 11)
  %i.hn = shl i32 %i.hj, 9
  %i.ho = xor i32 %i.hl, %i.hk                    ; 2 uses
  %i.hp = xor i32 %i.hj, %i.hm                    ; 3 uses
  %i.hq = xor i32 %i.ho, %i.hj                    ; 3 uses
  %i.hr = xor i32 %i.hp, %i.hk                    ; 2 uses
  %i.hs = xor i32 %i.ho, %i.hn
  %i.ht = tail call noundef i32 @llvm.fshl.i32(i32 %i.hp, i32 %i.hp, i32 11)
  %i.hu = shl i32 %i.hq, 9
  %i.hv = xor i32 %i.hs, %i.hr                    ; 2 uses
  %i.hw = xor i32 %i.hq, %i.ht                    ; 3 uses
  %i.hx = xor i32 %i.hv, %i.hq                    ; 2 uses
  %i.hy = xor i32 %i.hw, %i.hr                    ; 3 uses
  %i.hz = xor i32 %i.hv, %i.hu
  %i.ia = tail call noundef i32 @llvm.fshl.i32(i32 %i.hw, i32 %i.hw, i32 11) ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.v, i64 %.012122.i
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !149
  %i.id = uitofp reassoc nsz arcp contract afn i8 %i.ic to float
  %i.ie = add i32 %i.hy, %i.ia
  %i.if = xor i32 %i.hz, %i.hy
  %i.ig = xor i32 %i.hx, %i.ia                    ; 3 uses
  %i.ih = xor i32 %i.if, %i.hx
  %i.ii = xor i32 %i.ig, %i.hy                    ; 2 uses
  %i.ij = tail call noundef i32 @llvm.fshl.i32(i32 %i.ig, i32 %i.ig, i32 11) ; 2 uses
  %i.ik = lshr i32 %i.ie, 8
  %i.il = uitofp reassoc nsz arcp contract afn nneg i32 %i.ik to float
  %i.im = fmul reassoc nnan nsz arcp contract afn float %i.il, f0x33800000
  %i.in = fadd reassoc nnan nsz arcp contract afn float %i.id, -5.000000e-01
  %i.io = fadd reassoc nnan nsz arcp contract afn float %i.in, %i.im
  %i.ip = fmul reassoc nnan nsz arcp contract afn float %i.io, f0x3B808081
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %.012122.i
  store float %i.ip, ptr %i.iq, align 16, !tbaa !151
  %i.ir = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.gg
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !149
  %i.it = uitofp reassoc nsz arcp contract afn i8 %i.is to float
  %i.iu = add i32 %i.ii, %i.ij
  %i.iv = xor i32 %i.ih, %i.ij                    ; 3 uses
  %i.iw = xor i32 %i.iv, %i.ii
  %i.ix = tail call noundef i32 @llvm.fshl.i32(i32 %i.iv, i32 %i.iv, i32 11)
  %i.iy = lshr i32 %i.iu, 8
  %i.iz = uitofp reassoc nsz arcp contract afn nneg i32 %i.iy to float
  %i.ja = fmul reassoc nnan nsz arcp contract afn float %i.iz, f0x33800000
  %i.jb = fadd reassoc nnan nsz arcp contract afn float %i.it, -5.000000e-01
end_hunk_0
