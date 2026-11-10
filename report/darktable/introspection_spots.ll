Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_spots?download=true
inline.NumInlined: 34
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@modify_roi_in:bb.a
  br i1 %or.cond.i, label %bb.f, label %masks_form_is_in_roi.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.bg = load i32, ptr %2, align 4, !tbaa !95    ; 2 uses
  %i.bh = load i32, ptr %i.ac, align 4, !tbaa !96
  %i.bi = add nsw i32 %i.bh, %i.bg
  %.not17.i = icmp sgt i32 %i.bi, %i.ax
  br i1 %.not17.i, label %masks_form_is_in_roi.exit, label %masks_form_is_in_roi.exit.thread

masks_form_is_in_roi.exit.thread:                 ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.j

masks_form_is_in_roi.exit:                        ; preds = %bb.f
  %i.bj = add nsw i32 %i.ax, %i.ap
  %.not18.i.not = icmp sgt i32 %i.bj, %i.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br i1 %.not18.i.not, label %bb.g, label %bb.j

bb.g:                                             ; preds = %masks_form_is_in_roi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #16
  %i.bk = call i32 @dt_masks_get_source_area(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.aj, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #16
  %.not104.not = icmp eq i32 %i.bk, 0
  br i1 %.not104.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = load float, ptr %i.z, align 4, !tbaa !92
  %i.bm = load i32, ptr %i.g, align 4, !tbaa !38
  %i.bn = load i32, ptr %i.h, align 4, !tbaa !38
  %i.bo = load i32, ptr %i.e, align 4, !tbaa !38
  %i.bp = load i32, ptr %i.f, align 4, !tbaa !38
  %i.bq = insertelement <2 x i32> poison, i32 %i.bm, i64 0
  %i.br = insertelement <2 x i32> %i.bq, i32 %i.bn, i64 1
  %i.bs = sitofp reassoc nsz arcp contract afn <2 x i32> %i.br to <2 x float>
  %i.bt = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bv = fmul reassoc nsz arcp contract afn <2 x float> %i.bu, %i.bs
  %i.bw = fptosi <2 x float> %i.bv to <2 x i32>
  %i.bx = insertelement <2 x i32> poison, i32 %i.bp, i64 0
  %i.by = insertelement <2 x i32> %i.bx, i32 %i.bo, i64 1
  %i.bz = sitofp reassoc nsz arcp contract afn <2 x i32> %i.by to <2 x float>
  %i.ca = fmul reassoc nsz arcp contract afn <2 x float> %i.bu, %i.bz
  %i.cb = fptosi <2 x float> %i.ca to <2 x i32>   ; 2 uses
  %i.cc = shufflevector <4 x i32> %i.ad, <4 x i32> poison, <2 x i32> <i32 0, i32 3>
  %i.cd = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.cb, <2 x i32> %i.cc)
  %i.ce = shufflevector <2 x i32> %i.cb, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.cf = add nsw <2 x i32> %i.ce, %i.bw
  %i.cg = shufflevector <4 x i32> %i.ad, <4 x i32> poison, <2 x i32> <i32 1, i32 2>
  %i.ch = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.cf, <2 x i32> %i.cg)
  %i.ci = shufflevector <2 x i32> %i.cd, <2 x i32> %i.ch, <4 x i32> <i32 0, i32 2, i32 3, i32 1>
  %i.cj = sitofp <4 x i32> %i.ci to <4 x float>
  %i.ck = fptosi <4 x float> %i.cj to <4 x i32>
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.cl = phi <4 x i32> [ %i.ck, %bb.h ], [ %i.ad, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  br label %bb.j

bb.j:                                             ; preds = %masks_form_is_in_roi.exit.thread, %bb.i, %bb.c, %masks_form_is_in_roi.exit
  %i.cm = phi <4 x i32> [ %i.ad, %masks_form_is_in_roi.exit ], [ %i.ad, %bb.c ], [ %i.cl, %bb.i ], [ %i.ad, %masks_form_is_in_roi.exit.thread ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.075116, i64 8
  %.075 = load ptr, ptr %i.cn, align 8, !tbaa !30 ; 2 uses
  %.not101 = icmp eq ptr %.075, null
  br i1 %.not101, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.j, %.preheader, %bb.b, %bb.a
  %i.co = phi <4 x i32> [ %i.v, %bb.a ], [ %i.v, %bb.b ], [ %i.v, %.preheader ], [ %i.cm, %bb.j ] ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !92
  %i.cu = extractelement <4 x i32> %i.co, i64 3   ; 2 uses
  %i.cv = sitofp reassoc nsz arcp contract afn i32 %i.cu to float
  %i.cw = call i32 @llvm.smax.i32(i32 %i.cu, i32 0)
  %i.cx = uitofp nsz nneg i32 %i.cw to float
  %i.cy = load <2 x i32>, ptr %i.cr, align 8, !tbaa !38
  %i.cz = sitofp reassoc nsz arcp contract afn <2 x i32> %i.cy to <2 x float>
  %i.da = insertelement <2 x float> poison, float %i.ct, i64 0
  %i.db = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dc = fmul reassoc nsz arcp contract afn <2 x float> %i.db, %i.cz ; 3 uses
  %i.dd = extractelement <2 x float> %i.dc, i64 0
  %i.de = fadd reassoc nsz arcp contract afn float %i.dd, -1.000000e+00 ; 2 uses
  %i.df = fcmp reassoc nsz arcp contract afn olt float %i.de, %i.cv
  %i.dg = select reassoc nsz arcp contract afn i1 %i.df, float %i.de, float %i.cx
  %i.dh = fptosi float %i.dg to i32               ; 3 uses
  store i32 %i.dh, ptr %3, align 4, !tbaa !95
  %i.di = extractelement <4 x i32> %i.co, i64 1
  %i.dj = sub nsw i32 %i.di, %i.dh
  %i.dk = shufflevector <4 x i32> %i.co, <4 x i32> poison, <2 x i32> <i32 0, i32 poison>
  %i.dl = insertelement <2 x i32> %i.dk, i32 %i.dj, i64 1 ; 2 uses
  %i.dm = sitofp reassoc nsz arcp contract afn <2 x i32> %i.dl to <2 x float>
  %i.dn = sitofp reassoc nsz arcp contract afn i32 %i.dh to float
  %i.do = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.dn, i64 0
  %i.dp = fsub reassoc nsz arcp contract afn <2 x float> %i.dc, %i.do
  %i.dq = shufflevector <2 x float> %i.dp, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dr = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.dq, %i.dm
  %i.ds = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.dl, <2 x i32> <i32 0, i32 1>)
  %i.dt = uitofp nneg <2 x i32> %i.ds to <2 x float>
  %i.du = select <2 x i1> %i.dr, <2 x float> %i.dq, <2 x float> %i.dt
  %i.dv = fptosi <2 x float> %i.du to <2 x i32>   ; 2 uses
  store <2 x i32> %i.dv, ptr %i.cp, align 4, !tbaa !38
  %i.dw = extractelement <2 x i32> %i.dv, i64 0   ; 2 uses
  %i.dx = extractelement <4 x i32> %i.co, i64 2
  %i.dy = sub nsw i32 %i.dx, %i.dw                ; 2 uses
  %i.dz = sitofp reassoc nsz arcp contract afn i32 %i.dy to float
  %i.ea = sitofp reassoc nsz arcp contract afn i32 %i.dw to float
  %i.eb = extractelement <2 x float> %i.dc, i64 1
  %i.ec = fsub reassoc nsz arcp contract afn float %i.eb, %i.ea ; 2 uses
  %i.ed = fcmp reassoc nsz arcp contract afn olt float %i.ec, %i.dz
  %spec.select105109 = call i32 @llvm.smax.i32(i32 %i.dy, i32 1)
  %spec.select105 = uitofp nneg i32 %spec.select105109 to float
  %i.ee = select reassoc nsz arcp contract afn i1 %i.ed, float %i.ec, float %spec.select105
  %i.ef = fptosi float %i.ee to i32
  store i32 %i.ef, ptr %i.cq, align 4, !tbaa !94
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare ptr @dt_masks_get_from_id_ext(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @dt_masks_get_source_area(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @_process(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 6 uses
  %i.b = alloca [4 x float], align 16             ; 6 uses
  %i.c = alloca [4 x float], align 16             ; 6 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca [4 x float], align 16             ; 9 uses
  %i.i = alloca ptr, align 8                      ; 7 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  %i.m = alloca i32, align 4                      ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !97
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !80
  %i.r = sext i32 %6 to i64                       ; 9 uses
  tail call void @dt_iop_copy_image_roi(ptr noundef %3, ptr noundef %2, i64 noundef %i.r, ptr noundef %4, ptr noundef %5) #16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !81
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2584
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !89
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.x = load i32, ptr %i.w, align 4, !tbaa !45
  %i.y = tail call ptr @dt_masks_get_from_id_ext(ptr noundef %i.v, i32 noundef %i.x) #16 ; 3 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %.loopexit310, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !43
  %i.ab = and i32 %i.aa, 4
  %.not246 = icmp eq i32 %i.ab, 0
  br i1 %.not246, label %.loopexit310, label %.preheader309

.preheader309:                                    ; preds = %bb.b
  %.0229331 = load ptr, ptr %i.y, align 8, !tbaa !30 ; 2 uses
  %.not339 = icmp eq ptr %.0229331, null
  br i1 %.not339, label %.loopexit310, label %.lr.ph335

.lr.ph335:                                        ; preds = %.preheader309
  %i.ac = getelementptr i8, ptr %4, i64 16        ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 256
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.ak = getelementptr i8, ptr %0, i64 664       ; 4 uses
  %i.al = getelementptr i8, ptr %0, i64 480       ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ap = icmp sgt i32 %6, 0                      ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %wide.trip.count = zext i32 %6 to i64           ; 16 uses
  %wide.trip.count356 = zext nneg i32 %6 to i64
  %7 = shl nuw nsw i64 %wide.trip.count, 2        ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %7     ; 2 uses
  %scevgep400 = getelementptr i8, ptr %3, i64 %7  ; 2 uses
  %min.iters.check423 = icmp ult i32 %6, 4
  %min.iters.check429 = icmp ult i32 %6, 32
  %i.at = and i64 %wide.trip.count, 28
  %n.vec431 = and i64 %wide.trip.count, 2147483616 ; 4 uses
  %cmp.n446 = icmp eq i64 %n.vec431, %wide.trip.count
  %min.epilog.iters.check450 = icmp eq i64 %i.at, 0
  %n.vec453 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n462 = icmp eq i64 %n.vec453, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check = icmp ult i32 %6, 4
  %min.iters.check400 = icmp ult i32 %6, 32
  %i.au = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.au, 0
  %n.vec408 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n415 = icmp eq i64 %n.vec408, %wide.trip.count
  %xtraiter499 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod500.not = icmp eq i64 %xtraiter499, 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph335, %bb.ae
  %indvars.iv368 = phi i64 [ 0, %.lr.ph335 ], [ %indvars.iv.next369, %bb.ae ] ; 3 uses
  %.0229334 = phi ptr [ %.0229331, %.lr.ph335 ], [ %.0229, %bb.ae ] ; 2 uses
  %i.av = load ptr, ptr %.0229334, align 8, !tbaa !41 ; 2 uses
  %i.aw = load ptr, ptr %i.s, align 8, !tbaa !81
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 2584
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !89
  %i.az = load i32, ptr %i.av, align 4, !tbaa !91
  %i.ba = call ptr @dt_masks_get_from_id_ext(ptr noundef %i.ay, i32 noundef %i.az) #16 ; 14 uses
  %.not247 = icmp eq ptr %i.ba, null
  br i1 %.not247, label %bb.ae, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  %i.bb = call i32 @dt_masks_get_area(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ba, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #16
  %.not.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i, label %masks_form_is_in_roi.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bc = load float, ptr %i.ac, align 4, !tbaa !92 ; 7 uses
  %i.bd = load i32, ptr %i.f, align 4, !tbaa !38
  %i.be = sitofp reassoc nsz arcp contract afn i32 %i.bd to float
  %i.bf = fmul reassoc nsz arcp contract afn float %i.bc, %i.be
  %i.bg = fptosi float %i.bf to i32
  %i.bh = load i32, ptr %i.g, align 4, !tbaa !38
  %i.bi = sitofp reassoc nsz arcp contract afn i32 %i.bh to float
  %i.bj = fmul reassoc nsz arcp contract afn float %i.bc, %i.bi
  %i.bk = fptosi float %i.bj to i32
  %i.bl = load i32, ptr %i.d, align 4, !tbaa !38
  %i.bm = sitofp reassoc nsz arcp contract afn i32 %i.bl to float
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bc, %i.bm
  %i.bo = fptosi float %i.bn to i32               ; 2 uses
  %i.bp = load i32, ptr %i.e, align 4, !tbaa !38
  %i.bq = sitofp reassoc nsz arcp contract afn i32 %i.bp to float
  %i.br = fmul reassoc nsz arcp contract afn float %i.bc, %i.bq
  %i.bs = fptosi float %i.br to i32               ; 2 uses
  %i.bt = load i32, ptr %i.ad, align 4, !tbaa !93 ; 2 uses
  %i.bu = load i32, ptr %i.ae, align 4, !tbaa !94
  %i.bv = add nsw i32 %i.bu, %i.bt
  %.not15.i = icmp sgt i32 %i.bv, %i.bs
  %i.bw = add nsw i32 %i.bs, %i.bk
  %.not16.i = icmp sgt i32 %i.bw, %i.bt
  %or.cond.i = select i1 %.not15.i, i1 %.not16.i, i1 false
  br i1 %or.cond.i, label %bb.f, label %masks_form_is_in_roi.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.bx = load i32, ptr %5, align 4, !tbaa !95    ; 2 uses
  %i.by = load i32, ptr %i.af, align 4, !tbaa !96
  %i.bz = add nsw i32 %i.by, %i.bx
  %.not17.i = icmp sgt i32 %i.bz, %i.bo
  br i1 %.not17.i, label %masks_form_is_in_roi.exit, label %masks_form_is_in_roi.exit.thread

masks_form_is_in_roi.exit.thread:                 ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  br label %bb.ae

masks_form_is_in_roi.exit:                        ; preds = %bb.f
  %i.ca = add nsw i32 %i.bo, %i.bg
  %.not18.i.not = icmp sgt i32 %i.ca, %i.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  br i1 %.not18.i.not, label %bb.g, label %bb.ae

bb.g:                                             ; preds = %masks_form_is_in_roi.exit
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv368
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !38
  %i.cd = icmp eq i32 %i.cc, 1
  br i1 %i.cd, label %bb.h, label %bb.r

bb.h:                                             ; preds = %bb.g
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !43
  %i.cg = and i32 %i.cf, 1
  %.not249 = icmp eq i32 %i.cg, 0
  br i1 %.not249, label %bb.r, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ch = load ptr, ptr %i.ba, align 8, !tbaa !37
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !41 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #16
  %.val265 = load ptr, ptr %i.s, align 8, !tbaa !81 ; 2 uses
  %i.cj = getelementptr i8, ptr %.val265, i64 144
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.cl = load <2 x i32>, ptr %i.cj, align 16, !tbaa !38
  %i.cm = sitofp reassoc nsz arcp contract afn <2 x i32> %i.cl to <2 x float>
  %i.cn = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <4 x i32> zeroinitializer
  %i.cp = shufflevector <2 x float> %i.cm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cq = fmul reassoc nsz arcp contract afn <4 x float> %i.co, %i.cp
  %i.cr = load <2 x float>, ptr %i.ci, align 4, !tbaa !34
  %i.cs = load <2 x float>, ptr %i.ck, align 8, !tbaa !34
  %i.ct = shufflevector <2 x float> %i.cr, <2 x float> %i.cs, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cu = fmul reassoc nsz arcp contract afn <4 x float> %i.cq, %i.ct
  store <4 x float> %i.cu, ptr %i.h, align 16, !tbaa !34
  %i.cv = load ptr, ptr %i.ak, align 8, !tbaa !28
  %i.cw = load i32, ptr %i.al, align 16, !tbaa !192
  %i.cx = sitofp reassoc nsz arcp contract afn i32 %i.cw to double
  %i.cy = call i32 @dt_dev_distort_transform_plus(ptr noundef %i.cv, ptr noundef %.val265, double noundef %i.cx, i32 noundef 3, ptr noundef nonnull %i.h, i64 noundef 2) #16
  %.not255.not = icmp eq i32 %i.cy, 0
  br i1 %.not255.not, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.da = load float, ptr %i.cz, align 4, !tbaa !36
  %.val = load ptr, ptr %i.s, align 8, !tbaa !81
  %.val262 = load float, ptr %i.ac, align 4, !tbaa !92
  %i.db = getelementptr i8, ptr %.val, i64 144
  %i.dc = fmul reassoc nsz arcp contract afn float %.val262, %i.da
  %i.dd = load <2 x i32>, ptr %i.db, align 16, !tbaa !38
  %i.de = sitofp reassoc nsz arcp contract afn <2 x i32> %i.dd to <2 x float>
  %i.df = insertelement <2 x float> poison, float %i.dc, i64 0
  %i.dg = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dh = fmul reassoc nsz arcp contract afn <2 x float> %i.dg, %i.de ; 2 uses
  %i.di = extractelement <2 x float> %i.dh, i64 0 ; 2 uses
  %i.dj = extractelement <2 x float> %i.dh, i64 1 ; 2 uses
  %i.dk = fcmp reassoc nsz arcp contract afn olt float %i.di, %i.dj
  %i.dl = select reassoc nsz arcp contract afn i1 %i.dk, float %i.di, float %i.dj
  %i.dm = fptosi float %i.dl to i32               ; 6 uses
  %i.dn = load float, ptr %i.h, align 16, !tbaa !34
  %i.do = sitofp reassoc nsz arcp contract afn i32 %i.dm to float ; 7 uses
  %i.dp = fsub reassoc nsz arcp contract afn float %i.dn, %i.do
  %i.dq = fptosi float %i.dp to i32               ; 3 uses
  %i.dr = load float, ptr %i.ah, align 4, !tbaa !34
  %i.ds = fsub reassoc nsz arcp contract afn float %i.dr, %i.do
  %i.dt = fptosi float %i.ds to i32               ; 3 uses
  %i.du = load float, ptr %i.ai, align 8, !tbaa !34
  %i.dv = fsub reassoc nsz arcp contract afn float %i.du, %i.do
  %i.dw = fptosi float %i.dv to i32               ; 2 uses
  %i.dx = load float, ptr %i.aj, align 4, !tbaa !34
  %i.dy = fsub reassoc nsz arcp contract afn float %i.dx, %i.do
  %i.dz = fptosi float %i.dy to i32               ; 2 uses
  %.neg260 = sub i32 %i.dw, %i.dq
  %.neg = sub i32 %i.dz, %i.dt
  %i.ea = shl nsw i32 %i.dm, 1                    ; 6 uses
  %i.eb = or disjoint i32 %i.ea, 1
  %i.ec = sext i32 %i.eb to i64
  %i.ed = shl nsw i64 %i.ec, 2
  %i.ee = call noalias ptr @malloc(i64 noundef %i.ed) #17 ; 4 uses
  %i.ef = icmp sgt i32 %i.dm, 0
  br i1 %i.ef, label %iter.check478, label %._crit_edge

iter.check478:                                    ; preds = %bb.j
  %i.eg = sub nsw i32 0, %i.dm                    ; 2 uses
  %i.eh = sext i32 %i.eg to i64                   ; 6 uses
  %i.ei = zext nneg i32 %i.dm to i64
  %i.ej = add nuw i32 %i.dm, 1
  %invariant.gep = getelementptr [4 x i8], ptr %i.ee, i64 %i.ei ; 3 uses
  %i.ek = or disjoint i32 %i.ea, 1
  %i.el = zext nneg i32 %i.ek to i64              ; 3 uses
  %min.iters.check464 = icmp ult i32 %i.ea, 8
  br i1 %min.iters.check464, label %.lr.ph.preheader, label %vector.main.loop.iter.check465

vector.main.loop.iter.check465:                   ; preds = %iter.check478
  %min.iters.check466 = icmp ult i32 %i.ea, 32
  br i1 %min.iters.check466, label %vec.epilog.ph482, label %vector.ph467

vector.ph467:                                     ; preds = %vector.main.loop.iter.check465
  %i.em = and i64 %i.el, 24
  %n.vec468 = and i64 %i.el, 2147483616           ; 3 uses
  %i.en = add nsw i64 %n.vec468, %i.eh            ; 2 uses
  %broadcast.splatinsert469 = insertelement <8 x float> poison, float %i.do, i64 0
  %broadcast.splat470 = shufflevector <8 x float> %broadcast.splatinsert469, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert471 = insertelement <8 x i32> poison, i32 %i.eg, i64 0
  %broadcast.splat472 = shufflevector <8 x i32> %broadcast.splatinsert471, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = add <8 x i32> %broadcast.splat472, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.eo = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat470
  %i.ep = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat470
  %i.eq = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat470
  %i.er = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat470
  %invariant.gep502 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.eh
end_hunk_0
begin_hunk_1_@_process:bb.a
  %i.fd = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ez)
  %i.fe = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.fa ; 3 uses
  %i.ff = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.fb ; 3 uses
  %i.fg = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.fc ; 3 uses
  %i.fh = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.fd ; 3 uses
  %i.fi = fmul reassoc nsz arcp contract afn <8 x float> %i.fe, %i.fe
  %i.fj = fmul reassoc nsz arcp contract afn <8 x float> %i.ff, %i.ff
  %i.fk = fmul reassoc nsz arcp contract afn <8 x float> %i.fg, %i.fg
  %i.fl = fmul reassoc nsz arcp contract afn <8 x float> %i.fh, %i.fh
  %i.fm = fmul reassoc nsz arcp contract afn <8 x float> %i.fe, splat (float 2.000000e+00)
  %i.fn = fmul reassoc nsz arcp contract afn <8 x float> %i.ff, splat (float 2.000000e+00)
  %i.fo = fmul reassoc nsz arcp contract afn <8 x float> %i.fg, splat (float 2.000000e+00)
  %i.fp = fmul reassoc nsz arcp contract afn <8 x float> %i.fh, splat (float 2.000000e+00)
  %i.fq = fsub reassoc nsz arcp contract afn <8 x float> splat (float 3.000000e+00), %i.fm
  %i.fr = fsub reassoc nsz arcp contract afn <8 x float> splat (float 3.000000e+00), %i.fn
  %i.fs = fsub reassoc nsz arcp contract afn <8 x float> splat (float 3.000000e+00), %i.fo
  %i.ft = fsub reassoc nsz arcp contract afn <8 x float> splat (float 3.000000e+00), %i.fp
  %i.fu = fmul reassoc nsz arcp contract afn <8 x float> %i.fi, %i.fq
  %i.fv = fmul reassoc nsz arcp contract afn <8 x float> %i.fj, %i.fr
  %i.fw = fmul reassoc nsz arcp contract afn <8 x float> %i.fk, %i.fs
  %i.fx = fmul reassoc nsz arcp contract afn <8 x float> %i.fl, %i.ft
  %gep503 = getelementptr [4 x i8], ptr %invariant.gep502, i64 %index474 ; 4 uses
  %i.fy = getelementptr i8, ptr %gep503, i64 32
  %i.fz = getelementptr i8, ptr %gep503, i64 64
  %i.ga = getelementptr i8, ptr %gep503, i64 96
  store <8 x float> %i.fu, ptr %gep503, align 4, !tbaa !34
  store <8 x float> %i.fv, ptr %i.fy, align 4, !tbaa !34
  store <8 x float> %i.fw, ptr %i.fz, align 4, !tbaa !34
  store <8 x float> %i.fx, ptr %i.ga, align 4, !tbaa !34
  %index.next475 = add nuw i64 %index474, 32      ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %i.gb = icmp eq i64 %index.next475, %n.vec468
  br i1 %i.gb, label %vec.epilog.iter.check479, label %vector.body473, !llvm.loop !174

vec.epilog.iter.check479:                         ; preds = %vector.body473
  %min.epilog.iters.check481 = icmp eq i64 %i.em, 0
  br i1 %min.epilog.iters.check481, label %.lr.ph.preheader, label %vec.epilog.ph482, !prof !195

vec.epilog.ph482:                                 ; preds = %vector.main.loop.iter.check465, %vec.epilog.iter.check479
  %vec.epilog.resume.val483 = phi i64 [ %n.vec468, %vec.epilog.iter.check479 ], [ 0, %vector.main.loop.iter.check465 ]
  %bc.resume.val484 = phi i64 [ %i.en, %vec.epilog.iter.check479 ], [ %i.eh, %vector.main.loop.iter.check465 ]
  %n.vec485 = and i64 %i.el, 2147483640           ; 2 uses
  %i.gc = add nsw i64 %n.vec485, %i.eh
  %broadcast.splatinsert486 = insertelement <8 x float> poison, float %i.do, i64 0
  %broadcast.splat487 = shufflevector <8 x float> %broadcast.splatinsert486, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gd = trunc i64 %bc.resume.val484 to i32
  %broadcast.splatinsert488 = insertelement <8 x i32> poison, i32 %i.gd, i64 0
  %broadcast.splat489 = shufflevector <8 x i32> %broadcast.splatinsert488, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction490 = add <8 x i32> %broadcast.splat489, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ge = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat487
  %invariant.gep504 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.eh
  br label %vec.epilog.vector.body491

vec.epilog.vector.body491:                        ; preds = %vec.epilog.vector.body491, %vec.epilog.ph482
  %index492 = phi i64 [ %vec.epilog.resume.val483, %vec.epilog.ph482 ], [ %index.next494, %vec.epilog.vector.body491 ] ; 2 uses
  %vec.ind493 = phi <8 x i32> [ %induction490, %vec.epilog.ph482 ], [ %vec.ind.next495, %vec.epilog.vector.body491 ] ; 2 uses
  %i.gf = sitofp reassoc nsz arcp contract afn <8 x i32> %vec.ind493 to <8 x float>
  %i.gg = fmul reassoc nsz arcp contract afn <8 x float> %i.gf, %i.ge
  %i.gh = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.gg)
  %i.gi = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.gh ; 3 uses
  %i.gj = fmul reassoc nsz arcp contract afn <8 x float> %i.gi, %i.gi
  %i.gk = fmul reassoc nsz arcp contract afn <8 x float> %i.gi, splat (float 2.000000e+00)
  %i.gl = fsub reassoc nsz arcp contract afn <8 x float> splat (float 3.000000e+00), %i.gk
  %i.gm = fmul reassoc nsz arcp contract afn <8 x float> %i.gj, %i.gl
  %gep505 = getelementptr [4 x i8], ptr %invariant.gep504, i64 %index492
  store <8 x float> %i.gm, ptr %gep505, align 4, !tbaa !34
  %index.next494 = add nuw i64 %index492, 8       ; 2 uses
  %vec.ind.next495 = add <8 x i32> %vec.ind493, splat (i32 8)
  %i.gn = icmp eq i64 %index.next494, %n.vec485
  br i1 %i.gn, label %.lr.ph.preheader, label %vec.epilog.vector.body491, !llvm.loop !175

.lr.ph.preheader:                                 ; preds = %vec.epilog.vector.body491, %iter.check478, %vec.epilog.iter.check479
  %indvars.iv.ph = phi i64 [ %i.eh, %iter.check478 ], [ %i.en, %vec.epilog.iter.check479 ], [ %i.gc, %vec.epilog.vector.body491 ]
  %i.go = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.do
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %i.gp = trunc nsw i64 %indvars.iv to i32
  %i.gq = sitofp reassoc nsz arcp contract afn i32 %i.gp to float
  %i.gr = fmul reassoc nsz arcp contract afn float %i.gq, %i.go
  %i.gs = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.gr)
  %i.gt = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.gs ; 3 uses
  %i.gu = fmul reassoc nsz arcp contract afn float %i.gt, %i.gt
  %i.gv = fmul reassoc nsz arcp contract afn float %i.gt, 2.000000e+00
  %i.gw = fsub reassoc nsz arcp contract afn float 3.000000e+00, %i.gv
  %i.gx = fmul reassoc nsz arcp contract afn float %i.gu, %i.gw
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store float %i.gx, ptr %gep, align 4, !tbaa !34
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ej, %lftr.wideiv
  br i1 %exitcond.not, label %.lr.ph320, label %.lr.ph, !llvm.loop !176

.lr.ph320:                                        ; preds = %.lr.ph
  %i.gy = add nsw i32 %i.ea, %i.dt
  %i.gz = load i32, ptr %i.ad, align 4, !tbaa !93 ; 2 uses
  %i.ha = add nsw i32 %i.ea, %i.dq
  %i.hb = sext i32 %i.dq to i64                   ; 3 uses
  %i.hc = sext i32 %i.dw to i64
  %i.hd = sext i32 %i.ha to i64
  %i.he = sext i32 %i.dt to i64                   ; 2 uses
  %i.hf = sext i32 %i.gz to i64                   ; 2 uses
  %i.hg = sext i32 %i.gy to i64
  br label %bb.k

._crit_edge:                                      ; preds = %.loopexit305, %bb.j
  call void @free(ptr noundef %i.ee) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #16
  br label %bb.ae

bb.k:                                             ; preds = %.lr.ph320, %.loopexit305
  %indvars.iv350 = phi i64 [ %i.he, %.lr.ph320 ], [ %indvars.iv.next351, %.loopexit305 ] ; 6 uses
  %indvars352 = trunc nsw i64 %indvars.iv350 to i32
  %i.hh = icmp slt i64 %indvars.iv350, %i.hf
  br i1 %i.hh, label %.loopexit305, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.hi = load i32, ptr %i.ae, align 4, !tbaa !94
  %i.hj = add nsw i32 %i.hi, %i.gz
  %i.hk = sext i32 %i.hj to i64
  %.not257 = icmp slt i64 %indvars.iv350, %i.hk
  br i1 %.not257, label %bb.m, label %.loopexit305

bb.m:                                             ; preds = %bb.l
  %i.hl = add i32 %.neg, %indvars352              ; 2 uses
  %i.hm = load i32, ptr %i.am, align 4, !tbaa !93 ; 3 uses
  %i.hn = icmp slt i32 %i.hl, %i.hm
  br i1 %i.hn, label %.loopexit305, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ho = load i32, ptr %i.an, align 4, !tbaa !94
  %i.hp = add nsw i32 %i.ho, %i.hm
  %.not258.not = icmp slt i32 %i.hl, %i.hp
  br i1 %.not258.not, label %.lr.ph317, label %.loopexit305

.lr.ph317:                                        ; preds = %bb.n
  %i.hq = load i32, ptr %5, align 4, !tbaa !95    ; 2 uses
  %i.hr = sub nsw i64 %indvars.iv350, %i.he       ; 2 uses
  %i.hs = getelementptr [4 x i8], ptr %i.ee, i64 %i.hr
  %i.ht = getelementptr i8, ptr %i.hs, i64 4
  %i.hu = sub nsw i64 %indvars.iv350, %i.hf
  %i.hv = sext i32 %i.hq to i64                   ; 2 uses
  %i.hw = trunc i64 %i.hr to i32
  %i.hx = add i32 %i.hw, %i.dz
  %i.hy = sub i32 %i.hx, %i.hm
  %i.hz = sext i32 %i.hy to i64
  br i1 %i.ap, label %.lr.ph317.split.us, label %.loopexit305

.lr.ph317.split.us:                               ; preds = %.lr.ph317, %..loopexit302_crit_edge.us
  %indvars.iv347 = phi i64 [ %indvars.iv.next348, %..loopexit302_crit_edge.us ], [ %i.hb, %.lr.ph317 ] ; 7 uses
  %indvars349 = trunc nsw i64 %indvars.iv347 to i32
  %i.ia = icmp slt i64 %indvars.iv347, %i.hv
  br i1 %i.ia, label %..loopexit302_crit_edge.us, label %bb.o

bb.o:                                             ; preds = %.lr.ph317.split.us
  %i.ib = load i32, ptr %i.af, align 4, !tbaa !96 ; 2 uses
  %i.ic = add nsw i32 %i.ib, %i.hq
  %i.id = sext i32 %i.ic to i64
  %.not259.us = icmp slt i64 %indvars.iv347, %i.id
  br i1 %.not259.us, label %bb.p, label %..loopexit302_crit_edge.us

bb.p:                                             ; preds = %bb.o
  %i.ie = add i32 %.neg260, %indvars349           ; 2 uses
  %i.if = load i32, ptr %4, align 4, !tbaa !95    ; 3 uses
  %i.ig = icmp slt i32 %i.ie, %i.if
  br i1 %i.ig, label %..loopexit302_crit_edge.us, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ih = load i32, ptr %i.ao, align 4, !tbaa !96 ; 2 uses
  %i.ii = add nsw i32 %i.ih, %i.if
  %.not261.us = icmp slt i32 %i.ie, %i.ii
  br i1 %.not261.us, label %iter.check447, label %..loopexit302_crit_edge.us

iter.check447:                                    ; preds = %bb.q
  %i.ij = sub nsw i64 %indvars.iv347, %i.hb
  %i.ik = getelementptr [4 x i8], ptr %i.ee, i64 %i.ij
  %i.il = getelementptr i8, ptr %i.ik, i64 4
  %i.im = load float, ptr %i.il, align 4, !tbaa !34
  %i.in = load float, ptr %i.ht, align 4, !tbaa !34
  %i.io = fmul reassoc nsz arcp contract afn float %i.in, %i.im ; 7 uses
  %i.ip = sext i32 %i.ib to i64
  %i.iq = mul nuw nsw i64 %i.hu, %i.ip
  %i.ir = sub nsw i64 %indvars.iv347, %i.hv
  %i.is = add i64 %i.ir, %i.iq                    ; 2 uses
  %i.it = mul i64 %i.is, %i.r
  %i.iu = getelementptr [4 x i8], ptr %3, i64 %i.it ; 8 uses
  %i.iv = sext i32 %i.ih to i64
  %i.iw = mul nsw i64 %i.iv, %i.hz
  %i.ix = sext i32 %i.if to i64
  %i.iy = add nsw i64 %indvars.iv347, %i.hc
  %i.iz = add nsw i64 %i.hb, %i.ix
  %i.ja = sub nsw i64 %i.iy, %i.iz
  %i.jb = add nsw i64 %i.ja, %i.iw                ; 2 uses
  %i.jc = mul i64 %i.jb, %i.r
  %i.jd = getelementptr [4 x i8], ptr %2, i64 %i.jc ; 8 uses
  br i1 %min.iters.check423, label %vec.epilog.scalar.ph449.preheader, label %vector.memcheck424

vector.memcheck424:                               ; preds = %iter.check447
  %i.je = mul i64 %i.is, %i.r
  %i.jf = shl i64 %i.je, 2
  %i.jg = getelementptr i8, ptr %scevgep400, i64 %i.jf
  %i.jh = mul i64 %i.jb, %i.r
  %i.ji = shl i64 %i.jh, 2
  %i.jj = getelementptr i8, ptr %scevgep, i64 %i.ji
  %bound0425 = icmp ult ptr %i.iu, %i.jj
  %bound1426 = icmp ult ptr %i.jd, %i.jg
  %found.conflict427 = and i1 %bound0425, %bound1426
  br i1 %found.conflict427, label %vec.epilog.scalar.ph449.preheader, label %vector.main.loop.iter.check428

vector.main.loop.iter.check428:                   ; preds = %vector.memcheck424
  br i1 %min.iters.check429, label %vec.epilog.ph451, label %vector.ph430

vector.ph430:                                     ; preds = %vector.main.loop.iter.check428
  %broadcast.splatinsert432 = insertelement <8 x float> poison, float %i.io, i64 0
  %broadcast.splat433 = shufflevector <8 x float> %broadcast.splatinsert432, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body434

vector.body434:                                   ; preds = %vector.ph430, %vector.body434
  %index435 = phi i64 [ 0, %vector.ph430 ], [ %index.next444, %vector.body434 ] ; 3 uses
  %i.jk = getelementptr [4 x i8], ptr %i.iu, i64 %index435 ; 5 uses
  %i.jl = getelementptr i8, ptr %i.jk, i64 32     ; 2 uses
  %i.jm = getelementptr i8, ptr %i.jk, i64 64     ; 2 uses
  %i.jn = getelementptr i8, ptr %i.jk, i64 96     ; 2 uses
  %wide.load436 = load <8 x float>, ptr %i.jk, align 4, !tbaa !34, !alias.scope !196, !noalias !197 ; 2 uses
  %wide.load437 = load <8 x float>, ptr %i.jl, align 4, !tbaa !34, !alias.scope !196, !noalias !197 ; 2 uses
  %wide.load438 = load <8 x float>, ptr %i.jm, align 4, !tbaa !34, !alias.scope !196, !noalias !197 ; 2 uses
  %wide.load439 = load <8 x float>, ptr %i.jn, align 4, !tbaa !34, !alias.scope !196, !noalias !197 ; 2 uses
  %i.jo = getelementptr [4 x i8], ptr %i.jd, i64 %index435 ; 4 uses
  %i.jp = getelementptr i8, ptr %i.jo, i64 32
  %i.jq = getelementptr i8, ptr %i.jo, i64 64
  %i.jr = getelementptr i8, ptr %i.jo, i64 96
  %wide.load440 = load <8 x float>, ptr %i.jo, align 4, !tbaa !34, !alias.scope !197
  %wide.load441 = load <8 x float>, ptr %i.jp, align 4, !tbaa !34, !alias.scope !197
  %wide.load442 = load <8 x float>, ptr %i.jq, align 4, !tbaa !34, !alias.scope !197
  %wide.load443 = load <8 x float>, ptr %i.jr, align 4, !tbaa !34, !alias.scope !197
  %i.js = fsub reassoc nsz arcp contract afn <8 x float> %wide.load440, %wide.load436
  %i.jt = fsub reassoc nsz arcp contract afn <8 x float> %wide.load441, %wide.load437
  %i.ju = fsub reassoc nsz arcp contract afn <8 x float> %wide.load442, %wide.load438
  %i.jv = fsub reassoc nsz arcp contract afn <8 x float> %wide.load443, %wide.load439
  %i.jw = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat433, %i.js
  %i.jx = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat433, %i.jt
  %i.jy = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat433, %i.ju
  %i.jz = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat433, %i.jv
  %i.ka = fadd reassoc nsz arcp contract afn <8 x float> %i.jw, %wide.load436
  %i.kb = fadd reassoc nsz arcp contract afn <8 x float> %i.jx, %wide.load437
  %i.kc = fadd reassoc nsz arcp contract afn <8 x float> %i.jy, %wide.load438
  %i.kd = fadd reassoc nsz arcp contract afn <8 x float> %i.jz, %wide.load439
  store <8 x float> %i.ka, ptr %i.jk, align 4, !tbaa !34, !alias.scope !196, !noalias !197
  store <8 x float> %i.kb, ptr %i.jl, align 4, !tbaa !34, !alias.scope !196, !noalias !197
  store <8 x float> %i.kc, ptr %i.jm, align 4, !tbaa !34, !alias.scope !196, !noalias !197
  store <8 x float> %i.kd, ptr %i.jn, align 4, !tbaa !34, !alias.scope !196, !noalias !197
  %index.next444 = add nuw i64 %index435, 32      ; 2 uses
  %i.ke = icmp eq i64 %index.next444, %n.vec431
  br i1 %i.ke, label %middle.block445, label %vector.body434, !llvm.loop !180

middle.block445:                                  ; preds = %vector.body434
  br i1 %cmp.n446, label %..loopexit302_crit_edge.us, label %vec.epilog.iter.check448

vec.epilog.iter.check448:                         ; preds = %middle.block445
  br i1 %min.epilog.iters.check450, label %vec.epilog.scalar.ph449.preheader, label %vec.epilog.ph451, !prof !198

vec.epilog.ph451:                                 ; preds = %vector.main.loop.iter.check428, %vec.epilog.iter.check448
  %vec.epilog.resume.val452 = phi i64 [ %n.vec431, %vec.epilog.iter.check448 ], [ 0, %vector.main.loop.iter.check428 ]
  %broadcast.splatinsert454 = insertelement <4 x float> poison, float %i.io, i64 0
  %broadcast.splat455 = shufflevector <4 x float> %broadcast.splatinsert454, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body456

vec.epilog.vector.body456:                        ; preds = %vec.epilog.vector.body456, %vec.epilog.ph451
  %index457 = phi i64 [ %vec.epilog.resume.val452, %vec.epilog.ph451 ], [ %index.next460, %vec.epilog.vector.body456 ] ; 3 uses
  %i.kf = getelementptr [4 x i8], ptr %i.iu, i64 %index457 ; 2 uses
  %wide.load458 = load <4 x float>, ptr %i.kf, align 4, !tbaa !34, !alias.scope !196, !noalias !197 ; 2 uses
  %i.kg = getelementptr [4 x i8], ptr %i.jd, i64 %index457
  %wide.load459 = load <4 x float>, ptr %i.kg, align 4, !tbaa !34, !alias.scope !197
  %i.kh = fsub reassoc nsz arcp contract afn <4 x float> %wide.load459, %wide.load458
  %i.ki = fmul reassoc nsz arcp contract afn <4 x float> %broadcast.splat455, %i.kh
  %i.kj = fadd reassoc nsz arcp contract afn <4 x float> %i.ki, %wide.load458
  store <4 x float> %i.kj, ptr %i.kf, align 4, !tbaa !34, !alias.scope !196, !noalias !197
  %index.next460 = add nuw i64 %index457, 4       ; 2 uses
  %i.kk = icmp eq i64 %index.next460, %n.vec453
  br i1 %i.kk, label %vec.epilog.middle.block461, label %vec.epilog.vector.body456, !llvm.loop !181

vec.epilog.middle.block461:                       ; preds = %vec.epilog.vector.body456
  br i1 %cmp.n462, label %..loopexit302_crit_edge.us, label %vec.epilog.scalar.ph449.preheader

vec.epilog.scalar.ph449.preheader:                ; preds = %iter.check447, %vector.memcheck424, %vec.epilog.iter.check448, %vec.epilog.middle.block461
  %indvars.iv343.ph = phi i64 [ 0, %iter.check447 ], [ 0, %vector.memcheck424 ], [ %n.vec431, %vec.epilog.iter.check448 ], [ %n.vec453, %vec.epilog.middle.block461 ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph449.prol.loopexit, label %vec.epilog.scalar.ph449.prol

vec.epilog.scalar.ph449.prol:                     ; preds = %vec.epilog.scalar.ph449.preheader, %vec.epilog.scalar.ph449.prol
  %indvars.iv343.prol = phi i64 [ %indvars.iv.next344.prol, %vec.epilog.scalar.ph449.prol ], [ %indvars.iv343.ph, %vec.epilog.scalar.ph449.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph449.prol ], [ 0, %vec.epilog.scalar.ph449.preheader ]
  %i.kl = getelementptr [4 x i8], ptr %i.iu, i64 %indvars.iv343.prol ; 2 uses
  %i.km = load float, ptr %i.kl, align 4, !tbaa !34 ; 2 uses
  %i.kn = getelementptr [4 x i8], ptr %i.jd, i64 %indvars.iv343.prol
  %i.ko = load float, ptr %i.kn, align 4, !tbaa !34
  %i.kp = fsub reassoc nsz arcp contract afn float %i.ko, %i.km
  %i.kq = fmul reassoc nsz arcp contract afn float %i.io, %i.kp
  %i.kr = fadd reassoc nsz arcp contract afn float %i.kq, %i.km
  store float %i.kr, ptr %i.kl, align 4, !tbaa !34
  %indvars.iv.next344.prol = add nuw nsw i64 %indvars.iv343.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph449.prol.loopexit, label %vec.epilog.scalar.ph449.prol, !llvm.loop !182

vec.epilog.scalar.ph449.prol.loopexit:            ; preds = %vec.epilog.scalar.ph449.prol, %vec.epilog.scalar.ph449.preheader
  %indvars.iv343.unr = phi i64 [ %indvars.iv343.ph, %vec.epilog.scalar.ph449.preheader ], [ %indvars.iv.next344.prol, %vec.epilog.scalar.ph449.prol ]
  %i.ks = sub nsw i64 %indvars.iv343.ph, %wide.trip.count
  %i.kt = icmp ugt i64 %i.ks, -4
  br i1 %i.kt, label %..loopexit302_crit_edge.us, label %vec.epilog.scalar.ph449

vec.epilog.scalar.ph449:                          ; preds = %vec.epilog.scalar.ph449.prol.loopexit, %vec.epilog.scalar.ph449
  %indvars.iv343 = phi i64 [ %indvars.iv.next344.3, %vec.epilog.scalar.ph449 ], [ %indvars.iv343.unr, %vec.epilog.scalar.ph449.prol.loopexit ] ; 6 uses
  %i.ku = getelementptr [4 x i8], ptr %i.iu, i64 %indvars.iv343 ; 2 uses
  %i.kv = load float, ptr %i.ku, align 4, !tbaa !34 ; 2 uses
  %i.kw = getelementptr [4 x i8], ptr %i.jd, i64 %indvars.iv343
  %i.kx = load float, ptr %i.kw, align 4, !tbaa !34
  %i.ky = fsub reassoc nsz arcp contract afn float %i.kx, %i.kv
  %i.kz = fmul reassoc nsz arcp contract afn float %i.io, %i.ky
  %i.la = fadd reassoc nsz arcp contract afn float %i.kz, %i.kv
  store float %i.la, ptr %i.ku, align 4, !tbaa !34
  %indvars.iv.next344 = add nuw nsw i64 %indvars.iv343, 1 ; 2 uses
  %i.lb = getelementptr [4 x i8], ptr %i.iu, i64 %indvars.iv.next344 ; 2 uses
  %i.lc = load float, ptr %i.lb, align 4, !tbaa !34 ; 2 uses
  %i.ld = getelementptr [4 x i8], ptr %i.jd, i64 %indvars.iv.next344
  %i.le = load float, ptr %i.ld, align 4, !tbaa !34
  %i.lf = fsub reassoc nsz arcp contract afn float %i.le, %i.lc
  %i.lg = fmul reassoc nsz arcp contract afn float %i.io, %i.lf
  %i.lh = fadd reassoc nsz arcp contract afn float %i.lg, %i.lc
  store float %i.lh, ptr %i.lb, align 4, !tbaa !34
  %indvars.iv.next344.1 = add nuw nsw i64 %indvars.iv343, 2 ; 2 uses
  %i.li = getelementptr [4 x i8], ptr %i.iu, i64 %indvars.iv.next344.1 ; 2 uses
  %i.lj = load float, ptr %i.li, align 4, !tbaa !34 ; 2 uses
  %i.lk = getelementptr [4 x i8], ptr %i.jd, i64 %indvars.iv.next344.1
  %i.ll = load float, ptr %i.lk, align 4, !tbaa !34
  %i.lm = fsub reassoc nsz arcp contract afn float %i.ll, %i.lj
  %i.ln = fmul reassoc nsz arcp contract afn float %i.io, %i.lm
  %i.lo = fadd reassoc nsz arcp contract afn float %i.ln, %i.lj
  store float %i.lo, ptr %i.li, align 4, !tbaa !34
  %indvars.iv.next344.2 = add nuw nsw i64 %indvars.iv343, 3 ; 2 uses
  %i.lp = getelementptr [4 x i8], ptr %i.iu, i64 %indvars.iv.next344.2 ; 2 uses
  %i.lq = load float, ptr %i.lp, align 4, !tbaa !34 ; 2 uses
  %i.lr = getelementptr [4 x i8], ptr %i.jd, i64 %indvars.iv.next344.2
  %i.ls = load float, ptr %i.lr, align 4, !tbaa !34
  %i.lt = fsub reassoc nsz arcp contract afn float %i.ls, %i.lq
  %i.lu = fmul reassoc nsz arcp contract afn float %i.io, %i.lt
  %i.lv = fadd reassoc nsz arcp contract afn float %i.lu, %i.lq
  store float %i.lv, ptr %i.lp, align 4, !tbaa !34
  %indvars.iv.next344.3 = add nuw nsw i64 %indvars.iv343, 4 ; 2 uses
  %exitcond346.not.3 = icmp eq i64 %indvars.iv.next344.3, %wide.trip.count
  br i1 %exitcond346.not.3, label %..loopexit302_crit_edge.us, label %vec.epilog.scalar.ph449, !llvm.loop !183

..loopexit302_crit_edge.us:                       ; preds = %vec.epilog.scalar.ph449.prol.loopexit, %vec.epilog.scalar.ph449, %middle.block445, %vec.epilog.middle.block461, %bb.q, %bb.p, %bb.o, %.lr.ph317.split.us
  %indvars.iv.next348 = add nsw i64 %indvars.iv347, 1 ; 2 uses
  %i.lw = icmp slt i64 %indvars.iv.next348, %i.hd
  br i1 %i.lw, label %.lr.ph317.split.us, label %.loopexit305

.loopexit305:                                     ; preds = %..loopexit302_crit_edge.us, %.lr.ph317, %bb.n, %bb.m, %bb.k, %bb.l
  %indvars.iv.next351 = add nsw i64 %indvars.iv350, 1 ; 2 uses
  %i.lx = icmp slt i64 %indvars.iv.next351, %i.hg
  br i1 %i.lx, label %bb.k, label %._crit_edge

bb.r:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #16
  store ptr null, ptr %i.i, align 8, !tbaa !200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #16
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !201 ; 2 uses
  %.not.i270 = icmp eq ptr %i.lz, null
  br i1 %.not.i270, label %dt_masks_get_mask.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 88
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !203 ; 2 uses
  %.not12.i = icmp eq ptr %i.mb, null
  br i1 %.not12.i, label %dt_masks_get_mask.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.mc = call i32 %i.mb(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ba, ptr noundef nonnull %i.i, ptr noundef nonnull %i.l, ptr noundef nonnull %i.m, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k) #16, !inline_history !184 ; 0 uses
  %.pre = load i32, ptr %i.k, align 4, !tbaa !38
  %.pre371 = load float, ptr %i.ac, align 4, !tbaa !92
  %.pre372 = load i32, ptr %i.m, align 4, !tbaa !38
  %.pre373 = load i32, ptr %i.j, align 4, !tbaa !38
  %.pre374 = load i32, ptr %i.l, align 4, !tbaa !38
  %i.md = sitofp reassoc nsz arcp contract afn i32 %.pre to float
  %i.me = sitofp reassoc nsz arcp contract afn i32 %.pre372 to float
  %i.mf = sitofp reassoc nsz arcp contract afn i32 %.pre373 to float
  %i.mg = sitofp reassoc nsz arcp contract afn i32 %.pre374 to float
  br label %dt_masks_get_mask.exit

dt_masks_get_mask.exit:                           ; preds = %bb.r, %bb.s, %bb.t
  %i.mh = phi float [ 0.000000e+00, %bb.r ], [ 0.000000e+00, %bb.s ], [ %i.mg, %bb.t ]
  %i.mi = phi float [ 0.000000e+00, %bb.r ], [ 0.000000e+00, %bb.s ], [ %i.mf, %bb.t ]
  %i.mj = phi float [ 0.000000e+00, %bb.r ], [ 0.000000e+00, %bb.s ], [ %i.me, %bb.t ]
  %i.mk = phi float [ %i.bc, %bb.r ], [ %i.bc, %bb.s ], [ %.pre371, %bb.t ] ; 7 uses
  %i.ml = phi float [ 0.000000e+00, %bb.r ], [ 0.000000e+00, %bb.s ], [ %i.md, %bb.t ]
  %i.mm = fmul reassoc nsz arcp contract afn float %i.mk, %i.ml
  %i.mn = fptosi float %i.mm to i32               ; 3 uses
  %i.mo = fmul reassoc nsz arcp contract afn float %i.mk, %i.mj
  %i.mp = fptosi float %i.mo to i32
  %i.mq = fmul reassoc nsz arcp contract afn float %i.mk, %i.mi
  %i.mr = fptosi float %i.mq to i32               ; 3 uses
end_hunk_1
begin_hunk_2_@_process:bb.a
  %i.oa = sitofp reassoc nsz arcp contract afn <2 x i32> %i.nz to <2 x float>
  %i.ob = insertelement <2 x float> poison, float %i.mk, i64 0
  %i.oc = shufflevector <2 x float> %i.ob, <2 x float> poison, <4 x i32> zeroinitializer
  %i.od = shufflevector <2 x float> %i.oa, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.oe = fmul reassoc nsz arcp contract afn <4 x float> %i.oc, %i.od
  %i.of = shufflevector <2 x float> %i.nx, <2 x float> %i.ny, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.og = fmul reassoc nsz arcp contract afn <4 x float> %i.oe, %i.of
  store <4 x float> %i.og, ptr %i.b, align 16, !tbaa !34
  %i.oh = sitofp reassoc nsz arcp contract afn i32 %.val36.i to double
  %i.oi = call i32 @dt_dev_distort_transform_plus(ptr noundef %.val37.i, ptr noundef %.val38.i, double noundef %i.oh, i32 noundef 3, ptr noundef nonnull %i.b, i64 noundef 2) #16 ; 2 uses
  %.not.i54.i = icmp eq i32 %i.oi, 0
  %i.oj = load <2 x float>, ptr %i.b, align 16
  %i.ok = load <2 x float>, ptr %i.ar, align 8
  %i.ol = fsub reassoc nsz arcp contract afn <2 x float> %i.oj, %i.ok
  %i.om = fptosi <2 x float> %i.ol to <2 x i32>
  %i.on = select i1 %.not.i54.i, <2 x i32> zeroinitializer, <2 x i32> %i.om
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %masks_get_delta.exit

bb.v:                                             ; preds = %bb.u
  %i.oo = and i32 %i.mv, 32
  %.not28.i = icmp eq i32 %i.oo, 0
  br i1 %.not28.i, label %masks_get_delta.exit.thread, label %masks_point_calc_delta.exit59.i

masks_point_calc_delta.exit59.i:                  ; preds = %bb.v
  %i.op = load ptr, ptr %i.ba, align 8, !tbaa !37
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !41
  %i.or = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %.val.i = load i32, ptr %i.al, align 16, !tbaa !192
  %.val29.i = load ptr, ptr %i.ak, align 8, !tbaa !28
  %.val30.i = load ptr, ptr %i.s, align 8, !tbaa !81 ; 2 uses
  %i.os = getelementptr i8, ptr %.val30.i, i64 144
  %i.ot = load <2 x float>, ptr %i.oq, align 4, !tbaa !34
  %i.ou = load <2 x float>, ptr %i.or, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.ov = load <2 x i32>, ptr %i.os, align 16, !tbaa !38
  %i.ow = sitofp reassoc nsz arcp contract afn <2 x i32> %i.ov to <2 x float>
  %i.ox = insertelement <2 x float> poison, float %i.mk, i64 0
  %i.oy = shufflevector <2 x float> %i.ox, <2 x float> poison, <4 x i32> zeroinitializer
  %i.oz = shufflevector <2 x float> %i.ow, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.pa = fmul reassoc nsz arcp contract afn <4 x float> %i.oy, %i.oz
  %i.pb = shufflevector <2 x float> %i.ot, <2 x float> %i.ou, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.pc = fmul reassoc nsz arcp contract afn <4 x float> %i.pa, %i.pb
  store <4 x float> %i.pc, ptr %i.a, align 16, !tbaa !34
  %i.pd = sitofp reassoc nsz arcp contract afn i32 %.val.i to double
  %i.pe = call i32 @dt_dev_distort_transform_plus(ptr noundef %.val29.i, ptr noundef %.val30.i, double noundef %i.pd, i32 noundef 3, ptr noundef nonnull %i.a, i64 noundef 2) #16 ; 2 uses
  %.not.i58.i = icmp eq i32 %i.pe, 0
  %i.pf = load <2 x float>, ptr %i.a, align 16
  %i.pg = load <2 x float>, ptr %i.as, align 8
  %i.ph = fsub reassoc nsz arcp contract afn <2 x float> %i.pf, %i.pg
  %i.pi = fptosi <2 x float> %i.ph to <2 x i32>
  %i.pj = select i1 %.not.i58.i, <2 x i32> zeroinitializer, <2 x i32> %i.pi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %masks_get_delta.exit

masks_get_delta.exit:                             ; preds = %masks_point_calc_delta.exit.i, %masks_point_calc_delta.exit55.i, %masks_point_calc_delta.exit59.i
  %.0.i272 = phi i32 [ %i.nm, %masks_point_calc_delta.exit.i ], [ %i.pe, %masks_point_calc_delta.exit59.i ], [ %i.oi, %masks_point_calc_delta.exit55.i ]
  %i.pk = phi <2 x i32> [ %i.nr, %masks_point_calc_delta.exit.i ], [ %i.pj, %masks_point_calc_delta.exit59.i ], [ %i.on, %masks_point_calc_delta.exit55.i ] ; 3 uses
  %.not250.not = icmp eq i32 %.0.i272, 0
  br i1 %.not250.not, label %masks_get_delta.exit.thread, label %bb.w

masks_get_delta.exit.thread:                      ; preds = %bb.v, %masks_get_delta.exit
  %i.pl = load ptr, ptr %i.i, align 8, !tbaa !200
  br label %.loopexit307

bb.w:                                             ; preds = %masks_get_delta.exit
  %i.pm = icmp ne <2 x i32> %i.pk, zeroinitializer ; 2 uses
  %i.pn = extractelement <2 x i1> %i.pm, i64 0
  %i.po = extractelement <2 x i1> %i.pm, i64 1
  %or.cond = select i1 %i.pn, i1 true, i1 %i.po
  br i1 %or.cond, label %.preheader306, label %..loopexit307_crit_edge

..loopexit307_crit_edge:                          ; preds = %bb.w
  %.pre375 = load ptr, ptr %i.i, align 8, !tbaa !200
  br label %.loopexit307

.preheader306:                                    ; preds = %bb.w
  %i.pp = add i32 %i.mn, -1
  %i.pq = add i32 %i.pp, %i.mp                    ; 2 uses
  %.0223327 = add nsw i32 %i.mn, 1                ; 2 uses
  %i.pr = icmp slt i32 %.0223327, %i.pq
  %.pre376 = load ptr, ptr %i.i, align 8          ; 3 uses
  br i1 %i.pr, label %.lr.ph330, label %.loopexit307

.lr.ph330:                                        ; preds = %.preheader306
  %i.ps = load i32, ptr %i.ad, align 4, !tbaa !93 ; 2 uses
  %i.pt = add i32 %i.mr, -1
  %i.pu = add i32 %i.pt, %i.mt                    ; 2 uses
  %.0222324 = add i32 %i.mr, 1                    ; 2 uses
  %i.pv = icmp sge i32 %.0222324, %i.pu
  %i.pw = load i32, ptr %i.l, align 4
  %i.px = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  %i.py = extractelement <2 x i32> %i.pk, i64 0
  %i.pz = sext i32 %i.py to i64                   ; 2 uses
  %i.qa = sext i32 %.0222324 to i64
  %i.qb = sext i32 %.0223327 to i64
  %i.qc = sext i32 %i.ps to i64                   ; 2 uses
  %i.qd = extractelement <2 x i32> %i.pk, i64 1   ; 2 uses
  %i.qe = sext i32 %i.qd to i64
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph330, %.loopexit303
  %indvars.iv363 = phi i64 [ %i.qb, %.lr.ph330 ], [ %indvars.iv.next364, %.loopexit303 ] ; 7 uses
  %i.qf = icmp slt i64 %indvars.iv363, %i.qc
  br i1 %i.qf, label %.loopexit303, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.qg = load i32, ptr %i.ae, align 4, !tbaa !94
  %i.qh = add nsw i32 %i.qg, %i.ps
  %i.qi = sext i32 %i.qh to i64
  %.not251 = icmp slt i64 %indvars.iv363, %i.qi
  br i1 %.not251, label %bb.z, label %.loopexit303

bb.z:                                             ; preds = %bb.y
  %i.qj = sub nsw i64 %indvars.iv363, %i.qe       ; 2 uses
  %i.qk = load i32, ptr %i.am, align 4, !tbaa !93 ; 3 uses
  %i.ql = sext i32 %i.qk to i64
  %i.qm = icmp slt i64 %i.qj, %i.ql
  br i1 %i.qm, label %.loopexit303, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.qn = load i32, ptr %i.an, align 4, !tbaa !94
  %i.qo = add nsw i32 %i.qn, %i.qk
  %i.qp = sext i32 %i.qo to i64
  %.not252 = icmp sge i64 %i.qj, %i.qp
  %brmerge338 = select i1 %.not252, i1 true, i1 %i.pv
  br i1 %brmerge338, label %.loopexit303, label %.lr.ph326

.lr.ph326:                                        ; preds = %bb.aa
  %i.qq = load i32, ptr %5, align 4, !tbaa !95    ; 2 uses
  %i.qr = trunc i64 %indvars.iv363 to i32
  %i.qs = sub i32 %i.qr, %i.mn
  %i.qt = sitofp reassoc nsz arcp contract afn i32 %i.qs to float
  %i.qu = sub nsw i64 %indvars.iv363, %i.qc
  %i.qv = sext i32 %i.qq to i64                   ; 2 uses
  %i.qw = add i32 %i.qd, %i.qk
  %i.qx = trunc nsw i64 %indvars.iv363 to i32
  %i.qy = sub i32 %i.qx, %i.qw
  %i.qz = sext i32 %i.qy to i64
  br i1 %i.ap, label %.lr.ph326.split.us, label %.loopexit303

.lr.ph326.split.us:                               ; preds = %.lr.ph326, %..loopexit_crit_edge.us
  %indvars.iv358 = phi i64 [ %indvars.iv.next359, %..loopexit_crit_edge.us ], [ %i.qa, %.lr.ph326 ] ; 7 uses
  %i.ra = icmp slt i64 %indvars.iv358, %i.qv
  br i1 %i.ra, label %..loopexit_crit_edge.us, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph326.split.us
  %i.rb = load i32, ptr %i.af, align 4, !tbaa !96 ; 2 uses
  %i.rc = add nsw i32 %i.rb, %i.qq
  %i.rd = sext i32 %i.rc to i64
  %.not253.us = icmp slt i64 %indvars.iv358, %i.rd
  br i1 %.not253.us, label %bb.ac, label %..loopexit_crit_edge.us

bb.ac:                                            ; preds = %bb.ab
  %i.re = sub nsw i64 %indvars.iv358, %i.pz       ; 2 uses
  %i.rf = load i32, ptr %4, align 4, !tbaa !95    ; 2 uses
  %i.rg = sext i32 %i.rf to i64                   ; 2 uses
  %i.rh = icmp slt i64 %i.re, %i.rg
  br i1 %i.rh, label %..loopexit_crit_edge.us, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ri = load i32, ptr %i.ao, align 4, !tbaa !96 ; 2 uses
  %i.rj = add nsw i32 %i.ri, %i.rf
  %i.rk = sext i32 %i.rj to i64
  %.not254.us = icmp slt i64 %i.re, %i.rk
  br i1 %.not254.us, label %iter.check, label %..loopexit_crit_edge.us

iter.check:                                       ; preds = %bb.ad
  %i.rl = load float, ptr %i.ac, align 4, !tbaa !92 ; 2 uses
  %i.rm = fdiv reassoc nsz arcp contract afn float %i.qt, %i.rl
  %i.rn = fptosi float %i.rm to i32
  %i.ro = mul nsw i32 %i.pw, %i.rn
  %i.rp = trunc i64 %indvars.iv358 to i32
  %i.rq = sub i32 %i.rp, %i.mr
  %i.rr = sitofp reassoc nsz arcp contract afn i32 %i.rq to float
  %i.rs = fdiv reassoc nsz arcp contract afn float %i.rr, %i.rl
  %i.rt = fptosi float %i.rs to i32
  %i.ru = add nsw i32 %i.ro, %i.rt
  %i.rv = sext i32 %i.ru to i64
  %i.rw = getelementptr inbounds [4 x i8], ptr %.pre376, i64 %i.rv
  %i.rx = load float, ptr %i.rw, align 4, !tbaa !34
  %i.ry = load float, ptr %i.px, align 4, !tbaa !204
  %i.rz = fmul reassoc nsz arcp contract afn float %i.ry, %i.rx ; 7 uses
  %i.sa = sext i32 %i.rb to i64
  %i.sb = mul nuw nsw i64 %i.qu, %i.sa
  %i.sc = sub nsw i64 %indvars.iv358, %i.qv
  %i.sd = add i64 %i.sc, %i.sb                    ; 2 uses
  %i.se = mul i64 %i.sd, %i.r
  %i.sf = getelementptr [4 x i8], ptr %3, i64 %i.se ; 8 uses
  %i.sg = sext i32 %i.ri to i64
  %i.sh = mul nsw i64 %i.sg, %i.qz
  %i.si = add nsw i64 %i.pz, %i.rg
  %i.sj = sub nsw i64 %indvars.iv358, %i.si
  %i.sk = add nsw i64 %i.sj, %i.sh                ; 2 uses
  %i.sl = mul i64 %i.sk, %i.r
  %i.sm = getelementptr [4 x i8], ptr %2, i64 %i.sl ; 8 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.sn = mul i64 %i.sd, %i.r
  %i.so = shl i64 %i.sn, 2
  %i.sp = getelementptr i8, ptr %scevgep400, i64 %i.so
  %i.sq = mul i64 %i.sk, %i.r
  %i.sr = shl i64 %i.sq, 2
  %i.ss = getelementptr i8, ptr %scevgep, i64 %i.sr
  %bound0 = icmp ult ptr %i.sf, %i.ss
  %bound1 = icmp ult ptr %i.sm, %i.sp
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check400, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.rz, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.st = getelementptr [4 x i8], ptr %i.sf, i64 %index ; 5 uses
  %i.su = getelementptr i8, ptr %i.st, i64 32     ; 2 uses
  %i.sv = getelementptr i8, ptr %i.st, i64 64     ; 2 uses
  %i.sw = getelementptr i8, ptr %i.st, i64 96     ; 2 uses
  %wide.load = load <8 x float>, ptr %i.st, align 4, !tbaa !34, !alias.scope !205, !noalias !206 ; 2 uses
  %wide.load401 = load <8 x float>, ptr %i.su, align 4, !tbaa !34, !alias.scope !205, !noalias !206 ; 2 uses
  %wide.load402 = load <8 x float>, ptr %i.sv, align 4, !tbaa !34, !alias.scope !205, !noalias !206 ; 2 uses
  %wide.load403 = load <8 x float>, ptr %i.sw, align 4, !tbaa !34, !alias.scope !205, !noalias !206 ; 2 uses
  %i.sx = getelementptr [4 x i8], ptr %i.sm, i64 %index ; 4 uses
  %i.sy = getelementptr i8, ptr %i.sx, i64 32
  %i.sz = getelementptr i8, ptr %i.sx, i64 64
  %i.ta = getelementptr i8, ptr %i.sx, i64 96
  %wide.load404 = load <8 x float>, ptr %i.sx, align 4, !tbaa !34, !alias.scope !206
  %wide.load405 = load <8 x float>, ptr %i.sy, align 4, !tbaa !34, !alias.scope !206
  %wide.load406 = load <8 x float>, ptr %i.sz, align 4, !tbaa !34, !alias.scope !206
  %wide.load407 = load <8 x float>, ptr %i.ta, align 4, !tbaa !34, !alias.scope !206
  %i.tb = fsub reassoc nsz arcp contract afn <8 x float> %wide.load404, %wide.load
  %i.tc = fsub reassoc nsz arcp contract afn <8 x float> %wide.load405, %wide.load401
  %i.td = fsub reassoc nsz arcp contract afn <8 x float> %wide.load406, %wide.load402
  %i.te = fsub reassoc nsz arcp contract afn <8 x float> %wide.load407, %wide.load403
  %i.tf = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat, %i.tb
  %i.tg = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat, %i.tc
  %i.th = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat, %i.td
  %i.ti = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat, %i.te
  %i.tj = fadd reassoc nsz arcp contract afn <8 x float> %i.tf, %wide.load
  %i.tk = fadd reassoc nsz arcp contract afn <8 x float> %i.tg, %wide.load401
  %i.tl = fadd reassoc nsz arcp contract afn <8 x float> %i.th, %wide.load402
  %i.tm = fadd reassoc nsz arcp contract afn <8 x float> %i.ti, %wide.load403
  store <8 x float> %i.tj, ptr %i.st, align 4, !tbaa !34, !alias.scope !205, !noalias !206
  store <8 x float> %i.tk, ptr %i.su, align 4, !tbaa !34, !alias.scope !205, !noalias !206
  store <8 x float> %i.tl, ptr %i.sv, align 4, !tbaa !34, !alias.scope !205, !noalias !206
  store <8 x float> %i.tm, ptr %i.sw, align 4, !tbaa !34, !alias.scope !205, !noalias !206
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.tn = icmp eq i64 %index.next, %n.vec
  br i1 %i.tn, label %middle.block, label %vector.body, !llvm.loop !188

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !198

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert409 = insertelement <4 x float> poison, float %i.rz, i64 0
  %broadcast.splat410 = shufflevector <4 x float> %broadcast.splatinsert409, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index411 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next414, %vec.epilog.vector.body ] ; 3 uses
  %i.to = getelementptr [4 x i8], ptr %i.sf, i64 %index411 ; 2 uses
  %wide.load412 = load <4 x float>, ptr %i.to, align 4, !tbaa !34, !alias.scope !205, !noalias !206 ; 2 uses
  %i.tp = getelementptr [4 x i8], ptr %i.sm, i64 %index411
  %wide.load413 = load <4 x float>, ptr %i.tp, align 4, !tbaa !34, !alias.scope !206
  %i.tq = fsub reassoc nsz arcp contract afn <4 x float> %wide.load413, %wide.load412
  %i.tr = fmul reassoc nsz arcp contract afn <4 x float> %broadcast.splat410, %i.tq
  %i.ts = fadd reassoc nsz arcp contract afn <4 x float> %i.tr, %wide.load412
  store <4 x float> %i.ts, ptr %i.to, align 4, !tbaa !34, !alias.scope !205, !noalias !206
  %index.next414 = add nuw i64 %index411, 4       ; 2 uses
  %i.tt = icmp eq i64 %index.next414, %n.vec408
  br i1 %i.tt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !189

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n415, label %..loopexit_crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv353.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec408, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod500.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv353.prol = phi i64 [ %indvars.iv.next354.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv353.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter501 = phi i64 [ %prol.iter501.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.tu = getelementptr [4 x i8], ptr %i.sf, i64 %indvars.iv353.prol ; 2 uses
  %i.tv = load float, ptr %i.tu, align 4, !tbaa !34 ; 2 uses
  %i.tw = getelementptr [4 x i8], ptr %i.sm, i64 %indvars.iv353.prol
  %i.tx = load float, ptr %i.tw, align 4, !tbaa !34
  %i.ty = fsub reassoc nsz arcp contract afn float %i.tx, %i.tv
  %i.tz = fmul reassoc nsz arcp contract afn float %i.rz, %i.ty
  %i.ua = fadd reassoc nsz arcp contract afn float %i.tz, %i.tv
  store float %i.ua, ptr %i.tu, align 4, !tbaa !34
  %indvars.iv.next354.prol = add nuw nsw i64 %indvars.iv353.prol, 1 ; 2 uses
  %prol.iter501.next = add i64 %prol.iter501, 1   ; 2 uses
  %prol.iter501.cmp.not = icmp eq i64 %prol.iter501.next, %xtraiter499
  br i1 %prol.iter501.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !190

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv353.unr = phi i64 [ %indvars.iv353.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next354.prol, %vec.epilog.scalar.ph.prol ]
  %i.ub = sub nsw i64 %indvars.iv353.ph, %wide.trip.count
  %i.uc = icmp ugt i64 %i.ub, -4
  br i1 %i.uc, label %..loopexit_crit_edge.us, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv353 = phi i64 [ %indvars.iv.next354.3, %vec.epilog.scalar.ph ], [ %indvars.iv353.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.ud = getelementptr [4 x i8], ptr %i.sf, i64 %indvars.iv353 ; 2 uses
  %i.ue = load float, ptr %i.ud, align 4, !tbaa !34 ; 2 uses
  %i.uf = getelementptr [4 x i8], ptr %i.sm, i64 %indvars.iv353
  %i.ug = load float, ptr %i.uf, align 4, !tbaa !34
  %i.uh = fsub reassoc nsz arcp contract afn float %i.ug, %i.ue
  %i.ui = fmul reassoc nsz arcp contract afn float %i.rz, %i.uh
  %i.uj = fadd reassoc nsz arcp contract afn float %i.ui, %i.ue
  store float %i.uj, ptr %i.ud, align 4, !tbaa !34
  %indvars.iv.next354 = add nuw nsw i64 %indvars.iv353, 1 ; 2 uses
  %i.uk = getelementptr [4 x i8], ptr %i.sf, i64 %indvars.iv.next354 ; 2 uses
  %i.ul = load float, ptr %i.uk, align 4, !tbaa !34 ; 2 uses
  %i.um = getelementptr [4 x i8], ptr %i.sm, i64 %indvars.iv.next354
  %i.un = load float, ptr %i.um, align 4, !tbaa !34
  %i.uo = fsub reassoc nsz arcp contract afn float %i.un, %i.ul
  %i.up = fmul reassoc nsz arcp contract afn float %i.rz, %i.uo
  %i.uq = fadd reassoc nsz arcp contract afn float %i.up, %i.ul
  store float %i.uq, ptr %i.uk, align 4, !tbaa !34
  %indvars.iv.next354.1 = add nuw nsw i64 %indvars.iv353, 2 ; 2 uses
  %i.ur = getelementptr [4 x i8], ptr %i.sf, i64 %indvars.iv.next354.1 ; 2 uses
  %i.us = load float, ptr %i.ur, align 4, !tbaa !34 ; 2 uses
  %i.ut = getelementptr [4 x i8], ptr %i.sm, i64 %indvars.iv.next354.1
  %i.uu = load float, ptr %i.ut, align 4, !tbaa !34
  %i.uv = fsub reassoc nsz arcp contract afn float %i.uu, %i.us
  %i.uw = fmul reassoc nsz arcp contract afn float %i.rz, %i.uv
  %i.ux = fadd reassoc nsz arcp contract afn float %i.uw, %i.us
  store float %i.ux, ptr %i.ur, align 4, !tbaa !34
  %indvars.iv.next354.2 = add nuw nsw i64 %indvars.iv353, 3 ; 2 uses
  %i.uy = getelementptr [4 x i8], ptr %i.sf, i64 %indvars.iv.next354.2 ; 2 uses
  %i.uz = load float, ptr %i.uy, align 4, !tbaa !34 ; 2 uses
  %i.va = getelementptr [4 x i8], ptr %i.sm, i64 %indvars.iv.next354.2
  %i.vb = load float, ptr %i.va, align 4, !tbaa !34
  %i.vc = fsub reassoc nsz arcp contract afn float %i.vb, %i.uz
  %i.vd = fmul reassoc nsz arcp contract afn float %i.rz, %i.vc
  %i.ve = fadd reassoc nsz arcp contract afn float %i.vd, %i.uz
  store float %i.ve, ptr %i.uy, align 4, !tbaa !34
  %indvars.iv.next354.3 = add nuw nsw i64 %indvars.iv353, 4 ; 2 uses
  %exitcond357.not.3 = icmp eq i64 %indvars.iv.next354.3, %wide.trip.count356
  br i1 %exitcond357.not.3, label %..loopexit_crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !191

..loopexit_crit_edge.us:                          ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.ad, %bb.ac, %bb.ab, %.lr.ph326.split.us
  %indvars.iv.next359 = add nsw i64 %indvars.iv358, 1 ; 2 uses
  %lftr.wideiv361 = trunc i64 %indvars.iv.next359 to i32
  %exitcond362.not = icmp eq i32 %i.pu, %lftr.wideiv361
  br i1 %exitcond362.not, label %.loopexit303, label %.lr.ph326.split.us

.loopexit303:                                     ; preds = %..loopexit_crit_edge.us, %.lr.ph326, %bb.aa, %bb.z, %bb.x, %bb.y
  %indvars.iv.next364 = add nsw i64 %indvars.iv363, 1 ; 2 uses
  %lftr.wideiv366 = trunc i64 %indvars.iv.next364 to i32
  %exitcond367.not = icmp eq i32 %i.pq, %lftr.wideiv366
  br i1 %exitcond367.not, label %.loopexit307, label %bb.x

.loopexit307:                                     ; preds = %.loopexit303, %.preheader306, %..loopexit307_crit_edge, %masks_get_delta.exit.thread
  %.sink = phi ptr [ %i.pl, %masks_get_delta.exit.thread ], [ %.pre375, %..loopexit307_crit_edge ], [ %.pre376, %.preheader306 ], [ %.pre376, %.loopexit303 ]
  call void @free(ptr noundef %.sink) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #16
  br label %bb.ae

.critedge:                                        ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #16
  br label %bb.ae

bb.ae:                                            ; preds = %masks_form_is_in_roi.exit.thread, %.loopexit307, %._crit_edge, %.critedge, %masks_form_is_in_roi.exit, %bb.c
  %indvars.iv.next369 = add nuw nsw i64 %indvars.iv368, 1
  %i.vf = getelementptr inbounds nuw i8, ptr %.0229334, i64 8
  %.0229 = load ptr, ptr %i.vf, align 8, !tbaa !30 ; 2 uses
  %i.vg = icmp samesign ult i64 %indvars.iv368, 63
  %i.vh = icmp ne ptr %.0229, null
  %i.vi = select i1 %i.vg, i1 %i.vh, i1 false
  br i1 %i.vi, label %bb.c, label %.loopexit310

.loopexit310:                                     ; preds = %bb.ae, %.preheader309, %bb.b, %bb.a
  ret void
}

declare void @dt_iop_copy_image_roi(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @dt_dev_distort_transform_plus(ptr noundef, ptr noundef, double noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define void @process(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 132
end_hunk_2
