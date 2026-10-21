Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_ashift?download=true
inline.NumInlined: 378
inline.NumDeleted: 101
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 77
begin_hunk_0_@_do_get_structure_auto:bb.a
  tail call void @free(ptr noundef %i.bdi) #34
  tail call void @free(ptr noundef %i.bdh) #34
  br label %_remove_outliers.exit.thread

.lr.ph18.i:                                       ; preds = %.lr.ph18.i, %.lr.ph18.preheader.i.new
  %indvars.iv32.i = phi i64 [ 0, %.lr.ph18.preheader.i.new ], [ %indvars.iv.next33.i.3, %.lr.ph18.i ] ; 6 uses
  %.09515.i = phi i32 [ 0, %.lr.ph18.preheader.i.new ], [ %.1.i.3, %.lr.ph18.i ]
  %niter272 = phi i64 [ 0, %.lr.ph18.preheader.i.new ], [ %niter272.next.3, %.lr.ph18.i ]
  %i.bje = getelementptr inbounds nuw [4 x i8], ptr %i.bdh, i64 %indvars.iv32.i
  %i.bjf = load i32, ptr %i.bje, align 4, !tbaa !17
  %i.bjg = getelementptr inbounds nuw [4 x i8], ptr %i.bdi, i64 %indvars.iv32.i
  %i.bjh = load i32, ptr %i.bjg, align 4, !tbaa !17
  %i.bji = icmp eq i32 %i.bjh, 1                  ; 2 uses
  %i.bjj = sext i32 %i.bjf to i64
  %i.bjk = getelementptr inbounds [64 x i8], ptr %i.bin, i64 %i.bjj
  %i.bjl = getelementptr inbounds nuw i8, ptr %i.bjk, i64 36 ; 2 uses
  %i.bjm = load i32, ptr %i.bjl, align 4, !tbaa !189
  %i.bjn = and i32 %i.bjm, -5
  %masksel145 = select i1 %i.bji, i32 4, i32 0
  %.sink18 = or disjoint i32 %i.bjn, %masksel145
  %i.bjo = zext i1 %i.bji to i32
  %.1.i = add nuw nsw i32 %.09515.i, %i.bjo
  store i32 %.sink18, ptr %i.bjl, align 4, !tbaa !189
  %indvars.iv.next33.i = or disjoint i64 %indvars.iv32.i, 1 ; 2 uses
  %i.bjp = getelementptr inbounds nuw [4 x i8], ptr %i.bdh, i64 %indvars.iv.next33.i
  %i.bjq = load i32, ptr %i.bjp, align 4, !tbaa !17
  %i.bjr = getelementptr inbounds nuw [4 x i8], ptr %i.bdi, i64 %indvars.iv.next33.i
  %i.bjs = load i32, ptr %i.bjr, align 4, !tbaa !17
  %i.bjt = icmp eq i32 %i.bjs, 1                  ; 2 uses
  %i.bju = sext i32 %i.bjq to i64
  %i.bjv = getelementptr inbounds [64 x i8], ptr %i.bin, i64 %i.bju
  %i.bjw = getelementptr inbounds nuw i8, ptr %i.bjv, i64 36 ; 2 uses
  %i.bjx = load i32, ptr %i.bjw, align 4, !tbaa !189
  %i.bjy = and i32 %i.bjx, -5
  %masksel145.1 = select i1 %i.bjt, i32 4, i32 0
  %.sink18.1 = or disjoint i32 %i.bjy, %masksel145.1
  %i.bjz = zext i1 %i.bjt to i32
  %.1.i.1 = add nuw nsw i32 %.1.i, %i.bjz
  store i32 %.sink18.1, ptr %i.bjw, align 4, !tbaa !189
  %indvars.iv.next33.i.1 = or disjoint i64 %indvars.iv32.i, 2 ; 2 uses
  %i.bka = getelementptr inbounds nuw [4 x i8], ptr %i.bdh, i64 %indvars.iv.next33.i.1
  %i.bkb = load i32, ptr %i.bka, align 4, !tbaa !17
  %i.bkc = getelementptr inbounds nuw [4 x i8], ptr %i.bdi, i64 %indvars.iv.next33.i.1
  %i.bkd = load i32, ptr %i.bkc, align 4, !tbaa !17
  %i.bke = icmp eq i32 %i.bkd, 1                  ; 2 uses
  %i.bkf = sext i32 %i.bkb to i64
  %i.bkg = getelementptr inbounds [64 x i8], ptr %i.bin, i64 %i.bkf
  %i.bkh = getelementptr inbounds nuw i8, ptr %i.bkg, i64 36 ; 2 uses
  %i.bki = load i32, ptr %i.bkh, align 4, !tbaa !189
  %i.bkj = and i32 %i.bki, -5
  %masksel145.2 = select i1 %i.bke, i32 4, i32 0
  %.sink18.2 = or disjoint i32 %i.bkj, %masksel145.2
  %i.bkk = zext i1 %i.bke to i32
  %.1.i.2 = add nuw nsw i32 %.1.i.1, %i.bkk
  store i32 %.sink18.2, ptr %i.bkh, align 4, !tbaa !189
  %indvars.iv.next33.i.2 = or disjoint i64 %indvars.iv32.i, 3 ; 2 uses
  %i.bkl = getelementptr inbounds nuw [4 x i8], ptr %i.bdh, i64 %indvars.iv.next33.i.2
  %i.bkm = load i32, ptr %i.bkl, align 4, !tbaa !17
  %i.bkn = getelementptr inbounds nuw [4 x i8], ptr %i.bdi, i64 %indvars.iv.next33.i.2
  %i.bko = load i32, ptr %i.bkn, align 4, !tbaa !17
  %i.bkp = icmp eq i32 %i.bko, 1                  ; 2 uses
  %i.bkq = sext i32 %i.bkm to i64
  %i.bkr = getelementptr inbounds [64 x i8], ptr %i.bin, i64 %i.bkq
  %i.bks = getelementptr inbounds nuw i8, ptr %i.bkr, i64 36 ; 2 uses
  %i.bkt = load i32, ptr %i.bks, align 4, !tbaa !189
  %i.bku = and i32 %i.bkt, -5
  %masksel145.3 = select i1 %i.bkp, i32 4, i32 0
  %.sink18.3 = or disjoint i32 %i.bku, %masksel145.3
  %i.bkv = zext i1 %i.bkp to i32
  %.1.i.3 = add nuw nsw i32 %.1.i.2, %i.bkv       ; 3 uses
  store i32 %.sink18.3, ptr %i.bks, align 4, !tbaa !189
  %indvars.iv.next33.i.3 = add nuw nsw i64 %indvars.iv32.i, 4 ; 2 uses
  %niter272.next.3 = add i64 %niter272, 4         ; 2 uses
  %niter272.ncmp.3 = icmp eq i64 %niter272.next.3, %unroll_iter271
  br i1 %niter272.ncmp.3, label %._crit_edge19.i.loopexit.unr-lcssa, label %.lr.ph18.i

_remove_outliers.exit:                            ; preds = %bb.gg, %bb.gh
  tail call void @free(ptr noundef %i.bdi) #34
  tail call void @free(ptr noundef %i.bdh) #34
  %i.bkw = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.107, i32 noundef 5) #34
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.bkw) #34
  br label %_remove_outliers.exit.thread

_remove_outliers.exit.thread:                     ; preds = %._crit_edge19.i, %bb.gf, %bb.c, %bb.ge, %_remove_outliers.exit
  %.0 = phi i32 [ 1, %._crit_edge19.i ], [ 0, %_remove_outliers.exit ], [ 0, %bb.ge ], [ 0, %bb.c ], [ 1, %bb.gf ]
  store i32 0, ptr %i.f, align 4, !tbaa !178
  br label %bb.gu

bb.gu:                                            ; preds = %bb.a, %_remove_outliers.exit.thread
  %.1 = phi i32 [ %.0, %_remove_outliers.exit.thread ], [ 0, %bb.a ]
  ret i32 %.1
}

declare void @dt_dev_reprocess_preview(ptr noundef) local_unnamed_addr #7

declare i32 @dt_image_is_raw(ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #12

declare ptr @dt_bilateral_init(i32 noundef, i32 noundef, float noundef, float noundef) local_unnamed_addr #7

declare void @dt_bilateral_splat(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @dt_bilateral_blur(ptr noundef) local_unnamed_addr #7

declare void @dt_bilateral_slice_to_output(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #7

declare void @dt_bilateral_free(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @cbrtf(float noundef) local_unnamed_addr #25

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @edge_enhance_1d(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef range(i32 256, 513) %4) unnamed_addr #15 {
bb.a:
  %i.a = icmp eq i32 %4, 256                      ; 8 uses
  %i.b = add i32 %3, -1                           ; 2 uses
  %i.c = icmp sgt i32 %3, 2
  br i1 %i.c, label %.lr.ph, label %.preheader87

.lr.ph:                                           ; preds = %bb.a
  %i.d = sext i32 %2 to i64                       ; 13 uses
  %i.e = icmp sgt i32 %2, 2
  br i1 %i.e, label %.preheader88.lr.ph.preheader, label %.preheader.lr.ph

.preheader88.lr.ph.preheader:                     ; preds = %.lr.ph
  %wide.trip.count = zext i32 %i.b to i64         ; 4 uses
  %i.f = sub nsw i64 0, %i.d                      ; 2 uses
  %i.g = sub nsw i64 1, %i.d                      ; 2 uses
  %.sroa.speculated174 = select i1 %i.a, double 0.000000e+00, double 2.000000e+00 ; 2 uses
  %i.h = sub nsw i64 2, %i.d                      ; 2 uses
  %.sroa.speculated170 = select i1 %i.a, double 2.000000e+00, double 0.000000e+00 ; 2 uses
  %.sroa.speculated166 = select i1 %i.a, double -2.000000e+00, double 0.000000e+00 ; 2 uses
  %.sroa.speculated162 = select i1 %i.a, double 0.000000e+00, double -2.000000e+00 ; 2 uses
  %i.i = add nsw i32 %2, -2                       ; 3 uses
  %i.j = shl nuw nsw i64 %i.d, 3                  ; 2 uses
  %i.k = getelementptr i8, ptr %1, i64 %i.j
  %scevgep = getelementptr i8, ptr %i.k, i64 8    ; 3 uses
  %i.l = shl nuw nsw i64 %wide.trip.count, 3
  %i.m = add nsw i64 %i.l, -8
  %i.n = mul i64 %i.m, %i.d                       ; 2 uses
  %i.o = add nsw i32 %2, -3
  %i.p = zext i32 %i.o to i64                     ; 3 uses
  %i.q = shl nuw nsw i64 %i.p, 3                  ; 2 uses
  %i.r = getelementptr i8, ptr %1, i64 %i.n
  %i.s = getelementptr i8, ptr %i.r, i64 %i.q
  %scevgep189 = getelementptr i8, ptr %i.s, i64 16 ; 3 uses
  %i.t = shl nuw nsw i64 %i.d, 4
  %scevgep190 = getelementptr i8, ptr %0, i64 %i.t
  %i.u = mul nuw nsw i64 %i.d, %wide.trip.count
  %i.v = add nuw i64 %i.u, %i.p
  %i.w = shl i64 %i.v, 3
  %i.x = getelementptr i8, ptr %0, i64 %i.w
  %scevgep191 = getelementptr i8, ptr %i.x, i64 24
  %scevgep192 = getelementptr i8, ptr %0, i64 %i.j
  %i.y = getelementptr i8, ptr %0, i64 %i.n
  %i.z = getelementptr i8, ptr %i.y, i64 %i.q
  %scevgep193 = getelementptr i8, ptr %i.z, i64 24
  %i.aa = add nuw nsw i64 %wide.trip.count, 2305843009213693950
  %i.ab = mul i64 %i.aa, %i.d
  %i.ac = add i64 %i.ab, %i.p
  %i.ad = shl i64 %i.ac, 3
  %i.ae = getelementptr i8, ptr %0, i64 %i.ad
  %scevgep194 = getelementptr i8, ptr %i.ae, i64 24
  %i.af = zext i32 %i.i to i64                    ; 2 uses
  %min.iters.check = icmp ult i32 %i.i, 4
  %bound0 = icmp ult ptr %scevgep, %scevgep191
  %bound1 = icmp ult ptr %scevgep190, %scevgep189
  %found.conflict = and i1 %bound0, %bound1
  %bound0195 = icmp ult ptr %scevgep, %scevgep193
  %bound1196 = icmp ult ptr %scevgep192, %scevgep189
  %found.conflict197 = and i1 %bound0195, %bound1196
  %conflict.rdx = or i1 %found.conflict, %found.conflict197
  %bound0198 = icmp ult ptr %scevgep, %scevgep194
  %bound1199 = icmp ult ptr %0, %scevgep189
  %found.conflict200 = and i1 %bound0198, %bound1199
  %conflict.rdx201 = or i1 %conflict.rdx, %found.conflict200
  %n.vec = and i64 %i.af, 4294967292              ; 4 uses
  %i.ag = shl nuw nsw i64 %n.vec, 3               ; 2 uses
  %i.ah = trunc nuw i64 %n.vec to i32
  %i.ai = or disjoint i32 %i.ah, 1
  %broadcast.splatinsert = insertelement <4 x double> poison, double %.sroa.speculated174, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert202 = insertelement <4 x double> poison, double %.sroa.speculated170, i64 0
  %broadcast.splat203 = shufflevector <4 x double> %broadcast.splatinsert202, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert204 = insertelement <4 x double> poison, double %.sroa.speculated166, i64 0
  %broadcast.splat205 = shufflevector <4 x double> %broadcast.splatinsert204, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert206 = insertelement <4 x double> poison, double %.sroa.speculated162, i64 0
  %broadcast.splat207 = shufflevector <4 x double> %broadcast.splatinsert206, <4 x double> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %i.af
  br label %.preheader88.lr.ph

.preheader87:                                     ; preds = %._crit_edge, %bb.a
  %i.aj = icmp sgt i32 %3, 0
  br i1 %i.aj, label %.preheader.lr.ph, label %._crit_edge112.split

.preheader.lr.ph:                                 ; preds = %.lr.ph, %.preheader87
  %i.ak = icmp sgt i32 %2, 0
  %i.al = sext i32 %2 to i64                      ; 3 uses
  %i.am = add nsw i32 %2, -1                      ; 2 uses
  br i1 %i.ak, label %.preheader.preheader, label %._crit_edge112.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.an = zext nneg i32 %i.b to i64
  %wide.trip.count137 = zext i32 %3 to i64
  %wide.trip.count132 = zext nneg i32 %2 to i64   ; 2 uses
  %diff.check = icmp ult i32 %2, 16
  %i.ao = and i32 %2, 12
  %n.vec252 = and i32 %2, 2147483632              ; 4 uses
  %cmp.n261 = icmp eq i32 %2, %n.vec252
  %min.epilog.iters.check266 = icmp eq i32 %i.ao, 0
  %n.vec268 = and i32 %2, 2147483644              ; 3 uses
  %cmp.n274 = icmp eq i32 %2, %n.vec268
  %xtraiter = and i64 %wide.trip.count132, 7      ; 3 uses
  %i.ap = icmp ult i32 %2, 8
  %unroll_iter = and i64 %wide.trip.count132, 2147483640
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod278 = icmp ne i64 %xtraiter, 0
  br label %.preheader

.preheader88.lr.ph:                               ; preds = %.preheader88.lr.ph.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 1, %.preheader88.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.aq = mul nuw nsw i64 %indvars.iv, %i.d       ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aq ; 3 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.aq ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx201
  br i1 %brmerge, label %.preheader88.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader88.lr.ph
  %i.at = getelementptr i8, ptr %i.ar, i64 %i.ag
  %i.au = getelementptr i8, ptr %i.as, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ar, i64 %i.av ; 3 uses
  %next.gep208 = getelementptr i8, ptr %i.as, i64 %i.av
  %i.aw = getelementptr i8, ptr %next.gep, i64 8  ; 5 uses
  %i.ax = getelementptr [8 x i8], ptr %i.aw, i64 %i.f
  %i.ay = getelementptr i8, ptr %i.ax, i64 -8
  %wide.load = load <4 x double>, ptr %i.ay, align 8, !tbaa !166, !alias.scope !561
  %i.az = getelementptr [8 x i8], ptr %i.aw, i64 %i.g
  %i.ba = getelementptr i8, ptr %i.az, i64 -8
  %wide.load209 = load <4 x double>, ptr %i.ba, align 8, !tbaa !166, !alias.scope !561
  %i.bb = fmul reassoc nsz arcp contract afn <4 x double> %broadcast.splat, %wide.load209
  %i.bc = fadd reassoc nsz arcp contract afn <4 x double> %i.bb, %wide.load
  %i.bd = getelementptr [8 x i8], ptr %i.aw, i64 %i.h
  %i.be = getelementptr i8, ptr %i.bd, i64 -8
  %wide.load210 = load <4 x double>, ptr %i.be, align 8, !tbaa !166, !alias.scope !561 ; 2 uses
  %i.bf = fneg reassoc nsz arcp contract afn <4 x double> %wide.load210
  %i.bg = select reassoc nsz arcp contract afn i1 %i.a, <4 x double> %i.bf, <4 x double> %wide.load210
  %i.bh = fadd reassoc nsz arcp contract afn <4 x double> %i.bg, %i.bc
  %wide.load211 = load <4 x double>, ptr %next.gep, align 8, !tbaa !166, !alias.scope !562
  %i.bi = fmul reassoc nsz arcp contract afn <4 x double> %broadcast.splat203, %wide.load211
  %i.bj = fadd reassoc nsz arcp contract afn <4 x double> %i.bi, %i.bh
  %wide.load212 = load <4 x double>, ptr %i.aw, align 8, !tbaa !166, !alias.scope !562
  %i.bk = fmul reassoc nsz arcp contract afn <4 x double> %wide.load212, zeroinitializer
  %i.bl = fadd reassoc nsz arcp contract afn <4 x double> %i.bk, %i.bj
  %i.bm = getelementptr i8, ptr %next.gep, i64 16
  %wide.load213 = load <4 x double>, ptr %i.bm, align 8, !tbaa !166, !alias.scope !562
  %i.bn = fmul reassoc nsz arcp contract afn <4 x double> %broadcast.splat205, %wide.load213
  %i.bo = fadd reassoc nsz arcp contract afn <4 x double> %i.bn, %i.bl
  %i.bp = getelementptr [8 x i8], ptr %i.aw, i64 %i.d ; 3 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 -8
  %wide.load214 = load <4 x double>, ptr %i.bq, align 8, !tbaa !166, !alias.scope !563 ; 2 uses
  %i.br = fneg reassoc nsz arcp contract afn <4 x double> %wide.load214
  %i.bs = select reassoc nsz arcp contract afn i1 %i.a, <4 x double> %wide.load214, <4 x double> %i.br
  %i.bt = fadd reassoc nsz arcp contract afn <4 x double> %i.bs, %i.bo
  %wide.load215 = load <4 x double>, ptr %i.bp, align 8, !tbaa !166, !alias.scope !563
  %i.bu = fmul reassoc nsz arcp contract afn <4 x double> %broadcast.splat207, %wide.load215
  %i.bv = fadd reassoc nsz arcp contract afn <4 x double> %i.bu, %i.bt
  %i.bw = getelementptr i8, ptr %i.bp, i64 8
  %wide.load216 = load <4 x double>, ptr %i.bw, align 8, !tbaa !166, !alias.scope !563
  %i.bx = fsub reassoc nsz arcp contract afn <4 x double> %i.bv, %wide.load216
  %i.by = getelementptr inbounds nuw i8, ptr %next.gep208, i64 8
  store <4 x double> %i.bx, ptr %i.by, align 8, !tbaa !166, !alias.scope !564, !noalias !565
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !554

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %.preheader88.preheader

.preheader88.preheader:                           ; preds = %.preheader88.lr.ph, %middle.block
  %.pn.ph = phi ptr [ %i.at, %middle.block ], [ %i.ar, %.preheader88.lr.ph ]
  %.pn115.ph = phi ptr [ %i.au, %middle.block ], [ %i.as, %.preheader88.lr.ph ]
  %.07995.ph = phi i32 [ %i.ai, %middle.block ], [ 1, %.preheader88.lr.ph ]
  br label %.preheader88

.preheader88:                                     ; preds = %.preheader88.preheader, %.preheader88
  %.pn = phi ptr [ %.08197, %.preheader88 ], [ %.pn.ph, %.preheader88.preheader ] ; 4 uses
  %.pn115 = phi ptr [ %.08096, %.preheader88 ], [ %.pn115.ph, %.preheader88.preheader ]
  %.07995 = phi i32 [ %i.dn, %.preheader88 ], [ %.07995.ph, %.preheader88.preheader ] ; 2 uses
  %.08197 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 7 uses
  %i.ca = getelementptr [8 x i8], ptr %.08197, i64 %i.f
  %i.cb = getelementptr i8, ptr %i.ca, i64 -8
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !166
  %i.cd = getelementptr [8 x i8], ptr %.08197, i64 %i.g
  %i.ce = getelementptr i8, ptr %i.cd, i64 -8
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !166
  %i.cg = fmul reassoc nsz arcp contract afn double %.sroa.speculated174, %i.cf
  %i.ch = fadd reassoc nsz arcp contract afn double %i.cg, %i.cc
  %i.ci = getelementptr [8 x i8], ptr %.08197, i64 %i.h
  %i.cj = getelementptr i8, ptr %i.ci, i64 -8
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !166 ; 2 uses
  %i.cl = fneg reassoc nsz arcp contract afn double %i.ck
  %i.cm = select reassoc nsz arcp contract afn i1 %i.a, double %i.cl, double %i.ck
  %i.cn = fadd reassoc nsz arcp contract afn double %i.cm, %i.ch
  %i.co = load double, ptr %.pn, align 8, !tbaa !166
  %i.cp = fmul reassoc nsz arcp contract afn double %.sroa.speculated170, %i.co
  %i.cq = fadd reassoc nsz arcp contract afn double %i.cp, %i.cn
  %i.cr = getelementptr i8, ptr %.pn, i64 8
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !166
  %i.ct = fmul reassoc nsz arcp contract afn double %i.cs, 0.000000e+00
  %i.cu = fadd reassoc nsz arcp contract afn double %i.ct, %i.cq
  %i.cv = getelementptr i8, ptr %.pn, i64 16
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !166
  %i.cx = fmul reassoc nsz arcp contract afn double %.sroa.speculated166, %i.cw
  %i.cy = fadd reassoc nsz arcp contract afn double %i.cx, %i.cu
  %i.cz = getelementptr [8 x i8], ptr %.08197, i64 %i.d
  %i.da = getelementptr i8, ptr %i.cz, i64 -8
  %i.db = load double, ptr %i.da, align 8, !tbaa !166 ; 2 uses
  %i.dc = fneg reassoc nsz arcp contract afn double %i.db
  %i.dd = select reassoc nsz arcp contract afn i1 %i.a, double %i.db, double %i.dc
  %i.de = fadd reassoc nsz arcp contract afn double %i.dd, %i.cy
  %i.df = getelementptr [8 x i8], ptr %.08197, i64 %i.d
  %i.dg = load double, ptr %i.df, align 8, !tbaa !166
  %i.dh = fmul reassoc nsz arcp contract afn double %.sroa.speculated162, %i.dg
  %i.di = fadd reassoc nsz arcp contract afn double %i.dh, %i.de
  %i.dj = getelementptr [8 x i8], ptr %.08197, i64 %i.d
  %i.dk = getelementptr i8, ptr %i.dj, i64 8
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !166
  %i.dm = fsub reassoc nsz arcp contract afn double %i.di, %i.dl
  %.08096 = getelementptr inbounds nuw i8, ptr %.pn115, i64 8 ; 2 uses
  store double %i.dm, ptr %.08096, align 8, !tbaa !166
  %i.dn = add nuw nsw i32 %.07995, 1
  %exitcond.not = icmp eq i32 %.07995, %i.i
  br i1 %exitcond.not, label %._crit_edge, label %.preheader88, !llvm.loop !555

._crit_edge:                                      ; preds = %.preheader88, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond123.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond123.not, label %.preheader87, label %.preheader88.lr.ph

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge102
  %indvars.iv134 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next135, %._crit_edge102 ] ; 6 uses
  %i.do = mul nuw nsw i64 %indvars.iv134, %i.al
  %i.dp = getelementptr [8 x i8], ptr %1, i64 %i.do ; 15 uses
  %.not = icmp eq i64 %indvars.iv134, 0
  %i.dq = add nsw i64 %indvars.iv134, -1
  %i.dr = mul nuw nsw i64 %i.dq, %i.al
  %i.ds = getelementptr [8 x i8], ptr %1, i64 %i.dr ; 3 uses
  %i.dt = sub nuw nsw i64 1, %indvars.iv134
  %i.du = mul nuw nsw i64 %i.dt, %i.al
  %i.dv = getelementptr [8 x i8], ptr %1, i64 %i.du ; 9 uses
  %5 = icmp samesign ult i64 %indvars.iv134, %i.an ; 2 uses
  %spec.select = select i1 %5, i32 %i.am, i32 1
  br i1 %.not, label %iter.check, label %.lr.ph101.split

iter.check:                                       ; preds = %.preheader
  br i1 %i.ap, label %.lr.ph101.split.us.split.us.epil.preheader, label %.lr.ph101.split.us.split.us

.lr.ph101.split.us.split.us:                      ; preds = %iter.check, %.lr.ph101.split.us.split.us
  %indvars.iv129 = phi i64 [ %indvars.iv.next130.7, %.lr.ph101.split.us.split.us ], [ 0, %iter.check ] ; 10 uses
  %niter = phi i64 [ %niter.next.7, %.lr.ph101.split.us.split.us ], [ 0, %iter.check ]
  %i.dw = getelementptr [8 x i8], ptr %i.dp, i64 %indvars.iv129
  %i.dx = getelementptr [8 x i8], ptr %i.dv, i64 %indvars.iv129
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !166
  store double %i.dy, ptr %i.dw, align 8, !tbaa !166
  %indvars.iv.next130 = or disjoint i64 %indvars.iv129, 1 ; 2 uses
  %i.dz = getelementptr [8 x i8], ptr %i.dp, i64 %indvars.iv.next130
  %i.ea = getelementptr [8 x i8], ptr %i.dv, i64 %indvars.iv.next130
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !166
  store double %i.eb, ptr %i.dz, align 8, !tbaa !166
  %indvars.iv.next130.1 = or disjoint i64 %indvars.iv129, 2 ; 2 uses
  %i.ec = getelementptr [8 x i8], ptr %i.dp, i64 %indvars.iv.next130.1
  %i.ed = getelementptr [8 x i8], ptr %i.dv, i64 %indvars.iv.next130.1
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !166
  store double %i.ee, ptr %i.ec, align 8, !tbaa !166
  %indvars.iv.next130.2 = or disjoint i64 %indvars.iv129, 3 ; 2 uses
  %i.ef = getelementptr [8 x i8], ptr %i.dp, i64 %indvars.iv.next130.2
  %i.eg = getelementptr [8 x i8], ptr %i.dv, i64 %indvars.iv.next130.2
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !166
  store double %i.eh, ptr %i.ef, align 8, !tbaa !166
  %indvars.iv.next130.3 = or disjoint i64 %indvars.iv129, 4 ; 2 uses
  %i.ei = getelementptr [8 x i8], ptr %i.dp, i64 %indvars.iv.next130.3
  %i.ej = getelementptr [8 x i8], ptr %i.dv, i64 %indvars.iv.next130.3
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !166
  store double %i.ek, ptr %i.ei, align 8, !tbaa !166
  %indvars.iv.next130.4 = or disjoint i64 %indvars.iv129, 5 ; 2 uses
  %i.el = getelementptr [8 x i8], ptr %i.dp, i64 %indvars.iv.next130.4
  %i.em = getelementptr [8 x i8], ptr %i.dv, i64 %indvars.iv.next130.4
  %i.en = load double, ptr %i.em, align 8, !tbaa !166
  store double %i.en, ptr %i.el, align 8, !tbaa !166
  %indvars.iv.next130.5 = or disjoint i64 %indvars.iv129, 6 ; 2 uses
  %i.eo = getelementptr [8 x i8], ptr %i.dp, i64 %indvars.iv.next130.5
  %i.ep = getelementptr [8 x i8], ptr %i.dv, i64 %indvars.iv.next130.5
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !166
  store double %i.eq, ptr %i.eo, align 8, !tbaa !166
  %indvars.iv.next130.6 = or disjoint i64 %indvars.iv129, 7 ; 2 uses
  %i.er = getelementptr [8 x i8], ptr %i.dp, i64 %indvars.iv.next130.6
  %i.es = getelementptr [8 x i8], ptr %i.dv, i64 %indvars.iv.next130.6
  %i.et = load double, ptr %i.es, align 8, !tbaa !166
  store double %i.et, ptr %i.er, align 8, !tbaa !166
  %indvars.iv.next130.7 = add nuw nsw i64 %indvars.iv129, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge102.loopexit.unr-lcssa, label %.lr.ph101.split.us.split.us, !llvm.loop !556

.lr.ph101.split:                                  ; preds = %.preheader
  br i1 %5, label %.lr.ph101.split.split.us, label %iter.check263

iter.check263:                                    ; preds = %.lr.ph101.split
  br i1 %diff.check, label %.lr.ph101.split.split.split.preheader, label %vector.body253

vector.body253:                                   ; preds = %iter.check263, %vector.body253
  %index254 = phi i32 [ %index.next259, %vector.body253 ], [ 0, %iter.check263 ] ; 2 uses
  %i.eu = zext nneg i32 %index254 to i64          ; 2 uses
  %i.ev = getelementptr [8 x i8], ptr %i.dp, i64 %i.eu ; 4 uses
  %i.ew = getelementptr [8 x i8], ptr %i.ds, i64 %i.eu ; 4 uses
  %i.ex = getelementptr i8, ptr %i.ew, i64 32
  %i.ey = getelementptr i8, ptr %i.ew, i64 64
  %i.ez = getelementptr i8, ptr %i.ew, i64 96
  %wide.load255 = load <4 x double>, ptr %i.ew, align 8, !tbaa !166
  %wide.load256 = load <4 x double>, ptr %i.ex, align 8, !tbaa !166
  %wide.load257 = load <4 x double>, ptr %i.ey, align 8, !tbaa !166
  %wide.load258 = load <4 x double>, ptr %i.ez, align 8, !tbaa !166
  %i.fa = getelementptr i8, ptr %i.ev, i64 32
  %i.fb = getelementptr i8, ptr %i.ev, i64 64
  %i.fc = getelementptr i8, ptr %i.ev, i64 96
  store <4 x double> %wide.load255, ptr %i.ev, align 8, !tbaa !166
  store <4 x double> %wide.load256, ptr %i.fa, align 8, !tbaa !166
  store <4 x double> %wide.load257, ptr %i.fb, align 8, !tbaa !166
  store <4 x double> %wide.load258, ptr %i.fc, align 8, !tbaa !166
  %index.next259 = add nuw i32 %index254, 16      ; 2 uses
  %i.fd = icmp eq i32 %index.next259, %n.vec252
  br i1 %i.fd, label %middle.block260, label %vector.body253, !llvm.loop !557

middle.block260:                                  ; preds = %vector.body253
  br i1 %cmp.n261, label %._crit_edge102, label %vec.epilog.iter.check265

vec.epilog.iter.check265:                         ; preds = %middle.block260
  br i1 %min.epilog.iters.check266, label %.lr.ph101.split.split.split.preheader, label %vec.epilog.vector.body269, !prof !269

vec.epilog.vector.body269:                        ; preds = %vec.epilog.iter.check265, %vec.epilog.vector.body269
  %index270 = phi i32 [ %index.next272, %vec.epilog.vector.body269 ], [ %n.vec252, %vec.epilog.iter.check265 ] ; 2 uses
  %i.fe = zext nneg i32 %index270 to i64          ; 2 uses
  %i.ff = getelementptr [8 x i8], ptr %i.dp, i64 %i.fe
  %i.fg = getelementptr [8 x i8], ptr %i.ds, i64 %i.fe
  %wide.load271 = load <4 x double>, ptr %i.fg, align 8, !tbaa !166
  store <4 x double> %wide.load271, ptr %i.ff, align 8, !tbaa !166
  %index.next272 = add nuw i32 %index270, 4       ; 2 uses
  %i.fh = icmp eq i32 %index.next272, %n.vec268
  br i1 %i.fh, label %vec.epilog.middle.block273, label %vec.epilog.vector.body269, !llvm.loop !558

vec.epilog.middle.block273:                       ; preds = %vec.epilog.vector.body269
  br i1 %cmp.n274, label %._crit_edge102, label %.lr.ph101.split.split.split.preheader

.lr.ph101.split.split.split.preheader:            ; preds = %iter.check263, %vec.epilog.iter.check265, %vec.epilog.middle.block273
  %.073100.ph = phi i32 [ 0, %iter.check263 ], [ %n.vec252, %vec.epilog.iter.check265 ], [ %n.vec268, %vec.epilog.middle.block273 ]
  br label %.lr.ph101.split.split.split

.lr.ph101.split.split.us:                         ; preds = %.lr.ph101.split, %bb.e
  %.073100.us103 = phi i32 [ %6, %bb.e ], [ 0, %.lr.ph101.split ] ; 7 uses
  %i.fi = sext i32 %.073100.us103 to i64
  %i.fj = getelementptr [8 x i8], ptr %i.dp, i64 %i.fi ; 2 uses
  %i.fk = icmp slt i32 %.073100.us103, 1
  br i1 %i.fk, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph101.split.split.us
  %.not85.us = icmp slt i32 %.073100.us103, %i.am
  br i1 %.not85.us, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.fl = zext nneg i32 %.073100.us103 to i64
  %i.fm = getelementptr [8 x i8], ptr %i.dp, i64 %i.fl
  %i.fn = getelementptr i8, ptr %i.fm, i64 -8
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph101.split.split.us
  %i.fo = sub nsw i32 1, %.073100.us103
  %i.fp = zext nneg i32 %i.fo to i64
  %i.fq = getelementptr [8 x i8], ptr %i.dp, i64 %i.fp
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0.us104.in = phi ptr [ %i.fj, %bb.b ], [ %i.fn, %bb.c ], [ %i.fq, %bb.d ]
  %.0.us104 = load double, ptr %.0.us104.in, align 8, !tbaa !166
  store double %.0.us104, ptr %i.fj, align 8, !tbaa !166
  %i.fr = icmp eq i32 %.073100.us103, 1
  %.1.us106 = select i1 %i.fr, i32 %spec.select, i32 %.073100.us103
  %6 = add nsw i32 %.1.us106, 1                   ; 2 uses
  %i.fs = icmp slt i32 %6, %2
  br i1 %i.fs, label %.lr.ph101.split.split.us, label %._crit_edge102

._crit_edge112.split:                             ; preds = %._crit_edge102, %.preheader.lr.ph, %.preheader87
  ret void

._crit_edge102.loopexit.unr-lcssa:                ; preds = %.lr.ph101.split.us.split.us
  br i1 %lcmp.mod.not, label %._crit_edge102, label %.lr.ph101.split.us.split.us.epil.preheader

.lr.ph101.split.us.split.us.epil.preheader:       ; preds = %._crit_edge102.loopexit.unr-lcssa, %iter.check
  %indvars.iv129.epil.init = phi i64 [ 0, %iter.check ], [ %indvars.iv.next130.7, %._crit_edge102.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod278)
  br label %.lr.ph101.split.us.split.us.epil

.lr.ph101.split.us.split.us.epil:                 ; preds = %.lr.ph101.split.us.split.us.epil, %.lr.ph101.split.us.split.us.epil.preheader
  %indvars.iv129.epil = phi i64 [ %indvars.iv.next130.epil, %.lr.ph101.split.us.split.us.epil ], [ %indvars.iv129.epil.init, %.lr.ph101.split.us.split.us.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph101.split.us.split.us.epil ], [ 0, %.lr.ph101.split.us.split.us.epil.preheader ]
  %i.ft = getelementptr [8 x i8], ptr %i.dp, i64 %indvars.iv129.epil
  %i.fu = getelementptr [8 x i8], ptr %i.dv, i64 %indvars.iv129.epil
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !166
  store double %i.fv, ptr %i.ft, align 8, !tbaa !166
  %indvars.iv.next130.epil = add nuw nsw i64 %indvars.iv129.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge102, label %.lr.ph101.split.us.split.us.epil, !llvm.loop !559

._crit_edge102:                                   ; preds = %.lr.ph101.split.split.split, %bb.e, %._crit_edge102.loopexit.unr-lcssa, %.lr.ph101.split.us.split.us.epil, %middle.block260, %vec.epilog.middle.block273
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1 ; 2 uses
  %exitcond138.not = icmp eq i64 %indvars.iv.next135, %wide.trip.count137
  br i1 %exitcond138.not, label %._crit_edge112.split, label %.preheader

.lr.ph101.split.split.split:                      ; preds = %.lr.ph101.split.split.split.preheader, %.lr.ph101.split.split.split
  %.073100 = phi i32 [ %i.ga, %.lr.ph101.split.split.split ], [ %.073100.ph, %.lr.ph101.split.split.split.preheader ] ; 2 uses
  %i.fw = zext nneg i32 %.073100 to i64           ; 2 uses
  %i.fx = getelementptr [8 x i8], ptr %i.dp, i64 %i.fw
  %i.fy = getelementptr [8 x i8], ptr %i.ds, i64 %i.fw
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !166
  store double %i.fz, ptr %i.fx, align 8, !tbaa !166
  %i.ga = add nuw nsw i32 %.073100, 1             ; 2 uses
  %i.gb = icmp slt i32 %i.ga, %2
  br i1 %i.gb, label %.lr.ph101.split.split.split, label %._crit_edge102, !llvm.loop !560
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log10.f64(double) #12

; Function Attrs: nounwind uwtable
define internal fastcc void @region_grow(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(address_is_null) %3, ptr nofree noundef nonnull captures(none) %4, ptr nofree noundef nonnull captures(none) %5, ptr nofree noundef readonly captures(address_is_null) %6, double noundef %7) unnamed_addr #5 {
bb.a:
  %i.a = or i32 %1, %0
  %or.cond.not = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !289
  %.not = icmp slt i32 %0, %i.c
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !290
  %.not97 = icmp slt i32 %1, %i.e
  br i1 %.not97, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.143) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

.thread:                                          ; preds = %bb.c
  %i.f = load ptr, ptr %2, align 8, !tbaa !291    ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.thread
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.144) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.f:                                             ; preds = %.thread
  %i.h = icmp eq ptr %3, null
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.145) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.i = icmp eq ptr %6, null
  br i1 %i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = load ptr, ptr %6, align 8, !tbaa !293    ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.148) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.k:                                             ; preds = %bb.i
  store i32 1, ptr %4, align 4, !tbaa !17
  store i32 %0, ptr %3, align 4, !tbaa !303
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %1, ptr %i.l, align 4, !tbaa !304
  %i.m = load i32, ptr %i.b, align 8, !tbaa !289
  %i.n = mul i32 %i.m, %1
  %i.o = add i32 %i.n, %0
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.p
  %i.r = load double, ptr %i.q, align 8, !tbaa !166 ; 2 uses
  store double %i.r, ptr %5, align 8, !tbaa !166
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !294
  %i.u = mul i32 %i.t, %1
  %i.v = add i32 %i.u, %0
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.w
  store i8 1, ptr %i.x, align 1, !tbaa !177
  %i.y = load i32, ptr %4, align 4, !tbaa !17     ; 3 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph156, label %._crit_edge

.lr.ph156:                                        ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.ab = fcmp reassoc nsz arcp contract afn olt double %7, 0.000000e+00
  br i1 %i.ab, label %.lr.ph156.split.us.preheader, label %.lr.ph156.split.preheader

.lr.ph156.split.preheader:                        ; preds = %.lr.ph156
  %sincos = tail call reassoc nsz arcp contract afn { double, double } @llvm.sincos.f64(double %i.r) ; 2 uses
  %sin = extractvalue { double, double } %sincos, 0
  %cos = extractvalue { double, double } %sincos, 1
  br label %.lr.ph142

.lr.ph156.split.us.preheader:                     ; preds = %.lr.ph156
  %i.ac = zext nneg i32 %i.y to i64
  br label %.lr.ph.us.us.preheader

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph156.split.us.preheader, %._crit_edge143.split.us.us
  %indvars.iv169 = phi i64 [ 0, %.lr.ph156.split.us.preheader ], [ %indvars.iv.next170, %._crit_edge143.split.us.us ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv169 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !303 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !304 ; 2 uses
  %i.ah = add nsw i32 %i.ag, -1
  %i.ai = add nsw i32 %i.ae, -1
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %._crit_edge.split.us.us.us
  %.086139.us.us158 = phi i32 [ %i.av, %._crit_edge.split.us.us.us ], [ %i.ai, %.lr.ph.us.us.preheader ] ; 6 uses
  br label %bb.l

bb.l:                                             ; preds = %isaligned.exit.thread.us.us.us, %.lr.ph.us.us
  %.085125.us.us.us = phi i32 [ %i.ah, %.lr.ph.us.us ], [ %i.au, %isaligned.exit.thread.us.us.us ] ; 6 uses
  %i.aj = or i32 %.085125.us.us.us, %.086139.us.us158
  %or.cond3.us.us.us = icmp sgt i32 %i.aj, -1
  br i1 %or.cond3.us.us.us, label %bb.m, label %isaligned.exit.thread.us.us.us

bb.m:                                             ; preds = %bb.l
  %i.ak = load i32, ptr %i.s, align 8, !tbaa !294 ; 2 uses
  %i.al = icmp slt i32 %.086139.us.us158, %i.ak
  br i1 %i.al, label %bb.n, label %isaligned.exit.thread.us.us.us

bb.n:                                             ; preds = %bb.m
  %i.am = load i32, ptr %i.aa, align 4, !tbaa !295
  %i.an = icmp slt i32 %.085125.us.us.us, %i.am
  br i1 %i.an, label %bb.o, label %isaligned.exit.thread.us.us.us

bb.o:                                             ; preds = %bb.n
  %i.ao = load ptr, ptr %6, align 8, !tbaa !293
  %i.ap = mul i32 %i.ak, %.085125.us.us.us
  %i.aq = add i32 %i.ap, %.086139.us.us158
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !177
  %.not100.us.us.us = icmp eq i8 %i.at, 1
  br i1 %.not100.us.us.us, label %isaligned.exit.thread.us.us.us, label %.split147.us

isaligned.exit.thread.us.us.us:                   ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %i.au = add nsw i32 %.085125.us.us.us, 1
  %.not99.us.us.us = icmp sgt i32 %.085125.us.us.us, %i.ag
  br i1 %.not99.us.us.us, label %._crit_edge.split.us.us.us, label %bb.l

._crit_edge.split.us.us.us:                       ; preds = %isaligned.exit.thread.us.us.us
  %i.av = add nsw i32 %.086139.us.us158, 1
  %.not98.us.us159 = icmp sgt i32 %.086139.us.us158, %i.ae
  br i1 %.not98.us.us159, label %._crit_edge143.split.us.us, label %.lr.ph.us.us

._crit_edge143.split.us.us:                       ; preds = %._crit_edge.split.us.us.us
  %indvars.iv.next170 = add nuw nsw i64 %indvars.iv169, 1 ; 2 uses
  %i.aw = icmp samesign ult i64 %indvars.iv.next170, %i.ac
  br i1 %i.aw, label %.lr.ph.us.us.preheader, label %._crit_edge

.lr.ph142:                                        ; preds = %._crit_edge143.split, %.lr.ph156.split.preheader
  %i.ax = phi i32 [ %i.y, %.lr.ph156.split.preheader ], [ %i.di, %._crit_edge143.split ]
  %indvars.iv = phi i64 [ 0, %.lr.ph156.split.preheader ], [ %indvars.iv.next, %._crit_edge143.split ] ; 2 uses
  %.087154 = phi double [ %sin, %.lr.ph156.split.preheader ], [ %.3, %._crit_edge143.split ]
  %.088153 = phi double [ %cos, %.lr.ph156.split.preheader ], [ %.391, %._crit_edge143.split ]
end_hunk_0
