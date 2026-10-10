Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/bilateral?download=true
inline.NumInlined: 16
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@dt_bilateral_init:bb.a
  store i32 1, ptr %i.ax, align 32, !tbaa !25
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i32 %1, ptr %i.ay, align 4, !tbaa !26
  %i.az = extractelement <2 x i32> %i.ai, i64 0
  %i.ba = add i32 %i.az, 3                        ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !27
  %i.bc = sext i32 %i.ba to i64
  %i.bd = shl nsw i64 %i.at, 2
  %i.be = mul i64 %i.bd, %i.al
  %i.bf = mul i64 %i.be, %i.bc                    ; 2 uses
  %i.bg = tail call ptr @dt_alloc_aligned(i64 noundef %i.bf) #15 ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bg, i64 64) ]
  %.not.i = icmp eq ptr %i.bg, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bh = sext i32 %i.an to i64
  %i.bi = sext i32 %i.ak to i64
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str, i64 noundef %i.bi, i64 noundef %i.bh, i64 noundef %i.at) #15
  tail call void @free(ptr noundef nonnull %i.a) #15
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr nonnull align 64 %i.bg, i8 0, i64 %i.bf, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.bg, ptr %i.bj, align 64, !tbaa !28
  %i.bk = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !77
  %i.bl = and i32 %i.bk, 4
  %.not39 = icmp eq i32 %i.bl, 0
  br i1 %.not39, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bm = fpext reassoc nsz arcp contract afn float %..i to double
  %i.bn = fpext reassoc nsz arcp contract afn float %2 to double
  %i.bo = fpext reassoc nsz arcp contract afn float %i.ac to double
  %i.bp = fpext reassoc nsz arcp contract afn float %3 to double
  %i.bq = sext i32 %i.an to i64
  %i.br = sext i32 %i.ak to i64
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.1, i64 noundef %i.br, i64 noundef %i.bq, i64 noundef %i.at, double noundef %i.bm, double noundef %i.bn, double noundef %i.bo, double noundef %i.bp) #15
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a, %bb.c
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %i.a, %bb.e ], [ %i.a, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @dt_bilateral_splat(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 64, !tbaa !28  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 64, !tbaa !21    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 16, !tbaa !19  ; 6 uses
  %i.f = mul i64 %i.e, %i.c                       ; 3 uses
  %i.g = trunc i64 %i.f to i32
  %i.h = trunc i64 %i.e to i32
  %sext128 = shl i64 %i.f, 32
  %i.i = ashr exact i64 %sext128, 32              ; 2 uses
  %i.j = add nsw i32 %i.g, 1                      ; 2 uses
  %i.k = sext i32 %i.j to i64
  %i.l = add nsw i32 %i.j, %i.h
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load i32, ptr %i.n, align 32, !tbaa !25  ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph157, label %._crit_edge

.lr.ph157:                                        ; preds = %bb.b
  %sext = shl i64 %i.e, 32                        ; 2 uses
  %sext130 = add i64 %sext, 4294967296
  %i.q = add i64 %i.f, %i.e
  %sext129 = shl i64 %i.q, 32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.s = load float, ptr %i.r, align 4, !tbaa !16 ; 2 uses
  %i.t = fmul reassoc nsz arcp contract afn float %i.s, %i.s ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.v = load i32, ptr %i.u, align 4, !tbaa !26   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.x = load i32, ptr %i.w, align 4, !tbaa !24
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load i32, ptr %i.y, align 8, !tbaa !27
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = insertelement <2 x i64> poison, i64 %i.c, i64 0
  %i.ae = insertelement <2 x i64> %i.ad, i64 %i.e, i64 1 ; 2 uses
  %i.af = add <2 x i64> %i.ae, splat (i64 -1)
  %i.ag = uitofp <2 x i64> %i.af to <2 x float>   ; 2 uses
  %i.ah = add <2 x i64> %i.ae, splat (i64 -2)     ; 2 uses
  %i.ai = trunc <2 x i64> %i.ah to <2 x i32>
  %i.aj = sext i32 %i.v to i64
  %i.ak = ashr exact i64 %sext, 30
  %i.al = ashr exact i64 %sext130, 30
  %i.am = ashr exact i64 %sext129, 30
  %i.an = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.t
  %i.ao = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.t
  %i.ap = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.t
  %i.aq = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.t
  br label %bb.c

.loopexit:                                        ; preds = %._crit_edge.us, %.lr.ph, %bb.c
  %indvars.iv.next162 = add nsw i64 %indvars.iv161, %i.aj
  %exitcond166.not = icmp eq i32 %i.as, %i.o
  br i1 %exitcond166.not, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %.lr.ph157, %.loopexit
  %indvars.iv161 = phi i64 [ 0, %.lr.ph157 ], [ %indvars.iv.next162, %.loopexit ] ; 2 uses
  %.0119156 = phi i32 [ 0, %.lr.ph157 ], [ %i.as, %.loopexit ] ; 3 uses
  %i.ar = mul nsw i32 %i.v, %.0119156             ; 2 uses
  %i.as = add nuw nsw i32 %.0119156, 1            ; 3 uses
  %i.at = mul nsw i32 %i.v, %i.as
  %. = tail call i32 @llvm.smin.i32(i32 %i.at, i32 %i.x) ; 2 uses
  %i.au = mul nsw i32 %i.z, %.0119156
  %i.av = sitofp reassoc nsz arcp contract afn i32 %i.ar to float
  %i.aw = load float, ptr %i.aa, align 4, !tbaa !29
  %i.ax = fmul reassoc nsz arcp contract afn float %i.aw, %i.av
  %i.ay = fptosi float %i.ax to i32
  %i.az = sub i32 %i.au, %i.ay
  %i.ba = icmp slt i32 %i.ar, %.
  br i1 %i.ba, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.bb = load i64, ptr %i.ab, align 8, !tbaa !22 ; 2 uses
  %i.bc = add i64 %i.bb, -2                       ; 2 uses
  %i.bd = trunc i64 %i.bc to i32
  %i.be = load i32, ptr %i.ac, align 8, !tbaa !23 ; 3 uses
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %.lr.ph.split.us.preheader, label %.loopexit

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.bg = sext i32 %. to i64
  %i.bh = zext nneg i32 %i.be to i64
  %i.bi = add i64 %i.bb, -1
  %i.bj = uitofp reassoc nsz arcp contract afn i64 %i.bi to float ; 2 uses
  %wide.trip.count = zext nneg i32 %i.be to i64
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %._crit_edge.us
  %indvars.iv163 = phi i64 [ %indvars.iv161, %.lr.ph.split.us.preheader ], [ %indvars.iv.next164, %._crit_edge.us ] ; 3 uses
  %i.bk = trunc nsw i64 %indvars.iv163 to i32
  %i.bl = sitofp reassoc nsz arcp contract afn i32 %i.bk to float
  %i.bm = load float, ptr %i.aa, align 4, !tbaa !29
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bm, %i.bl ; 3 uses
  %i.bo = fcmp reassoc nsz arcp contract afn ogt float %i.bn, 0.000000e+00
  %i.bp = fcmp reassoc nsz arcp contract afn olt float %i.bn, %i.bj
  %.131.us = select reassoc nsz arcp contract afn i1 %i.bp, float %i.bn, float %i.bj
  %i.bq = select reassoc nsz arcp contract afn i1 %i.bo, float %.131.us, float 0.000000e+00 ; 2 uses
  %i.br = fptosi float %i.bq to i32               ; 2 uses
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = icmp ugt i64 %i.bc, %i.bs
  %i.bu = select i1 %i.bt, i32 %i.br, i32 %i.bd   ; 2 uses
  %i.bv = sitofp reassoc nsz arcp contract afn i32 %i.bu to float
  %i.bw = fsub reassoc nsz arcp contract afn float %i.bq, %i.bv ; 2 uses
  %i.bx = add nsw i32 %i.az, %i.bu
  %i.by = sext i32 %i.bx to i64
  %i.bz = mul nsw i64 %i.i, %i.by
  %i.ca = mul nsw i64 %indvars.iv163, %i.bh
  %i.cb = fmul reassoc nnan nsz arcp contract afn float %i.bw, 1.000000e+02
  %i.cc = fsub reassoc nsz arcp contract afn float 1.000000e+02, %i.cb ; 2 uses
  %i.cd = fmul reassoc nnan nsz arcp contract afn float %i.bw, 1.000000e+02 ; 2 uses
  %i.ce = getelementptr [4 x i8], ptr %i.b, i64 %i.bz
  br label %image_to_relgrid.exit.us

image_to_relgrid.exit.us:                         ; preds = %.lr.ph.split.us, %image_to_relgrid.exit.us
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.us ], [ %indvars.iv.next, %image_to_relgrid.exit.us ] ; 3 uses
  %i.cf = add nsw i64 %i.ca, %indvars.iv
  %.idx = shl nsw i64 %i.cf, 4
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !18
  %i.ci = trunc nuw nsw i64 %indvars.iv to i32
  %i.cj = uitofp nsz nneg i32 %i.ci to float
  %i.ck = load <2 x float>, ptr %i.aa, align 4, !tbaa !18
  %i.cl = insertelement <2 x float> poison, float %i.cj, i64 0
  %i.cm = insertelement <2 x float> %i.cl, float %i.ch, i64 1
  %i.cn = fmul reassoc nsz arcp contract afn <2 x float> %i.ck, %i.cm ; 3 uses
  %i.co = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.cn, zeroinitializer
  %i.cp = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.cn, %i.ag
  %i.cq = select <2 x i1> %i.cp, <2 x float> %i.cn, <2 x float> %i.ag
  %i.cr = select <2 x i1> %i.co, <2 x float> %i.cq, <2 x float> zeroinitializer ; 3 uses
  %i.cs = fptosi <2 x float> %i.cr to <2 x i32>   ; 2 uses
  %i.ct = zext <2 x i32> %i.cs to <2 x i64>
  %i.cu = icmp ugt <2 x i64> %i.ah, %i.ct
  %i.cv = select <2 x i1> %i.cu, <2 x i32> %i.cs, <2 x i32> %i.ai ; 3 uses
  %i.cw = sitofp <2 x i32> %i.cv to <2 x float>   ; 2 uses
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <2 x float> %i.cr, %i.cw
  %i.cx = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 3 uses
  %foldExtExtBinop176 = fsub reassoc nsz arcp contract afn <2 x float> %i.cr, %i.cw ; 2 uses
  %i.cy = extractelement <2 x float> %foldExtExtBinop176, i64 1 ; 4 uses
  %i.cz = extractelement <2 x i32> %i.cv, i64 0
  %i.da = sext i32 %i.cz to i64
  %i.db = mul i64 %i.e, %i.da
  %i.dc = extractelement <2 x i32> %i.cv, i64 1
  %i.dd = sext i32 %i.dc to i64
  %i.de = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.cx ; 2 uses
  %i.df = fmul reassoc nsz arcp contract afn float %i.cc, %i.de
  %i.dg = fmul reassoc nsz arcp contract afn float %i.df, %i.an
  %i.dh = fmul reassoc nsz arcp contract afn float %i.cc, %i.cx
  %i.di = fmul reassoc nsz arcp contract afn float %i.dh, %i.ao ; 2 uses
  %i.dj = fmul reassoc nsz arcp contract afn float %i.cd, %i.de
  %i.dk = fmul reassoc nsz arcp contract afn float %i.dj, %i.ap ; 2 uses
  %i.dl = fmul reassoc nsz arcp contract afn float %i.cd, %i.cx
  %i.dm = fmul reassoc nsz arcp contract afn float %i.dl, %i.aq ; 2 uses
  %i.dn = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.cy ; 4 uses
  %i.do = getelementptr [4 x i8], ptr %i.ce, i64 %i.db
  %i.dp = getelementptr [4 x i8], ptr %i.do, i64 %i.dd ; 8 uses
  %2 = insertelement <2 x float> poison, float %i.dg, i64 0
  %3 = shufflevector <2 x float> %2, <2 x float> poison, <2 x i32> zeroinitializer
  %4 = insertelement <2 x float> %foldExtExtBinop176, float %i.dn, i64 0
  %5 = fmul reassoc nsz arcp contract afn <2 x float> %3, %4
  %6 = load <2 x float>, ptr %i.dp, align 4, !tbaa !18
  %7 = fadd reassoc nsz arcp contract afn <2 x float> %6, %5
  store <2 x float> %7, ptr %i.dp, align 4, !tbaa !18
  %i.dq = fmul reassoc nsz arcp contract afn float %i.di, %i.dn
  %i.dr = getelementptr i8, ptr %i.dp, i64 %i.ak  ; 2 uses
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !18
  %i.dt = fadd reassoc nsz arcp contract afn float %i.ds, %i.dq
  store float %i.dt, ptr %i.dr, align 4, !tbaa !18
  %i.du = fmul reassoc nsz arcp contract afn float %i.di, %i.cy
  %i.dv = getelementptr i8, ptr %i.dp, i64 %i.al  ; 2 uses
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !18
  %i.dx = fadd reassoc nsz arcp contract afn float %i.dw, %i.du
  store float %i.dx, ptr %i.dv, align 4, !tbaa !18
  %i.dy = fmul reassoc nsz arcp contract afn float %i.dk, %i.dn
  %i.dz = getelementptr [4 x i8], ptr %i.dp, i64 %i.i ; 2 uses
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !18
  %i.eb = fadd reassoc nsz arcp contract afn float %i.ea, %i.dy
  store float %i.eb, ptr %i.dz, align 4, !tbaa !18
  %i.ec = fmul reassoc nsz arcp contract afn float %i.dk, %i.cy
  %i.ed = getelementptr [4 x i8], ptr %i.dp, i64 %i.k ; 2 uses
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !18
  %i.ef = fadd reassoc nsz arcp contract afn float %i.ee, %i.ec
  store float %i.ef, ptr %i.ed, align 4, !tbaa !18
  %i.eg = fmul reassoc nsz arcp contract afn float %i.dm, %i.dn
  %i.eh = getelementptr i8, ptr %i.dp, i64 %i.am  ; 2 uses
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !18
  %i.ej = fadd reassoc nsz arcp contract afn float %i.ei, %i.eg
  store float %i.ej, ptr %i.eh, align 4, !tbaa !18
  %i.ek = fmul reassoc nsz arcp contract afn float %i.dm, %i.cy
  %i.el = getelementptr [4 x i8], ptr %i.dp, i64 %i.m ; 2 uses
  %i.em = load float, ptr %i.el, align 4, !tbaa !18
  %i.en = fadd reassoc nsz arcp contract afn float %i.em, %i.ek
  store float %i.en, ptr %i.el, align 4, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %image_to_relgrid.exit.us

._crit_edge.us:                                   ; preds = %image_to_relgrid.exit.us
  %indvars.iv.next164 = add nsw i64 %indvars.iv163, 1 ; 2 uses
  %i.eo = icmp slt i64 %indvars.iv.next164, %i.bg
  br i1 %i.eo, label %.lr.ph.split.us, label %.loopexit

._crit_edge:                                      ; preds = %.loopexit, %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @dt_bilateral_blur(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %blur_line_z.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 64, !tbaa !28  ; 2 uses
  %.not23 = icmp eq ptr %i.b, null
  br i1 %.not23, label %blur_line_z.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 16, !tbaa !19  ; 3 uses
  %i.e = trunc i64 %i.d to i32                    ; 3 uses
  %i.f = load i64, ptr %0, align 64, !tbaa !21    ; 2 uses
  %i.g = mul i64 %i.f, %i.d                       ; 2 uses
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !22
  %i.k = trunc i64 %i.j to i32
  %i.l = trunc i64 %i.f to i32
  tail call fastcc void @blur_line(ptr noundef nonnull %i.b, i32 noundef %i.h, i32 noundef %i.e, i32 noundef %i.e, i32 noundef %i.k, i32 noundef %i.l)
  %i.m = load ptr, ptr %i.a, align 64, !tbaa !28
  %i.n = load i64, ptr %i.c, align 16, !tbaa !19
  %i.o = trunc i64 %i.n to i32
  %i.p = load i64, ptr %0, align 64, !tbaa !21
  %i.q = trunc i64 %i.p to i32
  %i.r = load i64, ptr %i.i, align 8, !tbaa !22
  %i.s = trunc i64 %i.r to i32
  tail call fastcc void @blur_line(ptr noundef %i.m, i32 noundef %i.e, i32 noundef %i.h, i32 noundef %i.o, i32 noundef %i.q, i32 noundef %i.s)
  %i.t = load ptr, ptr %i.a, align 64, !tbaa !28  ; 9 uses
  %i.u = load i64, ptr %0, align 64, !tbaa !21    ; 2 uses
  %i.v = trunc i64 %i.u to i32
  %i.w = load i64, ptr %i.i, align 8, !tbaa !22   ; 2 uses
  %i.x = trunc i64 %i.w to i32                    ; 5 uses
  %i.y = load i64, ptr %i.c, align 16, !tbaa !19  ; 3 uses
  %i.z = trunc i64 %i.y to i32                    ; 2 uses
  %i.aa = icmp sgt i32 %i.v, 0
  br i1 %i.aa, label %.lr.ph.i, label %blur_line_z.exit

.lr.ph.i:                                         ; preds = %bb.c
  %sext = shl i64 %i.d, 32
  %i.ab = ashr exact i64 %sext, 32                ; 2 uses
  %i.ac = icmp sgt i32 %i.x, 0
  %i.ad = sub i64 %i.g, %i.y
  %sext24 = shl i64 %i.ad, 32
  %i.ae = ashr exact i64 %sext24, 32
  %i.af = add nsw i64 %i.ae, 2                    ; 3 uses
  br i1 %i.ac, label %.lr.ph.split.i, label %blur_line_z.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.ag = icmp sgt i32 %i.z, 4
  %wide.trip.count100.i = and i64 %i.u, 2147483647 ; 2 uses
  br i1 %i.ag, label %.lr.ph86.us.preheader.i, label %.lr.ph86.i.preheader

.lr.ph86.i.preheader:                             ; preds = %.lr.ph.split.i
  %xtraiter = and i32 %i.x, 1
  %i.ah = icmp eq i32 %i.x, 1
  %unroll_iter = and i32 %i.x, 2147483646
  %invariant.op = add i64 2, %i.af
  %invariant.op77 = add i64 2, %i.af
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod71 = trunc i64 %i.w to i1
  br label %.lr.ph86.i

.lr.ph86.us.preheader.i:                          ; preds = %.lr.ph.split.i
  %i.ai = add nsw i32 %i.z, -3
  %i.aj = add i64 %i.y, 4294967292                ; 2 uses
  %i.ak = and i64 %i.aj, 4294967295               ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ak, 32
  %n.vec = and i64 %i.aj, 4294967264              ; 4 uses
  %i.al = trunc nuw i64 %n.vec to i32
  %i.am = or disjoint i32 %i.al, 2
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br label %.lr.ph86.us.i

.lr.ph86.us.i:                                    ; preds = %._crit_edge87.split.us.us.i, %.lr.ph86.us.preheader.i
  %indvars.iv97.i = phi i64 [ 0, %.lr.ph86.us.preheader.i ], [ %indvars.iv.next98.i, %._crit_edge87.split.us.us.i ] ; 2 uses
  %i.an = mul nsw i64 %indvars.iv97.i, %i.ab
  br label %.lr.ph.us.us.i

.lr.ph.us.us.i:                                   ; preds = %._crit_edge.us.us.i, %.lr.ph86.us.i
  %.07484.us.us.i = phi i32 [ 0, %.lr.ph86.us.i ], [ %i.ed, %._crit_edge.us.us.i ]
  %.07583.us.us.i = phi i64 [ %i.an, %.lr.ph86.us.i ], [ %i.ec, %._crit_edge.us.us.i ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.07583.us.us.i ; 4 uses
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !18 ; 3 uses
  %i.aq = getelementptr i8, ptr %i.ao, i64 4      ; 2 uses
  %i.ar = load <2 x float>, ptr %i.aq, align 4, !tbaa !18 ; 5 uses
  %i.as = extractelement <2 x float> %i.ar, i64 0
  %i.at = fmul reassoc nsz arcp contract afn float %i.as, 2.500000e-01
  %i.au = extractelement <2 x float> %i.ar, i64 1 ; 2 uses
  %i.av = fmul reassoc nsz arcp contract afn float %i.au, 1.250000e-01
  %i.aw = fadd reassoc nsz arcp contract afn float %i.av, %i.at
  store float %i.aw, ptr %i.ao, align 4, !tbaa !18
  %i.ax = add i64 %.07583.us.us.i, 2              ; 3 uses
  %i.ay = fsub reassoc nsz arcp contract afn float %i.au, %i.ap
  %i.az = fmul reassoc nsz arcp contract afn float %i.ay, 2.500000e-01
  %i.ba = getelementptr i8, ptr %i.ao, i64 12
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !18
  %i.bc = fmul reassoc nsz arcp contract afn float %i.bb, 1.250000e-01
  %i.bd = fadd reassoc nsz arcp contract afn float %i.bc, %i.az
  store float %i.bd, ptr %i.aq, align 4, !tbaa !18
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us.us.i
  %i.be = add i64 %i.ax, %n.vec                   ; 2 uses
  %i.bf = shufflevector <2 x float> %i.ar, <2 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 1>
  %i.bg = shufflevector <2 x float> %i.ar, <2 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0>
  %vector.recur.init51 = insertelement <8 x float> poison, float %i.ap, i64 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <8 x float> [ %i.bf, %vector.ph ], [ %wide.load55, %vector.body ]
  %vector.recur50 = phi <8 x float> [ %i.bg, %vector.ph ], [ %i.bp, %vector.body ]
  %vector.recur52 = phi <8 x float> [ %vector.recur.init51, %vector.ph ], [ %i.bt, %vector.body ]
  %i.bh = add i64 %i.ax, %index                   ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.bh ; 8 uses
  %i.bj = getelementptr [4 x i8], ptr %i.t, i64 %i.bh ; 4 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 4
  %i.bl = getelementptr i8, ptr %i.bj, i64 36
  %i.bm = getelementptr i8, ptr %i.bj, i64 68
  %i.bn = getelementptr i8, ptr %i.bj, i64 100
  %wide.load = load <8 x float>, ptr %i.bk, align 4, !tbaa !18 ; 3 uses
  %wide.load53 = load <8 x float>, ptr %i.bl, align 4, !tbaa !18 ; 4 uses
  %wide.load54 = load <8 x float>, ptr %i.bm, align 4, !tbaa !18 ; 6 uses
  %wide.load55 = load <8 x float>, ptr %i.bn, align 4, !tbaa !18 ; 9 uses
  %i.bo = shufflevector <8 x float> %vector.recur, <8 x float> %wide.load, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 poison>
  %i.bp = shufflevector <8 x float> %wide.load54, <8 x float> %wide.load55, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.bq = shufflevector <8 x float> %vector.recur50, <8 x float> %i.bo, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14> ; 3 uses
  %i.br = shufflevector <8 x float> %wide.load, <8 x float> %wide.load53, <8 x i32> <i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13> ; 2 uses
  %i.bs = shufflevector <8 x float> %wide.load53, <8 x float> %wide.load54, <8 x i32> <i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13>
  %i.bt = shufflevector <8 x float> %wide.load54, <8 x float> %wide.load55, <8 x i32> <i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13> ; 2 uses
  %i.bu = shufflevector <8 x float> %vector.recur52, <8 x float> %i.bq, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.bv = shufflevector <8 x float> %i.bq, <8 x float> %i.br, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.bw = shufflevector <8 x float> %wide.load53, <8 x float> %wide.load54, <8 x i32> <i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12>
  %i.bx = shufflevector <8 x float> %wide.load54, <8 x float> %wide.load55, <8 x i32> <i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12>
  %i.by = fsub reassoc nsz arcp contract afn <8 x float> %wide.load, %i.bq
  %i.bz = fsub reassoc nsz arcp contract afn <8 x float> %wide.load53, %i.br
  %i.ca = fsub reassoc nsz arcp contract afn <8 x float> %wide.load54, %i.bs
  %i.cb = fsub reassoc nsz arcp contract afn <8 x float> %wide.load55, %i.bt
  %i.cc = fmul reassoc nsz arcp contract afn <8 x float> %i.by, splat (float 2.500000e-01)
  %i.cd = fmul reassoc nsz arcp contract afn <8 x float> %i.bz, splat (float 2.500000e-01)
  %i.ce = fmul reassoc nsz arcp contract afn <8 x float> %i.ca, splat (float 2.500000e-01)
  %i.cf = fmul reassoc nsz arcp contract afn <8 x float> %i.cb, splat (float 2.500000e-01)
  %i.cg = getelementptr i8, ptr %i.bi, i64 8
  %i.ch = getelementptr i8, ptr %i.bi, i64 40
  %i.ci = getelementptr i8, ptr %i.bi, i64 72
  %i.cj = getelementptr i8, ptr %i.bi, i64 104
  %wide.load56 = load <8 x float>, ptr %i.cg, align 4, !tbaa !18
  %wide.load57 = load <8 x float>, ptr %i.ch, align 4, !tbaa !18
  %wide.load58 = load <8 x float>, ptr %i.ci, align 4, !tbaa !18
end_hunk_0
