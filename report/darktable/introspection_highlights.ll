inline.NumInlined: 258
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 75
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 96
begin_hunk_0_@tiling_callback:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !281
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  %i.f = load i32, ptr %i.e, align 8, !tbaa !282  ; 2 uses
  %i.g = icmp eq i32 %i.f, 9
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.h, align 4, !tbaa !301
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <4 x float> <float 2.000000e+00, float 2.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %4, align 4, !tbaa !11
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i32 0, ptr %i.k, align 4, !tbaa !303
  store i32 0, ptr %i.i, align 4, !tbaa !304
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !305
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = tail call i32 @dt_iop_piece_is_raster_mask_used(ptr noundef nonnull %1, i32 noundef 0) #33
  %.not48 = icmp eq i32 %i.n, 0
  br i1 %.not48, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load <2 x float>, ptr %4, align 4, !tbaa !11
  %i.p = fadd reassoc nsz arcp contract afn <2 x float> %i.o, splat (float 5.000000e-01)
  store <2 x float> %i.p, ptr %4, align 4, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.q = load i32, ptr %i.b, align 4, !tbaa !279
  %.fr = freeze i32 %i.q
  switch i32 %.fr, label %bb.i [
    i32 3, label %switch.early.test
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 1, label %bb.h
  ]

switch.early.test:                                ; preds = %bb.d
  switch i32 %i.f, label %bb.e [
    i32 9, label %bb.i
    i32 0, label %bb.i
  ]

bb.e:                                             ; preds = %switch.early.test
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.s = load float, ptr %i.r, align 8, !tbaa !306
  %i.t = fmul reassoc nsz arcp contract afn float %i.s, 4.000000e+00
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = load float, ptr %i.u, align 4, !tbaa !262
  %i.w = fdiv reassoc nsz arcp contract afn float %i.t, %i.v
  %i.x = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.w, float 1.000000e+00)
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.z = load i32, ptr %i.y, align 4, !tbaa !307
  %i.aa = shl nuw i32 1, %i.z
  %i.ab = sitofp reassoc nsz arcp contract afn i32 %i.aa to float
  %i.ac = fdiv reassoc nsz arcp contract afn float %i.ab, %i.x
  %i.ad = tail call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.ac)
  %i.ae = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.ad)
  %i.af = fptosi float %i.ae to i32
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.af, i32 1)
  %i.ag = tail call i32 @llvm.umin.i32(i32 %spec.select, i32 12)
  %i.ah = shl nuw nsw i32 1, %i.ag
  %i.ai = load <2 x float>, ptr %4, align 4, !tbaa !11
  %i.aj = fadd reassoc nsz arcp contract afn <2 x float> %i.ai, <float 9.500000e+00, float 1.325000e+01>
  store <2 x float> %i.aj, ptr %4, align 4, !tbaa !11
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !308
  %i.am = sitofp reassoc nsz arcp contract afn i32 %i.al to float
  %i.an = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.am
  store float %i.an, ptr %i.j, align 4, !tbaa !309
  %i.ao = uitofp nneg i32 %i.ah to float
  %i.ap = fmul reassoc nnan nsz arcp contract afn float %i.ao, 3.750000e-01
  %i.aq = fptoui float %i.ap to i32
  store i32 %i.aq, ptr %i.i, align 4, !tbaa !304
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !310
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.au = load i32, ptr %i.at, align 4, !tbaa !308
  %i.av = mul nsw i32 %i.au, %i.as
  %i.aw = sdiv i32 %i.av, 4000
  %i.ax = mul nsw i32 %i.aw, 100
  store i32 %i.ax, ptr %i.k, align 4, !tbaa !303
  %i.ay = load float, ptr %4, align 4, !tbaa !311
  %i.az = fadd reassoc nsz arcp contract afn float %i.ay, 1.000000e+00
  store float %i.az, ptr %4, align 4, !tbaa !311
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.ba = load <2 x float>, ptr %4, align 4, !tbaa !11
  %i.bb = fadd reassoc nsz arcp contract afn <2 x float> %i.ba, splat (float 5.000000e-01)
  store <2 x float> %i.bb, ptr %4, align 4, !tbaa !11
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.bc = select i1 %i.g, i32 2, i32 1
  store i32 %i.bc, ptr %i.i, align 4, !tbaa !304
  br label %bb.i

bb.i:                                             ; preds = %switch.early.test, %switch.early.test, %bb.d, %bb.h, %bb.g, %bb.f, %bb.e
  ret void
}

declare i32 @dt_iop_piece_is_raster_mask_used(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log2.f32(float) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #14

; Function Attrs: nounwind uwtable
define void @process(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 7 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %i.c = alloca ptr, align 8                      ; 9 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %i.f = alloca ptr, align 8                      ; 6 uses
  %i.g = alloca ptr, align 8                      ; 6 uses
  %i.h = alloca ptr, align 8                      ; 8 uses
  %i.i = alloca ptr, align 8                      ; 7 uses
  %6 = alloca %struct.dt_iop_roi_t, align 4       ; 8 uses
  %i.j = alloca [4 x float], align 16             ; 19 uses
  %i.k = alloca [4 x float], align 16             ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !281  ; 15 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 516 ; 3 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !312  ; 16 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 16, !tbaa !265 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.s = load ptr, ptr %i.r, align 16, !tbaa !313 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 628 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !324
  %i.v = icmp eq i32 %i.u, 128
  br i1 %i.v, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not284 = icmp eq i32 %i.o, 0
  br i1 %.not284, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @dt_iop_clip_and_zoom_roi(ptr noundef %3, ptr noundef %2, ptr noundef %5, ptr noundef %4) #33
  br label %.loopexit379

bb.d:                                             ; preds = %bb.b
  tail call void @dt_iop_copy_image_roi(ptr noundef %3, ptr noundef %2, i64 noundef 1, ptr noundef %4, ptr noundef %5) #33
  br label %.loopexit379

bb.e:                                             ; preds = %bb.a
  %i.w = getelementptr i8, ptr %i.m, i64 644      ; 2 uses
  %.val = load i32, ptr %i.w, align 4, !tbaa !325 ; 2 uses
  %i.x = and i32 %.val, 2
  %i.y = and i32 %.val, 256
  %.not = icmp ne i32 %i.y, 0
  %.pre = load i32, ptr %i.q, align 4, !tbaa !279 ; 2 uses
  %i.z = icmp eq i32 %.pre, 4
  %or.cond = select i1 %.not, i1 %i.z, i1 false
  %i.aa = select i1 %or.cond, i32 5, i32 %.pre    ; 5 uses
  %i.ab = icmp eq i32 %i.o, 0                     ; 2 uses
  %i.ac = icmp ne i32 %i.aa, 0
  %i.ad = select i1 %i.ab, i1 %i.ac, i1 false     ; 2 uses
  br i1 %i.ad, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.e
  %i.ae = tail call i32 @dt_iop_piece_is_raster_mask_used(ptr noundef nonnull %1, i32 noundef 0) #33
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !310
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !308
  %i.ak = sext i32 %i.aj to i64
  %i.al = shl nsw i64 %i.ah, 4
  %i.am = mul i64 %i.al, %i.ak
  %i.an = tail call ptr @dt_alloc_aligned(i64 noundef %i.am) #33 ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.an, i64 64) ]
  %i.ao = tail call i32 @dt_iop_piece_is_raster_mask_used(ptr noundef nonnull %1, i32 noundef 0) #33
  %i.ap = icmp eq ptr %i.an, null
  br i1 %i.ap, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @dt_iop_clip_and_zoom_roi(ptr noundef %3, ptr noundef %2, ptr noundef %5, ptr noundef nonnull %4) #33
  tail call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull @.str.7, ptr noundef nonnull %i.m, ptr noundef nonnull %0, i32 noundef -1, ptr noundef nonnull %4, ptr noundef %5, ptr noundef nonnull @.str.8) #33
  tail call void @dt_iop_piece_clear_raster(ptr noundef nonnull %1, ptr noundef null) #33
  br label %.loopexit379

bb.h:                                             ; preds = %.thread, %bb.f
  %i.aq = phi i32 [ %i.ae, %.thread ], [ %i.ao, %bb.f ] ; 2 uses
  %i.ar = phi ptr [ null, %.thread ], [ %i.an, %bb.f ] ; 12 uses
  %i.as = icmp ne ptr %i.s, null
  %i.at = icmp ne i32 %i.x, 0
  %or.cond3 = and i1 %i.as, %i.at                 ; 2 uses
  br i1 %or.cond3, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.av = load i32, ptr %i.au, align 8, !tbaa !326 ; 2 uses
  %.not276 = icmp eq i32 %i.av, 0
  br i1 %.not276, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 128, ptr %i.t, align 4, !tbaa !324
  %i.aw = icmp eq i32 %i.av, 4
  br i1 %i.aw, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %.val288 = load i32, ptr %i.q, align 4, !tbaa !279 ; 2 uses
  %i.ax = getelementptr i8, ptr %i.q, i64 16
  %.val289 = load float, ptr %i.ax, align 4, !tbaa !328 ; 2 uses
  br i1 %i.ad, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @process_visualize(ptr noundef nonnull %1, ptr noundef %2, ptr noundef %i.ar, ptr noundef %4, ptr noundef %4, i32 %.val288, float %.val289)
  tail call void @dt_iop_clip_and_zoom_roi(ptr noundef %3, ptr noundef %i.ar, ptr noundef %5, ptr noundef %4) #33
  tail call void @free(ptr noundef %i.ar) #33
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  tail call fastcc void @process_visualize(ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 %.val288, float %.val289)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  tail call void @dt_iop_piece_clear_raster(ptr noundef nonnull %1, ptr noundef null) #33
  br label %.loopexit379

bb.o:                                             ; preds = %bb.i, %bb.j, %bb.h
  %.val290 = load i32, ptr %i.w, align 4, !tbaa !325
  %i.ay = and i32 %.val290, 8
  %.not277 = icmp eq i32 %i.ay, 0
  br i1 %.not277, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %i.m, i64 544
  %i.ba = load i32, ptr %i.az, align 16, !tbaa !329
  %i.bb = getelementptr inbounds nuw i8, ptr %i.m, i64 548
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !330
  %i.bd = tail call i32 @dt_mipmap_cache_get_matching_size(i32 noundef %i.ba, i32 noundef %i.bc) #33
  %i.be = tail call ptr @dt_conf_get_string_const(ptr noundef nonnull @.str.9) #33
  %i.bf = tail call i32 @dt_mipmap_cache_get_min_mip_from_pref(ptr noundef %i.be) #33
  %i.bg = icmp uge i32 %i.bd, %i.bf
  %i.bh = zext i1 %i.bg to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0264 = phi i32 [ %i.bh, %bb.p ], [ 1, %bb.o ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !328
  %i.bk = zext i32 %i.aa to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr @highlights_clip_magics, i64 %i.bk
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !11
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bm, %i.bj ; 11 uses
  br i1 %i.ab, label %bb.r, label %bb.bf

bb.r:                                             ; preds = %bb.q
  %i.bo = icmp eq i32 %i.aa, 0
  br i1 %i.bo, label %.loopexit.loopexit, label %bb.s

.loopexit.loopexit:                               ; preds = %bb.r
  tail call fastcc void @process_clip(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, float noundef %i.bn)
  %.val291 = load ptr, ptr %i.l, align 8, !tbaa !281 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.val291, i64 272
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !11
  %i.br = getelementptr inbounds nuw i8, ptr %.val291, i64 276
  %i.bs = load float, ptr %i.br, align 4, !tbaa !11
  %i.bt = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.bq, float %i.bs)
  %i.bu = getelementptr inbounds nuw i8, ptr %.val291, i64 280
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !11
  %i.bw = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.bt, float %i.bv)
  %i.bx = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bw, float 1.000000e+00) ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.m, i64 272
  store float %i.bx, ptr %i.by, align 4, !tbaa !11
  %i.bz = getelementptr inbounds nuw i8, ptr %i.m, i64 276
  store float %i.bx, ptr %i.bz, align 4, !tbaa !11
  %i.ca = getelementptr inbounds nuw i8, ptr %i.m, i64 280
  store float %i.bx, ptr %i.ca, align 4, !tbaa !11
  br label %.loopexit

bb.s:                                             ; preds = %bb.r
  %i.cb = load ptr, ptr %i.p, align 16, !tbaa !265
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !328
  %i.ce = fmul reassoc nsz arcp contract afn float %i.cd, f0x3F7CAC08 ; 6 uses
  %i.cf = load ptr, ptr %i.l, align 8, !tbaa !281 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 240
  %i.ch = load i32, ptr %i.cg, align 16, !tbaa !331
  %.not.i = icmp eq i32 %i.ch, 0
  br i1 %.not.i, label %.thread198.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 256
  %i.cj = load float, ptr %i.ci, align 16, !tbaa !11
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 260
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !11
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cf, i64 264
  %i.cn = load float, ptr %i.cm, align 8, !tbaa !11
  %i.co = fmul reassoc nsz arcp contract afn float %i.cj, %i.ce
  %i.cp = fmul reassoc nsz arcp contract afn float %i.cl, %i.ce
  %i.cq = fmul reassoc nsz arcp contract afn float %i.cn, %i.ce
  br label %.thread198.i

.thread198.i:                                     ; preds = %bb.t, %bb.s
  %.sroa.0278.0.i = phi float [ %i.co, %bb.t ], [ %i.ce, %bb.s ] ; 5 uses
  %.sroa.5.0.i = phi float [ %i.cp, %bb.t ], [ %i.ce, %bb.s ] ; 5 uses
  %i.cr = phi float [ %i.cq, %bb.t ], [ %i.ce, %bb.s ] ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !310 ; 2 uses
  %i.cu = sext i32 %i.ct to i64                   ; 9 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !308 ; 2 uses
  %i.cx = sext i32 %i.cw to i64                   ; 6 uses
  %i.cy = udiv i64 %i.cu, 3                       ; 8 uses
  %i.cz = udiv i64 %i.cx, 3                       ; 2 uses
  %i.da = tail call i64 @dt_round_size(i64 noundef %i.cy, i64 noundef 4) #33
  %i.db = tail call i64 @dt_round_size(i64 noundef %i.cz, i64 noundef 4) #33
  %i.dc = mul i64 %i.db, %i.da                    ; 10 uses
  %i.dd = load ptr, ptr %i.p, align 16, !tbaa !265 ; 4 uses
  %i.de = tail call i64 @dt_dev_pixelpipe_piece_hash(ptr noundef nonnull %1, ptr noundef null, i32 noundef 0) #33
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.dg = mul i64 %i.de, 33
  %i.dh = load i8, ptr %i.df, align 1, !tbaa !332
  %i.di = zext i8 %i.dh to i64
  %i.dj = xor i64 %i.dg, %i.di
  %i.dk = mul i64 %i.dj, 33
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dd, i64 17
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !332
  %i.dn = zext i8 %i.dm to i64
  %i.do = xor i64 %i.dk, %i.dn
  %i.dp = mul i64 %i.do, 33
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dd, i64 18
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !332
  %i.ds = zext i8 %i.dr to i64
  %i.dt = xor i64 %i.dp, %i.ds
  %i.du = mul i64 %i.dt, 33
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dd, i64 19
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !332
  %i.dx = zext i8 %i.dw to i64
  %i.dy = xor i64 %i.du, %i.dx
  %i.dz = load ptr, ptr %1, align 16, !tbaa !333
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 664
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !334 ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 2480
  %i.ed = mul i64 %i.dy, 33
  %i.ee = load i8, ptr %i.ec, align 1, !tbaa !332
  %i.ef = zext i8 %i.ee to i64
  %i.eg = xor i64 %i.ed, %i.ef
  %i.eh = mul i64 %i.eg, 33
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eb, i64 2481
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !332
  %i.ek = zext i8 %i.ej to i64
  %i.el = xor i64 %i.eh, %i.ek
  %i.em = mul i64 %i.el, 33
  %i.en = getelementptr inbounds nuw i8, ptr %i.eb, i64 2482
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !332
  %i.ep = zext i8 %i.eo to i64
  %i.eq = xor i64 %i.em, %i.ep
  %i.er = mul i64 %i.eq, 33
  %i.es = getelementptr inbounds nuw i8, ptr %i.eb, i64 2483
  %i.et = load i8, ptr %i.es, align 1, !tbaa !332
  %i.eu = zext i8 %i.et to i64
  %i.ev = xor i64 %i.er, %i.eu                    ; 2 uses
  %i.ew = load i64, ptr @img_opphash, align 8, !tbaa !335
  %i.ex = icmp eq i64 %i.ev, %i.ew
  br i1 %i.ex, label %.preheader204.preheader.i, label %bb.v

.preheader204.preheader.i:                        ; preds = %.thread198.i
  %.sroa.0262.0.copyload264.i = load float, ptr @img_oppchroma, align 16, !tbaa !11
  %.sroa.8.0.copyload265.i = load float, ptr getelementptr inbounds nuw (i8, ptr @img_oppchroma, i64 4), align 4, !tbaa !11
  %.sroa.11.0.copyload267.i = load float, ptr getelementptr inbounds nuw (i8, ptr @img_oppchroma, i64 8), align 8, !tbaa !11
  %i.ey = load i32, ptr @img_oppclipped, align 4, !tbaa !22
  %.not197.i = icmp eq i32 %i.ey, 0
  br i1 %.not197.i, label %bb.u, label %.thread199.i

bb.u:                                             ; preds = %.preheader204.preheader.i
  %i.ez = shl nsw i64 %i.cu, 2
  %i.fa = mul i64 %i.ez, %i.cx
  tail call void @dt_iop_image_copy(ptr noundef %i.ar, ptr noundef %2, i64 noundef %i.fa) #33
  br label %_process_linear_opposed.exit

bb.v:                                             ; preds = %.thread198.i
  %.not190.i = icmp eq i32 %.0264, 0
  br i1 %.not190.i, label %.thread199.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fb = mul i64 %i.dc, 6                        ; 2 uses
  %i.fc = tail call ptr @dt_alloc_aligned(i64 noundef %i.fb) #33 ; 12 uses
  %.not.i.i = icmp eq ptr %i.fc, null
  br i1 %.not.i.i, label %.thread199.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.memset.p0.i64(ptr nonnull align 64 %i.fc, i8 0, i64 %i.fb, i1 false)
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fc, i64 64) ]
  %i.fd = add nsw i64 %i.cx, -1                   ; 2 uses
  %.not237.i = icmp eq i64 %i.fd, 0
  br i1 %.not237.i, label %._crit_edge220.thread.i, label %.preheader211.lr.ph.i

.preheader211.lr.ph.i:                            ; preds = %bb.x
  %i.fe = add nsw i64 %i.cu, -1                   ; 2 uses
  %.not238.i = icmp eq i64 %i.fe, 0
  br i1 %.not238.i, label %._crit_edge220.thread.i, label %.preheader211.us.preheader.i

.preheader211.us.preheader.i:                     ; preds = %.preheader211.lr.ph.i
  %i.ff = shl i64 %i.dc, 1                        ; 2 uses
  br label %.preheader211.us.i

.preheader211.us.i:                               ; preds = %._crit_edge.us.i, %.preheader211.us.preheader.i
  %.0162219.us.i = phi i32 [ %.3.us.2.i, %._crit_edge.us.i ], [ 0, %.preheader211.us.preheader.i ]
  %.0167218.us.i = phi i64 [ %i.fz, %._crit_edge.us.i ], [ 0, %.preheader211.us.preheader.i ] ; 3 uses
  %i.fg = mul i64 %.0167218.us.i, %i.cu
  %i.fh = udiv i64 %.0167218.us.i, 3
  %i.fi = mul i64 %i.fh, %i.cy
  %invariant.gep.us.i = getelementptr i8, ptr %i.fc, i64 %i.fi
  br label %bb.y

bb.y:                                             ; preds = %bb.ah, %.preheader211.us.i
  %.1217.us.i = phi i32 [ %.0162219.us.i, %.preheader211.us.i ], [ %.3.us.2.i, %bb.ah ] ; 2 uses
  %.0169216.us.i = phi i64 [ 0, %.preheader211.us.i ], [ %i.fy, %bb.ah ] ; 3 uses
  %i.fj = add i64 %.0169216.us.i, %i.fg
  %i.fk = udiv i64 %.0169216.us.i, 3
  %.idx196.us.i = shl i64 %i.fj, 4
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 %.idx196.us.i ; 3 uses
  %invariant.gep212.us.i = getelementptr i8, ptr %invariant.gep.us.i, i64 %i.fk ; 4 uses
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !11 ; 3 uses
  %i.fn = fcmp reassoc nsz arcp contract afn ult float %i.fm, %.sroa.0278.0.i
  br i1 %i.fn, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fo = load i8, ptr %invariant.gep212.us.i, align 1, !tbaa !332
  %i.fp = icmp eq i8 %i.fo, 0
  br i1 %i.fp, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i8 1, ptr %invariant.gep212.us.i, align 1, !tbaa !332
  %.pre.i = load float, ptr %i.fl, align 4, !tbaa !11
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %i.fq = phi float [ %.pre.i, %bb.aa ], [ %i.fm, %bb.z ], [ %i.fm, %bb.y ] ; 3 uses
  %.3.us.i = phi i32 [ 1, %bb.aa ], [ %.1217.us.i, %bb.z ], [ %.1217.us.i, %bb.y ] ; 2 uses
  %i.fr = fcmp reassoc nsz arcp contract afn ult float %i.fq, %.sroa.5.0.i
  br i1 %i.fr, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %gep213.us.1.i = getelementptr i8, ptr %invariant.gep212.us.i, i64 %i.dc ; 2 uses
  %i.fs = load i8, ptr %gep213.us.1.i, align 1, !tbaa !332
  %i.ft = icmp eq i8 %i.fs, 0
  br i1 %i.ft, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i8 1, ptr %gep213.us.1.i, align 1, !tbaa !332
  %.pre288.i = load float, ptr %i.fl, align 4, !tbaa !11
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.fu = phi float [ %.pre288.i, %bb.ad ], [ %i.fq, %bb.ac ], [ %i.fq, %bb.ab ]
  %.3.us.1.i = phi i32 [ 1, %bb.ad ], [ %.3.us.i, %bb.ac ], [ %.3.us.i, %bb.ab ] ; 2 uses
  %i.fv = fcmp reassoc nsz arcp contract afn ult float %i.fu, %i.cr
  br i1 %i.fv, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %gep213.us.2.i = getelementptr i8, ptr %invariant.gep212.us.i, i64 %i.ff ; 2 uses
  %i.fw = load i8, ptr %gep213.us.2.i, align 1, !tbaa !332
  %i.fx = icmp eq i8 %i.fw, 0
  br i1 %i.fx, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i8 1, ptr %gep213.us.2.i, align 1, !tbaa !332
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  %.3.us.2.i = phi i32 [ 1, %bb.ag ], [ %.3.us.1.i, %bb.af ], [ %.3.us.1.i, %bb.ae ] ; 3 uses
  %i.fy = add nuw i64 %.0169216.us.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.fy, %i.fe
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %bb.y

._crit_edge.us.i:                                 ; preds = %bb.ah
  %i.fz = add nuw i64 %.0167218.us.i, 1           ; 2 uses
  %exitcond242.not.i = icmp eq i64 %i.fz, %i.fd
  br i1 %exitcond242.not.i, label %._crit_edge220.i, label %.preheader211.us.i

._crit_edge220.i:                                 ; preds = %._crit_edge.us.i
  %i.ga = icmp eq i32 %.3.us.2.i, 0
  br i1 %i.ga, label %._crit_edge220.thread.i, label %.preheader210.i

.preheader210.i:                                  ; preds = %._crit_edge220.i
  %i.gb = add nsw i64 %i.cz, -3                   ; 2 uses
  %i.gc = icmp ugt i64 %i.gb, 3
  br i1 %i.gc, label %.preheader209.lr.ph.i, label %.preheader208.i

.preheader209.lr.ph.i:                            ; preds = %.preheader210.i
  %i.gd = add nsw i64 %i.cy, -3                   ; 2 uses
  %i.ge = icmp ugt i64 %i.gd, 3
  %i.gf = mul i64 %i.dc, 3
  %i.gg = getelementptr i8, ptr %i.fc, i64 %i.gf
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.dc
  %i.gi = shl i64 %i.dc, 2
  %i.gj = getelementptr i8, ptr %i.fc, i64 %i.gi
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.ff
  %i.gl = mul i64 %i.dc, 5
  %i.gm = getelementptr i8, ptr %i.fc, i64 %i.gl
  br i1 %i.ge, label %.preheader209.i, label %.preheader208.i

.preheader209.i:                                  ; preds = %.preheader209.lr.ph.i, %._crit_edge.i
  %.0174223.i = phi i64 [ %i.gy, %._crit_edge.i ], [ 3, %.preheader209.lr.ph.i ] ; 2 uses
  %i.gn = mul i64 %.0174223.i, %i.cy
  br label %bb.ai

.preheader208.i:                                  ; preds = %._crit_edge.i, %.preheader209.lr.ph.i, %.preheader210.i
  %i.go = add nsw i64 %i.cx, -3                   ; 2 uses
  %i.gp = icmp ugt i64 %i.go, 3
  br i1 %i.gp, label %.preheader207.lr.ph.i, label %.thread338.i
end_hunk_0
begin_hunk_1_@process:bb.a
  %i.hh = tail call fastcc signext i8 @_mask_dilated(ptr noundef %i.hg, i64 noundef %i.cy)
  %i.hi = getelementptr i8, ptr %i.gm, i64 %i.gz
  store i8 %i.hh, ptr %i.hi, align 1, !tbaa !332
  %i.hj = add nuw i64 %.0173222.i, 1              ; 2 uses
  %exitcond243.not.i = icmp eq i64 %i.hj, %i.gd
  br i1 %exitcond243.not.i, label %._crit_edge.i, label %bb.ai

.preheader207.i:                                  ; preds = %._crit_edge228.i, %.preheader207.preheader.i
  %.sroa.0255.0.i = phi nsz float [ 0.000000e+00, %.preheader207.preheader.i ], [ %.sroa.0255.3.i, %._crit_edge228.i ]
  %.sroa.6257.0.i = phi nsz float [ 0.000000e+00, %.preheader207.preheader.i ], [ %.sroa.6257.3.i, %._crit_edge228.i ]
  %.sroa.9259.0.i = phi nsz float [ 0.000000e+00, %.preheader207.preheader.i ], [ %.sroa.9259.3.i, %._crit_edge228.i ]
  %.sroa.0.0.i = phi nsz float [ 0.000000e+00, %.preheader207.preheader.i ], [ %.sroa.0.3.i, %._crit_edge228.i ]
  %.sroa.6.0.i = phi nsz float [ 0.000000e+00, %.preheader207.preheader.i ], [ %.sroa.6.3.i, %._crit_edge228.i ]
  %.sroa.9.0.i = phi nsz float [ 0.000000e+00, %.preheader207.preheader.i ], [ %.sroa.9.3.i, %._crit_edge228.i ]
  %.0171229.i = phi i64 [ 3, %.preheader207.preheader.i ], [ %i.hu, %._crit_edge228.i ] ; 3 uses
  %i.hk = mul i64 %.0171229.i, %i.cu
  %i.hl = udiv i64 %.0171229.i, 3
  %i.hm = mul i64 %i.hl, %i.cy
  %invariant.gep.i = getelementptr i8, ptr %i.fc, i64 %i.hm
  br label %bb.aj

.preheader206.i:                                  ; preds = %._crit_edge228.i
  %i.hn = fcmp reassoc nsz arcp contract afn ogt float %.sroa.0.3.i, 3.000000e+01
  %i.ho = fdiv reassoc nsz arcp contract afn float %.sroa.0255.3.i, %.sroa.0.3.i
  %i.hp = select reassoc nsz arcp contract afn i1 %i.hn, float %i.ho, float 0.000000e+00 ; 2 uses
  %i.hq = fcmp reassoc nsz arcp contract afn ogt float %.sroa.6.3.i, 3.000000e+01
  %i.hr = fdiv reassoc nsz arcp contract afn float %.sroa.6257.3.i, %.sroa.6.3.i
  %i.hs = select reassoc nsz arcp contract afn i1 %i.hq, float %i.hr, float 0.000000e+00 ; 2 uses
  %i.ht = fcmp reassoc nsz arcp contract afn ogt float %.sroa.9.3.i, 3.000000e+01
  br i1 %i.ht, label %bb.at, label %.thread338.i

._crit_edge228.i:                                 ; preds = %bb.as
  %i.hu = add nuw i64 %.0171229.i, 1              ; 2 uses
  %exitcond247.not.i = icmp eq i64 %i.hu, %i.go
  br i1 %exitcond247.not.i, label %.preheader206.i, label %.preheader207.i

bb.aj:                                            ; preds = %bb.as, %.preheader207.i
  %.sroa.0255.2.i = phi nsz float [ %.sroa.0255.0.i, %.preheader207.i ], [ %.sroa.0255.3.i, %bb.as ] ; 3 uses
  %.sroa.6257.2.i = phi nsz float [ %.sroa.6257.0.i, %.preheader207.i ], [ %.sroa.6257.3.i, %bb.as ] ; 3 uses
  %.sroa.9259.2.i = phi nsz float [ %.sroa.9259.0.i, %.preheader207.i ], [ %.sroa.9259.3.i, %bb.as ] ; 3 uses
  %.sroa.0.2.i = phi nsz float [ %.sroa.0.0.i, %.preheader207.i ], [ %.sroa.0.3.i, %bb.as ] ; 3 uses
  %.sroa.6.2.i = phi nsz float [ %.sroa.6.0.i, %.preheader207.i ], [ %.sroa.6.3.i, %bb.as ] ; 3 uses
  %.sroa.9.2.i = phi nsz float [ %.sroa.9.0.i, %.preheader207.i ], [ %.sroa.9.3.i, %bb.as ] ; 3 uses
  %.0170227.i = phi i64 [ 3, %.preheader207.i ], [ %i.ju, %bb.as ] ; 3 uses
  %i.hv = add i64 %.0170227.i, %i.hk
  %.idx203.i = shl i64 %i.hv, 4
  %i.hw = getelementptr inbounds nuw i8, ptr %2, i64 %.idx203.i ; 3 uses
  %i.hx = udiv i64 %.0170227.i, 3
  %invariant.gep225.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.hx ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 4 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 8 ; 3 uses
  %i.ia = load float, ptr %i.hw, align 4, !tbaa !11 ; 5 uses
  %i.ib = fcmp reassoc nsz arcp contract afn ogt float %i.ia, %i.gs
  %i.ic = fcmp reassoc nsz arcp contract afn olt float %i.ia, %.sroa.0278.0.i
  %or.cond.i = and i1 %i.ic, %i.ib
  br i1 %or.cond.i, label %bb.ak, label %._crit_edge289.i

._crit_edge289.i:                                 ; preds = %bb.aj
  %.pre290.i = load float, ptr %i.hy, align 4, !tbaa !11
  br label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %gep226.i = getelementptr i8, ptr %invariant.gep225.i, i64 %i.gt
  %i.id = load i8, ptr %gep226.i, align 1, !tbaa !332
  %.not195.i = icmp eq i8 %i.id, 0
  %.pre291.i = load float, ptr %i.hy, align 4, !tbaa !11 ; 3 uses
  br i1 %.not195.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ie = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.pre291.i, float 0.000000e+00)
  %i.if = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.ie) #35
  %i.ig = load float, ptr %i.hz, align 4, !tbaa !11
  %i.ih = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ig, float 0.000000e+00)
  %i.ii = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.ih) #35
  %i.ij = fadd reassoc nsz arcp contract afn float %i.ii, %i.if
  %i.ik = fmul reassoc nsz arcp contract afn float %i.ij, 5.000000e-01 ; 3 uses
  %i.il = fmul reassoc nsz arcp contract afn float %i.ik, %i.ik
  %i.im = fadd reassoc nsz arcp contract afn float %i.ia, %.sroa.0255.2.i
  %i.in = fmul reassoc nsz arcp contract afn float %i.ik, %i.il
  %i.io = fsub reassoc nsz arcp contract afn float %i.im, %i.in
  %i.ip = fadd reassoc nsz arcp contract afn float %.sroa.0.2.i, 1.000000e+00
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %._crit_edge289.i
  %i.iq = phi float [ %.pre291.i, %bb.ak ], [ %.pre291.i, %bb.al ], [ %.pre290.i, %._crit_edge289.i ] ; 4 uses
  %.sroa.0255.3.i = phi nsz float [ %.sroa.0255.2.i, %bb.ak ], [ %i.io, %bb.al ], [ %.sroa.0255.2.i, %._crit_edge289.i ] ; 3 uses
  %.sroa.0.3.i = phi nsz float [ %.sroa.0.2.i, %bb.ak ], [ %i.ip, %bb.al ], [ %.sroa.0.2.i, %._crit_edge289.i ] ; 4 uses
  %i.ir = fcmp reassoc nsz arcp contract afn ogt float %i.iq, %i.gu
  %i.is = fcmp reassoc nsz arcp contract afn olt float %i.iq, %.sroa.5.0.i
  %or.cond.1.i = and i1 %i.is, %i.ir
  br i1 %or.cond.1.i, label %bb.an, label %._crit_edge292.i

._crit_edge292.i:                                 ; preds = %bb.am
  %.pre293.i = load float, ptr %i.hz, align 4, !tbaa !11
  br label %bb.ap

bb.an:                                            ; preds = %bb.am
  %gep226.1.i = getelementptr i8, ptr %invariant.gep225.i, i64 %i.gv
  %i.it = load i8, ptr %gep226.1.i, align 1, !tbaa !332
  %.not195.1.i = icmp eq i8 %i.it, 0
  %.pre294.i = load float, ptr %i.hz, align 4, !tbaa !11 ; 3 uses
  br i1 %.not195.1.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.iu = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ia, float 0.000000e+00)
  %i.iv = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.iu) #35
  %i.iw = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.pre294.i, float 0.000000e+00)
  %i.ix = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.iw) #35
  %i.iy = fadd reassoc nsz arcp contract afn float %i.ix, %i.iv
  %i.iz = fmul reassoc nsz arcp contract afn float %i.iy, 5.000000e-01 ; 3 uses
  %i.ja = fmul reassoc nsz arcp contract afn float %i.iz, %i.iz
  %i.jb = fadd reassoc nsz arcp contract afn float %i.iq, %.sroa.6257.2.i
  %i.jc = fmul reassoc nsz arcp contract afn float %i.iz, %i.ja
  %i.jd = fsub reassoc nsz arcp contract afn float %i.jb, %i.jc
  %i.je = fadd reassoc nsz arcp contract afn float %.sroa.6.2.i, 1.000000e+00
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %._crit_edge292.i
  %i.jf = phi float [ %.pre294.i, %bb.an ], [ %.pre294.i, %bb.ao ], [ %.pre293.i, %._crit_edge292.i ] ; 3 uses
  %.sroa.6257.3.i = phi nsz float [ %.sroa.6257.2.i, %bb.an ], [ %i.jd, %bb.ao ], [ %.sroa.6257.2.i, %._crit_edge292.i ] ; 3 uses
  %.sroa.6.3.i = phi nsz float [ %.sroa.6.2.i, %bb.an ], [ %i.je, %bb.ao ], [ %.sroa.6.2.i, %._crit_edge292.i ] ; 4 uses
  %i.jg = fcmp reassoc nsz arcp contract afn ogt float %i.jf, %i.gw
  %i.jh = fcmp reassoc nsz arcp contract afn olt float %i.jf, %i.cr
  %or.cond.2.i = and i1 %i.jh, %i.jg
  br i1 %or.cond.2.i, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %gep226.2.i = getelementptr i8, ptr %invariant.gep225.i, i64 %i.gx
  %i.ji = load i8, ptr %gep226.2.i, align 1, !tbaa !332
  %.not195.2.i = icmp eq i8 %i.ji, 0
  br i1 %.not195.2.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.jj = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ia, float 0.000000e+00)
  %i.jk = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.jj) #35
  %i.jl = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.iq, float 0.000000e+00)
  %i.jm = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.jl) #35
  %i.jn = fadd reassoc nsz arcp contract afn float %i.jm, %i.jk
  %i.jo = fmul reassoc nsz arcp contract afn float %i.jn, 5.000000e-01 ; 3 uses
  %i.jp = fmul reassoc nsz arcp contract afn float %i.jo, %i.jo
  %i.jq = fadd reassoc nsz arcp contract afn float %i.jf, %.sroa.9259.2.i
  %i.jr = fmul reassoc nsz arcp contract afn float %i.jo, %i.jp
  %i.js = fsub reassoc nsz arcp contract afn float %i.jq, %i.jr
  %i.jt = fadd reassoc nsz arcp contract afn float %.sroa.9.2.i, 1.000000e+00
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  %.sroa.9259.3.i = phi nsz float [ %.sroa.9259.2.i, %bb.aq ], [ %i.js, %bb.ar ], [ %.sroa.9259.2.i, %bb.ap ] ; 3 uses
  %.sroa.9.3.i = phi nsz float [ %.sroa.9.2.i, %bb.aq ], [ %i.jt, %bb.ar ], [ %.sroa.9.2.i, %bb.ap ] ; 4 uses
  %i.ju = add nuw i64 %.0170227.i, 1              ; 2 uses
  %exitcond246.not.i = icmp eq i64 %i.ju, %i.gq
  br i1 %exitcond246.not.i, label %._crit_edge228.i, label %bb.aj

.preheader205.preheader.i:                        ; preds = %.thread338.i
  store float %i.jx, ptr @img_oppchroma, align 16, !tbaa !11
  store float %i.jw, ptr getelementptr inbounds nuw (i8, ptr @img_oppchroma, i64 4), align 4, !tbaa !11
  store float %i.jy, ptr getelementptr inbounds nuw (i8, ptr @img_oppchroma, i64 8), align 8, !tbaa !11
  store i64 %i.ev, ptr @img_opphash, align 8, !tbaa !335
  store i32 1, ptr @img_oppclipped, align 4, !tbaa !22
  br label %bb.au

bb.at:                                            ; preds = %.preheader206.i
  %i.jv = fdiv reassoc nsz arcp contract afn float %.sroa.9259.3.i, %.sroa.9.3.i
  br label %.thread338.i

.thread338.i:                                     ; preds = %bb.at, %.preheader206.i, %.preheader207.lr.ph.i, %.preheader208.i
  %i.jw = phi float [ %i.hs, %bb.at ], [ %i.hs, %.preheader206.i ], [ 0.000000e+00, %.preheader208.i ], [ 0.000000e+00, %.preheader207.lr.ph.i ] ; 4 uses
  %i.jx = phi float [ %i.hp, %bb.at ], [ %i.hp, %.preheader206.i ], [ 0.000000e+00, %.preheader208.i ], [ 0.000000e+00, %.preheader207.lr.ph.i ] ; 4 uses
  %i.jy = phi reassoc nsz arcp contract afn float [ %i.jv, %bb.at ], [ 0.000000e+00, %.preheader206.i ], [ 0.000000e+00, %.preheader208.i ], [ 0.000000e+00, %.preheader207.lr.ph.i ] ; 4 uses
  %i.jz = load ptr, ptr %i.l, align 8, !tbaa !281 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 644
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !325
  %i.kc = icmp eq i32 %i.kb, 2                    ; 2 uses
  br i1 %i.kc, label %.preheader205.preheader.i, label %bb.au

bb.au:                                            ; preds = %.thread338.i, %.preheader205.preheader.i
  %i.kd = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !336
  %i.ke = and i32 %i.kd, 33554432
  %.not193.i = icmp eq i32 %i.ke, 0
  br i1 %.not193.i, label %._crit_edge220.thread.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.kf = fpext reassoc nsz arcp contract afn float %i.jx to double
  %i.kg = fpext reassoc nsz arcp contract afn float %i.jw to double
  %i.kh = fpext reassoc nsz arcp contract afn float %i.jy to double
  %i.ki = select i1 %i.kc, ptr @.str.115, ptr @.str.116
  %i.kj = load i32, ptr @img_oppclipped, align 4, !tbaa !22
  %.not194.i = icmp eq i32 %i.kj, 0
  %i.kk = select i1 %.not194.i, ptr @.str.117, ptr @.str.116
  tail call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull @.str.113, ptr noundef nonnull %i.jz, ptr noundef %0, i32 noundef -1, ptr noundef %4, ptr noundef null, ptr noundef nonnull @.str.114, double noundef %i.kf, double noundef %i.kg, double noundef %i.kh, ptr noundef nonnull %i.ki, ptr noundef nonnull %i.kk) #33
  br label %._crit_edge220.thread.i

._crit_edge220.thread.i:                          ; preds = %bb.av, %bb.au, %._crit_edge220.i, %.preheader211.lr.ph.i, %bb.x
  %.sroa.0262.0.i = phi nsz float [ 0.000000e+00, %._crit_edge220.i ], [ %i.jx, %bb.au ], [ %i.jx, %bb.av ], [ 0.000000e+00, %bb.x ], [ 0.000000e+00, %.preheader211.lr.ph.i ]
  %.sroa.8.0.i = phi nsz float [ 0.000000e+00, %._crit_edge220.i ], [ %i.jw, %bb.au ], [ %i.jw, %bb.av ], [ 0.000000e+00, %bb.x ], [ 0.000000e+00, %.preheader211.lr.ph.i ]
  %.sroa.11.0.i = phi nsz float [ 0.000000e+00, %._crit_edge220.i ], [ %i.jy, %bb.au ], [ %i.jy, %bb.av ], [ 0.000000e+00, %bb.x ], [ 0.000000e+00, %.preheader211.lr.ph.i ]
  tail call void @free(ptr noundef %i.fc) #33
  br label %.thread199.i

.thread199.i:                                     ; preds = %._crit_edge220.thread.i, %bb.w, %bb.v, %.preheader204.preheader.i
  %.sroa.0262.1.i = phi nsz float [ %.sroa.0262.0.copyload264.i, %.preheader204.preheader.i ], [ 0.000000e+00, %bb.v ], [ 0.000000e+00, %bb.w ], [ %.sroa.0262.0.i, %._crit_edge220.thread.i ] ; 2 uses
  %.sroa.8.1.i = phi nsz float [ %.sroa.8.0.copyload265.i, %.preheader204.preheader.i ], [ 0.000000e+00, %bb.v ], [ 0.000000e+00, %bb.w ], [ %.sroa.8.0.i, %._crit_edge220.thread.i ] ; 2 uses
  %.sroa.11.1.i = phi nsz float [ %.sroa.11.0.copyload267.i, %.preheader204.preheader.i ], [ 0.000000e+00, %bb.v ], [ 0.000000e+00, %bb.w ], [ %.sroa.11.0.i, %._crit_edge220.thread.i ] ; 2 uses
  %.not239.i = icmp eq i32 %i.cw, 0
  %.not240.i = icmp eq i32 %i.ct, 0
  %or.cond341.i = or i1 %.not240.i, %.not239.i
  br i1 %or.cond341.i, label %_process_linear_opposed.exit, label %.preheader.lver.check.i

.preheader.lver.check.i:                          ; preds = %.thread199.i
  %flatten.mul.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.cx, i64 %i.cu) ; 2 uses
  %flatten.overflow.i = extractvalue { i64, i1 } %flatten.mul.i, 1
  br i1 %flatten.overflow.i, label %.preheader.i.a, label %.preheader.preheader.i

.preheader.i.a:                                   ; preds = %.preheader.lver.check.i, %._crit_edge235.i.a
  %.0164236.i.a = phi i64 [ %i.km, %._crit_edge235.i.a ], [ 0, %.preheader.lver.check.i ] ; 2 uses
  %i.kl = mul i64 %.0164236.i.a, %i.cu
  br label %7

7:                                                ; preds = %71, %.preheader.i.a
  %.0163234.lver.orig.i.lver.orig = phi i64 [ 0, %.preheader.i.a ], [ %74, %71 ] ; 2 uses
  %8 = add i64 %.0163234.lver.orig.i.lver.orig, %i.kl
  %9 = shl i64 %8, 2                              ; 4 uses
  %10 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %9 ; 5 uses
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %12 = load float, ptr %10, align 4, !tbaa !11
  %13 = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %12, float 0.000000e+00) ; 3 uses
  %14 = fcmp reassoc nsz arcp contract afn ult float %13, %.sroa.0278.0.i
  br i1 %14, label %29, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds nuw i8, ptr %10, i64 4
  %17 = load <2 x float>, ptr %16, align 4, !tbaa !11
  %18 = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %17, <2 x float> zeroinitializer) ; 2 uses
  %19 = extractelement <2 x float> %18, i64 1
  %20 = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %19) #35
  %21 = extractelement <2 x float> %18, i64 0
  %22 = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %21) #35
  %23 = fadd reassoc nsz arcp contract afn float %22, %20
  %24 = fmul reassoc nsz arcp contract afn float %23, 5.000000e-01 ; 3 uses
  %25 = fmul reassoc nsz arcp contract afn float %24, %24
  %26 = fmul reassoc nsz arcp contract afn float %25, %24
  %27 = fadd reassoc nsz arcp contract afn float %26, %.sroa.0262.1.i
  %28 = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %13, float %27)
  br label %29

29:                                               ; preds = %15, %7
  %30 = phi reassoc nsz arcp contract afn float [ %28, %15 ], [ %13, %7 ]
  %31 = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %9
  store float %30, ptr %31, align 16, !tbaa !11
  %32 = or disjoint i64 %9, 1                     ; 2 uses
  %33 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %32
  %34 = load float, ptr %33, align 4, !tbaa !11
  %35 = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %34, float 0.000000e+00) ; 3 uses
  %36 = fcmp reassoc nsz arcp contract afn ult float %35, %.sroa.5.0.i
  br i1 %36, label %50, label %37

37:                                               ; preds = %29
  %38 = load float, ptr %11, align 4, !tbaa !11
  %39 = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %38, float 0.000000e+00)
  %40 = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %39) #35
  %41 = load float, ptr %10, align 4, !tbaa !11
  %42 = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %41, float 0.000000e+00)
  %43 = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %42) #35
  %44 = fadd reassoc nsz arcp contract afn float %43, %40
  %45 = fmul reassoc nsz arcp contract afn float %44, 5.000000e-01 ; 3 uses
  %46 = fmul reassoc nsz arcp contract afn float %45, %45
  %47 = fmul reassoc nsz arcp contract afn float %46, %45
  %48 = fadd reassoc nsz arcp contract afn float %47, %.sroa.8.1.i
  %49 = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %35, float %48)
  br label %50

50:                                               ; preds = %37, %29
  %51 = phi reassoc nsz arcp contract afn float [ %49, %37 ], [ %35, %29 ]
  %52 = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %32
  store float %51, ptr %52, align 4, !tbaa !11
  %53 = or disjoint i64 %9, 2                     ; 2 uses
  %54 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %53
  %55 = load float, ptr %54, align 4, !tbaa !11
  %56 = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %55, float 0.000000e+00) ; 3 uses
  %57 = fcmp reassoc nsz arcp contract afn ult float %56, %i.cr
  br i1 %57, label %71, label %58

58:                                               ; preds = %50
  %59 = load <2 x float>, ptr %10, align 4, !tbaa !11
  %60 = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %59, <2 x float> zeroinitializer) ; 2 uses
  %61 = extractelement <2 x float> %60, i64 1
  %62 = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %61) #35
  %63 = extractelement <2 x float> %60, i64 0
  %64 = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %63) #35
  %65 = fadd reassoc nsz arcp contract afn float %64, %62
  %66 = fmul reassoc nsz arcp contract afn float %65, 5.000000e-01 ; 3 uses
  %67 = fmul reassoc nsz arcp contract afn float %66, %66
  %68 = fmul reassoc nsz arcp contract afn float %67, %66
  %69 = fadd reassoc nsz arcp contract afn float %68, %.sroa.11.1.i
  %70 = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %56, float %69)
  br label %71

71:                                               ; preds = %58, %50
  %72 = phi reassoc nsz arcp contract afn float [ %70, %58 ], [ %56, %50 ]
  %73 = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %53
  store float %72, ptr %73, align 8, !tbaa !11
  %74 = add nuw i64 %.0163234.lver.orig.i.lver.orig, 1 ; 2 uses
  %exitcond254.not.i.lver.orig = icmp eq i64 %74, %i.cu
  br i1 %exitcond254.not.i.lver.orig, label %._crit_edge235.i.a, label %7

._crit_edge235.i.a:                               ; preds = %71
  %i.km = add nuw i64 %.0164236.i.a, 1            ; 2 uses
  %exitcond251.not.i = icmp eq i64 %i.km, %i.cx
  br i1 %exitcond251.not.i, label %_process_linear_opposed.exit, label %.preheader.i.a

.preheader.preheader.i:                           ; preds = %.preheader.lver.check.i
  %flatten.tripcount.i = extractvalue { i64, i1 } %flatten.mul.i, 0
  %umax.i = tail call i64 @llvm.umax.i64(i64 %flatten.tripcount.i, i64 1)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.bc, %.preheader.preheader.i
  %.0163234.i = phi i64 [ %i.mu, %bb.bc ], [ 0, %.preheader.preheader.i ] ; 2 uses
  %i.kn = shl i64 %.0163234.i, 2                  ; 4 uses
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.kn ; 5 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %i.kq = load float, ptr %i.ko, align 4, !tbaa !11
  %i.kr = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.kq, float 0.000000e+00) ; 3 uses
  %i.ks = fcmp reassoc nsz arcp contract afn ult float %i.kr, %.sroa.0278.0.i
  br i1 %i.ks, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ko, i64 4
  %i.ku = load <2 x float>, ptr %i.kt, align 4, !tbaa !11
  %i.kv = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ku, <2 x float> zeroinitializer) ; 2 uses
  %i.kw = extractelement <2 x float> %i.kv, i64 1
  %i.kx = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.kw) #35
  %i.ky = extractelement <2 x float> %i.kv, i64 0
  %i.kz = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.ky) #35
  %i.la = fadd reassoc nsz arcp contract afn float %i.kz, %i.kx
  %i.lb = fmul reassoc nsz arcp contract afn float %i.la, 5.000000e-01 ; 3 uses
  %i.lc = fmul reassoc nsz arcp contract afn float %i.lb, %i.lb
  %i.ld = fmul reassoc nsz arcp contract afn float %i.lc, %i.lb
  %i.le = fadd reassoc nsz arcp contract afn float %i.ld, %.sroa.0262.1.i
  %i.lf = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.kr, float %i.le)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.lg = phi reassoc nsz arcp contract afn float [ %i.lf, %bb.ax ], [ %i.kr, %bb.aw ]
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.kn
  store float %i.lg, ptr %i.lh, align 16, !tbaa !11
  %i.li = or disjoint i64 %i.kn, 1                ; 2 uses
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.li
  %i.lk = load float, ptr %i.lj, align 4, !tbaa !11
  %i.ll = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.lk, float 0.000000e+00) ; 3 uses
  %i.lm = fcmp reassoc nsz arcp contract afn ult float %i.ll, %.sroa.5.0.i
  br i1 %i.lm, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ln = load float, ptr %i.kp, align 4, !tbaa !11
  %i.lo = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ln, float 0.000000e+00)
  %i.lp = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.lo) #35
  %i.lq = load float, ptr %i.ko, align 4, !tbaa !11
  %i.lr = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.lq, float 0.000000e+00)
  %i.ls = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.lr) #35
  %i.lt = fadd reassoc nsz arcp contract afn float %i.ls, %i.lp
  %i.lu = fmul reassoc nsz arcp contract afn float %i.lt, 5.000000e-01 ; 3 uses
  %i.lv = fmul reassoc nsz arcp contract afn float %i.lu, %i.lu
  %i.lw = fmul reassoc nsz arcp contract afn float %i.lv, %i.lu
  %i.lx = fadd reassoc nsz arcp contract afn float %i.lw, %.sroa.8.1.i
  %i.ly = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ll, float %i.lx)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.lz = phi reassoc nsz arcp contract afn float [ %i.ly, %bb.az ], [ %i.ll, %bb.ay ]
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.li
  store float %i.lz, ptr %i.ma, align 4, !tbaa !11
  %i.mb = or disjoint i64 %i.kn, 2                ; 2 uses
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.mb
  %i.md = load float, ptr %i.mc, align 4, !tbaa !11
  %i.me = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.md, float 0.000000e+00) ; 3 uses
  %i.mf = fcmp reassoc nsz arcp contract afn ult float %i.me, %i.cr
  br i1 %i.mf, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.mg = load <2 x float>, ptr %i.ko, align 4, !tbaa !11
  %i.mh = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.mg, <2 x float> zeroinitializer) ; 2 uses
  %i.mi = extractelement <2 x float> %i.mh, i64 1
  %i.mj = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.mi) #35
  %i.mk = extractelement <2 x float> %i.mh, i64 0
  %i.ml = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.mk) #35
  %i.mm = fadd reassoc nsz arcp contract afn float %i.ml, %i.mj
  %i.mn = fmul reassoc nsz arcp contract afn float %i.mm, 5.000000e-01 ; 3 uses
  %i.mo = fmul reassoc nsz arcp contract afn float %i.mn, %i.mn
  %i.mp = fmul reassoc nsz arcp contract afn float %i.mo, %i.mn
  %i.mq = fadd reassoc nsz arcp contract afn float %i.mp, %.sroa.11.1.i
  %i.mr = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.me, float %i.mq)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.ms = phi reassoc nsz arcp contract afn float [ %i.mr, %bb.bb ], [ %i.me, %bb.ba ]
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.mb
  store float %i.ms, ptr %i.mt, align 8, !tbaa !11
  %i.mu = add nuw i64 %.0163234.i, 1              ; 2 uses
  %exitcond250.not.i = icmp eq i64 %i.mu, %umax.i
  br i1 %exitcond250.not.i, label %_process_linear_opposed.exit, label %bb.aw

_process_linear_opposed.exit:                     ; preds = %bb.bc, %._crit_edge235.i.a, %bb.u, %.thread199.i
  tail call void @dt_iop_clip_and_zoom_roi(ptr noundef %3, ptr noundef %i.ar, ptr noundef %5, ptr noundef %4) #33
  tail call void @free(ptr noundef %i.ar) #33
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_process_linear_opposed.exit
  %.not282 = icmp eq i32 %i.aq, 0
  br i1 %.not282, label %.thread361, label %bb.bd

bb.bd:                                            ; preds = %.loopexit
  %i.mv = tail call fastcc ptr @_provide_raster_mask(ptr noundef %4, ptr noundef %5, ptr noundef %3, float noundef %i.bn, ptr noundef %1) ; 2 uses
  %.not283 = icmp eq ptr %i.mv, null
  br i1 %.not283, label %.thread361, label %bb.be

bb.be:                                            ; preds = %bb.bd
  tail call void @dt_iop_piece_set_raster(ptr noundef %1, ptr noundef nonnull %i.mv, ptr noundef %4, ptr noundef %5) #33
  br label %.loopexit379

.thread361:                                       ; preds = %.loopexit, %bb.bd
  tail call void @dt_iop_piece_clear_raster(ptr noundef %1, ptr noundef null) #33
  br label %.loopexit379

bb.bf:                                            ; preds = %bb.q
  switch i32 %i.aa, label %bb.ft [
    i32 2, label %bb.bg
    i32 1, label %bb.ee
    i32 4, label %bb.eh
    i32 0, label %bb.em
    i32 3, label %bb.en
  ]

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #33
  %i.mw = getelementptr inbounds nuw i8, ptr %i.m, i64 272
  %i.mx = getelementptr inbounds nuw i8, ptr %i.m, i64 280
  %i.my = load float, ptr %i.mx, align 8, !tbaa !11
  %i.mz = load <2 x float>, ptr %i.mw, align 16, !tbaa !11
  %i.na = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.my, i64 2
  %i.nb = shufflevector <2 x float> %i.mz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.nc = shufflevector <4 x float> %i.nb, <4 x float> %i.na, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.nd = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.bn, i64 0
  %i.ne = shufflevector <4 x float> %i.nd, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.nf = fmul reassoc nsz arcp contract afn <4 x float> %i.nc, %i.ne
  store <4 x float> %i.nf, ptr %i.j, align 16, !tbaa !11
  %i.ng = icmp eq i32 %i.o, 9
  br i1 %i.ng, label %bb.bh, label %.preheader383

.preheader383:                                    ; preds = %bb.bg
  %i.nh = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !308 ; 9 uses
  %i.nj = icmp sgt i32 %i.ni, 0
  %i.nk = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !310 ; 11 uses
  br i1 %i.nj, label %.lr.ph393, label %.preheader381

.lr.ph393:                                        ; preds = %.preheader383
  %i.nm = sext i32 %i.nl to i64
  %.not141182.i = icmp eq i32 %i.nl, 0
  %i.nn = add nsw i32 %i.nl, -1                   ; 5 uses
  %i.no = sext i32 %i.nn to i64                   ; 2 uses
  %i.np = getelementptr inbounds [4 x i8], ptr %3, i64 %i.no
  %i.nq = getelementptr inbounds [4 x i8], ptr %2, i64 %i.no
  %i.nr = add i32 %i.nl, -2
  %i.ns = icmp eq i32 %i.nn, 0
  br i1 %.not141182.i, label %.loopexit380.a, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph393
  %i.nt = add nsw i32 %i.ni, -1
  %i.nu = zext nneg i32 %i.nt to i64
  %wide.trip.count = zext nneg i32 %i.ni to i64
  %.not141.i.peel = icmp eq i32 %i.nl, 1
  %.not608 = icmp eq i32 %i.nl, 2
  %i.nv = add i32 %i.nl, -2
  br label %.lr.ph.i

bb.bh:                                            ; preds = %bb.bg
  %i.nw = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 4 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !308
  %i.nz = icmp sgt i32 %i.ny, 0
  br i1 %i.nz, label %.lr.ph400, label %.preheader

.preheader:                                       ; preds = %.lr.ph400, %bb.bh
  %i.oa = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !310
  %i.oc = icmp sgt i32 %i.ob, 0
  br i1 %i.oc, label %.lr.ph402, label %.loopexit380.a

.lr.ph400:                                        ; preds = %bb.bh, %.lr.ph400
  %.0266399 = phi i32 [ %i.od, %.lr.ph400 ], [ 0, %bb.bh ] ; 3 uses
  call fastcc void @interpolate_color_xtrans(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5, i32 noundef 0, i32 noundef 1, i32 noundef %.0266399, ptr noundef %i.j, ptr noundef nonnull %i.nw, i32 noundef 0)
  call fastcc void @interpolate_color_xtrans(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5, i32 noundef 0, i32 noundef -1, i32 noundef %.0266399, ptr noundef %i.j, ptr noundef nonnull %i.nw, i32 noundef 1)
  %i.od = add nuw nsw i32 %.0266399, 1            ; 2 uses
  %i.oe = load i32, ptr %i.nx, align 4, !tbaa !308
  %i.of = icmp slt i32 %i.od, %i.oe
  br i1 %i.of, label %.lr.ph400, label %.preheader

.lr.ph402:                                        ; preds = %.preheader, %.lr.ph402
  %.0269401 = phi i32 [ %i.og, %.lr.ph402 ], [ 0, %.preheader ] ; 3 uses
  call fastcc void @interpolate_color_xtrans(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 1, i32 noundef %.0269401, ptr noundef %i.j, ptr noundef nonnull %i.nw, i32 noundef 2)
  call fastcc void @interpolate_color_xtrans(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5, i32 noundef 1, i32 noundef -1, i32 noundef %.0269401, ptr noundef %i.j, ptr noundef nonnull %i.nw, i32 noundef 3)
  %i.og = add nuw nsw i32 %.0269401, 1            ; 2 uses
  %i.oh = load i32, ptr %i.oa, align 4, !tbaa !310
  %i.oi = icmp slt i32 %i.og, %i.oh
  br i1 %i.oi, label %.lr.ph402, label %.loopexit380.a

.preheader381:                                    ; preds = %interpolate_color.exit314.loopexit, %.preheader383
  %i.oj = icmp sgt i32 %i.nl, 0
  br i1 %i.oj, label %.lr.ph398, label %.loopexit380.a

.lr.ph398:                                        ; preds = %.preheader381
  %i.ok = zext nneg i32 %i.nl to i64              ; 11 uses
  %.not141182.i315 = icmp eq i32 %i.ni, 0
  %i.ol = add nsw i32 %i.ni, -1                   ; 3 uses
  %i.om = sub nsw i64 0, %i.ok                    ; 4 uses
  %i.on = sext i32 %i.ol to i64
  %i.oo = mul nsw i64 %i.ok, %i.on                ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %2, i64 %i.oo
  br i1 %.not141182.i315, label %.loopexit380.a, label %.lr.ph.i316.preheader

.lr.ph.i316.preheader:                            ; preds = %.lr.ph398
  %i.op = add nsw i32 %i.nl, -1
  %i.oq = zext nneg i32 %i.op to i64              ; 2 uses
  %.not141.i330.peel = icmp eq i32 %i.ni, 1
  %.not141.i350.peel = icmp eq i32 %i.ol, 0
  %i.or = add nsw i32 %i.ni, -2
  %.not609 = icmp eq i32 %i.ni, 2
  %i.os = add i32 %i.ni, -2
  br label %.lr.ph.i316

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %interpolate_color.exit314.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next, %interpolate_color.exit314.loopexit ] ; 5 uses
  %i.ot = mul nsw i64 %indvars.iv, %i.nm          ; 4 uses
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.ou = shl i32 %indvars.iv.tr, 1
  %i.ov = and i32 %i.ou, 14                       ; 4 uses
  %i.ow = icmp eq i64 %indvars.iv, 0              ; 2 uses
  %i.ox = icmp eq i64 %indvars.iv, %i.nu
  %.fr = freeze i1 %i.ox                          ; 2 uses
  %i.oy = or i1 %.fr, %i.ow
  br i1 %i.oy, label %interpolate_color.exit, label %.lr.ph.i.split.preheader

.lr.ph.i.split.preheader:                         ; preds = %.lr.ph.i
  br i1 %.not141.i.peel, label %interpolate_color.exit314.loopexit, label %.lr.ph.i.split.preheader513

.lr.ph.i.split.preheader513:                      ; preds = %.lr.ph.i.split.preheader
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ot ; 2 uses
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ot ; 2 uses
  br i1 %.not608, label %.lr.ph.i.split.peel, label %.lr.ph.i.split

.lr.ph.i.split:                                   ; preds = %.lr.ph.i.split.preheader513, %bb.bt
  %.0120188.i = phi float [ %.1.i, %bb.bt ], [ 1.000000e+00, %.lr.ph.i.split.preheader513 ] ; 3 uses
  %.1122187.i.pn = phi ptr [ %.1122187.i, %bb.bt ], [ %i.pa, %.lr.ph.i.split.preheader513 ] ; 3 uses
  %.0123186.i = phi i32 [ %i.ql, %bb.bt ], [ 1, %.lr.ph.i.split.preheader513 ] ; 3 uses
  %.1134183.i.pn = phi ptr [ %.1134183.i, %bb.bt ], [ %i.oz, %.lr.ph.i.split.preheader513 ]
  %.1134183.i = getelementptr inbounds nuw i8, ptr %.1134183.i.pn, i64 4 ; 3 uses
  %.1122187.i = getelementptr inbounds nuw i8, ptr %.1122187.i.pn, i64 4 ; 3 uses
  %i.pb = and i32 %.0123186.i, 1                  ; 3 uses
  %.tr.i.i = or disjoint i32 %i.pb, %i.ov
  %i.pc = shl nuw nsw i32 %.tr.i.i, 1             ; 2 uses
  %i.pd = lshr i32 %i.o, %i.pc
  %i.pe = and i32 %i.pd, 3
  %i.pf = zext nneg i32 %i.pe to i64
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.pf
  %i.ph = load float, ptr %i.pg, align 4, !tbaa !11 ; 3 uses
  %i.pi = xor i32 %i.pc, 2
  %i.pj = lshr i32 %i.o, %i.pi
  %i.pk = and i32 %i.pj, 3
  %i.pl = zext nneg i32 %i.pk to i64
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.pl
  %i.pn = load float, ptr %i.pm, align 4, !tbaa !11 ; 3 uses
  %i.po = load float, ptr %.1122187.i, align 4, !tbaa !11 ; 5 uses
  %i.pp = fcmp reassoc nsz arcp contract afn olt float %i.po, %i.ph
  %i.pq = fcmp reassoc nsz arcp contract afn ogt float %i.po, f0x3727C5AC
  %or.cond144.i = and i1 %i.pp, %i.pq
  br i1 %or.cond144.i, label %bb.bi, label %bb.bm

bb.bi:                                            ; preds = %.lr.ph.i.split
  %i.pr = getelementptr inbounds nuw i8, ptr %.1122187.i.pn, i64 8
  %i.ps = load float, ptr %i.pr, align 4, !tbaa !11 ; 4 uses
  %i.pt = fcmp reassoc nsz arcp contract afn olt float %i.ps, %i.pn
  %i.pu = fcmp reassoc nsz arcp contract afn ogt float %i.ps, f0x3727C5AC
  %or.cond145.i = and i1 %i.pt, %i.pu
  br i1 %or.cond145.i, label %bb.bj, label %bb.bm

bb.bj:                                            ; preds = %bb.bi
  %.not.i294 = icmp eq i32 %i.pb, 0
  %i.pv = fmul reassoc nsz arcp contract afn float %.0120188.i, 3.000000e+00 ; 2 uses
  br i1 %.not.i294, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.pw = fdiv reassoc nsz arcp contract afn float %i.po, %i.ps
  %i.px = fadd reassoc nsz arcp contract afn float %i.pw, %i.pv
  %i.py = fmul reassoc nsz arcp contract afn float %i.px, 2.500000e-01
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  %i.pz = fdiv reassoc nsz arcp contract afn float %i.ps, %i.po
  %i.qa = fadd reassoc nsz arcp contract afn float %i.pz, %i.pv
  %i.qb = fmul reassoc nsz arcp contract afn float %i.qa, 2.500000e-01
  br label %bb.bm
end_hunk_1
begin_hunk_2_@wavelets_process:bb.a
  %i.aaq = load <2 x float>, ptr %scevgep225.i, align 16, !tbaa !11, !alias.scope !630, !noalias !640
  %i.aar = load <2 x float>, ptr %scevgep227.i, align 16, !tbaa !11, !alias.scope !630, !noalias !640
  %i.aas = load <2 x float>, ptr %scevgep228.i, align 16, !tbaa !11, !alias.scope !630, !noalias !640
  %i.aat = load <2 x float>, ptr %scevgep230.i, align 16, !tbaa !11, !alias.scope !630, !noalias !640
  %i.aau = fmul reassoc nsz arcp contract afn <2 x float> %i.aap, splat (float -3.000000e+00)
  %i.aav = fmul reassoc nsz arcp contract afn <2 x float> %i.aak, splat (float f0x3EA0DE4A)
  %i.aaw = fadd reassoc nsz arcp contract afn <2 x float> %i.aao, %i.aam
  %i.aax = fadd reassoc nsz arcp contract afn <2 x float> %i.aaw, %i.aaq
  %i.aay = fadd reassoc nsz arcp contract afn <2 x float> %i.aax, %i.aas
  %i.aaz = fmul reassoc nsz arcp contract afn <2 x float> %i.aay, splat (float 5.000000e-01)
  %i.aba = fadd reassoc nsz arcp contract afn <2 x float> %i.aan, %i.aal
  %i.abb = fadd reassoc nsz arcp contract afn <2 x float> %i.aba, %i.aar
  %i.abc = fadd reassoc nsz arcp contract afn <2 x float> %i.abb, %i.aat
  %i.abd = fmul reassoc nsz arcp contract afn <2 x float> %i.abc, splat (float 2.500000e-01)
  %i.abe = fsub reassoc nsz arcp contract afn <2 x float> %i.aau, %i.aaj
  %i.abf = fadd reassoc nsz arcp contract afn <2 x float> %i.abe, %i.aaz
  %i.abg = fadd reassoc nsz arcp contract afn <2 x float> %i.abf, %i.abd
  %i.abh = fmul reassoc nsz arcp contract afn <2 x float> %i.aav, %i.abg
  %i.abi = fadd reassoc nsz arcp contract afn <2 x float> %i.abh, %i.zi
  %i.abj = fmul reassoc nsz arcp contract afn float %i.zp, f0x3EA0DE4A
  %reass.add98 = fadd reassoc nsz arcp contract afn float %.sroa.20.48.copyload.i, %.sroa.10.16.copyload.i
  %reass.add99 = fadd reassoc nsz arcp contract afn float %reass.add98, %.sroa.30.80.copyload.i
  %reass.add100 = fadd reassoc nsz arcp contract afn float %reass.add99, %.sroa.40.112.copyload.i
  %reass.mul101 = fmul reassoc nsz arcp contract afn float %reass.add100, 5.000000e-01
  %reass.add102 = fadd reassoc nsz arcp contract afn float %.sroa.15.32.copyload.i, %.sroa.5.0.copyload.i
  %reass.add103 = fadd reassoc nsz arcp contract afn float %reass.add102, %.sroa.35.96.copyload.i
  %reass.add104 = fadd reassoc nsz arcp contract afn float %reass.add103, %.sroa.45.128.copyload.i
  %reass.mul105 = fmul reassoc nsz arcp contract afn float %reass.add104, 2.500000e-01
  %i.abk = fmul reassoc nsz arcp contract afn float %12, %i.zk
  %i.abl = fsub reassoc nsz arcp contract afn float %i.aai, %i.abk
  %i.abm = fadd reassoc nsz arcp contract afn float %i.abl, %reass.mul101
  %i.abn = fadd reassoc nsz arcp contract afn float %i.abm, %reass.mul105
  %i.abo = fmul reassoc nsz arcp contract afn float %i.abj, %i.abn
  %i.abp = fadd reassoc nsz arcp contract afn float %i.abo, %i.zk
  br label %bb.z

bb.z:                                             ; preds = %.preheader.i, %.lr.ph.i76
  %.sroa.11277.0.i = phi nsz float [ %i.abp, %.preheader.i ], [ %i.zk, %.lr.ph.i76 ] ; 2 uses
  %i.abq = phi <2 x float> [ %i.abi, %.preheader.i ], [ %i.zi, %.lr.ph.i76 ] ; 2 uses
  br i1 %.not145.not, label %.preheader199.i, label %.preheader197.i

.preheader199.i:                                  ; preds = %bb.z
  store <2 x float> %i.abq, ptr %scevgep232.i, align 16, !tbaa !11, !alias.scope !637, !noalias !641
  %.sroa.11277.0.scevgep232.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep232.i, i64 8
  store float %.sroa.11277.0.i, ptr %.sroa.11277.0.scevgep232.sroa_idx.i, align 8, !tbaa !11, !alias.scope !637, !noalias !641
  %.sroa.15279.0.scevgep232.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep232.i, i64 12
  store float %i.zm, ptr %.sroa.15279.0.scevgep232.sroa_idx.i, align 4, !tbaa !11, !alias.scope !637, !noalias !641
  br label %.loopexit198.i

.preheader197.i:                                  ; preds = %bb.z
  %i.abr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.zc ; 2 uses
  %i.abs = load <4 x float>, ptr %i.abr, align 16, !tbaa !11, !alias.scope !637, !noalias !641
  %i.abt = shufflevector <2 x float> %i.abq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.abu = insertelement <4 x float> %i.abt, float %.sroa.11277.0.i, i64 2
  %i.abv = insertelement <4 x float> %i.abu, float %i.zm, i64 3
  %i.abw = fadd reassoc nsz arcp contract afn <4 x float> %i.abs, %i.abv
  store <4 x float> %i.abw, ptr %i.abr, align 16, !tbaa !11, !alias.scope !637, !noalias !641
  br label %.loopexit198.i

.loopexit198.i:                                   ; preds = %.preheader197.i, %.preheader199.i
  br i1 %.not81, label %.preheader196.preheader.i, label %.loopexit.i77

.preheader196.preheader.i:                        ; preds = %.loopexit198.i
  %i.abx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.zc ; 4 uses
  %i.aby = getelementptr inbounds nuw [4 x i8], ptr %.054, i64 %i.zc
  %i.abz = load <2 x float>, ptr %i.abx, align 16, !tbaa !11, !alias.scope !637, !noalias !641
  %i.aca = load <2 x float>, ptr %i.aby, align 16, !tbaa !11, !alias.scope !633, !noalias !642
  %i.acb = fadd reassoc nsz arcp contract afn <2 x float> %i.aca, %i.abz
  %i.acc = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.acb, <2 x float> zeroinitializer) ; 6 uses
  %i.acd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.zd
  %i.ace = getelementptr inbounds nuw [4 x i8], ptr %.054, i64 %i.zd
  %i.acf = load <2 x float>, ptr %i.acd, align 8, !tbaa !11, !alias.scope !637, !noalias !641
  %i.acg = load <2 x float>, ptr %i.ace, align 8, !tbaa !11, !alias.scope !633, !noalias !642
  %i.ach = fadd reassoc nsz arcp contract afn <2 x float> %i.acg, %i.acf ; 2 uses
  %i.aci = extractelement <2 x float> %i.ach, i64 0
  %i.acj = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.aci, float 0.000000e+00) ; 4 uses
  %i.ack = extractelement <2 x float> %i.ach, i64 1
  %i.acl = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ack, float 0.000000e+00) ; 3 uses
  br i1 %i.zn, label %.loopexit195.loopexit.i, label %.loopexit.loopexit.i

.loopexit195.loopexit.i:                          ; preds = %.preheader196.preheader.i
  %foldExtExtBinop51 = fmul reassoc nsz arcp contract afn <2 x float> %i.acc, %i.acc
  %foldExtExtBinop53 = fmul reassoc nsz arcp contract afn <2 x float> %i.acc, %i.acc
  %shift55 = shufflevector <2 x float> %foldExtExtBinop53, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop56 = fadd reassoc nsz arcp contract afn <2 x float> %shift55, %foldExtExtBinop51
  %i.acm = extractelement <2 x float> %foldExtExtBinop56, i64 0
  %i.acn = fmul reassoc nsz arcp contract afn float %i.acj, %i.acj
  %i.aco = fadd reassoc nsz arcp contract afn float %i.acm, %i.acn
  %i.acp = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.aco) ; 2 uses
  %i.acq = fcmp reassoc nsz arcp contract afn ogt float %i.acp, f0x38D1B717
  %i.acr = select reassoc nsz arcp contract afn i1 %i.acq, float %i.acp, float 1.000000e+00 ; 2 uses
  %i.acs = insertelement <2 x float> poison, float %i.acr, i64 0
  %i.act = shufflevector <2 x float> %i.acs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.acu = fdiv reassoc nsz arcp contract afn <2 x float> %i.acc, %i.act
  %i.acv = fdiv reassoc nsz arcp contract afn float %i.acj, %i.acr
  br label %.loopexit.loopexit.i

.loopexit.loopexit.i:                             ; preds = %.loopexit195.loopexit.i, %.preheader196.preheader.i
  %i.acw = phi float [ %i.acv, %.loopexit195.loopexit.i ], [ %i.acj, %.preheader196.preheader.i ]
  %i.acx = phi <2 x float> [ %i.acu, %.loopexit195.loopexit.i ], [ %i.acc, %.preheader196.preheader.i ]
  %i.acy = insertelement <2 x float> poison, float %i.acl, i64 0
  %i.acz = shufflevector <2 x float> %i.acy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ada = fmul reassoc nsz arcp contract afn <2 x float> %i.acx, %i.acz
  store <2 x float> %i.ada, ptr %i.abx, align 16, !tbaa !11, !alias.scope !637, !noalias !641
  %i.adb = fmul reassoc nsz arcp contract afn float %i.acw, %i.acl
  %i.adc = getelementptr inbounds nuw i8, ptr %i.abx, i64 8
  store float %i.adb, ptr %i.adc, align 8, !tbaa !11, !alias.scope !637, !noalias !641
  %i.add = getelementptr inbounds nuw i8, ptr %i.abx, i64 12
  store float %i.acl, ptr %i.add, align 4, !tbaa !11, !alias.scope !637, !noalias !641
  br label %.loopexit.i77

.loopexit.i77:                                    ; preds = %.loopexit.loopexit.i, %.loopexit198.i
  %i.ade = add nuw nsw i64 %.0179211.i, 1         ; 2 uses
  %exitcond.not.i78 = icmp eq i64 %i.ade, %3
  br i1 %exitcond.not.i78, label %._crit_edge.i79, label %.lr.ph.i76

guide_laplacians.exit:                            ; preds = %._crit_edge.i79, %._crit_edge.i65, %bb.t, %bb.j
  %i.adf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3096), align 8, !tbaa !421
  %.not56 = icmp eq ptr %i.adf, null
  br i1 %.not56, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %guide_laplacians.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  %i.adg = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(1) @.str.125, i32 noundef %.0118) #33 ; 0 uses
  call void @dt_dump_pfm(ptr noundef nonnull %i.e, ptr noundef %.053, i32 noundef %i.ag, i32 noundef %i.l, i32 noundef 16, ptr noundef nonnull @.str.123) #33
  %i.adh = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(1) @.str.126, i32 noundef %.0118) #33 ; 0 uses
  call void @dt_dump_pfm(ptr noundef nonnull %i.e, ptr noundef %.054, i32 noundef %i.ag, i32 noundef %i.l, i32 noundef 16, ptr noundef nonnull @.str.123) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %guide_laplacians.exit
  %i.adi = add nuw nsw i32 %.0118, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.adi, %5
  br i1 %exitcond.not, label %bb.b, label %bb.c
}

declare void @dt_dump_pfm(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #14

; Function Attrs: inlinehint nofree nosync nounwind memory(none) uwtable
define internal fastcc float @equivalent_sigma_at_step(i32 noundef %0) unnamed_addr #27 {
bb.a:
  %i.a = icmp eq i32 %0, 0
  br i1 %i.a, label %common.ret1, label %bb.b

common.ret1:                                      ; preds = %bb.a, %bb.b
  %common.ret1.op = phi float [ %i.j, %bb.b ], [ f0x3F871634, %bb.a ]
  ret float %common.ret1.op

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %0, -1
  %i.c = tail call fastcc float @equivalent_sigma_at_step(i32 noundef %i.b) ; 2 uses
  %i.d = fmul reassoc nsz arcp contract afn float %i.c, %i.c
  %i.e = uitofp reassoc nsz arcp contract afn i32 %0 to float
  %i.f = tail call reassoc nnan nsz arcp contract afn float @llvm.exp2.f32(float %i.e)
  %i.g = fmul reassoc nnan nsz arcp contract afn float %i.f, f0x3F871634 ; 2 uses
  %i.h = fmul reassoc nsz arcp contract afn float %i.g, %i.g
  %i.i = fadd reassoc nsz arcp contract afn float %i.d, %i.h
  %i.j = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.i)
  br label %common.ret1
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp2.f32(float) #14

declare i32 @dt_bauhaus_widget_get_quad_active(ptr noundef) local_unnamed_addr #3

declare void @dt_bauhaus_widget_set_quad_paint(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_bauhaus_widget_set_quad_toggle(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @g_signal_connect_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_bauhaus_widget_set_quad_tooltip(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gtk_label_new(ptr noundef) local_unnamed_addr #3

declare void @g_object_set(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.sincos.f32(float) #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v8i32.p0(<8 x i32>, ptr captures(none), <8 x i1>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <8 x i32> @llvm.masked.load.v8i32.p0(ptr captures(none), <8 x i1>, <8 x i32>) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.and.v8i32(<8 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.and.v4i32(<4 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.and.v24i32(<24 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.and.v32i32(<32 x i32>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <9 x i32> @llvm.masked.load.v9i32.p0(ptr captures(none), <9 x i1>, <9 x i32>) #31

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr>, <4 x i1>, <4 x i32>) #32

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <7 x i32> @llvm.masked.load.v7i32.p0(ptr captures(none), <7 x i1>, <7 x i32>) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v8i32(<8 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v24i32(<24 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v32i32(<32 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v56i32(<56 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v16i32(<16 x i32>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <11 x i32> @llvm.masked.load.v11i32.p0(ptr captures(none), <11 x i1>, <11 x i32>) #31

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <13 x i32> @llvm.masked.load.v13i32.p0(ptr captures(none), <13 x i1>, <13 x i32>) #31

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <15 x i32> @llvm.masked.load.v15i32.p0(ptr captures(none), <15 x i1>, <15 x i32>) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <8 x float> @llvm.masked.load.v8f32.p0(ptr captures(none), <8 x i1>, <8 x float>) #31

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.sqrt.v8f32(<8 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.maxnum.v8f32(<8 x float>, <8 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x float> @llvm.maxnum.v32f32(<32 x float>, <32 x float>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr>, <8 x i1>, <8 x i32>) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.minnum.v8f32(<8 x float>, <8 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.minnum.v4f32(<4 x float>, <4 x float>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x float> @llvm.masked.load.v4f32.p0(ptr captures(none), <4 x i1>, <4 x float>) #31

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v8f32.p0(<8 x float>, ptr captures(none), <8 x i1>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v4f32.p0(<4 x float>, ptr captures(none), <4 x i1>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v16f32(float, <16 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.or.v4i8(<4 x i8>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.floor.v8f32(<8 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.log.v2f32(<2 x float>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <13 x float> @llvm.masked.load.v13f32.p0(ptr captures(none), <13 x i1>, <13 x float>) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #23 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #24 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #25 = { inlinehint nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #26 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #27 = { inlinehint nofree nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #28 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #29 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #33 = { nounwind }
attributes #34 = { nounwind allocsize(0) }
attributes #35 = { nounwind willreturn memory(none) }
attributes #36 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"float", !9, i64 0}
!13 = !{!14, !8, i64 40}
!14 = !{!"dt_iop_highlights_params_v4_t", !8, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !8, i64 24, !8, i64 28, !12, i64 32, !12, i64 36, !8, i64 40, !12, i64 44}
!15 = !{!14, !8, i64 24}
!16 = !{!14, !8, i64 28}
!17 = !{!14, !12, i64 20}
!18 = !{!14, !12, i64 44}
!19 = !{!14, !12, i64 12}
!20 = !{!21, !21, i64 0}
end_hunk_2
